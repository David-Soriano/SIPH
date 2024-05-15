<?php
include("conexion.php");

$user = isset($_POST['usu']) ? $_POST['usu'] : NULL;
$pass = isset($_POST['pass']) ? $_POST['pass'] : NULL;

if ($user && $pass){
    echo "Vamos bien";
} else{
    msj();
}

function validar($user, $pass){
    $res = ingreso($user, $pass);
    $res = isset($res) ? $res : NULL;

    if($res){
        session_start();
        $_SESSION['idper'] = $res[0]['idper'];
        $_SESSION['nodocper'] = $res[0]['nodocper'];
        $_SESSION['nomper'] = $res[0]['nomper'];
        $_SESSION['apeper'] = $res[0]['apeper'];
        $_SESSION['idpef'] = $res[0]['idpef'];
        $_SESSION['nompef'] = $res[0]['nompef'];
        $_SESSION['pagini'] = $res[0]['pagini'];
        $_SESSION['aut'] = "MNBb:234#33.sdf!-ff";
        echo "<script type='text/javascript'>window.location='../home.php;</script>";
    } else{
        msj();
    }
}

function ingreso($user, $pass){

}

function msj(){
    echo "<script>window.location='../index.php?err=oK';</script>";
}