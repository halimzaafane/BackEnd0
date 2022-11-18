<?php
$bdd = new PDO('mysql:host=localhost;dbname=barre_de_recherche;', 'root', '');
$allusers = $bdd->query('SELECT * FROM users ORDER BY ID_users DESC');
if(isset($_GET['s']) AND !empty($_GET['s'])){
    $recherche = htmlspecialchars($_GET['s']);
    $allusers = $bdd->query('SELECT pseudo FROM users WHERE pseudo LIKE "%'.$recherche.'%" ORDER BY ID_users DESC');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rechercher des utilisateurs</title>
</head>
<body>
   <form method="GET">
    <input type="search" name="s" placeholder="Rechercher un utilisateur">
    <input type="submit" name="envoyer">
   </form> 

   <section class="afficher_utilisateur">
    <?php
    if($allusers->rowCount() > 0){
while($users = $allusers->fetch()){
    ?>
    <p><?= $users['pseudo']; ?></p>
    <?php
}
    }else{
        ?>
        <p>Aucun utilisateur trouvé</p>
        <?php
    }
    ?>
   </section>
</body>
</html>