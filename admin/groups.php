<?php
session_start();
// session_destroy();
require '../vendor/autoload.php';

use Kayy0812\ImagesAPI\Database;
use Kayy0812\ImagesAPI\Main;

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
    <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css">
    <title>Mọi người</title>
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
                </ul>
            </header>
        </div>
        <div class="container">
            <div class="grid">
                <h1 class="general-title">Nhập thông tin để thêm!</h1>
                <form action="./api/group/create.php" method="POST">
                    <div class="table-data">
                        <table class="table-data__list">
                            <tr class="table-data__list-wrapper">
                                <th class="table-data__list-head">Tên</th>
                                <th class="table-data__list-head">___</th>
                            </tr>
                            <tr>
                                <td class="table-data__body">
                                    <input type="text" name="name" placeholder="Nhập tên" class="table-data__body-input" required>
                                </td>
                                <td class="table-data__body">
                                    <button class="btn btn--check">
                                        <i class="ti-plus"></i>
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
                <div class="table-data">
                    <table class="table-data__list">
                        <tr class="table-data__list-wrapper">
                            <th class="table-data__list-head">STT</th>
                            <th class="table-data__list-head">ID</th>
                            <th class="table-data__list-head">Tên</th>
                            <th class="table-data__list-head">___</th>
                        </tr>
                        <?php
                        $current = isset($_GET['page']) ? $_GET['page'] : 1;
                        $sql = 'SELECT count(id) AS total FROM groups';
                        $records = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['total'];
                        $limit = 10;
    
                        if ($current < 1) $current = 1;
    
                        // Tinh tong so trang va lam tron
                        $total = ceil($records / $limit);
    
                        // Neu trang hien tai lon lon tong trang => set current = total
                        if ($current > $total) $current = $total;
    
                        $start = ($current - 1) * $limit;
                        $sql = 'SELECT * FROM groups LIMIT ' . $start . ', ' .$limit. '';
                        $publishers = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($publishers as $index => $value) {
                            $number = $start + ($index + 1);
                            echo '<tr>
                                    <td class="table-data__body">' .$number. '</td>
                                    <td class="table-data__body">' .$value['groupId']. '</td>
                                    <td class="table-data__body">' .$value['name']. '</td>
                                    <td class="table-data__body">
                                        <a href="./images.php?groupId='. $value['groupId'] .'" class="table-data__body-manager">Quản lý</a>
                                        <div class="table-data__body-actions">
                                            <form action="./api/group/delete.php" method="POST">
                                                <input type="text" name="groupId" value="' . $value['groupId']  . '" hidden>
                                                <button title="Nhấp một cái là xoá liền ấy nha bro!" class="btn btn--right-6 table-data__body-delete">
                                                    <i class="ti-trash"></i>
                                                </button>
                                            </form>
                                        </div>
                                    </td>
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