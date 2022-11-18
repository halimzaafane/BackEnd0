<?php
$intPrice = 10;
var_dump ($intPrice);
$floatPrice = (float) $intPrice;
var_dump ($floatPrice);
$maValeur = 5;
$maChaine = "$maValeur";
echo "<pre>";
var_dump ($maValeur);
var_dump ($maChaine);

echo "<pre>";
$a = "222.22324";
echo "<pre>";
print $a;
$a = $a * 100;
echo "<pre>";
print $a;
$a = intval(($a * 100) / 100);
echo "<pre>";
print $a;
$a = intval((($a * 100) + 0.5) / 100);
echo "<pre>";
print $a;
echo "<pre>";
print intval((0.1 + 0.7)* 10); 

?>