<?php
class Conexion{
    public function getConexion(){
        include("datos.php");
        $conexion = new PDO("mysql:host=$host;dbname=$db;", $user, $pass);
        return $conexion;
    }
}