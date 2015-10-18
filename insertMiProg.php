<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
    insertarMiPrograma();
}

function insertarMiPrograma()
{
   
$id_prog = $POST['id_prog'];
$fecha= $POST['fecha'];
$evento =$POST['evento'];
$descripcion=$POST['descripcion'];
$lugar=$POST['lugar'];
$horaInicio=$POST['horaInicio'];
$horaFin=$POST['horaFin'];
$categoria=$POST['categoria'];
$usuario_id=$POST['usuario_id'];

        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        
      
       
            echo "$id_prog de porgrama";
            echo "$fecha de programa";
            echo "$evento de programa";
            echo "$descripcion de programa";
            echo "$lugar de programa";
            echo "$horaInicio de programa";
            echo "$horaFin de programa";
            echo "$categoria de programa";
            echo "$usuario_id de usuario";
               $query ="INSERT INTO programa (id_prog, fecha, evento, descripcion, lugar, horaInicio, horaFin, categoria, usuario_id) VALUES ($id_prog, '$fecha', '$evento', '$descripcion', '$lugar', '$horaInicio', '$horaFin' '$categoria', '$usuario_id');";
                
               mysqli_query($mysqli, $query) or die(mysqli_errno($mysqli));
               mysqli_close($mysqli);
           
            
}

