<!doctype html>
<html lang="en">
	<head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="css/bootstrap.css">
	    <link rel="stylesheet" href="css/styles.css">

	    <title>OptimTable</title>
  	</head>
  	<?php 
  		include "navbar.php";
  		require 'connection.php';
  	?>
    <body>
  	<?php
  		$sql1="SELECT * FROM schedulegroups";
		$result1 = $conn->query($sql1);

		$sql2 = "SELECT * FROM scheduleteachers";
		$result2 = $conn->query($sql2);

		if($result1->num_rows>0 || $result2->num_rows>0)
		{
			echo "There is already a schedule!";
		}

  	?>
    	
    </body>
</html>