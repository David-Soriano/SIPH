<?php
class Mmenu
{
    private $idpag;
    function getIdpag()
    {
        return $this->idpag;
    }
    function setIdpag($idpag)
    {
        $this->idpag = $idpag;
    }
    public function getMenu()
    {
        $res = NULL;
        $modelo = new Conexion();
        $conexion = $modelo->getConexion();
        $sql = "SELECT p.idpag, p.nompag, p.rutpag, p.mospag, p.ordpag, f.idpef, p.icopag FROM pagina AS p INNER JOIN pagper AS f ON p.idpag = f.idpag WHERE f.idpef = :idpef";
        $result = $conexion->prepare($sql);
        $idpef = isset($_SESSION['idpef']) ? $_SESSION['idpef'] : 0;
        $result->bindParam(':idpef', $idpef);
        $result->execute();
        $res = $result->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
    public function getVal()
    {
        $res = NULL;
        $modelo = new Conexion();
        $conexion = $modelo->getConexion();
        $sql = "SELECT p.idpag, p.nompag, p.rutpag, p.mospag, p.ordpag, f.idpef, p.icopag FROM pagina AS p INNER JOIN pagper AS f ON p.idpag = f.idpag WHERE f.idpef = :idpef AND p.idpag = :idpag";
        $result = $conexion->prepare($sql);
        $idpef = isset($_SESSION['idpef']) ? $_SESSION['idpef'] : 0;
        $result->bindParam(":idpef", $idpef);
        $idpag = $this->getIdpag();
        $result->bindParam(":idpag", $idpag);
        $result->execute();
        $res = $result->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }

    public function getInxVal()
    {
        $res = NULL;
        $modelo = new Conexion();
        $conexion = $modelo->getConexion();
        $sql = "SELECT p.idpag, p.nompag, p.rutpag, p.mospag, p.ordpag, p.icopag FROM pagina AS p WHERE p.idpag = :idpag";
        $result = $conexion->prepare($sql);
        $idpag = $this->getIdpag();
        $result->bindParam(":idpag", $idpag);
        $result->execute();
        $res = $result->fetchAll(PDO::FETCH_ASSOC);
        return $res;
    }
}