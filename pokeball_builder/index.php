<!doctype html>
<html lang="fr" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
	<link rel="stylesheet" href="../public/css/style.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="../public/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="pokeball_builder/css/style.css"> <!-- Ressource style -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.8.0/html2pdf.bundle.min.js" integrity="sha512-w3u9q/DeneCSwUDjhiMNibTRh/1i/gScBVp2imNVAMCt6cUHIw6xzhzcPFIaL3Q1EbI2l+nu17q2aLJJLo4ZYg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<title>Pokeball Builder</title>
</head>
<body>

<div class="cd-product-builder">
	<header class="main-header">
	<a href="/" class="navbar-brand"><img src="../img/Pokémon_logo.svg.png" alt="" class="d-inline-block align-text-top"></a>
		
		<nav class="cd-builder-main-nav disabled">
			<ul>
				<li class="active"><a href="#models">Modèles</a></li>
				<li><a href="#colors">Couleurs</a></li>
				<li><a href="#accessories">Accessoires</a></li>
				<li><a href="#summary">Récapitulatif</a></li>
			</ul>
		</nav>
	</header>


	<div class="cd-builder-steps" id="html2pdf">
		<ul>
			<li data-selection="models" class="active builder-step">
				<section class="cd-step-content">
					<header>
						<h1>Sélectionner le type de pokéball</h1>
						<span class="steps-indicator">Etape <b>1</b> of 4</span>
					</header>

					<ul class="models-list options-list cd-col-2">
						 <li class="js-option js-radio" data-price="200" data-model="pokeball">
							<span class="name">Pokéball</span>
							<img src="pokeball_builder/img/pokeball.png" alt="pokeball">
							<span class="price">dès ₽200</span>
							<div class="radio" name="ball" value="pokeball"></div>
						</li>
						<li class="js-option js-radio" data-price="600" data-model="superball">
							<span class="name">Superball</span>
							<img src="pokeball_builder/img/superball.png" alt="superball">
							<span class="price">dès ₽600</span>
							<div class="radio" name="ball" value="superball"></div>
						</li>
						<li class="js-option js-radio" data-price="800" data-model="hyperball">
							<span class="name">Hyperball</span>
							<img src="pokeball_builder/img/hyperball.png" alt="hyperball">
							<span class="price">dès ₽800</span>
							<div class="radio" name="ball" value="hyperball"></div>
						</li>
					</ul>
				</section>
			</li>
			<!-- le contenu additionnel est injecté en Ajax -->
		</ul>
	</div>

	<footer class="cd-builder-footer disabled step-1">
		<div class="selected-product">
			<img src="pokeball_builder/img/pokeball.png" alt="Product preview">

			<div class="tot-price">
				<span>Total</span>
				<span class="total">₽<b>0</b></span>
			</div>
		</div>
		
		<nav class="cd-builder-secondary-nav">
			<ul>
				<li class="next nav-item">
					<ul>
						<li class="visible"><a href="#0">Couleurs</a></li>
						<li><a href="#0">Accessoires</a></li>
						<li><a href="#0">Récapitulatif</a></li>
						<li class="buy" id="exportPDF"><a href="#0">Facture</a></li>
					</ul>
				</li>
				<li class="prev nav-item">
					<ul>
						<li class="visible"><a href="#0">Modèles</a></li>
						<li><a href="#0">Modèles</a></li>
						<li><a href="#0">Couleurs</a></li>
						<li><a href="#0">Accessoires</a></li>
					</ul>
				</li>
			</ul>
		</nav>

		<span class="alert">Veuillez choisir un modèle</span>
	</footer>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script>
	if( !window.jQuery ) document.write('<script src="pokeball_builder/js/jquery-3.0.0.min.js"><\/script>');
</script>
<script src="pokeball_builder/js/main.js"></script> <!-- Ressource jQuery -->
<script>
	let htmlPDF = document.getElementById("html2pdf");
	let exportPDF = document.getElementById("exportPDF");
	exportPDF.onclick = (e) => html2pdf(htmlPDF);
</script>
</body>
</html>