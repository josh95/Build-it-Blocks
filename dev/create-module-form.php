<html>
<head></head>
<body>
<?php
$name = $_POST["name"];
$description = $_POST["description"];
$difficulty = $_POST["difficulty"];
$date = 0;
$type = 1;
$subcatid = 0;
$authorID = $_POST["author"];
$icon = $_POST["icon"];
$icontooltip = $_POST["bigicon"];
$iconalttext = 0;
$downloadlink = $_POST["dlfile"];
$downloadtype = $_POST["dltype"];
include("../db-connect.php");
echo $name . $difficulty . $date . $type . $subcatid . $authorID  . $icon . $icontooltip . $downloadlink . $downloadtype;
mysqli_query($con, "INSERT INTO  `builditblocks`.`module_index` (
`ID` ,
`partnerID` ,
`name` ,
`description` ,
`difficulty` ,
`date-posted` ,
`type` ,
`subcategoryID` ,
`authorID` ,
`popularity` ,
`icon` ,
`icon-tooltip` ,
`icon-alt-text` ,
`download-link` ,
`download-type`
)
VALUES (
NULL ,  NULL ,  '$name',  $description ,  $difficulty ,  $date ,  $type ,  $subcatid ,  $authorID ,  $icon ,  $icontooltip ,  $iconalttext ,  $downloadlink ,  $downloadtype , '' ,  ''
#'
);"
);
echo "Thank You for adding the module" . "whatevs" . "to the database!";
?>
<a href="dev-welcome.php">Return to Developers Page</a>
</body>
</html>