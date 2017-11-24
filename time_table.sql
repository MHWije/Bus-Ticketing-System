-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2017 at 09:58 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `ID` int(11) NOT NULL,
  `year_week` varchar(50) NOT NULL,
  `day` varchar(20) NOT NULL,
  `bus_number` varchar(45) DEFAULT NULL,
  `route` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`ID`, `year_week`, `day`, `bus_number`, `route`, `duration`) VALUES
(101, '2017-W47', 'Monday', 'NA-2301', 'Akuressa-Matara ', '07.00 AM-09.00AM'),
(102, '2017-W47', 'Monday', 'NA-7785', 'Colombo-Matara', '10.00 AM-12.00AM '),
(103, '2017-W47', 'Monday', 'NA-0023', 'Kaduwela-Galle', '11.00 AM-09.00AM'),
(114, '2017-W47', 'Monday', 'NA-0235', 'Kataragama-Jafna', '07.00 AM-09.00PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
