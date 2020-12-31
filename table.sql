-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2020 at 04:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE `table` (
  `Name` text NOT NULL,
  `Email` varchar(1500) NOT NULL,
  `Age` int(3) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Feedback` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Name`, `Email`, `Age`, `Gender`, `Phone`, `Feedback`, `Date`) VALUES
('Sameer', 'Sameer@gmail.com', 19, 'Male', '147852369', 'This is a good value.', '2020-12-06 18:57:42'),
('alisha', 'alisha@gmail.com', 15, 'female', '7894561230', 'Hello', '2020-12-06 19:33:50'),
('alisha', 'ali@gmail.com', 45, 'female', '87459601236', 'Hello, Hi.', '2020-12-06 19:34:38'),
('alisha', 'ali@gmail.com', 45, 'female', '87459601236', 'Hello, Hi.', '2020-12-06 19:42:26'),
('gauri', 'gauri@edu.in', 15, 'female', '84500021581', 'Good Evening.', '2020-12-06 19:43:11'),
('gauri', 'gauri@edu.in', 15, 'female', '84500021581', 'Good Evening.', '2020-12-06 19:43:23'),
('gauri', 'gauri@edu.in', 15, 'female', '84500021581', 'Good Evening.', '2020-12-06 19:45:26'),
('Rohan', 'rohan@edu.in', 20, 'male', '8989898989', 'Hi there.', '2020-12-06 19:47:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
