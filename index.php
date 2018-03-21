<?php
session_start();

// appel du fichier de configuration
require_once "mysqliconfig.php";

//connexion à la DB
require_once "m/connectDBModel.php";

if(isset($_SESSION['myKey'])){
    require_once "c/AdminController.php";
}else{
    require_once "c/PublicController.php";
}