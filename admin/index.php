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
    <title>Admin</title>
</head>
<body>
    <?php if(!isset($_SESSION['user'])) { ?>
        <div class="container">
            <form class="form" action="" method="post">
                <input class="mb-8 form-input" type="text" name="user" autocomplete="off" placeholder="Tên đăng nhập" required>
                <input class="mb-8 form-input" type="password" name="pass" autocomplete="off" placeholder="Nhập mật khẩu của bạn" required>
                <input class="form-btn"type="submit" name="login" value="Đăng nhập">
            </form>
        </div>
    <?php } else { ?>
        <header class="header">

        </header>
        <div class="container">
            <a href="./groups.php">Nhấp vào để chuyển hướng ...</a>
        </div>
        <footer class="footer">
            
        </footer>
    <?php } ?>
</body>
</html>

<?php
if (isset($_POST['login'])) {
    $username = $_POST['user'];
    $password = $_POST['pass'];

    if ($username === USERNAME && md5($password) === PASSWORD) {
        echo '<script> alert("Đăng nhập thành công"); window.location.href = "./" </script>';
        $_SESSION['user'] = $username;
    }
}

