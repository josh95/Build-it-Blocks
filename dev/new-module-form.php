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
	<?php include("stop-enter-key.php");?>
</head>
<body>
	<p id="title">Create a New Module</p>
	<br/>
	<form name="input" method="post" action="new-module-action.php" enctype="multipart/form-data">
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	Module Name:<input type="text" name="name"/><br/><br/>
	Description: <input type="text" name="description" style="height:50px"><br/><br/>
	Difficulty:<input type="text" name="difficulty"/><br/><br/>
	Date Posted:<?php echo date('m-j-Y');?><br />
	<br />
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