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
	
	
	//this part is for inserting the overview
	$overviewtext = $_POST["overviewtext"];
	$overviewtitle = $_POST["overviewtitle"];
	if(isset($_POST["overviewlink"])){ //user submitted a link?
		$overviewlink=$_POST["overviewlink"];
	}else{
		$overviewlink="";
	}
	
	move_uploaded_file($_FILES["overviewimg"]["tmp_name"],
	"../module-images/applications-img/". $typename . "/" . $_FILES["overviewimg"]["name"]);
	//update applications with new file path to image
	$overviewimgpath = "module-images/applications-img/". $typename . "/" .$_FILES["overviewimg"]["name"];
	mysqli_query($con, "INSERT INTO `applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) 
	VALUES (NULL,\"". $moduleid."\",\"". $overviewimgpath."\",\"". $overviewtext."\", \"".$overviewtitle."\", \"".$overviewlink."\", NULL);");
	
	echo "overview uploaded. <br>";
	
	//this part is for inserting the applications
	//loop inserts rows into the database for each application the user inputs
	for ($x=1; $x<=$noofapps; $x++) {
		$apptext = $_POST["apptext".$x];
		$apptitle = $_POST["apptitle".$x];
		
		if(isset($_POST["applink".$x])){ //user submitted a link?
			$applink=$_POST["applink".$x];
		}else{
			$applink="";
		}
		
		move_uploaded_file($_FILES["appimg".$x]["tmp_name"],
		"../module-images/applications-img/". $typename . "/" . $_FILES["appimg".$x]["name"]);
		//update applications with new file path to image
		$appimgpath = "module-images/applications-img/". $typename . "/" .$_FILES["appimg".$x]["name"];
		mysqli_query($con, "INSERT INTO `applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) 
		VALUES (NULL,\"". $moduleid."\",\"". $appimgpath."\",\"". $apptext."\", \"".$apptitle."\", \"".$applink."\", NULL);");
		echo "application " . $x . " uploaded.<br>";
	}

?>

<html>
<body>
	Now go on to adding the steps.<br>
	<form method="post" action="new-instructions-form.php">
		<input type="submit" value="Go">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		<?php
			$moduleid= $_POST["moduleid"];
			$noofsteps = $_POST["noofsteps"];
			echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
			echo "<input type=\"hidden\" name=\"noofsteps\" value=\"". $noofsteps ."\">";
		?>
	</form>
</body>
</html>