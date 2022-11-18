<?php
session_start();

if(!isset($_SESSION['djfqipueriuae'])){
    header("Location: ../login.php");
}

if(empty($_SESSION['djfqipueriuae'])){
    header("Location: ../login.php");
}

require("../config/commandes.php");



?>