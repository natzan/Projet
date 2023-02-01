<p>
  <select id="select_recherche" name="collection">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM *';
    $table = $connection->query($sql);
    /*while($ligne = $table->fetch()) {
      $nomCol = $ligne['COL_NOM'];
    	?>
    	<option value='<?php echo $nomCol ?>'><?php echo $nomCol?></option>
    <?php }
    $table->closeCursor();
    ?>
  </select><br>*/
  ?>
  <button type="button" id="button">Rechercher</button>
</p>

<div id="etape3">

</div>

<script>
var button = document.getElementById('button');
var collection = document.getElementById('select_recherche');

button.addEventListener('click', function() {
  var valCollection = collection.options[collection.selectedIndex].value;

  $.ajax({url: "rechercheLivre/resu_recherche.php", data: {nomCollection: valCollection}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
