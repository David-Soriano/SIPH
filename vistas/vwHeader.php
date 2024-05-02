<header>
    <div class="row">
        <div class="col-5">
        <?php if($pwActual == "home"){
            include("vistas/vwOpcMenu.php");
        } ?>
            <ul>
                <?php include("vistas/vwOpcAyd.php");
                if($pwActual == "home"){
                    include("vistas/vwOpcPrf.php");
                } else{
                    include("vistas/vwOpcNs.php");
                }?>
            </ul>
        </div>
        <div class="col-2">
            <img src="img/logo.png" alt="Logo">
        </div>
        <div class="col-5">
            <div class="col bx-menurg">
                <?php if($pwActual == "index"){
                    include("vistas/vwOpcLogin.php");
                }?>
                <div class="col-2">
                    <a href="#"><i class="bi bi-search-heart" title="Buscar"></i></a>
                    <?php if($pwActual == "home"){
                        include("vistas/vwOpcExit.php");
                    }?>
                </div>
            </div>
        </div>
    </div>
    <hr>
</header>