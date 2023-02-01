<?php

session_start();
$login=($_POST["login"]);
$pwd=md5(($_POST["pwd"]));


// var_dump($_SESSION);
require '../sqlconnect.php';
$sql = "SELECT *  FROM login WHERE LOGID =  '".$login."' AND PWD = '".$pwd."'";
$table = $connection->query($sql);
$count=$table->rowCount();
if ($count > 0) {
    $_SESSION['LOGID']=$login;
    header('Location:index.php');
}
else{
    ?>
    <script>alert("Erreur: Nom d'utilisateur ou mot de passe incorrect.");
          //  window.location.href = "backlogin.php";
    </script>
    <?php
}
?>
