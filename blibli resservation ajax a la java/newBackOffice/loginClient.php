<?php

$login=($_POST["login"]);
$pwd= md5(($_POST["pwd"]));

require '../sqlconnect.php';
$sql = "SELECT *  FROM client WHERE CLIENT_MAIL =  '".$login."' AND CLIENT_MDP ='".$pwd."'";
ECHO $sql;
$table = $connection->query($sql);
$count=$table->rowCount();
ECHO $count;
if ($count > 0) {
	$ligne = $table->fetch();
	session_start();
	$_SESSION['CLIENT_MAIL']=$login;
    $_SESSION['CLIENT_ID']=$ligne['CLIENT_ID'];
    header('Location: accueilClient.php');
}
else{
	?>
	<script>alert("Erreur: Nom d'utilisateur ou mot de passe incorrect.");
            window.location.href = "../connexionClient.php";
	</script>
	<?php
        
}
?>

