<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body>
        <?php
        session_start();
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            # code..
            require '../sqlconnect.php';
            ?>
            <div id="current_page">
               <h1>Suppression Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
           </div>
            <div id="main_content">
                <div id="etape1">
                    <p>
                    <form>
                        <h1>Suppression</h1>
                        <?php
                        $i = 0;
                        if (isset($_POST['supprClient'])){
                        foreach ($_POST['supprClient'] as $valeur) {
                            
                            $sql = "DELETE FROM fileattente WHERE CLIENT_ID = '" . $valeur . "';";
                            $connection->exec($sql);  
                            
                            $sql = "DELETE FROM emprunter WHERE CLIENT_ID = '" . $valeur . "';";
                            $connection->exec($sql);
                                                       
                            $sql = "DELETE FROM client WHERE CLIENT_ID = '" . $valeur . "';";
                            $connection->exec($sql);
                            $i = $i + 1;
                        }
                            echo "Compte client supprimé.";
                            ?>
                            <br/>
                            <?php
                        } else {
                            echo "Vous n'avez pas sélectionné de compte à supprimer.";
                        }
                        ?>
                        <br/>
                        <input type="button" onClick="location.href = 'client.php';" value="Retour"/></p>
                    </form>
                    </p>
                </div>
            </div>
            <?php
        } else {
            header('Location: index.php');
        }
        ?>
    </body>
</html>
