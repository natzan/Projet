<?php

// Connection au serveur
//try {

    
    $dns = 'mysql:host=localhost;dbname=bibli';
    $utilisateur = 'root';
    $motDePasse = '';
    $connection = new PDO( $dns, $utilisateur, $motDePasse );
    $connection->query("SET NAMES utf8");
//} catch ( Exception $e ) {
//    echo "Connection à MySQL impossible : ", $e->getMessage();
//    die();
//}
?>

