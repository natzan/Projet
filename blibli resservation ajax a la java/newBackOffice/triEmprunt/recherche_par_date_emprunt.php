<p><input id="dateEmp" type="date" name="dateEmp" value="<?php echo date('Y/m/d'); ?>" required/><br>
  <button type="button" id="button">Trier</button>
</p>
<?php  ?>
<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var dateEmp = document.getElementById('dateEmp').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {dateEmp: dateEmp}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
