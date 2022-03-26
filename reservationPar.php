<?php
$serveur="localhost";
//nom de la BD quon va creer au niveau de phpmyadmin
$dbname="Paraiso";
//
$user="root";
$pass="";
//recuperer les informations du html avec le php avec le name qui est dans input
$date=$_POST["dat"];
$heure=$_POST["Heure"];
$numero=$_POST["NumTable"];
$nombre=$_POST["NTable"];


 

try{
    //se connecter a la BD
    $dbco=new PDO ("mysql:host=$serveur; dbname=$dbname",$user,$pass);
    $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //creer une BD et une table pour sctoker les informations jai crer avecphpmyadmin directement
    //inserer les donnees recus
    $sth=$dbco->prepare("INSERT INTO reservation(dat,Heure,NumTable,NTable) VALUES(:dat, :Heure, :NumTable, :NTable)");
    $sth->bindParam(':dat',$date);
    $sth->bindParam(':Heure',$heure);
    $sth->bindParam(':NumTable',$numero);
    $sth->bindParam(':NTable',$nombre);
    $sth->execute();
    //renvoyer a l'utilisateur la page de remerciement
    header("location:reponse.html");
}
//gestion en cas d'erreur
catch(PDOException $e){
     echo 'Erreur de traitement:' . $e->getMessage() ;

}

?>