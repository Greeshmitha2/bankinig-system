-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 03:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Greeshmitha', 'Lawliet', 350, '2021-07-11 18:58:27'),
(2, 'Greeshmitha', 'Lawliet', 500, '2021-07-11 19:00:31'),
(3, 'Lawliet', 'Yuno', 5000, '2021-07-11 19:01:32'),
(4, 'Greeshmitha', 'Yuno', 200, '2021-07-11 19:06:15'),
(5, 'Kaori', 'Lawliet', 700, '2021-07-11 19:28:24'),
(6, 'Kaori', 'Lawliet', 850, '2021-07-11 19:30:31'),
(7, 'Kaori', 'Lawliet', 1000, '2021-07-11 19:31:22');
(8, 'Kouse', 'Asta', 2500, '2021-07-11 07:39:58'),
(9, 'Violet', 'Greeshmitha', 1000, '2021-07-11 09:37:08'),
(10, 'Greeshmitha', 'Asta', 200, '2021-07-11 11:52:18');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(2351, 'Greeshmitha', 'gree@gmail.com', 50000),
(1247, 'Lawliet', 'llaw@gmail.com', 12000),
(3219, 'Kaori', 'kaochan@gmail.com', 23000),
(5432, 'Miyazono', 'miya@gmail.com', 46000),
(9687, 'Kouse', 'kouse@gmail.com', 18000),
(4219, 'Violet', 'vio@gmail.com', 36500),
(2169,  'Shikamaru', 'shika@gmail.com', 48500),
(1105, 'Asta', 'clover5@gmail.com', 49500),
(2111, 'Yuno', 'clover4@gmail.com', 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;