<?php
	require 'connection.php';
	$error1form1 = $error2form1 = $error3form1 = $success1form1 = '';
  $error1form2 = $error2form2 = $error3form2 = $error4form2 = $success1form2 = '';
	if(isset($_POST['insertsubject'])){
    $error1 = $error2 = $error3 = $success1 = '';
		$subject = $conn->real_escape_string($_POST['subject']);
		$found = false;  
		if(empty($_POST['subject']))
			$error1form1 = "*You have to enter a subject!";
		if($error1form1 == '' && $error2form1 == ''){
				$sql = "SELECT name FROM subjects WHERE name = '".$subject."'";
				$result = $conn->query($sql);
				if(!empty($result))
				{
					while($row = $result -> fetch_assoc())
					{
						if($row["name"]==$subject)
							$error3form1='<font color="red">*This name already in use</font><br>';
					}
				}

				if($error1form1 == '' && $error2form1 == '' && $error3form1 == '')
				{
					$sql = "INSERT INTO subjects (name) VALUES ('".$subject."')";
					$conn->query($sql);
					$success1form1 = "*You have successfully insert a subject!";
				}
		}
	}
  if(isset($_POST['insertteacher'])){
    $error1form2 = $error2form2 = $error3form2 = $success1form2 = '';
    $name = $conn->real_escape_string($_POST['teacher_name']);
    $surname = $conn->real_escape_string($_POST['teacher_surname']);
    $subject = $conn->real_escape_string($_POST['teacher_subject']);
    $found = false;  
    if(empty($_POST['teacher_name']))
      $error1form2 = "*You have to enter the teacher's name!";
    if(empty($_POST['teacher_surname']))
      $error2form2 = "*You have to enter the teacher's surname!";
    if(empty($_POST['teacher_subject']))
      $error4form2 = "*You have to choose the teacher's subject!";
    if($error1form2 == '' ){
        $sql = "SELECT name, surname FROM teachers WHERE name = '".$name."' AND surname = '".$surname."'";
        $result = $conn->query($sql);
        if(!empty($result))
        {
          while($row = $result -> fetch_assoc())
          {
            if($row["name"]==$name && $row["surname"]==$surname)
              $error3form2='<font color="red">*This teacher is already in the table</font><br>';
          }
        }



        if($error1form2 == '' && $error2form2 == '' && $error3form2 == '' && $error4form2 == '')
        {
          $username = strtolower($name) . '.' . strtolower($surname);
          $sql = "INSERT INTO teachers (username, name, surname, subject) VALUES ('".$username."', '".$name."', '".$surname."', '".$subject."')";
          $conn->query($sql);
          $success1form2 = "*You have successfully inserted a teacher!";
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

          <div class="col-md-6">
            <h3 style="text-align:center;">Subjects</h3>
            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $cnt=1;
                $sql = "SELECT * FROM subjects";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="name<?php echo $row["idgrupa"];?>"><?php echo $row["name"];?></th>
                    </tr>
                <?php endwhile;?>
              <tbody>
            </table>
            </form>
          </div>
          <div class="col-md-6">
            <h3 style="text-align:center;"> Teachers </h3>  
            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Surname</th>
                  <th>Subject</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $cnt=1;
                $sql = "SELECT t.id as idteacher, t.name as teacherName, t.surname, t.subject, s.id, s.name as subjectName FROM teachers t, subjects s WHERE t.subject=s.id";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="name<?php echo $row["idteacher"];?>"><?php echo $row["teacherName"];?></th>
                      <th id="surname<?php echo $row["idteacher"];?>"><?php echo $row["surname"];?></th>
                      <th id="subject<?php echo $row["idteacher"];?>"><?php echo $row["subjectName"];?></th>
                    </tr>
                <?php endwhile;?>
              <tbody>
            </table>
            </form>
        </div>
      </div>


  		<div class="row">
  			<div class="col-md-6">
          <br>
  				<h3 style="text-align:center;"> Insert new subject </h3>	
  			</div>
  			<div class="col-md-6">
          <h3 style="text-align:center;"> Insert new teacher </h3> 		
  			</div>
  		</div>

  		<div class="row">
  			<div class="col-md-6">
  				<form method="POST"  class="form form-login">

  					<label for="subject"><b>Insert subject name</b></label>
  					<input class="form-control" type="text" name="subject" placeholder="Subject name">
  					<?php 
  						if($error1form1 != '')
  							echo "<p style='color:red'>".$error1form1."</p>" 
  					?>
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
  					<button name="insertsubject" class="btn btn-primary">Insert</button>
  				</form>	
          <br>
  			</div>

  			<div class="col-md-6">
          <form method="POST"  class="form form-login">

            <label for="teacher"><b>Insert teacher name</b></label>
            <input class="form-control" type="text" name="teacher_name" placeholder="Teacher name">
            <?php 
              if($error1form2 != '')
                echo "<p style='color:red'>".$error1form2."</p>" 
            ?>
            <label for="teacher"><b>Insert teacher surname</b></label>
            <input class="form-control" type="text" name="teacher_surname" placeholder="Teacher surname">
            <?php 
              if($error2form2 != '')
                echo "<p style='color:red'>".$error2form2."</p>" 
            ?>
            <label for="teacher"><b>Select theacher's subject:</b></label> <br>
              <select name='teacher_subject'>
                <option value="">Choose!</option>
              <?php
                $sql ="SELECT * FROM subjects";
                $result = $conn->query($sql);
                
                while($row = $result -> fetch_assoc())
                {
                  echo "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                }
              ?>
            </select>
            <?php
              if($error4form2 != '')
                  echo $error4form2;
            ?>
            <br>
            <?php 
              if($error3form2 != '')
                echo $error3form2;
              if($success1form2 != '')
                echo $success1form2;
            ?>
            <br>
            <button name="insertteacher" class="btn btn-primary">Insert</button>

          </form> 		
  			</div>
  		</div>
    </div>

  	</body>
</html>