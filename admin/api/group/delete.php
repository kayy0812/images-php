<?php
require '../../../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$groupId = $_POST['groupId'];

$sql = 'SELECT count(id) AS total FROM images WHERE groupId = "' . $groupId . '"';
$images_count = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['total'];

if ($images_count <= 0) {
    $sql = 'DELETE FROM groups WHERE groupId = "' . $groupId . '"';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>