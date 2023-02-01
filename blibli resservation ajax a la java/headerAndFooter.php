<?php
//génère l'entete
function get_header(){
  require 'sqlconnect.php';
?>
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
      <script type="text/javascript" src="jquery.js"></script>
      <link rel="stylesheet" href="style.css" />
      <link rel="stylesheet" href="st.css" />
      <link rel="icon" href="favicon.ico" />
      <title>Bibliothèque A34</title>
    </head>
    <body>
<?php
}

//génère le pied de page
function get_footer(){
?>
    </body>
  </html>
<?php
}
?>
