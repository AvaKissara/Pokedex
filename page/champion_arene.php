<?php
require "./src/controller.php";
include "inc/_header.php";
$_SESSION['champion']= $_GET['nom'];
?>
<div class="main-container">
		<div class="pd-ltr-20">
			<div class="card-box pd-20 height-100-p mb-30">
				<div class="row align-items-center">
					<div class="col-md-4">
						<img src="<?=$resultChamp['img_dress']?>" class="img-dress" alt="">
					</div>
					<div class="col-md-8">
						<h4 class="weight-600 font-30 text-blue"><?=$resultChamp['nom_dress'] ?>!</h4>
						<p class="font-18 max-width-600">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ultricies magna vel tempor ultrices. Curabitur volutpat mi fringilla libero lobortis, venenatis lobortis sem ex.</p>
					</div>
				</div>
			</div>
			<div class="row">

			<?php
			$champPok = explode(",", $resultChamp['nom_pok']);
			$champPokImg = explode(",", $resultChamp['img_pok']);
			$champPokLvl = explode(",", $resultChamp['lvl_pok']);
			if(isset($resultChamp) && !empty($resultChamp))
			{
				for($i=0;$i<sizeof($champPok); $i++)
				{	
				?>
					<div class="col-xl-3 mb-30">
						<div class="card-box height-100-p widget-style1">
							<div class="d-flex flex-wrap align-items-center">
								<div class="progress-data">
									<div id="chart"></div>
								</div>
								<div class="widget-data">
									<div class="h4 mb-0"><?= $champPok[$i]; ?></div>
									<div class="weight-600 font-14">Niveau <?=$champPokLvl[$i];?></div>
									<img src="<?= $champPokImg[$i]; ?>" alt="">
									
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
						<h2 class="h4 mb-20">Récompenses</h2>
						<div class="recompense">
							<div class="recompense-item">
								<img src="<?=$resultChamp['badge_img']?>">
								<span><?=$resultChamp['badge_nom']?></span>
							</div>
							<div class="recompense-item">
								<img src="<?=$resultChamp["capsule_img"] ?>">
								<span><?=$resultChamp["capsule"]?></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-4 mb-30">
					<div class="card-box height-100-p pd-20">
						<h2 class="h4 mb-20">Objet</h2>
						<div class="recompense">
							<div class="recompense-item">
								<img src="<?=$resultChamp["objet_img"] ?>">
								<span><?=$resultChamp["objet"]?></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="card-box mb-30">
				<h2 class="h4 pd-20">Equipe</h2>
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
						$champPv = explode(",", $resultChamp['spv']);
						$champFor = explode(",", $resultChamp['sfor']);
						$champDef = explode(",", $resultChamp['sdef']);
						$champVit = explode(",", $resultChamp['svit']);
						$champSpe = explode(",", $resultChamp['sspe']);
						if(isset($resultChamp) && !empty($resultChamp))
						{
							for($i=0;$i<sizeof($champPok); $i++)
							{
							?>
							<tr>
								<td class="table-plus">
									<img src="<?= $champPokImg[$i]; ?>" width="120" alt="">
								</td>
								<td>
									<h5 class="font-16"><?=$champPok[$i];?></h5>
								</td>
								<td><?=$champPv[$i];?></td>
								<td><?=$champFor[$i];?></td>
								<td><?=$champDef[$i];?></td>
								<td><?=$champVit[$i];?></td>
								<td><?=$champSpe[$i];?></td>
							<tr>
							<?php
							}}?>
			
					</tbody>
				</table>
			</div>
		</div>
	</div>
<?php
include "inc/_footer.php";
?>