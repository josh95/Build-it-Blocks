<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?> 

<html>
<head></head>
<body>
<?php
include("../db-connect.php");
//all of these variables store what the user typed in the text boxes at the previous oage
$name = $_POST["name"];

//this is used to check if there is already a module with the same name
$temp = mysqli_query($con, "SELECT * FROM `builditblocks`.`module_index` WHERE `name` = \"". $name. "\"");
$nametest = mysqli_fetch_array($temp);

if($nametest){ //if $nametest contains something, that means a module in the database already has the same name
	echo "<form action=\"dev-welcome.php\" method=\"post\">";
	echo "<input type=\"hidden\" name=\"loggedin\" value=\"1\">";
	echo "<input type=\"submit\" value=\"Go Back\"/>";
	echo "</form>";
	die( "There is already a module with this name!");
}

$description = $_POST["description"];
$difficulty = $_POST["difficulty"];
$type = $_POST["type"];
$subcatid = $_POST["subcatid"];
$authorID = $_POST["authorID"];
$iconpath = "module-images/icons/". $_FILES["icon"]["name"];

//stores the icon img in the correct folder
move_uploaded_file($_FILES["icon"]["tmp_name"],
"../module-images/icons/" . $_FILES["icon"]["name"]);

//upload the tooltip-icon if there is one
if ($_FILES["bigicon"]["size"] == 0){ //if tooltip field was left blank
	echo "No tooltip icon. <br>";
	$icontooltippath = "";
}
else{//user DID put in a tool tip icon, then upload it to the correct folder
	$icontooltippath = "module-images/icons/tooltip-icons/". $_FILES["bigicon"]["name"];
	move_uploaded_file($_FILES["bigicon"]["tmp_name"],
	"../module-images/icons/tooltip-icons/" . $_FILES["bigicon"]["name"]);
}

$iconalttext = ""; //this really isnt used much anyways

if ($_FILES["dlfile"]["size"] == 0){ //if download file field was left blank
	echo "No download file. <br>";
	$downloadlink = "";
	$downloadtype = "";
}
else{
	echo "Upload: " . $_FILES["dlfile"]["name"] . "<br>"; 
	echo "Type: " . $_FILES["dlfile"]["type"] . "<br>";
	echo "Size: " . ($_FILES["dlfile"]["size"] / 1024) . " kB<br>";

	move_uploaded_file($_FILES["dlfile"]["tmp_name"],
	"../module-resources/" . $_FILES["dlfile"]["name"]);
	//update index with new file path to image
	$downloadlink = "module-resources/". $_FILES["dlfile"]["name"];
	$downloadtype = $_POST["dltype"];
}


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
	NULL, NULL, \"".$name."\", \"" . $description. "\",". $difficulty .", CURDATE() ,". $type .",". $subcatid .",". $authorID .", '9',\"" . $iconpath . "\",\"". $icontooltippath ."\", '',\"". $downloadlink ."\", \"". $downloadtype ."\")"
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

?>
<input type="hidden" name="loggedin" value="1"> 
</form>


</body>
</html>