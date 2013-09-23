-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2013 at 01:36 AM
-- Server version: 5.6.13
-- PHP Version: 5.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `placementupdates`
--

-- --------------------------------------------------------

--
-- Table structure for table `companydetails`
--

CREATE TABLE IF NOT EXISTS `companydetails` (
  `code` varchar(5) NOT NULL,
  `visitdate` date DEFAULT NULL,
  `interviewsdate` date DEFAULT NULL,
  `deadline` date NOT NULL,
  `mintenth` varchar(3) DEFAULT NULL,
  `mintwelth` varchar(3) DEFAULT NULL,
  `mindiploma` varchar(3) DEFAULT NULL,
  `mincgpa` float(2,2) DEFAULT NULL,
  `maxbacklogs` int(2) DEFAULT NULL,
  `ctc` varchar(10) DEFAULT NULL,
  `procedure` text,
  `documents` text,
  `others` text,
  PRIMARY KEY (`code`),
  KEY `visitdate` (`visitdate`,`deadline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE IF NOT EXISTS `studentdetails` (
  `usn` varchar(10) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(13) NOT NULL,
  `tenth` varchar(6) NOT NULL,
  `twelth` varchar(6) DEFAULT NULL,
  `diploma` varchar(6) DEFAULT NULL,
  `sem1` float(2,2) DEFAULT NULL,
  `sem2` float(2,2) DEFAULT NULL,
  `sem3` float(2,2) NOT NULL,
  `sem4` float(2,2) NOT NULL,
  `sem5` float(2,2) NOT NULL,
  `sem6` float(2,2) NOT NULL,
  `sem7` float(2,2) NOT NULL,
  `sem8` float(2,2) NOT NULL,
  `cgpa` float(2,2) NOT NULL,
  `backlogs` int(11) DEFAULT NULL,
  PRIMARY KEY (`usn`),
  KEY `fullname` (`fullname`,`email`,`contact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'unique user id',
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `creds` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user or admin',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user credentials table' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
         