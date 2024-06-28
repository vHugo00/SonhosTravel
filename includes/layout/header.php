<?php

	/**
	 * 
	 * Este é o arquivo de cabeçalho para o layout.
	 * Ele contém o doctype, meta tags, título, favicon, arquivos css e js.
	 * Também contém o menu de navegação.
	 * O objetivo é evitar a repetição do mesmo código em todos
	 * os arquivos e facilitar a manutenção.
	 * 
	 * 
	 */

require_once( __DIR__ . '/../config.php');
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<title>Registro<?php echo isset($title) ? ' - ' . $title : '' ?></title>

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link rel="stylesheet" href="<?php echo APP_URL; ?>/assets/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link rel="stylesheet" href="<?php echo APP_URL; ?>/assets/fonts/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="<?php echo APP_URL; ?>/assets/custom-style.css">
</head>

<body class="text-center">

<?php

	if (!isset($HideMenu) || $HideMenu == false) {
		include ( __DIR__ .'/menu.php');
	}

?>