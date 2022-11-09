<?php
class Personne {
// 2 variables d'instance pour le moment non protégées 
public $nom;
public $societe;

// une méthode
public function afficher(){
    echo "Je m'appelle " . $this->nom;
    echo " et je travaille chez " . $this->societe . "\n";
}
}

// Execution de la classe
echo "Bonjour";
$p = new Personne();
$p->nom = "Dupont";
var_dump($p);


?>