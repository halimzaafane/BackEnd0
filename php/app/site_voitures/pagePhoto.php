<?php 
$bdd = new PDO('mysql:host=localhost;dbname=site_voitures;','root','');
$query = 'SELECT src from images';
$allphotos = $bdd->query($query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <header>
        <h1>photosVROOMISSIMO</h1>
    </header>
    <div class="container">
        <img src="{$allphotos['src']}" class="image">
    </div>
</body>
</html>
