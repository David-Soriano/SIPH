<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://cdn.lordicon.com/lordicon.js"></script>
    <title>SIPH</title>
</head>

<body id="body">
    <?php $pwActual = "home";
    include ("vistas/vwHeader.php"); ?>
    <main>
        <div class="container">
            <?php $numVistas = array("01", "02", "03", "04");
            $vw = isset($_REQUEST['vw']) ? $_REQUEST['vw'] : NULL;
            if(!in_array($vw, $numVistas)){
                include("vistas/vwInit.php");
            }
            if ($vw == "01") {
                include ("vistas/vwSoport.php");
            } else if($vw == "02") {
                include ("vistas/vwReservas.php");
            }?>
        </div>
    </main>
    <?php include ("vistas/wFooter.php") ?>
    <script src="js/script.js"></script>
</body>

</html>