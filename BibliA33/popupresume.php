<html>
    <head>
        <meta charset="utf-8">
        <title>Avis</title>
        <link rel="stylesheet" type="text/css" href="newBackOffice/stylePop.css">
    </head>
    <body>
        
        <?php

            require 'sqlconnect.php';
            require_once 'headerAndFooter.php';
            //recupération de l'entete
            get_header();
            $isbn=$_REQUEST["isbn"];
            $sql = 'SELECT  * from livre where livre.LIV_ISBN="' . $isbn . '" ';
            $table = $connection->query($sql);
            $count = $table->rowCount();
            if ($count > 0) {
                $ligne = $table->fetch();
                echo $ligne["LIV_RESUME"];
            }
            get_footer();
        ?>
        </body>
</html>
