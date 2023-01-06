<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Accès BackOffice</title>
	<link rel="stylesheet" type="text/css" href="backstyle.css">
    <script type="text/javascript" src="../jsbo.js"></script>
</head>
<body onload="retour();">
    <?php
    session_start();
    //
    require '../../sqlconnect.php';
       
    $nom=$_POST["autNom"];
      $prenom=$_POST["autPrenom"];
      
    $sql=$connection->prepare("INSERT INTO auteur (AUT_NOM, AUT_PRENOM,AUT_PHOTO) VALUES (?,?,?);");
    $sql->bindParam(1,$nom,PDO::PARAM_STR);
    $sql->bindParam(2,$prenom,PDO::PARAM_STR);
    $sql->bindParam(3,$_SESSION['nomImage'],PDO::PARAM_STR);
    $sql->execute();
    unset($_SESSION['nomImage']);
    echo "Auteur ajouté maggle"

       ?>
</body>
</html>
