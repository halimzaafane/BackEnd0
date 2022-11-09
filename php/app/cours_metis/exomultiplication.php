<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>

<h1>Table de multiplication :</h1> 

<table border="1">
<?php

for ($i = 1; $i <= 5; $i++){

    echo "<tr>";

    for ($j = 1; $j <=5; $j++){
        //$p = produit de i*j
    $p=$i*$j;

    echo "<td>$p</td>";

}

echo "</tr>";
}
?>
</table>   


</body>
</html>