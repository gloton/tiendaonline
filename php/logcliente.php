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
		
		//averiguar cuantos productos habian hasta ese momento
		$peticion = "SELECT * FROM productos WHERE id='".$_SESSION['producto'][$i]."'";
		$resultado = mysqli_query($conexion, $peticion);
		while($fila = mysqli_fetch_array($resultado)) {
			$existencias = $fila['existencias'];
			$peticiondos = "UPDATE productos SET existencias = '".($existencias-1)."' WHERE id='".$_SESSION['producto'][$i]."'";
			$resultadodos = mysqli_query($conexion, $peticiondos);
		}		
	}	
	
	echo '<br>tu pedido se ha realizado satisfactoriamente. Redirigiendo en 5 segundos a la pagina principal';
	session_destroy();
	echo '
		<meta http-equiv="refresh" content="5; url=../index.php">
		';
	
} else {
	echo 'El usuario NO existe, volviendo a la tienda en 5 segundos';
	echo '
		<meta http-equiv="refresh" content="5; url=../confirmar.php">
	';
}
mysqli_close($conexion);

include "piedepagina.inc";
?>