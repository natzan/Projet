<!DOCTYPE html>
<html>
<?php
    require_once 'getHead.php';
    setHead();
?>
<body onload="verif();">
<?php
    session_start();
     //vérification de la session
    require 'getNav.php';
    setNav();
    if (isset($_SESSION['LOGID'])) {
    require '../sqlconnect.php';
?>
    <div id="current_page">
        <h1>Reporting</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
    <div id="main_content">
        <h2>
             Voir et imprimer :
        </h2>
        <button name="b_print" type="button" onclick="location.href = 'impAdmin.php'">Liste des comptes admin</button>
        <button name="b_print" type="button" onclick="location.href = 'impClient.php'">Liste des comptes clients</button>
        <button name="b_print" type="button" onclick="location.href = 'impLivre.php';">Liste des livres</button>
        <button name="b_print" type="button" onclick="location.href = 'impEmprunt.php'">Historique des emprunts</button>
        <button name="b_print" type="button" onclick="location.href = 'impLivreNR.php'">Liste des livres non rendus</button>
</div>
    <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
</body>
</html>
