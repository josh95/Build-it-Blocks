<?php
$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
include("../db-connect.php");
$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
if($temp == null){ //could not find the module based on the name the user typed
	die("You typed the module name wrong. Please try again");
}
//if program did not die, user must have typed the name correctly. Proceed. 
$module = mysqli_fetch_array($temp);
echo  "cool cool" . $module["ID"];


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
		"upload/" . $_FILES["icon"]["name"]);
		echo "Stored in: " . "upload/" . $_FILES["icon"]["name"];//stored in folder upload, will change to proper folder later
    }
}
else{
  echo "Invalid icon. File size too big.";
}
?> 