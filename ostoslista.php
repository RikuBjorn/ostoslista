<?php
header('Access-Control-Allow-Origin: *');
header ('Content-Type: application/json');

$db = new PDO('mysql:host=localhost;dbname=ostoslista;charset=utf8', 'root', '');
$sql= "select * from item";
$query = $db->query($sql);
$results = $query->fetchALL(PDO::FETCH_ASSOC);
$json = json_encode($results, JSON_PRETTY_PRINT);
header('HTTP/1.1 200 OK');
print $json;
