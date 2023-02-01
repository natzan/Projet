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
        <h1>Modification Editeur</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier un éditeur<p>
    <form action="modifAutre/modifierEditeur2.php" method="POST"> 
      <select name="editeur" required>
              <option value=''>Choisir :</option>
              <?php
              $sql = 'SELECT * FROM editeur order by EDIT_NOM';
              $table = $connection->query($sql);
              while($ligne = $table->fetch()) {
                $nomEdit = $ligne['EDIT_NOM'];
                $numEdit = $ligne['EDIT_NUM'];
              	?>
              	<option name="editNom" value='<?php echo $numEdit ?>'><?php echo $nomEdit ?></option><br/>
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