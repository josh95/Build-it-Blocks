<html>
<body>
Editing Instructions

<form action="edit-instructions-action.php" method="post" enctype="multipart/form-data">
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


</body>
</html>