<?php

$nombre = $POST['nombre'];
$id     = $POST['id'];
$fecha_nas=$POST['fechaN'];

include './conectar.php';
        $mysql = new conexio111n();
        $mysqli=$mysql->conctar();
 
        $datos = array();
        
        if(!isset($nombre)| !isset($nombre) | !isset($nombre) )
        {
            echo "Error falta un campo de la informacion";
        }
        else 
            {
                $sql ="INSERT INTO `carnaval`.`usuario` (`id`, `nombre`, `fecha_nas`) VALUES($id, '$nombre', '$fecha_nas');";
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