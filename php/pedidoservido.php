<?php 
include "config.inc";
$conexion = mysqli_connect($servidor,$usuario,$contrasena,$basededatos);
mysqli_set_charset($conexion, "utf8");
$peticion = "UPDATE pedidos SET estado=1 WHERE id = '".$_GET['id']."'";
$resultado = mysqli_query($conexion, $peticion);
mysqli_close($conexion);

?>
<script>
window.location = "../admin/pedidos.php";
</script>