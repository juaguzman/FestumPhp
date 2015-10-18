<?php

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
    darDescripcion();
}

function darDescripcion()
{
  
    $id = $_POST['id'];


        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        $datos = array();
        
 $result1 = $mysqli->query("SELECT * FROM programa WHERE id ='$id';");
 
while ($row = mysqli_fetch_object($result1)) 
                {
                    $datos[] = $row;
                }
 
 echo json_encode($datos);  
}

?>
