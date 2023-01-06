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
        <h1>Modification:</h1>
    </div>
     <div id="main_content">
			<p>Modifier un client<p>
    
    
     
              <?php
              $client = $_GET["client"];
              $sql = "SELECT * FROM client WHERE CLIENT_ID='".$client."';";
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $clientid1 = $ligne["CLIENT_ID"];
                                $clientnom=$ligne["CLIENT_NOM"];
                                $clientprenom=$ligne["CLIENT_PRENOM"];                                                         
                                $clienttel = $ligne["CLIENT_TEL"];
                                $clientadr = $ligne["CLIENT_ADR"];
                                $clientville = $ligne["CLIENT_VILLE"];
                                $clientcp = $ligne["CLIENT_CP"];
                                $clientmail = $ligne["CLIENT_MAIL"];
                                ?>
                        <form action="modifAutre/modificationClient.php" method="GET">
                               <input type="hidden" name="client" value="<?php echo $client; ?>"><br/>
                               <input name="clientnom" value="<?php echo $clientnom; ?>" type="text" placeholder="Nom"><br/>
                               <input name="clientprenom" value="<?php echo $clientprenom ;?>" type="text" placeholder="Prénom"><br/>
                               <input name="clienttel" value="<?php echo $clienttel ;?>" type="text" placeholder="Tel" pattern="^[0-9]{10}" title="le numéro de téléphone doit ressembler à: 06XXXXXX45" required><br/>
                               <input name="clientadr" value="<?php echo $clientadr; ?>" type="text" placeholder="Adresse"><br/>
                               <input name="clientville" value="<?php echo $clientville ;?>" type="text" placeholder="Ville"><br/>
                               <input name="clientcp" value="<?php echo $clientcp ;?>" type="text" placeholder="Code postal"><br/>
                               <input name="clientmail" value="<?php echo $clientmail ;?>" type="text" placeholder="Adresse mail"><br/>
                              
                               
        <br/>
        <input type="submit" value="Modifier"/>
        </form>
    
                                <?php }
              $table->closeCursor();
              ?>
   
  
    
     </div>

 <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
</body>
</html>