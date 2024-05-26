<?Php require_once("models/seg.php");?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon">

    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/2.0.2/js/dataTables.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/2.0.2/js/dataTables.bootstrap5.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/2.0.2/css/dataTables.bootstrap5.css">

    <title>SIPH</title>
</head>

<body>
    <?php $pwActual = "home";

    include("models/conexion.php");
    include ("controllers/funciones.php");
    include("controllers/cmenu.php");
    include ("vistas/vwBuscar.php");
    include ("vistas/vwHeader.php");?>
    <main>
        <div class="container">
            <?php
            $vw = isset($_REQUEST['vw']) ? $_REQUEST['vw'] : NULL;
            if(!$vw && $_SESSION['pagini']) $vw = $_SESSION['pagini']; 

            $rut = valida($vw);
            if($rut) include($rut[0]['rutpag']);
            else echo "No Tiene Permisos";
            ?>
        </div>
    </main>
    <?php include ("vistas/wFooter.php") ?>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>