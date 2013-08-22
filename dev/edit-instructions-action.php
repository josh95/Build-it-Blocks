<?php
		$numberofsteps = $_POST["numberofsteps"];
		$moduleid = $_POST["moduleid"];
		include("../db-connect.php");
		
		$i=0; //a counter loop iterates a number of times equal to the number of steps
		while($i<$numberofsteps){
		$i++;
		if ($_POST['textstep'.$i] != null){
			$step= $_POST['textstep'.$i];
			echo "changed Step 1 to " . $step. "<br>";
			mysqli_query($con, "UPDATE `builditblocks`.`steps` SET `step-description` = \"". $step . "\" WHERE `moduleID` =".$moduleid. " AND `step-number`=".$i); //moduleID as given by previous page
		}
		else
			echo "No change to step $i <br>";
		}


		/*$allowedExts = array("gif", "jpeg", "jpg", "png");
		$temp = explode(".", $_FILES["icon"]["name"]);
		$extension = end($temp);

		if ($_FILES["icon"]["size"] < 200000){ //if icon is larger than 195kb, then it is too big. Tell user that icon is too big
			if ($_FILES["icon"]["size"] == 0){ //if icon field was left blank
				echo "No change to icon" . "<br>";
			}
			else{
				//tell user some stats about their uploaded icon
				echo "Upload: " . $_FILES["icon"]["name"] . "<br>"; 
				echo "Type: " . $_FILES["icon"]["type"] . "<br>";
				echo "Size: " . ($_FILES["icon"]["size"] / 1024) . " kB<br>";

				move_uploaded_file($_FILES["icon"]["tmp_name"],
				"upload/" . $_FILES["icon"]["name"]);
				//update module-index with new file path to icon
				mysqli_query($con, "UPDATE `builditblocks`.`module_index` SET `icon` = \" module-images/icons/" . $_FILES["icon"]["name"] . "\" WHERE `module_index`.`ID` =".$_POST['moduleid']);
				echo "Stored in: " . "upload/" . $_FILES["icon"]["name"];//stored in folder upload, will change to proper folder later
			}
		}
		else{
		  echo "Invalid icon. File size too big.";
		}*/

?>