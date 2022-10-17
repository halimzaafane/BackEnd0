<?php
session_start();
if(!isset($_SESSION['jfhiuehziu'])){
  header("Location: ../login.php");
}

if(!isset($_SESSION['jfhiuehziu'])){
  header("Location: ../login.php");
}

require("../config/commandes.php");
$Produits=afficher();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Supprimer un produit</title>
</head>
<body>
<div class="album py-5 bg-light">
    <div class="container">
      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

<form method="post">
  <div class="mb-3">

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Identifiant du produit</label>
    <input type="number" class="form-control" name="idproduit" required>
  </div>

  <button type="submit" name="valider" class="btn btn-primary">Supprimer le produit</button>
</form>

</div>

<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

<?php foreach($Produits as $produit): ?>
        <div class="col">
          <div class="card shadow-sm">
            <img src="<?= $produit->image ?>">
            <h3><?= $produit->id ?></h3>
                    <div class="card-body">
                    </div>
                </div>
            </div>
 <?php endforeach; ?> 

</div>

    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>

<?php

if(isset($_POST['valider'])){
    if(isset($_POST['idproduit'])){
        if(!empty($_POST['idproduit']) AND is_numeric($_POST['idproduit'])){

            $idproduit = htmlspecialchars(strip_tags($_POST['idproduit']));
           
        try{
            supprimer($idproduit);
            } catch (Exception $e) {
            $e->getMessage();
            }   
        }  
    }
}

?>