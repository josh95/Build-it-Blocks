<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>

<html>
<head>
	<?php include("stop-enter-key.php");?>
</head>
<body>
Edit Module <br>


<form action="edit-module-action.php" method="post"
enctype="multipart/form-data">
<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
<?php
$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
include("../db-connect.php");
$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
$module = mysqli_fetch_array($temp);
if($module["name"] == null){ //could not find the module based on the name the user typed
	die("You typed the module name wrong. Please try again");
}
//if program did not die, user must have typed the name correctly. Proceed. 

echo  "You are editing the " . $module["name"];

echo "<input type=\"hidden\" name=\"moduleid\" value=". $module['ID'] .">" //hidden types pass on a post variable to next page that user does not input
												//in this case, we pass the moduleID which the developer might not know
?>
<br>
Fields to Change: <br>
Module Name: <input type="text" name="modulename"><br>
Difficulty (1-easy, 2-medium, 3-hard): <input type="text" name="difficulty"><br>
Subcategory: <br> <input type="hidden" name="subcategoryID" value="0"> <!--sets a default value for subcategoryID, otherwise we get error-->

<?php
	$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
	$module = mysqli_fetch_array($temp);


	$type = $module['type']; //need to get the selected type from the previous page to display correct subcategories
	$temp = mysqli_query($con, "SELECT * from `category_table` WHERE `typeID`=" . $type);
	while($cat=mysqli_fetch_array($temp)){
		echo $cat['subcategoryID'] . $cat['name'] . "<input type='radio' name='subcategoryID' value=". $cat['subcategoryID'] ."><br>";
	}
?>
<br>

Date Posted:<br />
	<select name="month">
		<option value="select" selected>select
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
		<option value="select" selected>select
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
Author: <br> <!--use php to generate the list of authors as radio buttons-->
<input type="hidden" name="authorID" value="0">
<?php
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `author`");

	while($authors=mysqli_fetch_array($temp)){
		echo $authors['name'] . "<input type='radio' name='authorID' value=". $authors['authorID'] ."><br>";
	}
?>

<label for="file">Icon <br> NOTE: Must be 150 x 150 pixels:</label>
<input type="file" name="icon" >
<br>

<label for="file">Tool-tip Icon</label>
<input type="file" name="tool-tip-icon" >
<br>

<label for="file">Download file (optional)</label>
<input type="file" name="download-file" >
<br>

Download Type(optional unless previous field is filled): <input type="text" name="download-type"><br>

<!--If this is checked, download file is deleted-->
<input type="hidden" name="delete-download" value="0"> <!--default value-->
<input type="checkbox" name="delete-download" value="1">Delete Download<br>

<input type="submit"  value="Okay">

</form>

<!--These separate forms are used for the user to edit instructions, edit applications/overview, add applications, or add instructions
there is one form for each of those options-->

<form action="edit-instructions-form.php" method="post"><!--edit instructions-->
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<?php
		$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
		$module = mysqli_fetch_array($temp);
		//pass on the moduleid to next page to use
		echo "<input type=\"hidden\" name=\"moduleid\" value=". $module['ID'] .">"
	?>
	<input type="submit"  value="Edit Instructions">

</form>

<form action="edit-applications-form.php" method="post"><!--edit applications/overview-->
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<?php
		$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
		$module = mysqli_fetch_array($temp);
		//pass on the moduleid to next page to use
		echo "<input type=\"hidden\" name=\"moduleid\" value=". $module['ID'] .">"
	?>
	<input type="submit"  value="Edit Applications/Overview">
</form>

<form action="new-instructions-form.php" method="post"><!--add instructions-->
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<?php
		$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
		$module = mysqli_fetch_array($temp);
		//pass on the moduleid to next page to use
		echo "<input type=\"hidden\" name=\"moduleid\" value=". $module['ID'] .">"
	?>
	<input type="submit"  value="Add Instructions">
	Add <input type="text" name="noofsteps" value="1"> new steps.
</form>

<form action="new-applications-form-edit.php" method="post"><!--add applications-->
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<?php
		$modulename = $_POST['module-name']; //get the module name, as typed in by user on previous page.
		include("../db-connect.php");
		$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
		$module = mysqli_fetch_array($temp);
		//pass on the moduleid to next page to use
		echo "<input type=\"hidden\" name=\"moduleid\" value=". $module['ID'] .">"
	?>
	<input type="submit"  value="Add Applications">
	Add <input type="text" name="noofapps" value="1"> new applications.
</form>

<!--This is a cancel button-->
<form action="dev-welcome.php" method="post">
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<input type="submit" value="Cancel"/>
</form>

</body>
</html>