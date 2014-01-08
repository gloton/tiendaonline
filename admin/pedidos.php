<table border="1">
<?php 

$conexion = mysqli_connect('localhost','root','root','tiendaonline');
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM pedidos ORDER BY estado, fecha ASC";
$resultado = mysqli_query($conexion, $peticion);
while($fila = mysqli_fetch_array($resultado)) {
	$estado = $fila['estado'];
	 if($estado == 0){$diestado = "no servido";}else{$diestado = "servido";}
	 
	 echo '<tr';
	 if($estado == 0){echo ' style="background:rgb(255,200,200);"';}else{echo ' style="background:rgb(200,255,200);"';}
	echo '><td>'.$fila['idcliente'].'</td><td>'.date("M d Y H:i:s", $fila['fecha']).'</td><td>'.$diestado.'</td><td></td></tr>';
}
mysqli_close($conexion);
?>
</table>