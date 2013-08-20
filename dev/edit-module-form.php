<html>
<body>
Edit Module <br>


<form action="edit-module-action.php" method="post"
enctype="multipart/form-data">

<?php
$modulename = $_GET['module-name']; //get the module name, as typed in by user on previous page.
include("../db-connect.php");
$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `name` = \"" . $modulename ."\"");
$module = mysqli_fetch_array($temp);
if($module["name"] == null){ //could not find the module based on the name the user typed
	die("You typed the module name wrong. Please try again");
}
//if program did not die, user must have typed the name correctly. Proceed. 

echo  "You are editing the " . $module["name"];
?>
<br>
Fields to Change: <br>
Module Name: <input type="text" name="modulename"><br>
Difficulty: <input type="text" name="difficulty"><br>
Subcategory: <br>

<?php/*
	$type = $_POST['type']; //need to get the selected type from the previous page to display correct subcategories

	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * from `category_table` WHERE `typeID`=" . $type);
	while($cat=mysqli_fetch_array($temp)){
		echo $cat['subcategoryID']+$cat['name'];
	}*/
?>

Author: <br> <!--will use php to generate the list of authors as radio buttons-->


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

<input type="submit" value="Okay!">

</form>
</body>
</html>