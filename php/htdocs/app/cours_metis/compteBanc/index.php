<?php

require_once 'classes/Compte.php';
require_once 'classes/CompteCourant.php';
require_once 'classes/CompteEpargne.php';
//ON instancie le compte
$compte1 = new CompteCourant('Halim', 500, 200);
$compte1->retirer(200);
var_dump($compte1);

$compteEpargne = new CompteEpargne('Halim', 200, 1);

var_dump($compteEpargne);
// https://youtu.be/_PhTtWVDhzw?list=PLBq3aRiVuwyx6B9sJip_ZU1lt7jjCwsMJ&t=2211