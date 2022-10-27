jQuery(document).ready(function($){
	function PokeballBuilder(element) {
		this.element = element;
		this.stepsWrapper = this.element.children('.cd-builder-steps');
		this.steps = this.element.find('.builder-step');
		//Construit un objet sur des elements enfants du DOM. Défini des points spécifiques des étapes de configuration.
		this.models = this.element.find('[data-selection="models"]'); 
		this.summary;
		this.optionsLists = this.element.find('.options-list');
		//Ajoute d'autres elements parmi les enfants. Crée un suivi sur le footer.
		this.fixedSummary = this.element.find('.cd-builder-footer');
		this.modelPreview = this.element.find('.selected-product').find('img');
		this.totPriceWrapper = this.element.find('.tot-price').find('b');
		//Navigation header
		this.mainNavigation = this.element.find('.cd-builder-main-nav');
		this.secondaryNavigation = this.element.find('.cd-builder-secondary-nav');
		//Vérifie que le configurateur ait été chargé correctement
		this.loaded = true;
		
		//Crée et attache les évenement dynamiquement
		this.bindEvents();
	}

	PokeballBuilder.prototype.bindEvents = function() {
		var self = this;
		//Détecte le clic sur les elements de la navigation header
		this.mainNavigation.on('click', 'li:not(.active)', function(event){
			event.preventDefault();
			self.loaded && self.newContentSelected($(this).index());
		});

		//Détecte le clic sur les elements de la navigation footer et gère la navigation via une condition ternaire.
		this.secondaryNavigation.on('click', '.nav-item li:not(.buy)', function(event){ 
			event.preventDefault();
			var stepNumber = ( $(this).parents('.next').length > 0 ) ? $(this).index() + 1 : $(this).index() - 1;
			self.loaded && self.newContentSelected(stepNumber);
		});
		//Détecte le clic sur les choix de certaines options telles que le modèle ou les accessoires
		this.optionsLists.on('click', '.js-option', function(event){
			self.updateListOptions($(this));
		});

		//Détecte le clic sur des choix de personalisation tels que les couleurs
		this.stepsWrapper.on('click', '.cd-product-customizer a', function(event){
			event.preventDefault();
			self.customizeModel($(this));
		});
	};

	PokeballBuilder.prototype.newContentSelected = function(nextStep) {
		//Vérifie si un modèle n'a pas été sélectionné en premier lieu, soit si sa class est "disabled".
		if( this.fixedSummary.hasClass('disabled') ) {
			//Si aucun modèle n'a été selectionné une alerte apparaît en ajoutant la classe "show-alert" au footer.
			this.fixedSummary.addClass('show-alert');
		} else {
			//Si un modèle a bien été selectionné on passe à l'étape suivante
			//On vérifie qu'une couleur ait bien été selectionnée, soit si le filtre "data-selection="colors" est bien en ".active".
			if( this.steps.filter('.active').is('[data-selection="colors"]') ) {
				//Si c'est le cas, on récupère les attributs de l'image correpondant afin e générer un visuel.
				var imageSelected = this.steps.filter('.active').find('.cd-product-previews').children('.selected').children('img').attr('src');
				this.modelPreview.attr('src', imageSelected);
			}
			//Si la dernière étape est sélmectionnée générer le récapitulatif
			if(nextStep + 1 >= this.steps.length ) {
				this.createSummary();
			}			
			this.showNewContent(nextStep);
			this.updatePrimaryNav(nextStep);
			this.updateSecondaryNav(nextStep);
		}
	}

	PokeballBuilder.prototype.showNewContent = function(nextStep) {
		var actualStep = this.steps.filter('.active').index() + 1;
		if( actualStep < nextStep + 1 ) {
			//Aller à la section suivante en changeant la classe
			this.steps.eq(actualStep-1).removeClass('active back').addClass('move-left');
			this.steps.eq(nextStep).addClass('active').removeClass('move-left back');
		} else {
			//Aller à la section précédente en changeant la classe
			this.steps.eq(actualStep-1).removeClass('active back move-left');
			this.steps.eq(nextStep).addClass('active back').removeClass('move-left');
		}
	}

	PokeballBuilder.prototype.updatePrimaryNav = function(nextStep) {
		this.mainNavigation.find('li').eq(nextStep).addClass('active').siblings('.active').removeClass('active');
	}

	PokeballBuilder.prototype.updateSecondaryNav = function(nextStep) {
		(nextStep == 0) ? this.fixedSummary.addClass('step-1') : this.fixedSummary.removeClass('step-1');

		this.secondaryNavigation.find('.nav-item.next').find('li').eq(nextStep).addClass('visible').removeClass('visited').prevAll().removeClass('visited').addClass('visited').end().nextAll().removeClass('visible visited');
		this.secondaryNavigation.find('.nav-item.prev').find('li').eq(nextStep).addClass('visible').removeClass('visited').prevAll().removeClass('visited').addClass('visited').end().nextAll().removeClass('visible visited');
	}

	PokeballBuilder.prototype.createSummary = function() {
		var self = this;
		this.steps.each(function(){
			//Fonction permettant de gérer les paramètres de création du récapitulatif. 
			var step = $(this);
			if($(this).data('selection') == 'colors') {
				//Crée un visuel final de l'objet et un résumé de la couleur et des accesoires choisis en récupérant les informations dans le DOM via les attributs et les classes.
				var colorSelected = $(this).find('.cd-product-customizer').find('.selected'),
					color = colorSelected.children('a').data('color'),
					colorName = colorSelected.data('content'),
					imageSelected = $(this).find('.cd-product-previews').find('.selected img').attr('src');
				
				self.summary.find('.summary-color').find('.color-label').text(colorName).siblings('.color-swatch').attr('data-color', color);
				self.summary.find('.product-preview').attr('src', imageSelected);
			} else if( $(this).data('selection') == 'accessories' ) {
				var selectedOptions = $(this).find('.js-option.selected'),
					optionsContent = '';

				if( selectedOptions.length == 0 ) {
					optionsContent = '<li><p>Aucun accessoire sélectionné</p></li>';
				} else {
					selectedOptions.each(function(){
						optionsContent +='<li><p>'+$(this).find('p').text()+'</p></li>';
					});
				}

				self.summary.find('.summary-accessories').children('li').remove().end().append($(optionsContent));
			}
		});
	}

	PokeballBuilder.prototype.updateListOptions = function(listItem) {
		var self = this;
		//La condition teste si un modèle est sélectionné et actualise le prix (un seul modèle peut être choisi à la fois).
		if( listItem.hasClass('js-radio') ) {
			var alreadySelectedOption = listItem.siblings('.selected'),
				price = (alreadySelectedOption.length > 0 ) ? -Number(alreadySelectedOption.data('price')) : 0;

			//La condition teste si un modèle est déjà séléctionné, soit si l'on change de modèle. Le prix de l'ancien modèle est déduit et le nouveau est ajouté.
			(listItem.hasClass('selected') ) 
				? price = -Number(listItem.data('price'))
				: price = Number(listItem.data('price')) + price;

			//Permet de déselectionner le modèle.
			alreadySelectedOption.removeClass('selected');
			//Permet l'alternance (toggle) de la sélection.
			listItem.toggleClass('selected');
			//Actualise le prix pour les étapes suivant le choix du modèle.
			(listItem.parents('[data-selection="models"]').length == 0) && self.updatePrice(price);
		} else {
			//Plusieurs options peuvent être ajoutées ou retirer au clic.
			var price = ( listItem.hasClass('selected') ) ? -Number(listItem.data('price')) : Number(listItem.data('price'));
			//Permet l'alternance (toggle) des options selectionnées
			listItem.toggleClass('selected');
			//Actulise le prix
			self.updatePrice(price);
		}
		
		if( listItem.parents('[data-selection="models"]').length > 0 ) {
			self.updateModelContent(listItem);
		}
	};

	PokeballBuilder.prototype.updateModelContent = function(model) {
		var self = this;
		if(model.hasClass('selected')) {
			var modelType = model.data('model'),
				modelImage = model.find('img').attr('src');

			//Génère un visuel du produit dans le footer en récupérant les informations dans les élément enfants via les attributs et les classes
			this.modelPreview.attr('src', modelImage);

			//Le contenu du configurateur change en fonction du modèle sélectionné
			//Les autres modèles sont retirés
			this.models.siblings('li').remove();
			//Le nouveau contenu est chargé en fonction du modèle choisi. La valeur affecté à l'attribut "data-model" doit correspondre au nom de la page appelée.
			$.ajax({
		        type       : "GET",
		        dataType   : "html",
		        url        : "pokeball-builder/"+modelType,
		        beforeSend : function(){
		        	self.loaded = false;
		        	model.siblings().removeClass('loaded');
		        },
		        success    : function(data){
		        	self.models.after(data);
		        	self.loaded = true;
		        	model.addClass('loaded');
		        	//Retire la classe "disabled" des navigation header et footer ainsi que le message d'alerte.
		        	self.fixedSummary.add(self.mainNavigation).removeClass('disabled show-alert');
		        	//Actualise les propriétés de l'objet en fonction de l'étape en cours
					self.steps = self.element.find('.builder-step');
					self.summary = self.element.find('[data-selection="summary"]');
					//Détecte le clic sur l'élément d'une liste et l'actualise
					self.optionsLists.off('click', '.js-option');
					self.optionsLists = self.element.find('.options-list');
					self.optionsLists.on('click', '.js-option', function(event){
						self.updateListOptions($(this));
					});

					//Retire la classe fist-load lors du premier chargement afin de masquer le contenu.
					self.element.find('.first-load').removeClass('first-load');
		        },
		        error     : function(jqXHR, textStatus, errorThrown) {
		        }
			});

			//Calcul le prix total 
			this.totPriceWrapper.text(model.data('price'));
		} else {
			//Si aucun modèle n'est selection la classe "disabled" est attribuée à la naviagtion header et footer
			this.fixedSummary.add(this.mainNavigation).addClass('disabled');
			//Le prix est mis à zéro
			this.totPriceWrapper.text('0');

			this.models.find('.loaded').removeClass('loaded');
		}
	};

	PokeballBuilder.prototype.customizeModel = function(target) {
		var parent = target.parent('li')
			index = parent.index();
		
		//Calcul le prix total finl en fonction de l'ensemble des options sélectionnées.
		var price = (parent.hasClass('selected'))
			? 0
			: Number(parent.data('price')) - parent.siblings('.selected').data('price');

		this.updatePrice(price);
		target.parent('li').addClass('selected').siblings().removeClass('selected').parents('.cd-product-customizer').siblings('.cd-product-previews').children('.selected').removeClass('selected').end().children('li').eq(index).addClass('selected');
	};

	PokeballBuilder.prototype.updatePrice = function(price) {
		var actualPrice = Number(this.totPriceWrapper.text()) + price;
		this.totPriceWrapper.text(actualPrice);
	};

	if( $('.cd-product-builder').length > 0 ) {
		$('.cd-product-builder').each(function(){
			//Crée un objet PokeballBuilder pour chaque .cd-product-builder
			new PokeballBuilder($(this));
		});
	}
});