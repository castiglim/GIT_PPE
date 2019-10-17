<!doctype html>
<html lang="fr">
<?php
	include('routes.php');
?>

<head>
 	<meta charset="utf-8" />
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<meta name="description" content="<?php echo $description; ?>" />
	<meta name="robots" content="index,follow,all" />
	<title><?php echo $title; ?></title>

	<link rel="shortcut icon" href="skin/favicon.ico" />
	<link rel="icon" href="skin/favicon_anime.gif" />
	<link rel="stylesheet" href="skin/maquette.css" media="screen" />
	<link rel="stylesheet" href="skin/maquetteCatalogue.css" media="screen" />
	<!--<link rel="stylesheet" href="skin/maquette2.css" media="screen" />-->
	
	<!-- <script src="script.js"></script> -->
</head>

<body>

	<div id="Bandeau">
		<div class="contenuDiv">
			<?php include('bandeau.php'); ?>
		</div>
	</div>
		
	
		<div id="Menu">
			<div class="contenuDiv">
				<?php include('menu.php'); ?>
			</div>
		</div><br /><br />
		
		<div id="Contenu">
			<div class="fondDiv"></div>
			<div class="contenuDiv">
				<?php include($affiche); ?>
				
			</div>
		</div>	
		
	
	<div id="Pied_page">
			<div class="fondDiv"></div>
			<div class="contenuDiv"><br /><br />
				<?php include('pied_page.php'); ?>
			</div>
	</div>

</body>
</html>