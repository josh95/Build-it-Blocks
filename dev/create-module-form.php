<html>
<head></head>
<body>
<?php 
$name = $_POST["name"];
$difficulty = $_POST["difficulty"];
$date = 0;
$type = $_POST["type"];
$subcatid = 0;
$authorID = $_POST["author"];
$icon = $_POST["icon"];
$icontooltip = $_POST["bigicon"];
$downloadlink = $_POST["dlfile"];
$downloadtype = $_POST["dltype"];

include("../db-connect.php");

INSERT INTO  `builditblocks`.`module_index` (
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
NULL ,  $name,  $difficulty,  $date,  $type,  $subcatid,  $authorID,  $icon,  $icontooltip,  $downloadlink,  $downloadtype
#'
);