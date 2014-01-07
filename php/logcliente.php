<?php 
include "cabecera.inc";
$contador = 0;
$conexion = mysqli_connect('localhost','root','root','tiendaonline');
mysqli_set_charset($conexion, "utf8");
$peticion = "SELECT * FROM clientes WHERE usuario = '".$_POST['usuario']."' AND contrasena = '".$_POST['contrasena']."'";
$resultado = mysqli_query($conexion, $peticion);
while($fila = mysqli_fetch_array($resultado)) {
	$contador++;
	$_SESSION['usuario'] = $fila['id'];
}
if($contador > 0){
	$peticion = "INSERT INTO pedidos VALUES (NULL,".$_SESSION['usuario'].",'".date('U')."','0')";
	$resultado = mysqli_query($conexion, $peticion);	
	
	//localiza ultima compra que ha hecho el usuario actual
	$peticion = "SELECT * FROM pedidos WHERE idcliente = '".$_SESSION['usuario']."' ORDER BY fecha DESC LIMIT 1";
	$resultado = mysqli_query($conexion, $peticion);	
	while($fila = mysqli_fetch_array($resultado)) {
		$_SESSION['idpedido'] = $fila['id'];
	}
	
	echo $_SESSION['idpedido'];	
	
	for($i = 0;$i< $_SESSION['contador'];$i++){
		$peticion = "INSERT INTO lineaspedido VALUES (NULL,'".$_SESSION['idpedido']."','".$_SESSION['producto'][$i]."','1')";
		$resultado = mysqli_query($conexion, $peticion);
	}	
	
	
} else {
	echo 'El usuario NO existe';
}
mysqli_close($conexion);
echo '<br>tu pedido se ha realizado satisfactoriamente. Redirigiendo en 5 segundos a la pagina principal';
echo '
		<meta http-equiv="refresh" content="5; url=../index.php">
	';
include "piedepagina.inc";
?>