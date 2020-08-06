<?php
date_default_timezone_set('America/Lima');
include('conexion.php');
$pdo = connect();

$fecha = date("d") . "/" . date("m") . "/" . date("Y") . " - ". date("g:i A") ;

try {
    
    $sql = "INSERT INTO asistencias (nombres,apellidos,tipo,dni,ip) VALUES (:nombres,:apellidos,:tipo,:dni,:ip)";
    $query = $pdo->prepare($sql);
    $query->bindParam(':nombres', $_POST['nombres'], PDO::PARAM_STR);
	$query->bindParam(':apellidos', $_POST['apellidos'], PDO::PARAM_STR);
	$query->bindParam(':tipo', $_POST['tipo'], PDO::PARAM_STR);
	$query->bindParam(':dni', $_POST['dni'], PDO::PARAM_STR);
	$query->bindParam(':ip', $fecha, PDO::PARAM_STR);
	$query->execute();
}
catch (PDOException $e) {
	echo 'PDOException : '.  $e->getMessage();
	return false;
}
?>