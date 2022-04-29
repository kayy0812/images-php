<?php 
require '../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

if ($db !== null) {
    $sql = 'SELECT * FROM quote ORDER BY RAND()';
    $statement  = $conn->query($sql);
    $publishers = $statement->fetchAll(PDO::FETCH_ASSOC);
    $random = rand(0 , count($publishers) - 1);
    if (count($publishers) > 0) {
        $main->sendResponse(200, '' . json_encode([
            "title" => $publishers[$random]['title'],
            "text" => $publishers[$random]['quote']
        ], JSON_UNESCAPED_SLASHES) . '');
    } else {
        $main->sendResponse(404, '{"error_message": "' . $main->getStatusCodeMessage(404) . '"}');
    }
} else {
    $main->sendResponse(503, '{"error_message": "' . $main->getStatusCodeMessage(503) . '"}');
}