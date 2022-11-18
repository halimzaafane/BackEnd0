<?php
session_start();
include "config/commandes.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>login-vroomissimo</title>
</head>
<body>
<br>
<br>
<br>

<div class="container-fluid">
            <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

    <form method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" class="form-control" name="email" style="width: 60%">
        </div>

        <div class="mb-3">
            <label for="motdepasse" class="form-label">Mot de passe</label>
            <input type="password" class="form-control" name="motdepasse" style="width: 60%">
        </div>
 
        <input type="submit" class="btn btn-danger" name="envoyer" value="Se connecter">

    </form>
        </div>
            <div class="col-md-3"></div>
            </div>
        </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>

<?php

if(isset($_POST['envoyer'])){
    if(!empty($_POST['email']) AND !empty($_POST['motdepasse'])){
        $email = htmlspecialchars($_POST['email']);
        $motdepasse = htmlspecialchars($_POST['motdepasse']);

        $admin = getAdmin($email, $motdepasse);

        if($admin){
            $_SESSION['jfhiuehziu'] = $admin;
            header("Location: admin/");

        }else{
            echo "Il y a un problème !";
        }
    }
}
?>
