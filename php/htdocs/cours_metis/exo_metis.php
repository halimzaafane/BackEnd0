<?php

for ($i = 6; $i >= 1; $i--) {
  echo "<h$i>Hello world !</h$i>";
}

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
    <?php
$today = getdate();
$_ENV = getenv();
    ?>
<h1>En ce <?php echo $today["mday"] . " " . $today["month"] . " " . $today["year"]; ?>, 
sur le seveur <?php echo $_SERVER["SERVER_NAME"]; ?>,
il est <?php echo $today["hours"] . "h " . $today["minutes"] . "mn" ;?>.<br />
<h2>L'utilisateur est <?php echo $_ENV["USERNAME"] . "." ?></h2>

<h3>Variable HTTP serveur ( getenv() )</h3>
<table border="1">

    <tr>
        <td><b>Variable</b></td>
        <td><b>Valeur</b></td>
    </tr>

    <tr>
        <td>GATEWAY_INTERFACE</td>
        <td><?php echo getenv("GATEWAY_INTERFACE"); ?>&nbsp; </td>
    </tr>

    <tr>
        <td><?php echo "SERVER_NAME" ; ?></td>
        <td><?php echo getenv("SERVER_NAME"); ?>&nbsp; </td>
    </tr>
    <tr>
        <td><?php echo "SEVER_PROTOCOL" ; ?></td>
        <td><?php echo getenv("SERVER_PROTOCOL"); ?>&nbsp; </td>
    </tr>

</table>

<h3>Variable HTTP server ($_SERVER)</h3>
<table border="1">
<?php foreach ($_SERVER as $article=>$valeur ){ ?>
    <tr>
        <td><?php echo $article; ?></td>
        <td><?php echo $valeur; ?>&nbsp; </td>
    </tr>
<?php }
?>
</table>

</body>
</html>
