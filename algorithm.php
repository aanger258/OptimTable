<?php
	require ("connection.php");
	$weekTeacher =array(
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		)
	);
	$weekGroup =array(
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		),
		array(
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","",""),
			array("","","","","","","","","")
		)
	);

	// intai alocam cursurile pentru toate grupele
		//selectam toate specializarile. pentru fiecare specializare selectam toate materiile de la acea specializare.
		//pentru fiecare materie care are curs facem un select in care luam profesorul care preda acea materie alocam la fiecare grupa acel curs.

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

						for($i=1; $i<=5; $i++)
							for($j=1; $j<=7; $j++)
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
									}
									$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									if($liberLaToateGrupele==true && $x>0)
									{
										$weekTeacher[$rowTch["id"]][$i][$j] = $rowGroup["groupName"] . ",";
										$weekTeacher[$rowTch["id"]][$i][$j+1] = $rowGroup["groupName"] . ",";
										$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",";
										$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",";
										$x--;
									}
								}
					}
					else
						for($i=1; $i<=5; $i++)
							for($j=1; $j<=6; $j++)
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
									}
									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									if($liberLaToateGrupele==true && $x>0)
									{
										var_dump($sqlGroup);
										$weekTeacher[$rowTch["id"]][$i][$j] = $rowGroup["groupName"] . ",";
										$weekTeacher[$rowTch["id"]][$i][$j+1] = $rowGroup["groupName"] . ",";
										$weekTeacher[$rowTch["id"]][$i][$j+2] = $rowGroup["groupName"] . ",";
										$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",";
										$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",";
										$weekGroup[$rowGroup["id"]][$i][$j+2] = $rowSubj["name"] . ",";
										$x--;
										
	for($i=1; $i<=6; $i++)
	{
		echo "schedule for teacher with id " . $i . "<br>";
		for($j=1; $j<=5; $j++)
		{
			for($k=1; $k<=8; $k++)
				if(!empty($weekTeacher[$i][$j][$k]))
					echo $weekTeacher[$i][$j][$k] . " ";
				else
					echo "fereastra ";
			echo "<br>";
		}
		echo "<br>";
		echo "<br>";		
	}

	for($i=1; $i<=2; $i++)
	{
		for($j=1; $j<=5; $j++)
		{
			for($k=1; $k<=8; $k++)
				if(!empty($weekGroup[$i][$j][$k]))
					echo $weekGroup[$i][$j][$k] . " ";
				else
					echo "fereastra ";
			echo "<br>";
		}
		echo "<br>";
		echo "<br>";		
	}
									}

								}

				}
			}

		}
	}

	for($i=1; $i<=6; $i++)
	{
		echo "schedule for teacher with id " . $i . "<br>";
		for($j=1; $j<=5; $j++)
		{
			for($k=1; $k<=8; $k++)
				if(!empty($weekTeacher[$i][$j][$k]))
					echo $weekTeacher[$i][$j][$k] . " ";
				else
					echo "fereastra ";
			echo "<br>";
		}
		echo "<br>";
		echo "<br>";		
	}

	for($i=1; $i<=2; $i++)
	{
		for($j=1; $j<=5; $j++)
		{
			for($k=1; $k<=8; $k++)
				if(!empty($weekGroup[$i][$j][$k]))
					echo $weekGroup[$i][$j][$k] . " ";
				else
					echo "fereastra ";
			echo "<br>";
		}
		echo "<br>";
		echo "<br>";		
	}
?>