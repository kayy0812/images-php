<?php
require '../../../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$groupId = $_POST['groupId'];
$image_old = $_POST['link-text-old'];
$image = $_POST['link-text'];
$uploaded = $main->uploadToImgur($image);
if ($uploaded) {
    $sql = 'UPDATE images SET groupId = "' . $groupId . '", url = "' . $uploaded . '" WHERE groupId = "' . $groupId . '" AND url = "' . $image_old . '"';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>