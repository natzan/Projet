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
        <h1>Modification Editeur</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
    <div id="main_content">
        <?php
        $numEdit = ($_POST["editeur"]);
        $sql = 'SELECT *  FROM editeur WHERE EDIT_NUM = "'.$numEdit.'"';
        $table = $connection->query($sql);
        while ($ligne = $table->fetch()) {
            $nomEdit = $ligne['EDIT_NOM'];
            $numEdit = $ligne['EDIT_NUM'];
            $webEdit = $ligne['EDIT_ADRWEB'];            
        }
        $table->closeCursor();
        ?>
        <h1>Modifier <?php echo $nomEdit ?>:</h1>
         <form action="modificationEditeur.php" method="POST">
            <input type="hidden" name="numEdit" value="<?php echo $numEdit ?>">
            <input name="nomModif" value="<?php echo $nomEdit ?>" type="text">
            <input name="webModif" value="<?php echo $webEdit ?>" type="text" pattern="(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})" title="Donner une URL valide"><br/>
            <input type="submit" value="Valider"/>
        </form>
        <br/>
            <?php
        }
        else{
            header('Location: login.php');
        }
        ?>
    </div>
    </body>
</html>
