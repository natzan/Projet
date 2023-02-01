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

      $rub=$_POST["rub_nom"];
      $id = "SELECT count(*) as nb from rubriques";
      $a = $connection->query($id);
      $b=0;
      while($donnee=$a->fetch()){
          $b.=$donnee['nb'];
      }
      $b+=1;
      echo($b);


      $sql="INSERT INTO rubriques(RUB_ID,RUB_NOM) VALUES('".$b."', '".$rub."');";
      $connection->exec($sql);

       ?>
</body>
</html>
