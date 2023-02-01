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
        <h1>Modification Rubrique</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier une rubrique<p>
    <form action="modifAutre/modifierRubrique2.php" method="POST"> 
      <select name="rubrique" required>
              <option value=''>Choisir :</option>
              <?php
              $sql = 'SELECT * FROM rubriques order by RUB_NOM';
              $table = $connection->query($sql);
              while($ligne = $table->fetch()) {
                $rubID = $ligne['RUB_ID'];
                $rubNom = $ligne['RUB_NOM'];
              	?>
              	<option name="rubNom" value='<?php echo $rubID ?>'><?php echo $rubNom ?></option><br/>
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