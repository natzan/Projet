<?php
function setNav() {
    ?>

    <nav>
        <ul id="menu">
            <li><a href="../newBackOffice/index.php">Index</a></li>
            <li id="livresOC">Livres</li>
            <li id="loginOC">Comptes</li>

            <li><a href="../newBackOffice/emprunt.php">Emprunt</a></li>
            <li><a href="../newBackOffice/deconnexion.php">Déconnexion</a></li>
        </ul>


        <ul id="login" style="display:none;">
            <li><a href="../newBackOffice/client.php">Comptes Client</a></li>
            <li><a href="../newBackOffice/admin.php">Comptes Admin</a></li>
             <li id="retour3">Retour</li>
        </ul>


        <ul id="crud_livres" style="display:none;">
            <li><a href="../newBackOffice/ajout.php">Ajout Livres</a></li>
            <li><a href="../newBackOffice/modifierLivre.php">Modification Livres</a></li>
            <li><a href="../newBackOffice/supprimer.php">Suppression Livres</a></li>
            <li id="retour2">Retour</li>
        </ul>

    </nav>
 <script>

       $("#loginOC").on('click', function () {
            $('#menu').css({'display':'none'});
            $('#login').css({'display' : 'block'});
            $('#crud_livres').css({'display' : 'none'});
            $('#modification_menu').css({'display' : 'none'});
        });

        $("#retour3").on('click', function () {
            $('#menu').css({'display':'block'});
            $('#login').css({'display' : 'none'});
            $('#crud_livres').css({'display' : 'none'});
            $('#modification_menu').css({'display' : 'none'});
        });

        $("#retour").on('click', function () {
            $('#crud_livres').css({'display':'block'});
            $('#modification_menu').css({'display' : 'none'});
        });

        $("#livresOC").on('click', function () {
            $('#menu').css({'display':'none'});
            $('#crud_livres').css({'display' : 'block'});
            $('#login').css({'display' : 'none'});
            $('#modification_menu').css({'display' : 'none'});

        });

        $("#retour2").on('click', function () {
            $('#menu').css({'display':'block'});
            $('#crud_livres').css({'display' : 'none'});
            $('#modification_menu').css({'display' : 'none'});
            $('#login').css({'display' : 'none'});
        });
    </script>
    <?php
}
?>
