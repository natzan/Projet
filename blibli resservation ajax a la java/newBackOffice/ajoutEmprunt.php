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
            $sql2 = 'SELECT count(*) as nb_livre FROM livre ';
            $nb = $connection->query($sql2);
            ?>
            <div id="current_page">
                <h1>Ajout Emprunt</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID']; ?></h2>
            </div>
            <div id="main_content">
                <button id="emprunt" onClick="location.href = 'ajoutClient.php';">Nouveau client</button>
                <div id="etape1">
                    <p>
                    <form class="" action="ajouterEmprunt.php" method="post">
                        <p>Nouvelle réservation : </p>
                        <div id="ajoutempruntisbn">
                            <p>Titre du livre :</p>
                            <?php
                            $aff=$nb->fetch();
                                if ($aff['nb_livre'] >= 1) {
                                    ?>
                                    <select id="select_recherche" name="isbn">
                                        <?php
                                        require '../sqlconnect.php';
                                        $sql = 'SELECT *  FROM livre where Liv_emprunter = 0 order by LIV_TITRE ';
                                        $table = $connection->query($sql);


                                        while ($ligne = $table->fetch()) {

                                            $LIV_ISBN = $ligne['LIV_ISBN'];
                                            $LIV_TITRE = $ligne['LIV_TITRE'];
                                            ?>
                                            <option value='<?php echo $LIV_ISBN ?>'><?php echo $LIV_TITRE ?></option></br>

                                            <?php
                                        }
                                        $table->closeCursor();
                                    } else {
                                        ?>
                                        <p>Aucun livre disponible</p>
                                        <?php
                                    }
                                
                                ?>
                            </select>
                        </div>
                        </br></br>
                        <div id="ajoutempruntclient">
                            <p>Client :</p>
                            <select id="select_client" name="client">
                                <?php
                                require '../sqlconnect.php';
                                $sql = 'SELECT  CLIENT_ID, CLIENT_NOM, CLIENT_PRENOM, CLIENT_TEL  FROM client';
                                $table = $connection->query($sql);
                                while ($ligne = $table->fetch()) {
                                    $CLIENT_ID = $ligne['CLIENT_ID'];
                                    $CLIENT_NOM = $ligne['CLIENT_NOM'];
                                    $CLIENT_PRENOM = $ligne['CLIENT_PRENOM'];
                                    $CLIENT_TEL = $ligne['CLIENT_TEL'];
                                    ?>
                                    <option value='<?php echo $CLIENT_ID ?>'><?php echo $CLIENT_NOM . ' ' . $CLIENT_PRENOM; ?></option>
                                    <?php
                                }
                                $table->closeCursor();
                                ?>
                            </select><br>
                        </div>
                        <br>
                        <input type="submit" value="Valider"/>
                        <input type="button" onClick="location.href = 'emprunt.php';" value="Retour"/>
                    </form>
                    </p>
                </div>
            </div>
        </div>
    </body>

    <?php
    } else {
    header('Location: backlogin.html');
    }
    ?>
</html>

