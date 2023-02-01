<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../backstyle.css">
    </head>
    <body onload="location.href = '../emprunt.php';">
      <?php
      session_start();
      #vérification de la session
      if (isset($_SESSION['LOGID'])) {
        require '../../sqlconnect.php';
      $i=0;
      $datetoday = date("Y-m-d");
        foreach($_POST['rendre'] as $valeur)
        {
          $sql="UPDATE emprunter SET EMP_ETAT = '1', EMP_DATE_R_REEL = '".$datetoday."' WHERE EMP_ID = '".$valeur."';";
          $connection->exec($sql);
          $i=$i+1;
        }
      }
      else{
        header('Location: ../backlogin.html');
      }
      ?>
    </body>
</html>
