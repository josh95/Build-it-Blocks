<!DOCTYPE html>
<!--this page is nearly identical to new-applications-form.php. The purpose of this page is to add applications to a module
however, since new-applications-form.php leads to new-instructions-form.php among other issues, this page needed to be created
specifically for the purpose of adding new applications from the edit-module-form.php-->

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
	<p id="title">Create Applications for your module</p>
	<br/>
	Note: Please escape special chracters whenever possible. It will reduce the amount of errors.
	Read about escaping characters <a href="http://www.w3.org/International/questions/qa-escapes">here</a> .
	<form action="new-applications-action-edit.php" method="post" enctype="multipart/form-data">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		<?php
		$moduleid= $_POST["moduleid"];
		$noofapps = $_POST["noofapps"];
		$noofsteps = $_POST["noofsteps"];
		//for loop takes the amount of applications the user said they would have in previous page and echos out the places they can add the values
		for ($x=1; $x<=$noofapps; $x++) {
		echo "Application " . $x . " image: <input type='file' name='appimg" . $x . "'>  
		Text: <input type='text' name='apptext" . $x . "'>   Title: <input type='text' name='apptitle" . $x . "'> <br/><br/>";
		}
		//pass on the number of apps and module id
		echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
		?>
		<input type="submit" value="submit">
	</form>
</body>
</html>	