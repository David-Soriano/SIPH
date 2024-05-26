<?php
include("models/mmenu.php");

$mmenu = new Mmenu();
$dtAll = $mmenu -> getMenu();

function valida($idpag){
    $mmenu = new Mmenu();
    $mmenu -> setIdpag($idpag);
    $dat = $mmenu -> getVal();
    return $dat;
}

function valRut($idpag){
    $mmenu = new Mmenu();
    $mmenu -> setIdpag($idpag);
    $dat = $mmenu -> getInxVal();
    return $dat;
}