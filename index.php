<!DOCTYPE html>
<html lang="en">

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
    include ("controllers/funciones.php");
    include ("vistas/vwHeader.php"); ?>
    <main>
    <div class="container c-2">
            <?php $numVistas = array("01", "02", "03", "04");
            $vw = isset($_REQUEST['vw']) ? $_REQUEST['vw'] : NULL;
            if (!in_array($vw, $numVistas)) {
                include ("vistas/vwWelcome.php");
            }
            if ($vw == "01") {
                include ("vistas/vwSoport.php");
            } else if ($vw == "02") {
                include ("vistas/vwReservas.php");
            } ?>
        </div>
    </main>
    <?php include ("vistas/wFooter.php") ?>
</body>

</html>