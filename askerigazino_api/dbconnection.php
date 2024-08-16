<?php

//Burada database connection yapılır
//database ile ilgili gereklilikler girilir
function dbconnection(){
    $conn=mysqli_connect("localhost","root","","siparis");
    return $conn;
}




?>