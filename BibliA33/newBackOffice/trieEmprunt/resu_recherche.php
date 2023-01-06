<?php
require '../../sqlconnect.php';


if(isset($_GET["Client"])) {
  $client=($_GET["Client"]);
 

  $sql = "SELECT * FROM client, emprunter, livre "
          . "WHERE client.CLIENT_ID = emprunter.CLIENT_ID "
          . "and emprunter.LIV_ISBN = livre.LIV_ISBN "
          ."and client.CLIENT_ID='".$client."'"
          . "and CLIENT_NOM = CLIENT_NOM "
          . "and CLIENT_PRENOM = CLIENT_PRENOM" ;
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </form>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
elseif (isset($_GET["dateEmp"])) {
  $dateEmp=($_GET["dateEmp"]);

  $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and EMP_DATE = '".$dateEmp."'" ;
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </form>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
elseif (isset($_GET["DateEmpRetMax"])) {
  $DateEmpRetMax=($_GET["DateEmpRetMax"]);

  $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and EMP_DATE_R_MAX = '".$DateEmpRetMax."'" ;
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </form>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
elseif (isset($_GET["isbn"])) {
  $isbn=($_GET["isbn"]);

  $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and livre.LIV_ISBN = '".$isbn."'" ;
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </div>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
elseif (isset($_GET["motclef"])) {
  $motclef=($_GET["motclef"]);
  $sql = "SELECT *  FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and (livre.LIV_TITRE LIKE '%$motclef%' OR livre.LIV_ISBN LIKE '%$motclef%' OR emprunter.EMP_DATE_R_MAX LIKE '%$motclef%' OR emprunter.EMP_DATE LIKE '%$motclef%' OR client.CLIENT_NOM LIKE '%$motclef%' OR client.CLIENT_PRENOM LIKE '%$motclef%') ";
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </form>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
elseif (isset($_GET["titre"])) {
  $titre=($_GET["titre"]);
  $sql = "SELECT * FROM client, emprunter, livre WHERE client.CLIENT_ID = emprunter.CLIENT_ID and emprunter.LIV_ISBN = livre.LIV_ISBN and livre.LIV_TITRE = '".$titre."'" ;
  $table = $connection->query($sql);
  $count = $table->rowCount();
  if ($count > 0) {
    ?>
    <form class="" action="trieEmprunt/emprunter.php" method="post">
      <table>
        <tr>
          <th>Client</th>
          <th>Client tel</th>
          <th>N°ISBN</th>
          <th>Titre</th>
          <th>Date emprunt</th>
          <th>Date retour max</th>
          <th>Etat</th>
          <th>Date de retour</th>
          <th>Rendre ?</th>
        </tr>
      <?php
      while($ligne = $table->fetch()) {
        $LIV_ISBN = $ligne["LIV_ISBN"];
        $CLIENT_NOM = $ligne["CLIENT_NOM"];
        $CLIENT_PRENOM = $ligne["CLIENT_PRENOM"];
        $LIV_TITRE = $ligne["LIV_TITRE"];
        $CLIENT_TEL = $ligne["CLIENT_TEL"];
        $EMP_DATE = $ligne["EMP_DATE"];
        $EMP_DATE_R_MAX = $ligne["EMP_DATE_R_MAX"];
        $EMP_DATE_R_REEL = $ligne["EMP_DATE_R_REEL"];
        if ($ligne["EMP_ETAT"] == 1) {
          $EMP_ETAT = "Rendu";
        }
        elseif ($ligne["EMP_ETAT"] == 0) {
          $EMP_ETAT = 'Non-rendu';
        }
      ?>
        <tr>
          <td><?php echo $CLIENT_NOM." ".$CLIENT_PRENOM; ?></td>
          <td><?php echo $CLIENT_TEL; ?></td>
          <td><?php echo $LIV_ISBN; ?></td>
          <td><?php echo $LIV_TITRE; ?></td>
          <td><?php echo $EMP_DATE; ?></td>
          <td><?php echo $EMP_DATE_R_MAX; ?></td>
          <td><?php echo $EMP_ETAT; ?></td>
          <td><?php echo $EMP_DATE_R_REEL; ?></td>
          <td><input type="checkbox" name="rendre[]" value="<?php echo $LIV_ISBN ?>"></td>
        </tr>
      <?php
      }
      ?>
      </table>
      <input type="submit" value="Rendre">
    </form>
    <?php
  }
  else {
    echo "Aucun emprunt ne correspond a votre recherche.";
  }
}
?>
