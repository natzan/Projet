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
        <h1>Modification Comptes Admin</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
         <?php
         $idadmin = $_GET["idadmin"];
         $sql = 'SELECT * FROM login WHERE LOGID = "'.$idadmin.'";';
         $table = $connection->query($sql);
         while ($ligne = $table->fetch()){
             $idadminmodif = $ligne["LOGID"];
             $mdpadmin = $ligne["PWD"];
         }
         $table->closeCursor();
         ?>
	<p>Modifier le compte <?php echo $idadmin; ?> : <p>
    <form action="modifAutre/modificationAdmin.php" method="get">
        <input type="hidden" name="logid" value="<?php echo $idadmin; ?>">
        <input name="logidmodif" placeholder="Login" value="<?php echo $idadminmodif ?>" type="text">
        <input name="pwd" placeholder="Mot de passe" value="<?php echo $mdpadmin ?>" type="text">
        <br/><input type="submit" value="Modifier"/>
    </form>

 <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
     </div>
</body>
</html>
