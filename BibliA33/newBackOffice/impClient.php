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
                <h1>Liste Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <h2>Impression : </h2>
                <?php
                $sql = "SELECT * FROM client";
                $table = $connection->query($sql);
                $count = $table->rowCount();
                if ($count > 0) {
                    ?>
                    <div id="divImpr">
                        <table>
                            <tr>
                                <th>Photo</th>
                                <th>Nom</th>
                                <th>Prénom</th>
                                <th>Téléphone</th>
                                <th>Adresse</th>
                                <th>Ville</th>
                            </tr>
                            <?php
                            while ($ligne = $table->fetch()) {
                                $nomclient = $ligne["CLIENT_NOM"];
                                $prenomclient = $ligne["CLIENT_PRENOM"];
                                $telclient = $ligne["CLIENT_TEL"];
                                $adrclient = $ligne["CLIENT_ADR"];
                                $villeclient = $ligne["CLIENT_VILLE"];
                                $photoclient = $ligne["CLIENT_PHOTO"];
                                ?>
                                <tr>
                                    <td><a href="../images/client/<?php echo $photoclient?>"><img src="../images/client/<?php echo $photoclient?>" width="50px" height="50px"/></a></td>
                                    <td><?php echo $nomclient; ?></td>
                                    <td><?php echo $prenomclient; ?></td>
                                    <td><?php echo $telclient; ?></td>
                                    <td><?php echo $adrclient; ?></td>
                                    <td><?php echo $villeclient; ?></td>
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
