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
    
</body>
</html>


<?php

$tab = array("jimmy" => 1, "halim" => 2, "greg" => 3, "cedric" => 4, "anthony" => 5, "oceane" => 6);
ksort($tab);

echo "<table border=1>";
echo "<tr><td>Nom</td><td>Note</td></tr>";
 foreach ($tab as $key=>$value){
   echo "<tr><td>$key</td><td>$value</td></tr>";
    
 }
echo "</table>";


$age = array("peter"=>"35", "halim"=> "168", "joe"=>"43");
print_r (array_keys($age));

?>