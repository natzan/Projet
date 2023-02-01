<p>
    <select id="select_recherche" name="auteurnom">
        <?php
        require '../../sqlconnect.php';
        $sql = 'SELECT *  FROM auteur order by AUT_NOM,AUT_PRENOM ;';
        $table = $connection->query($sql);
        while ($ligne = $table->fetch()) {
            $AUT_NUM = $ligne['AUT_NUM'];
            $AUT_NOM = $ligne['AUT_NOM'];
            $AUT_PRENOM = $ligne['AUT_PRENOM'];
            ?>

            <option  value="<?php echo $AUT_NUM; ?>"><?php echo $AUT_NOM . " " . $AUT_PRENOM; ?></option>
        <?php }
        ?>
    </select><br>
    <button type="button" id="button">Rechercher</button>
</p><br>
<div id="etape3">
</div>
<script>
    var button = document.getElementById('button');

    button.addEventListener('click', function () {
        var nomAuteur = document.getElementById('select_recherche').value;
        $.ajax({url: "modifLivre/resu_recherche.php", data: {nomAuteur: nomAuteur}, success: function (result) {
                $("#etape3").html(result);
            }});
    })
</script>
