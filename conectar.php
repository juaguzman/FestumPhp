<?php

class conexion
{
    
    
    public function conctar()
    {
        $mysqli = new mysqli("mysql17.000webhost.com", "a9223813_admin", "admin3214", "a9223813_usuario");
/* comprobar la conexión */
        if (mysqli_connect_errno()) 
            {
        printf("Falló la conexión: %s\n", mysqli_connect_error());
        exit();
            }
            
      return $mysqli;
    }
    
   
       
}