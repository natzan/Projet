<?php
require_once 'headerAndFooter.php';
//recupération de l'entete
get_header();
?>
<div id="index">
    <div id="index2">
        <div id="imgAdmin">
            <!-- Bouton pour l'accès au backoffice, réservé aux administrateurs -->
            <button id="connexionadmin" type="button" onClick="location.href = 'back-office.php';"/>Connexion admin</button></br>
        <!-- Bouton pour l'accès aux comptes clients -->
         <button id="connexionclient" type="button" onClick="location.href = 'connexionClient.php';"/>Connexion client</button>
        </div>
        <h1>Recherche de livres</h1>
        <div id="etape1">
            <p>
                Rechercher un livre en fonction de son/sa :
                <!--select permettant de choisir le type de recherche-->
                <select id="liste">
                    <option value="#" selected="selected">Choisir :</option>
                    <option value="motclef">Mot-Clef</option>
                    <option value="titre">Titre</option>
                    <option value="isbn">Numéro ISBN</option>
                    <option value="auteur">Auteur</option>
                    <option value="editeur">Editeur</option>
                    <option value="collection">Collection</option>
                    <option value="rubriques">Rubriques</option>
                </select><br/>
            </p>
        </div>
        <div id="etape2">
            <!--div contenant le tableau de résultat de la recherche-->
        </div>
        <script>
            //script pour la recherche selon le critère
        var liste = document.getElementById('liste');
        liste.addEventListener('change', function() {

            if(liste.options[liste.selectedIndex].value == "auteur"){ //si l'option est auteur
                $.ajax({url: "rechercheLivre/recherche_par_auteur.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "titre"){ //si l'option est titre
                $.ajax({url: "rechercheLivre/recherche_par_titre.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "motclef"){ // si l'option est motclef
                $.ajax({url: "rechercheLivre/recherche_par_motclef.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "isbn"){ // si l'option est ISBN
                $.ajax({url: "rechercheLivre/recherche_par_isbn.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "editeur"){ // si l'option est editeur
                $.ajax({url: "rechercheLivre/recherche_par_editeur.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "collection"){ //si l'option est collection
                $.ajax({url: "rechercheLivre/recherche_par_collection.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else if(liste.options[liste.selectedIndex].value == "rubriques"){ //si l'option est rubriques
                $.ajax({url: "rechercheLivre/recherche_par_rubriques.php", success: function(result){
                    $("#etape2").html(result);
                }});
            }
            else{ //si rien n'a été choisi
                $('#etape2').empty();
            }
        });
        </script>
    </div>
</div>
<br/>
<?php
//récupération du pied de page
get_footer();
?>
