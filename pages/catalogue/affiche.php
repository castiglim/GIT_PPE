<?php
include 'BDD/connectBdd.php'; //on se connecte à la base de donnée

if (isset($_GET['possesseur'])) {
	$possesseur = $_GET['possesseur'];
	}
else {
	$possesseur = "%";
}	
if (isset($_GET['console'])) {
	$console = $_GET['console'];
	}
else {
	$console = "%";
}	

if ($menu == "console" && $console != "%") {
	echo "<H3>Les chassures de type ".$console."</H3>";
}
else if ($menu == "possesseur" && $possesseur != "%") {
	echo "<H3>Les chaussures  ".$possesseur."</H3>";
}
else {
	echo "<H3>Toutes les chaussures</H3>";
}

$SQL = "SELECT photo, nom, possesseur, console, prix, nbre_joueurs_max, commentaires FROM jeux_video where console like '".$console."' and possesseur like '".$possesseur."' ORDER BY 2 ASC";

$resultats=$connexion->query($SQL); // on execute notre requête

$resultats->setFetchMode(PDO::FETCH_OBJ); // on dit qu'on veut que le résultat soit récupérable sous forme d'objet

while( $ligne = $resultats->fetch() ) // on récupère la liste des resultats
{
	echo 	'<table id="affiche_resultat">
			   <caption>'.$ligne->nom.'</caption> 
			   <tbody> 
			   <!-- Corps du tableau -->
				   <tr>
					   <td rowspan="3" class="photo"><img src="photo/'.$ligne->photo.'" alt="image du jeu '.$ligne->nom.'"/></td>
					   <td>'.$ligne->console.'</td>
					   <td>Marque: '.$ligne->possesseur.'</td>
				   </tr>
				   <tr>
					   <td>Prix achat : '.$ligne->prix.' €</td>
					   <td>Prix de revente : '.$ligne->nbre_joueurs_max.' €</td>
				   </tr>       
				   <tr>
					   <td colspan="2" class="commentaire">'.$ligne->commentaires.'</td>
				   </tr>       
			   </tbody>
			</table>
			<br/>';
}

$resultats->closeCursor(); // on ferme le curseur des résultats*/
?>

