<?php
session_start();
// session_destroy();
require '../vendor/autoload.php';

use Kayy0812\GirlsApi\Database;
use Kayy0812\GirlsApi\Main;

require '../config.php';

$main = new Main();
$db = new Database();
$conn = $db->connect();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/base.css?v=<?= rand(1, 99999); ?>">
    <link rel="stylesheet" href="./assets/css/main.css?v=<?= rand(1, 99999); ?>">
    <title>Những câu nói hay !</title>
</head>

<body>
    <?php if (!isset($_SESSION['user'])) {
        echo '<script> alert("Chưa đăng nhập, đang chuyển hướng ..."); window.location.href = "./" </script>';
    } else { ?>
        <div class="grid">
            <header class="header">
                <img src="https://i.imgur.com/tRl2ZMV.jpg" alt="" class="header-img">
                <ul class="header-list">
                    <li class="header-item">
                        <a href="./" class="header-link">Home</a>
                    </li>
                    <li class="header-item header-item--active">
                        <a href="./girls.php" class="header-link">Girls</a>
                    </li>
                </ul>
            </header>
        </div>
        <div class="container">
            <div class="grid">
                <div class="table-data">
                    <table class="table-data__list">
                        <tr class="table-data__wrapper">
                            <th class="table-data__head">STT</th>
                            <th class="table-data__head">Tiêu đề</th>
                            <th class="table-data__head">Nội dung</th>
                        </tr>
                        <?php
                        $current = isset($_GET['page']) ? $_GET['page'] : 1;
                        $sql = 'SELECT count(id) AS total FROM quote';
                        $records = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['total'];
                        $limit = 10;
    
                        if ($current < 1) $current = 1;
    
                        // Tinh tong so trang va lam tron
                        $total = ceil($records / $limit);
    
                        // Neu trang hien tai lon lon tong trang => set current = total
                        if ($current > $total) $current = $total;
    
                        $start = ($current - 1) * $limit;
                        $sql = 'SELECT * FROM quote LIMIT ' . $start . ', ' .$limit. '';
                        $publishers = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($publishers as $index => $value) {
                            echo '<tr>
                                    <td class="table-data__body">' .$start + ($index + 1). '</td>
                                    <td class="table-data__body">' .$value['title']. '</td>
                                    <td class="table-data__body">' .$value['quote']. '</td>
                                </tr>';
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
        <footer class="footer">

        </footer>
    <?php } ?>
</body>

</html>