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
        $idadmin=$_GET["logid"];
        $idadminmodif=$_GET["logidmodif"];
        $mdpadmin=md5($_GET["pwd"]);
        $sql="UPDATE login SET LOGID='".$idadminmodif."',PWD='".$mdpadmin."' WHERE LOGID= '".$idadmin."';";
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
