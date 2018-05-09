<?php require 'login.php'; ?>
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
    <br>
  	<div class="container">
  		<div class="row">
  			<div class="col-md-4">		
  			</div>
  			<div class="col-md-4">
          <div class="container">
            <p>Please fill in this form to sign in an account.</p>
            <hr>
    				<form method="POST"  class="form form-login">
              <label for="username"><b>Username</b></label>
    					<input class="form-control" type="text" name="username" placeholder="Enter username">
    					<?php 
    						if($error1 != '')
    							echo $error1;
    					?>
              <label for="password"><b>Password</b></label>
    					<input class="form-control" type="password" name="password" placeholder="Enter password">
    					<?php 
    						if($error2 != '')
    							echo $error2;
    					?>
              <label for="typeOfAccount"><b>Type of Account</b></label>
    					<div class="row">
    						<div class="col-md-2">
    						</div>
  	  					<div class="col-md-3">
  		  					<input class="form-check-input" type="radio" name="typeOfAccount" id="student" value="student">
  		  					<label class="form-check-label" for="student">Student</label>
  		  				</div>
  		  				<div class="col-md-3">
  		  					<input class="form-check-input" type="radio" name="typeOfAccount" id="teacher" value="teacher">
  		  					<label class="form-check-label" for="teacher">Teacher</label>
  	  					</div>
                <div class="col-md-3">
                  <input class="form-check-input" type="radio" name="typeOfAccount" id="admin" value="admin">
                  <label class="form-check-label" for="admin">Admin</label>
                </div>
    					</div>
    					<?php 
    						if($error3 != '')
    							echo $error3;
    						if($error4 != '')
    							echo $error4;
    						if($success1 != '')
    							echo $success1;
    					?>
              <p></p>
    					<button name="login" class="btn btn-primary">Login</button>
              <hr>
    					<p>If you don't have an account register here: </p>
    					<a class="btn btn-primary" href="register.php">Register</a>
    				</form>
          </div>	
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