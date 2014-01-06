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
	<p id="title">Create Applications for your module</p>
	<br/>
	Note: Please escape special chracters whenever possible. It will reduce the amount of errors.
	Read about escaping characters <a href="http://www.w3.org/International/questions/qa-escapes">here</a> .
	<form action="new-applications-action.php" method="post" enctype="multipart/form-data">
		<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
		Overview Image: <input type="file" name="overviewimg"/>   Text: <textarea name='overviewtext' cols='40' rows='5'></textarea>  <br>
		Title: <input type="text" name="overviewtitle"><br/><br/>
		Link: <input type="text" name="overviewlink"><br/><br/>
		<?php
		$moduleid= $_POST["moduleid"];
		$noofapps = $_POST["noofapps"];
		$noofsteps = $_POST["noofsteps"];
		//for loop takes the amount of applications the user said they would have in previous page and echos out the places they can add the values
		for ($x=1; $x<=$noofapps; $x++) {
		echo "Application " . $x . " image: <input type='file' name='appimg" . $x . "'>  
		Text: <textarea name='apptext".$x."' cols='40' rows='5'></textarea>  <br>
		Title: <input type='text' name='apptitle" . $x . "'> <br/><br/>
		Link: <input type='text' name='applink" . $x . "'> <br/><br/>";
		}
		//pass on the number of apps and module id
		echo "<input type=\"hidden\" name=\"moduleid\" value=\"". $moduleid ."\">";
		echo "<input type=\"hidden\" name=\"noofapps\" value=\"". $noofapps ."\">";
		echo "<input type=\"hidden\" name=\"noofsteps\" value=\"". $noofsteps ."\">"; //although noofsteps won't be used on next page,the page after will need it
		?>
		<input type="submit" value="submit">
	</form>
</body>
</html>	