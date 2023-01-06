<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Accès BackOffice</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<?php
    require_once 'getHead.php';
    setHead();
?>
<body>
<?php
    session_start();
    if (isset($_GET['client'])){
        $_SESSION['client']=$_GET['client'];
    }

     //vérification de la session
    require 'getNav.php';
    setNav();
    if (isset($_SESSION['LOGID'])) {
    require '../sqlconnect.php';
?>
    <div id="current_page">
        <h1>Modification Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier le mot de passe du client:<p>
                             <?php
              
              $sql = "SELECT * FROM client WHERE CLIENT_ID='".$_SESSION['client']."';";
                            $table = $connection->query($sql);
                            $ligne = $table->fetch();
                            
                                $clientmdp = $ligne["CLIENT_MDP"];
                                ?>
                            </form>
                        <form action="modifAutre/modificationMDP.php" method="GET">
                               <input type="hidden" name="client" value="<?php echo $_SESSION['client']; ?>"><br/>
                               <input name="clientmdp" value="<?php echo $clientmdp ;?>" type="text" placeholder="Mot de passe"><br/>
                             
        <input type="submit" value="Modifier"/>
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
