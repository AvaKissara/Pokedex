<?php
    define('SERVER', "localhost");
    define('BASE', "pokedex");
    define('USER', "root");
    define('PASSWD', "root");

    $dsn = 'mysql:host='.SERVER.';dbname='.BASE;

try 
{
    $conn=new PDO($dsn, USER, PASSWD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
} 
catch (PDOException $e) 
{
    echo "Connection failed: ".$e->getMessage();
}


