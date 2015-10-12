<?php

$evento = $POST['evento'];
$descripcion = $POST['descripcion'];
$fecha=$POST['fecha'];
$lugar = $POST['lugar'];
$horaIncio = $POST['horaI'];
$horaFin = $POST['horaF'];

include './conectar.php';
        $mysql = new conexio111n();
        $mysqli=$mysql->conctar();
 
        $datos = array();
        
        if(!isset($evento)| !isset($descripcion) | !isset($lugar)| !isset($horaIncio) | !isset($horaFin) )
        {
            echo "Error falta un campo de la informacion";
        }
        else 
            {
                $sql ="SELECT `carnaval`.`usuario` ('evento', 'descripcion', 'lugar','horaI','horaF') WHERE($evento, '$descripcion', '$lugar','$horaIncio','$horaFin');";
                $consulta=  mysql_query($sql);
                if ($consulta)
            {
                echo "TRUE";
            }
            else 
            {
                echo "FALSE";
            }
            }