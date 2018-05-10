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
  		<div class="container-fluid">
        <div class="row">
          <div class="col-md-2">    
          </div>
          <div class="col-md-8">
            <br>
            <h3 style="text-align:center;">Schedule of the <?php echo $get[1];?></h3> <br>
          </div>
          <div class="col-md-2">    
          </div>
        </div>

        <div class="row">

          <div class="col-md-12">    
          
          <table class="table table-striped" style="text-align: center;">
              <thead class="thead-dark">
                <tr>
                  <th>Day</th>
                  <th>8:00</th>
                  <th>9:00</th>
                  <th>10:00</th>
                  <th>11:00</th>
                  <th>12:00</th>
                  <th>13:00</th>
                  <th>14:00</th>
                  <th>15:00</th>
                  <th>16:00</th>
                  <th>17:00</th>
                </tr>
              </thead>
              <tbody>
                <?php 
                  $day=1;
                  while($day<6):?>
                  <?php
                    $sql = "SELECT * FROM schedulegroups WHERE groupName = '".$get[0]."' AND day = '".$day."' ";
                    //var_dump($sql);
                    $result = $conn->query($sql);
                    ?>
                    <tr>

                    <?php
                      if($day==1)
                      echo "<th>Monday</th>"; 
                      if($day==2)
                      echo "<th>Tuesday</th>";
                      if($day==3)
                        echo "<th>Wednesday</th>";
                      if($day==4)
                        echo "<th>Thursday</th>";
                      if($day==5)
                        echo "<th>Friday</th>";
                      while($row = $result -> fetch_assoc()):?>
                          <th><?php echo str_replace(",","<br>",$row["info"]);   ?></th>
                    <?php endwhile;?>
                  <?php $day+=1; endwhile;?>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        </div>

  	</body>
</html>
