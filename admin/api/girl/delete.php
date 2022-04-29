<?php
require '../../../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$girl_id = $_POST['girl_id'];

$sql = 'SELECT count(id) AS total FROM images WHERE girl_id = "' . $girl_id . '"';
$images_count = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['total'];

if ($images_count <= 0) {
    $sql = 'DELETE FROM girls WHERE girl_id = "' . $girl_id . '"';
    $conn->query($sql);
    header('Location: ' . $_SERVER['HTTP_REFERER']);
} else {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}
?>