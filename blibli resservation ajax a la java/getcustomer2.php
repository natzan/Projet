<?php
require './sqlconnect.php';

    $mail=$_REQUEST["mail"];
    $code=$_REQUEST["code"];
    $code = md5($code);
    $sql = "UPDATE client SET CLIENT_MDP=".'"'.$code.'"'." WHERE CLIENT_MAIL = ".'"'.$mail.'"'.";";
    $connection->exec($sql);

    echo "Mot de passe changé avec succès.";
?>