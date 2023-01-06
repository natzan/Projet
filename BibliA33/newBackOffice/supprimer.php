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
                <h1>Suppression Livres</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID']; ?></h2>
            </div>
            <div id="main_content">
                <p>Supprimer un livre<p>
                <div id="etape1">
                    <p>
                        Rechercher de livre :
                        <select id="liste">
                            <option value="#" selected="selected">Choisir :</option>
                            <option value="motclef">Mot-Clef</option>
                            <option value="titre">Titre</option>
                            <option value="isbn">Numéro ISBN</option>
                            <option value="auteur">Auteur</option>
                        </select><br/>
                    </p>

                    <div id="etape2"></div>
                </div>
                <script>
                    var liste = document.getElementById('liste');
                    liste.addEventListener('change', function () {

                        if (liste.options[liste.selectedIndex].value == "auteur") {
                            $.ajax({url: "rechercheSuppr/recherche_par_auteur.php", success: function (result) {
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "titre") {
                            $.ajax({url: "rechercheSuppr/recherche_par_titre.php", success: function (result) {
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "motclef") {
                            $.ajax({url: "rechercheSuppr/recherche_par_motclef.php", success: function (result) {
                                    $("#etape2").html(result);
                                }});
                        } else if (liste.options[liste.selectedIndex].value == "isbn") {
                            $.ajax({url: "rechercheSuppr/recherche_par_isbn.php", success: function (result) {
                                    $("#etape2").html(result);
                                }});
                        } else {
                            $('#etape2').empty();
                        }
                    });
                </script>
                <?php
            } else {
                header('Location: login.php');
            }
            ?>
        </div>
    </body>
</html>
