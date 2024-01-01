-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: sophia
-- Generation Time: Oct 18, 2017 at 05:42 AM
-- Server version: 5.1.35
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chlau`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `emailID` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(20) CHARACTER SET utf8 NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 NOT NULL,
  `date` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `mailbox` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`emailID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`emailID`, `sender`, `title`, `date`, `content`, `mailbox`) VALUES
(1, 'Jim@cs.hku.hk', 'Hello from Toronto', 'Sep 25 2017', 'Hi Alice, I am traveling in Toronto now.', 'inbox'),
(2, 'comp3322@hku.hk', 'Assignment 1 has been posted', 'Oct 1 2017', 'Assignment 1 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(3, 'comp3322@hku.hk', 'Assignment 2 has been posted', 'Oct 1 2017', 'Assignment 2 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(4, 'comp3322@hku.hk', 'Assignment 3 has been posted', 'Oct 1 2017', 'Assignment 3 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(5, 'comp3322@hku.hk', 'Assignment 4 has been posted', 'Oct 1 2017', 'Assignment 4 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(6, 'comp3322@hku.hk', 'Assignment 5 has been posted', 'Oct 1 2017', 'Assignment 5 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(7, 'comp3322@hku.hk', 'Assignment 6 has been posted', 'Oct 1 2017', 'Assignment 6 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(8, 'comp3322@hku.hk', 'Assignment 6.5 has been posted', 'Oct 1 2017', 'Assignment 96 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(9, 'comp3322@hku.hk', 'Assignment 7 has been posted', 'Oct 1 2017', 'Assignment 7 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(10, 'comp3322@hku.hk', 'Assignment 8 has been posted', 'Oct 1 2017', 'Assignment 8 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(11, 'comp3322@hku.hk', 'Assignment 9 has been posted', 'Oct 1 2017', 'Assignment 9 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(12, 'comp3322@hku.hk', 'Assignment 10 has been posted', 'Oct 1 2017', 'Assignment 10 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(13, 'comp3322@hku.hk', 'Assignment 11 has been posted', 'Oct 1 2017', 'Assignment 11 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(14, 'comp3322@hku.hk', 'Assignment 12 has been posted', 'Oct 1 2017', 'Assignment 12 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(15, 'comp3322@hku.hk', 'Assignment 13 has been posted', 'Oct 5 2017', 'Assignment 13 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(16, 'comp3322@hku.hk', 'Assignment 14 has been posted', 'Oct 5 2017', 'Assignment 14 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(17, 'comp3322@hku.hk', 'Assignment 15 has been posted', 'Oct 5 2017', 'Assignment 15 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(18, 'comp3322@hku.hk', 'Assignment 16 has been posted', 'Oct 5 2017', 'Assignment 16 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(19, 'comp3322@hku.hk', 'Assignment 17 has been posted', 'Oct 5 2017', 'Assignment 17 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(20, 'comp3322@hku.hk', 'Assignment 18 has been posted', 'Oct 5 2017', 'Assignment 18 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(21, 'comp3322@hku.hk', 'Assignment 19 has been posted', 'Oct 5 2017', 'Assignment 19 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(22, 'comp3322@hku.hk', 'Assignment 20 has been posted', 'Oct 5 2017', 'Assignment 20 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(23, 'comp3322@hku.hk', 'Assignment 21 has been posted', 'Oct 5 2017', 'Assignment 21 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(24, 'comp3322@hku.hk', 'Assignment 22 has been posted', 'Oct 5 2017', 'Assignment 22 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(25, 'comp3322@hku.hk', 'Assignment 23 has been posted', 'Oct 5 2017', 'Assignment 23 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(26, 'comp3322@hku.hk', 'Assignment 24 has been posted', 'Oct 5 2017', 'Assignment 24 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(27, 'comp3322@hku.hk', 'Assignment 25 has been posted', 'Oct 5 2017', 'Assignment 25 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(28, 'comp3322@hku.hk', 'Assignment 26 has been posted', 'Oct 5 2017', 'Assignment 26 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(29, 'comp3322@hku.hk', 'Assignment 27 has been posted', 'Oct 5 2017', 'Assignment 27 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(30, 'comp3322@hku.hk', 'Assignment 28 has been posted', 'Oct 5 2017', 'Assignment 28 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(31, 'comp3322@hku.hk', 'Assignment 29 has been posted', 'Oct 5 2017', 'Assignment 29 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(32, 'comp3322@hku.hk', 'Assignment 30 has been posted', 'Oct 5 2017', 'Assignment 30 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(33, 'comp3322@hku.hk', 'Assignment 31 has been posted', 'Oct 5 2017', 'Assignment 31 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(34, 'comp3322@hku.hk', 'Assignment 32 has been posted', 'Oct 5 2017', 'Assignment 32 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(35, 'chiholau@connect.hku', 'Too many assignment!', 'Oct 5 2017', 'Do it all! Hurry!', 'trash'),
(36, 'comp3322@hku.hk', 'Assignment 34 has been posted', 'Oct 8 2017', 'Assignment 34 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(37, 'comp3322@hku.hk', 'Assignment 35 has been posted', 'Oct 8 2017', 'Assignment 35 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(38, 'comp3322@hku.hk', 'Assignment 36 has been posted', 'Oct 8 2017', 'Assignment 36 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(39, 'comp3322@hku.hk', 'Assignment 37 has been posted', 'Oct 8 2017', 'Assignment 37 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(40, 'comp3322@hku.hk', 'Assignment 38 has been posted', 'Oct 8 2017', 'Assignment 38 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(41, 'comp3322@hku.hk', 'Assignment 39 has been posted', 'Oct 8 2017', 'Assignment 39 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(42, 'comp3322@hku.hk', 'Assignment 40 has been posted', 'Oct 8 2017', 'Assignment 40 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(43, 'comp3322@hku.hk', 'Assignment 41 has been posted', 'Oct 8 2017', 'Assignment 41 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(44, 'comp3322@hku.hk', 'Assignment 42 has been posted', 'Oct 8 2017', 'Assignment 42 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(45, 'comp3322@hku.hk', 'Assignment 43 has been posted', 'Oct 8 2017', 'Assignment 43 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(46, 'comp3322@hku.hk', 'Assignment 44 has been posted', 'Oct 8 2017', 'Assignment 44 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(47, 'comp3322@hku.hk', 'Assignment 45 has been posted', 'Oct 8 2017', 'Assignment 45 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(48, 'comp3322@hku.hk', 'Assignment 46 has been posted', 'Oct 8 2017', 'Assignment 46 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(49, 'comp3322@hku.hk', 'Assignment 47 has been posted', 'Oct 8 2017', 'Assignment 47 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(50, 'comp3322@hku.hk', 'Assignment 48 has been posted', 'Oct 11 2017', 'Assignment 48 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(51, 'comp3322@hku.hk', 'Assignment 49 has been posted', 'Oct 11 2017', 'Assignment 49 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(52, 'comp3322@hku.hk', 'Assignment 50 has been posted', 'Oct 11 2017', 'Assignment 50 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(53, 'comp3322@hku.hk', 'Assignment 51 has been posted', 'Oct 11 2017', 'Assignment 51 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(54, 'comp3322@hku.hk', 'Assignment 52 has been posted', 'Oct 11 2017', 'Assignment 52 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(55, 'comp3322@hku.hk', 'Assignment 53 has been posted', 'Oct 11 2017', 'Assignment 53 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(56, 'comp3322@hku.hk', 'Assignment 54 has been posted', 'Oct 11 2017', 'Assignment 54 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(57, 'comp3322@hku.hk', 'Assignment 55 has been posted', 'Oct 11 2017', 'Assignment 55 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(58, 'comp3322@hku.hk', 'Assignment 56 has been posted', 'Oct 11 2017', 'Assignment 56 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(59, 'comp3322@hku.hk', 'Assignment 57 has been posted', 'Oct 11 2017', 'Assignment 57 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(60, 'comp3322@hku.hk', 'Assignment 58 has been posted', 'Oct 11 2017', 'Assignment 58 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(61, 'comp3322@hku.hk', 'Assignment 59 has been posted', 'Oct 11 2017', 'Assignment 59 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(62, 'comp3322@hku.hk', 'Assignment 60 has been posted', 'Oct 11 2017', 'Assignment 60 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(63, 'comp3322@hku.hk', 'Assignment 61 has been posted', 'Oct 11 2017', 'Assignment 61 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'inbox'),
(64, 'comp3322@hku.hk', 'Assignment 62 has been posted', 'Oct 11 2017', 'Assignment 62 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(65, 'comp3322@hku.hk', 'Assignment 63 has been posted', 'Oct 11 2017', 'Assignment 63 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(66, 'comp3322@hku.hk', 'Assignment 64 has been posted', 'Oct 11 2017', 'Assignment 64 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(67, 'comp3322@hku.hk', 'Assignment 65 has been posted', 'Oct 11 2017', 'Assignment 65 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(68, 'comp3322@hku.hk', 'Assignment 66 has been posted', 'Oct 11 2017', 'Assignment 66 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(69, 'comp3322@hku.hk', 'Assignment 67 has been posted', 'Oct 11 2017', 'Assignment 67 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(70, 'comp3322@hku.hk', 'Assignment 68 has been posted', 'Oct 11 2017', 'Assignment 68 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(71, 'comp3322@hku.hk', 'Assignment 69 has been posted', 'Oct 11 2017', 'Assignment 69 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(72, 'comp3322@hku.hk', 'Assignment 70 has been posted', 'Oct 11 2017', 'Assignment 70 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(73, 'comp3322@hku.hk', 'Assignment 71 has been posted', 'Oct 11 2017', 'Assignment 71 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(74, 'comp3322@hku.hk', 'Assignment 72 has been posted', 'Oct 11 2017', 'Assignment 72 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(75, 'comp3322@hku.hk', 'Assignment 73 has been posted', 'Oct 11 2017', 'Assignment 73 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(76, 'comp3322@hku.hk', 'Assignment 74 has been posted', 'Oct 11 2017', 'Assignment 74 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(77, 'comp3322@hku.hk', 'Assignment 75 has been posted', 'Oct 11 2017', 'Assignment 75 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(78, 'comp3322@hku.hk', 'Assignment 76 has been posted', 'Oct 11 2017', 'Assignment 76 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(79, 'comp3322@hku.hk', 'Assignment 77 has been posted', 'Oct 11 2017', 'Assignment 77 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(80, 'comp3322@hku.hk', 'Assignment 78 has been posted', 'Oct 15 2017', 'Assignment 78 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(81, 'comp3322@hku.hk', 'Assignment 79 has been posted', 'Oct 15 2017', 'Assignment 79 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(82, 'comp3322@hku.hk', 'Assignment 80 has been posted', 'Oct 15 2017', 'Assignment 80 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(83, 'comp3322@hku.hk', 'Assignment 81 has been posted', 'Oct 15 2017', 'Assignment 81 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(84, 'comp3322@hku.hk', 'Assignment 82 has been posted', 'Oct 15 2017', 'Assignment 82 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(85, 'comp3322@hku.hk', 'Assignment 83 has been posted', 'Oct 15 2017', 'Assignment 83 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(86, 'comp3322@hku.hk', 'Assignment 84 has been posted', 'Oct 15 2017', 'Assignment 84 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(87, 'comp3322@hku.hk', 'Assignment 85 has been posted', 'Oct 15 2017', 'Assignment 85 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(88, 'comp3322@hku.hk', 'Assignment 86 has been posted', 'Oct 15 2017', 'Assignment 86 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(89, 'comp3322@hku.hk', 'Assignment 87 has been posted', 'Oct 15 2017', 'Assignment 87 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(90, 'comp3322@hku.hk', 'Assignment 88 has been posted', 'Oct 15 2017', 'Assignment 88 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(91, 'comp3322@hku.hk', 'Assignment 89 has been posted', 'Oct 15 2017', 'Assignment 89 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(92, 'comp3322@hku.hk', 'Assignment 90 has been posted', 'Oct 15 2017', 'Assignment 90 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(93, 'comp3322@hku.hk', 'Assignment 91 has been posted', 'Oct 15 2017', 'Assignment 91 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(94, 'comp3322@hku.hk', 'Assignment 92 has been posted', 'Oct 15 2017', 'Assignment 92 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(95, 'comp3322@hku.hk', 'Assignment 93 has been posted', 'Oct 15 2017', 'Assignment 93 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'trash'),
(96, 'comp3322@hku.hk', 'Assignment 94 has been posted', 'Oct 15 2017', 'Assignment 94 has been posted, due by 23:55 Thursday Oct 19. Please start working on the assignment early.', 'important'),
(97, 'comp3322@hku.hk', 'Lab 4 Result', 'Oct 15 2017', 'Scores of Lab 4 have been posted. You can check your score under "Grades".\r\n\r\nBest regards.', 'trash'),
(98, 'notify@moodle.hku.hk', 'Midterm exam', 'Oct 16 2017', 'Time: 12:30-1:20pm, Tuesday Oct 24\r\n\r\nVenue: CBA\r\n\r\nScope: all lecture materials up to and including jQuery, assignment 1, labs 1-4\r\n\r\nYou can bring hard copies of all lecture slides on which handwritten notes are allowed.', 'important'),
(99, 'chiholau@hku.hk', 'Finally finished.', 'Oct 18 2017', 'Thanks god, I finally finished my assignment 1.', 'inbox');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
