<html>
<head></head>
<body>
<?php
//all of these variables store what the user typed in the text boxes at the previous oage
$name = $_POST["name"];
//$name = mysql_real_escape_string($name);
$description = $_POST["description"];
$difficulty = $_POST["difficulty"];
$date = 0;
$type = $_POST["type"];
$subcatid = $_POST["subcatid"];
$authorID = $_POST["authorID"];
$iconpath = "module-images/icons/". $_FILES["icon"]["name"];

$icontooltippath = "module-images/icons/tooltip-icons/". $_FILES["bigicon"]["name"];
$iconalttext = "";

if ($_FILES["dlfile"]["size"] == 0){ //if download file field was left blank
	echo "No download file";
}
else{
	echo "Upload: " . $_FILES["dlfile"]["name"] . "<br>"; 
	echo "Type: " . $_FILES["dlfile"]["type"] . "<br>";
	echo "Size: " . ($_FILES["dlfile"]["size"] / 1024) . " kB<br>";

	move_uploaded_file($_FILES["dlfile"]["tmp_name"],
	"upload/" . $_FILES["dlfile"]["name"]);
	//update index with new file path to image
	$downloadlink = "module-resources/". $_FILES["dlfile"]["name"];
	$downloadtype = $_POST["dltype"];
}


include("../db-connect.php");
//this query inserts all the variables into the database
mysqli_query($con, "INSERT INTO `builditblocks`.`module_index` (
	`ID`, 
	`partnerID`, 
	`name`, 
	`description`, 
	`difficulty`, 
	`date-posted`, 
	`type`, 
	`subcategoryID`, 
	`authorID`, 
	`popularity`, 
	`icon`, 
	`icon-tooltip`, 
	`icon-alt-text`, 
	`download-link`, 
	`download-type`
	)
	VALUES (
	NULL, NULL, \"".$name."\", \"" . $description. "\",". $difficulty .", '0',". $type .",". $subcatid .",". $authorID .", '9',\"" . $iconpath . "\",\"". $icontooltippath ."\", '',\"". $downloadlink ."\", \"". $downloadtype ."\")"
);

echo "Thank You for adding the module " . $name . " to the database. Now please proceed to filling out its applications and overview.";

$temp=mysqli_query($con,"SELECT `ID` FROM `module_index` WHERE `name` =\"" .$name. "\""); //get the id of the module you just put in
$id = mysqli_fetch_array($temp);

//this creates the continue to overview button and passes the module's id as a hidden post variable
echo "<form action=\"new-applications-form.php\" method=\"post\">";
echo "<input type=\"hidden\" name=\"moduleid\" value=\"" .$id['ID']. "\">";
echo "<input type=\"hidden\" name=\"noofapps\" value=\"" .$_POST['noofapps']. "\">";
echo "<input type=\"hidden\" name=\"noofsteps\" value=\"" .$_POST['noofsteps']. "\">";
echo "<input type=\"submit\" value=\"Continue\">";
echo "</form>";

?>


<a href="dev-welcome.php">Return to Developers Page</a>
</body>
</html>