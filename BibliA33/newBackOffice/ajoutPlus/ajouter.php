<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Accès BackOffice</title>
    </head>
    <body onload="location.href = '../index.php';">
        <?php
        //
        session_start();
        if (isset($_SESSION['LOGID'])) {
            # code..
            ?>
            <h1>Ajout</h1>
            <?php
            if (isset($_SESSION['nomImage'])) {
                $image = $_SESSION['nomImage'];
            } else {
                echo 'oui';
            }
            $titre = $_REQUEST["titre"];
            $auteur = $_REQUEST["auteur"];
            $collection = $_REQUEST["collection"];
            $editeur = $_REQUEST["editeur"];
            $rubrique = $_REQUEST["rubrique"];
            $isbn = $_REQUEST["isbn"];
            $date = $_REQUEST["date"];
            $resume = $_REQUEST["resume"];
            $etat = $_REQUEST["etat"];
            require '../../sqlconnect.php';
            $sql = $connection->prepare('INSERT INTO livre(LIV_ISBN, COL_NUM, EDIT_NUM, LIV_TITRE, LIV_DATE, LIV_IMG, LIV_RESUME, LIV_ETAT ) VALUES(:ISBN, :collection, :editeur, :titre, :date, :image, :resume, :etat)');
            
            try {
                $sql->execute(array(
                                    'ISBN' => $isbn,
                                    'collection' => $collection,
                                    'editeur' => $editeur,
                                    'titre' => $titre,
                                    'date' => $date,
                                    'image' => $image,
                                    'resume' => $resume,
                                    'etat' => $etat
                                ));
            } catch ( Exception $e ) {
                echo "insertion ratée : ", $e->getMessage();
                die();
            }
            var_dump($auteur);

            foreach ($auteur as $aut) {
                $req = 'INSERT INTO ecrire(AUT_NUM, LIV_ISBN) VALUES("' . $aut . '","' . $isbn . '")';
                $connection->exec($req);
                echo $isbn;
                var_dump($aut);
            }
            foreach ($rubrique as $rub) {
                $sql3 = $connection->prepare('INSERT INTO correspondre(RUB_ID, LIV_ISBN) VALUES(:rub, :ISBN)');
                $sql3->execute(array(
                    'rub' => $rub,
                    'ISBN' => $isbn
                ));
            }
            unset($_SESSION['nomImage']);
            echo "le livre a bien été ajouté.";
        
            ?>
            <br/>
            <br/>
            <?php
        } else {
            header('Location: login.html');
        }
       ?>

    </body>
</html>
