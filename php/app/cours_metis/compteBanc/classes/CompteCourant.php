<?php

/**
 *  Compte bancaire (héritage de Compte)
 */
class CompteCourant extends Compte
{
    private $decouvert;

    /**
     *  Constructeur de compte courant
     * @param  string $nom Nom du titulaire
     * @param float $montant Montant du solde à l'ouverture
     * @param int $decouvert Découvert autorisé
     * @return void
     */
    public function __construct(string $nom, float $montant, int $decouvert)
    {
        // On transfert les informations nécessaires au constructeur de Compte
        parent::__construct($nom, $montant);

        $this->decouvert = $decouvert;
    }

    public function getDecouvert():int
    {
        return $this->decouvert;
    }

    public function setDecouvert(int $montant): self
    {
        if($montant >=0){
            $this->decouvert = $montant;
        }
        return $this;
    }


    public function retirer(float $montant)
    {
// On vérifie si le découvert permet le retrait
if($montant > 0 && $this->solde - $montant >= -$this->decouvert){
    $this->solde -= $montant;
}else{
echo 'Solde insuffisant';
    }
    }
}