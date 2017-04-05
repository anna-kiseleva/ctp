-- phpMyAdmin SQL Dump
-- version 4.4.15.8
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2017 at 11:06 PM
-- Server version: 5.6.31
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctp`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `c_id` int(11) NOT NULL,
  `text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_ts` int(13) NOT NULL,
  `label` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`c_id`, `text`, `c_ts`, `label`, `m_id`) VALUES
(1, 'fgakha', 2147483647, '', 13),
(2, 'aryththt', 2147483647, '', 14),
(3, 'atyatry', 2147483647, '', 15),
(4, 'xhjghj', 2147483647, '', 16),
(5, 'haha', 2147483647, '', 17),
(6, 'ghjghjkdghkjkd', 1485101893, '', 18),
(7, 'ghghghghg', 1485527520, '', 19),
(8, '', 1485529241, '', 20),
(9, 'hggdk', 1485529246, '', 21),
(10, 'fgakha', 2147483647, '', 22),
(11, 'djgdj', 1485536401, '', 22),
(12, 'fhjxkjlchn df jghnjgfhjmfhg hjmh j ghfnjghgds f asdljdlgj dsjgfdkfgdskgj kldrgdsgdsjg dj lsdjg djglggf dlgkld gldjg g kglsdgffskgt lsjgklf gfjgkljfs lghjflgkjh fgjhl gfklfj ghkfshj fjhfgkjhfklh flkh flgjfjh/fjhlflgh jlfhlkfjkhjfklhj dlgjh fkj', 1485614086, '', 20),
(13, '', 1485614205, '', 19),
(14, '', 1485614209, '', 19),
(15, '', 1485614210, '', 19),
(16, '', 1485614233, '', 22),
(17, 'lkj', 1485614299, '', 22),
(18, 'pl', 1485614356, '', 22),
(19, 'ko', 1485614391, '', 22),
(20, 'Ghjvf bjgff ', 1485615849, '', 22),
(21, 'fkgn gj ', 1485617741, '', 22),
(22, 'gzhfjkhjk', 1485617893, '', 22),
(23, 'yuikyui', 1485617955, '', 18),
(24, 'On the 3rd Jan I had an accident on junction X Rd and Y street. Blue Volvo S60 scratched Ford. If you happen to have a dash cam gootage, please share it', 1485622263, '', 22),
(25, '', 1485622733, '', 22),
(26, 'zhg aj aj grlg dfgdjaldfgj aj dfldfjg l/fglkgl alk/j glkdfjg aljglja ldfgj ldfjglalgf alkagj lgldj g/dfg/ adgf/d/df/g afg l/kg lk/dfalg jfg algald', 1485622814, '', 22),
(27, 'On the 21st of Jan 2017 at 13:34 I got involved in incident at Station Rd near the leisure centre. A dark green Ford Fiesta scratched black BMW X5. If anyone has a dash cam footage of the incident and can share it, I would be extremely grateful! Thanks. ', 1485728919, '', 22),
(28, 'Yes, I saw that and saved just in case. I''m sending it in a minute', 1485729086, '', 22),
(29, 'On the 21st of Jan 2017 at 13:34 I got involved in incident at Station Rd near the leisure centre. A dark green Ford Fiesta scratched black BMW X5. If anyone has a dash cam footage of the incident and can share it, I would be extremely grateful! Thanks. ', 1485729156, '', 22),
(30, 'Yes, I saw that and saved the footage just in case. I''m sending it in a minute', 1485729230, '', 22),
(31, '', 1485729661, '', 22),
(32, 'dfghfgh', 1485729672, '', 22),
(33, '', 1485729686, '', 22),
(34, 'zdgfhsf', 1485729725, '', 22),
(35, '', 1485729742, '', 22),
(36, 'On the 21st of Jan 2017 at 13:34 I got involved in incident at Station Rd near the leisure centre. A dark green Ford Fiesta scratched black BMW X5. If anyone has a dash cam footage of the incident and can share it, I would be extremely grateful! Thanks.', 1485730255, '', 22),
(37, 'On the 26', 1485749122, '', 22),
(38, 'On the 21st of Jan 2017 at 13:34 I got involved in incident at Station Rd near the leisure centre. A dark green Ford Fiesta scratched black BMW X5. If anyone has a dash cam footage of the incident and can share it, I would be extremely grateful! Thanks.', 1485751911, '', 22),
(39, 'jdjj', 1486826923, '', 22),
(40, 'vgfhjghjgjg', 1487210934, '', 18),
(41, 'hjkl;', 1487211481, '', 18),
(42, 'ghkjd sth yj yj', 1487290420, '', 32),
(43, 'kgfgffhfkk', 1487300878, '', 107),
(44, 'unity3d_adding_environment_skybox_effect.doc', 1489282054, 'video', 0),
(45, 'unity3d_adding_environment_water_effects_(1).doc', 1489283622, 'video', 0),
(46, 'unity3d_adding_environment_water_effects.doc', 1489283682, 'video', 0),
(47, 'unity3d_adding_environment_water_effects_(1).doc', 1489283906, 'video', 0),
(48, 'unity3d_adding_environment_skybox_effect.doc', 1489284246, 'video', 0),
(49, 'instantiating_world_objects_(1).docx', 1489284437, 'video', 0),
(50, 'unity3d_adding_environment_skybox_effect.doc', 1489284644, 'video', 0),
(51, 'prototyping.pptx', 1489284730, 'video', 0),
(52, 'test.txt', 1489285078, 'video', 0),
(53, 'test.txt', 1489285110, 'video', 0),
(54, 'test.txt', 1489285194, 'video', 0),
(55, 'test.txt', 1489285322, 'video', 0),
(56, 'test.txt', 1489285389, 'video', 0),
(57, 'test.txt', 1489285417, 'video', 94),
(58, 'worksheet_nine.docx', 1489286908, 'video', 0),
(59, 'worksheet_nine.docx', 1489286993, 'video', 110),
(60, 'unity_3d_for_android_tutorial_three_accelerometer_example.doc', 1489321085, 'video', 114),
(61, 'unity_3d_for_android_tutorial_three_accelerometer_example.doc', 1489321197, 'video', 114),
(62, 'fgadgj fgaljg dagj;', 1490567407, 'post', 63),
(63, 'bnghjf djtj yyrut', 1490568121, 'post', 54),
(64, 'ththth yjyjyj', 1490568735, 'post', 54);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
