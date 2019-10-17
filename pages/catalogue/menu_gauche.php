<?php
	/* Détermination du nom de la page à charger après vérification de sa validité */
	include 'BDD/connectBdd.php'; //on se connecte à la base de donnée
	if (isset($_GET['menu'])) {
		$menu = $_GET['menu'];
	}
	else {
		$menu = "possesseur";
	}
	
	
	if ($menu == "console") {
		
		$resultats=$connexion->query("SELECT distinct console FROM jeux_video ORDER BY 1 ASC"); // on va chercher tous les possesseurs dans la table jeux_video (résultat trié par ordre croissant)
		$resultats->setFetchMode(PDO::FETCH_OBJ); // on dit qu'on veut que le résultat soit récupérable sous forme d'objet
		while( $ligne = $resultats->fetch() ) // on récupère la liste des membres
		{
			echo '<a href="?page=catalogue&menu='.$menu.'&console='.$ligne->console.'&possesseur=%" >'.$ligne->console.'</a><br/>'; // on affiche les consoles sous forme de liens
		}
		$resultats->closeCursor(); // on ferme le curseur des résultats
	}
	else {
		$resultats=$connexion->query("SELECT distinct possesseur FROM jeux_video ORDER BY 1 ASC"); // on va chercher tous les possesseurs dans la table jeux_video (résultat trié par ordre croissant)
		$resultats->setFetchMode(PDO::FETCH_OBJ); // on dit qu'on veut que le résultat soit récupérable sous forme d'objet
		while( $ligne = $resultats->fetch() ) // on récupère la liste des membres
		{
			echo '<a href="?page=catalogue&menu='.$menu.'&console=%&possesseur='.$ligne->possesseur.'" >'.$ligne->possesseur.'</a><br/>'; // on affiche les consoles sous forme de liens
		}
		$resultats->closeCursor(); // on ferme le curseur des résultats
		
	}
	
	
	
?>