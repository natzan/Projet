<!DOCTYPE html>
<html>
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <body>
        <?php
        session_start();
        //vérification de la session
        require 'getNavClient.php';
        if (isset($_SESSION['CLIENT_MAIL'])) {
            require '../sqlconnect.php';
            $sql = 'select * from client where CLIENT_MAIL="' . $_SESSION['CLIENT_MAIL'] . '"';
            $req = $connection->query($sql);
            $donnee=$req->fetch();
            $sql2 = 'SELECT count(*) as nb_livre FROM livre';
            $nb = $connection->query($sql2);
            ?>
            <div id="current_page">
                <h1>Index</h1><h2>Connecté(e) : <?php echo $donnee['CLIENT_NOM']; ?></h2><a href="../images/client/<?php echo $donnee['CLIENT_PHOTO']?>"><img class="cliImg" src="../images/client/<?php echo $donnee['CLIENT_PHOTO']?>" /></a>
            </div>
            <div id="main_content">
                <div id="etape1">
                    <p>
                    <form class="" action="ajouterReservationClient.php" method="post">
                        <p>Nouvelle réservation : </p>
                        <div id="ajoutempruntisbn">
                            <p>Titre du livre :</p>
                            <?php
                            $aff = $nb->fetch();
                                if ($aff['nb_livre'] >= 1) {
                                    $sql = 'SELECT * FROM livre WHERE LIV_ISBN NOT IN(SELECT LIV_ISBN FROM fileattente WHERE CLIENT_ID='.$_SESSION['CLIENT_ID'].')';
                                        $table = $connection->query($sql);
                                        $resu=$table->fetchAll();
                                        $nombre=count($resu);
                                        if($nombre>0){
                                    $flag = false;
                                    ?>
                                    <select id="select_recherche" name="isbn">
                                        <?php
                                        require '../sqlconnect.php';
                                        


                                        foreach($resu as $livre => $ligne) {

                                            $LIV_ISBN = $ligne['LIV_ISBN'];
                                            $LIV_TITRE = $ligne['LIV_TITRE'];
                                            ?>
                                            <option value='<?php echo $LIV_ISBN ?>'><?php echo $LIV_TITRE ?></option>
                                            

                                            <?php
                                        }?>
                                        
                                        </select>
                            
                                        <?php
                                        }
                                        else{
                                            echo "Vous avez déjà emprunter tous les livres ou êtes en liste d'attente.";
                                        }
                                    } else {
                                        ?>
                                        <p>Aucun livre disponible</p>
                                        <?php
                                    }
                                
                                ?>                            
                        </div>
                        <br>         
                        <?php
                        if (isset($flag)) {
                            echo '<input type="submit" value="Valider"/>';
                        }
                        ?>
                        <input type="button" onClick="location.href = 'accueilClient.php';" value="Retour"/>
                    </form>
                    </p>
                </div>
                <div id="mesDemandes">
                    Votre liste de demande d'emprunt<br>
                    <?php
                    $sql=$connection->prepare('SElECT * FROM fileattente,livre WHERE fileattente.LIV_ISBN=livre.LIV_ISBN AND CLIENT_ID=? AND NUM_ATTENTE!=0');
                    $sql->bindParam(1,$_SESSION['CLIENT_ID'],PDO::PARAM_INT);
                    $sql->execute();
                    $resu=$sql->fetchAll();
                    $nb=count($resu);
                    if($nb==0){
                        echo "Vous n'êtes actuellement sur aucunes file d'attente.";
                    }
                    else{
                        ?>
                    <form method='POST' action='triEmprunt/supprDemande.php'>
                    <table>
                        <tr>
                            <th>Titre du livre</th>
                            <th>Rang dans la file d'attente</th>
                            <th>Annuler</th>
                        </tr>
                        <?php
                        $sql=$connection->prepare('SELECT EMP_ID FROM emprunter WHERE LIV_ISBN=? AND EMP_ETAT=0');
                        foreach($resu as $livre => $ligne){
                            $sql->bindParam(1,$ligne['LIV_ISBN'],PDO::PARAM_STR);
                            $sql->execute();
                            $res=$sql->fetch();
                            ?>
                        
                        <tr>
                            <td><?php echo $ligne['LIV_TITRE'] ?></td>
                            <td>n°<?php echo $ligne['NUM_ATTENTE'] ?></td>
                            <td><input type='checkbox' value="<?php echo $res['EMP_ID'] ?>" name="annuler[]"></td>
                        </tr>
                    <?php                        
                        }
                        ?>
                    </table>
                        <input type="submit" value="Annuler la demande">
                    <?php
                    }
                    ?>
                        
                    </form>
                </div>
            </div>
        </body>

        <?php
    } else {
        header('Location: loginClient.php');
    }
    ?>
</html>
