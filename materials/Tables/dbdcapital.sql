-- phpMyAdmin SQL Dump
-- version 4.3.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 24, 2015 at 02:18 AM
-- Server version: 5.5.44-37.3
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbdcapital`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE IF NOT EXISTS `Account` (
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Commerce`
--

CREATE TABLE IF NOT EXISTS `Commerce` (
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE IF NOT EXISTS `Test` (
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(255) NOT NULL,
  `LastName` char(255) NOT NULL,
  `FirstName` char(255) NOT NULL,
  `Email` char(255) NOT NULL,
  `PasswordHash` binary(60) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `IdenticonURL` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `LastName`, `FirstName`, `Email`, `PasswordHash`, `Address`, `IdenticonURL`) VALUES
(1, 'Fang', 'Yinan', 'yinanfang@gmail.com', 0x24326124313024714e3475656546523631624130486d5850323153462e7575306b314c313237312f4e4c6f4554674746576f56784d416f7a694a6f43, 'blahblah', ''),
(2, 'Fang', 'Xihua', 'test@gmail.com', 0x24326124313024714e3475656546523631624130486d5850323153462e7575306b314c313237312f4e4c6f4554674746576f56784d416f7a694a6f43, 'slldlkjs', ''),
(3, '', '', 'yinanfang@gmasil.com', 0x2432612431302458496d6439316457754c77467638326a4b57634533657073716c624c696855783866626b6274424d4a72336549394752414e663179, '', ''),
(6, '', '', 'yinanfang@gmassil.com', 0x243261243130247447497048462e752f453961466f5367524c31614a4f3671437a6178495573506d6e73373155694a57576457324a52583274656f71, '', ''),
(7, '', '', 'yinanfang@gmasssil.com', 0x24326124313024526a57564c505a6e672e66444b595555714345354f4f566c6a4a7172304c6973444352547a716941614877764c54505675544e7871, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `z_yooo_Transaction`
--

CREATE TABLE IF NOT EXISTS `z_yooo_Transaction` (
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `id_2` (`id`), ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
