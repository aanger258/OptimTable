<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    	<style>
		table,
		td,
		tr {
			border: 1px solid black;
			padding: 5px;
			text-align: center;
			border-collapse: collapse;
			font-size: 18px;
			cursor: pointer;
		}
	</style>
 </html>
 <?php
	require ("connection.php");
	$weekTeacher =array(
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		)
	);
	$weekGroup =array(
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		),
		array(
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","",""),
			array("","","","","","","","","","","","","","")
		)
	);

	// intai alocam cursurile pentru toate grupele
		//selectam toate specializarile. pentru fiecare specializare selectam toate materiile de la acea specializare.
		//pentru fiecare materie care are curs facem un select in care luam profesorul care preda acea materie alocam la fiecare grupa acel curs.
	//only courses here
	// in 0 tinem numarul de cursuri
	// in 44 tinem numarul de ore

	$sqlSpec = "SELECT * FROM specializations";

	$resultSpec = $conn->query($sqlSpec);
	while($rowSpec = $resultSpec -> fetch_assoc())
	{
		$sqlStd = "SELECT * FROM standards WHERE specializationId = ".$rowSpec["id"]."";
		$resultStd = $conn->query($sqlStd);
		while($rowStd = $resultStd -> fetch_assoc())
		{
			$sqlSubj = "SELECT * FROM subjects WHERE id = ".$rowStd["subjectId"]." AND type = 1";
			$resultSubj = $conn->query($sqlSubj);
			while($rowSubj = $resultSubj -> fetch_assoc())
			{
				$sqlTch = "SELECT * FROM teachers WHERE subject=".$rowSubj["id"]."";
				$resultTch = $conn->query($sqlTch);
				while($rowTch = $resultTch -> fetch_assoc())
				{
					//alegem un  interval orar care e liber si pt prof si pt toate grupele
					$x=$rowStd["hoursPerWeek"];
					if($rowStd["hoursPerWeek"]==2 )
					{		
						$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=7 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["id"]][$i][$j]) && empty($weekTeacher[$rowTch["id"]][$i][$j+1]))
								{
									$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
									$resultGroup = $conn->query($sqlGroup);
									$liberLaToateGrupele=true;

									while($rowGroup = $resultGroup -> fetch_assoc())
									{
										if(!(empty($weekGroup[$rowGroup["id"]][$i][$j]) && empty($weekGroup[$rowGroup["id"]][$i][$j+1])))
										{
											$liberLaToateGrupele=false;
										}
										if(!empty($weekGroup[$rowGroup["id"]][$i][0]) && $weekGroup[$rowGroup["id"]][$i][0]>2)
											$liberLaToateGrupele=false;
									}

									if($liberLaToateGrupele==true)
									{
										$resultGroup = $conn->query($sqlGroup);
										while($rowGroup = $resultGroup -> fetch_assoc())
										{
											if(empty($weekGroup[$rowGroup["id"]][$i][0])){
												$weekGroup[$rowGroup["id"]][$i][0]=2;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][0]+=2;
											}
											if(empty($weekGroup[$rowGroup["id"]][$i][44])){
												$weekGroup[$rowGroup["id"]][$i][44]=2;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][44]+=2;
											}
										}
									}	

									$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									if($liberLaToateGrupele==true && $x>0)
									{
										if(empty($weekTeacher[$rowTch["id"]][$i][$j]))
											$weekTeacher[$rowTch["id"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["id"]][$i][$j] .= ", " . $rowGroup["groupName"] ;
										if(empty($weekTeacher[$rowTch["id"]][$i][$j+1]))
											$weekTeacher[$rowTch["id"]][$i][$j+1] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["id"]][$i][$j+1] .= ", " . $rowGroup["groupName"] ;

										$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . "<br>Course" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . "<br>Course" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$done=true;
										$x--;
									}

								}
					}
					else
					{
						$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=6 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["id"]][$i][$j]) && empty($weekTeacher[$rowTch["id"]][$i][$j+1]) && empty($weekTeacher[$rowTch["id"]][$i][$j+2]))
								{
									$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";

									$resultGroup = $conn->query($sqlGroup);
									$liberLaToateGrupele=true;
									while($rowGroup = $resultGroup -> fetch_assoc())
									{
										if(!(empty($weekGroup[$rowGroup["id"]][$i][$j]) && empty($weekGroup[$rowGroup["id"]][$i][$j+1]) && empty($weekGroup[$rowGroup["id"]][$i][$j+2])))
										{ 	
											$liberLaToateGrupele=false;
										}
										if(!empty($weekGroup[$rowGroup["id"]][$i][0]) && $weekGroup[$rowGroup["id"]][$i][0]>2)
											$liberLaToateGrupele=false;
									}


									if($liberLaToateGrupele==true)
									{
										$resultGroup = $conn->query($sqlGroup);
										while($rowGroup = $resultGroup -> fetch_assoc())
										{
											if(empty($weekGroup[$rowGroup["id"]][$i][0])){
												$weekGroup[$rowGroup["id"]][$i][0]=3;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][0]+=3;
											}
											if(empty($weekGroup[$rowGroup["id"]][$i][44])){
												$weekGroup[$rowGroup["id"]][$i][44]=3;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][44]+=3;
											}
										}
									}

									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									if($liberLaToateGrupele==true && $x>0)
									{
										if(empty($weekTeacher[$rowTch["id"]][$i][$j]))
											$weekTeacher[$rowTch["id"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["id"]][$i][$j] .= ", " . $rowGroup["groupName"];
										if(empty($weekTeacher[$rowTch["id"]][$i][$j+1]))
											$weekTeacher[$rowTch["id"]][$i][$j+1] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["id"]][$i][$j+1] .= ", " . $rowGroup["groupName"];
										if(empty($weekTeacher[$rowTch["id"]][$i][$j+2]))
											$weekTeacher[$rowTch["id"]][$i][$j+2] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["id"]][$i][$j+2] .= ", " . $rowGroup["groupName"];

										$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . "<br>Course" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . "<br>Course" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$weekGroup[$rowGroup["id"]][$i][$j+2] = $rowSubj["name"] . "<br>Course" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$done=true;
										$x-=2;
									}

								}
					}

				}
			}

		}
	}

	//seminars and laboratories

	$sqlSpec = "SELECT * FROM specializations";

	$resultSpec = $conn->query($sqlSpec);
	while($rowSpec = $resultSpec -> fetch_assoc())
	{
		$sqlStd = "SELECT * FROM standards WHERE specializationId = ".$rowSpec["id"]."";
		$resultStd = $conn->query($sqlStd);
		while($rowStd = $resultStd -> fetch_assoc())
		{
			$sqlSubj = "SELECT * FROM subjects WHERE id = ".$rowStd["subjectId"]." AND type > 1";
			$resultSubj = $conn->query($sqlSubj);
			while($rowSubj = $resultSubj -> fetch_assoc())
			{
				$sqlTch = "SELECT * FROM teachers WHERE subject=".$rowSubj["id"]."";
				$resultTch = $conn->query($sqlTch);
				while($rowTch = $resultTch -> fetch_assoc())
				{
					//alegem un  interval orar care e liber si pt prof si pt toate grupele
					$x=$rowStd["hoursPerWeek"];	
					$done = false;
					for($i=1; $i<=5 && $done==false; $i++)
						for($j=1; $j<=7 && $done==false; $j++)
							if(empty($weekTeacher[$rowTch["id"]][$i][$j]) && empty($weekTeacher[$rowTch["id"]][$i][$j+1]))
							{
								$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
								$resultGroup = $conn->query($sqlGroup);
								$liberLaToateGrupele=true;

								while($rowGroup = $resultGroup -> fetch_assoc())
								{
									if(!(empty($weekGroup[$rowGroup["id"]][$i][$j]) && empty($weekGroup[$rowGroup["id"]][$i][$j+1])))
									{
										$liberLaToateGrupele=false;
									}
									if(!empty($weekGroup[$rowGroup["id"]][$i][0]) && $weekGroup[$rowGroup["id"]][$i][44]>4)
										$liberLaToateGrupele=false;
								}

								if($liberLaToateGrupele==true)
								{
									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									{
										if(empty($weekGroup[$rowGroup["id"]][$i][44]))
											$weekGroup[$rowGroup["id"]][$i][44]=2;
										else
											$weekGroup[$rowGroup["id"]][$i][44]+=2;
									}
								}	

								$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
								$resultGroup = $conn->query($sqlGroup);
								while($rowGroup = $resultGroup -> fetch_assoc())
								if($liberLaToateGrupele==true && $x>0)
								{
									if(empty($weekTeacher[$rowTch["id"]][$i][$j]))
										$weekTeacher[$rowTch["id"]][$i][$j] = $rowGroup["groupName"];
									else
										$weekTeacher[$rowTch["id"]][$i][$j] .= ", " . $rowGroup["groupName"] ;
									if(empty($weekTeacher[$rowTch["id"]][$i][$j+1]))
										$weekTeacher[$rowTch["id"]][$i][$j+1] = $rowGroup["groupName"];
									else
										$weekTeacher[$rowTch["id"]][$i][$j+1] .= ", " . $rowGroup["groupName"] ;

									$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"];
									$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"];
									if($rowSubj["type"]==2)
									{
										$weekGroup[$rowGroup["id"]][$i][$j] .= "<br> Seminar". "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$weekGroup[$rowGroup["id"]][$i][$j+1] .= "<br> Seminar" ."<br>" . $rowTch["name"]." " . $rowTch["surname"];
									}
									else if($rowSubj["type"]==3)
									{
										$weekGroup[$rowGroup["id"]][$i][$j] .= "<br> Laboratory" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
										$weekGroup[$rowGroup["id"]][$i][$j+1] .= "<br> Laboratory" . "<br>" . $rowTch["name"]." " . $rowTch["surname"];
									}
									$done=true;
									$x--;
								}
							}
					}
			}
		}
	}




	for($i=1; $i<=6; $i++)
	{
		$table = "<table>";
		echo "schedule for teacher with id " . $i . "<br>";
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=8; $k++)
				if(!empty($weekTeacher[$i][$j][$k]))
					$table .= "<td>" . $weekTeacher[$i][$j][$k] . "</td>";
				else
					$table .= "<td>" . "fereastra" . "</td>";
			$table .= "</tr>";
		}
		$table .= "</table>";
		echo $table;
		echo "<br>";
		echo "<br>";		
	}

	for($i=1; $i<=2; $i++)
	{
		$table = "<table>";
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=8; $k++)
				if(!empty($weekGroup[$i][$j][$k]))
					$table .= "<td>" . $weekGroup[$i][$j][$k] . "</td>";
				else
					$table .= "<td>" . "fereastra" . "</td>";
			echo "<br>";
			$table .= "</tr>";
			if(empty($weekGroup[$i][$j][0]))
				echo 0;
			else
				echo $weekGroup[$i][$j][0];
			echo " ";
			if(empty($weekGroup[$i][$j][44]))
				echo 0;
			else
				echo $weekGroup[$i][$j][44];
		}
		$table .= "</table>";
		echo $table;
		echo "<br>";
		echo "<br>";		
	}

?>