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
$sql = 'DELETE FROM images WHERE girl_id = "' . $girl_id . '" AND url = "' . $image . '"';
$conn->query($sql);
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>