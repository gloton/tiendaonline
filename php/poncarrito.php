<?php 
session_start();
$_SESSION['producto'][$_SESSION['contador']] = $_GET['p'];
$_SESSION['contador']++;
for($i = 0;$i< $_SESSION['contador'];$i++){
	echo "Producto: ".$_SESSION['producto'][$i]."<br>";
	/*
	$peticion = "SELECT * FROM productos WHERE id=".$_SESSION['producto'][$i]."";
	$resultado = mysqli_query($conexion, $peticion);
	while($fila = mysqli_fetch_array($resultado)) {
		echo "<tr><td>".$fila['nombre']."</td><td> ".$fila['precio']."</td></tr>";
		$suma += $fila['precio'];
	}
	*/
}
?>