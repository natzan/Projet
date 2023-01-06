<?php
session_start();
if(isset($_POST["modif"])){
    $_SESSION['isbn']=$_POST["modif"];
}
//include 'connexion.php';
/* * **********************************************************
 * Definition des constantes / tableaux et variables
 * *********************************************************** */
unset($_SESSION['nomImage']);
// Constantes
define('TARGET', '../../images/livre/');    // Repertoire cible
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
                        $_SESSION ['nomImage'] = $nomImage;
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
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Back office</title>
        <link rel="stylesheet" type="text/css" href="../style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script type="text/javascript" src="../jsbo.js"></script>
    </head>
    <body>
        <?php
        //vérification de la session
        require '../getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            require '../../sqlconnect.php';
            ?>
            <div id="current_page">
                <h1>Modification:</h1>
            </div>
            <div id="main_content">
                <?php
                if (isset($_SESSION['isbn'])) {
                    $sql = 'SELECT *  FROM livre where LIV_ISBN = "' . $_SESSION['isbn'] . '" ';
                    $table = $connection->query($sql);
                    while ($ligne = $table->fetch()) {
                        $titre = $ligne['LIV_TITRE'];
                    }
                    $table->closeCursor();
                    ?>
                    <h1>Modifier <?php echo $titre ?>:</h1>
                    <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

                        <p>
                            <label for="fichier_a_uploader" title="Recherchez le fichier à uploader !">Couverture :</label>
                            <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo MAX_SIZE; ?>" />
                            <input name="fichier" type="file" id="fichier_a_uploader" />
                            <input type="submit" name="submit" value="Uploader" /></br>
                            <?php echo $message ?>
                        </p>

                </form>
                    <form action="modification.php" method="POST">
                        <input type="hidden" name="isbn" value="<?php echo $_SESSION['isbn'] ?>">
                        Auteur :<br>
                        <select name="auteur[]" type="select" multiple size="3"  required>
                            <?php
                            $sql = 'SELECT * FROM ecrire where LIV_ISBN="' . $_SESSION['isbn'] . '" ';
                            $sql2 = 'SELECT * FROM auteur';
                            $table2 = $connection->query($sql2);
                            while ($ligne2 = $table2->fetch()) {
                                $AUT_NUM = $ligne2['AUT_NUM'];
                                $AUT_NOM = $ligne2['AUT_NOM'];
                                $AUT_PRENOM = $ligne2['AUT_PRENOM'];
                                $table = $connection->query($sql);
                                while ($ligne = $table->fetch()) {
                                    $numAut = $ligne['AUT_NUM'];
                                    if ($AUT_NUM == $numAut) {
                                        $selected = 'selected="yes"';
                                    }
                                }
                                echo '<option ' . $selected . ' value="' . $AUT_NUM . '">' . $AUT_NOM . ' ' . $AUT_PRENOM . '</option>';
                                $selected = '';
                            }
                            $table->closeCursor();
                            $table2->closeCursor();
                            ?>
                        </select><br><br>
                        Éditeur :
                        <select name="editeur">
                            <?php
                            $sql = 'SELECT * FROM editeur';
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $EDIT_NOM = $ligne['EDIT_NOM'];
                                $EDIT_NUM = $ligne['EDIT_NUM'];
                                if ($EDIT_NOM == $editeur) {
                                    $selected = 'selected';
                                } else {
                                    $selected = '';
                                }
                                echo '<option ' . $selected . ' value="' . $EDIT_NUM . '">' . $EDIT_NOM . '</option>';
                            }
                            $table->closeCursor();
                            ?>
                        </select><br/><br/>
                        Collection :
                        <select name="col">
                            <?php
                            $sql = 'SELECT * FROM collection';
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $COL_NUM = $ligne['COL_NUM'];
                                $COL_NOM = $ligne['COL_NOM'];
                                if ($COL_NUM == $collection) {
                                    $selected = 'selected';
                                } else {
                                    $selected = '';
                                }
                                echo '<option ' . $selected . ' value="' . $COL_NUM . '">' . $COL_NOM . '</option>';
                            }
                            $table->closeCursor();
                            ?>
                        </select><br><br>
                        Rubrique :<br>
                        <select name="rubrique[]" type="select" multiple size="6" required>
                            <?php
                            $sql = 'SELECT * FROM correspondre where LIV_ISBN="' . $_SESSION['isbn'] . '" ';
                            $sql2 = 'SELECT * FROM rubriques';
                            $table2 = $connection->query($sql2);
                            while ($ligne2 = $table2->fetch()) {
                                $RUB_ID = $ligne2['RUB_ID'];
                                $RUB_NOM = $ligne2['RUB_NOM'];
                                $table = $connection->query($sql);
                                while ($ligne = $table->fetch()) {
                                    $numRub = $ligne['RUB_ID'];
                                    if ($RUB_ID == $numRub) {
                                        $selected = 'selected="yes"';
                                    }
                                }
                                echo '<option ' . $selected . ' value="' . $RUB_ID . '">' . $RUB_NOM . '</option>';
                                $selected = '';
                            }
                            $table->closeCursor();
                            ?>
                        </select></br></br>
                        <select name="etat">
                            <option value=''>Etat</option>
                            <option value="abime">Abimé</option>
                            <option value="correct">Correct</option>
                            <option value="neuf">Neuf</option>
                        </select></br></br>

                        <?php
                        $sql = 'SELECT *  FROM livre where LIV_ISBN="' . $_SESSION['isbn'] . '"';
                        $table = $connection->query($sql);
                        $ligne = $table->fetch();
                        $resume = $ligne['LIV_RESUME'];
                        $titre = $ligne['LIV_TITRE'];
                        $date = $ligne['LIV_DATE'];
                        ?> <input name="titre" value="<?php echo $titre ?>" type="text" placeholder="Titre"></br>
                        <input name="date" value="<?php echo $date ?>" type="text" placeholder="Date de parution (optionnel)"><br/>
                        <textarea name="resume" style="margin: 0px; height: 80px; width: 400px;"><?php echo $resume ?></textarea>
                        <br/><input type="submit" value="Valider"/>
                    </form>
                    <br/>
                <?php } else {
                    ?>
                    <p>Aucun livre choisi</p><br>
                    <button name="b_print" type="button" onclick="location.href = '../modifierLivre.php';">Retour</button>
                    <?php
                }
            } else {
                header('Location: login.php');
            }
            ?>
        </div>
    </body>
</html>
