<p>
  <select id="select_recherche" name="titre">
    <?php
    require '../../sqlconnect.php';
    $sql = 'SELECT *  FROM livre';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $LIV_TITRE = $ligne['LIV_TITRE'];
    	?>
    	<option value='<?php echo $LIV_TITRE ?>'><?php echo $LIV_TITRE ?></option>
    <?php }
    $table->closeCursor();
    ?>
  </select><br>
  <button type="button" id="button">Trier</button>
</p>


<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var titre = document.getElementById('select_recherche').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {titre: titre}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
