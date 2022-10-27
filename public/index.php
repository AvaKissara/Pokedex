<?php
require "./src/controller.php";
include "inc/_header.php";

if(isset($_GET['pokemon']) && !empty($_GET['pokemon']))
{
    ?><main class="card-container-info">
<?php
    foreach($resultPage as $line)
    {
        ?>
        <!-- <div> -->
        <div class="card card-pokemon cpage">
            <div class="card-title">
                <h3 class="main-info"><?= $line["number"].'<br>'.$line["nom"] ?></h3>
            </div> 
            <div class="card-image page">
                <img src="<?=$line["image"]?>">
            </div> 
            <div class="card-info">
                <p class="desc-pok"><?= $line["description"]?></p>
            </div>
            <div class="card-info">
                <div class="row">
                    <div class="col rounded <?php  
                        $type = $line['type_1'];
                        $classTypes="";
                        switch($type)
                        {
                            case '1':
                                $classTypes="combat";
                                break;
                            case '2':
                                $classTypes="dragon";
                                break;
                            case '9':
                                $classTypes="plante";
                                break;
                            case '10':
                                $classTypes="poison";
                                break;
                            case '11':
                                $classTypes="psy";
                                break;
                            case '14':
                                $classTypes="spectre";
                                break;
                            case '15':
                                $classTypes="vol";
                                break;
                            case '5':
                                $classTypes="feu";
                                break;
                            case '4':
                                $classTypes="electrique";
                                break;
                            case '8':
                                $classTypes="normal";
                                break;
                            case '7':
                                $classTypes="insecte";
                                break;
                            case '3':
                                $classTypes="eau";
                                break;
                            case '6':
                                $classTypes="glace";
                                break;
                            case '13':
                                $classTypes="sol";
                                break;
                            case '12':
                                $classTypes="roche";
                                break;
                        }
                        echo $classTypes;
                        ?>">
                        <?= $classTypes?>
                    </div>
        
                    <div class="col rounded <?php  
                        $type = $line['type_2'];
                        $classTypes_2="";
                        switch($type)
                        {
                            case '1':
                                $classTypes_2="combat ";
                                break;
                            case '2':
                                $classTypes_2="dragon ";
                                break;
                            case '9':
                                $classTypes_2="plante ";
                                break;
                            case '10':
                                $classTypes_2="poison ";
                                break;
                            case '11':
                                $classTypes_2="psy ";
                                break;
                            case '14':
                                $classTypes_2="spectre ";
                                break;
                            case '15':
                                $classTypes_2="vol ";
                                break;
                            case '5':
                                $classTypes_2="feu ";
                                break;
                            case '4':
                                $classTypes_2="electrique ";
                                break;
                            case '8':
                                $classTypes_2="normal";
                                break;
                            case '7':
                                $classTypes_2="insecte";
                                break;
                            case '3':
                                $classTypes_2="eau";
                                break;
                            case '6':
                                $classTypes_2="glace";
                                break;
                            case '13':
                                $classTypes_2="sol";
                                break;
                            case '12':
                                $classTypes_2="roche";
                                break;
                        }
                        echo $classTypes_2;                       
                        ?>">
                        <?= $classTypes_2?>
                    </div>
                </div>
            </div>  
            
        </div>
        
        <div class="card-body col-lg-5">
            <div class="card-header bg-warning">Statistiques de combat</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">PV: <?= $line['stat_pv']?></li>
                    <li class="list-group-item">Force: <?= $line['stat_force']?></li>
                    <li class="list-group-item">Défense: <?= $line['stat_defense']?></li>
                    <li class="list-group-item">Spécial: <?= $line['stat_special']?></li>      
                </ul>
    <?php
    }
    if(!empty($resultEvo)) 
    {
    ?>         
        <div class="card-info">
            <section class="">          
                    <div class="card-header bg-warning evolution-info col-lg-10">Evolution</div>
                    <div class="col-lg-6 col-md-12 mb-4 mb-lg-0">
                    <h5 class="info-evo"><?=$resultEvo['number'].'<br>'.$resultEvo['nom']?></h5>
                        <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                            <img src=<?=$resultEvo['image']?> class="w-100"/>
                            <a href="#!"></a>
                        </div>
                        <div class="row row-evo">
                            <div class="col rounded <?=$classTypes?>"><?=$classTypes?></div>
                            <div class="col rounded <?=$classTypes_2?>"><?=$classTypes_2?></div>
                        </div>
                    </div>        
            </section>
        </div>
    </div> 
<?php
    }
    else
    {
     ?>
        <div class="card-info">
                    <section class="">
                        <div class="row">
                            <div class="card-header bg-warning evolution-info">Evolution</div>
                            <div class="col-lg-6 col-md-12 mb-4 mb-lg-0">
                                <div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
                                    <p>Pas d'évolution connue</p>
                                    <a href="#!"></a>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Section: Images -->
                </div>
            </div> 
<?php
    }
?>
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="card-header bg-warning">Attaques <?=$classTypes;?></div>
            <?php
                    foreach($resultAttaque as $pokAttaque)
                    $attaque = explode(",", $pokAttaque['libelle']);
                    $pp = explode(",", $pokAttaque['s_pp']);
                    $pu = explode(",", $pokAttaque['s_pu']);
                    $pr = explode(",", $pokAttaque['s_pr']);
                    for($i=0;$i<sizeof($attaque); $i++)
                    {{?>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-heading<?=$i?>">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse<?=$i?>" aria-expanded="false" aria-controls="flush-collapseOne">
                                <?= $attaque[$i]?>
                                </button>
                            </h2>
                            <div id="flush-collapse<?=$i?>" class="accordion-collapse collapse" aria-labelledby="flush-heading<?=$i?>" data-bs-parent="#accordionFlushExample">
                                <ul class="accordion-body stat-attaque">
                                    <li>Pp: <?=$pp[$i]?></li>
                                    <li>Puissance: <?=$pu[$i]?></li>       
                                    <li>Précision:  <?=$pr[$i]?></li>       
                                </ul>
                            </div>
                        </div>
                    
                    <?php
                    }}
                    ?>

        </div>

        <?php
        if($line['type_2'] >0)
        {?>
            <div class="accordion accordion-flush" id="accordionFlushExample2">
                <div class="card-header bg-warning">Attaques <?=$classTypes_2;?></div>
                <?php
                foreach($resultAttaque2 as $pokAttaque2)
                $attaque2 = explode(",", $pokAttaque2['libelle']);
                $pp2 = explode(",", $pokAttaque2['s_pp']);
                $pu2 = explode(",", $pokAttaque2['s_pu']);
                $pr2 = explode(",", $pokAttaque2['s_pr']);
                for($i=0;$i<sizeof($attaque2); $i++)
                {{?>                     
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading2<?=$i?>">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse2<?=$i?>" aria-expanded="false" aria-controls="flush-collapseOne">
                            <?= $attaque2[$i]?>
                            </button>
                        </h2>
                        <div id="flush-collapse2<?=$i?>" class="accordion-collapse collapse" aria-labelledby="flush-heading2<?=$i?>" data-bs-parent="#accordionFlushExample2">
                            <ul class="accordion-body stat-attaque">
                                <li>Pp: <?=$pp2[$i]?></li>
                                <li>Puissance: <?=$pu2[$i]?></li>       
                                <li>Précision:  <?=$pr2[$i]?></li>       
                            </ul>
                        </div>
                    </div>               
                <?php
                }}}
                ?>
            </div>
            
        <?php
    }
    else
    {
        ?><main class="card-container">
<?php
        foreach($result as $row)
        {
            ?>
            <a href="./?pokemon=<?= $row['id'] ?>&type=<?= $row['type_1']?>" class="text-dark text-decoration-none bg-dark"><div class="card">
                <div class="card-title">
                    <h3><?= $row["number"].'<br>'.$row["nom"] ?></h3>
                </div>
                
                <div class="card-image">
                    <img src="<?=$row["image"]?>">
                </div> 

                <div class="card-info">
                    <div class="row">
                        <div class="col rounded <?php  
                            $type = $row['type_1'];
                            $classTypes="";
                            switch($type)
                            {
                                case '1':
                                    $classTypes="combat ";
                                    break;
                                case '2':
                                    $classTypes="dragon ";
                                    break;
                                case '9':
                                    $classTypes="plante ";
                                    break;
                                case '10':
                                    $classTypes="poison ";
                                    break;
                                case '11':
                                    $classTypes="psy ";
                                    break;
                                case '14':
                                    $classTypes="spectre ";
                                    break;
                                case '15':
                                    $classTypes="vol ";
                                    break;
                                case '5':
                                    $classTypes="feu ";
                                    break;
                                case '4':
                                    $classTypes="electrique ";
                                    break;
                                case '8':
                                    $classTypes="normal";
                                    break;
                                case '7':
                                    $classTypes="insecte";
                                    break;
                                case '3':
                                    $classTypes="eau";
                                    break;
                                case '6':
                                    $classTypes="glace";
                                    break;
                                case '13':
                                    $classTypes="sol";
                                    break;
                                case '12':
                                    $classTypes="roche";
                                    break;
                            }
                            echo $classTypes;
                            ?>">
                            <?= $classTypes?>
                        </div>
                       
                            <div class="col rounded <?php  
                            $type = $row['type_2'];
                            $classTypes="";
                            switch($type)
                            {
                                case '1':
                                    $classTypes="combat ";
                                    break;
                                case '2':
                                    $classTypes="dragon ";
                                    break;
                                case '9':
                                    $classTypes="plante ";
                                    break;
                                case '10':
                                    $classTypes="poison ";
                                    break;
                                case '11':
                                    $classTypes="psy ";
                                    break;
                                case '14':
                                    $classTypes="spectre ";
                                    break;
                                case '15':
                                    $classTypes="vol ";
                                    break;
                                case '5':
                                    $classTypes="feu ";
                                    break;
                                case '4':
                                    $classTypes="electrique ";
                                    break;
                                case '8':
                                    $classTypes="normal";
                                    break;
                                case '7':
                                    $classTypes="insecte";
                                    break;
                                case '3':
                                    $classTypes="eau";
                                    break;
                                case '6':
                                    $classTypes="glace";
                                    break;
                                case '13':
                                    $classTypes="sol";
                                    break;
                                case '12':
                                    $classTypes="roche";
                                    break;
                            }
                            echo $classTypes;                       
                            ?>">
                            <?= $classTypes?>
                        </div>
                
                    </div>
                </div>
                
            </div></a>  

    <?php 
    } 
    } 
    include "inc/_footer.php";
    ?>

