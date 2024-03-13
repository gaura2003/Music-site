-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2024 at 05:55 AM
-- Server version: 5.7.34
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artist_database`
--
CREATE DATABASE IF NOT EXISTS `artist_database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `artist_database`;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `bio`, `image`) VALUES
(29, 'Kishore Kumar ', 'He is a singer ', 'uploads/kishore kumar.jpg'),
(27, 'Arman malik', 'Arman Malik is a singer ', 'uploads/Arman Malik.webp'),
(25, 'Sonu Nigam ', 'He is a singer ', 'uploads/sonu nigam.jpg'),
(23, 'Lata Mangeshkar ', 'Singer ', 'uploads/lata mangeskar.jpg'),
(22, 'Kumar Sanu ', 'Singer ', 'uploads/kumar sanu.jpg'),
(28, 'Honey Singh ', 'Singer', 'uploads/yo-yo-honey-singh-1.jpg'),
(20, 'Kailash Khair ', 'Singer ', 'uploads/kailash kher.webp'),
(19, 'Daler Mehndi ', 'Singer ', 'uploads/daler-mehndi-1.jpg'),
(18, 'Arijit Singh ', 'Singer ', 'uploads/arjit singh.webp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `music_database`
--
CREATE DATABASE IF NOT EXISTS `music_database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `music_database`;

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

CREATE TABLE `music` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `duration_seconds` int(11) DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `title`, `artist`, `album`, `genre`, `release_year`, `duration_seconds`, `file_path`, `image_path`) VALUES
(4, 'Roll no 21 Theme song ', 'Avinash Anand ', 'Roll no 21', 'Rock', 2010, 63, 'Uploaded musics/Roll no 21 first song hindi (online-audio-converter.com).mp3', 'Uploaded images/download.jpeg'),
(3, 'Ben 10 - Theme song ', 'Sunidhi Chauhan ', 'Ben 10', 'Rock', 2005, 67, 'Uploaded musics/Ben 10 ringtone .mp3', 'Uploaded images/images.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music`
--
ALTER TABLE `music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Table structure for table `Registration`
--

CREATE TABLE `Registration` (
  `Id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(225) NOT NULL,
  `reg_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Registration`
--

INSERT INTO `Registration` (`Id`, `name`, `email`, `phone`, `password`, `reg_date`) VALUES
(9, 'Code Wale', 'codewaleguruji@gmail.com', '+917440305830', '$2y$10$mtkEFiDlnzzf59nXPJvifOL3ZJsdKd9vau4Ibt6s.ponoQN3qA3Ca', '2024-03-05 17:28:36.000000');

-- --------------------------------------------------------

--
-- Table structure for table `usersdata`
--

CREATE TABLE `usersdata` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usersdata`
--

INSERT INTO `usersdata` (`id`, `username`, `email`, `reg_date`) VALUES
(1, 'Guru ', 'guru1@gmail.com', '2024-03-01 02:40:40'),
(2, 'Guru roy', 'guru2@gmail.com', '2024-03-01 03:20:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usersdata`
--
ALTER TABLE `usersdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `usersdata`
--
ALTER TABLE `usersdata`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
