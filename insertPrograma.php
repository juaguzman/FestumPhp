<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
    insertarPrograma();
}

function insertarPrograma()
{
   
$id = $POST['id'];
$fecha= $POST['fecha'];
$evento =$POST['evento'];
$descripcion=$POST['descripcion'];
$lugar=$POST['lugar'];
$horaInicio=$POST['horaInicio'];
$horaFin=$POST['horaFin'];
$categoria=$POST['categoria'];



        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        
      
       
            echo "$id de porgrama";
            echo "$fecha de programa";
            echo "$evento de programa";
            echo "$descripcion de programa";
            echo "$lugar de programa";
            echo "$horaInicio de programa";
            echo "$horaFin de programa";
            echo "$categoria de programa";
               $query ="INSERT INTO programa (id, fecha, evento, descripcion, lugar, horaInicio, horaFin, categoria) VALUES ($id, '$fecha', '$evento', '$descripcion', '$lugar', '$horaInicio', '$horaFin' '$categoria');";
                
               mysqli_query($mysqli, $query) or die(mysqli_errno($mysqli));
               mysqli_close($mysqli);
            
            
}





