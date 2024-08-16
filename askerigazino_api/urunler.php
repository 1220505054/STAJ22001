<?php 

//Bu web API ürünleri seçer
//bağlantı sağlama
include("dbconnection.php");
$con=dbconnection();

//SQL sorgusu
$query ="SELECT * FROM products";
$exe =mysqli_query($con,$query);
//Dizi oluşturma
$arr=[];
while ($row=mysqli_fetch_array($exe)) {

//Diziye atama
    $arr[]=$row;
    # code...
}
   //json encode
print(json_encode($arr));




?>