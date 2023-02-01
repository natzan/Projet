<p><input id="motclef" type="text" name="motclef" value="" placeholder="MOT-CLEF"/><br>
  <button type="button" id="button">Trier</button>
</p>

<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var motclef = document.getElementById('motclef').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {motclef: motclef}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
