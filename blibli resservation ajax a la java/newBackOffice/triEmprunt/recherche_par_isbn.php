<p><input id="isbn" type="text" name="isbn" value="" placeholder="ISBN" pattern="^[0-9]{3}-[0-9]{1}-[0-9]{4}-[0-9]{4}-[0-9]{1}$" title="L'ISBN doit ressembler à : XXX-X-XXXX-XXXX-X" required/><br>
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
