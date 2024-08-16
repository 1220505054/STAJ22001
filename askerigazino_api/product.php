<?php

//bağlantı sağlama
include("dbconnection.php");
$con=dbconnection();
//echo $_POST['tur'];
//die;
if(isset($_POST['tur'])){

    $prd_name=$_POST['tur'];
    //echo $prd_type;
    //$prd_type="Pideler";

    //SQL sorgusu
    $query ="SELECT * FROM products WHERE prd_name='".$prd_name."'";
    $exe =mysqli_query($con,$query);
//Dizi oluşturma
    $arr=[];
    while ($row=mysqli_fetch_array($exe)) {


        $arr[]=$row;
        # code...
    }
    //json encode
    print(json_encode($arr));
}else die;
?>
