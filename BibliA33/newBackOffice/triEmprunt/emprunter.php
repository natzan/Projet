<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../backstyle.css">
    </head>
    <body onload="location.href = '../emprunt.php';">
        <?php
        session_start();
        //
        #vérification de la session
        if (isset($_SESSION['LOGID'])) {
            require '../../sqlconnect.php';
            $i = 0;
            $datetoday = date("Y-m-d");
            $dateRMax = date('Y-m-d', strtotime("+30 days"));
            if (isset($_POST['rendre'])) {
                foreach ($_POST['rendre'] as $valeur) {
                    $sql=$connection->prepare('SELECT LIV_ISBN FROM emprunter WHERE EMP_ID=?');
                    $sql->bindParam(1,$valeur,PDO::PARAM_STR);
                    $sql->execute();
                    $res=$sql->fetch();
                    $isbn=$res['LIV_ISBN'];
                    $sql=$connection->prepare("SELECT * FROM fileattente WHERE LIV_ISBN=?");
                    $sql->bindParam(1,$isbn,PDO::PARAM_STR);
                    $sql->execute();
                    $resu=$sql->fetchAll();
                    $nb=count($resu);
                    $sql=$connection->prepare('DELETE FROM fileattente WHERE LIV_ISBN=? AND NUM_ATTENTE=0');
                    $sql->bindParam(1,$isbn,PDO::PARAM_STR);
                    $sql->execute();                    
                    $sql = "UPDATE emprunter SET EMP_ETAT = '1', EMP_DATE_R_REEL = '" . $datetoday . "' WHERE EMP_ID = '" . $valeur . "';";
                    $connection->exec($sql);
                    if($nb>1){
                        $sql=$connection->prepare('UPDATE fileattente SET NUM_ATTENTE=NUM_ATTENTE-1 WHERE LIV_ISBN=?');
                        $sql->bindParam(1,$isbn,PDO::PARAM_STR);
                        $sql->execute();
                        $sql=$connection->prepare('SELECT CLIENT_ID FROM fileattente WHERE NUM_ATTENTE=0 AND LIV_ISBN=?');
                        $sql->bindParam(1,$isbn,PDO::PARAM_STR);
                        $sql->execute();
                        $resu=$sql->fetch();
                        $cliId=$resu['CLIENT_ID'];
                        $sql = "INSERT INTO emprunter (LIV_ISBN, CLIENT_ID, EMP_ID, EMP_DATE, EMP_ETAT, EMP_DATE_R_MAX, EMP_DATE_R_REEL) VALUES ('" . $isbn . "', '" . $cliId . "', default , '" . $datetoday . "', '0', '" . $dateRMax . "', NULL);";
                        $connection->exec($sql);
                    }
                    else{                        
                        $sql = "UPDATE livre set LIV_EMPRUNTER=0 where LIV_ISBN='". $isbn . "')";
                        $connection->exec($sql);
                    }
                }
            }
        } else {
            header('Location: ../backlogin.html');
        }
        ?>
    </body>
</html>
