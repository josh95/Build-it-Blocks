<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
    <?php
			//checks if user inputs correct username and password and returns error if not
            $username = $_POST['user'];
            $password = $_POST['pass'];
            $con=mysqli_connect("localhost",$username,$password,"test");
			if (mysqli_connect_errno($con))
			{
				die("incorrect username or password");
			}	
    ?>
		<!-- Asks if user wants to create, delete or edit a module-->
		<p id="title">Welcome to the developers page, what would you like to do?</p>
		<a id="logout" href="dev-page.php">Logout</a>
		<table cellpadding="10">
			<tr>
				<td style="padding-left:40px">
					<form name="input" action="new-module-form.php" method="post">
					<p>Would you like to upload a new Module?
					<p>What type of module do you want to upload?</p>
					<!-- All of the different module types displayed here as radio buttons-->
					<form action="create-module-form.php" method="post">
						<input type="radio" name="type1" value=1 checked> Junk<br>
						<input type="radio" name="type1" value=2> Lego<br>
						<input type="radio" name="type1" value=3> Art<br/>
						<input type="radio" name="type1" value=4> Code<br/>
						<input type="radio" name="type1" value=5> Minecraft<br/><br/>	
						<input type="submit" value="Go!">
					</form>
				</td style="padding-left:40px">
				<td>
					<form name="input" action="delete-module-form.php" method="post">
						Do you want to delete a module?
						<p>(make you sure you type correct)</p>
						<input type="text" name="delete" value="Module name">
						<input type="submit" value="Go!">
					</form>
				</td>
				<td style="padding-left:40px">
					<form action="edit-module-form.php" method="post">
						Or do you want to edit a module?<br/>
						<input type="text" name="module-name" value="Module name"/>
						<input type="submit" value="Go!">
					</form>
					
				</td>
			</tr>
		</table>
	<br/>
	<p>These are all the existing modules:
	<?php
	
	echo "<table><tr>";
	echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 1");
	$i = 0;
	//puts all of the Junk module names in an array and echos them in an unordered list
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
	//same as other loop except with lego modules
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 3");
	$i = 0;
	//same but with art modules
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 4");
	$i = 0;
	//Code modules
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
		echo "<td><ul>";
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `type` = 5");
	$i = 0;
	//Minecraft modules
	while($module = mysqli_fetch_array($temp)) {
	 "moduleArray[".$i."]=\"" . $module["name"]."\";" ;
		$i++;
		echo "<li>" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
	
	echo "</tr></table>";
	?>
	</ul>
</body>
</html>