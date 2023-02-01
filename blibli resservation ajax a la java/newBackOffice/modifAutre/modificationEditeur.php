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
        $numEdit=($_POST["numEdit"]);
        $nomEdit=($_POST["nomModif"]);
        $webEdit=($_POST["webModif"]);
        $sql="UPDATE editeur SET EDIT_NOM='".$nomEdit."',EDIT_ADRWEB='".$webEdit."' WHERE EDIT_NUM = '".$numEdit."';";
        $connection->exec($sql);
        ?>
            <?php
        }
        else{
            header('Location: login.php');
        }
        ?>
</body>
</html>
