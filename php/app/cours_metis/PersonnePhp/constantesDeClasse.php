<?php

class Personne {
    private const PAS_DE_SOCIETE = "?"; 
    private $nom;
    private $societe;
    private static $effectif = 0;
// Construit un objet Personne de nom invariable
// et de société inconnue 


    public function __construct(
        string $nom,
        string $societe = self::PAS_DE_SOCIETE)
       {
        $this->nom = strtoupper($nom);
        $this->societe = $societe;
        self::$effectif++;
       }

    public function afficher()
    {
        echo "Je m'appelle " . $this->nom;
        if ($this->societe === self::PAS_DE_SOCIETE)
        {
            echo " et je ne suis pas salarié.\n";
        }
        else{
            echo " et je travail chez " . $this->societe . ".\n";
        }
    }

    public static function getEffectif() : int{
        return self::$effectif;
    }

    public function assocSociete(){
        
    }
}

$p1 = new Personne("dupont", "Java");
$p1->afficher();
$p2 = new Personne("durand");
$p2->afficher();
echo "Le groupe a un effectif de " . Personne::getEffectif() . " Personne(s).";

// En dehors de la classe, on ne peut plus utiliser $this ou self
// on utilisera le nom de l'objet ou de la classe 
//$p1 = new Personne("dupont");   // l'objet $p1 est créé
//$p1->afficher();                // Appel d'une méthode d'objet
// Affichage d'une constante Personne (possible si public)
//echo Personne::PAS_DE_SOCIETE;

?>