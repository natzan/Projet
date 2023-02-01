<p>
<select id="isbn" name="isbn">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM livre';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $LIV_ISBN = $ligne['LIV_ISBN'];
    	?>
    	<option value='<?php echo $LIV_ISBN ?>'><?php echo $LIV_ISBN ?></option>
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
  var isbn = document.getElementById('isbn').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {isbn: isbn}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
