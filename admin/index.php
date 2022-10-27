<?php 
include "admin/controller.php";
require_once "admin/check-login.php";
include "admin/inc/_header.php"; 
?>
<div class="main-container">
	<div class="pd-ltr-20">
		<div class="card-box pd-20 height-100-p mb-30">
			<div class="row align-items-center">
				<div class="col-md-4">
					<img src="http://www.linternaute.com/actualite/dossier/05/presidentielles-2007/patrimoine-candidats/images/5-marie-george-buffet.jpg" class="img-dress" alt="">
				</div>
				<div class="col-md-5">
					<h4 class="weight-600 font-30 text-blue"><?=$resultUser['identifiant'] ?>!</h4>
					<div class="button-display">
						<a href="postez/" class="button_link">
						Postez</a>
					</div>

	<table class="tbl">
	<thead class="table-header">
		<tr>
		<th>Titre</th>
		<th>Description</th>
		<th>Date</th>
		<th>Actions</th>
		</tr>
	</thead>

	<tbody id="table-body">
		<?php
		if(!empty($resultPost)) { 
			foreach($resultPost as $row) {
			$_SESSION['id_post']=$row['id_post'];
		?>
		<tr class="table-row">
			<td><?php echo $row["titre"]; ?></td>
			<td><?php echo $row["description"]; ?></td>
			<td><?php echo $row["post_at"]; ?></td>
			<td>
				<a class="action-links" href="./modifiez?id_post">Modifier</a> 
				<a class="action-links" href="./effacez?id_posts">Effacer</a>
			</td>
		</tr>
		<?php
			}
		}
		?>
	</tbody>
	</table>
	</div>
					
			
			<div class="row">
			<?php
			$userPok = explode(",", $resultUser['nom_pok']);
			$userPokImg = explode(",", $resultUser['img_pok']);
			$userPokLvl = explode(",", $resultUser['lvl_pok']);
			if(isset($resultUser) && !empty($resultUser))
			{
				for($i=0;$i<sizeof($userPok); $i++)
				{	
				?>
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div id="chart"></div>
								</div>
								<div class="widget-data">
									<div class="h4 mb-0"><?= $userPok[$i]; ?></div>
									<div class="weight-600 font-14">Niveau <?=$userPokLvl[$i];?></div>
									<img src="<?= $userPokImg[$i];?>" alt="">	
								</div>
							</div>
						</div>
					</div>

				<?php
				}
			}	
				?>
			
			</div>
			<div class="row">
				<div class="col-xl-8 mb-30">
					<div class="card-box height-100-p pd-20">
						<h2 class="h4 mb-20">Badges obtenus</h2>
						<div id="chart5"></div>
					</div>
				</div>
				<div class="col-xl-4 mb-30">
					<div class="card-box height-100-p pd-20">
						<h2 class="h4 mb-20">Objet</h2>
						<div id="chart6"></div>
					</div>
				</div>
			</div>
			<div class="card-box mb-30">
				<h2 class="h4 pd-20">Pokemons capturés</h2>
				<table class="data-table table nowrap">
					<thead>
						<tr>
							<th class="table-plus datatable-nosort">Pokémon</th>
							<th>Nom</th>
							<th>PV</th>
							<th>Force</th>
							<th>Défense</th>
							<th>Vitesse</th>
							<th>Spécial</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$champPv = explode(",", $resultUser['spv']);
						$champFor = explode(",", $resultUser['sfor']);
						$champDef = explode(",", $resultUser['sdef']);
						$champVit = explode(",", $resultUser['svit']);
						$champSpe = explode(",", $resultUser['sspe']);
						if(isset($resultUser) && !empty($resultUser))
						{
							for($i=0;$i<sizeof($userPok); $i++)
							{
							?>
							<tr>
							<td class="table-plus">
								<img src="<?= $userPokImg[$i]; ?>" width="70" height="70" alt="">
							</td>
							<td>
								<h5 class="font-16"><?=$userPok[$i];?></h5>
							</td>
							<td><?=$champPv[$i];?></td>
							<td><?=$champFor[$i];?></td>
							<td><?=$champDef[$i];?></td>
							<td><?=$champVit[$i];?></td>
							<td><?=$champSpe[$i];?></td>
							<td>
							<?php
							}}?>
			
					</tbody>
				</table>
			</div>
		</div>
	</div>
<?php
include "admin/inc/_footer.php";
?>