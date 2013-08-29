<html>
<body>
Edit Module <br>


<form action="edit-module-action.php" method="post"
enctype="multipart/form-data">

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

<input type="hidden" name="delete-download" value="0"> <!--default value-->
<input type="checkbox" name="delete-download" value="1">Delete Download<br>

<input type="submit"  value="Okay">

</form>

<form action="edit-instructions-form.php" method="post"><!--edit instructions-->
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


</body>
</html>