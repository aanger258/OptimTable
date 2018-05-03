<?php
	require("conn.php");
	require("functions.php");
	$error1 = $error2 = $error3 = $error4 = $error5 = $error6 = $error7 = $err1 = $error8 = $error9 = $error10 = $error11 = $error12 = "";
	if(isset($_POST["register"]))
	{
		$name = clear($_POST["name"]);
		$surname = clear($_POST["surname"]);
		$psw = clear($_POST["psw"]);
		$psw_repeat = clear($_POST["psw-repeat"]);
		$email = clear($_POST["email"]);
		if(!empty($_POST['typeOfAccount']))
			$typeOfAccount = $conn->real_escape_string($_POST['typeOfAccount']);
		if(empty($_POST['typeOfAccount']))
			$error4 = "*You have to choose a type of account!";
		if(empty($_POST["name"]))
		{
			$error1 = '<font color="red">*Please enter your name!</font><br>';
		}
		if(empty($_POST["surname"]))
		{
			$error2 = '<font color="red">*Please enter your surname!</font><br>';
		}
		if(empty($_POST["psw"]))
		{
			$error3 = '<font color="red">*Please enter a password!</font><br>';
		}
		elseif(strlen($_POST["psw"])<4)
		{
			$error4 = '<font color="red">*Your password must be at least 4 characters long!</font><br>';
		}	
		if(empty($_POST["psw-repeat"]))
		{
			$error5 = '<font color="red">*Please repeat the password!</font><br>';
		}
		if($psw != $psw_repeat)
		{
			$error6 = '<font color="red">*The passwords don\'t match!</font><br>';
		}
		if(!empty($_POST['typeOfAccount'])){
		$sql = "SELECT name,surname FROM '".$typeOfAccount."' WHERE name = '".$name."' AND surname = '".$surname."'";
		$result = $conn->query($sql);
			while($row = $result -> fetch_assoc())
			{
				if($row["name"]==$name && $row["surname"]==$surname)
					$err1='<font color="red">*Username already in use</font><br>';
			}
		}
		$sql = "SELECT code,used,name FROM clients WHERE code = '".$code."'";
		$result = $conn->query($sql);
		while($row = $result -> fetch_assoc())
		{
			if($row["used"] == 1)
				$error6 = '<font color="red">*Code is already in use!</font><br>';
			elseif($row["code"] != $code)
				$error7 = '<font color="red">*You entered an invalid code!</font>';
			elseif($error1 == "" && $error2 == "" && $error3 == "" && $error4 == "" && $error5 == "" && $error6 == "" && $error7 == "" && $err1 == "" && $error8 == "" && $error9 == "" && $error10 == "")
			{
				$sql = "INSERT INTO users (username, password,privileges) VALUES ('".$user."', '".md5($pass)."', '".clear($row["name"])."')";
				$conn->query($sql);
				$sql = "UPDATE clients SET used = '1' WHERE code = '".$row["code"]."'";
				$conn->query($sql);
				$sql = "CREATE TABLE ".clear($row["name"])."(id int AUTO_INCREMENT, client_name text, date date, start_hour time, finish_hour time,vip boolean, phone text, mail text, PRIMARY KEY (id));";
				$_SESSION["client"]=$row["name"];
				$_SESSION["logged"]=1;
				$conn->query($sql);
			}
		}
		$sql = "SELECT code,used,name FROM employees WHERE code = '".$code."'";
		$result = $conn->query($sql);
		while($row = $result -> fetch_assoc())
		{
			if($row["used"] == 1)
				$error6 = '<font color="red">*Code is already in use!</font><br>';
			elseif($row["code"] != $code)
				$error7 = '<font color="red">*You entered an invalid code!</font><br>';
			elseif($error1 == "" && $error2 == "" && $error3 == "" && $error4 == "" && $error5 == "" && $error6 == "" && $error7 == "" && $err1 == "")
			{
				$sql = "INSERT INTO users (username, password,privileges) VALUES ('".$user."', '".md5($pass)."', '2')";
				$conn->query($sql);
				$_SESSION["employee"]=1;
				$_SESSION["logged"]=1;
				$sql = "UPDATE employees SET used = '1' WHERE code = '".$row["code"]."'";
				$conn->query($sql);
			}
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
	<form>
	<div class="container">
		<p>Please fill in this form to create an account.</p>
		<hr>

		<label for="email"><b>Email</b></label>
		<input type="text" placeholder="Enter Email" name="email" required>
		
		<label for="name"><b>Name</b></label>
		<input type="text" placeholder="Enter name" name="name" required>
		
		<label for="surname"><b>Surname</b></label>
		<input type="text" placeholder="Enter surname" name="surname" required>

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

		<label for="psw"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="psw" required>

		<label for="psw-repeat"><b>Repeat Password</b></label>
		<input type="password" placeholder="Repeat Password" name="psw-repeat" required>
		<hr>

		<button type="submit" name="register" class="registerbtn">Register</button>
	</div>

	<div class="container signin">
		<p>Already have an account? <a href="#">Sign in</a>.</p>
	</div>
	</form>
</body>
</html>
