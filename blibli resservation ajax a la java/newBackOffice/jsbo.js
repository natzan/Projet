function getXhr(){
    var xhr = null; 
    if(window.XMLHttpRequest) // Firefox et autres
       xhr = new XMLHttpRequest(); 
    else if(window.ActiveXObject){ // Internet Explorer 
       try {
            xhr = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            xhr = new ActiveXObject("Microsoft.XMLHTTP");
        }
    }
    else { // XMLHttpRequest non supporté par le navigateur 
       alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
       xhr = false; 
    } 
    return xhr
}
 
/**
* Méthode qui sera appelée sur le click du bouton
*/
function go(edit){
        var xhr = getXhr();
        // On défini ce qu'on va faire quand on aura la réponse
        xhr.onreadystatechange = function(){
                // On ne fait quelque chose que si on a tout reçu et que le serveur est ok
                if(xhr.readyState == 4 && xhr.status == 200){
                        leselect = xhr.responseText;
                        // On se sert de innerHTML pour rajouter les options a la liste
                        document.getElementById('collection').innerHTML = leselect;
                }
        }

        // Ici on va voir comment faire du post
        xhr.open("POST","ajaxCollection.php",true);
        // ne pas oublier ça pour le post
        xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        // ne pas oublier de poster les arguments
        // ici, l'id de l'éditeur
        
        xhr.send("editeur="+edit);
}

function ajoutFon(){ ADAPTER
    if(document.getElementById('select_auteur').value == "ajoutAut") {
      var b = "ft";
      window.location = "ajoutPlus/ajoutAuteur.php?var1"+b;
  }
};
function ajoutFon2(){
  if(document.getElementById('select_collection').value == "ajoutCol") {
      window.location = "ajoutPlus/ajoutCol.php";
  }
};
function ajoutFon3(){
  if(document.getElementById('select_editeur').value == "ajoutEdit") {
      window.location = "ajoutPlus/ajoutEdit.php";
  }
  else {
        editeur = document.getElementById('select_editeur').value;
        go(editeur);
   }
};

function ajoutFon4(){
    if(document.getElementById('select_rubrique').value == "ajoutRub"){
        window.location = "ajoutPlus/ajoutRub.php";
    }/*else if(document.getElementById('select_rubrique'+i).value != 'rien'){
        console.log("debut else");
        var select = document.createElement('select');
        var sel= document.getElementById('select_rubrique0');
        var br=document.createElement('br');
        var rubrique=document.getElementById('rubrique');
        var a;
        i++;
        console.log(i);
        for(a=0;a<sel.length;a++){
            select.innerHTML+='<option value='+sel.options[a].value+'>'+sel.options[a].text+'</option>';
        }
        select.id='select_rubrique'+i;
        select.setAttribute("onchange",'ajoutFon4()');
        select.setAttribute("name","rubrique");
        
        rubrique.appendChild(br);
        rubrique.appendChild(select);
    }*/
};

function retour(){
  window.location = "../ajout.php";
}

function fin(){
  window.location = "../index.php";
}

function verif(){
  var oldURL = document.referrer;
  var div = document.getElementById("affichverif");
  if(oldURL == "http://localhost/biblippe/newbackoffice/rechercheSuppr/suppression.php"){
    div.innerHTML = "<h1>Livre supprimé(s)</h1>";
  }else if(oldURL == "http://localhost/biblippe/newbackoffice/ajoutPlus/ajouter.php"){
    div.innerHTML = "<h1>Livre ajouté</h1>";
  }else if(oldURL == "http://localhost/biblippe/newbackoffice/modifLivre/modification.php"){
    div.innerHTML = "<h1>Livre modifié</h1>";
  }else{
    div.innerHTML ="<h1>Index</h1>";
  }
}


/*session storage*/

function stockerdonnees(){ OUUUUUUUUUUUUUUUUUUUUUUUUUU
    sessionStorage.clear();
    /*LIVRES*/
    var titre = document.getElementById('titre').value;
    var isbn = document.getElementById('isbn').value;
    var auteur = document.getElementById('select_auteur').selectedIndex;
    var editeur = document.getElementById('select_editeur').selectedIndex;
    /*var collection = document.getElementById('select_collection').selectedIndex;*/
    var rubrique = document.getElementById('select_rubrique').selectedIndex;
    var datepar = document.getElementById('date').value;
    var etat = document.getElementById('select_etat').selectedIndex;
    var resume = document.getElementById('resume').value;
    
    
    /*LIVRES*/
    sessionStorage.setItem('titre', JSON.stringify(titre));
    sessionStorage.setItem('isbn', JSON.stringify(isbn));
    sessionStorage.setItem('auteur', JSON.stringify(auteur));
    sessionStorage.setItem('editeur', JSON.stringify(editeur));
    /*sessionStorage.setItem('collection', JSON.stringify(collection));*/
    sessionStorage.setItem('rubrique', JSON.stringify(rubrique));
    sessionStorage.setItem('datepar', JSON.stringify(datepar));
    sessionStorage.setItem('etat', JSON.stringify(etat));
    sessionStorage.setItem('resume', JSON.stringify(resume));
    
    
    
}

