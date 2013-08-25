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
/*
$icontooltip = $_POST["bigicon"];
$icontooltip = mysql_real_escape_string($icontooltip);
$iconalttext = 0;
$downloadlink = $_POST["dlfile"];
$downloadlink = mysql_real_escape_string($downloadlink);
$downloadtype = $_POST["dltype"];
$downloadtype = mysql_real_escape_string($downloadtype);*/
include("../db-connect.php");
//this query inserts all the variables into the database
//Files should be $files not post
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
	NULL, NULL, \"".$name."\", \"" . $description. "\",". $difficulty .", '0',". $type .",". $subcatid .",". $authorID .", '9',\"" . $iconpath . "\", 'blahaha.jpeg', '', 'blah.php', 'blah')"
);

echo "Thank You for adding the module " . $name . " to the database!";
?>
<a href="dev-welcome.php">Return to Developers Page</a>
</body>
</html>