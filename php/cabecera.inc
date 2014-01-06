<?php 
session_start(); 
if(!isset($_SESSION['contador'])){$_SESSION['contador'] = 0;}
?>
<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<title>Tienda</title>
	<link rel=Stylesheet href="css/movil.css" media='screen and (min-width: 1px) and (max-width: 800px)'>
	<link rel=Stylesheet href="css/pcmac.css" media='screen and (min-width: 801px) and (max-width: 4000px)'>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/codigo.js"></script>
</head>
<body>
	<div id="contenedor">
		<header>
			<h1>Tienda</h1>
			<h2>Subtitulo de la tienda </h2>
		</header>
		<section>
		<div id="carrito" style="background:rgb(200,200,200);color:black;">
			Carrito
		</div>
		<a href='php/destruir.php'><button>Vaciar carrito</button></a>