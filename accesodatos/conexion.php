<?php
	//conectar a servidor/base de datos de MySQL
	function conectar()
	{
		mysql_connect('localhost','root','00210104') or die('error'); //conectar a servidor
		mysql_select_db('taller') or die ('error en la base de datos'); //seleccionar base de datos
	}
	//ejecutar consulta y regresar tabla resultante
	function leerTabla($consulta)
	{
		conectar(); //conectar a base de datos
		return mysql_query($consulta); //regresar resultado de consulta
	}
	//ejecutar consulta y regresar primer registro de la tabla resultante
	function leerRegistro($consulta)
	{  
		$tabla = leerTabla($consulta);//ejecutar consulta
		//verificar si tiene registros
		if (mysql_num_rows($tabla)>0)
			return mysql_fetch_assoc($tabla); //regresar primer registro
		else
			return null; // tabla sin registros, regresar nulo
	}
?>