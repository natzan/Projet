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
            ?>
        <div id="current_page">
            <h1>Ajout Emprunt</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
        </div>
        <div id="main_content">
            <div id="etape1">
                <p>
                <form>
                    <h1>Ajout Emprunt</h1>
                    <?php
                    $isbn = ($_POST["isbn"]);
                    $client = ($_POST["client"]);
                    $date = date('Y-m-d');
                    $dateRMax = date('Y-m-d', strtotime("+30 days"));

                    require '../sqlconnect.php';
                    //$sql = "SELECT * from emprunter";
                    //$EMP_ID = $ligne['EMP_ID'];
                    $sql=$connection->prepare("SELECT * FROM fileattente WHERE LIV_ISBN=?");
                        $sql->bindParam(1,$isbn,PDO::PARAM_STR);
                        $sql->execute();
                        $resu=$sql->fetchAll();
                        $nb=count($resu);
                        
                        if($nb==0){
                            $sql = "INSERT INTO emprunter (LIV_ISBN, CLIENT_ID, EMP_ID, EMP_DATE, EMP_ETAT, EMP_DATE_R_MAX, EMP_DATE_R_REEL) VALUES ('" . $isbn . "', '" . $client . "', default , '" . $date . "', '0', '" . $dateRMax . "', NULL);";
                            $connection->exec($sql);
                            $sql2 = "UPDATE livre SET LIV_EMPRUNTER = 1 WHERE LIV_ISBN = '$isbn'";
                            $connection->exec($sql2);                        
                        }

                        $sql2 = "INSERT INTO fileattente (LIV_ISBN, CLIENT_ID, num_attente) VALUES ('$isbn', $client, $nb)";
                        $connection->exec($sql2);
                    echo "Emprunt ajouté.";
                    //
                    ?>
                    <br/>
                    <br/>
                     <input type="button" onClick="location.href = 'emprunt.php';" value="Retour"/>
                </form>
                </p>
            </div>
        </div>
        <?php
        } else {
            header('Location: backlogin.html');
        }
        ?>
    </body>
</html>
