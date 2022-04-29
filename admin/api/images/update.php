<?php
require '../../../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$girl_id = $_POST['girl_id'];
$image_old = $_POST['link-text-old'];
$image = $_POST['link-text'];
$uploaded = $main->uploadToImgur($image);
if ($uploaded) {
    $sql = 'UPDATE images SET girl_id = "' . $girl_id . '", url = "' . $uploaded . '" WHERE girl_id = "' . $girl_id . '" AND url = "' . $image_old . '"';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>