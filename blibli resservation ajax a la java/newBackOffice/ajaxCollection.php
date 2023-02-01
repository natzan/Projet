<?php 
    require 'sqlconnect.php';
?>
<select id="select_collection" name="collection" size="3" onchange="ajoutFon2();" required>
    <option value="ajoutCol">Ajouter</option>
    <?php
    $sql = 'SELECT COL_NOM, COL_NUM  FROM collection where edit_num ='.$_POST["editeur"].' order by COL_NOM';
    echo $sql;
    $table = $connection->query($sql);
    while ($ligne = $table->fetch()) {
        $nomCol = $ligne['COL_NOM'];
        $numCol = $ligne['COL_NUM'];
        ?>
        <option value='<?php echo $numCol ?>'><?php echo $nomCol ?></option>
        <?php
    }
    $table->closeCursor();
    ?>
</select>

