<?php 

session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv=... />

    <title><?php // titre de page variable

    if (!(isset($_SESSION["usrnom"]))){
        echo "ERREUR login !";
    }
    else{
        echo "Au menu...";
    }
    ?>
    </title>

</head>
<body>
    <?php // cas d'erreur ==> retour vers login.htm
    if(!(isset($_SESSION["usrnom"]))){
        ?>
        <h1> ERREUR login : vous n'avez pas droit d'accès à ce site</h1>
        <p><a href="login.htm">Retour à la page d'accueil</a></p>
        <?php
    }
    else // authentification OK ==> menu
    {
        ?>
        <h1>Au menu du jour pour vous, <?php echo $_SESSION["usrnom"]; ?>...</h1>
        <ul>
            <li><a href="../">Sommaire</a></li>
            <li>Et aussi...</li>
            <li>Et encore...</li>
            <li>Et pour finir...</li>
        </ul>
        <?php
    }
    ?>
</body>
</html>