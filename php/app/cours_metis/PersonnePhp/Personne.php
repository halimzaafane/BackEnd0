<?php // Personne.php 
class Personne {
    // Les caractéristiques d'une personne
    private $nom;
    private $societe;

    // Les caractéristiques comportementales
    /* 
    * Construction d'un objet Personne de société inconnue 
    * et de nom correspondant au paramètre nom
    */
    public function __construct(string $nom){
        $this->nom = strtoupper($nom);
        $this->societe = "?";
    }


/**
 *  Affichage des caractéristiques de la personne
 */
public function afficher(){
    echo "Je m'appelle " . $this->nom;
    
    if ($this->societe === "?"){
        echo " et je ne suis pas salarié.\n";
    }
    else{
        echo " et je travaille chez " . $this->societe . "\n";
    }
}

/**
 *  Modification de la société 
 */
public function integrerSociete(string $entreprise){
    $this->societe = $entreprise;
}
}


echo "Bonjour\n";
//$p1 = new Personne(); // refusé à la compilation
$p2 = new Personne("Martin"); // OK

//$p2->nom = "Dupond"; // Refusé à la compilation
//echo "Je m'appelle " . $p2->nom; // Refusé à la compilation

$p2->afficher(); // Affiche "Je m'appelle Martin et je ne suis pas salarié."

$p2->integrerSociete("Java SARL"); // OK

$p2->afficher(); // Affiche "Je m'appelle MARTIN et je travaille chez JAVA SARL "

?>

