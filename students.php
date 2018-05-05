<?php
  require 'connection.php';
  $get = explode("," , $_GET["id"]); 
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
            <h3 style="text-align:center;">Students of the group <?php echo $get[1];?></h3> <br>
            <h3 style="text-align:center;">Specialization <?php echo $get[2];?></h3> <br>
          </div>
          <div class="col-md-2">    
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
                  <th>Name</th>
                  <th>Surname</th>
                </tr>
              </thead>
              <tbody>
              <?php
                $cnt=1;
                $p = "";
                $n = "";
                $sql = "SELECT * FROM students WHERE group_name = $get[0] ";
                $result = $conn -> query($sql);
                
                while($row = $result -> fetch_assoc()):?>
                  <tr>
                    <th scope="row"><?php echo $cnt++; ?></th>
                    <th id="name<?php echo $row["name"];?>"><?php echo $row["name"];?></th>
                    <th id="surname<?php echo $row["surname"];?>"><?php echo $row["surname"]; ?></th>
                  </tr>
                
                <?php endwhile;?>

                <?php
                if($result->num_rows == 0):?>
                
                <th scope="row" colspan="3">There are no students in this group!</th>
              <?php endif;?>

              <tbody>
            </table>
            </form>
          </div>
          <div class="col-md-2">    
          </div>
        </div>

  	</body>
</html>
