    <?php
    session_start();
    require '../sqlconnect.php';
    require 'getNavClient.php';
    ?>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <?php
        //vérification de la session
        if (isset($_SESSION['CLIENT_MAIL'])) {
            $sql = 'select * from client where CLIENT_MAIL="' . $_SESSION['CLIENT_MAIL'] . '"';
            $req = $connection->query($sql);
            $donnee=$req->fetch();
        ?>
            <div id="current_page">
                    <h1>Index</h1>
					<h2>Connect&eacute;(e) : <?php echo $donnee['CLIENT_NOM']; ?></h2>
					<a href="../images/client/<?php echo $donnee['CLIENT_PHOTO'] ?>"><img class="cliImg" src="../images/client/<?php echo $donnee['CLIENT_PHOTO'] ?>" /></a>
			</div>
			<center><h2>Mes emprunts : </h2></center>
			<form class="" action="donnerAvis.php" method="post">
				<table>
					<tr>
						<th>Image</th>
						<th>Titre</th>
						<th>Date d'emprunt</th>
						<th>Date d'emprunt maximale</th>
						<th>Date rendu</th>
						<th>Donner votre avis</th>
					</tr>


                <?php
                $user_id = $_SESSION['CLIENT_ID'];
                $reponse = $connection->query("SELECT * FROM emprunter WHERE CLIENT_ID='$user_id'");
                while ($donnees = $reponse->fetch()) {
                    $isbn = $donnees["LIV_ISBN"];
                    $reponse1 = $connection->query("SELECT * FROM livre WHERE LIV_ISBN='$isbn' ");
                    while ($donnees1 = $reponse1->fetch()) {
                        $don = '                                                 
                                                        <tr> 
                                                            <th><a href="../images/livre/liv_' . $donnees1['LIV_IMG'] . '.jpg"><img src="../images/livre/' . $donnees1['LIV_IMG'] . '" width="50px" height="50px"/></a></th>
                                                            <th>' . $donnees1['LIV_TITRE'] . '</th>
                                                            <th>' . $donnees['EMP_DATE'] . '</th>
                                                            <th>' . $donnees['EMP_DATE_R_MAX'] . '</th>
                                                            <th>' . $donnees['EMP_DATE_R_REEL'] . '</th>
                                                            <th><input type="radio" name="avis" value="' . $donnees['EMP_ID'] . '"></th>
                                                        </tr>';

                        echo $don;
                    }
                }
                ?>
            </table><br>
            <?php
            $sql = 'SELECT count(*) as nb FROM emprunter WHERE CLIENT_ID = "' . $_SESSION['CLIENT_ID'] . '"';
            $reponse2 = $connection->query($sql);
            $ligne = $reponse2->fetch();
            if ($ligne['nb'] > 0) {
                //echo $ligne['nb'];
                ?>
                <center><input type="submit" value="Donner votre avis"></center>

                <?php
            }
            ?>

        </form>

            <?php
        }
        ?>
</body>
</html>





