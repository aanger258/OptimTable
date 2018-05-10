<?php
  require 'connection.php';
  $get = explode("," , $_GET["id"]);
  $error1 = $error2 = $error3 = $error4 = $success = '';
  if(isset($_POST['insertstandard'])){
    $subject = $conn->real_escape_string($_POST['standard_subject']);
    $type = $conn->real_escape_string($_POST['standard_subject_type']);
    $hpw = $conn->real_escape_string($_POST['hpw']);
    $subjectId = "";
    $found = false;  
    if(empty($_POST['standard_subject']))
      $error1 = "*You have to choose a subject!";
    if(empty($_POST['standard_subject_type']))
      $error2 = "*You have to choose the type of subject!";
    if(empty($_POST['hpw']))
      $error3 = "*You have to choose the number of hours per week!";
    if($error1 == '' && $error2 == '' && $error3 == ''){
        $sql = "SELECT * FROM subjects WHERE name = '".$subject."' AND type = '".$type."'";
        $result = $conn->query($sql);
        if(!empty($result))
        {
          while($row = $result -> fetch_assoc())
          {
            $sqlstd = "SELECT * FROM standards";
            $resultstd = $conn->query($sqlstd);
            while($rowstd = $resultstd -> fetch_assoc())
            if($rowstd["specializationId"]==$get[0] && $rowstd["subjectId"]==$row["id"])
              $error4='<font color="red">*This standard already has this subject!</font><br>';
            else{
              $subjectId = $row["id"];
            }
          }
        }

        if($error1 == '' && $error2 == '' && $error3 == '' && $error4 == '')
        {
          $sql = "INSERT INTO standards (specializationId, subjectId, hoursPerWeek) VALUES ('".$get[0]."','".$subjectId."','".$hpw."')";
          $conn->query($sql);
          $success = "*You have successfully inserted a subject to a teacher!";
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
                  <th>Subject Type</th>
                  <th>Hours per week</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                $cnt=1;
                $sql = "SELECT st.subjectId, st.specializationId, st.hoursPerWeek, su.id, su.name, su.type FROM standards st, subjects su WHERE st.specializationId = ".$get[0]." AND su.id = st.subjectId";
                $result = $conn -> query($sql);
                while($row = $result -> fetch_assoc()):?>
                    <tr>
                      <th scope="row"><?php echo $cnt++; ?></th>
                      <th id="subject<?php echo $row["id"];?>"><?php echo $row["name"];?></th>
                      <?php
                        $sqlsbjt = "SELECT * FROM subjecttypes WHERE id = ".$row["type"]."";
                        $resultsbjt = $conn -> query($sqlsbjt);
                        if($rowsbjt = $resultsbjt -> fetch_assoc()):?>
                      <th id="type<?php echo $rowsbjt["name"];?>"><?php echo $rowsbjt["name"];?></th>
                        <?php endif;?>
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
                  $sql ="SELECT DISTINCT name FROM subjects";
                  $result = $conn->query($sql);
                  while($row = $result -> fetch_assoc())
                  {
                    echo "<option value='" . $row['name'] . "'>" . $row['name'] . "</option>";
                  }
                ?>
                </select>
                <?php 
                  if($error1 != '')
                    echo $error1;
                ?>
                <br>
                <br>
                <label for="standard"><b>Select subject's type:</b></label> <br>
                <select name='standard_subject_type'>
                <option value="">Choose!</option>
                <?php
                  $sql ="SELECT * FROM subjecttypes";
                  $result = $conn->query($sql);
                  while($row = $result -> fetch_assoc())
                  {
                    echo "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                  }
                ?>
              </select>
                <?php 
                  if($error2 != '')
                    echo "<br>".$error2;
                ?>
                <br>
                <br>
                <label for="subject"><b>Insert hours per week</b></label>
                <input class="form-control" type="text" name="hpw" placeholder="Hours per Week">
                <?php 
                  if($error3 != '')
                    echo "<p style='color:red'>".$error3."</p>" 
                ?>
                <br>
                <?php 
                  if($error4 != '')
                    echo $error4;
                  if($success != '')
                    echo $success;
                ?>
              <br>
              <button name="insertstandard" class="btn btn-primary">Insert</button>
          </form> 
        </div>
      </div>
      </div>

  	</body>
</html>
