<?php

include('conexion.php');
$pdo = connect();

try {
    
    $sql = "INSERT INTO datos_personal (nombres_completos, cargo, email, direccion,telefono,datos_emergencia) VALUES (:nombres_completos,:cargo,:email,:direccion,:telefono,:datos_emergencia)";
    $query = $pdo->prepare($sql);
    $query->bindParam(':nombres_completos', $_POST['nombres_completos'], PDO::PARAM_STR);
	$query->bindParam(':cargo', $_POST['cargo'], PDO::PARAM_STR);
	$query->bindParam(':email', $_POST['email'], PDO::PARAM_STR);
    $query->bindParam(':direccion', $_POST['direccion'], PDO::PARAM_STR);
    $query->bindParam(':telefono', $_POST['telefono'], PDO::PARAM_STR);
    $query->bindParam(':datos_emergencia', $_POST['datos_emergencia'], PDO::PARAM_STR);
	$query->execute();
}
catch (PDOException $e) {
	echo 'PDOException : '.  $e->getMessage();
}
?>