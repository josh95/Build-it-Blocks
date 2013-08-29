<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>

<html>
<body>
Editing Instructions

<form action="edit-instructions-action.php" method="post" enctype="multipart/form-data">
<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
<?php
	$moduleid=$_POST['moduleid'];
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `steps` WHERE `moduleID` = $moduleid ");
	//select all the steps belonging to the module so that page can display the correct amount of input boxes
	$count=0; //will count the number of steps
	while(mysqli_fetch_array($temp)){
		$count++;
		echo "Step ".$count ." text: <input type='text' name='textstep".$count ."'><br>\n"; //the name of this variable is "textstep_ where the _ is the step number"
		echo "Step ".$count ." image: <input type='file' name='imagestep". $count ."'>\n";
		
		echo "<br><br>\n";
	}
	echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">"; //pass on the module id to the next page
	echo "<input type=\"hidden\" name=\"numberofsteps\" value=\"". $count ."\">"; //pass on the number of steps
	
	//these next lines of code get the typeID of the module and pass it on to the next page
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `ID` = $moduleid ");
	$module = mysqli_fetch_array($temp);
	echo "<input type=\"hidden\" name=\"typeid\" value=\"". $module['type'] ."\">";
	
?>
<input type="submit" value="submit">
</form>

<!--This is a cancel button-->
<form action="dev-welcome.php" method="post">
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<input type="submit" value="Cancel"/>
</form>

</body>
</html>