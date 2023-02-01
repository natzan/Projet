<p>
  <p>
  <select id="client" name="auteurnom">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM client;';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $cliId = $ligne['CLIENT_ID'];
      $cliNom = $ligne['CLIENT_NOM'];
      $cliPrenom= $ligne['CLIENT_PRENOM'];
     
    	?>
      
    	<option  value="<?php echo $cliId;?>"><?php echo $cliNom." ".$cliPrenom; ?></option>
    <?php }
    ?>
  </select><br>
  <button type="button" id="button">Trier</button>
</p>


<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var Client = document.getElementById('client').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {Client: Client}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
