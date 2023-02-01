<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body onload="verif();">
        <?php
        session_start();
        //vérification de la session
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            require '../sqlconnect.php';
            ?>
            <div id="current_page">
                <h1>Listes Livres non rendus</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <h2>Impression:</h2>
                <?php
                $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and EMP_ETAT = 0";
                $table = $connection->query($sql);
                $count = $table->rowCount();
                if ($count > 0) {
                    ?>
                    <div id="divImpr">  <!--Ce div permet de délimiter la zone d'impression pour les emprunts-->
                        <table>
                            <tr>
                                <th>Photo</th>
                                <th>Client</th>
                                <th>Client tel</th>
                                <th>N°ISBN</th>
                                <th>Titre</th>
                                <th>Date emprunt</th>
                                <th>Date retour max</th>
                            </tr>
                            <?php
                            while ($ligne = $table->fetch()) {
                                $LIV_ISBN = $ligne["LIV_ISBN"];
                                $CLIENT_NOM = $ligne["CLIENT_NOM"];
                                $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
                                $LIV_TITRE = $ligne["LIV_TITRE"];
                                $CLIENT_TEL = $ligne["CLIENT_TEL"];
                                $EMP_ID = $ligne["EMP_ID"];
                                $EMP_DATE = $ligne["EMP_DATE"];
                                $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
                                $CLIENT_IMG=$ligne['CLIENT_PHOTO'];
                                ?>
                                <tr>
                                    <td><a href="../images/client/<?php echo $CLIENT_IMG?>"><img src="../images/client/<?php echo $CLIENT_IMG?>" width="50px" height="50px"/></a></td>
                                    <td><?php echo $CLIENT_NOM . " " . $CLIENT_PRENOM; ?></td>
                                    <td><?php echo $CLIENT_TEL; ?></td>
                                    <td><?php echo $LIV_ISBN; ?></td>
                                    <td><?php echo $LIV_TITRE; ?></td>
                                    <td><?php echo $EMP_DATE; ?></td>
                                    <td><?php echo $EMP_DATE_R_MAX; ?></td>
                                   
                                </tr>
                                <?php
                            }
                            ?>
                        </table>
                    </div>
                    <?php
                }
                ?>
                <button name="b_print" type="button" onclick="printdiv('divImpr');">Imprimer</button>
                <button name="b_print" type="button" onclick="location.href = 'index.php';">Retour</button>
                <script>
                    function printdiv(divImpr) {
                        var headstr = "<html><head><title></title></head><body>";
                        var footstr = "</body>";
                        var newstr = document.all.item(divImpr).innerHTML;
                        var oldstr = document.body.innerHTML;
                        document.body.innerHTML = headstr + newstr + footstr;
                        window.print();
                        document.body.innerHTML = oldstr;
                        return false;
                    }
                </script>
                <?php
            } else {
                header('Location: login.php');
            }
            ?>
    </body>
</html>
