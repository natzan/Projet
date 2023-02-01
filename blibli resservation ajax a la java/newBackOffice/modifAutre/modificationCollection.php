<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../style.css">
    </head>
    <body onload="location.href = '../index.php';">
        <?php
        session_start();
        #vérification de la session
        if (isset($_SESSION['LOGID'])) {
            require '../sqlconnect.php';
            ?>
            <?php
            $numColl = ($_POST["numCol"]);
            $nomColl = ($_POST["nomModif"]);
            $editeur = ($_POST["editeur"]);
            $sql = "UPDATE collection SET COL_NOM='" . $nomColl . "',EDIT_NUM='" . $editeur . "' WHERE COL_NUM = '" . $numColl . "';";
            $connection->exec($sql);
            ?>
            <?php
        } else {
            header('Location: login.php');
        }
        ?>
    </body>
</html>
