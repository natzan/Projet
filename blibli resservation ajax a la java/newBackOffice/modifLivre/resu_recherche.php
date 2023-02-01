<?php
session_start();
require '../../sqlconnect.php';

if (isset($_GET["nomAuteur"])) {

    $nomAuteur = ($_GET["nomAuteur"]);
    $sql2 = 'SELECT * from livre, auteur, ecrire, editeur, collection '
            . 'where livre.LIV_ISBN=ecrire.LIV_ISBN '
            . 'and editeur.EDIT_NUM=livre.EDIT_NUM '
            . 'and livre.COL_NUM=collection.COL_NUM '
            . 'and auteur.AUT_NUM=ecrire.AUT_NUM '
            . 'and auteur.AUT_NUM=' . $nomAuteur . '';

    $table = $connection->query($sql2);
    $count = $table->rowCount();
    if ($count > 0) {
        ?>
        <form class="" action="modifLivre/modifier2.php" method="post">
            <table>
                <tr>
                    <th>Couverture</th>
                    <th>Titre</th>
                    <th>N° ISBN</th>
                    <th>Editeur</th>
                    <th>Collection</th>
                    <th>Rubrique(s)</th>
                    <th>Date</th>
                    <th>Livre a modifier</th>
                </tr>
                <?php
                while ($ligne = $table->fetch()) {
                    $sql = 'select * from rubriques, correspondre '
                            . 'where correspondre.RUB_ID=rubriques.RUB_ID '
                            . 'and correspondre.LIV_ISBN="' . $ligne["LIV_ISBN"] . '"';
                    $table2 = $connection->query($sql);
                    ?>
                    <tr>
                        <td><a href="../images/livre/<?php echo $ligne['LIV_IMG'] ?>"><img src="../images/livre/<?php echo $ligne['LIV_IMG'] ?>" width="50px" height="50px"/></a></td>
                        <td><?php echo $ligne["LIV_TITRE"]; ?></td>
                        <td><?php echo $ligne["LIV_ISBN"]; ?></td>
                        <td><?php echo $ligne["EDIT_NOM"]; ?></td>
                        <td><?php echo $ligne["COL_NOM"]; ?></td>
                        <td><?php
                            while ($donnee = $table2->fetch()) {
                                echo $donnee['RUB_NOM'] . '<br>';
                            }
                            ?></td>
                        <td><?php echo $ligne["LIV_DATE"]; ?></td>
                        <td><input type="radio" name="modif" value="<?php echo $ligne["LIV_ISBN"] ?>"></td>
                    </tr>
                    <?php
                }
                ?>
            </table>
            <input type="submit" value="Modifier">
        </form>
        <?php
    } else {
        echo "Cet auteur n'a aucun livre dans notre bibliothèque.";
    }
} elseif (isset($_GET["motclef"])) {
    $motclef = $_GET["motclef"];

    $sql = "SELECT *  FROM livre, collection, editeur "
            . "WHERE livre.EDIT_NUM = editeur.EDIT_NUM "
            . "and livre.COL_NUM = collection.COL_NUM "
            . "and livre.LIV_TITRE LIKE '%$motclef%'";
var_dump($sql);
    $table = $connection->query($sql);
    $count = $table->rowCount();
    if ($count > 0) {
        ?>
        <form class="" action="modifLivre/modifier2.php" method="post">
            <table>
                <tr>
                    <th>Couverture</th>
                    <th>Titre</th>
                    <th>N° ISBN</th>
                    <th>Auteur</th>
                    <th>Editeur</th>
                    <th>Collection</th>
                    <th>Rubrique(s)</th>
                    <th>Date</th>
                    <th>Livre a modifier</th>
                </tr>
                <?php
                while ($ligne = $table->fetch()) {
                    $sql2 = 'select * from rubriques, correspondre '
                            . 'where correspondre.RUB_ID=rubriques.RUB_ID '
                            . 'and correspondre.LIV_ISBN="' . $ligne["LIV_ISBN"] . '"';
                    $table2 = $connection->query($sql2);
                    $sql3 = 'select * from ecrire, auteur '
                            . 'where auteur.AUT_NUM=ecrire.AUT_NUM '
                            . 'and ecrire.LIV_ISBN="' . $ligne['LIV_ISBN'] . '"';
                    $table3 = $connection->query($sql3);
                    ?>
                    <tr>
                        <td><a href="../images/livre/<?php echo $ligne['LIV_IMG'] ?>"><img src="../images/livre/<?php echo $ligne['LIV_IMG'] ?>" width="50px" height="50px"/></a></td>
                        <td><?php echo $ligne["LIV_TITRE"]; ?></td>
                        <td><?php echo $ligne["LIV_ISBN"]; ?></td>
                        <td><?php
                            while ($donnee = $table3->fetch()) {
                                echo $donnee['AUT_PRENOM'] . ' ' . $donnee['AUT_NOM'] . '<br>';
                            }
                            ?></td>
                        <td><?php echo $ligne["EDIT_NOM"]; ?></td>
                        <td><?php echo $ligne["COL_NOM"]; ?></td>
                        <td><?php
                            while ($donnee = $table2->fetch()) {
                                echo $donnee['RUB_NOM'] . '<br>';
                            }
                            ?></td>
                        <td><?php echo $ligne["LIV_DATE"]; ?></td>
                        <td><input type="radio" name="modif" value="<?php echo $ligne["LIV_ISBN"] ?>"></td>
                    </tr>
                    <?php
                }
                ?>
            </table>
            <input type="submit" value="Modifier">
        </form>
        <?php
    } else {
        echo "Aucun livre ne correspond a votre recherche.";
    }
} elseif (isset($_GET["isbn"])) {
    $_SESSION['isbn'] = $_GET["isbn"];

    $sql2 = 'SELECT DISTinct * from livre, editeur, collection '
            . 'where editeur.EDIT_NUM=livre.EDIT_NUM '
            . 'and livre.COL_NUM=collection.COL_NUM '
            . 'and livre.LIV_ISBN="' . $_SESSION['isbn'] . '"';
    $table = $connection->query($sql2);
    $count = $table->rowCount();
    if ($count > 0) {
        ?>
        <form class="" action="modifLivre/modifier2.php" method="post">
            <table>
                <tr>
                    <th>Couverture</th>
                    <th>Titre</th>
                    <th>N° ISBN</th>
                    <th>Auteur</th>
                    <th>Editeur</th>
                    <th>Collection</th>
                    <th>Rubrique(s)</th>
                    <th>Date</th>
                </tr>
                <?php
                $ligne = $table->fetch();
                ?>
                <tr>
                    <td><a href="../images/livre/<?php echo $ligne['LIV_IMG']; ?>"><img src="../images/livre/<?php echo $ligne['LIV_IMG']; ?>" width="50px" height="50px"/></a></td>
                    <td><?php echo $ligne["LIV_TITRE"]; ?></td>
                    <td><?php echo $ligne["LIV_ISBN"]; ?></td>
                    <td><?php
                        $sql = 'select * from ecrire, auteur '
                                . 'where auteur.AUT_NUM=ecrire.AUT_NUM '
                                . 'and ecrire.LIV_ISBN="' . $_SESSION['isbn'] . '"';
                        $table = $connection->query($sql);
                        while ($donnee = $table->fetch()) {
                            echo $donnee['AUT_PRENOM'] . ' ' . $donnee['AUT_NOM'] . '<br>';
                        }
                        ?></td>
                    <td><?php echo $ligne["EDIT_NOM"]; ?></td>
                    <td><?php echo $ligne["COL_NOM"]; ?></td>
                    <td><?php
                        $sql = 'select * from rubriques, correspondre '
                                . 'where correspondre.RUB_ID=rubriques.RUB_ID '
                                . 'and correspondre.LIV_ISBN="' . $_SESSION['isbn'] . '"';
                        $table = $connection->query($sql);
                        while ($donnee = $table->fetch()) {
                            echo $donnee['RUB_NOM'] . '<br>';
                        }
                        ?></td>
                    <td><?php echo $ligne["LIV_DATE"]; ?></td>
                </tr>
            </table>
            <input type="submit" value="Modifier">
        </form>
        <?php
    } else {
        echo "Aucun livre ne correspond a votre recherche.";
    }
} elseif (isset($_GET['titre'])) {
    $titre = $_GET['titre'];

    $sql2 = 'SELECT DISTinct * from livre, editeur, collection '
            . 'where editeur.EDIT_NUM=livre.EDIT_NUM '
            . 'and livre.COL_NUM=collection.COL_NUM '
            . 'and livre.LIV_TITRE="' . $titre . '"';
    $table = $connection->query($sql2);
    $count = $table->rowCount();
    if ($count > 0) {
        ?>
        <form class="" action="modifLivre/modifier2.php" method="post">
            <table>
                <tr>
                    <th>Couverture</th>
                    <th>Titre</th>
                    <th>N° ISBN</th>
                    <th>Auteur</th>
                    <th>Editeur</th>
                    <th>Collection</th>
                    <th>Rubrique(s)</th>
                    <th>Date</th>
                </tr>
                <?php
                $ligne = $table->fetch();
                $_SESSION['isbn']=$ligne['LIV_ISBN'];
                ?>
                <tr>
                    <td><a href="../images/livre/<?php echo $ligne['LIV_IMG'] ?>"><img src="../images/livre/<?php echo $ligne['LIV_IMG'] ?>" width="50px" height="50px"/></a></td>  
                    <td><?php echo $ligne["LIV_TITRE"]; ?></td>
                    <td><?php echo $ligne["LIV_ISBN"]; ?></td>
                    <td><?php
                        $sql = 'select * from ecrire, auteur '
                                . 'where auteur.AUT_NUM=ecrire.AUT_NUM '
                                . 'and ecrire.LIV_ISBN="' . $ligne['LIV_ISBN'] . '"';
                        $table = $connection->query($sql);
                        while ($donnee = $table->fetch()) {
                            echo $donnee['AUT_PRENOM'] . ' ' . $donnee['AUT_NOM'] . '<br>';
                        }
                        ?></td>
                    <td><?php echo $ligne["EDIT_NOM"]; ?></td>
                    <td><?php echo $ligne["COL_NOM"]; ?></td>
                    <td><?php
                        $sql = 'select * from rubriques, correspondre '
                                . 'where correspondre.RUB_ID=rubriques.RUB_ID'
                                . ' and correspondre.LIV_ISBN="' . $ligne["LIV_ISBN"] . '"';
                        $table2 = $connection->query($sql);
                        while ($donnee = $table2->fetch()) {
                            echo $donnee['RUB_NOM'] . '<br>';
                        }
                        ?></td>
                    <td><?php echo $ligne["LIV_DATE"]; ?></td>
                </tr>
            </table>
            <input type="submit" value="Modifier">
        </form>
        <?php
    } else {
        echo "Aucun livre ne correspond a votre recherche.";
    }
}
?>
