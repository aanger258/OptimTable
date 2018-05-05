<?php
	require 'connection.php';
	$error1 = $error2 = $error3 = $success1 = '';
	if(isset($_POST['insertgroup'])){
		$groupname = $conn->real_escape_string($_POST['group']);
		$specialization = $conn->real_escape_string($_POST['profil']);
		$found = false;  
		if(empty($_POST['group']))
			$error1 = "*You have to enter a group!";
		if(empty($_POST['profil']))
			$error2 = "*You have to enter a specialization!";
		if($error1 == '' && $error2 == ''){
				$sql = "SELECT groupName FROM groups WHERE groupName = '".$groupname."'";
				$result = $conn->query($sql);
				if(!empty($result))
				{
					while($row = $result -> fetch_assoc())
					{
						if($row["groupName"]==$groupname)
							$error3='<font color="red">*This name already in use</font><br>';
					}
				}

				if($error1 == '' && $error2 == '' && $error3 == '')
				{
					$sql = "INSERT INTO groups (groupName, specialization) VALUES ('".$groupname."','".$specialization."')";
					//var_dump($sql);
					$conn->query($sql);
					$success1 = "*You have successfully insert a group!";
				}
		}
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

  	<body>
  		<div class="container">
        <div class="row">

          <div class="col-md-2">    
          </div>
          <div class="col-md-8">
            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Specialization</th>
                  <th >Action</th>
                  <th >Action</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $cnt=1;
                $p = "";
                $n = "";
                $sql = "SELECT * FROM groups";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="name<?php echo $row["id"];?>"><?php echo $row["groupName"];?></th>
                      <th id="specialization<?php echo $row["id"];?>"><?php echo $row["specialization"]; ?></th>
                      <th ><a href="students.php?id=<?php echo $row["id"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Show students</a></th>
                      <th ><a href="groupPrograma.php?id=<?php echo $row["id"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Edit scheduele</a></th>
                    </tr>
                <?php endwhile;?>
              <tbody>
            </table>
            </form>



          </div>
          <div class="col-md-2">    
          </div>
        </div>



  		<div class="row">
			<div class="col-md-2">		
  			</div>
  			<div class="col-md-8">
          <br>
  				<h3 style="text-align:center;"> Informations needed for a new OptimTable</h3>	
  			</div>
  			<div class="col-md-2">		
  			</div>
  		</div>

  		<div class="row">
  			<div class="col-md-4">		
  			</div>
  			<div class="col-md-4">
  				<form method="POST"  class="form form-login">

  					<label for="group"><b>Insert group name</b></label>
  					<input class="form-control" type="text" name="group" placeholder="Group name">
  					<?php 
  						if($error1 != '')
  							echo "<p style='color:red'>".$error1."</p>" 
  					?>
  					<label for="profil"><b>Specify the group specialization</b></label>
  					<input class="form-control" type="text" name="profil" placeholder="Specify the group specialization">
  					<?php 
  						if($error2 != '')
  							echo $error2;
  					?>
  					<?php 
  						if($error3 != '')
  							echo $error3;
  						if($success1 != '')
  							echo $success1;
  					?>
            <br>
  					<button name="insertgroup" class="btn btn-primary">Insert</button>

  				</form>	
  			</div>
  			<div class="col-md-4">		
  			</div>
  		</div>

  		<div class="row">
        <div class="col-md-4">		
  		  </div>
  			<div class="col-md-4">

  			</div>
  			<div class="col-md-4">		
  			</div>
  		</div>
  	</div>






  	</body>
</html>
