<?php
//page de connexion du back office
require_once 'headerAndFooter.php';
//recupération de l'entete
get_header();
?>
<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
</script>
<script type="text/javascript">
   (function(){
      emailjs.init("wQFE1-UHFDUYRl5lP");
   })();
</script>
<script src="resMPD.js"></script>
<link href="css.css" rel="stylesheet">
     <p>
         <label for="login"></label><input id="mail" type="mail" name="login" value="" placeholder="E-mail"/> <br/>
         <img src="images/img/mail-download.gif" id="sending">
         <button onclick="reset()">Réinitialiser</button>
         <br>
         <div id="verif">
            <label for="login"></label><input id="code" type="mail" name="login" value="" placeholder="Entrez le code reçue par mail"/> <br/>
            <button onclick="verifCode()">Valider</button>
            <br>
         </div>
         <div id="newPass">
            <label for="login"></label><input id="pass1" type="mail" name="login" value="" placeholder="Entrez votre nouveau mot de passe"/>
            <label for="login"></label><input id="pass2" type="mail" name="login" value="" placeholder="Répétez votre nouveau mot de passe"/>
            <button onclick="changePass()">Changer</button>
            <br>
         </div>
         <input type="reset" value="Annuler">
         <input type="reset" value="Accueil" onClick="location.href = 'index.php';">
    </p>
<?php
//récupération du pied de page
get_footer();
?>