<!DOCTYPE html>
<?php
	require_once('accesodatos/equipos.php'); //utilizar archivo de equipos
	//leer parámetro id
	$id = $_GET['id'];
	//leer detalle del equipo
	$registro = detalleEquipo($id);
?>
<html>
	<head>
		<title>RavnCellular</title>
		<link href="css/estilo.css" rel="stylesheet"></link>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
	</head>
	<body>
		<div id="contenedor">
			<header><a href="index.php"><img src="imagenes/logo.png" border="0px"></img></a></header>
			<div id="encabezado">Equipos</div>
			<div id="texto">
			<?php if ($registro!=null) { ?>
			<img src="fotos/<?php echo $registro['equ_foto']; ?>"></img>
			<?php } else echo 'Equipo Inexistente'; ?>
			</div>	
			<div style="clear:both;"></div>
		</div>
		<div style="clear:both;"></div>
		<footer><big>Universidad Tecnol&oacute;gica de Tijuana</big><br>Tecnolog&iacute;s de la Informaci&oacute;n y Comunicaci&oacute;n<br>2013</footer>
	</body>
</html>
