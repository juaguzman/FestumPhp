<?php

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
   darPrograma();
}

function darPrograma()
{
  
    $fecha = $_POST['fecha'];


        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        $datos = array();
        
 $result1 = $mysqli->query("SELECT * FROM programa WHERE fecha ='$fecha';");
 
while ($row = mysqli_fetch_object($result1)) 
                {
                    $datos[] = $row;
                }
 
 echo json_encode($datos);  
}

?>