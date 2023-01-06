<p>
  <select id="select_recherche" name="editeur">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM editeur order by EDIT_NOM';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $EDIT_NOM = $ligne['EDIT_NOM'];
      $EDIT_NUM = $ligne['EDIT_NUM'];
    	?>
    	<option value='<?php echo $EDIT_NUM ?>'><?php echo $EDIT_NOM ?></option>
    <?php }
    $table->closeCursor();
    ?>
  </select><br>
  <button type="button" id="button">Rechercher</button>
</p>

<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var numEditeur = document.getElementById('select_recherche').value;

  $.ajax({url: "rechercheLivre/resu_recherche.php", data: {numEditeur: numEditeur}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
