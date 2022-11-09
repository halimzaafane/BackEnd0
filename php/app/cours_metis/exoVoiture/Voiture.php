<?php

class Voiture {

    // Propriétés

    private $immat ;
    private $couleur;
    private $poids ;
    private $puissance;
    private $capReserv;
    private $nbrPlace;
    private $nivEss;
    private $assure;
    private $messTdb;

// Constructeur 
/**
 *  Instanciation de l'objet
 * @param int $immat
 * @param string $couleur
 * @param int $poids
 * @param int $puissance
 * @param float $capReserv
 * @param float $nivEss
 * @param int $nbrPlace
 * @param bool $assure
 * @param string $messTdb
 */

public function __construct(
   int $immat, string $couleur, int $poids, int $puissance, float $capReserv, int $nbrPlace
)

{
    $this->immat = $immat;
    $this->couleur = $couleur;
    $this->poids = $poids;
    $this->puissance = $puissance;
    $this->capReserv = $capReserv;
    $this->nbrPlace = $nbrPlace;
    $this->nivEss = 5.0;
    $this->assure = false;
    $this->messTdb = "Félicitation vous avez acquis la voiture de vos rêves !";
}



/**
 * @return int
 * @return string
 * @return float
 */
public function getImmat() : int 
{
    return $this->immat;
}

public function getCouleur() : string 
{
    return $this->couleur;
}

public function getPoids() : int 
{
    return $this->poids;
}

public function getPuissance() : int 
{
    return $this->puissance;
}

public function getCapReserv() : float 
{
    return $this->capReserv;
}

public function getNivEss() : float 
{
    return $this->nivEss;
}

public function getNbrPlace() : int 
{
    return $this->nbrPlace;
}

public function getAssure() : bool 
{
    return $this->assure;
}

public function getMessTdb() : string 
{
    return $this->messTdb;
}


public function setAssure(bool $assure){
    if ($this->assure)
}



}

?>