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
        <h1>Index</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
    <div id="main_content">
        <h2>Listes : (voir et/ou imprimer)</h2>
        <div id="imp_buttons">
            <button type="button" onclick="location.href = 'impLivre.php';">Liste des livres</button>
            <button type="button" onclick="location.href = 'impEmprunt.php'">Historique des emprunts</button>
            <button type="button" onclick="location.href = 'impLivreNR.php'">Liste des livres non rendus</button>
            <button type="button" onclick="location.href = 'impClient.php'">Liste des comptes clients</button>
            <button type="button" onclick="location.href = 'impAdmin.php'">Liste des comptes admin</button>
        </div>
        <h2>Modification : </h2>
        <div id="imp_buttons">
            <button type="button" onclick="location.href = 'modifierAuteur.php';">Modifier les auteurs</button>
            <button type="button" onclick="location.href = 'modifierColl.php'">Modifier les collections</button>
            <button type="button" onclick="location.href = 'modifierEdit.php'">Modifier les éditeurs</button>
            <button type="button" onclick="location.href = 'modifierRub.php'">Modifier les rubriques</button>
        </div>
    </div>
    <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
</body>
</html>
