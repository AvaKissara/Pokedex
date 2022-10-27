<?php
require_once "connect.php";
try
{
    $sql = "SELECT pokemon.id_pok as id, pokemon.nom_pok as nom, pokemon.number as number, caracteristique.type_1, caracteristique.type_2, caracteristique.image as image
    FROM `pokemon`
    LEFT JOIN caracteristique ON pokemon.id_pok = caracteristique.id_pok
    LEFT JOIN type ON caracteristique.type_1 = type.id_type
    GROUP BY id, nom, number, type_1, type_2, image;";
    $prepState= $conn->prepare($sql);
    $prepState->execute();
    $result = $prepState->fetchAll();

    if(!$result) 
    {
        throw new Exception("Pb d'accès au Pokedex");
    }

}
catch(Exception $e)
{
    echo 'Message: '.$e->getMessage();
}

if(isset($_GET['pokemon']) && !empty($_GET['pokemon']))
{
    $idPage = $_GET['pokemon'];
    $sqlPage = "SELECT pokemon.id_pok as id, pokemon.nom_pok as nom, pokemon.number as number, caracteristique.type_1, caracteristique.type_2, caracteristique.image as image, caracteristique.description, statcombat.stat_pv, statcombat.stat_force, statcombat.stat_defense, statcombat.stat_vitesse, statcombat.stat_special
    FROM `pokemon`
    INNER JOIN caracteristique ON pokemon.id_pok = caracteristique.id_pok
    INNER JOIN type ON caracteristique.type_1 = type.id_type  
    INNER JOIN statcombat ON pokemon.id_pok = statcombat.id_pok
    WHERE pokemon.id_pok=$idPage
    GROUP by id, nom, number, type_1, type_2, image, caracteristique.description, statcombat.stat_pv, statcombat.stat_force, statcombat.stat_defense, statcombat.stat_vitesse, statcombat.stat_special";
    $prep= $conn->prepare($sqlPage);
    $prep->execute();
    $resultPage = $prep->fetchAll();


    $sqlAttaque = "SELECT caracteristique.id_pok, caracteristique.type_1, GROUP_CONCAT(attaque.libelle) as libelle, GROUP_CONCAT(attaque.stat_pp) as s_pp, GROUP_CONCAT(CONCAT(IFNULL(attaque.stat_puissance, 'NULL'))) as s_pu, GROUP_CONCAT(attaque.stat_precision) as s_pr
    FROM `type`
    INNER JOIN attaque ON type.id_type = attaque.type_id
    INNER JOIN caracteristique ON type.id_type = caracteristique.type_1
    WHERE caracteristique.id_pok=$idPage
    GROUP BY caracteristique.id_pok, caracteristique.type_1";
    $prepAttaque = $conn->prepare($sqlAttaque);
    $prepAttaque->execute();
    $resultAttaque = $prepAttaque->fetchAll();

    $sqlAttaque2 = "SELECT caracteristique.id_pok, caracteristique.type_2, GROUP_CONCAT(attaque.libelle) as libelle, GROUP_CONCAT(attaque.stat_pp) as s_pp, GROUP_CONCAT(CONCAT(IFNULL(attaque.stat_puissance, 'NULL'))) as s_pu, GROUP_CONCAT(attaque.stat_precision) as s_pr
    FROM `type`
    INNER JOIN attaque ON type.id_type = attaque.type_id
    INNER JOIN caracteristique ON type.id_type = caracteristique.type_2
    WHERE caracteristique.id_pok=$idPage
    GROUP BY caracteristique.id_pok, caracteristique.type_2";
    $prepAttaque2 = $conn->prepare($sqlAttaque2);
    $prepAttaque2->execute();
    $resultAttaque2 = $prepAttaque2->fetchAll();

    $sqlEvo = "SELECT pokemon.nom_pok as nom, pokemon.number as number, caracteristique.type_1, caracteristique.type_2, caracteristique.image as image, evolution.lvl_evol_pok as evolevel
    FROM `evolution`
    INNER JOIN caracteristique ON evolution.id_pok_evol = caracteristique.id_pok
    INNER JOIN type ON caracteristique.type_1 = type.id_type  
    INNER JOIN pokemon ON evolution.id_pok_evol = pokemon.id_pok
    WHERE evolution.id_pok_base=$idPage AND evolution.id_pok_base IS NOT NULL
    GROUP by nom, number, type_1, type_2, image, evolevel";
    $prepEvo = $conn->prepare($sqlEvo);
    $prepEvo->execute();
    $resultEvo = $prepEvo->fetch(PDO::FETCH_ASSOC);

}

if(isset($_GET['nom']) && !empty($_GET['nom']))
{
    $nomChamp = '"'.$_GET['nom'].'"';
    $sqlChamp = "SELECT dresseur.nom_dress, dresseur.img_dress, GROUP_CONCAT(detientpokemon.lvl_pok) as lvl_pok, GROUP_CONCAT(pokemon.nom_pok) as nom_pok, GROUP_CONCAT(caracteristique.image) as img_pok, GROUP_CONCAT(caracteristique.type_1) as type1_pok, GROUP_CONCAT(caracteristique.type_2) as type2_pok, GROUP_CONCAT(statcombat.stat_pv) as spv, GROUP_CONCAT(statcombat.stat_force) as sfor, GROUP_CONCAT(statcombat.stat_defense) as sdef, GROUP_CONCAT(statcombat.stat_vitesse) as svit, GROUP_CONCAT(statcombat.stat_special) as sspe, recompense.badge_nom, recompense.badge_img, recompense.capsule, recompense.capsule_img, recompense.objet, recompense.objet_img
    FROM dresseur
    INNER JOIN detientpokemon on dresseur.id_dress = detientpokemon.id_dress
    INNER JOIN pokemon on detientpokemon.id_pok = pokemon.id_pok
    INNER JOIN caracteristique on pokemon.id_pok = caracteristique.id_pok
    INNER JOIN statcombat on caracteristique.id_pok = statcombat.id_pok
    LEFT JOIN recompense on dresseur.id_dress = recompense.id_dress
    WHERE dresseur.nom_dress = $nomChamp
    GROUP BY dresseur.nom_dress, dresseur.img_dress, recompense.badge_nom, recompense.badge_img, recompense.capsule, recompense.capsule_img, recompense.objet, recompense.objet_img";
    $prepChamp= $conn->prepare($sqlChamp);
    $prepChamp->execute();
    $resultChamp = $prepChamp->fetch(PDO::FETCH_ASSOC);
}


