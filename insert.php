<?php 
include('./connection.php');

$artist = $_POST['artist'];
$album = $_POST['album'];
$year = $_POST['year'];
$image = $_POST['image'];


	// add record
	$query = "INSERT INTO albums_2(id, artist, album, year, image) 
				VALUES(NULL, '".$_POST['artist']."', '".$_POST['album']."', '".$_POST['year']."', '".$_POST['image']."')";
	$result = $mysqli->query($query);
	if (!$result) die($mysqli->error);
	header('Location: client.html');


?>