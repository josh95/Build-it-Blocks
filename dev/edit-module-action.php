<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>

<?php
include("../db-connect.php");

echo "module ID: " . $_POST['moduleid'] . "<br>"; //tell user module ID

//update difficulty if a difficulty was inputted on previous page.
if ($_POST['difficulty'] != null){ //checking if anything was written in difficulty field
	$difficulty= $_POST['difficulty'];
	echo "changed difficulty to " . $difficulty. "<br>";
	mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `difficulty` = ". $difficulty . " WHERE `module_index`.`ID` =" .$_POST['moduleid']); //moduleID as given by previous page
}
else
	echo "No change to difficulty <br>";

if ($_POST['modulename'] != null){
	$name= $_POST['modulename'];
	//this is used to check if there is already a module with the same name
	$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `name` = \"". $name. "\"");
	$nametest = mysqli_fetch_array($temp);
	
	if($nametest){ //if $nametest contains something, that means a module in the database already has the same name
		echo "A module in the database already has this name. No change made to this module's name. <br>";
	}else
	{
		echo "changed Module's name to " . $name. "<br>";
		mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `name` = \"". $name . "\" WHERE `module_index`.`ID` =" .$_POST['moduleid']); //moduleID as given by previous page
	}
}
else
	echo "No change to Module Name <br>";

if ($_POST['subcategoryID'] != 0){
	$subcat= $_POST['subcategoryID'];
	echo "changed subcategoryID to " . $subcat. "<br>";
	mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `subcategoryID` = \"". $subcat . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']); //moduleID as given by previous page
}
else
	echo "No change to Subcategory ID <br>";

if ($_POST['authorID'] != 0){
	$author= $_POST['authorID'];
	echo "changed AuthorID to " . $author. "<br>";
	mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `authorID` = \"". $author . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']); //moduleID as given by previous page
}
else
	echo "No change to Author ID <br>";


$allowedExts = array("gif", "jpeg", "jpg", "png");
$temp = explode(".", $_FILES["icon"]["name"]);
$extension = end($temp);

if ($_FILES["icon"]["size"] < 200000){ //if icon is larger than 195kb, then it is too big. Tell user that icon is too big
	if ($_FILES["icon"]["size"] == 0){ //if icon field was left blank
		echo "No change to icon" . "<br>";
    }
	else{
		//tell user some stats about their uploaded icon
		echo "Upload: " . $_FILES["icon"]["name"] . "<br>"; 
		echo "Type: " . $_FILES["icon"]["type"] . "<br>";
		echo "Size: " . ($_FILES["icon"]["size"] / 1024) . " kB<br>";

		move_uploaded_file($_FILES["icon"]["tmp_name"],
		"../module-images/icons/" . $_FILES["icon"]["name"]);
		//update module-index with new file path to icon
		mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `icon` = \" module-images/icons/" . $_FILES["icon"]["name"] . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']);
		echo "Stored in: " . "../module-images/icons/" . $_FILES["icon"]["name"];//stored icons folder
    }
}
else{
  echo "Invalid icon. File size too big.";
}

if ($_FILES["tool-tip-icon"]["size"] == 0){ //if icon field was left blank
		echo "No change to tool tip icon" . "<br>";
    }
	else{
		//tell user some stats about their uploaded icon
		echo "Upload: " . $_FILES["tool-tip-icon"]["name"] . "<br>"; 
		echo "Type: " . $_FILES["tool-tip-icon"]["type"] . "<br>";
		echo "Size: " . ($_FILES["tool-tip-icon"]["size"] / 1024) . " kB<br>";

		move_uploaded_file($_FILES["tool-tip-icon"]["tmp_name"],
		"../module-images/icons/tooltip-icons/" . $_FILES["tool-tip-icon"]["name"]);
		echo "Stored in: " . "../module-images/icons/tooltip-icons/" . $_FILES["tool-tip-icon"]["name"];//stored in icons/tooltip-icons
		mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `icon-tooltip` = \" module-images/icons/tooltip-icons/" . $_FILES["tool-tip-icon"]["name"] . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']);
    }

	
if ($_POST['download-type'] != null){
	$downloadtype= $_POST['download-type'];
	echo "<br>changed download type to " . $downloadtype. "<br>";
	mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `download-type` = \"". $downloadtype . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']); //moduleID as given by previous page
}
else
	echo "<br>No change to download type <br>";
	
if ($_FILES["download-file"]["size"] == 0){ //if download field was left blank
	if ($_POST['delete-download']){ //check if user wants to delete the download entirely
		echo "download file deleted. <br>";
		mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `download-link` = \"\" , `download-type`=\"\" WHERE `module_index`.`ID` =".$_POST['moduleid']);
	}
	else{
		echo "No change to download file" . "<br>";
	}
}
	else{ //the download file field was not left blank
		//tell user some stats about their uploaded icon
		echo "Upload: " . $_FILES["download-file"]["name"] . "<br>"; 
		echo "Type: " . $_FILES["download-file"]["type"] . "<br>";
		echo "Size: " . ($_FILES["download-file"]["size"] / 1024) . " kB<br>";

		move_uploaded_file($_FILES["download-file"]["tmp_name"],
		"../module-resources/" . $_FILES["download-file"]["name"]);
		echo "Stored in: " . "../module-resources/" . $_FILES["download-file"]["name"];//stored in folder upload, will change to proper folder later
		mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `download-link` = \" module-resources/" . $_FILES["download-file"]["name"] . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']);
    }
	

?> 

<html>
	<body>
		<br>
		Module has been updated.
		<form action="dev-welcome.php" method="post">
			<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
			<input type="submit" value="Go to Dev Home">
		</form>
	</body>
</html>