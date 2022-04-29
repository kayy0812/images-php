-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2022 at 12:01 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kayycflu_girls_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `girls`
--

CREATE TABLE `girls` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `year_of_birth` year(4) NOT NULL,
  `girl_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `girls`
--

INSERT INTO `girls` (`id`, `name`, `year_of_birth`, `girl_id`) VALUES
(1, 'Chung', 2022, 746598),
(2, 'Tiểu Quyên', 2004, 567431),
(3, 'Hạnh Quyên', 2004, 726050),
(8, 'kiki_vn', 0000, 345634),
(9, 'Cosplayer', 2022, 748652);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `girl_id` int(10) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `girl_id`, `url`) VALUES
(35, 746598, 'https://i.imgur.com/kAUInzG.jpg'),
(36, 746598, 'https://i.imgur.com/fOcO0nI.jpg'),
(37, 746598, 'https://i.imgur.com/tRl2ZMV.jpg'),
(38, 746598, 'https://i.imgur.com/7IvfeY6.jpg'),
(39, 746598, 'https://i.imgur.com/97uaAPK.jpg'),
(40, 746598, 'https://i.imgur.com/iRpxHb3.jpg'),
(41, 746598, 'https://i.imgur.com/DHnb8Vo.jpg'),
(42, 746598, 'https://i.imgur.com/cL4EhmK.jpg'),
(43, 746598, 'https://i.imgur.com/20IFEsu.jpg'),
(44, 746598, 'https://i.imgur.com/f15g8OQ.jpg'),
(45, 746598, 'https://i.imgur.com/aLrbUuD.jpg'),
(46, 746598, 'https://i.imgur.com/EDr6JAi.jpg'),
(47, 746598, 'https://i.imgur.com/8inCm3C.jpg'),
(48, 746598, 'https://i.imgur.com/qVxJRFl.jpg'),
(49, 746598, 'https://i.imgur.com/YknxE9q.jpg'),
(50, 746598, 'https://i.imgur.com/zILwM7P.jpg'),
(51, 746598, 'https://i.imgur.com/a6G98Gj.jpg'),
(52, 746598, 'https://i.imgur.com/KDEhZuZ.jpg'),
(53, 746598, 'https://i.imgur.com/ki25Y73.jpg'),
(54, 746598, 'https://i.imgur.com/deOTiRX.jpg'),
(55, 746598, 'https://i.imgur.com/DsUTnsi.jpg'),
(56, 746598, 'https://i.imgur.com/w5SBvB5.jpg'),
(57, 746598, 'https://i.imgur.com/QY56iXZ.jpg'),
(58, 746598, 'https://i.imgur.com/zFnnJCC.jpg'),
(59, 746598, 'https://i.imgur.com/PtPYueP.jpg'),
(60, 746598, 'https://i.imgur.com/i6aCHGU.jpg'),
(61, 746598, 'https://i.imgur.com/Dp8Qt6Z.jpg'),
(62, 746598, 'https://i.imgur.com/u77kftY.jpg'),
(63, 746598, 'https://i.imgur.com/TQjUUr4.jpg'),
(64, 746598, 'https://i.imgur.com/9HQ8i2a.jpg'),
(65, 746598, 'https://i.imgur.com/2gzIoMY.jpg'),
(66, 746598, 'https://i.imgur.com/sUPF2Ta.jpg'),
(67, 746598, 'https://i.imgur.com/0N4LvHt.jpg'),
(68, 746598, 'https://i.imgur.com/byKl2Qe.jpg'),
(72, 345634, 'https://i.imgur.com/IMeKfq1.jpg?1'),
(73, 726050, 'https://i.imgur.com/zNyAN9S.jpg'),
(74, 746598, 'https://i.imgur.com/ce6YkZh.jpg'),
(75, 746598, 'https://i.imgur.com/CiQMoEA.jpg'),
(76, 746598, 'https://i.imgur.com/niGFNTD.jpg'),
(77, 746598, 'https://i.imgur.com/3j9Jtdo.jpg'),
(78, 746598, 'https://i.imgur.com/sGdGDsX.jpg'),
(79, 746598, 'https://i.imgur.com/rTqKL7j.jpg'),
(80, 746598, 'https://i.imgur.com/1VYRsee.jpg'),
(81, 746598, 'https://i.imgur.com/RJiV0Wa.jpg'),
(82, 746598, 'https://i.imgur.com/7VoEqHU.jpg'),
(83, 746598, 'https://i.imgur.com/nq7KlYP.jpg'),
(84, 746598, 'https://i.imgur.com/dkCytMx.jpg'),
(85, 746598, 'https://i.imgur.com/43BNHpi.jpg'),
(86, 345634, 'https://i.imgur.com/Nx8UJAH.jpg'),
(87, 746598, 'https://i.imgur.com/9mo7wk1.jpg'),
(88, 746598, 'https://i.imgur.com/Iwbvxdj.jpg'),
(89, 746598, 'https://i.imgur.com/mGQVvg3.jpg'),
(90, 746598, 'https://i.imgur.com/35ODaQf.jpg'),
(91, 746598, 'https://i.imgur.com/PjO9TPH.jpg'),
(92, 746598, 'https://i.imgur.com/CYBgVau.jpg'),
(93, 746598, 'https://i.imgur.com/kKPv7qH.jpg'),
(94, 746598, 'https://i.imgur.com/PHCF02Z.jpg'),
(95, 746598, 'https://i.imgur.com/appdxXz.jpg'),
(96, 746598, 'https://i.imgur.com/aMliALE.jpg'),
(97, 746598, 'https://i.imgur.com/vFE56Gy.jpg'),
(98, 746598, 'https://i.imgur.com/cICs9BX.jpg'),
(99, 746598, 'https://i.imgur.com/M0i6YwL.jpg'),
(100, 746598, 'https://i.imgur.com/IjrmvAt.jpg'),
(101, 748652, 'https://i.imgur.com/MwsPmNW.jpg'),
(102, 748652, 'https://i.imgur.com/wSH2dne.jpg'),
(103, 748652, 'https://i.imgur.com/dYUIfZf.jpg'),
(104, 748652, 'https://i.imgur.com/s4c9JuL.jpg'),
(105, 748652, 'https://i.imgur.com/ujmKcQM.jpg'),
(106, 748652, 'https://i.imgur.com/CjhiiqU.jpg'),
(107, 748652, 'https://i.imgur.com/CIbvOQv.jpg'),
(108, 748652, 'https://i.imgur.com/xZo6X5S.jpg'),
(109, 748652, 'https://i.imgur.com/HVjUE5Y.jpg'),
(110, 748652, 'https://i.imgur.com/lwtUlCE.jpg'),
(111, 748652, 'https://i.imgur.com/IHtxqeV.jpg'),
(112, 748652, 'https://i.imgur.com/TyLsXzv.jpg'),
(113, 748652, 'https://i.imgur.com/Z7FkeN6.jpg'),
(114, 748652, 'https://i.imgur.com/MwWCbUv.jpg'),
(115, 748652, 'https://i.imgur.com/VlSuydI.jpg'),
(116, 748652, 'https://i.imgur.com/sVOdCca.jpg'),
(117, 748652, 'https://i.imgur.com/KOMhtap.jpg'),
(118, 748652, 'https://i.imgur.com/DWpjU3u.jpg'),
(119, 748652, 'https://i.imgur.com/gpOH4W5.jpg'),
(120, 748652, 'https://i.imgur.com/6T6inuN.jpg'),
(121, 748652, 'https://i.imgur.com/vs2LTt3.jpg'),
(122, 748652, 'https://i.imgur.com/FUjAf7Q.jpg'),
(123, 748652, 'https://i.imgur.com/m3DJpH5.jpg'),
(124, 748652, 'https://i.imgur.com/3QFWnHj.jpg'),
(125, 748652, 'https://i.imgur.com/t5flDBU.jpg'),
(126, 748652, 'https://i.imgur.com/PMrbuYB.jpg'),
(127, 748652, 'https://i.imgur.com/4KpSJiY.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '999 LÁ THƯ GỬI CHO CHÍNH MÌNH',
  `quote` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `title`, `quote`) VALUES
(1, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thế giới này thực sự nhỏ bé lắm. Dường như chỉ cần sáu cái chớp mắt chẳng biết ai sẽ gặp phải ai. Thế giới này thực sự rộng lớn lắm. Dường như chỉ cần sáu cái chớp mắt chẳng biết sẽ đánh mất ai.'),
(2, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi ngày bạn sống đều là một khúc nhạc dạo đầu cho sự thành công. Bạn làm chủ được mỗi ngày là bạn đã có cơ hội nắm trong tay thành công. Ngược lại nếu bạn để mỗi ngày trôi qua trong lãng phí thì thành công sẽ cach bạn ngày càng xa.'),
(3, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có người thường luôn miệng nói: Đã quá muộn rồi. Nhưng thực tế hiện tại chính là khoảng thời gian tươi đẹp nhất. Đối với một người thực dưỡng cho mình một giấc mơ, bất kỳ giai đoạn nào của cuộc đời cũng đều là tuổi trẻ và cũng luôn kịp để làm gì đó.'),
(4, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn không mang đến và cũng chẳng thể lấy đi bất cứ thứ gì khi đến với thế giới này cả, mọi thứ bạn có đều chỉ là đi mượn, một ngày nào đó bạn sẽ phải trả cả gốc lẫn lãi. Chi bằng hãy cứ thuận theo tự nhiên.'),
(5, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Gặp gỡ thường bất ngờ, còn ly biệt đa phần đều được mưu tính từ lâu, có một số người sẽ luôn lặng lẽ bước ra khỏi cuộc sống của bạn, bạn cần học cách chấp nhận chứ không phải nhớ nhung.'),
(6, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù hiện thực cuộc sống có thế nào, chúng ta đều không nên oán trời trách người, đừng cứ mãi nghĩ rằng thế giới này nợ bạn hay ai đó phụ lòng bạn. Trong cuộc sống, ai cũng sẽ có lúc thuận buồm xuôi gió hoặc những khi phải đương đầu với nghịch cảnh khó khăn. Vào giây phút khổ sở tuyệt vọng nhất, bạn càng nên học cách điều chỉnh bản thân, khiến mình trở nên xuất sắc hơn. Bởi vì những tháng ngày nhọc nhắn mới chính là thời cơ để bạn trưởng thành!'),
(7, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thực ra xinh đẹp hay không không quan trọng, bạn nên biết rằng, một người con gái có thái độ bình tĩnh, không lo âu, nóng vội trước mọi sự và một trái tim có thể chịu được nỗi cô đơn thì chính bản thân người con gái đó đã sở hữu khí chất và năng lượng hấp dẫn tiềm ẩn rồi.'),
(8, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chỉ có thay đổi thái độ, bạn mới có thể thay đổi được chất lượng cuộc sống của chính mình. Nguyên nhân khiến con người mơ hồ chỉ có một, đó chính là trong những năm tháng cần phải phấn đấu, chúng ta lại nghĩ quá nhiều, làm quá ít.'),
(9, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thứ người khác có, chúng ta không cần ngưỡng mộ, chỉ cần nỗ lực, bản thân sẽ có ngày đạt được. Đạt được rồi cũng đừng khoe khoang, vì người khác còn đang cố gắng, sớm muộn gì họ cũng sẽ được như chúng ta hiện tại. Mỗi ngày đều cười thật vui vẻ, mệt thì ngủ, tỉnh lại cười, cuộc sống nên ung dung, thoải mái như thế.'),
(10, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có một khoảnh khắc nào đó em đột nhiên cảm thấy, trong mắt anh mọi sự chờ đợi của bản thân đều chẳng có ý nghĩa gì, bởi vì nó không đổi lại được bất kì sự trân trọng nào. Đâu phải em không hiểu được phải kiên trì ra sao, mà là quá lâu chẳng thấy anh hồi âm, vì thế, lần này em quyết định ra đi.'),
(11, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời thanh xuân theo đuổi tình cảm mãnh liệt, trưởng thành rồi lại thích sự bình lặng, sau khi chúng ta tìm kiếm, bị tổn thương rồi rời bỏ mà vẫn có thể trước sau như một tin vào tình yêu, thì đó là một loại dũng khí. Mỗi người đều có một khu rừng của riêng mình, người đi lạc đã lạc mất rồi, người tương phùng sẽ lại tương phùng.'),
(12, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đừng đánh giá bản thân quá cao, thế giới này vắng một ai đó cũng đâu ảnh hưởng gì; đừng đánh giá bản thân quá thấp, bạn là độc nhất vô nhị trên đời. Mỗi người đều có sứ mệnh riêng, đừng so sánh bản thân với người khác, hãy sống tốt cuộc đời của chính mình.'),
(13, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn vĩnh viễn chẳng thể thỏa mãn ánh nhìn của cả thế giới, tốt nhất là ai không quan tâm bạn, bạn cũng đừng để ý đến người ta. Chớ nên vì một, hai câu của người khác mà thay đổi cách nhìn về chính mình, bản thân bạn thế nào hãy cứ như thế ấy, sự cố gắng của bạn chỉ dành cho bạn và người quan tâm đến bạn.'),
(14, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn nỗ lực rèn luyện bản thân, bạn làm việc chăm chỉ, bạn giữ gìn vóc dáng hay bạn mỉm cười với mọi người. Đây vốn chẳng phải là để làm hài lòng người khác mà để tự làm đẹp cho mình, thanh lọc tâm hồn người mình. Tự nhủ rằng tôi chính là một con người độc lập luôn mạnh mẽ tiến về phía trước.'),
(15, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Một người cởi mở, thể hiện rõ nhất khi họ chán nản. Một người biết tiết chế, thể hiện rõ nhất khi họ tức giận. Một người săn sóc chu đáo, thể hiện rõ nhất khi họ đau thương. Một người chín chắn, thể hiện rõ nhất khi họ đưa ra lựa chọn. Bất cứ ai cũng muốn được làm điều mình thích nhưng làm điều mình nên làm, mới được gọi là “trưởng thành”.'),
(16, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Sau này bạn sẽ hiểu, phải kiếm đủ khoản tiền khiến bản thân yên tâm, bạn mới có thể sống một cuộc sống đơn giản, an nhàn và tự do, mới có thể khiến bản thân sống càng hăng hái, nhiệt tình. Bởi vậy, hãy dành nhiều thời gian để nỗ lực hơn là đi phê bình soi mói.'),
(17, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Để nuôi dưỡng phẩm chất của một người thành công, chớ coi nhẹ tinh thần cầu tiến; hãy phát huy tốt vai trò của bản thân, hoàn thành tốt công việc trong phạm vi chức trách của mình, tránh vượt quyền; khi đã xác định được mục tiêu thì hãy chuyên tâm đến nó; đừng sợ cạnh tranh, bởi nếu không có cạnh tranh, sự sống còn ý nghĩa gì nữa.'),
(18, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù tôi không có tài hoa tuyệt thế, cũng không có nhiều tiền của, nhưng tôi có tấm lòng tràn đầy đam mê và tinh thần lạc quan vui vẻ, bởi vì tôi tin rằng: Chỉ cần cố gắng, chuyện gì cũng có thể thực hiện được.'),
(19, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn nghèo, có người ở bên đó là hạnh phúc; bạn ốm có người chăm sóc, đó chính là hạnh phúc; bạn lạnh có người ôm lấy, đó chính là hạnh phúc; bạn khóc có người an ủi đó chính là hạnh phúc; bạn già rồi, vẫn có người bầu bạn đó chính là hạnh phúc.'),
(20, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Yêu một người, đừng vội dốc hết tâm can, nếu phải hèn mọn trong tình yêu, chi bằng giữ lại chút kiêu ngạo vào yêu thương cho chính mình.'),
(21, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thất bại thật sự không phải là kết quả không được như ý muốn mà là khi ta đang nắm giữ trong tay nhưng không biết trân trọng mà lại tùy tiện và dễ dàng từ bỏ khi chưa nếm trải qua hay quyết tâm giữ lấy.'),
(22, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Buổi sáng mỗi khi thức dậy, hãy tự đặt cho mình một mục tiêu: Hôm nay nhất định phải sống tốt hơn hôm qua! Kiên trì mỗi ngày, chắc chắn bạn sẽ nhận được thu hoạch lớn.'),
(23, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi người đều có lúc cảm thấy bản thân không đủ tốt, ngưỡng mộ giây phút người khác khoác trên mình ánh hào quang huy hoàng; nhưng thực ra, phần lớn mọi người đều chỉ là người bình thường. Bạn đừng chán nản, đừng hoang mang, hãy làm một chú ốc sên luôn cố gắng bò từng bước chậm rãi về phía trước, hoặc là một chú chim ngốc nghếch luôn kiên trì tập bay lên cao, hãy khiêm tốn và nỗ lực mà sống trong cuộc sống bình thường này. Sẽ có một ngày, bạn sẽ được đứng ở nơi ánh sáng chói nhất, trở thành dáng vẻ mà bạn vẫn luôn ao ước.'),
(24, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Làm người chỉ số IQ và EQ cao hay không không quan trọng, nhưng nhân cách nhất định phải lớn, nói thẳng ra bạn có thể không thông minh cũng chẳng biết xã giao, nhưng nhất định phải có nghĩa khí.'),
(25, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn cần học cách bịt tai để không nghe thấy những âm thanh hỗn tạp; trên đời này chẳng có ai chưa từng đau khổ cùng quẫn, người có thể chữa lành cho bạn chỉ có chính bạn mà thôi.'),
(26, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Một người hiểu bạn sẽ không bao giờ khiến bạn buồn; nếu biết rõ làm như vậy khiến bạn không thoải mái nhưng anh ta vẫn làm, người đầy ác ý và ngu xuẩn như vậy không đáng được tha thứ.'),
(27, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời thanh xuân theo đuổi tình cảm mãnh liệt, trưởng thành rồi lại thích sự bình lặng, sau khi chúng ta tìm kiếm, bị tổn thương rồi rời bỏ mà vẫn có thể trước sau như một tin vào tình yêu, thì đó là một loại dũng khí. Mỗi người đều có một khu rừng của riêng mình, người đi lạc đã lạc mất rồi, người tương phùng sẽ lại tương phùng.'),
(28, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn nghèo, có người ở bên đó là hạnh phúc; bạn ốm có người chăm sóc, đó chính là hạnh phúc; bạn lạnh có người ôm lấy, đó chính là hạnh phúc; bạn khóc có người an ủi đó chính là hạnh phúc; bạn già rồi, vẫn có người bầu bạn đó chính là hạnh phúc.'),
(29, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thất bại thật sự không phải là kết quả không được như ý muốn mà là khi ta đang nắm giữ trong tay nhưng không biết trân trọng mà lại tùy tiện và dễ dàng từ bỏ khi chưa nếm trải qua hay quyết tâm giữ lấy.'),
(30, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi ngày bạn sống đều là một khúc nhạc dạo đầu cho sự thành công. Bạn làm chủ được mỗi ngày là bạn đã có cơ hội nắm trong tay thành công. Ngược lại nếu bạn để mỗi ngày trôi qua trong lãng phí thì thành công sẽ cach bạn ngày càng xa.'),
(31, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có nhiều lúc bạn đã cố gắng hết sức nhưng vẫn chưa thể có được những gì bạn muốn, không phải là vì bạn không xứng đáng mà chỉ là thời cơ chưa đến, những thứ bạn phải làm chỉ đơn giản là cắn chặt răng, cứ tiếp tục để bản thân mình vẫn cố gắng như thế, chỉ có vậy thôi.'),
(32, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tôi không dám nghỉ ngơi, bởi vì tôi vẫn chưa có khoản tiền tiết kiệm nào; tôi không dám kêu mệt, bởi vì tôi chưa đạt được thành tựu gì, tôi không dám lười biếng, bởi vì tôi vẫn còn phải sống; tôi có thể từ bỏ quyền lựa chọn, nhưng tôi không thể lựa chọn từ bỏ. Vì vậy, kiên cường, phấn đấu, nỗ lực chính là sự lựa chọn duy nhất của tôi.'),
(33, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi người đều có lúc cảm thấy bản thân không đủ tốt, ngưỡng mộ giây phút người khác khoác trên mình ánh hào quang huy hoàng; nhưng thực ra, phần lớn mọi người đều chỉ là người bình thường. Bạn đừng chán nản, đừng hoang mang, hãy làm một chú ốc sên luôn cố gắng bò từng bước chậm rãi về phía trước, hoặc là một chú chim ngốc nghếch luôn kiên trì tập bay lên cao, hãy khiêm tốn và nỗ lực mà sống trong cuộc sống bình thường này. Sẽ có một ngày, bạn sẽ được đứng ở nơi ánh sáng chói nhất, trở thành dáng vẻ mà bạn vẫn luôn ao ước.'),
(34, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù hiện thực cuộc sống có thế nào, chúng ta đều không nên oán trời trách người, đừng cứ mãi nghĩ rằng thế giới này nợ bạn hay ai đó phụ lòng bạn. Trong cuộc sống, ai cũng sẽ có lúc thuận buồm xuôi gió hoặc những khi phải đương đầu với nghịch cảnh khó khăn. Vào giây phút khổ sở tuyệt vọng nhất, bạn càng nên học cách điều chỉnh bản thân, khiến mình trở nên xuất sắc hơn. Bởi vì những tháng ngày nhọc nhắn mới chính là thời cơ để bạn trưởng thành!'),
(35, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời thanh xuân theo đuổi tình cảm mãnh liệt, trưởng thành rồi lại thích sự bình lặng, sau khi chúng ta tìm kiếm, bị tổn thương rồi rời bỏ mà vẫn có thể trước sau như một tin vào tình yêu, thì đó là một loại dũng khí. Mỗi người đều có một khu rừng của riêng mình, người đi lạc đã lạc mất rồi, người tương phùng sẽ lại tương phùng.'),
(36, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tên của anh khi viết xuống trang giấy chẳng qua chỉ dài có vài centimet, nhưng lại xuyên suốt một quãng thanh xuân của em. Thực ra anh không biết rằng anh chính là ước mơ của em.'),
(37, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mới yêu được mấy tháng đã muốn bên nhau cả đời, người mới quen vừa đối tốt với bạn một chút liền nghĩ sẽ làm bạn mãi mãi, chẳng trách oán hận trong bạn sao mà nặng nề, tổn thương sao nhiều đến vậy, đây đều là cái giả cho sự ngây thơ.'),
(38, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tha thứ cho một người rất dễ, nhưng để tin tưởng đối phương lần nữa thì khó vô cùng. Hâm nóng một trái tim cần rất nhiều năm, làm nguội lạnh một trái tim lại chỉ cần trong khoảnh khắc.'),
(39, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời gian sẽ nói cho chúng ta biết, thương yêu bình dị là lâu bền nhất; bầu bạn lúc đời thường là an tâm nhất; người hiểu bạn là ấm áp nhất.'),
(40, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nghe nói “chào buổi sáng” là lời hỏi thăm thâm tình nhất, “chúc ngủ ngon” là lời tỏ tình bền lâu nhất. Mỗi tối trước khi đi ngủ, bạn nói” chúc ngủ ngon”, đó là thứ hạnh phúc đơn giản nhất nhưng lâu dài nhất.'),
(41, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Hy vọng bạn mãi kiên cường, dũng cảm đứng ở nơi đón ánh sáng, sống cuộc đời mà mình mong ước.'),
(42, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', '“Mỗi một người ưu tú, đều từng có một giai đoạn trầm lặng, không ca thán, không trách cứ, không ngừng nỗ lực, chịu đựng sự cô đơn và lạnh lẽo trong đêm tối, luôn tin rằng bông hoa đẹp nhất cũng có thể bung nở vào lúc tăm tối”\r\n\r\nCó đôi lúc cuộc đời méo mó không ra hình thù, có lúc nó vùi dập tàn nhẫn không chừa cho bất cứ ai đường lui. Thế nhưng, đó đều là bước đường của những con người ưu tú buộc phải trải qua. Không có đường tắt. Mọi sự vượt trội đều là do công sức bạn bỏ ra chưa bằng người khác. Miêu Công Tử luôn nêu ra những triết lí sống thô nhưng rất thật. Khi chúng ta chưa bằng ai, chỉ có thể làm bạn cùng bóng tối và nỗ lực kiên cường mà sống sót. Nhưng nhất định sẽ có ngày bạn đứng ở nơi rực rỡ nhất, nhìn chính mình của ngày hôm qua đã dũng cảm tiếp tục, chân thành nói một câu: “Cám ơn”.'),
(43, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', '“Tôi vĩnh viễn không đủ tốt, cũng không hoàn hảo, nhưng vậy thì đã sao? Đây là tôi, có lúc vui, có lúc lại thương cảm, có lúc hăm hở tiến bước, có lúc lại lười biếng, có lúc kiên cường, có lúc lại yếu đuối, có lúc bao dung, có lúc lại khinh thường, nhưng tôi luôn đi trên con đường ngày càng tốt đẹp.”\r\n\r\nChỉ cần tầm nhìn của bạn không dừng lại ở mức độ hiện tại, không đố kỵ với người khác, không để tâm những lời gièm pha, bạn sẽ trở thành người mà bạn muốn trở thành. Khi bạn không đủ tốt đẹp, xin đừng tự ti. Vì gièm pha, bản thân nó chính là một loại ngưỡng vọng. Không đủ tốt đẹp cũng có bình yên và giá trị hạnh phúc của riêng nó. Miêu Công Tử luôn nhắc nhở độc giả của mình về cuộc sống nghiệt ngã ngoài kia rằng, khi bạn bị ai đó đánh giá, đâm sau lưng hãy nỗ lực tiến xa hơn nữa, vì vết thương đó chỉ có thể chứng minh bạn chưa vượt ra khỏi vị trí để người khác thương tổn mình. Hãy ngẩng cao đầu và chạy nhanh về phía trước để tiếp tục đột phá bản thân.'),
(44, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', '“Miyazaki Hayao từng nói trong phim của mình: “Tôi luôn tin tưởng tưởng trên thế giới này nhất định có một cái tôi khác, làm những việc tôi không dám làm, sống cuộc đời mà tôi muốn sống.”\r\n\r\nThực ra, mỗi người đều có một cái tôi khác, chỉ cần chúng ta bằng lòng, vậy thì sẽ chẳng có việc gì chúng ta không dám làm, và chúng ta sẽ sống cuộc đời mình muốn.”\r\n\r\nMỗi một bức thư để đề cập đến những vấn đề riêng lẻ như sự nỗ lực, vấp ngã, thành công hay tình yêu…luôn xuất hiện trong cuộc sống mỗi người. Nếu chúng ta hiện tại đang chán ghét bản thân, không bằng lòng với thực tại, đều là do trước đây ta không đoái hoài đến bản thân, không chịu nỗ lực phấn đấu. Nhưng điều làm tôi ngưỡng mộ Miêu Công Tử chính là mỗi một bức thư đều là sự mới mẻ, không lặp lại chính mình. Mỗi tư tưởng đều hết sức rạch ròi, không nửa vời, ấp úng. Mỗi lá thư đều là bài học đắt giá ai cũng nên giữ gìn khi bản thân đang còn trẻ, chưa tự chủ được suy nghĩ và hành động.\r\n\r\nSuy nghĩ sẽ tạo nên số phận. Trong mỗi chúng ta, chỉ những ai nghiêm cẩn, không dây dưa lề mề, không lười nhác trốn tránh, hằng ngày kiên trì nỗ lực nhất định mới thoát kén thành bướm. Bởi vì chỉ khi nghiêm cẩn, ta mới sống được ra đúng hình dạng mà ta muốn trở thành.\r\n\r\n'),
(45, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu có một ngày, khi những nỗ lực bạn bỏ ra tương xứng với\r\ngiấc mơ bạn đang theo đuổi thì những giấc mơ đó cũng sẽ chẳng\r\nbao giờ phụ lại những gì bạn bỏ ra. hãy cố gắng hết sức để trở\r\nthành một người tài ba, khi bạn dốc hết sức để làm một chuyện gì\r\nđó, cả thế giới đều đứng về phía bạn.'),
(46, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Kể từ hôm nay, mỗi ngày hãy cười lên, trên đời này, trừ việc sinh\r\ntử ra còn lại đều là chuyện nhỏ. cho dù gặp phải chuyện buồn gì đi\r\nchăng nữa thì cũng đừng tự làm khó mình, cho dù xảy ra chuyện rắc\r\nrối đến thế nào đi nữa thì cũng chẳng cần phải đau lòng làm gì cả.\r\nHôm nay là ngày bạn còn trẻ nhất so với những ngày tháng nỗ lực\r\nvề sau rồi, bởi vì có ngày mai, hôm nay mãi mãi chỉ là vạch kẻ xuất\r\nphát cho hành trình ấy.'),
(47, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đời người luôn có những điều ấm áp không mong mà tới, và cả\r\nnhững hi vọng không ngừng lớn lên. Cho dù con đường phía trước\r\ncó bao nhiêu khổ ải, chỉ cần hướng đi đúng thì dù trên đường đi có\r\nbao nhiêu chông gai gập ghềnh cũng còn gần với bến bờ hạnh phúc\r\nhơn chỉ đứng mãi ở vạch xuất phát.'),
(48, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn là một người mạnh mẽ, bất kể lúc nào cũng bắt mình phải\r\nlàm được trọn vẹn 100% những kì vọng của bản thân. Nhưng\r\nnghiêm khắc quá cũng không phải là điều tốt, bạn không phải là\r\nthiên tài, hãy cho phép mình phạm sai lầm, đừng quá vồi vàng,\r\nnhững nỗ lực của bạn, thời gian sẽ giúp bạn thực hiện.'),
(49, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời gian thay đổi, lòng người cũng thay đổi, cuộc sống của\r\nchúng ta tựa như một bộ phim điện ảnh không chiếu lại thêm lần\r\nnào nữa, có những thứ dù cho chúng ta có cố gắng đến như thế nào\r\nđi nữa thì cũng chẳng bao giờ trở lại được như xưa. Trên đời này\r\ncái khoảng cách xa nhất không phải là yêu, chẳng phải là hận, mà là\r\nnhững người quen biết nhau dần trở nên xa lạ với nhau.'),
(50, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có nhiều lúc bạn đã cố gắng hết sức nhưng vẫn chưa thể có\r\nđược những gì bạn muốn, không phải là vì bạn không xứng mà chỉ\r\nlà thời cơ chưa đến, những thứ bạn phải làm chỉ đơn giản là cắn\r\nchặt răng, cứ tiếp tục để bản thân mình vẫn cố gắng như thế, chỉ có\r\nvậy thôi.'),
(51, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cái gọi là kì tích đại khái đều là như thế này, kỳ tích không có\r\nnghĩa là những thứ mà Thượng Đế ban tặng cho ai đó nhẽ ra không\r\nđáng được nhận, mà là những giải thưởng được gửi đến từ từ giành\r\ncho những người chăm chỉ, nó chỉ đến muộn chứ không bao giờ\r\nvằng mặt.'),
(52, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Miyazaki Hayao đã từng nói thế này trong phim của ông ấy: \"Từ\r\ntrước đến nay tôi đều tin rằng trên đời này có một \'tôi\' khác tồn tại,\r\ndám làm những thứ tôi không dám làm, dám sống cuộc sống mà tôi\r\nkhông dám sống.\" Thực ra thì ai trong chúng ta đều có bản ngã khác\r\ncủa chính mình, chỉ cần chúng ta muốn, chẳng có gì chúng ta không\r\ndám làm, chẳng có cuộc sống nào không vượt qua được.'),
(53, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có lẽ bạn cảm thấy mình chẳng có gì, cũng có thể bạn sẽ\r\nngưỡng mộ căn nhà rồi cả xe đẹp của cấp trên mình hoặc là đôi\r\nkhuyên tai kim cương chị bạn trong trường đang đeo. Thực ra bạn\r\nkhông cần phải đi ngưỡng mộ những thứ này, chỉ cần bạn nỗ lực, tất\r\ncả mọi thứ, thời gian đều mang đến cho bạn. Những năm tháng\r\nthanh xuân của bạn, lại là thứ học chẳng bao giờ có được.'),
(54, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Kết quả của bây giờ đều là do những hành động ngày trước tạo\r\nnên. Nếu bạn ghét mình của hiện tại thì càng nên xem lại mình một\r\nchút. Bởi vì mỗi điều ở hiện tại mà bạn không hài lòng đều là do có\r\nnhững cái trước kia bạn không cố gắng đủ.'),
(55, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tuổi trẻ chính là lúc nếm trải cực khổ, cũng chính là lúc chúng ta\r\nnỗ lực hết mình. Bạn nhất định phải tin rằng đằng sau những sự nỗ\r\nlực kia là phần thưởng đáng giá hơn gấp bội. Cuộc sống của ngày\r\nhôm nay là do 3 năm trước quyết định, nhưng nếu hôm nay bạn vẫn\r\nsống cuộc sống của 3 năm trước thì bạn của 3 năm sau vẫn cứ như\r\nthế mà thôi.'),
(56, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thực ra phấn đấu chính là bình thản sống mỗi ngày, làm thật tốt\r\nnhững việc mình đang phải làm, không trì hoãn, không than phiền,\r\nkhông thoái thác, không lười biếng. Mỗi ngày cố gắng thêm một chút\r\nxíu, mới có thể gộp thành hàng ngàn dũng khí, mang theo sự kiên\r\ntrì, dẫn bạn đến nơi bạn muốn đến.'),
(57, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Những người biết cố gắng đều sẽ có một ngày từ nhộng hóa\r\nthành bướm, bạn phải tin rằng, rồi sẽ có ngày bạn phá kén chui ra,\r\ntrở nên xinh đẹp hơn rất nhiều so với kỳ vọng của mọi người. Nhưng\r\nquá trình này sẽ rất đau đớn, sẽ rất gian khổ, có lúc còn cảm thấy\r\nnản lòng thoái chí. Đối mặt với hiện thực dồn đến mãnh liệt, bạn\r\ncảm thấy bản thân thật nhỏ bé và yếu đuối. Nhưng đây chính là một\r\nphần của cuộc sống. Hãy làm tốt những điều bây giờ bạn có thể\r\nlàm, rồi sau đó mọi thứ sẽ tốt lên thôi.\r\n'),
(58, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi một người thành đạt trước khi tiến tới thành công, đều khó\r\ntránh khỏi trải qua khoảng thời gian tối tăm ảm đạm. Những lúc như\r\nvậy, bạn không cần sợ hãi, cũng đừng nhút nhát, chỉ cần cố gắng\r\ntiến từng bước về phía mục tiêu của bạn, sau đó tiếp tục cố gắng\r\nhơn gấp ba lần sự cố gắng bạn đã từng bỏ ra. Nhiều năm sau, bạn\r\nnhất định sẽ vượt qua chính bản thân của hiện tại.'),
(59, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi người tài giỏi đều có một khoảng thời gian trầm lặng, họ\r\nkhông than phiền hay trách móc, mà họ không ngừng nỗ lực, nhẫn\r\nnhịn chịu đựng những đêm dài cô độc và trống vắng, mang theo\r\nniềm tin rằng tại nơi tối tăm ảm đạm vẫn có thể nở ra đóa hoa xinh\r\nđẹp nhất.'),
(60, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bây giờ bạn vẫn còn rất trẻ, hoàn toàn không cần buồn bực chỉ vì\r\nquần áo, túi xách của mình không phải hàng hiệu giống người ta,\r\nhoặc tiền tiết kiệm chưa được đến năm con số như người ta. Bởi vì\r\nai ai cũng đều tiến lên như vậy, chính bản thân bạn mới là căn\r\nnguyên của tất cả, muốn đổi đời trước hết phải thay đổi chính mình.'),
(61, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù bạn trời sinh đã được ban cho một ván cờ đẹp, cũng\r\nkhông thể chắc chắn rằng ván cờ cuộc đời bạn sẽ được đầu xuôi\r\nđuôi lọt, cũng chưa chắc bảo đảm được rằng mọi nước cờ bạn đi sẽ\r\nnắm chắc phần thắng. Để có một ván cờ cuộc đời tốt đẹp, bạn phải\r\ndựa vào bản thân mình, thận trọng trong từng bước đi và tranh thủ\r\nmọi cơ hội.'),
(62, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mọi thành công đều đến từ sự phấn đấu không biết mệt mỏi; mọi\r\nniềm hạnh phúc đều đến từ sự nỗ lực và kiên trì tưởng như bình\r\nthường nhất, bạn không thể tìm được con đường tắt.'),
(63, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Trong lúc người khác thức trắng đêm thì bạn đã ngủ say; khi\r\nngười khác đã thức dậy thì bạn vẫn cố ngủ nướng thêm dăm ba\r\nphút. Bạn có rất nhiều ý tưởng, nhưng chúng lại khiến đầu óc bạn\r\nnhư muốn nổ tung lên, liền bỏ qua không nghĩ tiếp nữa, còn người\r\nkhác thì vẫn kiên trì suy nghĩ đến cùng. Đến cả một cuốn sách bạn\r\ncũng phải đọc rất lâu, lúc nên làm việc thì tay cầm điện thoại, chắc\r\nchắn bạn cũng sẽ không dậy từ sáng sớm để học từ mới, buổi tối sẽ\r\nkhông tăng ca đến tận đêm khuya. Có nhiều khi không phải do bạn\r\ntầm thường, không có chí tiến thủ, mà là bạn chưa bỏ ra nhiều công\r\nsức bằng người khác.'),
(64, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Khi một người nào đó không quan tâm bạn, đừng quá đau lòng,\r\nmỗi người đều có cuộc sống của riêng mình, không ai có thể ở bên\r\nbạn mãi mãi. Điều đáng xấu hổ nhất chính là đánh giá quá cao vị trí\r\ncủa bản thân trong lòng người khác, thực ra bạn biết đấy, rẻ tiền\r\nnhất là tình cảm, lạnh lẽo nhất là lòng người. Cái gì của bạn sẽ mãi\r\nlà của bạn. Có những thứ giống như cát trong tay, càng nắm chặt sẽ\r\ntrôi đi càng nhanh. Bạn đã nỗ lực rồi, đã quý trọng rồi, cho nên bạn\r\nkhông thẹn với lương tâm. Những thứ khác hãy để số phận quyết\r\nđịnh.'),
(65, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Trên đời này không có công việc nào là không cực nhọc, không\r\ncó nơi nào chuyện đời, chuyện người là không phức tạp. Đừng dễ\r\ndàng nổi nóng, bởi chẳng ai thiếu nợ bạn điều gì cả. Khi đứng giữa\r\nsự lựa chọn hãy học cách đánh đổi, có được thì sẽ có mất, không\r\nnên quá tính toán chi li. Hãy học cách làm việc thoải mái nhưng vẫn\r\nthiết thực, càng cố gắng sẽ càng có nhiều may mắn đến với bạn. Khi\r\nmột người đã được hậu thuẫn đầy đủ bởi tinh thần và vật chất, cuộc\r\nđời sẽ trở nên tràn đầy năng lượng.\r\n'),
(66, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Những cố gắng ngày hôm nay của bạn là tiền đề cho sự may\r\nmắn sắp đến. Điều bạn được nhận lại sẽ là những đóa hoa nở vào\r\nngày mai.'),
(67, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù đêm qua bạn có khóc lóc, nức nở không thành tiếng đến\r\nthế nào thì sáng mai tỉnh dậy, thành phố này vẫn tấp nập người xe\r\nnhư cũ. Dù bạn vui hay không vui thì thành phố cũng không hơi đâu\r\nmà đợi bạn, bạn chỉ có thể đem những cảm xúc ấy khắc sâu vào\r\nlòng, hoặc là quên đi. Chặng đường mà bạn đã từng yêu từng hận\r\nđó, những tháng ngày bạn đã dốc hết sức lực nhưng vẫn không\r\nnhìn thấy hi vọng đó, tất cả rồi sẽ qua đi thôi.'),
(68, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tôi không dám nghỉ ngơi, bởi vì tôi vẫn chưa có một khoản tiền\r\ntiết kiệm nào; tôi không dám kêu mệt, bởi vì tôi vẫn chưa đạt được\r\nthành tựu gì; tôi không dám lười biếng, bởi vì tôi vẫn còn phải sống;\r\ntôi có thể từ bỏ quyền lựa chọn, nhưng tôi không thể lựa chọn từ bỏ.\r\nVì vậy, kiên cường, phấn đấu, nỗ lực chính là sự lựa chọn duy nhất\r\ncủa tôi.'),
(69, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi con người tài giỏi, đều có một quãng thời gian khổ cực. Có\r\nthể là vì chuyện bài vở học hành, vì công việc, vì tình yêu, phải rời\r\nxa cha mẹ đến một thành phố khác sinh sống. Khi bạn đã mệt mỏi\r\nvà phát chán rồi, hãy nghĩ đến công sức cha mẹ đang bỏ ra vì bạn,\r\nđây chính là lý do buộc bạn phải kiên cường.'),
(70, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Xã hội này rất thực tế, khi bạn không có thực lực, người ta sẽ\r\nnhìn vào vẻ bề ngoài của bạn. Cho nên, khi bạn không có ngoại\r\nhình, phải cố gắng trau dồi thực lực, còn khi bạn không có cả ngoại\r\nhình lẫn thực lực, thì người ta sẽ chỉ nói với bạn: bye bye.'),
(71, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mua được thứ mình thích, đi tới nơi mình muốn đi, sẽ không vì\r\nsự đến hay đi của những người xung quanh mà làm ảnh hưởng đến\r\nchất lượng cuộc sống của mình. Ngược lại, hãy vì được tiêu những\r\nđồng tiền do chính bản thân mình làm ra mà cảm thấy tràn đầy năng\r\nlượng, đó chính là nguyên nhân để bạn nỗ lực.'),
(72, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Không một ai đi cùng bạn suốt đời, vì vậy bạn phải học cách làm\r\nquen với cô đơn; không một ai giúp bạn cả đời, vì vậy bạn phải\r\nkhông ngừng phấn đấu.'),
(73, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Buổi sáng mỗi khi thức dậy, hãy tự đặt cho mình một mục tiêu:\r\nHôm nay nhất định phải sống tốt hơn hôm qua! Kiên trì mỗi ngày,\r\nchắc chắn bạn sẽ nhận được thu hoạch lớn.'),
(74, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tĩnh tâm lại và làm tốt những việc bạn cần làm, hãy cố gắng thật\r\nnhiều nhé! Có đôi lúc khi đã thực sự cố gắng, bạn sẽ nhận ra bạn\r\ncòn tài giỏi hơn mình tưởng rất nhiều.'),
(75, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Hãy cứ lặng lẽ mà cố gắng, chờ đến khi bạn trở nên tài giỏi rồi,\r\nsẽ phá kén chui ra, dọa cho những kẻ từng khinh thường bạn một\r\nphen giật mình, đó mới là mục tiêu bạn cần làm lúc này.'),
(76, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có lẽ sẽ có người mỉa mai sự nỗ lực của bạn; có lẽ sẽ có người\r\nkhông hiểu được những suy nghĩ cố chấp của bạn. Trong mắt người\r\nkhác bạn có thể là một tên hề mua vui, nhưng trong trái tim mình,\r\nbạn chính là nữ hoàng!'),
(77, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù tôi không có tài hoa tuyệt thế, cũng không có nhiều tiền\r\ncủa, nhưng tôi có tấm lòng tràn đầy đam mê và tinh thần lạc quan\r\nvui vẻ, bởi vì tôi tin rằng: Chỉ cần cố gắng, chuyện gì cũng có thể\r\nthực hiện được!'),
(78, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có đôi khi, nỗ lực thêm một chút là vì để bản thân có tư cách,\r\nkhông phải làm những việc mình không thích làm; vì để khi gặp\r\nđược người mình thích, sẽ không vì bản thân không đủ tốt mà\r\nkhông níu giữ được đối phương; vì để tránh có một tương lai kém\r\nxa bạn bè, được cùng họ ngắm chung một thế giới; vì để nhìn cho rõ\r\nrằng, đến cuối cùng mình có thể đi được đến đâu.'),
(79, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Để nuôi dưỡng phẩm chất của một người thành công, chớ coi\r\nnhẹ tinh thần cầu tiến; hãy phát huy tốt vai trò của bản thân, hoàn\r\nthành tốt công việc trong phạm vi chức trách của mình, tránh vượt\r\nquyền; khi đã xác định được mục tiêu thì hãy chuyên tâm đến nó;\r\nđừng sợ cạnh tranh, bởi nếu không có cạnh tranh, sự sống còn ý\r\nnghĩa gì nữa.'),
(80, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Không biết khó khăn là, chỉ biết gió táp mưa sa cũng không ngăn\r\nnổi bước chân đi; không biết đau thương là gì, chỉ biết trời sẽ không\r\ntuyệt đường người; không biết thất bại thảm hại là gì, chỉ biết ngẩng\r\nđầu hiên ngang tiến về phía trước; không biết bụi rậm chông gai là\r\ngì, chỉ biết cứ tiếp tục đi - thành công, ở ngay bờ bên kia.'),
(81, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi người đều có lúc cảm thấy bản thân không đủ tốt, ngưỡng\r\nmộ giây phút người khác khoác trên mình ánh hào quang huy\r\nhoàng; nhưng thực ra, phần lớn mọi người đều chỉ là người bình\r\nthường. Bạn đừng chán nản, đừng hoang mang, hãy làm một chú\r\nốc sên luôn cố gắng bò từng bước chậm rãi về phía trước, hoặc làm\r\nmột chú chim ngốc nghếch luôn kiên trì tập bay lên cao, hãy khiêm\r\ntốn và nỗ lực mà sống trong cuộc sống bình thường này. Sẽ có một\r\nngày, bạn sẽ được đứng ở nơi sáng chói nhất, trở thành dáng vẻ mà\r\nbạn vẫn luôn ao ước.'),
(82, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Sau này bạn sẽ hiểu, phải kiếm được đủ khoản tiền khiến bản\r\nthân yên tâm, bạn mới có thể sống một cuộc sống đơn giản, an\r\nnhàn và tự do, mới có thể khiến bản thân sống càng hăng hái, nhiệt\r\ntình. Bởi vậy, hãy dành nhiều thời gian để nỗ lực hơn là để phê bình\r\nsoi mói.'),
(83, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Một người không cố gắng chính là, người khác muốn giúp bạn\r\nmột tay, cũng không biết tay bạn đang ở đâu.'),
(84, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Một người cởi mở, thể hiện rõ nhất khi họ chán nản. Một người\r\nbiết tiết chế, thể hiện rõ nhất khi họ tức giận. Một người săn sóc chu\r\nđáo, thể hiện rõ nhất khi họ đau thương. Một người chín chắn, thể\r\nhiện rõ nhất khi họ đưa ra lựa chọn. Bất cứ ai cũng muốn được làm\r\nđiều mình thích, nhưng làm điều mình nên làm, mới được gọi là\r\n\"trưởng thành\".'),
(85, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu không được người khác xem trọng, bạn không cần tức giận,\r\ncàng không nên tỏ thái độ ra ngoài, không việc gì phải chứng minh\r\nmình xuất sắc, làm như vậy bạn sẽ rất mệt mỏi, bởi vì có rất nhiều\r\nngười không coi trọng bạn, bạn không thể nào làm hài lòng tất cả\r\nmọi người. Biện pháp tốt nhất chính là, đừng quan tâm những người\r\nkhông quan tâm bạn. Chớ vì một hai câu của người khác mà thay\r\nđổi cách nhìn về bản thân, hãy cứ là chính mình, mọi nỗ lực của bạn\r\nđều bỏ ra vì chính bạn.'),
(86, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn nỗ lực rèn luyện bản thân, bạn làm việc chăm chỉ, bạn giữ\r\ngìn vóc dáng hay bạn mỉm cười với mọi người. Đây vốn chẳng phải\r\nlà để làm hài lòng người khác mà để tự làm đẹp cho mình, thanh lọc\r\ntâm hồn người mình. Tự nhủ rằng tôi chính là một con người độc lập\r\nluôn mạnh mẽ tiến về phía trước.'),
(87, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Duy trì những nổ lực lớn nhất, chuẩn bị cho những tình huống\r\nxấu nhất, lúc đó bạn sẽ chẳng còn phải sợ gì cả. Hi sinh nhiều, kì\r\nvọng ít - bạn sẽ không phải chịu cảm giác thất vọng nhiều lắm đâu.\r\nHãy tạo cho mình những giấc mơ đẹp đẽ và cũng hãy sống một\r\ncách thực tế - bạn sẽ không thấy nhàm chán. Cuộc sống mà, bạn\r\nchuẩn bị đến đâu thì đối mặt đến đó thôi!'),
(88, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn vĩnh viễn chẳng thể thoả mãn ánh nhìn của cả thế giới, tốt\r\nnhất là ai không quan tâm bạn, bạn cũng đừng để ý đến người ta.\r\nChớ nên vì một, hai câu của người khác mà thay đổi cách nhìn về\r\nchính mình, bản thân bạn thế nào hãy cứ như thế ấy, sự cố gắng\r\ncủa bạn chỉ dành cho bạn và người quan tâm đến bạn!'),
(89, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đừng đánh giá bản thân quá cao, thế giới này vắng một ai đó\r\ncũng đâu ảnh hưởng gì; đừng đánh giá bản thân quá thấp, bạn là\r\nđộc nhất vô nhị trên đời. Mỗi người đều có sứ mệnh riêng, đừng so\r\nsánh bản thân với người khác, hãy sống tốt cuộc đời của chính\r\nmình.'),
(90, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nỗi đau có lớn thế nào, ngủ một giấc rồi sẽ lãng quên. Cõng hôm\r\nqua đuổi theo ngày mai, bãn sẽ mệt mỏi từng giây từng phút. Vừa đi\r\nvừa quên mới có thể cảm nhận được niềm hạnh phúc đang đến\r\nngay trước mắt. Phiền muộn không giữ qua đêm, dễ quên mới hạnh\r\nphúc.'),
(91, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Hy vọng bạn mãi kiên cường, dũng cảm đứng ở nơi đón ánh\r\nsáng, sống cuộc đời mà mình mong ước.'),
(92, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có một khoảnh khắc nào đó em đột nhiên cảm thấy, trong mắt\r\nanh mọi sự chờ đợi của bản thân đều chẳng có ý nghĩa gì, bởi vì nó\r\nkhông đổi lại được bất kì sự trân trọng nào. Đâu phải em không hiểu\r\nđược phải kiên trì ra sao, mà là quá lâu chẳng thấy anh hồi âm, vì\r\nthế, lần này em quyết định ra đi.'),
(93, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tôi rất thích một câu nói: \"Đừng làm bản thân trở nên rẻ mạt,\r\nđừng tuỳ ý cho đi bất cứ điều gì, đừng bằng lòng hùa theo người\r\nkhác, cuộc sống mỗi người khác nhau, chớ nên gượng ép!\"\r\n'),
(94, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Trước đây luôn cho rằng kiên trì là không bao giờ lay động, giờ\r\nmới hiểu ra, kiên trì chính là dù do dự, chùn bước, tâm tình dao\r\nđộng nhưng vẫn tiếp tục tiến về phía trước.\r\n'),
(95, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thứ người khác có, chúng ta không cần ngưỡng mộ, chỉ cần nỗ\r\nlực, bản thân sẽ có ngày đạt được. Đạt được rồi cũng đừng khoe\r\nkhoang, vì người khác còn đang cố gắng, sớm muộn gì họ cũng sẽ\r\nđược như chúng ta hiện tại. Mỗi ngày đều cười thật vui vẻ, mệt thì\r\nngủ, tỉnh lại cười, cuộc sống nên ung dung, thoải mái như thế.'),
(96, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Số phận là kẻ mang trong mình sự tàn ác, thỉnh thoảngnó sẽ cố\r\ntình gây ra một vài điều khó khăn, tàn nhẫn để thử thách những\r\nngười muốn sống yên ổn. Đứng trước những điều đó, chúng ta\r\nđương nhiên có quyền tức giận, đau buồn, thậm chí có thể khóc to\r\nmột trận hoặc mắng chửi vài câu để giải toả nỗi lòng, nhưng chỉ một\r\nlần này thôi. Nếu cứ để mặc cho sự bất mãn tiếp tục diễn ra, cuối\r\ncùng nó sẽ trở thành thù hận, như vậy thứ thay đổi không phải những chuyện và người khiến chúng ta bực dọc, mà là cuộc sống\r\ncủa chính chúng ta.\r\n'),
(97, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù phải sống một mình, đi qua vô vàn thành phố, bước trên\r\nmọi nẻo đường, ngắm nhìn những bầu trời khác nhau, chứng kiến\r\ncảnh li biệt hết lần này đến lần khác thì khi bị người khác chất vấn,\r\nbạn vẫn có thể không thẹn với lòng mà nói rằng: \"Tuy mỗi bước đều\r\nđi rất chậm, nhưng tôi chưa từng dừng chân.\"'),
(98, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chỉ có thay đổi thái độ, bạn mới có thể thay đổi được chất lượng\r\ncuộc sống của chính mình. Nguyên nhân khiến con người mơ hồ chỉ\r\ncó một, đó chính là trong những năm tháng cần phải phấn đấu,\r\nchúng ta lại nghĩ quá nhiều, làm quá ít.'),
(99, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mọi chuyện đều có nhân quả, đừng oán trách nữa, số phận chẳng\r\nnợ bạn thứ gì cả, ngược lại bạn đang thiếu hụt khả năng đối xử\r\nchân thànhvà chuẩn bị chu đáo cho cuộc sống đấy. Nếu muốn gặp\r\nmột người tốt hơn thì ít nhấtbạn cũng phải trở thành người không tệ;\r\nnếu muốn tìm một công việc tốt hơn, vậyít nhất bạn phải có năng lực\r\nlàm việc và kinh nghiệm tương đối. Đừng ghen tỵ vì người khác may mắn, cũng đừng quá bận tâm đến họ, thay vì tức giận bất bình so bì\r\nhơn kém, chi bằng tự hoàn thiện bản thân trước đã.\r\n\r\n'),
(100, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có lẽ bạn chẳng làm thế nào thay đổi được hoàn cảnh sống,\r\nnhưng bạn có thể quyết định cách giải quyết và thái độ lúc đối mặt\r\nvới nó. Khi không còn tuyệt vọng hay oán trách, mà thay vào đó là\r\ncổ vũ bản thân và lần nữa theo đuổi ước mơ, vậy thì dù phải một\r\nmình cô đơn dưới biển sâu, bạn vẫn sẽ trở thành người có lí tưởng,\r\nchiến thắng số phận và toả ánh hào quang rực rỡ.'),
(101, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thực ra xinh đẹp hay không không quan trọng, bạn nên biết rằng,\r\nmột người con gái có thái độ bình tĩnh, không lo âu, nóng vội trước\r\nmọi sự và một trái tim có thể chịu được nỗi cô đơn thì chính bản\r\nthân người con gái đó đã sở hữu thứ khí chất và năng lượng hấp\r\ndẫn tiềm ẩn rồi.'),
(102, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn chẳng cần quá để ý đến lời bình luận của người khác, chỉ\r\ncần làm tốt việc của mình; không cần nhìn ánh mắt của người khác,\r\nchỉ cần đi theo con đường mình đã chọn; đừng oán trách quá nhiều,\r\nnhư vậy chỉ khiến bản thân sống càng mệt mỏi hơn mà thôi. Không\r\ncần dốc sức lấy lòng người khác, dù đi tới đâu cũng đừng đánh mất chính mình. Nếu bạn không thích tôi, tôi chẳng buồn để ý, bởi tôi\r\nsống đâu phải để làm vừa lòng bạn.\r\n\r\n'),
(103, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Sống một cuộc đời bình đạm, an yên, giản đơn, làm một vài việc\r\nkhiến bản thân vui vẻ. Không đánh mất hy vọng vào cuộc sống, mỉm\r\ncười đối mặt với mọi khó khăn và thách thức, trong lòng có ước mơ,\r\ncho dù nó xa vời đến đâu đi chăng nữa.'),
(104, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đến tầm tuổi này rồi, chẳng còn muốn lấy lòng ai nữa. Dù là\r\nngười yêu hay bạn bè, ai khiến mình cảm thấy thoải mái thì ở bên\r\nngười đó, mệt rồi thì tránh xa một chút. Lấy lòng người khác vĩnh\r\nviễn không thể sánh với tự tạo niềm vui cho chính mình. Thà cô đơn\r\nchứ không dối lòng, thà hối tiếc chứ không tạm bợ. Người có thể\r\nbước vào trái tim tôi, tôi đối đãi như quân vương, còn không thì tôi\r\nchẳng cần nhắc đến.\r\n'),
(105, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chớ nên kỳ vọng, đừng quá ảo tưởng, cũng chẳng cần cưỡng\r\nép, hãy cứ thuận theo tự nhiên, việc đã được định trước thì nhất\r\nđịnh sẽ xảy ra. Tâm an yên chính là trạng thái đẹp nhất của cuộc\r\nsống.'),
(106, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù hiện thực cuộc sống có thế nào, chúng ta đều không nên\r\noán trời trách người, đừng cứ mãi nghĩ rằng thế giới này nợ bạn hay\r\nai đó phụ lòng bạn. Trong cuộc sống, ai cũng sẽ có lúc thuận buồm\r\nxuôi gió hoặc những khi phải đương đầu với nghịch cảnh khó khăn.\r\nVào giây phút khổ sở tuyệt vọng nhất, bạn càng nên học cách điều\r\nchỉnh bản thân, khiến mình trở nên xuất sắc hơn. Bởi vì những\r\ntháng ngày nhọc nhằn mới chính là thời cơ để bạn trưởng thành!\r\n'),
(107, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mỗi tối trước khi ngủ, hãy tha thứ cho tất cả những người và\r\nchuyện đã làm bạn tổn thương. Nhắm mắt lại, dọn dẹp trái tim mình,\r\nnhững gì đã qua cứ để nó qua đi. Cho dù hôm nay có xảy ra chuyện\r\ntồi tệ đến mức nào thì cũng đừng buồn phiền. Cuộc đời không dài,\r\nhãy dùng thái độ cam tâm tình nguyện, sống một cuộc đời an yên tự\r\ntại.'),
(108, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Gặp gỡ thường bất ngờ, còn ly biệt đa phần đều đượcmưu tính\r\ntừ lâu, có một số người sẽ luôn lặng lẽ bước ra khỏi cuộc sống của\r\nbạn,bạn cần học cách chấp nhận chứ không phải nhớ nhung.\r\n'),
(109, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chúng ta thường thích so bì với người khác xem ai hơn ai kém.\r\nNhưng thực ra, nguyên cớ khiến bạn đau đầu và buồn phiền vốn\r\nkhông phải sự bất hạnh và đau khổ của người khác mà chính là thái\r\nđộ của bạn.'),
(110, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thời gian sẽ nói cho chúng ta biết, thương yêu bình dị là lâu bền\r\nnhất; bầu bạn lúc đời thường là an tâm nhất; người hiểu bạn là ấm\r\náp nhất.'),
(111, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Quá để tâm đến cảm nhận của người khác là biểu hiện củaviệc\r\nkhông tin tưởng bản thân. Khi làm chuyện gì cũng lo lắng \"người\r\nkhác thấy thế nào\" thì thực ra bạn đang từ bỏ chính mình đấy!\r\n'),
(112, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Con người không sống dựa vào thân thể mà là trái tim. Đôi khi,\r\nthay đổi tâm trạng sẽ khiến bạn vui vẻ hơn. Trái tim giống như một\r\nmảnh ruộng, bản thân gieo hạt thiện sẽ ra quả thiện; gieo hạt ác sẽ\r\nra quả ác. Nếu có một tấm lòng khoan dung, lương thiện, tràn đầy\r\nsức sống, vậy thứ đã được gieo trồng chính là hạt giống niềm vui và\r\nchắc chắn bạn sẽ thu hoạch được một trái tim hạnh phúc.'),
(113, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Học cách biết hài lòng nhưng đừng dễ dàng thoả mãn, có những\r\nchuyện, muốn đạt được phải học cách buông bỏ trước. Thời gian là\r\nliều thuốc tốt nhất chữa lành vết thương trong tâm hồn. Khi đau khổ,\r\nta cần dựa vào chính mình để từ từ hoá giải, mỗi ngày cho bản thân\r\nmột niềm hy vọng, hãy thử không vì ngày mai mà phiền não, đừng vì\r\nhôm qua mà than thở, chỉ sống để ngày hôm nay trở nên tốt đẹp\r\nhơn.'),
(114, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cuộc sống của con người là một quá trình từ bỏ và đạt được.\r\nNgười sống tốt hoặc người thành công thực ra là người hiểu được\r\nhai từ đó. Không nỡ từ bỏ sẽ không đạt được, từ bỏ ít sẽ đạt được ít, từ bỏ nhiều sẽ đạt được nhiều. Muốn đạt được phải biết từ bỏ, có từ\r\nbỏ thì mới đạt được. Từ bỏ để đạt được là một kiểu nghị lực, một sự\r\nlĩnh ngộ, một phương thức trưởng thành,hơn nữa nó còn là một\r\ndạng trí tuệ, một cảnh giới của nhân sinh.\r\n\r\n'),
(115, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Dù cho hôm nay gặp bao nhiêu khó khăn bạn cũng phải giữ vững\r\nniềm tin: Chỉ có quá khứ không thể quay lại chứ tương lai nhất định\r\nsẽ đến. Nếu không làm chủ được tâm thái của bản thân, vậy bạn\r\nchắc chắn sẽ trở thành nô lệ của cảm xúc.'),
(116, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bí quyết để mãi mãi thành công chính là tự đào thải bản thân mỗi\r\nngày: Bạn không tranh giành với người khác đâu có nghĩa người\r\nkhác sẽ không cạnh tranh với bạn; bạn không loại trừ người khác,\r\ntất sẽ bị người khác loại trừ. Khi người khác tiến bộ còn bạn vẫn\r\ngiậm chân tại chỗ, thế chẳng phải nào bạn đang thụt lùi. Bạn không\r\nhề trang bị cho mình năng lực thích ứng với sự cạnh tranh, chống lại\r\nrủi ro, vậy thì khi nguy cơ ập đến, bạn sẽ không chịu nổi đả kích và\r\ntrở thành người đầu tiên ngã xuống! Theo đuổi sự an toàn chính là\r\nkhởi đầu của việc ngồi yên chờ chết!'),
(117, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đời người mỗi ngày đều phải vui cười, giây phút tiếp theo của\r\ncuộc sống sẽ xảy ra chuyện gì, chẳng ai trong chúng ta biết được.\r\nVì thế, buông bỏ khúc mắc trong lòng, xoá đi phiền muộn trong tâm trí, cắt đứt mọi sự không vui của cuộc sống, chỉ sống cho hiện tại.\r\nTrước những hỉ nộ ái ốc và biến chuyển không ngừng của cuộc đời,\r\nchi bằng coi chúng nhẹ tựa lông hồng, mỉm cười thanh thản, để tâm\r\ntình thoải mái, cuộc đời thêm dài lâu.\r\n\r\n'),
(118, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Số phận không bao giờ thiên vị bạn, cũng sẽ không bỏ mặc bạn.\r\nNó đóng lại một cánh cửa thì đồng thời sẽ mở ra cho bạn một cánh\r\ncửa khác. Bạn cần học cách buông bỏ, khi ấy cuộc đời mới trở nên\r\nrộng mở tươi sáng, sinh mệnh mới có thể rực rỡ đẹp tươi.'),
(119, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đôi khi, chúng ta coi hậu quả quá nghiêm trọng thành ra cuối\r\ncùng lại làm khó bản thân. Giống như việc hồi nhỏ thi bị điểm kém,\r\nđứng trước nhà không dám gõ cửa. Thực ra đằng sau cánh cửa ấy\r\nchính là bữa cơm nóng hổi và câu nói dịu dàng của mẹ: \"Không sao,\r\ncon đã rất cố gắng!\" Quay đầu nhìn lại mới thấy, những chuyện từng\r\nkhiến ta mất ăn mất ngủ, phần lớn đều là do tưởng tượng mà ra.'),
(120, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cuộc sống có hai cái sai lớn: Thứ nhất là sống để người khác\r\nnhìn, thứ hai là nhìn người khác sống. Chỉ cần bản thân cảm thấy\r\nhạnh phúc là được, đâu cần chứng minh điều gì với người khác.\r\nĐừng vì thuận theo ai đó mà bước nhầm con đường dưới chân mình.\r\n'),
(121, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nghịch cảnh chính là cơ hội Thượng đế trao cho bạn để loại bỏ\r\nnhững kẻ cạnh tranh. Phải biết rằng, bạn khó chịu, người khác cũng\r\nchẳng thoải mái; bạn không kiên trì thêm được nữa, người khác\r\ncũng vậy. Tuyệt đối đừng nói cho họ biết bạn đã cố hết sức, như vậy\r\nchỉ làm họ càng có niềm tin để phấn đấu, hãy để những kẻ cạnh\r\ntranh nhìn thấy nụ cười trên gương mặt bạn, khiến họ tuyệt vọng và\r\nrời bỏ cuộc đua. Thắng lợi chỉ thuộc về những người có lòng nhẫn\r\nnại.'),
(122, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn không mang đến và cũng chẳng thể lấy đi bất cứ thứ gì khi\r\nđến với thế giới này cả, mọi thứ bạn có đều chỉ là đi mượn, một\r\nngày nào đó bạn sẽ phải trả cả gốc lẫn lãi. Chi bằng hãy cứ thuận\r\ntheo tự nhiên.'),
(123, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cuộc sống nói cho chúng ta biết, trên đời này vốn không hề tồn\r\ntại con người hay sự việc hoàn mỹ nào cả, tình yêu hoàn mỹ chỉ có\r\ntrong truyện cổ tích và trí tưởng tượng mà thôi. Giữa hiện thực đời thường, ngoài sự bình thản ra thì toàn là cạm bẫy xấu xa và sự\r\ntrưởng thành sau hoạn nạn.\r\n'),
(124, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu người khác gây chuyện với bạn, bạn không cần phải trả thù.\r\nBởi vì IQ thấp là khoảng cách xa nhất trên thế giới này, người khác\r\nlàm chuyện ác ý, bạn làm theo nghĩa là tự kéo mình xuống cùng\r\nđẳng cấp với kẻ đó. Khi có người gây khó dễ với bạn, xin hãy tránh\r\nxa kẻ tiểu nhân đó, giữ tâm trạng bình tĩnh, an nhiên. Đừng tức giận,\r\ncàng không cần phải ghi nhớ. Cách tàn nhẫn nhất để đối phó với\r\nmột người không phải là cho anh ta một bài học, mà là xoá bỏ anh\r\nta khỏi trí nhớ.'),
(125, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Càng đứng trước vực thẳm cuộc đời chúng ta càng nhìn rõ được\r\nbản chất của một người. Kết quả tồi tệ nhất không phải là thất bại,\r\ncó người chờ đợi thất bại, có người mắng chửi thất bại, lại có người\r\ncố gắng hết sức mà vẫn thất bại. Trong hoàn cảnh như vậy, tâm thái\r\nchính là ánh sáng mà mọi người tỏa ra, chán nản hay ngoan cường,\r\nđó đều phụ thuộc vào chính bản thân bạn.\r\n'),
(126, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Người nên rời bỏ sớm muộn cũng sẽ ra đi, thà rằng đợi khi nổi\r\ngió liền buông tay còn hơn cứ lãng phí sức lực níu kéo trong vô vọng.'),
(127, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu có một ngày em không tìm thấy tôi, dù thế nào cũng đừng\r\nbuồn bã, chẳng phải tôi không còn yêu em nữa hay em đã bỏ lỡ mất\r\ntôi, mà là cuối cùng tôi cũng có đủ dũng khí để rời xa em. Nhưng xin\r\nem hãy ghi nhớ rằng, trước đây tôi thực sự từng ngốc nghếch chờ\r\nđợi em.\r\n'),
(128, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Từ bỏ sự xốc nổi, lười biếng và hứng thú nhất thời, hãy để đầu\r\nóc thoải mái, tập trung làm những việc mà bạn nên làm.'),
(129, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Có thể kiểm soát được cảm xúc của bản thân thì bạn là người\r\ntao nhã, có thể khống chế được tâm tình của chính mình thì bạn là\r\nngười thành công.\r\n'),
(130, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Khi ngủ, đừng phụ chiếc giường; lúc bận, đừng phụ con đường;\r\nkhi yêu, đừng phụ đối phương; lúc đói, đừng phụ dạ dày.\r\n'),
(131, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Thành công lớn nhất của đời người chính là rèn luyện tốt tâm\r\ntính, khiến bản thân lúc nào cũng vui vẻ. Tâm sự giống như chiếc\r\nthùng đầy nước, chỉ một lỗ thủng nhỏ cũng đủ tràn hết ra ngoài. Đau\r\ncũng đau rồi, nó sẽ khiến bạn hiểu rõ được bản thân và nhìn thấu\r\ntrái tim người khác. Thất bại cũng thất bại rồi, đứng lên phủi sạch\r\nbụi đi, có mấy ai quan tâm bạn từng vấp ngã ra sao chứ?'),
(132, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tao nhã chính là bông hoa rực rỡ lặng lẽ bung nở từ trong sâu\r\nthẳm cõi lòng.'),
(133, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu bạn không vui, hãy ra ngoài đi dạo. Thế giới rộng lớn là vậy,\r\nphong cảnh rất đẹp, cơ hội vô vàn mà đời người thì ngắn ngủi.\r\nĐừng chỉ biết cuộn mình trốn trong bóng tối!\r\n'),
(134, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tâm trạng giống như quần áo, bẩn rồi thì mang đi giặt, ánh mặt\r\ntrời tự nhiên sẽ soi rọi, hong khô. Ánh nắng đẹp là thế, hà tất phải tự\r\nmình chuốc lấy phiền não? Mỗi ngày hãy sống thật tốt, cả vạn tương\r\nlai tươi đẹp cũng chẳng thể sánh bằng một hiện tại ấm áp, an lành.'),
(135, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu bạn bị người khác ác ý công kích, hãy nhớ rằng bọn họ làm\r\nvậy là để có được cảm giác bản thân rất quan trọng, mà điều này\r\nđồng nghĩa với việc bạn đã gặt hái được thành công và đáng để\r\nngười khác phải chú ý. Rất nhiều người, khi mắng chửi ai đó xuất\r\nsắc hơn mình đều sẽ cảm thấy vô cùng mãn nguyện. Hãy xem\r\nnhững lời phê bình không công bằng đó như một sự thừa nhận\r\ndành cho bạn, bởi chẳng ai lại tỏ ra hằn học với một người yếu kém\r\ncả.\r\n'),
(136, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Mong rằng bạn mãi lương thiện dù cho thế giới này lạnh lùng\r\nnhường nào. Tin tưởng vào con người, tình cảm và sự tồn tại của\r\ncái thiện. Hãy cởi mở, kiên trì, sống thật ấm áp và xinh đẹp.\r\n'),
(137, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Vật ngoài thân dù tuyệt vời ra sao, người khác dù tốt đẹp nhường\r\nnào cũng chẳng liên quan gì đến bạn, bạn chính là bạn, chỉ cần chải\r\nchuốt bộ lông của bản thân và bay đến nơi bạn muốn. Thế giới có\r\nlạnh nhạt đến đâu, người khác có giả tạo thế nào cũng chẳng liên\r\nquan tới bạn, bạn vẫn là bạn, nếu coi cuộc sống như một kiểu khó\r\nkhăn, bạn cuối cùng sẽ thua, nếu coi nó như một sự mài giũa, bạn\r\nsẽ luôn giành chiến thắng.'),
(138, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Rất nhiều phiền não đều bắt nguồn từ việc bạn không đủ nhẫn\r\ntâm. Làm gì cũng chú ý đến cảm nhận của người khác, bạn luôn\r\nnghĩ cho người khác, vậy ai nghĩ cho bạn?'),
(139, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chẳng có gì đáng để oán trách cả, mỗi bước đi hôm nay đều là\r\nhệ quả của những lần lựa chọn trước kia.\r\n'),
(140, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cho dù không vui cũng đừng chau mày, vì bạn vĩnh viễn không\r\nbiết được ai sẽ phải lòng nụ cười của mình đâu.\r\n'),
(141, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Ngủ là một kiểu giải thoát, ngủ say rồi sẽ không buồn không tức,\r\nkhông phiền não, không cô đơn, là thời gian tạm mất trí nhớ mà\r\nThượng đế ban tặng bạn. Mong rằng giấc mộng đẹp sẽ chữa lành\r\nnỗi đau của bạn.\r\n');
INSERT INTO `quote` (`id`, `title`, `quote`) VALUES
(142, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Bạn làm đúng có người đố kỵ, làm sai bị chê cười, làm ít bị khinh\r\nthường, làm nhiều bị trách móc, lạnh lùng xa cách là kiêu ngạo, hoà\r\nnhã dễ gần là ngu ngốc. Bạn sống, họ rủa bạn mau chết, chết rồi, họ\r\ncòn muốn đạp một phát lên bia mộ bạn. Những kẻ tiêu cực như vậy\r\nở đâu cũng có. Cách tốt nhất để đối phó chính là: Tập trung đi con\r\nđường của chính mình, mặc kệ thiên hạ !\r\n'),
(143, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Làm một người mạnh mẽ, bạn hãy thản nhiên đối mặt, dũng cảm\r\ntrải nghiệm đủ mọi mùi vị ngọt bùi đắng cay, quên đi những việc và\r\nngười đã nhạt nhoà. Thứ không có được thì biết cách buông bỏ; thứ\r\nkhông thể chạm tới thì học cách chôn vùi. Thay vì chìm đắm trong\r\nquá khứ, hãy gột rửa tâm tình dưới ánh mặt trời, vứt bỏ hết những\r\nđau thương và cô quạnh, thoát khỏi nỗi bất lực và thờ ơ, không còn\r\nsợ hãi vô định, cũng không còn hoang mang mơ hồ.'),
(144, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Khi nói chuyện với người khác, bạn phải học được cách bình tĩnh\r\nhoà nhã. Cho dù có tức đến đâu cũng không nên quát tháo ầm ĩ, bởi\r\nvì tiếng gào thét của bạn, ngoài việc làm loạn tâm trí bản thân ra thì\r\nchẳng thể khiến mọi chuyện tốt hơn. Nó không làm người khác\r\nkhuất phục mà ngược lại sẽ khiến bạn mất đi lý trí trong lúc điên\r\nkhùng.'),
(145, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Cùng một chuyện, nghĩ thông suốt là thiên đường còn bế tắc\r\nchính là địa ngục. Đã sống thì phải sống cho tốt. Có những lúc\r\nchúng ta quá nhỏ nhen, quá để ý đến những chuyện lặt vặt xung quanh nên thành ra vì nhỏ mất lớn, được không bù nổi mất. Trong\r\nrất nhiều chuyện, có phiền phức và mệt mỏi hay không hoàn toàn\r\nphụ thuộc vào cách chúng ta nhìn nhận và xử lí nó. Đừng lúc nào\r\ncũng coi tất cả là chuyện lớn, đừng để tâm tới mấy chuyện tầm\r\nphào, đừng quá coi trọng thể diện, đừng nhỏ nhen hẹp hòi. Không\r\nđể tâm chính là một kiểu rộng lượng và cởi mở.\r\n\r\n'),
(146, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Trái tim chật hẹp, chuyện nhỏ cũng thành to; tấm lòng rộng lớn,\r\nchuyện to đến mấy cũng hoá nhỏ. Xem nhẹ thế sự đổi dời, nội tâm\r\nmới an nhiên tự tại.\r\n'),
(147, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Nếu mỗi ngày bạn đều ăn tối một mình, trời mưa không có ai đưa\r\nô, có chuyện vui chẳng biết chia sẻ cùng ai, gặp chuyện buồn cũng\r\nkhông có ai để dốc bầu tâm sự, đi giữa dòng người tấp nập, nhìn\r\nngười qua kẻ lại nhưng chẳng ai quan tâm tới niềm vui nỗi buồn của\r\nbạn, cảm xúc của bạn không thể nói thành lời, mọi chuyện đều chất\r\nchứa trong lòng, tình nguyện để bản thân dần biến mất dưới ánh\r\nđèn đường soi rọi giữa đêm thâu, đó chính là nỗi cô đơn tột cùng\r\nnhất.'),
(148, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Đừng quá quan tâm tới một số người, quá để ý đến một vài việc,\r\ncứ thuận theo tự nhiên, dùng tâm thái tốt nhất để đối mặt. Trong tính\r\ncách của mỗi người đều có vài điểm khiến người khác không cách\r\nnào chấp nhận được, người hoàn hảo nhất cũng thế, cho nên đừng\r\nyêu cầu khắt khe với người khác, cũng đừng trách cứ chính mình.\r\n'),
(149, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Người càng sợ mất thể diện sẽ càng quan tâm đến cái nhìn của\r\nngười khác và xem nhẹ cảm nhận của bản thân, rốt cuộc họ chỉ\r\ngiống như con rối iều mạng sống vì ánh nhìn của thiên hạ, cuối cùng\r\ntừng bước một giam cầm cái tôi của chính mình vào trong bóng tối\r\nthăm thẳm.\r\n'),
(150, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Khi được người khác tâng bốc, hãy âm thầm vui vẻ, nhưng đừng\r\ncoi là thật, bởi tám, chín phần trong đó là để lừa gạt bạn mà thôi; khi\r\nbị người khác phê bình, bạn chỉ nên buồn một chút, nhưng cũng\r\nđừng tức giận, vì tám, chín phần của những câu nói ấy lại là sự thật.'),
(151, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Người xin lỗi trước là người dũng cảm nhất, người tha thứ trước\r\nlà người kiên cường nhất, người buông bỏ trước là người hạnh\r\nphúc nhất.\r\n'),
(152, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Chớ nên kỳ vọng, đừng quá ảo tưởng, cũng chẳng cần cưỡng\r\nép, hãy cứ thuận theo tự nhiên, việc đã được định trước thì nhất\r\nđịnh sẽ xảy ra. Tâm an yên chính là trạng thái đẹp nhất của cuộc\r\nsống.\r\n'),
(153, '999 LÁ THƯ GỬI CHO CHÍNH MÌNH', 'Tâm trạng tốt mới có được trạng thái tốt; khống chế được tâm\r\ntrạng của bản thân, cuộc sống mới an lành. Mặc dù tâm trạng không\r\nphải tất cả nhưng nó lại có thể ảnh hưởng đến toàn bộ cuộc sống\r\ncủa chúng ta. Tâm trạng tồi tệ sẽ hạ thấp hình tượng, làm giảm\r\nnăng lực, đảo loạn suy nghĩ và ảnh hưởng đến lòng tin của bản\r\nthân. Tâm trạng tốt, mọi thứ đều tốt; tâm trạng không tốt, mọi thứ\r\nđều hỗn loạn. Đôi khi không phải chúng ta thua người khác mà là\r\nthua tâm trạng của chính mình.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `girls`
--
ALTER TABLE `girls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `girl_id` (`girl_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `girl_id` (`girl_id`) USING BTREE;

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `girls`
--
ALTER TABLE `girls`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`girl_id`) REFERENCES `girls` (`girl_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
