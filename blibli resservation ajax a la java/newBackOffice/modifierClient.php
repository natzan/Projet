<!DOCTYPE html>
<html>
<?php
    require_once 'getHead.php';
    setHead();
?>
<body>
<?php
    session_start();
    if (isset($_GET['client'])){
        $_SESSION['client']=$_GET['client'];
    }
    define('TARGET', '../images/client/');    // Repertoire cible
define('MAX_SIZE', 10000000);    // Taille max en octets du fichier
define('WIDTH_MAX', 1920);    // Largeur max de l'image en pixels
define('HEIGHT_MAX', 1080);    // Hauteur max de l'image en pixels
// Tableaux de donnees
$tabExt = array('jpg', 'gif', 'png', 'jpeg');    // Extensions autorisees
$infosImg = array();

// Variables
$extension = '';
$message = '';
$nomImage = '';

/* * **********************************************************
 * Creation du repertoire cible si inexistant
 * *********************************************************** */
if (!is_dir(TARGET)) {
    if (!mkdir(TARGET, 0755)) {
        exit('Erreur : le répertoire cible ne peut-être créé ! Vérifiez que vous diposiez des droits suffisants pour le faire ou créez le manuellement !');
    }
}

/* * **********************************************************
 * Script d'upload
 * *********************************************************** */
if (!empty($_REQUEST)) {
    // On verifie si le champ est rempli
    if (!empty($_FILES['fichier']['name'])) {
        // Recuperation de l'extension du fichier
        $extension = pathinfo($_FILES['fichier']['name'], PATHINFO_EXTENSION);

        // On verifie l'extension du fichier
        if (in_array(strtolower($extension), $tabExt)) {
            // On recupere les dimensions du fichier
            $infosImg = getimagesize($_FILES['fichier']['tmp_name']);

            // On verifie le type de l'image
            if ($infosImg[2] >= 1 && $infosImg[2] <= 14) {
                // On verifie les dimensions et taille de l'image
                if (($infosImg[0] <= WIDTH_MAX) && ($infosImg[1] <= HEIGHT_MAX) && (filesize($_FILES['fichier']['tmp_name']) <= MAX_SIZE)) {
                    // Parcours du tableau d'erreurs
                    if (isset($_FILES['fichier']['error']) && UPLOAD_ERR_OK === $_FILES['fichier']['error']) {
                        // On renomme le fichier
//            $nomImage = md5(uniqid()) .'.'. $extension;
                        $nomImage = $_FILES['fichier']['name'];
                        $_SESSION['nomImage'] = $nomImage;
                        //var_dump($_FILES['fichier']);
                        // Si c'est OK, on teste l'upload
                        if (move_uploaded_file($_FILES['fichier']['tmp_name'], TARGET . $nomImage)) {
                            $message = 'Upload réussi !';
                        } else {
                            // Sinon on affiche une erreur systeme
                            $message = 'Problème lors de l\'upload !';
                        }
                    } else {
                        $message = 'Une erreur interne a empêché l\'uplaod de l\'image';
                    }
                } else {
                    // Sinon erreur sur les dimensions et taille de l'image
                    $message = 'Erreur dans les dimensions de l\'image ! 10Mo max et 1920*1080px.';
                }
            } else {
                // Sinon erreur sur le type de l'image
                $message = 'Le fichier à uploader n\'est pas une image !';
            }
        } else {
            // Sinon on affiche une erreur pour l'extension
            $message = 'L\'extension du fichier est incorrecte ! Uniquement.jpg, .gif, .png ou .jpeg.';
        }
    } else {
        // Sinon on affiche une erreur pour le champ vide
        $message = 'Veuillez remplir le champ image !';
    }
}
     //vérification de la session
    require 'getNav.php';
    setNav();
    if (isset($_SESSION['LOGID'])) {
    require '../sqlconnect.php';
?>
    <div id="current_page">
        <h1>Modification Comptes Client</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID'];?></h2>
    </div>
     <div id="main_content">
			<p>Modifier un client<p>
                            
              <?php
              
              $sql = "SELECT * FROM client WHERE CLIENT_ID='".$_SESSION['client']."';";
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $clientid1 = $ligne["CLIENT_ID"];
                                $clientnom=$ligne["CLIENT_NOM"];
                                $clientprenom=$ligne["CLIENT_PRENOM"];
                                $clienttel = $ligne["CLIENT_TEL"];
                                $clientadr = $ligne["CLIENT_ADR"];
                                $clientville = $ligne["CLIENT_VILLE"];
                                $clientcp = $ligne["CLIENT_CP"];
                                $clientmail = $ligne["CLIENT_MAIL"];
              
                                ?>
                            <a href="../images/client/<?php echo $ligne['CLIENT_PHOTO'] ?>"><img class="imgCli" src="../images/client/<?php echo $ligne['CLIENT_PHOTO'] ?>" /></a>
                            <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                                <p>
                                    <label for="fichier_a_uploader" title="Recherchez le fichier à uploader !">Photo :</label>
                                    <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo MAX_SIZE; ?>" />
                                    <input name="fichier" type="file" id="fichier_a_uploader" />
                                    <input type="submit" name="submit" value="Uploader" /></br>
                                    <?php echo $message ?>
                                </p>
                            </form>

                            <form action="modifAutre/modificationClient.php" method="GET">
                                <input type="hidden" name="client" value="<?php echo $_SESSION['client']; ?>"><br/>
                                <input name="clientnom" value="<?php echo $clientnom; ?>" type="text" placeholder="Nom">
                                <input name="clientprenom" value="<?php echo $clientprenom ;?>" type="text" placeholder="Prénom"><br/>
                                <input name="clienttel" value="<?php echo $clienttel ;?>" type="text" placeholder="Tel" pattern="^[0-9]{10}" title="le numéro de téléphone doit ressembler à: 06XXXXXXXX" required><br/>
                                <input name="clientadr" value="<?php echo $clientadr; ?>" type="text" placeholder="Adresse">
                                <input name="clientville" value="<?php echo $clientville ;?>" type="text" placeholder="Ville"><br/>
                                <input name="clientcp" value="<?php echo $clientcp ;?>" type="text" placeholder="Code postal"><br/>
                                <input name="clientmail" value="<?php echo $clientmail ;?>" type="text" placeholder="Adresse mail"><br/>

                                <input type="button" value="Modification mot de passe" onClick="location.href = 'modifierMDP.php';"><br/>
                                <input type="submit" value="Modifier"/>
                            </form>
        
              <?php }
                $table->closeCursor();
              ?>

     </div>

 <?php
      }
      else{
        header('Location: login.php');
      }
    ?>
</body>
</html>
