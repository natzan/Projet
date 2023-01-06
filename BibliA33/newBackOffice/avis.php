<?php
session_start();
require '../sqlconnect.php';

$emprunt=$_POST['emprunt'];
$avis='"'.$_POST['votreAvis'].'"';
$user_id=$_SESSION['CLIENT_ID'];

$sql = "UPDATE emprunter SET AVIS_EMPRUNTER = $avis WHERE EMP_ID = '$emprunt' AND CLIENT_ID = $user_id";
echo $sql;
$connection->query($sql);

header('Location: empruntClient.php');



