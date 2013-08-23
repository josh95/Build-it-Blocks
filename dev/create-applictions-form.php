<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	<p id="title">Create Applications for you're module</p>
	<br/>
	Overview Image: <input type="file" name="overviewimg"/>   Text: <input type="text" name="overviewtext">   Title: <input type="text" name="overviewtitle"><br/><br/>
	<?php
	//$i = $_POST("noofapps");
	$i = 5;
	for ($x=1; $x<=$i; $x++) {
	echo "Application " . $x . " image: <input type='file' name='application" . $x . "img>  Text: <input type='text' name='application" . $x . "text'>   Title: <input type='text' name='application" . $x . "title>";
	}
	?>
	<input type="submit" value="submit">
</body>
</html>	