<?php
	$noofsteps = $_POST["noofsteps"];
	$moduleid = $_POST["moduleid"];
	include("../db-connect.php");
	
	//this gets the name of the type of module, needed for inserting images to the right folder
	$temp=mysqli_query($con,"SELECT `type` FROM `module_index` WHERE `ID` =\"" .$moduleid. "\""); 
	$typeid = mysqli_fetch_array($temp);
	$typearray = array(
		1 => "junk",
		2 => "lego",
		3 => "art",
		4 => "code",
		5 => "minecraft"
	);
	$typename= $typearray[$typeid['type']];
	
		
	//loop inserts rows into the database for each application the user inputs
	for ($x=1; $x<=$noofsteps; $x++) {
		$steptext = $_POST["steptext".$x];
		
		move_uploaded_file($_FILES["stepimg".$x]["tmp_name"],
		"upload/" . $_FILES["stepimg".$x]["name"]);
		//update steps with new file path to image
		$stepimgpath = "module-images/instruction-img/". $typename . "/" .$_FILES["stepimg".$x]["name"];
		mysqli_query($con, "INSERT INTO `builditblocks`.`steps` (`ID`, `moduleID`,`step-number`,`image-path`, `step-description`, `related-links`, `rcxcode-robolab`,`rcxcode-mindstorms`) 
		VALUES (NULL,\"". $moduleid."\",". $x .",\"". $stepimgpath."\",\"". $steptext."\", NULL, NULL,NULL);");
		echo "step " . $x . " uploaded.<br>";
	}

?>

<html>
<body>
	You have now completed the process of adding a module to the database.<br>
	<form method="post" action="dev-welcome.php">
		<input type="submit" value="Go back">
	</form>
</body>
</html>