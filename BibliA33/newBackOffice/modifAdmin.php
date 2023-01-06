<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body>
        <?php
        session_start();
        //vérification de la session
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            require '../sqlconnect.php';
            ?>
            <div id="current_page">
                <h1>Modification Comptes Admin</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <h3>Modifier un compte admin</h3>
                <div id="etape1">
                    <p>
                    <form action="modifierAdmin.php" methode="get">
                        <p>Compte à modifier :</p>
                        <select id="select_admin" name="idadmin">
                            <?php
                            require '../sqlconnect.php';
                            $sql = "SELECT * FROM login";
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $idadmin = $ligne["LOGID"];
                                $mdpadmin = $ligne["PWD"];
                                ?>
                                <option value='<?php echo $idadmin; ?>'><?php echo $idadmin; ?></option>
                                <?php
                            }
                            $table->closeCursor();
                            ?>
                        </select><br/>
                        <input type="submit" value="Modifier"/>
                        <input type="button" onClick="location.href = 'admin.php';" value="Retour"/>
                    </form>
                    </p>
                </div>
                <?php
            } else {
                header('Location: login.php');
            }
            ?>
        </div>
    </body>
</html>
