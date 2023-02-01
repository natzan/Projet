<!DOCTYPE html>
<html>
  
        <?php
    require_once 'getHead.php';
    setHead();
    ?>
    
    <body >
        <?php
        session_start();
         require 'getNav.php';
         setNav();
        if (isset($_SESSION['LOGID'])) {
            # code..
            ?>
            <div id="current_page">
                <h1>Ajout Compte Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
            </div>
             <div id="main_content">
                <div id="etape1">
            <?php
            $nom = $_POST["nomClient"];
            $prenom = $_POST["prenomClient"];
            $tel = $_POST["telClient"];
            $adresse = $_POST["adresseClient"];
            $ville=$_POST["villeClient"];
            $cp=$_POST["codePostalClient"];
            $mail=$_POST["adresseMailClient"];
            $mdp = md5($_POST["motDePasseClient"]);

            require '../sqlconnect.php';

            $sql =$connection->prepare("INSERT INTO client (CLIENT_NOM, CLIENT_PRENOM, CLIENT_TEl, CLIENT_ADR, CLIENT_VILLE, CLIENT_CP, CLIENT_MAIL, CLIENT_MDP,CLIENT_PHOTO ) VALUES (?,?,?,?,?,?,?,?,?)");
            $sql->bindParam(1,$nom,PDO::PARAM_STR);
            $sql->bindParam(2,$prenom,PDO::PARAM_STR);
            $sql->bindParam(3,$tel,PDO::PARAM_STR);
            $sql->bindParam(4,$adresse,PDO::PARAM_STR);
            $sql->bindParam(5,$ville,PDO::PARAM_STR);
            $sql->bindParam(6,$cp,PDO::PARAM_STR);
            $sql->bindParam(7,$mail,PDO::PARAM_STR);
            $sql->bindParam(8,$mdp,PDO::PARAM_STR);
            $sql->bindParam(9,$_SESSION['nomImage'],PDO::PARAM_STR);
            $sql->execute();
            unset($_SESSION['nomImage']);
            echo "Client ajouté.";
           
            ?>
            <br/>
            <br/>
            <a href="client.php"><input type="button" value="Retour"/></a>
                </div>
         </div>
                <?php
            } else {
                header('Location: backlogin.html');
            }
            ?>

    </body>
</html>
