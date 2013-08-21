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
	echo "changed Module's name to " . $name. "<br>";
	mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `name` = \"". $name . "\" WHERE `module_index`.`ID` =" .$_POST['moduleid']); //moduleID as given by previous page
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