-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 02:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(20) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `idProof` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `checkIn` varchar(50) DEFAULT NULL,
  `roomNo` varchar(10) DEFAULT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `roomType` varchar(100) DEFAULT NULL,
  `pricePerDay` int(10) DEFAULT NULL,
  `numberOfDaysStay` int(10) DEFAULT NULL,
  `totalAmount` varchar(100) DEFAULT NULL,
  `checkOut` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobileNumber`, `nationality`, `gender`, `email`, `idProof`, `address`, `checkIn`, `roomNo`, `bed`, `roomType`, `pricePerDay`, `numberOfDaysStay`, `totalAmount`, `checkOut`) VALUES
(1, 'Arif', '01628300275', 'Bangladesh', 'Male', 'arif@gmail.com', 'ID253658974', 'Dhaka', '2021/06/11', '109', 'Single', 'AC', 800, 3, '2400.0', '2021/06/14'),
(2, 'Rafiq Un Nabi', '01625896505', 'Pakistani', 'Male', 'rafiq@gmai.com', 'ID1203658458', 'Peswar, Pakistan', '2021/06/11', '101', 'Single', 'AC', 600, 3, '1800.0', '2021/06/14'),
(3, 'Akas Rahman', '0123456789', 'Bangladeshi', 'Male', 'akas@gmail.com', 'ID210152645', 'Jatrabari, Dhaka', '2021/06/14', '110', 'Double', 'AC', 1250, NULL, NULL, NULL),
(4, 'Rohit', '123456878', 'Bangladeshi', 'Male', 'ro@gmail.com', 'ID254565', 'Dhaka', '2021/06/14', '102', 'Double', 'AC', 900, 1, '900.0', '2021/06/14');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(20) DEFAULT NULL,
  `roomType` varchar(200) DEFAULT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bed`, `price`, `status`) VALUES
('101', 'AC', 'Single', 600, 'Not Booked'),
('102', 'AC', 'Double', 900, 'Not Booked'),
('103', 'Non-AC', 'Single', 400, 'Not Booked'),
('104', 'AC', 'Double', 900, 'Not Booked'),
('105', 'Non-AC', 'Double', 800, 'Not Booked'),
('106', 'AC', 'Triple', 1450, 'Not Booked'),
('107', 'AC', 'Double', 1100, 'Not Booked'),
('108', 'Non-AC', 'Double', 800, 'Not Booked'),
('109', 'AC', 'Single', 800, 'Not Booked'),
('110', 'AC', 'Double', 1250, 'Booked'),
('111', 'Non-AC', 'Double', 850, 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityQuestion` varchar(256) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `securityQuestion`, `answer`, `address`, `status`) VALUES
('Al Hasan', 'alhasan@gmail.com', '123456', 'What is your first cat name?', 'domy', 'Dhanmonddi, Dhaka', 'true'),
('Arif', 'arifhussainmizi@gmail.com', '123456', 'What is your favorite flower?', 'rose', 'jatrabari, Dhaka', 'true'),
('Remond', 'r@gmail.com', '1234', 'What is your first car?', 'Nitol', 'Dhaka', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
