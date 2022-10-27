<?php
require "src/connect.php";

function out($text)
{
  echo htmlspecialchars($text);
}

function set_csrf()
{
  if(!isset($_SESSION["csrf"]) )
  { 
    $_SESSION["csrf"] = bin2hex(random_bytes(50)); 
    }
  echo '<input type="hidden" name="csrf" value="'.$_SESSION["csrf"].'">';
}
function is_csrf_valid()
{
  if( ! isset($_SESSION['csrf']) || ! isset($_POST['csrf'])){ return false; }
  if( $_SESSION['csrf'] != $_POST['csrf']){ return false; }
  return true;
}

if(isset($_POST["connexion"]) & !empty($_POST["connexion"])){
    if(empty($_POST['email'])){ $errors[]="Identifiant / E-Mail requis"; }
    if(empty($_POST['password'])){ $errors[]="Mot de passe requis"; }
    // CSRF Token Validation
    if(isset($_POST['csrf_token'])){
        if($_POST['csrf_token'] === $_SESSION['csrf_token']){
        }else{
            $errors[] = "Erreur de validation du Token CSRF";
        }
    }
    $max_time = 60*60*24;
    if(isset($_SESSION['csrf_token_time'])){
        $token_time = $_SESSION['csrf_token_time'];
        if(($token_time + $max_time) >= time() ){
        }else{
            $errors[] = "Token CSRF Expiré";
            unset($_SESSION['csrf_token']);
            unset($_SESSION['csrf_token_time']);
        }
    }

    if(empty($errors)){
        $sql = "SELECT * FROM user WHERE ";
        if(filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
            $sql .= "email=?";
        }else{
            $sql .= "identifiant=?";
        }
        $result = $conn->prepare($sql);
        $result->execute(array($_POST['email']));
        $count = $result->rowCount();
        $res = $result->fetch(PDO::FETCH_ASSOC);
        if($count == 1){
            if(password_verify($_POST['password'], $res['password'])){
                session_regenerate_id();
                $_SESSION['login'] = true;
                $_SESSION['id'] = $res['id_user'];
                $_SESSION['last_login'] = time();
                header("location: ./");
            }else{
                $errors[] = "La combinaison Idenfiant/ Email et Mot de Passe ne fonctionne pas";
            }
        }else{
            $errors[] = "L'Identifiant / E-mail n'est pas valide";
        }
    }
    
} 


if(isset($_POST["inscription"]) & !empty($_POST["inscription"])){
    if(empty($_POST['identifiant'])){ $errors[]="Identifiant requis"; }else{
        $sql = "SELECT * FROM user WHERE identifiant=?";
        $result = $conn->prepare($sql);
        $result->execute(array($_POST['identifiant']));
        $count = $result->rowCount();
        if($count == 1){
            $errors[] = "Cet Identifiant existe déjà dans la base de données";
        }
    }
    if(empty($_POST['email'])){ $errors[]="E-Mail requis"; }else{

        $sql = "SELECT * FROM user WHERE email=?";
        $result = $conn->prepare($sql);
        $result->execute(array($_POST['email']));
        $count = $result->rowCount();
        if($count == 1){
            $errors[] = "Cet email existe déjà dans la base de données";
        }
    }
    if(empty($_POST['telephone'])){ $errors[]="Le telephone est requis"; }
    if(empty($_POST['password'])){ $errors[]="Le mot de passe est requis";}else{
        if(empty($_POST['passwordr'])){ $errors[]="Renseignez votre mot de passe une deuxième fois"; }else{
            if($_POST['password'] == $_POST['passwordr']){
                $pass_hash = password_hash($_POST['password'], PASSWORD_DEFAULT);
            }else{
                $errors[] = "Les mots de passe ne sont pas identiques";
            }
        }
    }


    if(isset($_POST['csrf_token'])){
        if($_POST['csrf_token'] === $_SESSION['csrf_token']){
        }else{
            $errors[] = "Le token CSRF n'est pas valide";
        }
    }

    $max_time = 60*60*24;
    if(isset($_SESSION['csrf_token_time'])){
        $token_time = $_SESSION['csrf_token_time'];
        if(($token_time + $max_time) >= time() ){
        }else{
            $errors[] = "Token CSRF Expiré";
            unset($_SESSION['csrf_token']);
            unset($_SESSION['csrf_token_time']);
        }
    }

    if(empty($errors))
    {
        $identifiant=htmlspecialchars($_POST['identifiant']).htmlspecialchars($_POST['prenom']);
        $email=htmlspecialchars($_POST['email']);
        $sql = "INSERT INTO user (identifiant, email, password) VALUES (:identifiant, :email, :password)";
        $result = $conn->prepare($sql);
        $values = array(':identifiant'  => $identifiant,
                        ':email'        => $email,
                        ':password'     => $pass_hash
                        );
        $res = $result->execute($values);

        if($res)
        {
            $messages[] = "Utilisateur enregistré";
            $userid = $conn->lastInsertID();
            $telephone = htmlspecialchars($_POST['telephone']);
            $uisql = "INSERT INTO userinfo (id_user, nom, prenom, telephone) VALUES (:id_user, :nom, :prenom, :telephone)";
            $uiresult = $conn->prepare($uisql);
            $values = array(':id_user'         => $userid,
                            ':nom'             => $_POST['identifiant'],
                            ':prenom'             => $_POST['prenom'],
                            ':telephone'       => $telephone
                            );
            $uires = $uiresult->execute($values) or die(print_r($result->errorInfo(), true));
            if($uires)
            {
                $messages[] = "Informations ajoutées";
            }
        }
    }
}

