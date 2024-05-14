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
    include ("controllers/funciones.php");
    include ("vistas/vwBuscar.php");
    include ("vistas/vwHeader.php"); ?>
    <main>
        <div class="container">
            <?php $numVistas = array("01", "02", "03", "04", "05", "06", "07", "08", "09");
            $vw = isset($_REQUEST['vw']) ? $_REQUEST['vw'] : NULL;
            if(!in_array($vw, $numVistas)){
                include("vistas/vwInit.php");
            }
            if ($vw == "01") {
                include ("vistas/vwSoport.php");
            } else if($vw == "02") {
                include ("vistas/vwReservas.php");
            } else if($vw == "03") {
                include ("vistas/vwDetNotf.php");
            } else if($vw == "04") {
                include ("vistas/vwEstCnt.php");
            }  else if($vw == "05") {
                include ("vistas/vwRegInq.php");
            }?>
        </div>
    </main>
    <?php include ("vistas/wFooter.php") ?>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="js/script.js"></script>
</body>

</html>