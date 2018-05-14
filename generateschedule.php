<?php
  	require 'connection.php';
  	require 'algorithm.php';
  	if(isset($_POST['newsch'])){
  		$sqlstd = "TRUNCATE TABLE `schedulegroups`";
  		$conn->query($sqlstd);
  		var_dump($sqlstd);
  		$sqltch = "TRUNCATE TABLE `scheduleteachers`";
  		$conn->query($sqltch);
  		var_dump($sqltch);
  		header('Location: adminpage.php');
  		exit;
  	}
?>
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
  	?>
    <body>
  	<?php
  		$sql1="SELECT * FROM schedulegroups";
		$result1 = $conn->query($sql1);

		$sql2 = "SELECT * FROM scheduleteachers";
		$result2 = $conn->query($sql2);

		if($result1->num_rows>0 || $result2->num_rows>0)
		{
			echo "<div class=\"container\"><div class=\"row\"><div class=\"col-md-3\"></div><div class=\"col-md-6\"><h1 style=\"text-align: center\">There is already a schedule!</h1>";
			echo "<h3 style=\"text-align: center\">If you want to generate another table first delete the previous generated schedule by pressing the button below:</h3>";
			echo "<br><form method=\"POST\" style=\"text-align: center\"><button  name=\"newsch\" class=\"btn btn-primary\">Empty tables for new schedule</button></form></div><div class=\"col-md-3\"></div></div></div>";
		}
		elseif($result1->num_rows==0 && $result2->num_rows==0){
			echo "<h1 style=\"text-align: center\">The schedule was created!</h1>";
			generateSchedule();
		}

  	?>
    </body>
</html>