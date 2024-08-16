<?php
//Bu sayfa QR kodunun veritabanında olup olmadığını kontrol eder
//bağlantı sağlama
include("dbconnection.php");
$con=dbconnection();
//echo $_POST['tur'];
//die;
$table_no="47499";
echo $table_no;
if(isset($_POST['tur'])){

    
    //echo $prd_type;
    //$prd_type="Pideler";


    //SQL sorgusu
    $query ="SELECT table_name FROM table WHERE table_no='".$table_no."'";
    $exe =mysqli_query($con,$query);
    $row=mysqli_fetch_assoc($exe);

    echo $row['table_name'];
       //json encode
    print(json_encode($row['table_name']));
}else die;
?>
