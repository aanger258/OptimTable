<?php
	session_start();
    $host="localhost";
    $user="root";
    $password="";
    $mydb="optimtable";

    $conn = new mysqli($host, $user, $password,$mydb);

    if ($conn->connect_error)
        die("Connection failed: " . $conn->connect_error);
?>