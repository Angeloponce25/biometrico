<?php
header('Content-Type: application/xls;charset=utf-8');
header('Content-Disposition: attachment; filename=asistencias.xls');

include('conexion.php');
$pdo = connect();
$ejecutar = "SELECT * FROM asistencias ORDER BY id ASC";
        $ejecutar = $pdo->prepare($ejecutar);
        $ejecutar->execute();
        $tabla_excel = $ejecutar->fetchAll();  

?>

<table class="table">
        <thead>
            <tr>
            <th scope="col">Fecha - Hora</th>
            <th scope="col">Nombres</th>
            <th scope="col">Apellidos</th>
            <th scope="col">DNI</th>
            <th scope="col">TIPO</th>
            </tr>
        </thead>
        <tbody>
                    <?php foreach ($tabla_excel as $excel) 
                        {
                            echo '<tr>';
                            echo '<th scope="row">'.$excel['fecha_hora'].'</th>';
                            echo '<td>'.mb_convert_encoding($excel['nombres'],'utf-16','utf-8').'</td>';
                            echo '<td>'.mb_convert_encoding($excel['apellidos'],'utf-16','utf-8').'</td>';
                            echo '<td>'.$excel['dni'].'</td>';
                            echo '<td>'.$excel['tipo'].'</td>';
                            echo '</tr>';
                        }
                    ?>
        </tbody>
        </table> 