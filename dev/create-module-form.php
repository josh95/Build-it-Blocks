<html>
<head></head>

<?php 
$name = $_POST["name"];
$difficulty = $_POST["difficulty"];
$date = 0;
$type = $_POST["1"];
$subcatid = 0;
$authorID = $_POST["author"];
$icon = $_POST["icon"];
$icontooltip = $_POST["bigicon"];
$downloadlink = $_POST["dlfile"];
$downloadtype = $_POST["dltype"];

include("../db-connect.php");

mysqli_query($con, "INSERT INTO  `builditblocks`.`module_index` (
`ID` ,
`name` ,
`difficulty` ,
`date-posted` ,
`type` ,
`subcategoryID` ,
`authorID` ,
`icon` ,
`icon-tooltip` ,
`download-link` ,
`download-type`
)
VALUES (
NULL ,  $name,  $difficulty,  '',  $type,  $subcatid,  $authorID,  $icon,  $icontooltip,  $downloadlink,  $downloadtype
#'
);"
);
?>