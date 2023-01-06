<!DOCTYPE html>
<html>
<?php
    require_once 'getHead.php';
    setHead();
?>
    <body>
        <form id="auth_form" action="login.php" method="POST">
            <input type="text" value="" name="login" placeholder="Username"><br/>
            <input type="password" value="" name="pwd" placeholder="Password"><br/>
            <input type="submit" value="Connexion">
        </form>
    </body>
</html>
