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
        <h1>Modification Rubrique</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
    <div id="main_content">
        <?php
        $rubID = $_POST["rubrique"];
        $sql = 'SELECT *  FROM rubriques WHERE RUB_ID = "'.$rubID.'"';
        $table = $connection->query($sql);
        while ($ligne = $table->fetch()) {
            $nomRub = $ligne['RUB_NOM'];
            $idRub = $ligne['RUB_ID'];
        }
        $table->closeCursor();
        ?>
        <h1>Modifier <?php echo $nomRub ?> : </h1>
         <form action="modificationRubrique.php" method="POST">
            <input type="hidden" name="idRub" value="<?php echo $idRub ?>">
            <input name="nomModif" value="<?php echo $nomRub ?>" type="text">
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
