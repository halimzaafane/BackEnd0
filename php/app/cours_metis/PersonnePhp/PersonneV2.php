<?php
class Personne {
    // Les caractéristiques d'une personne 
    private $nom;
    private $societe;

    // Les caractéristiques comportementales
    /**
     *  Construction d'un objet Personne de société inconnue
     *  et de nom correspondant au paramètre nom
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
     *  Consultation de la société
     * 
     *  @return void
     */
    public function getSociete(){
        return $this->societe;
    }

    /**
     *  Modifie la société
     * 
     * @param string $societe
     * @return void 
     */
    public function setSociete(string $societe) {
        $this->societe = $societe;
    }
    

}

// Execution de la classe 
$p1 = new Personne("dupont");
$p1->afficher();
$p1->setSociete("Java");
echo($p1->getSociete() . "\n");
$p1->afficher();

?>