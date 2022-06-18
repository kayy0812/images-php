-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 05:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `images-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `groupId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `groupId`) VALUES
(1, 'Chung', 746598),
(9, 'Cosplayer', 748652);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) NOT NULL,
  `groupId` int(10) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `groupId`, `url`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `girl_id` (`groupId`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `girl_id` (`groupId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
