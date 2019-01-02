-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 04:56 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `country` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postalCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `country`, `city`, `postalCode`) VALUES
(1, 'Nawaraj Shah', 'Nepal', 'Nepalgunj', 21900),
(2, 'Ashish Shah', 'Nepal', 'KTM', 44600),
(3, 'Steve Jobs', 'United States', 'California', 44253),
(4, 'Alfreds Futterkiste', 'Germany', 'Berlin', 12209),
(5, 'Antonio Moreno Taquería', 'Mexico', 'México D.F.', 5023),
(6, 'Berglunds snabbköp', 'Sweden', 'Luleå', 2222),
(7, 'Blauer See Delikatessen', 'Germany', 'Mannheim', 68306),
(8, 'Blondel père et fils', 'France', 'Strasbourg', 67000),
(9, 'Chop-suey Chinese', 'Swaziland', 'Bern', 5432),
(10, 'Consolidated Holdings', 'United Kingdom', 'London', 52066),
(11, 'Du monde entier', 'France', 'Nantes', 44000),
(12, 'Ann Devon', 'United Kingdom', 'London', 5432),
(13, 'Roland Mendel', 'Austria', 'Graz', 8010),
(14, 'Diego Roel', 'Spain', 'Madrid', 28034),
(15, 'Paolo Accorti', 'Italy', 'Torino', 10100),
(16, 'Lino Rodriguez', 'Portugal', 'Lisboa', 10100),
(17, 'André Fonseca', 'Brazil', 'Campinas', 4876),
(18, 'Howard Snyder', 'United States', 'Eugene', 97403),
(19, 'Carlos Hernández', 'Venezuela', 'San Cristóbal', 5022),
(20, 'Yoshi Latimer', 'United States', 'Elgin', 97827),
(21, 'Yoshi Tannamuri', 'Canada', 'Vancouver', 1900),
(22, 'Carlos González', 'Venezuela', 'Barquisimeto', 3508),
(23, 'Felipe Izquierdo', 'Venezuela', 'I. de Margarita', 4980),
(24, 'Giovanni Rovelli', 'Italy', 'Bergamo', 24100),
(25, 'Catherine Dewey', 'Belgium', 'Bruxelles', 1180),
(26, 'Jean Fresnière', 'Canada', 'Montréal', 8585),
(27, 'Isabel de Castro', 'Portugal', 'Lisboa', 1756),
(28, 'Shruti Rana Magar', 'Nepal', 'Pokhara', 33700);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `productName` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `productName`, `price`, `customerId`) VALUES
(1, '3D Printers', 499, 1),
(2, 'Cosmetics brushes', 26, 1),
(3, 'Baby bottle nipples', 6, 2),
(6, 'Air Filter', 35, 3),
(7, 'Computer mouse', 6, 4),
(8, 'Cosmetics brushes', 26, 4),
(9, 'Writing brushes', 10, 5),
(10, 'Kindle', 119, 5),
(11, 'Magnets', 12, 5),
(12, 'Dog food', 40, 6),
(13, 'Green tea', 15, 7),
(14, 'Coconut oil', 9, 7),
(15, 'Flash drive', 39, 8),
(16, 'Chewing gum', 8, 8),
(17, 'Nursing pumps', 11, 9),
(18, 'Arrows for archery', 50, 12),
(19, 'Roller skates', 32, 13),
(20, 'Baby carriages', 80, 14),
(21, 'Ball point pens', 2, 14),
(22, 'Air filters for Motor Vehicles', 1, 15),
(23, 'Computer hard disc', 35, 16),
(24, 'Amplifiers', 55, 18),
(25, 'Cheese spread', 3, 20),
(26, 'Camera', 563, 20),
(27, 'Air Purifier', 89, 20),
(28, 'Black tea', 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
