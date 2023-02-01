<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../../style.css">
    </head>
    <body onload="location.href = '../client.php';">
  <?php    session_start();    #vérification de la session
     if (isset($_SESSION['LOGID'])) {
      //
       require '../../sqlconnect.php';

       
     $idclient=$_GET["client"];
     $idmdp = md5($_GET["clientmdp"]);


     $sql="UPDATE client SET CLIENT_MDP ='".$idmdp."' WHERE CLIENT_ID= '".$idclient."';";
     $connection->exec($sql);  ?>
      <?php

      unset($_SESSION['client']);
}
      else{
        header('Location: login.php');
      }
      ?>
    </body>
</html>
