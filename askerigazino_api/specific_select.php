<?php
//Bu web API menü adına göre ürün listelenmesini sağlar
//bağlantı sağlama
include("dbconnection.php");
$con=dbconnection();
//echo $_POST['tur'];
//die;
if(isset($_POST['tur'])){

    $prd_type=$_POST['tur'];
    //echo $prd_type;
    //$prd_type="Pideler";

    //SQL sorgusu
    $query ="SELECT * FROM products WHERE prd_type='".$prd_type."'";
    $exe =mysqli_query($con,$query);
//Dizi oluşturma
    $arr=[];
    while ($row=mysqli_fetch_array($exe)) {

   //diziye atanır
        $arr[]=$row;
        # code...
    }
       //json encode
    print(json_encode($arr));
}else die;
?>

