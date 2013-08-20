<html>
<head>
	<link rel="stylesheeet" type="text/CSS" href="dev-style.css"/>
</head>
<body>
	
	<p id="title">Are you sure you want to delete this module?</p>
		<!-- taking the $delete variable and passing it on to the delete module action page-->
		<a href="delete-module-action.php?delete=<?php $delete = $_GET["delete"]; echo $delete;?>">Yes</a>
		<a href="dev-welcome.php">No</a>
		
</body>
</html>