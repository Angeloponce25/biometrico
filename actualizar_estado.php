<?php
include('conexion.php');
$pdo = connect();


$sql = "SELECT * FROM estado ORDER BY id ASC";
        $query = $pdo->prepare($sql);
        $query->execute();
        $list = $query->fetchAll();
        foreach ($list as $rs) {
            echo $rs['estado'];
        }
if ($rs['estado'] == "ABIERTO") {
    $sql = "UPDATE estado SET estado = 'CERRADO' WHERE id = 1";
	$query = $pdo->prepare($sql);
	$query->execute();
}
else
{
    $sql = "UPDATE estado SET estado = 'ABIERTO' WHERE id = 1";
	$query = $pdo->prepare($sql);
	$query->execute();
}
?>