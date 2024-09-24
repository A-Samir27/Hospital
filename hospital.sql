-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 09:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `name` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `doctor` text NOT NULL,
  `date` date NOT NULL,
  `time` text NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`name`, `age`, `contact`, `gender`, `doctor`, `date`, `time`, `status`) VALUES
('Pavan pankaj kulkarni', '20', '12345676543', 'male', 'Dr. XYZ', '2002-12-14', 'morning', ''),
('Pavan pankaj kulkarni', '20', '12345676543', 'male', 'Dr. XYZ', '2002-12-14', 'morning', ''),
('Pavan pankaj kulkarni', '22', '12345676543', 'male', 'Dr. XYZ', '2002-12-14', 'afternoon', ''),
('Pavan pankaj kulkarni', '25', '12345676543', 'male', 'Dr. GHI', '2024-08-12', 'evening', ''),
('shivam', '70', '987665678', 'female', 'Dr. ABC', '2120-12-14', 'evening', ''),
('', '', '', '', '', '0000-00-00', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
