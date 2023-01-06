<!DOCTYPE html>
<html>
<?php
    require_once 'getHead.php';
    setHead();
?>
<body>
<?php
    session_start();
     //vérification de la session
    require 'getNav.php';
    setNav();
    if (isset($_SESSION['LOGID'])) {
    require '../sqlconnect.php';
?>
    <div id="current_page">
        <h1>Ajout Compte Admin</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
    <div id="main_content">
    <div id="etape1">
      <p>
        <form class="" action="ajouterAdmin.php" method="post">
          <p>Nouveau compte admin</p>
          <input id="idadmin" type="text" name="idadmin" value="" placeholder="Identifiant" title="Identifiant du compte admin" required/><br>
          <br>
          <input id="mdpadmin" type="password" name="mdpadmin" value="" placeholder="Mot de passe" title="Préférez un mot de passe comportant majuscules, minuscules, chiffres et caractères spéciaux" required/><br>

          <br>
          <input type="submit" value="Valider"/>
          <input type="button" onClick="location.href = 'index.php';" value="Retour"/>
        </form>
      </p>
    </div>
    </div>
  </body>

  <?php
  }
  else{
    header('Location: backlogin.html');
  }
  ?>
</html>