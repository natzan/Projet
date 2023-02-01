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
                <h1>Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <button onClick="location.href = 'ajoutClient.php';" >Ajouter un client</button>
                <button name="b_print" type="button" onclick="printdiv('divImpr');">Imprimer la liste comptes client</button>
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
                <div id="etape1">
                    <form action ="suppClient.php" method="post">
                    <?php
                    require '../sqlconnect.php';
                    $sql = "SELECT * FROM client";
                    $table = $connection->query($sql);
                    $count = $table->rowCount();
                    if ($count > 0) {
                        ?>
                          <div id="divImpr">
                            <table>
                                <tr>
                                    <th>Photo</th>
                                    <th>Nom Client</th>
                                    <th>Prénom Client</th>
                                    <th>Tel Client</th>
                                    <th>Adresse Client</th>
                                    <th>Ville Client</th>
                                    <th>Code Postal</th>
                                    <th>Adresse Mail</th>
                                    <th>Supprimer?</th>
                                </tr>
                                <?php
                                while ($ligne = $table->fetch()) {
                                    $CLIENTID = $ligne["CLIENT_ID"];
                                    $CLIENTNOM = $ligne["CLIENT_NOM"];
                                    $CLIENTPRENOM = $ligne["CLIENT_PRENOM"];
                                    $CLIENTTEL = $ligne["CLIENT_TEL"];
                                    $CLIENTADR = $ligne["CLIENT_ADR"];
                                    $CLIENTVILLE = $ligne["CLIENT_VILLE"];
                                    $CLIENTCP = $ligne["CLIENT_CP"];
                                    $CLIENTMAIL = $ligne["CLIENT_MAIL"];
                                    $CLIENTMDP = $ligne["CLIENT_MDP"];
                                    $CLIENT_IMG=$ligne['CLIENT_PHOTO'];

                                    ?>
                                    <tr>
                                        <td><a href="../images/client/<?php echo $CLIENT_IMG?>"><img src="../images/client/<?php echo $CLIENT_IMG?>" width="50px" height="50px"/></a></td>
                                        <td><?php echo $CLIENTNOM; ?></td>
                                        <td><?php echo $CLIENTPRENOM; ?></td>
                                        <td><?php echo $CLIENTTEL; ?></td>
                                        <td><?php echo $CLIENTADR; ?></td>
                                        <td><?php echo $CLIENTVILLE; ?></td>
                                        <td><?php echo $CLIENTCP; ?></td>
                                        <td><?php echo $CLIENTMAIL; ?></td>
                                        <td><input type="checkbox"  id="supprClient" name="supprClient[]" value="<?php echo $CLIENTID ?>"></td>

                                    </tr>
                                    <?php
                                }
                                ?>
                            </table>
                          </div>
                            <input type="submit"  value="Supprimer">
                            </form>
                            <input type="submit" onClick="location.href = 'modifClient.php';" value="Modifier">
                </div>
                        <?php
                        }
                        ?>
    <?php
} else {
    header('Location: backlogin.html');
}
?>
        </div>
    </body>
</html>
