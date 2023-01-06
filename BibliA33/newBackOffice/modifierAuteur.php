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
        <h1>Modification Auteur</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier un auteur<p>
    <form action="modifAutre/modifierAut2.php" method="POST">
      <select name="aut" required>
              <option value=''>Choisir :</option>
              <?php
              $sql = 'SELECT * FROM auteur order by AUT_NOM, AUT_PRENOM ';
              $table = $connection->query($sql);
              while($ligne = $table->fetch()) {
                $nomAut = $ligne['AUT_NOM'];
                $prenomAut = $ligne['AUT_PRENOM'];
                $numAut = $ligne['AUT_NUM'];
              	?>
              	<option name="autNum" value='<?php echo $numAut ?>'><?php echo $nomAut." ".$prenomAut ?></option><br/>
              <?php }
              $table->closeCursor();
              ?>
    </select>
    <br/><input type="submit" value="Modifier"/>
    <button type="button" onclick="location.href = 'index.php';">Retour</button>
    </form>

 <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
</body>
</html>
