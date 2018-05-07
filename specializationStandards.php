<?php
  require 'connection.php';
  $get = explode("," , $_GET["id"]);
  $error1 = $error2 = $error3 = $success1 = '';
  $id = '';
  if(isset($_POST['insertstandard'])){
    $hpw = $conn->real_escape_string($_POST['hpw']);
    $subject = $conn->real_escape_string($_POST['standard_subject']);
    $found = false;  
    if(empty($_POST['hpw']))
      $error1 = "*You have to enter a the number of hours!";
    if(empty($_POST['standard_subject']))
      $error2 = "*You have to choose a subject!";
    if($error1 == '' && $error2 == ''){
        $sql = "SELECT * FROM standards WHERE subjectId = '".$subject."'";
        $result = $conn->query($sql);
        if(!empty($result))
          $error3='<font color="red">*This subject was already added!</font><br>';
        if($error1 == '' && $error2 == '' && $error3 == '')
        {
          $sql = "INSERT INTO standards (specializationId, subjectId, hoursPerWeek) VALUES ('".$get[0]."' ,'".$subject."', '".$hpw."')";
          $conn->query($sql);
          $success1 = "*You have successfully insert a subject!";
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
            <h3 style="text-align:center;">Standards of the <?php echo $get[1];?> specialization</h3> <br>
          </div>
          <div class="col-md-2">    
          </div>
        </div>
        <div class="row">
          <div class="col-md-1">
          </div>
          <div class="col-md-6">
            <h3 style="text-align:center;">Standards</h3>
            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Subject</th>
                  <th>Hours per week</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $cnt=1;
                $sql = "SELECT st.subjectId, st.specializationId, st.hoursPerWeek, su.id, su.name FROM standards st, subjects su WHERE st.specializationId = ".$get[0]." AND su.id = st.subjectId";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="subject<?php echo $row["id"];?>"><?php echo $row["name"];?></th>
                      <th id="hpw<?php echo $row["hoursPerWeek"];?>"><?php echo $row["hoursPerWeek"];?></th>
                    </tr>
                <?php endwhile;?>
              <tbody>
            </table>
            </form>
          </div>
          <div class="col-md-4">
            <form method="POST"  class="form form-login">

              
              <br>
              <label for="standard"><b>Select standard's subject:</b></label> <br>
              <select name='standard_subject'>
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
                  if($error2 != '')
                    echo $error2;
                ?>
                <br>
                <br>
                <label for="subject"><b>Insert hours per week</b></label>
                <input class="form-control" type="text" name="hpw" placeholder="Hours per Week">
              <?php 
                if($error1 != '')
                  echo "<p style='color:red'>".$error1."</p>" 
              ?>
                <br>
              <?php 
                if($error3 != '')
                  echo $error3;
                if($success1 != '')
                  echo $success1;
              ?>
              <br>
              <button name="insertstandard" class="btn btn-primary">Insert</button>
          </form> 
        </div>
      </div>
      </div>

  	</body>
</html>
