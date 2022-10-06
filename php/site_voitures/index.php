<?php
$bdd = new PDO('mysql:host=localhost;dbname=site_voitures;', 'root', '');
$allusers = $bdd->query('SELECT * FROM voitures ORDER BY ID_Voitures DESC');
if(isset($_GET['s']) AND !empty($_GET['s'])){
    $recherche = htmlspecialchars($_GET['s']);
    $allusers = $bdd->query('SELECT Modele FROM voitures WHERE Modele LIKE "%'.$recherche.'%" ORDER BY ID_Voitures DESC');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rechercher des Modeles dans la table voitures</title>
</head>
<body>
   <form method="GET">
    <input type="search" name="s" placeholder="Rechercher un Modele">
    <input type="submit" name="envoyer">
   </form> 

   <section class="afficher_Modele">
    <?php
    if($allusers->rowCount() > 0){
while($users = $allusers->fetch()){
    ?>
    <p><?= $users['Modele']; ?></p>
    <?php
}
    }else{
        ?>
        <p>Aucun Modele trouvé</p>
        <?php
    }
    ?>
   </section>
</body>
</html>