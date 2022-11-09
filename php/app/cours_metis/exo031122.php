<?php

class Voiture {

    public $vin;
    public $marque;
    public $couleur;
    public $immat;

    public function show()

    {
        echo "Cette voiture à le code vin n°" . $this->vin . ", de marque " . $this->marque . ", de couleur " . $this->couleur . " et son immatriculation est " . $this->immat . ".\n";
    }

            }


echo "Bonjour, bienvenue chez VOOMISSIMO !!!";
echo "<pre>";
$v = new Voiture();
$v->vin = "15236GFS";
$v->marque = "Porsche";
$v->couleur = "Grise";
$v->immat = "125BGI25";
var_dump($v);
$v->show();
echo get_class($v);
?>