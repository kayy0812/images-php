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
$uploaded = $main->uploadToImgur($image);
if ($uploaded) {
    $sql = 'INSERT INTO images (groupId, url) VALUES ("' . $groupId . '", "' . $uploaded  . '")';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>