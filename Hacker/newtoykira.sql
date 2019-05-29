-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 09:40 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toykira`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_news`
--

CREATE TABLE `info_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_short_description` text NOT NULL,
  `news_full_content` text NOT NULL,
  `news_author` varchar(120) NOT NULL,
  `news_published_on` int(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_news`
--

INSERT INTO `info_news` (`news_id`, `news_title`, `news_short_description`, `news_full_content`, `news_author`, `news_published_on`) VALUES
(1, 'New Patch balance!', 'One of the best turn-base RPG game, Summoners War, has release new patch balance', 'In the next month, June, Summoner War will balance the monster skills. While couple monsters is being nerf, many unwanted monster is buffed! Let\'s download and try this new balanced monster soon', 'admin', 15),
(2, 'School director doesn\'t reveal their transcript', 'School director of the famous school near Phayathai Rd doesn\'t reveal his transcript', 'After this director get the position, he has bought many car. Students in this school wonder how can he buy those cars, so they ask the police to reveal that shool director transcript. In the end, this director doesn\'t show his transcript and choose to escape from this situation by quit from the school', 'admin', 10),
(3, 'Theresa May’s End', 'Theresa May is the British Prime Minister. She gives a speech. She talks about her plans. She says that she is going to step down on June 7th.', 'She says that Britain is under stress now. However, there are many good things about Britain. People still can feel good and be optimistic. She says that for her being prime minister is very special.', 'admin', 15),
(4, 'Weather in USA', 'Last Tuesday was the fifth consecutive day of severe weather in the central states of the USA. According to one government agency, people reported more than 130 tornadoes just in five days.', 'The severe storms reportedly dropped more than 7.62 centimetres of rain in parts of Kansas, Missouri and Oklahoma just last Tuesday. Roads in Oklahoma had to close because of the flooding, and in Missouri, two people reportedly died in a vehicular accident last Tuesday.', 'admin', 16),
(5, 'John Wick 4', 'John Wick will continue their franchise with their fourth movie release in 2021', 'After their amazing show, the studio decide to continue their franchise with their fourth movie release in 2021. From this news,John Wick\'s fans are very happy that their love movie is continue.', 'admin', 20);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`) VALUES
(1, 'thanapon.wic@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'toykira', '681b81270a199492a7e811ae4467f24e'),
(2, 'snupy', 'e8207a442ad629374fe301f65979df81'),
(3, 'nutthabal', 'bd0e5a6b34ede6c178fe467851c7a7a3'),
(4, 'wichaguy', '023ab355be5943ba5a989959f330b6ac'),
(5, 'admin', 'a1e8a46697509770a339f7589037ae6a');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
