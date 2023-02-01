<?php
//page de connexion du back office
require_once 'headerAndFooter.php';
//recupération de l'entete
get_header();
?>
<script src="resMPD.js"></script>
<form id="auth_form">
     <p>
         <label for="login"></label><input id="code" type="mail" name="login" value="" placeholder="Entrez le code reçue par mail"/> <br/>
         <button onclick="verifCode()">Valider</button>
         <br>
         <input type="reset" value="Annuler">
         <input type="reset" value="Accueil" onClick="location.href = 'index.php';">
    </p>
</form>

<?php
//récupération du pied de page
get_footer();
?>