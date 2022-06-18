<?php
require '../../../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$name = $_POST['name'];
$sql = 'INSERT INTO groups (groups, name) VALUES ("' . rand(111111, 999999) . '", "' . $name  . '")';
$conn->query($sql);
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>