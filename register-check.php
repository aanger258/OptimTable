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
			$sql = "INSERT INTO ".$typeOfAccount."s"." (username, password, name, surname, email) VALUES ('".$username."', '".md5($psw)."', '".$name."', '".$surname."', '".$email."')";
			$conn->query($sql);
		}
	}
?>