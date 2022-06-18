<?php
require '../../../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$groupId = $_POST['groupId'];
$image = $_POST['link-text'];
$sql = 'DELETE FROM images WHERE groupId = "' . $groupId . '" AND url = "' . $image . '"';
$conn->query($sql);
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>