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
                <h1>Modification Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <h3>Modifier un client</h3>
                <div id="etape1">
                    <p>
                    <form action="modifierClient.php" methode="get">
                        <p>Compte à modifier :</p>
                        <select id="select_client" name="client">
                            <?php
                            require '../sqlconnect.php';
                            $sql = "SELECT * FROM client";
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $clientid = $ligne["CLIENT_ID"];
                                $clientnom = $ligne["CLIENT_NOM"];
                                $clientprenom = $ligne["CLIENT_PRENOM"];                             
                                $clienttel = $ligne["CLIENT_TEL"];
                                $clientadr = $ligne["CLIENT_ADR"];
                                $clientville = $ligne["CLIENT_VILLE"];
                                $clientcp = $ligne["CLIENT_CP"];
                                $clientmail = $ligne["CLIENT_MAIL"];
                                ?>
                                <option value='<?php echo $clientid; ?>'><?php echo $clientnom,"  ",$clientprenom,"  ",$clienttel,"  ",$clientadr,"  ",$clientville,"  ",$clientcp,"  ",$clientmail; ?></option>
                                <?php
                            }
                            $table->closeCursor();
                            ?>
                        </select><br/>
                        <input type="submit" value="Modifier"/>
                        <input type="button" onClick="location.href = 'client.php';" value="Retour"/>
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
