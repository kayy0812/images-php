<?php 
require '../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require '../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

if ($db !== null && !empty($_GET['query'])) {
    $sql = 'SELECT * FROM images, groups WHERE groups.name LIKE "%' . $_GET['query'] . '%" AND images.groupId = groups.groupId ORDER BY RAND() LIMIT 10';
    $statement  = $conn->query($sql);
    $publishers = $statement->fetchAll(PDO::FETCH_ASSOC);
    $random = rand(0 , count($publishers) < 10 ? count($publishers) - 1 : 9);
    if (count($publishers) > 0) {
        $main->sendResponse(200, '{
            "image": "' . $publishers[$random]['url'] . '", 
            "groupId": "' . $publishers[$random]['groupId'] . '",
            "name": "' . $publishers[$random]['name'] . '"
        }');
    } else {
        $main->sendResponse(404, '{"error_message": "' . $main->getStatusCodeMessage(404) . '"}');
    }
} else {
    $main->sendResponse(503, '{"error_message": "' . $main->getStatusCodeMessage(503) . '"}');
}