<?php
include("conexion.php");

$user = isset($_POST['usu']) ? $_POST['usu'] : NULL;
$pass = isset($_POST['pass']) ? $_POST['pass'] : NULL;

if ($user && $pass){
    validar($user, $pass);
} else{
    msj();
}

function validar($user, $pass){
    $res = ingreso($user, $pass);
    $res = isset($res) ? $res : NULL;

    if($res){
        session_start();
        $_SESSION['idper'] = $res[0]['idper'];
        $_SESSION['nomper'] = $res[0]['nomper'];
        $_SESSION['apeper'] = $res[0]['apeper'];
        $_SESSION['idpef'] = $res[0]['idpef'];
        $_SESSION['nompef'] = $res[0]['nompef'];
        $_SESSION['pagini'] = $res[0]['pagini'];
        $_SESSION['aut'] = "MNBb:234#33.sdf!-ff";
        echo "<script type='text/javascript'>window.location='../home.php';</script>";
    } else{
        msj();
    }
}

function ingreso($user, $pass){
    $res = NULL;
    $sql = "SELECT p.idper, p.nomper, p.apeper, p.idpef, f.nompef, f.pagini FROM persona AS p INNER JOIN perfil AS f ON p.idpef = f.idpef WHERE p.actper = 2 AND p.nodocper = :nodocper AND p.pasper = :pasper";
    $modelo = new Conexion();
    $conexion = $modelo->getConexion();
    $result = $conexion->prepare($sql);
    $result->bindParam(":nodocper", $user);
    $result->bindParam(":pasper", $pass);
    $result->execute();
    $res = $result->fetchAll(PDO::FETCH_ASSOC);
    return $res;
}

function msj(){
    echo "<script>window.location='../index.php?vw=27&err=oK';</script>";
}