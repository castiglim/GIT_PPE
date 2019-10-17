<?php
	/* Détermination du nom de la page à charger après vérification de sa validité */
	$affiche = "pages/";
	$config = "config/";
	if (!isset($_GET['page']) || ($_GET['page'] == "")) {
		$affiche .= "mapage1.php";
	} else if ($_GET['page'] == "test1") {
		$affiche .= "mapage1.php";
	} else if ($_GET['page'] == "test2") {
		$affiche .= "mapage2.php";
	} else if ($_GET['page'] == "catalogue") {
		$affiche .= "catalogue.php";
	} else {
		$affiche .= "lostinspace.php";
	}
	/* Chargement page de config par défaut */
	include($config.'default-config.php');
	/* Par convention, il peut exister une page de configuration du même nom mais avec un préfixe "config-" */
	$config .= "config-".$affiche;
	@include($config); // l'arobas permet de ne pas afficher d'erreur si le fichier de configuration de la page n'existe pas (par exemple pour page 2)
?>