<?php 
require 'vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

require './config.php';

$main = new Main();
$db = new Database();
$db->connect();

if ($db !== null) {
    $main->sendResponse(200, '{"status": "' . $main->getStatusCodeMessage(200) . '"}');
} else {
    $main->sendResponse(503, '{"error_message": "' . $main->getStatusCodeMessage(503) . '"}');
}