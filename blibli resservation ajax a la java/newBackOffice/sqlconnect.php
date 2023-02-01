<?php

// Connection au serveur
//try {

    
//    $dns = 'mysql:host=stpolsis45.mysql.db;dbname=stpolsis45';
//    $utilisateur = 'stpolsis45';
//    $motDePasse = 'LcouaiSh45';
//    $connection = new PDO( $dns, $utilisateur, $motDePasse );
//    $connection->query("SET NAMES utf8");
//} catch ( Exception $e ) {
//    echo "Connection à MySQL impossible : ", $e->getMessage();
//    die();
//}

//Connection au serveur
try {

    
    $dns = 'mysql:host=localhost;dbname=bibli';
    $utilisateur = 'root';
    $motDePasse = '';
    $connection = new PDO( $dns, $utilisateur, $motDePasse );
    $connection->query("SET NAMES utf8");
} catch ( Exception $e ) {
    echo "Connection à MySQL impossible : ", $e->getMessage();
    die();
}

?>

