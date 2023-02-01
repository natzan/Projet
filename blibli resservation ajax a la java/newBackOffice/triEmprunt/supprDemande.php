<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
        <link rel="stylesheet" type="text/css" href="../backstyle.css">
    </head>
    <body >
        <?php
        require '../../sqlconnect.php';
        //onload="location.href = '../reservationClient.php';"
        session_start();
        if (isset($_SESSION['CLIENT_ID'])) {
            if (isset($_POST['annuler'])) {
                $emp = $_POST['annuler'];
                $sql = $connection->prepare('SELECT LIV_ISBN FROM emprunter WHERE EMP_ID=?');
                $sql2 = $connection->prepare('SELECT NUM_ATTENTE FROM fileattente WHERE LIV_ISBN=? AND CLIENT_ID=?');
                $sql3 = $connection->prepare('DELETE FROM fileattente WHERE LIV_ISBN=? AND CLIENT_ID=?');
                $sql4 = $connection->prepare('UPDATE fileattente SET NUM_ATTENTE=NUM_ATTENTE-1 WHERE LIV_ISBN=? AND NUM_ATTENTE>?');
                foreach ($emp as $annuler => $ligne) {
                    $sql->bindParam(1, $ligne, PDO::PARAM_INT);
                    $sql->execute();
                    $resu = $sql->fetch();
                    $isbn = $resu['LIV_ISBN'];
                    $sql2->bindParam(1, $isbn, PDO::PARAM_STR);
                    $sql2->bindParam(2, $_SESSION['CLIENT_ID'], PDO::PARAM_INT);
                    $sql2->execute();
                    $resu = $sql2->fetch();
                    $rang = $resu['NUM_ATTENTE'];
                    $sql3->bindParam(1, $isbn, PDO::PARAM_STR);
                    $sql3->bindParam(2, $_SESSION['CLIENT_ID'], PDO::PARAM_INT);
                    $sql3->execute();
                    $sql4->bindParam(1, $isbn, PDO::PARAM_STR);
                    $sql4->bindParam(2, $rang, PDO::PARAM_INT);
                    $sql4->execute();
                }
                header('Location: ../reservationClient.php');
            } else {
                header('Location: ../reservationClient.php');
            }
            ?>
            <?php
        } else {
            header('Location: ../loginClient.php');
        }
        ?>
    </body>
</html>
