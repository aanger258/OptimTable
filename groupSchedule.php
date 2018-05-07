<?php
  require 'connection.php';
  $get = explode("," , $_GET["id"]); 
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

  	<body>
  		<div class="container">
        <div class="row">
          <div class="col-md-2">    
          </div>
          <div class="col-md-8">
            <h3 style="text-align:center;">Schedule of the <?php echo $get[1];?></h3> <br>
            <h3 style="text-align:center;">Specialization <?php echo $get[2];?></h3> <br>
          </div>
          <div class="col-md-2">    
          </div>
        </div>


  	</body>
</html>
