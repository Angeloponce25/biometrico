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
?>