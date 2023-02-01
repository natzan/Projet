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
                <h1>Comptes Admin</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
            <div id="main_content">
                <button onClick="location.href = 'ajoutAdmin.php';" >Ajouter un compte admin</button>
                <button name="b_print" type="button" onclick="printdiv('divImpr');">Imprimer la liste comptes admin</button>
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
                    <?php
                    require '../sqlconnect.php';
                    $sql = "SELECT * FROM login";
                    $table = $connection->query($sql);
                    $count = $table->rowCount();
                    if ($count > 0) {
                        ?>
                        <form action="supprAdmin.php" method="post">
                            <div id="divImpr">
                                <table>
                                    <tr>
                                        <th>Identifiant</th>
                                        <th>Mot de passe</th>
                                        <th>Supprimer ?</th>

                                    </tr>
                                    <?php
                                    while ($ligne = $table->fetch()) {
                                        $idadmin = $ligne["LOGID"];
                                        $mdpadmin = $ligne["PWD"];
                                        ?>
                                        <tr>
                                            <td><?php echo $idadmin; ?></td>
                                            <td><?php echo $mdpadmin; ?></td>
                                            <td><input type="checkbox" name="suppr[]" value="<?php echo $idadmin ?>"></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </table>
                                </div>
                                <input type="submit" value="Supprimer"/>
                        </form>
                        <input type="button" onClick="location.href = 'modifAdmin.php';" value="Modifier"/>
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
