<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	<p id="title">Create a New Module</p>
	<br/>
	<form name="input" method="get" action="create-module-form.php">
	Module Name:<input type="text" name="name"/><br/><br/>
	</form>
	Module Description: <input type="text" name="description" style="width:180px; height:80px;"/><br /><br />
	Difficulty:<input type="text" name="difficulty"/><br/><br/>
	Sub-category:<br/>
	<?php
		$i = 0;
		$type = $_GET["type"];
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
	Author:<input type="text" name="author"/><br/><br/>
	Icon: <input type="file" name="file" id="file"><br/><br/>
	Big icon (tooltip icon): <input type="file" name="file" id="file"><br/><br/>
	Download file (optional): <input type="file" name="file" id="file"><br/><br/>
	Download type:<input type="text" name="dltype"/><br/><br/>
	Number of applications (not including overview):<input type="integer" name="applications"/><br/><br/>
	Number of steps:<input type="integer" name="steps"/><br/>
	
	<input type="submit" value="Continue to Overview/Applications"/>
	<a href="dev-welcome.php"><input type="submit" value="Cancel"/></a>
	
</body>
</html