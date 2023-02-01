<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../style.css">
    </head>
    <body  onload="location.href = '../index.php';">
        <?php
        //onload="location.href = '../index.php';"
        session_start();
        #vérification de la session
        if (isset($_SESSION['LOGID'])) {
            require '../../sqlconnect.php';
            ?>
            <?php
            if(isset($_SESSION['nomImage'])){
               $sql=$connection->prepare("UPDATE livre SET LIV_IMG=? where  LIV_ISBN=?");
               $sql->bindParam(1,$_SESSION['nomImage'],PDO::PARAM_STR);
               $sql->bindParam(2,$_SESSION['isbn'],PDO::PARAM_STR);
               $sql->execute();
            }
            
            $auteur = $_POST["auteur"];
            $editeur = ($_POST["editeur"]);
            $titre = ($_POST["titre"]);
            $date = ($_POST["date"]);
            $col = ($_POST["col"]);
            $rubrique = $_POST["rubrique"];
            $etat = ($_POST["etat"]);
            $resume = ($_POST["resume"]);
            $suppr = 'Delete FROM correspondre where LIV_ISBN="' . $_SESSION['isbn'] . '"';
            $suppr2 = 'DELETE FROM ecrire where LIV_ISBN="' . $_SESSION['isbn'] . '"';
            $connection->exec($suppr);
            $connection->exec($suppr2);
            foreach ($auteur as $aut) {
                $sql2 = "INSERT INTO ecrire (AUT_NUM, LIV_ISBN) VALUES ('" . $aut . "', '" . $_SESSION['isbn'] . "');";
                $connection->exec($sql2);
            }
            foreach ($rubrique as $rub) {
                $sql3 = "INSERT INTO correspondre (RUB_ID, LIV_ISBN) VALUES ('" . $rub . "', '" . $_SESSION['isbn'] . "');";
                $connection->exec($sql3);
            }            
            $sql = "UPDATE livre SET LIV_TITRE='" . $titre . "',EDIT_NUM='" . $editeur . "',LIV_DATE='" . $date . "',COL_NUM='" . $col . "', LIV_ETAT='" . $etat . "', LIV_RESUME='" . $resume . "' WHERE LIV_ISBN = '" . $_SESSION['isbn'] . "';";
            $connection->exec($sql);
            unset($_SESSION['isbn']);
        } else {
            header('Location: login.php');
        }
        ?>
    </body>
</html>