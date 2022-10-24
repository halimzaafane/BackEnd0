<?php 
session_start();

$_SESSION["usrnom"] = $_POST["nom"];
// header("Location: loginsuite.php");
var_dump($_SESSION);
?>
