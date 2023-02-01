<html>
    <head>
        <meta charset="utf-8">
        <title>Avis</title>
        <link rel="stylesheet" type="text/css" href="newBackOffice/stylePop.css">
        <!-- il faut changer le style -->
        
    </head>
    <body>
        <?php

            require 'sqlconnect.php';
            require_once 'headerAndFooter.php';
            //recupération de l'entete
            get_header();
            $isbn=$_REQUEST["isbn"];
            $sql = 'SELECT * FROM avis a, client c WHERE a.id_Client=c.CLIENT_ID AND LIV_id ="' . $isbn . '" order by date desc' ;

            //doit recupérer que l'id du livre(isbn) et affiche tout les les avis
            $table = $connection->query($sql);
            $count = $table->rowCount();
            while($ligne = $table->fetch()){
            

                echo '<div class="form-popup">';
                echo '<br />';
                echo $ligne["date"];
                echo '<br />';
                echo $ligne["description"];
                echo '<br />';
                echo $ligne["CLIENT_NOM"];
                echo ' '.$ligne["CLIENT_PRENOM"];
                echo '<br />';
                echo '---------------------------------------------------------------------------------------------------------------';
                echo '<br />';
                echo '</div>';
                }

            $table->closeCursor();
            get_footer();
        ?>
    </body>

</html>