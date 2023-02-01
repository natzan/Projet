<p>
  <select id="select_recherche" name="isbn">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM livre order by LIV_ISBN';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $LIV_ISBN = $ligne['LIV_ISBN'];
    	?>
    	<option value='<?php echo $LIV_ISBN ?>'><?php echo $LIV_ISBN ?></option>
    <?php }
    $table->closeCursor();
    ?>
  </select><br>
  <button type="button" id="button">Rechercher</button>
</p><br>


<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var isbn = document.getElementById('select_recherche').value;

  $.ajax({url: "rechercheLivre/resu_recherche.php", data: {isbn: isbn}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
