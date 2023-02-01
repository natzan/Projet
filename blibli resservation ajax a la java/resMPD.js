window.addEventListener("load", (event) => {
    document.getElementById('verif').style.display = "none";
    document.getElementById('newPass').style.display = "none";
});

var int;
var mail;

function reset(){

    var img = document.getElementById("sending");
    img.setAttribute("src", "images/img/mail-download.gif");

    int = getRandomInt(100000);
    mail = document.getElementById('mail').value;

    console.log(mail);
    console.log(int);

    var templateParams = {
        code: int,
        mail: mail
    };

    console.log(templateParams);  

    emailjs.send('default_service', 'template_1no5gqt', templateParams, "wQFE1-UHFDUYRl5lP")
    .then(function(response) {

       console.log('SUCCESS!', response.status, response.text);

       img.setAttribute("src", "images/img/EvenWaryFrog-size_restricted.gif");

       const xmlhttp = new XMLHttpRequest();
       xmlhttp.open("POST", "getcustomer.php");
       xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
       xmlhttp.onreadystatechange = () => {
           if (xmlhttp.readyState === XMLHttpRequest.DONE && xmlhttp.status === 200) {
               console.log(this.responseText);
           }
       }
       xmlhttp.send("mail="+mail+"&code="+int);
       
       document.getElementById('verif').style.display = "block";

    }, function(error) {
       console.log('FAILED...', error);
    });
}

function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}

function verifCode(){
    console.log("debut");
    console.log(document.getElementById('code').value);
    console.log(int);

    if(int == document.getElementById('code').value){
        console.log("ok");
        document.getElementById('newPass').style.display = "block";
    } else {
        alert("Le code n'est pas bon.")
    }
}

function changePass(){
    if(document.getElementById('pass1').value == document.getElementById('pass2').value){

        const xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "getcustomer2.php");
        xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlhttp.onreadystatechange = () => {
            if (xmlhttp.readyState === XMLHttpRequest.DONE && xmlhttp.status === 200) {
                console.log(this.responseText);
            }
        }
        xmlhttp.send("mail="+mail+"&code="+document.getElementById('pass1').value);

        alert('Mot de passe changé avec succès')
        document.location.href="index.php"; 

    } else {
        alert('Les mots de passes sont différents.')
    }

}