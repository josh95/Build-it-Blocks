<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	<p id="title">Create Instructions for your module</p>
	<br/>
	<form action="new-instructions-action.php" method="post" enctype="multipart/form-data">
		<?php
		$moduleid= $_POST["moduleid"];
		$noofsteps = $_POST["noofsteps"];
		
		//for loop takes the amount of steps the user said they would have in previous page and echos out the places they can add the values
		for ($x=1; $x<=$noofsteps; $x++) {
		echo "Step " . $x . " image: <input type='file' name='stepimg" . $x . "'>  
		Text: <input type='text' name='steptext" . $x . "'> ";
		}
		//pass on the number of steps and module id
		echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
		echo "<input type=\"hidden\" name=\"noofsteps\" value=\"". $noofsteps ."\">"; //although noofsteps won't be used on next page,the page after will need it
		?>
		<input type="submit" value="submit">
	</form>
</body>
</html>	