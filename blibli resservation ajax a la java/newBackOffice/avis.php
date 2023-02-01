<?php
session_start();
require '../sqlconnect.php';

$emprunt=$_POST['emprunt'];
$avis=$_POST['votreAvis'];
$user_id=$_SESSION['CLIENT_ID'];
$date = date('Y-m-d'); 
// echo $date;
$sql2= "SELECT LIV_ISBN FROM emprunter WHERE EMP_ID= $emprunt";
$LIV_ISBN = $connection->query($sql2);
$LIV_ISBN2 = $LIV_ISBN->fetch();
$sql = "INSERT INTO avis (id_Client, LIV_id, description, date) VALUES (".$user_id.", '".$LIV_ISBN2['LIV_ISBN']."','".$_REQUEST['votreAvis']."','".$date."')";

echo $sql;

// 11/10/12
//Pouvoir changer les avis et ajout date ajout dans la bd
$connection->query($sql);

header('Location: empruntClient.php');








?>
