<!DOCTYPE html>
<html>
<head></head>
<body>
    <?php
            $username = $_POST['user'];
            $password = $_POST['pass'];
            $con=mysqli_connect("localhost",$username,$password,"test");
			if (mysqli_connect_errno($con))
			{
				die("incorrect username or password");
			}
			echo "Welcome, what would you like to do?";
			
    ?>
	<br /><br />
		<form name="input" action="new-module-form.php" method="get">
		<p>Would you like to upload a new Module?
		<p>What type of module do you want to upload?</p>
		<a href="">Lego<a/>|
		<a href="">Junk</a>|
		<a href="">Art</a>|
		<a href="">Code</a>|
		or <a href="">Minecraft</a>
		</form>
		<br />
		<br />
		
	Do you want to delete a module?<br />
	Module Name:<input type="text" name="delete-module"/>
	<br/>
	<br/>
	Or do you want to edit a module?<br/>
	Module Name:<input type="text" name="edit-module"/>
	
	<br/>
	<p>These are all the existing modules:
	<ul>
	<?php
	echo "<table><tr>";
	echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 1");
	$i = 0;
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 2");
	$i = 0;
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li  style='border:1px solid black'>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 3");
	$i = 0;
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li  style='border:1px solid black'>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 4");
	$i = 0;
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li  style='border:1px solid black'>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 5");
	$i = 0;
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li  style='border:1px solid black'>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
	
	echo "</tr></table>";
	?>
	</ul>
</body>
</html>