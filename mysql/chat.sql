-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2018 at 05:01 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `id` int(22) NOT NULL,
  `from_id` varchar(200) NOT NULL,
  `to_id` varchar(200) NOT NULL,
  `timestamp` varchar(200) NOT NULL,
  `con_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`id`, `from_id`, `to_id`, `timestamp`, `con_id`) VALUES
(43, '6', '5', '1516207571', 0),
(44, '6', '5', '1516207584', 0),
(45, '5', '6', '1516207835', 0),
(46, '5', '6', '1516207878', 0),
(47, '7', '5', '1516282078', 1),
(48, '7', '6', '1516282088', 2),
(49, '8', '5', '1516282152', 3),
(50, '8', '6', '1516282165', 4),
(51, '8', '7', '1516282172', 5),
(52, '9', '8', '1516286228', 6),
(53, '8', '6', '1516297409', 4),
(54, '11', '10', '1516297912', 7),
(55, '11', '10', '1516297924', 7),
(56, '10', '11', '1516297950', 7),
(57, '10', '11', '1516297967', 7),
(58, '11', '10', '1516297979', 7),
(59, '10', '11', '1516298550', 7),
(60, '11', '10', '1516298704', 7),
(61, '12', '11', '1516333764', 8),
(62, '12', '10', '1516333781', 9),
(63, '12', '10', '1516333827', 9),
(64, '10', '12', '1516333845', 9),
(65, '10', '12', '1516333859', 9),
(66, '10', '12', '1516333875', 9),
(67, '12', '10', '1516333894', 9);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_reply`
--

CREATE TABLE `conversation_reply` (
  `id` int(255) NOT NULL,
  `reply` text NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `timestamp` varchar(500) NOT NULL,
  `con_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversation_reply`
--

INSERT INTO `conversation_reply` (`id`, `reply`, `from_id`, `to_id`, `timestamp`, `con_id`) VALUES
(43, 'hihihihihihihihii', 6, 5, '1516207571', 0),
(44, 'esd', 6, 5, '1516207584', 0),
(45, 'hgkhgc', 5, 6, '1516207835', 0),
(46, 'fcgcvy', 5, 6, '1516207878', 0),
(47, 'hello', 7, 5, '1516282078', 1),
(48, 'hello', 7, 6, '1516282088', 2),
(49, 'hello', 8, 5, '1516282152', 3),
(50, 'hi ', 8, 6, '1516282165', 4),
(51, 'heelooo', 8, 7, '1516282172', 5),
(52, 'hi gaurang', 9, 8, '1516286228', 6),
(53, 'hi ankit', 8, 6, '1516297409', 4),
(54, 'hiii', 11, 10, '1516297912', 7),
(55, 'hiii\n', 11, 10, '1516297924', 7),
(56, 'hi', 10, 11, '1516297950', 7),
(57, 'kaisa hai tu ?', 10, 11, '1516297967', 7),
(58, 'Sab badiya', 11, 10, '1516297979', 7),
(59, 'hi shivam again', 10, 11, '1516298550', 7),
(60, 'Hlw...Sir', 11, 10, '1516298704', 7),
(61, 'hello', 12, 11, '1516333764', 8),
(62, 'hello ansul', 12, 10, '1516333781', 9),
(63, 'How are you ?', 12, 10, '1516333827', 9),
(64, 'Hi Ankit', 10, 12, '1516333845', 9),
(65, 'I am absolutely fine', 10, 12, '1516333859', 9),
(66, 'u tell what''s up ?', 10, 12, '1516333875', 9),
(67, 'Nothing much..', 12, 10, '1516333894', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(22) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `p_photo` varchar(200) NOT NULL,
  `timestamp` int(255) NOT NULL,
  `online` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `p_photo`, `timestamp`, `online`) VALUES
(10, 'ansh2107', '123', '/uploads/151629781892313527778.jpg', 1516297818, 'Y'),
(11, 'shivam', 'shivam123@', '/uploads/1516297885915woman.png', 1516297885, 'N'),
(12, 'Ankit', '123', '/uploads/1516333674460download.png', 1516333674, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `conversation_reply`
--
ALTER TABLE `conversation_reply`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
