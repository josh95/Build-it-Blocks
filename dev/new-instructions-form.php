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
	<p id="title">Create Instructions for your module</p>
	<br/>
	Note: Please escape special chracters whenever possible. It will reduce the amount of errors.
	Read about escaping characters <a href="http://www.w3.org/International/questions/qa-escapes">here</a> .
	<form action="new-instructions-action.php" method="post" enctype="multipart/form-data">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		<?php
		$moduleid= $_POST["moduleid"];
		$noofsteps = $_POST["noofsteps"];
		
		//for loop takes the amount of steps the user said they would have in previous page and echos out the places they can add the values
		for ($x=1; $x<=$noofsteps; $x++) {
		echo "Step " . $x . " image: <input type='file' name='stepimg" . $x . "'>  
		Text: <textarea name='steptext".$x ."' cols='60' rows='10'></textarea> <br>";
		}
		//pass on the number of steps and module id
		echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
		echo "<input type=\"hidden\" name=\"noofsteps\" value=\"". $noofsteps ."\">"; //although noofsteps won't be used on next page,the page after will need it
		?>
		<input type="submit" value="submit">
	</form>
</body>
</html>	