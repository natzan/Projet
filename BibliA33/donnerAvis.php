<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Avis</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script type="text/javascript" src="../jsbo.js"></script>
    </head>
    <body>
        <?php
        session_start();
        require 'getNavClient.php';
        if (isset($_POST['1'])){
            if (isset($_SESSION['CLIENT_NOM'])) {
                require '../sqlconnect.php';
                ?>
                <div id="current_page">
                    <h1>Avis : </h1>
                </div>
                <div id="main_content">
                    <?php
                    if (isset($_POST["avis"])) {
                        $emprunt = $_POST["avis"];
                        ?>

                        <form action="avis.php" method="post">
                            <input value="<?= $emprunt ?>" name="emprunt" hidden="true"> 
                            <br><br><textarea name="votreAvis" id="votreAvis"  style="margin: 0px; height: 80px; width: 400px;"></textarea>
                            <br><br><input type="submit" value="Valider"/>
                        </form>
                    <?php
                    }
                    else{
        
                        echo '<br><h2> Aucun livre selectionné.</h2>';
                    }
            }

        }elseif(isset($_POST['2'])){
            if (isset($_SESSION['CLIENT_NOM'])) {
                require '../sqlconnect.php';
                ?>
                <div id="current_page">
                    <h1>Modifier Avis : </h1>
                </div>
                <div id="main_content">
                    <?php
                    if (isset($_POST["avis"])) {
                        $emprunt = ($_POST["avis"]);
                        ?>

                        <form action="ModifAvis.php" method="post">
                            <input value="<?= $emprunt ?>" name="emprunt" hidden="true"> 
                            <br><br><textarea name="votreAvis" id="votreAvis"  style="margin: 0px; height: 80px; width: 400px;"></textarea>
                            <br><br><input type="submit" value="Valider"/>
                        </form>
                    <?php
                    }
                    else{
        
                        echo '<br><h2> Aucun livre selectionné.</h2>';
                    }
            }
        }
?>

        </div>
    </body>
</html>
