<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	<p id="title">Create a New Module</p>
	<br/>
	<form name="input" method="post" action="create-module-form.php">
	Module Name:<input type="text" name="name"/><br/><br/>
	Difficulty:<input type="text" name="difficulty"/><br/><br/>
	Sub-category:<br/>
	<?php
		$i = 0;
		$type = $_POST["type"];
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `category_table` WHERE `typeID` = $type");
		while ($type1 = mysqli_fetch_array($temp)) {
			
			echo "<input type='radio'>";
			echo $type1["name"];
			echo "<br/>";	
		}
	?>
	<br/>
	<br/>
	Author ID:<input type="text" name="author"/><br/><br/>
	Icon: <input type="file" name="icon" id="file"><br/><br/>
	Big icon (tooltip icon): <input type="file" name="bigicon" id="file"><br/><br/>
	Download file (optional): <input type="file" name="dlfile" id="file"><br/><br/>
	Download type: <input type="text" name="dltype"/><br/><br/>
	Number of applications (not including overview): <input type="number" name="noofapps" value="1"/><br/><br/>
	Number of steps: <input type="number" name="noofsteps" value="1"/><br/>
	</form>
	<a href="create-module-form.php"><input type="submit" value="Continue to Overview/Applications"/><a/>
	<a href="dev-welcome.php"><input type="submit" value="Cancel"/></a>
	
</body>
</html