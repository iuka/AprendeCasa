<?php 
include 'conf/serv.php';

//base de datos db_ts
$conn	=	conecta_bd();
/*
SELECT cat_nivel.*, cat_grado.*, cat_asignatura.* FROM `audiovisuales`
INNER JOIN cat_nivel on cat_nivel.id_nivel = audiovisuales.id_nivel
INNER JOIN cat_grado on cat_grado.id_grado = audiovisuales.id_grado
INNER JOIN cat_asignatura on cat_asignatura.id_asignatura = audiovisuales.id_asignatura
GROUP BY cat_nivel.id_nivel, cat_grado.id_grado, cat_asignatura.id_asignatura
ORDER BY cat_nivel.id_nivel, cat_asignatura.id_asignatura

*/ 

$q = "SELECT cat_nivel.*, cat_grado.*, cat_asignatura.* FROM `audiovisuales`
INNER JOIN cat_nivel on cat_nivel.id_nivel = audiovisuales.id_nivel
INNER JOIN cat_grado on cat_grado.id_grado = audiovisuales.id_grado
INNER JOIN cat_asignatura on cat_asignatura.id_asignatura = audiovisuales.id_asignatura
GROUP BY cat_nivel.id_nivel, cat_grado.id_grado, cat_asignatura.id_asignatura
ORDER BY cat_nivel.id_nivel,cat_grado.id_grado, cat_asignatura.id_asignatura";
$myArray=[];


if ($result = mysqli_query($conn,$q)) {
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
      $myArray[] = $row;
    }
  }
  
  //para mostrar en navegador
  //$arbol_php = json_encode($myArray);
  //para guardar en archivo json
  $jsonencoded = json_encode($myArray,JSON_UNESCAPED_UNICODE);
  $data = str_replace("\\/", "/", $jsonencoded);
  //echo $data;
  
?>