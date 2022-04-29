<?php
require '../../../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$girl_id = $_POST['girl_id'];
$image = $_POST['link-text'];
$uploaded = $main->uploadToImgur($image);
if ($uploaded) {
    $sql = 'INSERT INTO images (girl_id, url) VALUES ("' . $girl_id . '", "' . $uploaded  . '")';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>