<?php
	include('./connection.php');
	$query = "SELECT artist, album, year, image, genre, vote, id FROM albums_2 ORDER BY id DESC";

	$result = $mysqli->query($query);

	if (!$result) die($mysqli->error);
	$array = array();
	while ($row = $result->fetch_object()) {
		$array[] = $row;
		
	}
	echo json_encode(array('records' => $array), JSON_UNESCAPED_SLASHES);
	
	
$mysqli->close(); 

?>