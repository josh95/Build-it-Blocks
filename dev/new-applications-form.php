<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	<p id="title">Create Applications for your module</p>
	<br/>
	<form action="new-applications-action.php" method="post" enctype="multipart/form-data">
		Overview Image: <input type="file" name="overviewimg"/>   Text: <input type="text" name="overviewtext">   Title: <input type="text" name="overviewtitle"><br/><br/>
		<?php
		$moduleid= $_POST["moduleid"];
		$noofapps = $_POST["noofapps"];
		//for loop takes the amount of applications the user said they would have in previous page and echos out the places they can add the values
		for ($x=1; $x<=$noofapps; $x++) {
		echo "Application " . $x . " image: <input type='file' name='appimg" . $x . "'>  
		Text: <input type='text' name='apptext" . $x . "'>   Title: <input type='text' name='apptitle" . $x . "'> <br/><br/>";
		}
		//pass on the number of apps and module id
		echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
		echo "<input type=\"hidden\" name=\"noofapps\" value=\"". $noofapps ."\">";
		?>
		<input type="submit" value="submit">
	</form>
</body>
</html>	