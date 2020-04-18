<?php 
$p = $_POST['parametro'];
if($p){
  $array = explode("-", $p);

  //servicio de conexion a la base de datos
  include 'conf/serv.php';

  //base de datos db_ts
  $conn	=	conecta_bd();
  $q = "SELECT * FROM audiovisuales where id_nivel = ".$array[0]." and id_grado = ".$array[1]." and id_asignatura = ".$array[2];
  $myArray=[];

    if ($result = mysqli_query($conn,$q)) {
      while($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myArray[] = $row;
      }
    }
    $jsonencoded = json_encode($myArray,JSON_UNESCAPED_UNICODE);
    $data = str_replace("\\/", "/", $jsonencoded);
}

?>