<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
    insertarUsuario();
}

function insertarUsuario()
{
   
$nombre = $_POST['nombre'];
$id     = $_POST['id'];
$fecha_nas=$_POST['fechaN'];


        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        
      
       
            echo "$nombre de usuario";
            echo "$id de usuario";
            echo "$fecha_nas de usuario";
               $query ="INSERT INTO usuario (id, nombre, fecha_nas) VALUES ($id, '$nombre', '$fecha_nas');";
                
               mysqli_query($mysqli, $query) or die(mysqli_errno($mysqli));
               mysqli_close($mysqli);
            
            
}