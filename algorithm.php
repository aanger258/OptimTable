<?php
	function generateSchedule(){
	$host="localhost";
    $user="root";
    $password="";
    $mydb="optimtable";
    
    $conn = new mysqli($host, $user, $password,$mydb);

    if ($conn->connect_error)
        die("Connection failed: " . $conn->connect_error);
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
				$sqlTch = "SELECT * FROM teachertype WHERE subjectId=".$rowSubj["id"]."";
				$resultTch = $conn->query($sqlTch);
				while($rowTch = $resultTch -> fetch_assoc())
				{
					//alegem un  interval orar care e liber si pt prof si pt toate grupele
					$x=$rowStd["hoursPerWeek"];
					if($x == 2)
					{		
						$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=7 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]) && empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]))
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
									if($liberLaToateGrupele==true)
									{
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .= ", " . $rowGroup["groupName"] ;
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= ", " . $rowGroup["groupName"] ;

										$sqlTchInfo = "SELECT * FROM teachers WHERE id = ".$rowTch["teacherId"]."";
										$resultTchInfo = $conn->query($sqlTchInfo);
										if($rowTchInfo = $resultTchInfo -> fetch_assoc()){
											$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Course," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
											$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",Course," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
										}
										$done=true;
									}
									if($liberLaToateGrupele==true)
									{
										$weekTeacher[$rowTch["teacherId"]][$i][$j] .= "," . $rowSubj["name"] . ",Course";
										$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= "," . $rowSubj["name"] . ",Course";
									}
								}
					}
					if($x == 3)
					{
						$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=6 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]) && empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]) && empty($weekTeacher[$rowTch["teacherId"]][$i][$j+2]))
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
									if($liberLaToateGrupele==true)
									{
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .= ", " . $rowGroup["groupName"];
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= ", " . $rowGroup["groupName"];
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j+2]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j+2] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j+2] .= ", " . $rowGroup["groupName"];

										$sqlTchInfo = "SELECT * FROM teachers WHERE id = ".$rowTch["teacherId"]."";
										$resultTchInfo = $conn->query($sqlTchInfo);
										if($rowTchInfo = $resultTchInfo -> fetch_assoc()){
											$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Course," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
											$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",Course," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
											$weekGroup[$rowGroup["id"]][$i][$j+2] = $rowSubj["name"] . ",Course," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
										}
										$done=true;
									}
									if($liberLaToateGrupele==true)
									{
										$weekTeacher[$rowTch["teacherId"]][$i][$j] .= "," . $rowSubj["name"] . ",Course";
										$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= "," . $rowSubj["name"] . ",Course";
										$weekTeacher[$rowTch["teacherId"]][$i][$j+2] .= "," . $rowSubj["name"] . ",Course";
									}

								}
					}
					if($x==1)
					{
						$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=7 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
								{
									$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";

									$resultGroup = $conn->query($sqlGroup);
									$liberLaToateGrupele=true;
									while($rowGroup = $resultGroup -> fetch_assoc())
									{
										if(!(empty($weekGroup[$rowGroup["id"]][$i][$j])))
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
												$weekGroup[$rowGroup["id"]][$i][0]=1;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][0]+=1;
											}
											if(empty($weekGroup[$rowGroup["id"]][$i][44])){
												$weekGroup[$rowGroup["id"]][$i][44]=1;
											}
											else{
												$weekGroup[$rowGroup["id"]][$i][44]+=1;
											}
										}
									}

									$resultGroup = $conn->query($sqlGroup);
									while($rowGroup = $resultGroup -> fetch_assoc())
									if($liberLaToateGrupele==true)
									{
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .= ", " . $rowGroup["groupName"];

										$sqlTchInfo = "SELECT * FROM teachers WHERE id = ".$rowTch["teacherId"]."";
										$resultTchInfo = $conn->query($sqlTchInfo);
										if($rowTchInfo = $resultTchInfo -> fetch_assoc()){
											$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"]. ",Course," .  $rowTchInfo["name"] . " " . $rowTchInfo["surname"];
										}
										$done=true;
									}
									if($liberLaToateGrupele==true)
									{
										$weekTeacher[$rowTch["teacherId"]][$i][$j] .= "," . $rowSubj["name"] . ",Course";
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
				$sqlTch = "SELECT * FROM teachertype WHERE subjectId=".$rowSubj["id"]."";
				$resultTch = $conn->query($sqlTch);
				while($rowTch = $resultTch -> fetch_assoc())
				{
					//alegem un  interval orar care e liber si pt prof si pt toate grupele
					$x=$rowStd["hoursPerWeek"];
					if($x==2)
					{
						$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
						$resultGroup = $conn->query($sqlGroup);
						while($rowGroup = $resultGroup -> fetch_assoc()){
							$done = false;
						for($i=1; $i<=5 && $done==false; $i++)
							for($j=1; $j<=10 && $done==false; $j++)
								if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]) && empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]))
								{
									$liberGrupa=true;
									if(!(empty($weekGroup[$rowGroup["id"]][$i][$j]) && empty($weekGroup[$rowGroup["id"]][$i][$j+1])))
										{
											$liberGrupa=false;
										}
									if(!empty($weekGroup[$rowGroup["id"]][$i][0]) && $weekGroup[$rowGroup["id"]][$i][44]>5)
											$liberGrupa=false;
									if($liberGrupa==true)
									{
										if(empty($weekGroup[$rowGroup["id"]][$i][44]))
											$weekGroup[$rowGroup["id"]][$i][44]=2;
										else
											$weekGroup[$rowGroup["id"]][$i][44]+=2;
										$done=true;
									}
									if($liberGrupa==true){
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .= ", " . $rowGroup["groupName"] ;
										if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j+1]))
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] = $rowGroup["groupName"];
										else
											$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= ", " . $rowGroup["groupName"] ;

										$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"];
										$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"];

										
										$sqlTchInfo = "SELECT * FROM teachers WHERE id = ".$rowTch["teacherId"]."";
										$resultTchInfo = $conn->query($sqlTchInfo);
										if($rowTchInfo = $resultTchInfo -> fetch_assoc()){
											if($rowSubj["type"]==2){
												$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Seminar," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
												$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",Seminar," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
											}
											else
											if($rowSubj["type"]==3){
												$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Laboratory," . $rowTchInfo["name"]." " . $rowTchInfo["surname"];
												$weekGroup[$rowGroup["id"]][$i][$j+1] = $rowSubj["name"] . ",Laboratory," .  $rowTchInfo["name"]." " . $rowTchInfo["surname"];
											}
										}
									}
									if($liberGrupa==true && $rowSubj["type"]==2)
									{
										$weekTeacher[$rowTch["teacherId"]][$i][$j] .= "," . $rowSubj["name"] .  ",Seminar";
										$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= "," . $rowSubj["name"] . ",Seminar";
									}
									if($liberGrupa==true && $rowSubj["type"]==3)
									{
										$weekTeacher[$rowTch["teacherId"]][$i][$j] .= "," . $rowSubj["name"] . ",Laboratory";
										$weekTeacher[$rowTch["teacherId"]][$i][$j+1] .= "," . $rowSubj["name"] . ",Laboratory";
									}
								}
							}
					}
					else
					{
						//seminarii si laboratoare o data la 2 saptamani
						$sqlGroup = "SELECT * FROM groups WHERE specialization = ".$rowSpec["id"]."";
						$resultGroup = $conn->query($sqlGroup);
						while($rowGroup = $resultGroup -> fetch_assoc()){
							$done = false;
							for($i=1; $i<=5 && $done==false; $i++)
								for($j=1; $j<=11 && $done==false; $j++)
									if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
									{
										$liberGrupa=true;
										if(!(empty($weekGroup[$rowGroup["id"]][$i][$j])))
											{
												$liberGrupa=false;
											}
										if(!empty($weekGroup[$rowGroup["id"]][$i][0]) && $weekGroup[$rowGroup["id"]][$i][44]>6)
												$liberGrupa=false;
										if($liberGrupa==true)
										{
											if(empty($weekGroup[$rowGroup["id"]][$i][44]))
												$weekGroup[$rowGroup["id"]][$i][44]=1;
											else
												$weekGroup[$rowGroup["id"]][$i][44]+=1;
											$done=true;
										}
										if($liberGrupa==true){
											if(empty($weekTeacher[$rowTch["teacherId"]][$i][$j]))
												$weekTeacher[$rowTch["teacherId"]][$i][$j] = $rowGroup["groupName"];
											else
												$weekTeacher[$rowTch["teacherId"]][$i][$j] .= ", " . $rowGroup["groupName"] ;

											$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"];

											
											$sqlTchInfo = "SELECT * FROM teachers WHERE id = ".$rowTch["teacherId"]."";
											$resultTchInfo = $conn->query($sqlTchInfo);
											if($rowTchInfo = $resultTchInfo -> fetch_assoc()){
												if($rowSubj["type"]==2){
													$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Seminar," . $rowTchInfo["name"] . " " . $rowTchInfo["surname"];
												}
												else
												if($rowSubj["type"]==3){
													$weekGroup[$rowGroup["id"]][$i][$j] = $rowSubj["name"] . ",Laboratory," . $rowTchInfo["name"]." " . $rowTchInfo["surname"];
												}
											}
										}

										if($liberGrupa==true && $rowSubj["type"]==2)
										{
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .="," . $rowSubj["name"] .  ",Seminar";	
										}
										if($liberGrupa==true && $rowSubj["type"]==3)
										{
											$weekTeacher[$rowTch["teacherId"]][$i][$j] .="," . $rowSubj["name"] .  ",Laboratory";
										}
									}
						}

					}
				}
			}
		}
	}
	$sql = "SELECT * FROM groups";
	$result = $conn->query($sql);
	$numberOfGroups = $result->num_rows;

	$sql = "SELECT * FROM teachers";
	$result = $conn->query($sql);
	$numberOfTeachers = $result->num_rows;
	$table="";
	
	for($i=1; $i<=$numberOfGroups+1; $i++)
	{
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=12; $k++){
				$x=$k+7;
				if(!empty($weekGroup[$i][$j][$k]))
					$sqlInsert="INSERT INTO schedulegroups (groupName, day, startHour, info) VALUES ('".$i."', '".$j."', '".$x."', '".$weekGroup[$i][$j][$k]."')";
				else
					$sqlInsert="INSERT INTO schedulegroups (groupName, day, startHour, info) VALUES ('".$i."', '".$j."', '".$x."', 'free')";
				//var_dump($sqlInsert);
				$conn->query($sqlInsert);
			}
		}	
	}

	for($i=1; $i<=$numberOfTeachers; $i++)
	{
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=12; $k++){
				$x=$k+7;
				if(!empty($weekTeacher[$i][$j][$k]))
					$sqlInsert="INSERT INTO scheduleteachers (idTeacher, day, startHour, info) VALUES ('".$i."', '".$j."', '".$x."', '".$weekTeacher[$i][$j][$k]."')";
				else
					$sqlInsert="INSERT INTO scheduleteachers (idTeacher, day, startHour, info) VALUES ('".$i."', '".$j."', '".$x."', 'free')";
				//var_dump($sqlInsert);
				$conn->query($sqlInsert);
			}
		}	
	}

	/*for($i=1; $i<=6; $i++)
	{
		$table = "<table class=\"table\">";
		echo "schedule for teacher with id " . $i . "<br>";
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=12; $k++)
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

	for($i=1; $i<=4; $i++)
	{
		$table = "<table class=\"table\">";
		for($j=1; $j<=5; $j++)
		{
			$table .= "<tr>";
			for($k=1; $k<=12; $k++)
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
	}*/
}
?>