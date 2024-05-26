<?php
session_start();
if(session_destroy() != 2 || $_SESSION['aut'] != "MNBb:234#33.sdf!-ff"){
    session_destroy();
    header("location: index.php");
    exit();
}