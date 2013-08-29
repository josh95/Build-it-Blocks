<html>
<body>
Editing Instructions

<form action="edit-applications-action.php" method="post" enctype="multipart/form-data">
<?php
	$moduleid=$_POST['moduleid'];
	include("../db-connect.php");
	$temp = mysqli_query($con, "SELECT * FROM `applications` WHERE `moduleID` = $moduleid ");
	//select all the applications belonging to the module so that page can display the correct amount of input boxes
	$array = mysqli_fetch_array($temp);//fetch the first row, because it is the overview
	$id = $array["ID"]; //get the unique id of the overview
	//NOTE: fetch array is being used here just to get the id of each app, which is used to identify it and update it in the database
	
	//fields for overview
	echo "Overview text: <input type='text' name='textoverview'><br>\n"; 
	echo "Overview title: <input type='text' name='titleoverview'><br>\n"; 
	echo "Overview image: <input type='file' name='imageoverview'>\n <br><br>";
	echo "<input type='hidden' name='overviewid' value=\" $id \">"; //pass on the id as a variable, this is used to update the database.
	
	$count=0; //will count the number of apps
	while($array=mysqli_fetch_array($temp)){
	//NOTE: fetch array is being used here just to get the id of each app, which is used to identify it and update it in the database
		$id = $array["ID"];
		$count++;
		echo "Application ".$count ." text: <input type='text' name='textapp".$count ."'><br>\n"; //the name of this variable is "textapp_ where the _ is the app number"
		echo "Application ".$count ." title: <input type='text' name='titleapp".$count ."'><br>\n"; //the name of this variable is "titleapp_ where the _ is the app number"
		echo "Application ".$count ." image: <input type='file' name='imageapp". $count ."'>\n";
		echo "<input type='hidden' name='appid".$count."' value=\" $id \">"; 
		
		echo "<br><br>\n";
	}
	echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">"; //pass on the module id to the next page
	echo "<input type=\"hidden\" name=\"numberofapps\" value=\"". $count ."\">"; //pass on the number of steps
	
	//these next lines of code get the typeID of the module and pass it on to the next page
	$temp = mysqli_query($con, "SELECT * FROM `module_index` WHERE `ID` = $moduleid ");
	$module = mysqli_fetch_array($temp);
	echo "<input type=\"hidden\" name=\"typeid\" value=\"". $module['type'] ."\">";
	
?>
<input type="submit" value="submit">
</form>


</body>
</html>