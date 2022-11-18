<?php
/**
 * Objet compte bancaire
 */
abstract class Compte
{
    // Propriétés 

    /**
     * Titulaire du compte
     * 
     * @var string
     */
    private $titulaire;

    /**
     * Solde du compte
     *
     * @var float
     */
    protected float $solde;

    

    /**
     * Constructeur du compte bancaire
     * 
     *
     * @param string $nom Nom du titulaire
     * @param float $montant Montant du solde à l'ouverture
     */
    public function __construct(string $nom, float $montant = 100)
    {
        //On attribut le nom à la propriété titulaire de l'instance crée
        $this->titulaire = $nom;

        //On attrbut le montant à la propriété solde
        $this->solde = $montant;// + ($montant * self::TAUX_INTERETS/100);
    }

    /**
     * Méthode magique pour la conversion en chaîne de caractères
     *
     * @return string
     */
    public function __toString()
    {
        return "Vous visualisez le compte de {$this->titulaire}, le solde est de {$this->solde} euros.";
    }


    // Accesseurs / Accession aux fonctions privées
    /**
     * Getter de Titulaire - Retourne la valeur du titulaire du compte
     *
     * @return string
     */
    public function getTitulaire(): string
    {
        return $this->titulaire;
    }

    /**
     * Modifie le nom du titulaire et retourne l'objet
     *
     * @param string $nom Nom du titulaire
     * @return Compte Compte bancaire
     */
    public function setTitulaire(string $nom):self
    {
        if($nom != ""){
            $this->titulaire = $nom;
        }

        return $this;
    }

    public function getSolde(): float {
        return $this->solde;
    }

    /**
     * Modifie le solde du compte
     *
     * @param float $montant Montant du solde
     * @return Compte Compte bancaire
     */
    public function setSolde(float $montant) : self
    {
        if($montant >= 0){
            $this->solde = $montant;
        }
        return $this;
    }
    /**
     * Déposer de l'argent sur le compte
     *
     * @param float $montant Montant déposé
     * @return void
     */
    public function deposer(float $montant)
    {
        // On vérifie si le montant est positif
        if($montant > 0){
            $this->solde += $montant;
        }
    }

    /**
     * Retourne une chaine de caractères affichant le solde
     *
     * @return string
     */
    public function voirSolde()
    {
        echo "Le solde du compte est de $this->solde euros.";
    }

    /**
     * Retirer un montant du solde du compte
     * @param float $montant Montant à retirer
     * @return void
     */

    public function retirer(float $montant)
    {
        // On vérifie le montant et le solde
        if($montant > 0 && $this->solde >= $montant){
            $this->solde -= $montant;
        }else{
            echo "Montant invalide ou solde insuffisant";
        }
      
    }

}

?>