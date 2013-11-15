<!--This page exists for the same reason new-applications-form-edit.php does. It is needed because there needs to be a custom page
for adding applications through "edit module" rather than "add module"-->

<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>

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
	
	//this part is for inserting the applications
	//loop inserts rows into the database for each application the user inputs
	for ($x=1; $x<=$noofapps; $x++) {
		$apptext = $_POST["apptext".$x];
		$apptitle = $_POST["apptitle".$x];
		
		move_uploaded_file($_FILES["appimg".$x]["tmp_name"],
		"../module-images/applications-img/". $typename . "/" . $_FILES["appimg".$x]["name"]);
		//update applications with new file path to image
		$appimgpath = "module-images/applications-img/". $typename . "/" .$_FILES["appimg".$x]["name"];
		mysqli_query($con, "INSERT INTO `builditblocks`.`applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) 
		VALUES (NULL,\"". $moduleid."\",\"". $appimgpath."\",\"". $apptext."\", \"".$apptitle."\", NULL, NULL);");
		echo "application " . $x . " uploaded.<br>";
	}

?>

<html>
<body>
	Edits made. Return to main dev page?<br>
	<form method="post" action="dev-welcome.php">
		<input type="submit" value="Go">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	</form>
</body>
</html>