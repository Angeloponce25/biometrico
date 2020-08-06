<?php
// PDO conexion data base
function connect() {
	$hostname = 'localhost';
	$name = 'gsb_asistencia';
	$user = 'asistencia_user';
	$password = 'S1st3m4s2018';
    return new PDO('mysql:host='.$hostname.';dbname='.$name, $user, $password, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
}
?>