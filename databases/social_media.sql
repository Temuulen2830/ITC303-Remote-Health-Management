-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 10:19 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `img_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `img_url`) VALUES
(1, 'test topic 1', 'Test 1. Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt tenetur cumque quam in aperiam excepturi amet est quo architecto blanditiis, odio necessitatibus accusantium facilis obcaecati? Sequi, cupiditate? Temporibus, tenetur reprehenderit? ', ''),
(2, 'test topic 2', 'Test 2.Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt tenetur cumque quam in aperiam excepturi amet est quo architecto blanditiis, odio necessitatibus accusantium facilis obcaecati? Sequi, cupiditate? Temporibus, tenetur reprehenderit? ', ''),
(3, 'test topic 3', 'Test 2.Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt tenetur cumque quam in aperiam excepturi amet est quo architecto blanditiis, odio necessitatibus accusantium facilis obcaecati? Sequi, cupiditate? Temporibus, tenetur reprehenderit? ', ''),
(4, 'test topic 4', 'Test 2.Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt tenetur cumque quam in aperiam excepturi amet est quo architecto blanditiis, odio necessitatibus accusantium facilis obcaecati? Sequi, cupiditate? Temporibus, tenetur reprehenderit? ', ''),
(5, 'test topic 5', 'Test 2.Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt tenetur cumque quam in aperiam excepturi amet est quo architecto blanditiis, odio necessitatibus accusantium facilis obcaecati? Sequi, cupiditate? Temporibus, tenetur reprehenderit? ', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
