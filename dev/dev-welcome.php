<!DOCTYPE html>

<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>
<html>
<head>
	<link rel="stylesheet" type="text/CSS" href="dev-style.css"/>
	
	<script>
		function fillInName(nameofmodule){
			//when clicking the names of the modules on the list, change the text field of the delete and edit modules to the module clicked
			document.getElementById("delete").value=nameofmodule;
			document.getElementById("edit").value=nameofmodule;
		}
	</script>
</head>
<body>

		<!-- Asks if user wants to create, delete or edit a module-->
		<p id="title">Welcome to the developers page, what would you like to do?</p>
		<a id="logout" href="dev-page.php">Logout</a>
		<table cellpadding="10">
			<tr>
				<td style="padding-left:40px">
					<form action="new-module-form.php" method="post">
						<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
						<p>Would you like to upload a new Module?
						<p>What type of module do you want to upload?</p>
						
						<!-- All of the different module types displayed here as radio buttons-->
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
						<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
						Do you want to delete a module?
						<p>(make you sure you type correct)</p>
						<input id="delete" type="text" name="delete" value="Module name">
						<input type="submit" value="Go!">
					</form>
				</td>
				<td style="padding-left:40px">
					<form action="edit-module-form.php" method="post">
						<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
						Or do you want to edit a module?<br/>
						<input id="edit" type="text" name="module-name" value="Module name"/>
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
		echo "<li onClick=\"fillInName('".$module["name"]."')\" >" . $module["name"] . "</li>";
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
		echo "<li onClick=\"fillInName('".$module["name"]."')\" >" . $module["name"] . "</li>";
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
		echo "<li onClick=\"fillInName('".$module["name"]."')\" >" . $module["name"] . "</li>";
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
		echo "<li onClick=\"fillInName('".$module["name"]."')\" >" . $module["name"] . "</li>";
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
		echo "<li onClick=\"fillInName('".$module["name"]."')\" >" . $module["name"] . "</li>";
	}
		echo "</ul></td>";
	
	echo "</tr></table>";
	?>
	</ul>
</body>
</html>