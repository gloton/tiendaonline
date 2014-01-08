<table border="1">
<?php 
$conexion = mysqli_connect('localhost','root','root','tiendaonline');
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM pedidos";
$resultado = mysqli_query($conexion, $peticion);
while($fila = mysqli_fetch_array($resultado)) {
	echo '<tr><td>'.$fila['idcliente'].'</td><td>'.$fila['fecha'].'</td><td>'.$fila['estado'].'</td><td></td></tr>';
}
mysqli_close($conexion);
?>
</table>