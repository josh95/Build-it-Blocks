<?php
	//this script checks if the user got to the page correctly, ie by logging in and clicking on a link from another page.
	//otherwise the page dies and the user will not be able to access the database. Security stuff.
	if(!isset($_POST['loggedin'])){
		die("You got to this page directly without logging in. Or you refreshed the page... Please go log in (again).");
	}
?>

<?php
		$numberofapps = $_POST["numberofapps"];
		$moduleid = $_POST["moduleid"];
		$typeid = $_POST["typeid"];
		$typearray = array(
			1 => "junk",
			2 => "lego",
			3 => "art",
			4 => "code",
			5 => "minecraft"
		);
		$typename= $typearray[$typeid];
		include("../db-connect.php");
		
		//this part handles the input for the overview
			if ($_POST['titleoverview'] != null){
				$overview= $_POST['titleoverview'];
				echo "changed Overview title to " . $overview. "<br>";
				mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `title` = \"". $overview . "\" WHERE `ID` =".$_POST['overviewid']); //overviewID as given by previous page
			}
			else
				echo "No change to Overview title<br>";
			
			if ($_POST['textoverview'] != null){
				$overview= $_POST['textoverview'];
				echo "changed Overview text to " . $overview. "<br>";
				mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `description` = \"". $overview . "\" WHERE `ID` =".$_POST['overviewid']); //overviewID as given by previous page
			}
			else
				echo "No change to overview description<br>";
		


			if ($_FILES["imageoverview"]["size"] < 2000000){ //if icon is larger than 1950kb, then it is too big. Tell user that icon is too big
				if ($_FILES["imageoverview"]["size"] == 0){ //if icon field was left blank
					echo "No change to overview image" . "<br>";
				}
				else{
					//tell user some stats about their uploaded icon
					echo "Upload: " . $_FILES["imageoverview"]["name"] . "<br>"; 
					echo "Type: " . $_FILES["imageoverview"]["type"] . "<br>";
					echo "Size: " . ($_FILES["imageoverview"]["size"] / 1024) . " kB<br>";

					move_uploaded_file($_FILES["imageoverview"]["tmp_name"],
					"../module-images/applications-img/". $typename ."/" . $_FILES["imageoverview"]["name"]);
					//update apps with new file path to image
					mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `picture` = \"module-images/applications-img/". $typename ."/" . $_FILES["imageoverview"]["name"] . "\" WHERE `ID` =".$_POST['overviewid']);
					echo "Stored in: " . "module-images/applications-img/". $typename ."/" . $_FILES["imageoverview"]["name"];//stored in folder upload, will change to proper folder later
					echo "<br>";
				}
			}
		
		$i=0; //a counter loop iterates a number of times equal to the number of apps
		//this loop handles all of the inputs for each application
		while($i<$numberofapps){
			$i++;
			
			if ($_POST['titleapp'.$i] != null){
				$app= $_POST['titleapp'.$i];
				echo "changed Application $i to " . $app. "<br>";
				mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `title` = \"". $app . "\" WHERE `ID` =".$_POST['appid'. $i]); //appID as given by previous page
			}
			else
				echo "No change to application $i title<br>";
			
			if ($_POST['textapp'.$i] != null){
				$app= $_POST['textapp'.$i];
				echo "changed Application $i to " . $app. "<br>";
				mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `description` = \"". $app . "\" WHERE `ID` =".$_POST['appid'. $i]); //appID as given by previous page
			}
			else
				echo "No change to application $i description<br>";
		


			if ($_FILES["imageapp" . $i]["size"] < 2000000){ //if icon is larger than 1950kb, then it is too big. Tell user that icon is too big
				if ($_FILES["imageapp" . $i]["size"] == 0){ //if icon field was left blank
					echo "No change to application". $i ."image" . "<br>";
				}
				else{
					//tell user some stats about their uploaded icon
					echo "Upload: " . $_FILES["imageapp". $i]["name"] . "<br>"; 
					echo "Type: " . $_FILES["imageapp". $i]["type"] . "<br>";
					echo "Size: " . ($_FILES["imageapp" .$i]["size"] / 1024) . " kB<br>";

					move_uploaded_file($_FILES["imageapp".$i]["tmp_name"],
					"../module-images/applications-img/". $typename ."/" . $_FILES["imageapp".$i]["name"]);
					//update apps with new file path to image
					mysqli_query($con, "UPDATE `builditblocks`.`applications` SET `picture` = \"module-images/applications-img/". $typename ."/" . $_FILES["imageapp".$i]["name"] . "\" WHERE `ID` =".$_POST['appid'. $i]);
					echo "Stored in: " . "module-images/applications-img/". $typename ."/" . $_FILES["imageapp".$i]["name"];//stored in folder upload, will change to proper folder later
					echo "<br>";
				}
			}
			else{
			  echo "Invalid icon. File size too big.";
			}
		}

?>

<html>

<body>
Go Back to Dev Home?
<form action="dev-welcome.php" method="post">
	<input type="hidden" name="loggedin" value="1"> <!--to confirm that the user has logged in to next page-->
	<input type="submit" value="Go">
</form>
</body>
</html>
