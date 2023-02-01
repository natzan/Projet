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
        <h1>Modification Collection</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier une collection<p>
    <form action="modifAutre/modifierColl2.php" method="POST"> 
      <select name="coll" required>
              <option value=''>Choisir :</option>
              <?php
              $sql = 'SELECT * FROM collection order by COL_NOM';
              $table = $connection->query($sql);
              while($ligne = $table->fetch()) {
                $nomColl = $ligne['COL_NOM'];
                $numColl = $ligne['COL_NUM'];
              	?>
              	<option name="collNum" value='<?php echo $numColl ?>'><?php echo $nomColl?></option><br/>
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