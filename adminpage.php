<?php
	require 'connection.php';
	$error1form1 = $error2form1 = $error3form1 = $success1form1 = '';
  $error1form2 = $error2form2  = $success1form2 = '';
	if(isset($_POST['insertgroup'])){
    $error1 = $error2 = $error3 = $success1 = '';
		$groupname = $conn->real_escape_string($_POST['group']);
		$specialization = $conn->real_escape_string($_POST['specialization']);
		$found = false;  
		if(empty($_POST['group']))
			$error1form1 = "*You have to enter a group!";
		if(empty($_POST['specialization']))
			$error2form1 = "*You have to select a specialization!";
		if($error1form1 == '' && $error2form1 == ''){
				$sql = "SELECT groupName FROM groups WHERE groupName = '".$groupname."'";
				$result = $conn->query($sql);
				if(!empty($result))
				{
					while($row = $result -> fetch_assoc())
					{
						if($row["groupName"]==$groupname)
							$error3form1='<font color="red">*This name already in use</font><br>';
					}
				}

				if($error1form1 == '' && $error2form1 == '' && $error3form1 == '')
				{
					$sql = "INSERT INTO groups (groupName, specialization) VALUES ('".$groupname."','".$specialization."')";
					$conn->query($sql);
					$success1form1 = "*You have successfully insert a group!";
				}
		}
	}
  if(isset($_POST['insertspecialization'])){
    $error1form2 = $error2form2 = $error3form2 = $success1form2 = '';
    $specialization = $conn->real_escape_string($_POST['specialization']);
    $found = false;  
    if(empty($_POST['specialization']))
      $error1form2 = "*You have to enter a specialization!";
    if($error1form2 == '' ){
        $sql = "SELECT specialization FROM specializations WHERE specialization = '".$specialization."'";
        $result = $conn->query($sql);
        if(!empty($result))
        {
          while($row = $result -> fetch_assoc())
          {
            if($row["specialization"]==$specialization)
              $error2form2='<font color="red">*This specialization is already in the table</font><br>';
          }
        }

        if($error1form2 == '' && $error2form2 == '')
        {
          $sql = "INSERT INTO specializations (specialization) VALUES ('".$specialization."')";
          //var_dump($sql);
          $conn->query($sql);
          $success1form2 = "*You have successfully insert a group!";
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
            <h3 style="text-align:center;">Groups</h3>
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
                $sql = "SELECT g.id as idgrupa, g.groupName, g.specialization, s.id, s.specialization FROM groups g, specializations s WHERE g.specialization=s.id";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="name<?php echo $row["idgrupa"];?>"><?php echo $row["groupName"];?></th>
                      <th id="specialization<?php echo $row["idgrupa"];?>"><?php echo $row["specialization"]; ?></th>
                      <th ><a href="students.php?id=<?php echo $row["idgrupa"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Show students</a></th>
                      <th ><a href="groupPrograma.php?id=<?php echo $row["idgrupa"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Edit scheduele</a></th>
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
  				<h3 style="text-align:center;"> Insert new group </h3>	
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
  						if($error1form1 != '')
  							echo "<p style='color:red'>".$error1form1."</p>" 
  					?>
  					<label for="specialization"><b>Select the group specialization:</b></label> <br>
              <select name='specialization'>
                <option value="">Choose!</option>
              <?php
                $sql ="SELECT * FROM specializations";
                $result = $conn->query($sql);
                
                while($row = $result -> fetch_assoc())
                {
                  echo "<option value='" . $row['id'] . "'>" . $row['specialization'] . "</option>";
                }
              ?>
              </select>
            <br>
              <?php 
                if($error3form1 != '')
                  echo $error3form1;
              ?>
  					<?php 
  						if($error3form1 != '')
  							echo $error3form1;
  						if($success1form1 != '')
  							echo $success1form1;
  					?>
            <br>
  					<button name="insertgroup" class="btn btn-primary">Insert</button>
  				</form>	
          <br>
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

    <div class="row">
      <div class="col-md-2">    
      </div>
      <div class="col-md-8">
        <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <table class="table">
          <thead>
            <tr>
              <th>#</th>
              <th>Specialization</th>
              <th >Action</th>
              <th >Action</th>
            </tr>
          </thead>
          <tbody>
          <?php 
            $cnt=1;
            $sql = "SELECT * FROM specializations";
            $result = $conn -> query($sql);
            while($row = $result -> fetch_assoc()):?>
                <tr>
                  <th scope="row"><?php echo $cnt++; ?></th>
                  <th id="name<?php echo $row["id"];?>"><?php echo $row["specialization"];?></th>
                  <th ><a href="students.php?id=<?php echo $row["id"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Show groups</a></th>
                  <th ><a href="groupPrograma.php?id=<?php echo $row["id"] . "," . $row["groupName"] . "," . $row["specialization"] ;?>">Edit standards</a></th>
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
          <h3 style="text-align:center;"> Insert new specialization </h3> 
        </div>
        <div class="col-md-2">    
        </div>
      </div>

      <div class="row">
        <div class="col-md-4">    
        </div>
        <div class="col-md-4">
          <form method="POST"  class="form form-login">

            <label for="specialization"><b>Insert specialization name</b></label>
            <input class="form-control" type="text" name="specialization" placeholder="Specialization name">
            <?php 
              if($error1form2 != '')
                echo "<p style='color:red'>".$error1form2."</p>" 
            ?>
            <?php 
              if($error2form2 != '')
                echo $error3form2;
              if($success1form2 != '')
                echo $success1form2;
            ?>
            <br>
            <button name="insertspecialization" class="btn btn-primary">Insert</button>

          </form> 
        </div>
        <div class="col-md-4">    
        </div>
      </div>

    </div>






  	</body>
</html>
