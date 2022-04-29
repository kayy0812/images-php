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
    <link rel="stylesheet" href="./assets/fonts/themify-icons/themify-icons.css">
    <title>Kho hình ảnh</title>
</head>

<body>
    <?php if (!isset($_SESSION['user'])) {
        echo '<script> alert("Chưa đăng nhập, đang chuyển hướng ..."); window.location.href = "./" </script>';
    } else { 
        $girl_id = isset($_GET['girl_id']) ? $_GET['girl_id'] : false;
        if (!$girl_id) {
            echo '<script> alert("Có lỗi xảy ra"); window.location.href = "./girls.php" </script>';
        }
        ?>
        <div class="grid">
            <header class="header">
                <img src="https://i.imgur.com/tRl2ZMV.jpg" alt="" class="header-img">
                <ul class="header-list">
                    <li class="header-item">
                        <a href="./" class="header-link">Home</a>
                    </li>
                    <li class="header-item">
                        <a href="./quotes.php" class="header-link">Quotes</a>
                    </li>
                    <li class="header-item header-item--active">
                        <a href="./girls.php" class="header-link">Girls</a>
                    </li>
                </ul>
            </header>
        </div>
        <div class="container">
            <div class="grid">
                <div class="general">
                    <?php
                    $sql = 'SELECT name 
                    FROM girls 
                    WHERE girl_id="' . $girl_id . '"';
                    $name = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['name'];
                    echo '<h1 class="general-title">Bộ sưu tập: '. $name .'</h1>';
                    ?>
                    <div class="general-wrapper">
                        <!-- ./api/girl/upload.php -->
                        <form action="./api/images/upload.php" method="POST">
                            <input class="general-input" type="text" name="girl_id" value="<?php echo $girl_id ?>" hidden>
                            <input class="general-input" type="text" name="link-text" placeholder="Nhập link ảnh" autocomplete="off" required>
                            <input class="general-upload" name="upload-image" type="submit" value="Up!">
                        </form>
                    </div>
                </div>
                <div class="table-data">
                    <table class="table-data__list">
                        <tr class="table-data__list-wrapper">
                            <th class="table-data__list-head">STT</th>
                            <th class="table-data__list-head">Đường dẫn</th>
                            <th class="table-data__list-head">Xem trước</th>
                        </tr>
                        <?php
                        $sql = 'SELECT count(id) AS total 
                                FROM images 
                                WHERE girl_id="' . $girl_id . '"';
                        $records = $conn->query($sql)->fetch(PDO::FETCH_ASSOC)['total'];
                        $limit = 10;

                        // Get current from params
                        $current = isset($_GET['page']) ? $_GET['page'] : ceil($records / $limit);

                        if ($records > 0) {

                            // $current luon duong >= 1
                            if ($current < 1) $current = 1;
        
                            // Tinh tong so trang va lam tron
                            $total = ceil($records / $limit);
        
                            // Neu trang hien tai lon hon tong trang => set current = total
                            if ($current > $total) $current = $total;
        
                            $start = ($current - 1) * $limit;
                            $sql = 'SELECT * 
                                    FROM images, girls 
                                    WHERE images.girl_id = girls.girl_id AND girls.girl_id = "' . $girl_id . '" 
                                    LIMIT ' . $start . ', ' .$limit. '';
                            $publishers = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                            foreach ($publishers as $index => $value) {
                                echo '<tr>
                                        <td class="table-data__body">' .$start + ($index + 1). '</td>
                                        <td class="table-data__body">
                                            
                                            <form action="./api/images/update.php" method="POST">
                                                <input name="girl_id" type="text" value="' . $girl_id . '" hidden>
                                                <input name="link-text-old" type="text" value="' . $value['url'] . '" hidden>
                                                <input name="link-text" class="table-data__body-input" type="text" value="' .$value['url']. '" placeholder="Nhập đường dẫn mới ..." autocomplete="off" required disabled>
                                                <button class="btn btn--right-6 table-data__body-check table-data__body-actions--disabled">
                                                    <i class="ti-check"></i>
                                                </button>
                                            </form>
                                            <div class="table-data__body-actions">
                                                <button class="btn btn--right-6 table-data__body-editor">
                                                    <i class="ti-pencil-alt"></i>
                                                </button>
                                                <button class="btn btn--right-6 table-data__body-cancel table-data__body-actions--disabled">
                                                    <i class="ti-close"></i>
                                                </button>
                                                <form action="./api/images/delete.php" method="POST">
                                                    <input type="text" name="girl_id" value="' . $girl_id  . '" hidden>
                                                    <input type="text" name="link-text" value="' . $value['url']  . '" hidden>
                                                    <button title="Nhấp một cái là xoá liền ấy nha bro!" class="btn btn--right-6 table-data__body-delete">
                                                        <i class="ti-trash"></i>
                                                    </button>
                                                </form>
                                            </div>
                                            
                                        </td>
                                        <td class="table-data__body">
                                            <img src="' .$value['url']. '" alt="' .$value['name']. '" class="table-data__body-img" />
                                        </td>
                                    </tr>';
                            }
                        }
                        ?>
                    </table>
                </div>
            </div>
        </div>
        <footer class="footer">

        </footer>
        <script>
            // Actions button
            const editorBtns = document.getElementsByClassName('table-data__body-editor')
            const cancelBtns = document.getElementsByClassName('table-data__body-cancel')
            console.log(editorBtns)
            
            // editor button
            for (const btn of editorBtns) {
                btn.addEventListener('click', function() {
                    const buttons = this.parentElement.children
                    const input = this.parentElement.parentElement.children[0].children[2]
                    const checkBtn = this.parentElement.parentElement.children[0].children[3]
                    // console.log(input)
                    buttons[0].classList.add('table-data__body-actions--disabled')
                    buttons[1].classList.remove('table-data__body-actions--disabled')
                    buttons[2].classList.add('table-data__body-actions--disabled')
                    checkBtn.classList.remove('table-data__body-actions--disabled')

                    // Input
                    const link = input.getAttribute('value')
                    input.removeAttribute('disabled')
                    input.setAttribute('value', '')
                    input.focus()

                    // Click cancel
                    buttons[1].addEventListener('click', function() {
                        buttons[0].classList.remove('table-data__body-actions--disabled')
                        this.classList.add('table-data__body-actions--disabled')
                        buttons[2].classList.remove('table-data__body-actions--disabled')
                        checkBtn.classList.add('table-data__body-actions--disabled')

                        input.setAttribute('disabled', true)
                        input.setAttribute('value', link)
                    });
                })
            }
        </script>
    <?php } ?>
</body>
</html>