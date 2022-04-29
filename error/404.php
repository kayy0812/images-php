<?php 
require '../vendor/autoload.php';

use Kayy0812\GirlsApi\Main;

$main = new Main();
$main->sendResponse(404, '{"error_message": "' . $main->getStatusCodeMessage(404) . '"}');