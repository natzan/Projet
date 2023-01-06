<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body>
        <?php
        session_start();
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            # code..
            ?>
            <div id="current_page">
                <h1>Ajout Compte Admin</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <div id="etape1">
                    <p>
                    <form>
                        <h1>Ajout compte admin</h1>
                        <?php
                        $idadmin = ($_POST["idadmin"]);
                        $mdpadmin =  md5(($_POST["mdpadmin"]));

                        require '../sqlconnect.php';

                        $sql = "INSERT INTO login (LOGID, PWD) VALUES ('" . $idadmin . "', '" . $mdpadmin . "');";
                        $connection->exec($sql);

                        echo "Compte admin ajouté.";
                        ?>
                        <br/>
                        <br/>
                        <input type="button" onClick="location.href = 'admin.php';" value="Retour"/>
                    </form>
                    </p>
                </div>
            </div>
            <?php
        } else {
            header('Location: backlogin.html');
        }
        ?>

    </body>
</html>
