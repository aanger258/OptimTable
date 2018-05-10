<?php
	$success1 = $error1 = $error2 = $error3 = $error4 = '';
	require 'connection.php';
	if(isset($_POST['login'])){
		$username = $conn->real_escape_string($_POST['username']);
		$password = $conn->real_escape_string($_POST['password']);
		$groupName = $teacherName = "";
		if(!empty($_POST['typeOfAccount']))
			$typeOfAccount = $conn->real_escape_string($_POST['typeOfAccount']);
		$found = false;
		$admin = false;  
		if(empty($_POST['username']))
			$error1 = '<font color="red">*You have to enter an username!</font><br>';
		if(empty($_POST['password']))
			$error2 = '<font color="red">*You have to enter a password!</font><br>';
		if(empty($_POST['typeOfAccount']))
			$error3 = '<font color="red">*You have to choose a type of account!</font><br>';
		if($error1 == '' && $error2 == '' && $error3 == ''){
			if($typeOfAccount == "student"){
				$sql = "SELECT * FROM students ";
				$result = $conn->query($sql);
				if ($result->num_rows > 0) {
					while($row = $result->fetch_assoc()){
						if($row['username'] == $username && $row['password'] == md5($password)){
							$found = true;
							$sqlGroup = "SELECT * FROM groups WHERE id = ".$row['group_name']."";
							$resultGroup = $conn->query($sqlGroup);
							while($rowGroup = $resultGroup->fetch_assoc()){
								$groupName = $rowGroup['groupName'];
								$groupId =  $rowGroup['id'];
							}
						}
					}
				}
				if($found == false)
					$error4 = '<font color="red">*The data you have introduced is wrong!</font><br>';
				else
				{
					$success1 = '<font color="green">*You have successfully logged in!</font><br>';
					$_SESSION['student'] = $variabila;
					
				}
			}
			if($typeOfAccount == "teacher"){
				$sql = "SELECT * FROM teachers";
				$result = $conn->query($sql);
				if ($result->num_rows > 0) {
					while($row = $result->fetch_assoc()){
						if($row['username'] == $username && $row['password'] == md5($password)){
							$found = true;
							$teacherName = $row['id'];
						}
					}
				}
				if($found == false)
					$error4 = '<font color="red">*The data you have introduced is wrong!</font><br>';
				else
				{
					$success1 = '<font color="green">*You have successfully logged in!</font><br>';
					
				}
			}
			if($username == "admin" && md5($password) == "14732653d5c66bd4357c2d113b9628c9" && $typeOfAccount == "admin"){
				$admin = true;
			}
		}
		if($admin == true){
			header('Location: adminpage.php');
		}
		if($error4 == '' && $error3 == '' && $error2 == '' && $error1 == ''){
			if($typeOfAccount == "student"){
				$_SESSION['1'] = $groupName;
				header('Location: groupSchedule.php?id=' . $groupId . ',' . $groupName.'');
			}
			if($typeOfAccount == "teacher"){
				$_SESSION['2'] = $teacherName;
				header('Location: showschedule.php');
			}
		}
	}
?>