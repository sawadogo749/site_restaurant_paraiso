<?php


		$serveur="localhost";
		$dbname="paraiso";
		$user="root";
		$pass="";
		$nom=$_POST["nom"];
		$prenom=$_POST["prenom"];
		$txt=$_POST["besoin"];
		 

		try{
		    $dbco=new PDO ("mysql:host=$serveur; dbname=$dbname",$user,$pass);
		    $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		    $sth=$dbco->prepare("INSERT INTO utilisateur(nom,prenom,besoin) VALUES(:nom,:prenom, :besoin)");

		    $sth->bindParam(':nom',$nom);
		    $sth->bindParam(':prenom',$prenom);
		    $sth->bindParam(':besoin',$txt);
		    $sth->execute();
		    header("location:reponse.html");
		}
		catch(PDOException $e){
		     echo 'Erreur de traitement:' . $e->getMessage() ;

		}

?>