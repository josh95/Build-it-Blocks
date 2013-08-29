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
</head>
<body>
	<p id="title">Create a New Module</p>
	<br/>
	<form name="input" method="post" action="new-module-action.php" enctype="multipart/form-data">
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	Module Name:<input type="text" name="name"/><br/><br/>
	Description: <input type="text" name="description" style="height:50px"><br/><br/>
	Difficulty:<input type="text" name="difficulty"/><br/><br/>
	Date Posted:<br />
	<select name="month">
		<option value="1">January
		<option value="2">February
		<option value="3">March
		<option value="4">April
		<option value="5">May
		<option value="6">June
		<option value="7">July
		<option value="8">August
		<option value="9">September
		<option value="10">October
		<option value="11">November
		<option value="12">December
	</select>
	<select name="day">
		<option value="1">1
		<option value="2">2
		<option value="3">3
		<option value="4">4
		<option value="5">5
		<option value="6">6
		<option value="7">7
		<option value="8">8
		<option value="9">9
		<option value="10">10
		<option value="11">11
		<option value="12">12
		<option value="13">13
		<option value="14">14
		<option value="15">15
		<option value="16">16
		<option value="17">17
		<option value="18">18
		<option value="19">19
		<option value="20">20
		<option value="21">21
		<option value="22">22
		<option value="23">23
		<option value="24">24
		<option value="25">25
		<option value="26">26
		<option value="27">27
		<option value="28">28
		<option value="29">29
		<option value="30">30
		<option value="31">31
	</select>
	<select name="year">
		<option value="2012">2012
		<option value="2013" selected>2013
		<option value="2014">2014
		<option value="2015">2015
	</select><br /><br />
	Sub-category:<br/>
	<?php
		$i = 0;
		$type = $_POST["type1"]; //get the type of module user wants to add, then display all appropriate subcategories for that type
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `category_table` WHERE `typeID` = $type");
		while ($subcat = mysqli_fetch_array($temp)) {
			
			echo "<input type='radio' name='subcatid' value='". $subcat['subcategoryID'] ."'>";
			echo $subcat["name"];
			echo "<br/>";			
		}
		echo "<input type='hidden' name='type' value='". $type ."'>"; //pass on the type to the next page
	?>
	<br/>
	<br/>
	
	Author: <br> <!--use php to generate the list of authors as radio buttons-->
	<input type="hidden" name="authorID" value="0"> <!--set default to 0-->
	<?php
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `author`");

		while($authors=mysqli_fetch_array($temp)){
			echo $authors['name'] . "<input type='radio' name='authorID' value=". $authors['authorID'] ."><br>";
		}
	?>
	<br>
	Icon: <input type="file" name="icon" id="file"><br/><br/>
	
	Big icon (tooltip icon): <input type="file" name="bigicon" id="file"><br/><br/>
	Download file (optional): <input type="file" name="dlfile" id="file"><br/><br/>
	Download type: <input type="text" name="dltype"/><br/><br/>
	Number of applications (not including overview): <input type="number" name="noofapps" value="1"/><br/><br/>
	Number of steps: <input type="number" name="noofsteps" value="1"/><br/>
	<input type="submit" value="Continue to Overview/Applications"/>
	</form>
	
	<!--This is a cancel button-->
	<form action="dev-welcome.php" method="post">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		<input type="submit" value="Cancel"/>
	</form>
</body>
</html>