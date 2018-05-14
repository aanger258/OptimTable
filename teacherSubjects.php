<?php
  require 'connection.php';
  $get = explode("," , $_GET["id"]);
  $error1 = $error2 = $error3 = $success = '';
  if(isset($_POST['insertgroup'])){
    $subject = $conn->real_escape_string($_POST['subject']);
    $type = $conn->real_escape_string($_POST['type']);
    $subjectId = "";
    $found = false;  
    if(empty($_POST['subject']))
      $error1 = "*You have to choose a subject!";
    if(empty($_POST['type']))
      $error2 = "*You have to choose the type of subject!";
    if($error1 == '' && $error2 == ''){
        $sql = "SELECT * FROM subjects WHERE name = '".$subject."' AND type = '".$type."'";
        $result = $conn->query($sql);
        if(!empty($result))
        {
          while($row = $result -> fetch_assoc())
          {
            $sqltct = "SELECT * FROM teachertype";
            $resulttct = $conn->query($sqltct);
            while($rowtct = $resulttct -> fetch_assoc())
            if($rowtct["teacherId"]==$get[0] && $rowtct["subjectId"]==$row["id"])
              $error3='<font color="red">*This teacher already has this subject!</font><br>';
            else{
              $subjectId = $row["id"];
            }
          }
        }

        if($error1 == '' && $error2 == '' && $error3 == '')
        {
          $sql = "INSERT INTO teachertype (teacherId, subjectId) VALUES ('".$get[0]."','".$subjectId."')";
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
    <?php 
      include "navbar.php";
    ?>
  		<div class="container">
        <div class="row">
          <div class="col-md-2">    
          </div>
          <div class="col-md-8">
            <h3 style="text-align:center;">The subjects for teacher</h3> <br>
            <h3 style="text-align:center;"><?php echo $get[1] . " " . $get[2];?></h3> <br>
          </div>
          <div class="col-md-2">    
          </div>
        </div>



        <div class="row">
          <div class="col-md-6">
            <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Name</th>
                  <th>Subject</th>
                  <th>Subject type</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $cnt=1;
                $p = "";
                $sql = "SELECT * FROM teachertype WHERE teacherId = $get[0] ";
                $result = $conn -> query($sql);
                $n = $result->num_rows;
                while($row = $result -> fetch_assoc()){
                  $sqlSbj = "SELECT * FROM subjects WHERE id = ".$row['subjectId']."";
                  $resultSbj = $conn -> query($sqlSbj);
                    while($rowSbj = $resultSbj -> fetch_assoc()){
                    $sqlType = "SELECT * FROM subjecttypes WHERE id = ".$rowSbj['type']."";
                    $resultType = $conn -> query($sqlType);
                    $rowType = $resultType -> fetch_assoc();
                        echo "<tr>";
                          echo "<th scope=\"row\">".$cnt++."</th>";
                          echo "<th id=\"name".$get[1]."\">".$get[1] . " " . $get[2]."</th>";
                          echo "<th id=\"sbjname".$rowSbj["name"]."\">".$rowSbj["name"]."</th>";
                          echo "<th id=\"sbjtype".$rowType["name"]."\">".$rowType["name"]."</th>";
                        echo "</tr>";
                    }
                  }?>
                <?php
                if($result->num_rows == 0):?>
                  <th scope="row" colspan="3">This teacher has no subjects!</th>
                <?php endif;?>
              <tbody>
            </table>
            </form>
          </div>
          <div class="col-md-6">
            <form method="POST"  class="form form-login">
              <h3 style="text-align:center;"> Add teacher's subject and type </h3>
              <label for="subject"><b>Select the teacher's subject:</b></label> <br>
                <select name='subject' class="form-control form-control-sm">
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
                <br>
                <?php 
                  if($error1 != '')
                    echo $error1;
                ?>
              <br>
              <label for="type"><b>Select the subject type:</b></label> <br>
                <select name='type' class="form-control form-control-sm">
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
              <br>
                <?php 
                  if($error2 != '')
                    echo $error2;
                ?>
              <?php 
                if($error3 != '')
                  echo $error3;
                if($success != '')
                  echo $success;
              ?>
              <br>
              <button name="insertgroup" class="btn btn-primary">Insert</button>
            </form>
          </div>
        </div>

  	</body>
</html>
