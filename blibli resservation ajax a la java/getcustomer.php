<?php
require './sqlconnect.php';

    $mail=$_REQUEST["mail"];
    $code=$_REQUEST["code"];
    $sql = "UPDATE client set CODE_REINITIALISATION=".$code." WHERE CLIENT_MAIL=".'"'.$mail.'"'.";"; 
    $connection->exec($sql);

    echo $sql;
?>