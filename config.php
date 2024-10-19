<?php 

$connect = mysqli_connect("localhost", "root", "", "kelas11");

    if(!$connect){
        die(mysqli_error($connect));
    }else {
        echo "";
    }

?>