<?php
	require("connection.php");
	$error1 = $error2 = $error3 = $error4 = $error5 = $error6 = $error7 = $error8 = $error9 = $err1  = $err2 = '';
	if(isset($_POST["register"]))
	{
		$name = $conn->real_escape_string($_POST["name"]);
		$surname = $conn->real_escape_string($_POST["surname"]);
		$psw = $conn->real_escape_string($_POST["psw"]);
		$psw_repeat = $conn->real_escape_string($_POST["psw-repeat"]);
		$email = $conn->real_escape_string($_POST["email"]);
		if(!empty($_POST['typeOfAccount']))
			$typeOfAccount = $conn->real_escape_string($_POST['typeOfAccount']);
		if(empty($_POST["email"])){
			$error1 = '<font color="red">*Please enter your email!</font><br>';
		}
		else{
			$email_copy = $email;
			$result = explode('@',$email_copy);
			if(sizeof($result)<2)
				$error9 = '<font color="red">*The email format is wrong!</font><br>';
			else{
				$length = sizeof($result);
				$result1 = explode('.',$result[$length-1]);
				if(sizeof($result1)<2)
					$error9 = '<font color="red">*The email format is wrong!</font><br>';
			}
		}
		if(empty($_POST["name"])){
			$error2 = '<font color="red">*Please enter your name!</font><br>';
		}
		if(empty($_POST["surname"])){
			$error3 = '<font color="red">*Please enter your surname!</font><br>';
		}
		if(empty($_POST['typeOfAccount'])){
			$error4 = '<font color="red">*You have to choose a type of account!</font><br>';
		}
		if(empty($_POST["psw"])){
			$error5 = '<font color="red">*Please enter a password!</font><br>';
		}
		elseif(strlen($_POST["psw"])<4){
			$error6 = '<font color="red">*Your password must be at least 4 characters long!</font><br>';
		}	
		if(empty($_POST["psw-repeat"])){
			$error7 = '<font color="red">*Please repeat the password!</font><br>';
		}
		if($psw != $psw_repeat){
			$error8 = '<font color="red">*The passwords don\'t match!</font><br>';
		}
		if(!empty($_POST['typeOfAccount'])){
			$sql = "SELECT name,surname,email FROM ".$typeOfAccount."s"." WHERE name = '".$name."' AND surname = '".$surname."' AND email = '".$email."'";
			$result = $conn->query($sql);
				if(!empty($result))
				while($row = $result -> fetch_assoc())
				{
					if($row["name"]==$name && $row["surname"]==$surname)
						$err2='<font color="red">*This name already in use</font><br>';
					if($row["email"]==$email)
						$err1='<font color="red">*This email already in use</font><br>';
				}
		}
		if($error1 == '' && $error2 == '' && $error3 == '' && $error4 == '' && $error5 == '' && $error6 == '' && $error7 == '' && $error8 == '' && $err1 == '' && $err2 == '')
			{
				$username =  strtolower($name) . '.' . strtolower($surname);
				echo $username;
				$sql = "INSERT INTO ".$typeOfAccount."s"." (username, password, name, surname, email) VALUES ('".$username."', '".md5($psw)."', '".$name."', '".$surname."', '".$email."')";
				var_dump($sql);
				$conn->query($sql);
			}
	}
?>
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
						<hr>

						<button type="submit" name="register" class="btn btn-primary">Register</button>
					</div>

					<div class="container signin">
						<p>Already have an account? <a href="index.php" class="btn btn-primary">Sign in</a>.</p>
					</div>
				</form>
			</div>
		  	<div class="col-md-4">		
		  	</div>
	  	</div>
  	</div>
</body>
</html>
