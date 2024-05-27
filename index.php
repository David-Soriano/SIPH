<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
    <title>SIPH</title>
</head>

<body>
    <?php $pwActual = "index";
    include("models/conexion.php");
    include("controllers/cmenu.php");
    include ("controllers/funciones.php");
    include ("vistas/vwBuscar.php");
    include ("vistas/vwHeader.php"); ?>
    <main>
    <div class="container c-2">
            <?php
            $vw = isset($_REQUEST['vw']) ? $_REQUEST['vw'] : NULL;
            $rut = valRut($vw);
            if($rut) include($rut[0]['rutpag']);
            else include("vistas/vwWelcome.php");
            ?>            
        </div>
    </main>
    <?php include ("vistas/wFooter.php") ?>
</body>
<script src="js/script.js"></script>
</html>