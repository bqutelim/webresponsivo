<?php
	require_once('conexion.php'); //utilizar conexiones.php
	
	//regresa tabla de equipos
	function listadoEquipos()
	{
		//consulta
		$consulta = "select equ_id, equ_modelo, mar_nombre, equ_foto, equ_precio
					from equipos, marcas where equ_id_marca=mar_id 
					order by mar_nombre, equ_modelo ";
		//ejecutar consulta
		return leerTabla(($consulta));
	}
	//detalle de un equipo
	function detalleEquipo($id)
	{
		//consulta
		$consulta = "select equ_modelo, mar_nombre, equ_foto, equ_precio
					from equipos, marcas where equ_id_marca=mar_id 
					and equ_id='$id'";
		//ejecutar consulta
		return leerRegistro(($consulta));
	}
	
?>