function session(){
  var titre = document.getElementById('titre').value;
  var isbn = document.getElementById('isbn').value;
  var select1 = document.getElementById('select_rubrique').value;
  var select2 = document.getElementById('select_rubrique').value;
  var select3 = document.getElementById('select_rubrique').value;
  var select4 = document.getElementById('select_rubrique').value;

  if(document.getElementById('select_editeur').value == "ajoutEdit") {
    window.location = "ajoutPlus/ajoutEdit.php";
  }
  window.location.href = "ajout.php?var1=" + titre + "&var2=" + isbn;

  
}

function chargerdonnees(){ OUUUUUUUUUUUUUU
    /*LIVRES*/
    var titreStocke = sessionStorage.getItem('titre');
    var isbnStocke = sessionStorage.getItem('isbn');
    var auteurStocke = sessionStorage.getItem('auteur');
    var editeurStocke = sessionStorage.getItem('editeur');
    /*var collectionStocke = sessionStorage.getItem('collection');*/
    var rubriqueStocke = sessionStorage.getItem('rubrique');
    var dateparStocke = sessionStorage.getItem('datepar');
    var etatStocke = sessionStorage.getItem('etat');
    var resumeStocke = sessionStorage.getItem('resume');

    

    
    /*LIVRES*/
    if (titreStocke){
      document.getElementById('titre').value=JSON.parse(titreStocke); 
      document.getElementById('isbn').value=JSON.parse(isbnStocke);
      document.getElementById('select_auteur').selectedIndex=JSON.parse(auteurStocke); 
      document.getElementById('select_editeur').selectedIndex=JSON.parse(editeurStocke);
      /*document.getElementById('select_collection').selectedIndex=JSON.parse(collectionStocke);*/
      document.getElementById('select_rubrique').selectedIndex=JSON.parse(rubriqueStocke);
      document.getElementById('date').value=JSON.parse(dateparStocke);
      document.getElementById('select_etat').selectedIndex=JSON.parse(etatStocke); 
      document.getElementById('resume').value=JSON.parse(resumeStocke);
    }
    
}

function stockerUsers(){
        /*USERS*/
    var nomClient = document.getElementById('nomClient').value;
    var prenomClient = document.getElementById('prenomClient').value;
    var telClient = document.getElementById('telClient').value;
    var adresseClient = document.getElementById('adresseClient').value;
    var villeClient = document.getElementById('villeClient').value;
    var codePostalClient = document.getElementById('codePostalClient').value;
    var adresseMailClient = document.getElementById('adresseMailClient').value;
    var motDePasseClient = document.getElementById('motDePasseClient').value;
    
    /*USERS*/
    sessionStorage.setItem('nomClient', JSON.stringify(nomClient));
    sessionStorage.setItem('prenomClient', JSON.stringify(prenomClient));
    sessionStorage.setItem('telClient', JSON.stringify(telClient));
    sessionStorage.setItem('adresseClient', JSON.stringify(adresseClient));
    sessionStorage.setItem('villeClient', JSON.stringify(villeClient));
    sessionStorage.setItem('codePostalClient', JSON.stringify(codePostalClient));
    sessionStorage.setItem('adresseMailClient', JSON.stringify(adresseMailClient));
    sessionStorage.setItem('motDePasseClient', JSON.stringify(motDePasseClient));
}
function chargerUsers(){
   /*USERS*/
    var nomClientStocke = sessionStorage.getItem('nomClient');
    var prenomClientStocke = sessionStorage.getItem('prenomClient');
    var telClientStocke = sessionStorage.getItem('telClient');
    var adresseClientStocke = sessionStorage.getItem('adresseClient');
    var villeClientStocke = sessionStorage.getItem('villeClient');
    var codePostalClientStocke = sessionStorage.getItem('codePostalClient');
    var adresseMailClientStocke = sessionStorage.getItem('adresseMailClient');
    var motDePasseClientStocke = sessionStorage.getItem('motDePasseClient'); 
    
    /*USERS*/
    if (nomClientStocke){
        document.getElementById('nomClient').value=JSON.parse(nomClientStocke);
        document.getElementById('prenomClient').value=JSON.parse(prenomClientStocke); 
        document.getElementById('telClient').value=JSON.parse(telClientStocke);
        document.getElementById('adresseClient').value=JSON.parse(adresseClientStocke);
        document.getElementById('villeClient').value=JSON.parse(villeClientStocke); 
        document.getElementById('codePostalClient').value=JSON.parse(codePostalClientStocke);
        document.getElementById('adresseMailClient').value=JSON.parse(adresseMailClientStocke); 
        document.getElementById('motDePasseClient').value=JSON.parse(motDePasseClientStocke);
        
    }
}
