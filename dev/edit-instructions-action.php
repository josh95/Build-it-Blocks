<?php
		$numberofsteps = $_POST["numberofsteps"];
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
		
		$i=0; //a counter loop iterates a number of times equal to the number of steps
		while($i<$numberofsteps){
			$i++;
			if ($_POST['textstep'.$i] != null){
				$step= $_POST['textstep'.$i];
				echo "changed Step $i to " . $step. "<br>";
				mysqli_query($con, "UPDATE `builditblocks`.`steps` SET `step-description` = \"". $step . "\" WHERE `moduleID` =".$moduleid. " AND `step-number`=".$i); //moduleID as given by previous page
			}
			else
				echo "No change to step $i <br>";
		


			if ($_FILES["imagestep" . $i]["size"] < 2000000){ //if icon is larger than 1950kb, then it is too big. Tell user that icon is too big
				if ($_FILES["imagestep" . $i]["size"] == 0){ //if icon field was left blank
					echo "No change to step". $i ."image" . "<br>";
				}
				else{
					//tell user some stats about their uploaded icon
					echo "Upload: " . $_FILES["imagestep". $i]["name"] . "<br>"; 
					echo "Type: " . $_FILES["imagestep". $i]["type"] . "<br>";
					echo "Size: " . ($_FILES["imagestep" .$i]["size"] / 1024) . " kB<br>";

					move_uploaded_file($_FILES["imagestep".$i]["tmp_name"],
					"../module-images/instruction-img/". $typename ."/" . $_FILES["imagestep".$i]["name"]);
					//update steps with new file path to image
					mysqli_query($con, "UPDATE `builditblocks`.`steps` SET `image-path` = \"module-images/instruction-img/". $typename ."/" . $_FILES["imagestep".$i]["name"] . "\" WHERE `moduleID` =".$moduleid. " AND `step-number`=".$i);
					echo "Stored in: " . "module-images/instruction-img/". $typename ."/" . $_FILES["imagestep".$i]["name"];//stored in instructions-img folder
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
		<br>
		Module has been updated.
		<form action="dev-welcome.php" method="post">
			<input type="submit" value="Go to Dev Home">
		</form>
	</body>
</html>