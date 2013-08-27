<?php
	$noofapps = $_POST["noofapps"];
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
	
	

	$overviewtext = $_POST["overviewtext"];
	$overviewtitle = $_POST["overviewtitle"];
	
	move_uploaded_file($_FILES["overviewimg"]["tmp_name"],
	"upload/" . $_FILES["overviewimg"]["name"]);
	//update applications with new file path to image
	$overviewimgpath = "module-images/applications-img/". $typename . "/" .$_FILES["overviewimg"]["name"];
	mysqli_query($con, "INSERT INTO `builditblocks`.`applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) 
	VALUES (NULL,\"". $moduleid."\",\"". $overviewimgpath."\",\"". $overviewtext."\", \"".$overviewtitle."\", NULL, NULL);");
	
	echo "overview uploaded. <br>";
	
	//loop inserts rows into the database for each application the user inputs
	for ($x=1; $x<=$noofapps; $x++) {
		$apptext = $_POST["apptext".$x];
		$apptitle = $_POST["apptitle".$x];
		
		move_uploaded_file($_FILES["appimg".$x]["tmp_name"],
		"upload/" . $_FILES["appimg".$x]["name"]);
		//update applications with new file path to image
		$appimgpath = "module-images/applications-img/". $typename . "/" .$_FILES["appimg".$x]["name"];
		mysqli_query($con, "INSERT INTO `builditblocks`.`applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) 
		VALUES (NULL,\"". $moduleid."\",\"". $appimgpath."\",\"". $apptext."\", \"".$apptitle."\", NULL, NULL);");
		echo "application " . $x . " uploaded.<br>";
	}


?>