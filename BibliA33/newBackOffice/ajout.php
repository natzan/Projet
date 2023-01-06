<?php
session_start();
//include 'connexion.php';
/* * **********************************************************
 * Definition des constantes / tableaux et variables
 * *********************************************************** */

// Constantes
define('TARGET', '../images/livre/');    // Repertoire cible
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
    <?php
    require_once 'getHead.php';
    setHead();
    ?>
    <script src="jsbo.js"></script>
    <body>
        <?php
        //vérification de la session
        require 'getNav.php';
        setNav();
        if (isset($_SESSION['LOGID'])) {
            require '../sqlconnect.php';
            ?>
            <div id="current_page">
                <h1>Ajout Livre</h1><h2>Connecté(e) : <?php echo $_SESSION['LOGID']; ?></h2>
            </div>

            <div id="main_content">
                <p>Ajouter un Livre</p>
                <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

                        <p>
                            <label for="fichier_a_uploader" title="Recherchez le fichier à uploader !">Couverture :</label>
                            <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo MAX_SIZE; ?>" />
                            <input name="fichier" type="file" id="fichier_a_uploader" />
                            <input type="submit" name="submit" value="Uploader" onclick="stockerdonnees()"/></br>
                            <?php echo $message ?>
                        </p>

                </form>
                <form action="ajoutPlus/ajouter.php" method="GET">

                    <p>Titre du livre</p>
                    <input id="titre" type="text" name="titre" value="" placeholder="Titre" onclick="chargerdonnees()" required/><br/>
                    <p>ISBN</p>
                    <input id="isbn" type="text" name="isbn" value="" placeholder="ISBN" title="L'ISBN doit contenir 20 caractères maximum" required/><br/><br/><br/>
                    <div id="auteur">
                        Auteur :</br>
                        <select id="select_auteur" name="auteur[]" type="select" multiple size="3" onchange="ajoutFon();" required>
                            <option id="ajout_auteur" value="ajoutAut">Ajouter</option>
                            <?php
                            $sql = 'SELECT AUT_NOM, AUT_PRENOM, AUT_NUM  FROM auteur order by AUT_NOM, AUT_PRENOM';
                            $table = $connection->query($sql);
                            while ($ligne = $table->fetch()) {
                                $nomAut = $ligne['AUT_NOM'];
                                $prenomAut = $ligne['AUT_PRENOM'];
                                $numAut = $ligne['AUT_NUM'];
                                ?>
                                <option id="value_auteur" value='<?php echo $numAut ?>'><?php echo $nomAut . ' ' . $prenomAut ?></option>
                                <?php
                            }
                            $table->closeCursor();
                            ?>
                        </select></div>
                    <br/>
                    Editeur :</br>
                    <select id="select_editeur" name="editeur" size="3" onchange="ajoutFon3();" required>
                        <option id="value_edit" value="ajoutEdit">Ajouter</option>
                        <?php
                        $sql = 'SELECT *  FROM editeur order by EDIT_NOM';
                        $table = $connection->query($sql);
                        while ($ligne = $table->fetch()) {
                            $nomEdit = $ligne['EDIT_NOM'];
                            $numEdit = $ligne['EDIT_NUM'];
                            ?>
                            <option  value='<?php echo $numEdit ?>'><?php echo $nomEdit ?></option>
                            <?php
                        }
                        $table->closeCursor();
                        ?>
                    </select><br/>
                    <br/>
                    Collection :
                    <div id="collection">
                        <br/>
                        <br/>
                    </div>
                    Rubrique :</br>
                    <select id="select_rubrique" name="rubrique[]" type="select" multiple size="6" onchange="ajoutFon4();" required>
                        <option value="ajoutRub">Ajouter</option>
                        <?php
                        $sql = 'SELECT * FROM rubriques order by RUB_NOM';
                        $table = $connection->query($sql);
                        while ($ligne = $table->fetch()) {
                            $idRub = $ligne['RUB_ID'];
                            $nomRub = $ligne['RUB_NOM'];
                            ?>
                            <option value='<?php echo $idRub ?>'><?php echo $nomRub ?></option>
                            <?php
                        }
                        $table->closeCursor();
                        ?>
                    </select></br>

                    <br/>
                    Date de parution :
                    <input id="date" type="date" name="date" value=""/><br/>
                    <br/>
                    Etat :
                    <select id="select_etat" name="etat">
                        <option value=''>Choisir :</option>
                        <option value="abime">Abimé</option>
                        <option value="correct">Correct</option>
                        <option value="neuf">Neuf</option>
                    </select><br/>
                    <br/>
                    Resume :<br/>
                    <textarea id="resume" name="resume" style="margin: 0px; height: 80px; width: 400px;"></textarea><br/>
                    <br/>
                    <input type="submit" name="submit" value="Valider"/>
                    </p>

                </form>
            </div>
            <?php
        } else {
            header('Location: ../login.php');
        }
        
        ?>
    </body>
</html>
