<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../backstyle.css">
    </head>
    <body onload="location.href = '../index.php';">
      <?php
      session_start();
      #vérification de la session
      if (isset($_SESSION['LOGID'])) {
        require '../../sqlconnect.php';
      ?>
      <h1>Suppression</h1>
  		<?php
      $i=0;
      foreach($_POST['suppr'] as $valeur)
      {
        $sql="DELETE FROM correspondre WHERE LIV_ISBN = '".$valeur."';";
        $connection->exec($sql);

        $sql="DELETE FROM ecrire WHERE LIV_ISBN = '".$valeur."';";
        $connection->exec($sql);

    		$sql="DELETE FROM livre WHERE LIV_ISBN = '".$valeur."'";
    		$connection->exec($sql);
        $i=$i+1;
      }
  		?>
  		<p>Le livre a bien été supprimé.</p>
      <p><input type="button" onClick="location.href = '../index.php';" value="Retour"/></p>
      <?php
      }
      else{
        header('Location: /backoffice/login.php');
      }
      ?>
    </body>
</html>
