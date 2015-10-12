<?php

include './conectar.php';
        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        $datos = array();
        
 $result1 = $mysqli->query("SELECT * FROM `programa`");
 
while ($row = mysqli_fetch_object($result1)) 
                {
                    $datos[] = $row;
                }
 
 echo json_encode($datos);