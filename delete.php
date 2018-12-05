<?php 
include('./connection.php');

$id = $_POST['id'];

if (isset($_POST['id'])) {
	// Delete record
	$query = "DELETE FROM albums_2 WHERE id=".$id;
	$result = $mysqli->query($query);
	if (!$result) die($mysqli->error);
	echo 1;
} else {
	echo "You must be lost.";
}
?>