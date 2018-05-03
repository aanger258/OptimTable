<?php
	$success1 = $error1 = $error2 = $error3 = $error4 = '';
	require 'login.php';
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
  			<div class="col-md-4">		
  			</div>
  			<div class="col-md-4">
  				<form method="POST"  class="form form-login">
  					<input class="form-control" type="text" name="username" placeholder="Enter username">
  					<?php 
  						if($error1 != '')
  							echo "<p style='color:red'>".$error1."</p>" 
  					?>
  					<input class="form-control" type="password" name="password" placeholder="Enter password">
  					<?php 
  						if($error2 != '')
  							echo "<p style='color:red'>".$error2."</p>";
  					?>
  					<div class="row">
  						<div class="col-md-2">
  						</div>
	  					<div class="col-md-4">
		  					<input class="form-check-input" type="radio" name="typeOfAccount" id="student" value="student">
		  					<label class="form-check-label" for="student">Student</label>
		  				</div>
		  				<div class="col-md-4">
		  					<input class="form-check-input" type="radio" name="typeOfAccount" id="teacher" value="teacher">
		  					<label class="form-check-label" for="teacher">Teacher</label>
	  					</div>
  					</div>
  					<?php 
  						if($error3 != '')
  							echo "<p style='color:red'>".$error3."</p>" ;
  						if($error4 != '')
  							echo "<p style='color:red'>".$error4."</p>";
  						if($success1 != '')
  							echo "<p style='color:green'>".$success1."</p>";
  					?>
  					<button name="login" class="btn btn-primary">Login</button>

  					<p>If you don't have an account register here: </p>
  					<button name="register" class="btn btn-primary">Register</button>
  				</form>	
  			</div>
  			<div class="col-md-4">		
  			</div>
  		</div>
  	</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>