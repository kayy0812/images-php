<?php
require '../../../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../../../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

$name = $_POST['name'];
$birth = $_POST['year_of_birth'];
$sql = 'INSERT INTO girls (girl_id, name, year_of_birth) VALUES ("' . rand(111111, 999999) . '", "' . $name  . '", "' . $birth  . '")';
$conn->query($sql);
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>