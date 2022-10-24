<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <title>Cours</title>
</head>
<body>

    <?php

    $text = <<<html
 <table class="table">
 <thead>
   <tr>
     <th scope="col">#</th>
     <th scope="col">Nom</th>
     <th scope="col">Prénom</th>
     <th scope="col">Age</th>
     <th scope="col">Sexe</th>
     <th scope="col">Profession</th>
   </tr>
 </thead>
 <tbody>
   <tr>
     <th scope="row">1</th>
     <td>Mark</td>
     <td>Otto</td>
     <td>26</td>
     <td>M</td>
     <td>Menuisier</td>
   </tr>
   <tr>
     <th scope="row">2</th>
     <td>Jacob</td>
     <td>Thornton</td>
     <td>10</td>
     <td>M</td>
     <td>Menuisier</td>
   </tr>
   <tr>
     <th scope="row">3</th>
     <td >Larry the Bird</td>
     <td>Pigeon</td>
     <td>50</td>
     <td>M</td>
     <td>Menuisier</td>
   </tr>
 </tbody>
</table>
html;
echo($text);
?>
    
</body>
</html>