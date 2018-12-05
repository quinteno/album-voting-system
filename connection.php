<?php
	require_once './db_login.php';
	$mysqli = new mysqli($hostname, $username, $password, $database);
	mysqli_set_charset($mysqli, "utf8");
	if ($mysqli->error) {
		echo "Error connecting to database! Message: ".$mysqli->error;
	} 
?>