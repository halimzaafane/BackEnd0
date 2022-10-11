<?php
$bdd = new PDO('mysql:host=localhost;dbname=site_voitures;','root','');
$query = 'SELECT  Marque, Couleur_originale, kilometrage, src from voitures natural join marques natural join historique_vehicules natural join couleur_garnissage_intérieur natural join images';
$allvoitures = $bdd->query($query);
if(isset($_GET['s']) or isset($_GET['kilometrage']) or isset($_GET['couleur']) or isset($_GET['src'])) {
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>VROOMISSIMO</title>
</head>

<body>
    <div class="container1">
        <div class="input">
    <h1>VROOMISSIMO</h1>
   <form method="GET" class="formu"><input class="envoyer" type="submit" name="envoyer">
    <i class="fa fa-car" for="s"><span> Rechercher par Marque: </span></i>
    <input type="search" name="s" placeholder=" Marques " autocomplete="off" style="border-radius:10px"><br/><br/>
    <label class="fa fa-car" for="couleur"><span> Filtrer par couleur: </span></label>
    <input type="search" id="couleur" name="couleur" placeholder="Couleurs" style="border-radius:10px"><br/><br/>
    <label class="fa fa-car" for="kilometrage"><span> Filtrer par kilometrage: </span></label>
    <input type="search" id="kilometrage" name="kilometrage" placeholder="Kilométrage" style="border-radius:10px">
    
   </form> 
</div>
   
   <!-- <table class="table table-succes table-striped" id="jolie">
<tr> <td id="td"> Marques </td> <td id="td"> Couleurs </td> <td id="td"> Kilométrage </td> <td id="td"> Photos </td> </tr> -->


<div class="afficher_Voitures">
    <?php
    if($allvoitures->rowCount() > 0){
while($voitures = $allvoitures->fetch()){
    //var_dump($voitures)
    echo <<<html
    <div class="card alignement "  style="width: 30rem;">  
    <img src="{$voitures['src']}" class="card-img-top" alt="...">   
    <div class="card-body">
    <p> Marque : {$voitures['Marque']}</p>
    <p> couleur : {$voitures['Couleur_originale']}</p>
    <p> kilometrage : {$voitures['kilometrage']} kms</p>
    <a href="#" class="card-link">voir la voiture</a>
    </div>
  </div>
  html; 
       
    // cette partie est fonctionnelle
    // "<tr><td>".$voitures['Marque']."</td>
    //      <td>".$voitures['Couleur_originale']."</td>
    //      <td>".."</td>
    //      <td><img width='300px'src='".$voitures['src']."'></td>
    //      </tr><br/>\n"
    //      ;

     ?> 
    
    <?php
}
    }else{
        ?>
        <p id="none">Aucun Modele trouvé</p>
        <?php
    }
    ?>
  </div>
</div>

<footer>
<?php
echo "<p>Copyright &copy; " . date("Y") . "  ZAAFANE Halim</p>";
?>
</footer>
</body>
</html>