if(isset($_SESSION['id']) & !empty($_SESSION['id']))
{
    $idUser = $_SESSION['id'];
    $sqlUser="SELECT user.identifiant, GROUP_CONCAT(stockepokemon.lvl_pok) as lvl_pok, GROUP_CONCAT(pokemon.nom_pok) as nom_pok, GROUP_CONCAT(caracteristique.image) as img_pok, GROUP_CONCAT(caracteristique.type_1) as type1_pok, GROUP_CONCAT(caracteristique.type_2) as type2_pok, GROUP_CONCAT(statcombat.stat_pv) as spv, GROUP_CONCAT(statcombat.stat_force) as sfor, GROUP_CONCAT(statcombat.stat_defense) as sdef, GROUP_CONCAT(statcombat.stat_vitesse) as svit, GROUP_CONCAT(statcombat.stat_special) as sspe
    FROM user 
    INNER JOIN stockepokemon on user.id_user = stockepokemon.id_dress
    INNER JOIN pokemon on stockepokemon.id_pok = pokemon.id_pok
    INNER JOIN caracteristique on pokemon.id_pok = caracteristique.id_pok
    INNER JOIN statcombat on caracteristique.id_pok = statcombat.id_pok
    WHERE user.id_user = $idUser
    GROUP BY user.identifiant";
    $prepUser= $conn->prepare($sqlUser);
    $prepUser->execute();
    $resultUser = $prepUser->fetch(PDO::FETCH_ASSOC);


    $sqlPost = "SELECT * 
    FROM post 
    WHERE id_user = $idUser 
    ORDER BY post_at DESC";
    $prepPost = $conn->prepare($sqlPost);
    $prepPost->execute();
    $resultPost = $prepPost->fetchAll(PDO::FETCH_ASSOC);
}


if(!empty($_POST["add_record"])) 
{
	$data = [
        ':id_user'=>$idUser,
		':titre'=>$_POST['post_title'],
		':description'=>$_POST['description'],
		':post_at'=>$_POST['post_at']
	];
	$sql = "INSERT INTO post (id_user, titre, description, post_at ) VALUES (:id_user, :titre, :description, :post_at)";
	$pdo_statement = $conn->prepare($sql);
		
	$result = $pdo_statement->execute($data);
	if (!empty($result))
	{
	  header('location: ../');
	}
}


if(isset($_GET['id_posts']))
{
    $pdo_statement=$conn->prepare("delete from post where id_post=" .$_SESSION['id_post']);
    $pdo_statement->execute();

    $pdo_statement = $conn->prepare("SELECT * FROM post");
    $pdo_statement->execute();
    $result = $pdo_statement->fetchAll();
    header('location: ./');

}


if(!empty($_POST["save_record"]) & isset($_POST['post_title'])) 
{
    $pdo_statement=$conn->prepare("UPDATE post SET titre='" . $_POST[ 'post_title' ] . "', description='" . $_POST[ 'description' ]. "', post_at='" . $_POST[ 'post_at' ]. "' WHERE id_post=" . $_SESSION['id_post']);
    $result = $pdo_statement->execute();
    header('location: ./');
}