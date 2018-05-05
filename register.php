<?php require 'register-check.php'; ?>
<!doctype html>
<html>
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
				<form method="POST" class="form form-login">
					<div class="container">
						<p>Please fill in this form to create an account.</p>
						<hr>

						<label for="email"><b>Email</b></label>
						<input class="form-control"  type="text" placeholder="Enter Email" name="email">
						<?php 
	  						if($error1 != '' || $err1 != '' || $error9 != '')
	  							echo $error1 . $err1 . $error9; 
  						?>			
						<label for="name"><b>Name</b></label>
						<input class="form-control" type="text" placeholder="Enter name" name="name">
						<?php 
	  						if($error2 != '' || $err2 != '')
	  							echo $error2 . $err2; 
  						?>						
						<label for="surname"><b>Surname</b></label>
						<input class="form-control" type="text" placeholder="Enter surname" name="surname">
						<?php 
	  						if($error3 != '')
	  							echo $error3; 
  						?>

  						<div class="row">
				  			<div class="col-md-2">
				  			</div>
					  		<div class="col-md-8">
					  			<label for="typeOfAccount"><b>Choose you type of account:</b></label>
						  	</div>
						  	<div class="col-md-2">
						  		
					  		</div>
				  		</div>
					
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
	  						if($error4 != '')
	  							echo $error4;
  						?>
  						<label for="group"><b>Select your group:</b></label> <br>
  						<select name='group'>
  							<option value="">Choose!</option>
  						<?php
  							$sql ="SELECT * FROM groups";
  							echo $sql;
  							$result = $conn->query($sql);
  							
  							while($row = $result -> fetch_assoc())
  							{
  								echo "<option value='" . $row['id'] . "'>" . $row['groupName'] . "</option>";
  							}
  						?>
  						</select>
 						<br>
  						<?php 
	  						if($error10 != '')
	  							echo $error10;
  						?>

						<label for="psw"><b>Password</b></label>
						<input class="form-control"  type="password" placeholder="Enter Password" name="psw">
						<?php 
	  						if($error5 != '' || $error6 != '')
	  							echo $error5 . $error6; 
  						?>
						<label for="psw-repeat"><b>Repeat Password</b></label>
						<input class="form-control"  type="password" placeholder="Repeat Password" name="psw-repeat">
						<?php 
	  						if($error7 != '' || $error7 != '')
	  							echo $error7 . $error8; 
  						?>
  						<p></p>
						<button type="submit" name="register" class="btn btn-primary">Register</button>
					</div>
					<hr>
					<div class="container signin">
						<p>Already have an account?</p>
						<a href="index.php" class="btn btn-primary">Sign in</a>
					</div>
				</form>
			</div>
		  	<div class="col-md-4">		
		  	</div>
	  	</div>
  	</div>
</body>
</html>
