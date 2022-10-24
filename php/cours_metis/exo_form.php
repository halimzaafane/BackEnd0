
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
    <h1>AD<span>D</span>ITION</h1><br>
    <form action="" method="post">
    <input type="text" name="val1" placeholder="première valeur"><br><br>
    <input type="text" name="val2" placeholder="deuxième valeur"><br><br>
    <input type="submit" name="result" value="Résultat"><br><br>
    </form>
    
<?php

    if((isset($_POST['result']))) {
    $valeur1 = $_POST["val1"];
    $valeur2 = $_POST["val2"];

    if (!empty($valeur1) && !empty($valeur2)){
       $result = $_POST["val1"] + $_POST["val2"];
   echo "<h2>Le <span>résultat</span> est: <h2>" . "<h3>$result<h3>";
        }else{
    if(empty($valeur1) || (empty($valeur2)))
    echo "<h2>Remplir <span>tout</span> les champs<h2>";
    }
    }

?>

</body>
</html>
