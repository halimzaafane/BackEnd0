<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter des images</title>
</head>
<body>
    <?php
        $bdd = new PDO('mysql:host=localhost;dbname=tuto_image;charset=utf8','root','');
        $req = $bdd->query('SELECT src,nom,dat_pub FROM images');
        while($donnees = $req->fetch()){
            echo('<img style="width:50px;height:50px;border-radius:500px;" src = "' .$donnees['src'] . '"/><br>' .$donnees['nom'] . '<br>' . 'le : ' . $donnees['dat_pub'] . '<br/><hr>');
        }
    ?>
</body>
</html>