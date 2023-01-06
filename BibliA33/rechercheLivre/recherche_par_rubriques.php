<p>
  <select id="select_recherche" name="rubriques">
    <?php
    require '../sqlconnect.php';
    $sql = 'SELECT *  FROM rubriques order by RUB_NOM';
    $table = $connection->query($sql);
    while($ligne = $table->fetch()) {
      $nomRub = $ligne['RUB_NOM'];
    	?>
    	<option value='<?php echo $ligne['RUB_ID'] ?>'><?php echo $nomRub?></option>
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
var rubriques = document.getElementById('select_recherche');

button.addEventListener('click', function() {
  var valRubriques = rubriques.options[rubriques.selectedIndex].value;

  $.ajax({url: "rechercheLivre/resu_recherche.php", data: {valRubriques: valRubriques}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
