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
     $idnom=$_GET["clientnom"];
     $idprenom=$_GET["clientprenom"];
     $idtel=$_GET["clienttel"];
     $idadr=$_GET["clientadr"];
     $idville=$_GET["clientville"];
     $idcp = $_GET["clientcp"];
     $idmail = $_GET["clientmail"];
     $idmdp = md5($_GET["clientmdp"]);
     if(isset($_SESSION['nomImage'])){
        $sql="UPDATE client SET CLIENT_PHOTO='".$_SESSION['nomImage']."' WHERE CLIENT_ID = '".$idclient."'";
        $connection->exec($sql);
       }
     $sql="UPDATE client SET CLIENT_NOM='".$idnom."',CLIENT_PRENOM='".$idprenom."',CLIENT_TEL='".$idtel."',CLIENT_ADR='".$idadr."',CLIENT_VILLE='".$idville."',CLIENT_CP='".$idcp."',CLIENT_MAIL='".$idmail."',CLIENT_MDP ='".$idmdp."' WHERE CLIENT_ID= '".$idclient."';";
     $connection->exec($sql);  ?>
      <?php
      unset($_SESSION['nomImage']);
      unset($_SESSION['client']);
}
      else{
        header('Location: login.php');
      }
      ?>
    </body>
</html>
