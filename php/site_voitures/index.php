<?php
$bdd = new PDO('mysql:host=localhost;dbname=site_voitures;', 'root', '');
$query = 'SELECT  Marque, Couleur_originale, kilometrage from voitures natural join marques natural join historique_vehicules natural join couleur_garnissage_intérieur';
$allvoitures = $bdd->query($query);
if(isset($_GET['s']) or isset($_GET['kilometrage']) or isset($_GET['couleur'])) {
    $recherche = htmlspecialchars($_GET['s']);
    $kilometrage = htmlspecialchars($_GET['kilometrage']);
    $couleur = htmlspecialchars($_GET['couleur']);
    $condition = array();

if(!empty($recherche)){
    $condition[] = 'Marque like "%'.$recherche.'%"';
}
if(!empty($couleur)){
    $condition[] = 'Couleur_originale like "%'.$couleur.'%"';
}
if(!empty($kilometrage)){
    $condition[] ='Kilometrage like "%'.$kilometrage.'%"';
}

$sql = $query;
if(count($condition) > 0){
    $sql .= " WHERE " . implode(' AND ', $condition);
}
$allvoitures = $bdd->query($sql);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>VROOMISSIMO</title>
</head>

<body>
    <div class="container1">
    <h1>VROOMISSIMO</h1>
   <form method="GET" class="formu">
    <i class="fa fa-car" for="s"><span> Rechercher par Marque: </span></i>
    <input type="search" name="s" placeholder=" Marques " autocomplete="off"><br/>
    <label class="fa fa-car" for="couleur"><span> Filtrer par couleur: </span></label>
    <input type="search" id="couleur" name="couleurs" placeholder="Couleurs"><br/>
    <label class="fa fa-car" for="kilometrage"><span> Filtrer par kilometrage: </span></label>
    <input type="search" id="kilometrage" name="kilometrages" placeholder="Kilométrage">
    <input type="submit" name="envoyer">
   </form> 

   <section class="afficher_Voitures">
   <table class="table table-succes table-striped" id="jolie">
<tr> <td> Marques </td> <td> Couleurs </td> <td> Kilométrage</td> </tr>
</section>
   
    <?php
    if($allvoitures->rowCount() > 0){
while($voitures = $allvoitures->fetch()){
    ?>
    <?= "<tr><td>".$voitures['Marque']."</td>
             <td>".$voitures['Couleur_originale']."</td>
             <td>".$voitures['kilometrage']."</td>
         </tr><br/>\n"
             ;
             
        ?>
    <?php
}
    }else{
        ?>
        <p>Aucun Modele trouvé</p>
        <?php
    }
    ?>
  
</div>
</body>
</html>