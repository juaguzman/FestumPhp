<?php

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    require './conectar.php';
    insertarVoto();
}

function insertarVoto()
{
   
$voto = $_POST['valor'];
$id     = $_POST['id_carrosa'];
$foto=$_POST['foto'];
$id_usu = $_POST['id_usu'];


        $mysql = new conexion();
        $mysqli=$mysql->conctar();
 
        
      
       
            echo "$voto de usuario";
            echo "$id de usuario";
            echo "$foto de usuario";
               $query ="INSERT INTO `carnaval`.`voto` (id_carrosa, valor, foto, usuario_id) VALUES ('$id', $voto, '$foto', $id_usu);;";
                
               mysqli_query($mysqli, $query) or die(mysqli_errno($mysqli));
               mysqli_close($mysqli);
            
            
}
