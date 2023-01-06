<p>
  <input id="clientNom" type="text" name="nom" value="" placeholder="NOM" required/><br>
  <input id="clientPrenom" type="text" name="clientPrenom" value="" placeholder="PRENOM" required/><br>
  <button type="button" id="button">Trier</button>
</p>


<div id="etape3">

</div>

<script>
var button = document.getElementById('button');

button.addEventListener('click', function() {
  var clientNom = document.getElementById('clientNom').value;
  var clientPrenom = document.getElementById('clientPrenom').value;

  $.ajax({url: "trieEmprunt/resu_recherche.php", data: {clientNom: clientNom, clientPrenom:clientPrenom}, success: function(result){
      $("#etape3").html(result);
  }});
})
</script>
