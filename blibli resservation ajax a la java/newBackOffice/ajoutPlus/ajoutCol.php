<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Back office</title>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="../jsbo.js"></script>
</head>
<body>
<?php
    session_start();
     //vérification de la session
    require '../getNav.php';
    setNav();
    if (isset($_SESSION['LOGID'])) {
    require '../../sqlconnect.php';
?>
    <div id="current_page">
      <h1>Ajout Collection:</h1>
    </div>
    <div id="main_content">
      <form action="ajoutColFinal.php" method="POST">
          <p>Ajouter une Collection<p>
          <select name="editeur" required>
              <option value=''>Choisir :</option>
              <?php
              $sql = 'SELECT EDIT_NOM,EDIT_NUM  FROM editeur';
              $table = $connection->query($sql);
              while($ligne = $table->fetch()) {
                $nomEdit = $ligne['EDIT_NOM'];
                $numEdit = $ligne['EDIT_NUM'];
              	?>
              	<option name="editNom" value='<?php echo $numEdit ?>'><?php echo $nomEdit?></option>
              <?php }
              $table->closeCursor();
              ?>
                          </select>
            <input type="text" name="colNom" value="" placeholder="Nom de la collection" required/><br/>
            <input type="submit" value="Valider"/>
            <input type="button" value="Retour" onClick="retour();"/>

        </form>
      </div>
      <?php
      }
      else{
        header('Location: login.php');
      }
      ?>
    </body>
</html>