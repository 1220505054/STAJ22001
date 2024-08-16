<?php 
//Bu API menüleri çeker
//bağlantı sağlama
include("dbconnection.php");
$con=dbconnection();
$query ="SELECT var_type,var_image FROM variable_type";
$exe =mysqli_query($con,$query);

//Dizi oluşturma
$arr=[];
while ($row=mysqli_fetch_array($exe)) {


    $arr[]=$row;
    # code...
}
   //json encode
print(json_encode($arr));




?>