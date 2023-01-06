<p><input id="DateEmpRetMax" type="date" name="DateEmpRetMax" value="<?php echo date('Y/m/d'); ?>" required/><br>
  <button type="button" id="button">Trier</button>
</p>

<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var DateEmpRetMax = document.getElementById('DateEmpRetMax').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {DateEmpRetMax: DateEmpRetMax}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
