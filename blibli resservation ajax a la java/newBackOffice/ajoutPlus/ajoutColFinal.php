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
    		require '../../sqlconnect.php';

      $editNom=$_POST["editeur"];
      $colNom=$_POST["colNom"];

      $sql="INSERT INTO collection (EDIT_NUM, COL_NOM) VALUES ('".$editNom."', '".$colNom."');";
    
      echo $sql;
      $connection->exec($sql);

      echo "Collection ajoutée ";

       ?>
</body>
</html>