<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body onload="verif();">
        <?php
//        session_start();
        //vérification de la session
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            require '../sqlconnect.php';
            ?>
            <div id="current_page">
                <h1>Emprunt</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID']; ?></h2>
            </div>
            <div id="main_content">
                <div id="fullEmprunt">
                    <h2>Liste des emprunts en cours : </h2>
                    <?php
                    require '../sqlconnect.php';
                    $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and EMP_ETAT = 0 ";
                    $table = $connection->query($sql);
                    $count = $table->rowCount();
                    if ($count > 0) {
                        ?>
                        <form class="" action="triEmprunt/emprunter.php" method="post">
                            <!--startprint-->
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
                                        <th>Rendre ?</th>
                                    </tr>
                                    <?php
                                    while ($ligne = $table->fetch()) {
                                        $CLIENT_IMG = $ligne['LIV_IMG'];
                                        $LIV_ISBN = $ligne["LIV_ISBN"];
                                        $CLIENT_NOM = $ligne["CLIENT_NOM"];
                                        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
                                        $LIV_TITRE = $ligne["LIV_TITRE"];
                                        $CLIENT_TEL = $ligne["CLIENT_TEL"];
                                        $EMP_ID = $ligne["EMP_ID"];
                                        $EMP_DATE = $ligne["EMP_DATE"];
                                        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
                                        /* if ($ligne["EMP_ETAT"] == 1) {
                                          $EMP_ETAT = "Rendu";
                                          } elseif ($ligne["EMP_ETAT"] == 0) {
                                          $EMP_ETAT = 'Non-rendu';
                                          } */
                                        ?>
                                        <tr>
                                            <td><a href="../images/livre/<?php echo $CLIENT_IMG ?>"><img src="../images/livre/<?php echo $CLIENT_IMG ?>" width="50px" height="50px"/></a></td>
                                            <td><?php echo $CLIENT_NOM . " " . $CLIENT_PRENOM; ?></td>
                                            <td><?php echo $CLIENT_TEL; ?></td>
                                            <td><?php echo $LIV_ISBN; ?></td>
                                            <td><?php echo $LIV_TITRE; ?></td>
                                            <td><?php echo $EMP_DATE; ?></td>
                                            <td><?php echo $EMP_DATE_R_MAX; ?></td>
                                            <td><input type="checkbox" name="rendre[]" value="<?php echo $EMP_ID ?>"></td>
                                        </tr>
                                        <?php
                                    }
                                    ?>
                                </table>
                            </div>
                            <!--endprint-->
                            <input type="submit" value="Rendre">
                        </form>
                        <?php
                    } else {
                        echo "Aucun emprunt en cours.";
                        ?></br><?php
                    }
                    ?>
                    <button onClick="location.href = 'ajoutEmprunt.php';" >Ajouter un emprunt</button>
                </div>

                <script>
                    var liste = document.getElementById('liste');
                    liste.addEventListener('change', function () {

                        if (liste.options[liste.selectedIndex].value == "motclef") {
                            $.ajax({url: "trieEmprunt/recherche_par_motclef.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "titre") {
                            $.ajax({url: "trieEmprunt/recherche_par_titre.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "isbn") {
                            $.ajax({url: "trieEmprunt/recherche_par_isbn.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "dateEmp") {
                            $.ajax({url: "trieEmprunt/recherche_par_date_emprunt.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "DateEmpRetMax") {
                            $.ajax({url: "trieEmprunt/recherche_par_date_retour_max.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "client") {
                            $.ajax({url: "trieEmprunt/recherche_par_client.php", success: function (result) {
                                    $('#fullEmprunt').empty();
                                    $("#etape2").html(result);
                                }});
                        } else {
                            $('#etape2').empty();
                        }
                    });
                </script>

                <?php
            } else {
//                header('Location: backlogin.html');
					?><script>alert("Erreur: Nom d'utilisateur ou mot de passe incorrect.");
            window.location.href = "backlogin.html";
	</script><?php
            }
            ?>
        </div>
    </body>
</html>
