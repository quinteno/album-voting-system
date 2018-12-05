<?php
include('./connection.php');

$id = $_POST['id'];


$query = "UPDATE albums_2 SET vote = vote + 1 WHERE id = ".$id;
$result = $mysqli->query($query);
if (!$result) die($mysqli->error);

$select_query = "SELECT vote FROM albums_2 WHERE id = ".$id;
$select_result = $mysqli->query($select_query);
if (!$select_result) die ($mysqli->error);

while ($row = $select_result->fetch_object()) {
  echo $row->vote;
}


?>