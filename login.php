<?php
	require 'connection.php';
	if(isset($_POST['login'])){
		$username = $conn->real_escape_string($_POST['username']);
		$password   = $conn->real_escape_string($_POST['password']);
		if(!empty($_POST['typeOfAccount']))
			$typeOfAccount = $conn->real_escape_string($_POST['typeOfAccount']);
		$found = false;  
		if(empty($_POST['username']))
			$error1 = '<font color="red">*You have to enter an username!</font><br>';
		if(empty($_POST['password']))
			$error2 = '<font color="red">*You have to enter a password!</font><br>';
		if(empty($_POST['typeOfAccount']))
			$error3 = '<font color="red">*You have to choose a type of account!</font><br>';
		if($error1 == '' && $error2 == '' && $error3 == ''){
			if($typeOfAccount == "student"){
				$sql = "SELECT username, password FROM students";
				$result = $conn->query($sql);
				if ($result->num_rows > 0) {
					while($row = $result->fetch_assoc()){
						if($row['username'] == $username && $row['password'] == md5($password))
							$found = true;
					}
				}
				if($found == false)
					$error4 = '<font color="red">*The data you have introduced is wrong!</font><br>';
				else
					$success1 = '<font color="green">*You have successfully logged in!</font><br>';
			}
			if($typeOfAccount == "teacher"){
				$sql = "SELECT * FROM teachers";
				$result = $conn->query($sql);
				if ($result->num_rows > 0) {
					while($row = $result->fetch_assoc()){
						if($row['username'] == $username && $row['password'] == md5($password))
							$found = true;
					}
				}
				if($found == false)
					$error4 = '<font color="red">*The data you have introduced is wrong!</font><br>';
				else
					$success1 = '<font color="green">*You have successfully logged in!</font><br>';
			}
		}
		if($error4 == ''){
			//redirect;
		}
	}
?>