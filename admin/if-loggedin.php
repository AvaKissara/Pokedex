<?php
if((basename($_SERVER['PHP_SELF']) == 'login.php') || (basename($_SERVER['PHP_SELF']) == 'inscription.php')){
	if(isset($_SESSION['id']) & !empty($_SESSION['id'])){
		header("location: index.php");
	}
}
?>