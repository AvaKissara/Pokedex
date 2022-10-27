<?php

if(isset($_SESSION['login']) & ($_SESSION['login'] == true)){

}else{
	header("location: login");
}
if(isset($_SESSION['id']) & !empty($_SESSION['id'])){

}else{
	header("location: login");
}
if(isset($_SESSION['last_login']) & !empty($_SESSION['last_login'])){

}else{

	header("location: login");
}
?>