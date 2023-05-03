<?php
    $server ="localhost:9090";
    $username ="root";
    $password ="";
    $database ="aaroh-clinic";   

    $conn = mysqli_connect($server, $username, $password, $database);

    if(!$conn){
        die("Failed to Connect".mysqli_connect_error());
    }
    // else{
    //     echo "Database connection successfull";
    // }       
?>