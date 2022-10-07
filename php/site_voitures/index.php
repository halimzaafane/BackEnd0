<?php
$bdd = new PDO('mysql:host=localhost;dbname=site_voitures;', 'root', '');
$allusers = $bdd->query('SELECT ID_Voitures, Marque, photos, Modele , Couleur_originale, Couleur_intérieur, Garniture from voitures natural join types natural join marques natural join couleur_garnissage_intérieur order by ID_Voitures ASC');
if(isset($_GET['s']) AND !empty($_GET['s'])){
    $recherche = htmlspecialchars($_GET['s']);
    $allusers = $bdd->query('SELECT ID_Voitures, Marque, photos, Modele , Couleur_originale FROM voitures natural join types natural join marques natural join couleur_garnissage_intérieur WHERE Couleur_originale LIKE "%'.$recherche.'%"');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Rechercher des Modeles dans la table voitures</title>
</head>
<h1>Exo barre de recherche</h1>
<h2>Recherche de voitures par couleur</h2>
<body>
   <form method="GET">
    <input type="search" name="s" placeholder="Rechercher Voitures par Couleurs">
    <input type="submit" name="envoyer">
   </form> 


   <section class="afficher_Modele">
   
    <?php
    if($allusers->rowCount() > 0){
while($users = $allusers->fetch()){
    ?>
   <table class="centre" id="jolie">
<tr> <td> ID_Voitures </td> <td> Marque </td> <td> Photos </td><td> Modele </td><td> Couleur_originale </td> </tr>
    <?= "<tr><td>".$users['ID_Voitures']."</td>
            <td>".$users['Marque']."</td>
            <td>".$users['photos']."</td>
            <td>".$users['Modele']."</td>
            <td>".$users['Couleur_originale']."</td></tr><br/>\n";
        ?>
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