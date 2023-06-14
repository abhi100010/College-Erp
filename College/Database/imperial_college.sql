-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 06:53 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imperial_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `class_result`
--

CREATE TABLE `class_result` (
  `class_result_id` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `course_code` varchar(30) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` varchar(11) NOT NULL,
  `total_marks` varchar(11) NOT NULL,
  `obtain_marks` varchar(11) NOT NULL,
  `result_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_result`
--

INSERT INTO `class_result` (`class_result_id`, `roll_no`, `course_code`, `subject_code`, `semester`, `total_marks`, `obtain_marks`, `result_date`) VALUES
(1, 'MCS-S19-1', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(2, '25', 'MCS', 'OOP', '2', '100', '93', '10-03-20'),
(3, '27', 'MCS', 'OOP', '2', '100', '92', '10-03-20'),
(4, '29', 'MCS', 'OOP', '2', '100', '98', '10-03-20'),
(5, '31', 'MCS', 'OOP', '2', '100', '96', '10-03-20'),
(6, '33', 'MCS', 'OOP', '2', '100', '97', '10-03-20'),
(7, '34', 'MCS', 'OOP', '2', '100', '94', '10-03-20'),
(8, '35', 'MCS', 'OOP', '2', '100', '91', '10-03-20'),
(9, '36', 'MCS', 'OOP', '2', '100', '90', '10-03-20'),
(10, 'MCS-S19-1', 'MCS', 'DBMS', '2', '100', '98', '10-03-20'),
(11, '25', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(12, '27', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(13, '29', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(14, '31', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(15, '33', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(16, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '64', '10-03-20'),
(17, '35', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(18, '36', 'MIT', 'ITP', '2', '100', '98', '10-03-20'),
(28, 'MCS-S19-1', 'MCS', 'DLD', '2', '100', '76', '29-03-20'),
(35, '', '', '', '', '', '', '29-03-20'),
(36, '', '', '', '', '', '', '29-03-20'),
(37, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(38, '', '', '', '', '', '', '30-03-20'),
(39, '', '', '', '', '', '', '30-03-20'),
(40, '', '', '', '', '', '', '30-03-20'),
(41, '', '', '', '', '', '', '30-03-20'),
(42, '', '', '', '', '', '', '30-03-20'),
(43, '', '', '', '', '', '', '30-03-20'),
(44, '', '', '', '', '', '', '30-03-20'),
(45, '', '', '', '', '', '', '30-03-20'),
(46, 'MCS-S19-1', 'MCS', 'SE', '2', '100', '80', '30-03-20'),
(47, '', '', '', '', '', '', '30-03-20'),
(48, '', '', '', '', '', '', '30-03-20'),
(49, '', '', '', '', '', '', '30-03-20'),
(50, '', '', '', '', '', '', '30-03-20'),
(51, '', '', '', '', '', '', '30-03-20'),
(52, '', '', '', '', '', '', '30-03-20'),
(53, '', '', '', '', '', '', '30-03-20'),
(54, '', '', '', '', '', '', '30-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(10) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `semester_or_year` varchar(10) NOT NULL,
  `no_of_year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `semester_or_year`, `no_of_year`) VALUES
('BCA', 'Bachelor of Computer Application', '6', 3),
('MCA', 'Master of Computer Application', '4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_subjects`
--

CREATE TABLE `course_subjects` (
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(10) NOT NULL,
  `credit_hours` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subjects`
--

INSERT INTO `course_subjects` (`subject_code`, `subject_name`, `course_code`, `semester`, `credit_hours`) VALUES
('UGCA 1950', 'IST', 'BCA', 5, 40),
('UGCA-1901', 'MATHEMATICS', 'BCA', 1, 44),
('UGCA-1902', 'FCIT', 'BCA', 1, 40),
('UGCA-1903', 'Programming in C Language ', 'BCA', 1, 40),
('UGCA-1905', 'Programming in C Language Lab', 'BCA', 1, 40),
('UGCA-1906', 'FCIT Lab', 'BCA', 1, 40),
('UGCA-1907', 'Fundamental of StatistIcs', 'BCA', 2, 36),
('UGCA-1908', 'CSA', 'BCA', 2, 36),
('UGCA-1909', 'Programming in C++ Language ', 'BCA', 2, 38),
('UGCA-1910', 'Programming in C++ Language Lab', 'BCA', 2, 39),
('UGCA-1911', 'Fundamental of Statistics Lab', 'BCA', 2, 39),
('UGCA-1929', 'PHP', 'BCA', 5, 45),
('UGCA-1930', 'PHP LAB', 'BCA', 5, 40),
('UGCA-1931', 'I S T LAB', 'BCA', 5, 40),
('UGCA-1932', 'JAVA', 'BCA', 5, 40),
('UGCA-1935', 'LINUX OS', 'BCA', 5, 45),
('UGCA-1936', 'CLOUD COMPUTING', 'BCA', 5, 40),
('UGCA-1938', 'JAVA LAB', 'BCA', 5, 40),
('UGCA-1941', 'LINUX OS LAB', 'BCA', 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `account` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `user_id`, `Password`, `Role`, `account`) VALUES
(2, 'admin@gmail.com', 'admin123*', 'Admin', 'Activate'),
(5, 'staff1@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(6, 'abc@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(7, '87847', 'student123*', 'Student', 'Activate'),
(8, 'aujladeep123@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(9, 'aman@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(10, 'amit123@gmail.com', 'teacher123*', 'Teacher', ''),
(11, 'simmi123@gmail.com', 'teacher123*', 'Teacher', ''),
(12, 'simmi123@gmail.com', 'teacher123*', 'Teacher', ''),
(13, 'anu123@gmail.com', 'teacher123*', 'Teacher', ''),
(14, '3320103', 'student123*', 'Student', ''),
(15, '2000593', 'abc123*', 'Student', 'Activate'),
(16, '2000597', 'student123*', 'Student', ''),
(17, '2000598', 'student123*', 'Student', ''),
(18, '2000600', 'student123*', 'Student', ''),
(19, '2000601', 'student123*', 'Student', ''),
(20, '2000605', 'student123*', 'Student', ''),
(21, '2000611', 'student123*', 'Student', ''),
(22, '2000613', 'student123*', 'Student', ''),
(23, '2000620', 'student123*', 'Student', ''),
(24, '3319064', 'student123*', 'Student', ''),
(25, 'aujladeep123@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(26, 'aujladeep123@gmail.com', 'teacher123*', 'Teacher', ''),
(27, 'aujladeep123@gmail.com', 'teacher123*', 'Teacher', ''),
(28, 'amrit@gmail.com', 'teacher123*', 'Teacher', 'Activate'),
(29, '200063', 'student123*', 'Student', ''),
(30, 'abc12345@gmail.com', 'teacher123*', 'Teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `course_code`) VALUES
('B.Fashion-S19-1', 'husnain', 'B.Fashion'),
('B.Fashion-S19-2', 'razarai663@gmail.com', 'B.Fashion'),
('MCS-S19-1', 'Muhammad Husnain Raza', 'MCS'),
('MCS-S19-2', 'razarai663@gmail.com', 'MCS'),
('MIT-S19-1', 'Muhammad Husnain Raza', 'MIT');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session`, `created_date`) VALUES
(1, 'S19', '2020-03-11 20:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `attendance_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`attendance_id`, `course_code`, `subject_code`, `semester`, `student_id`, `attendance`, `attendance_date`) VALUES
(1, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(2, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(3, 'MCS', 'DBMS', 2, 'MCS-S19-1', 1, '15-03-20'),
(4, 'MCS', 'DBMS', 2, 'MCS-S19-1', 0, '15-03-20'),
(5, 'MCS', 'DLD', 2, 'MCS-S19-1', 1, '15-03-20'),
(6, 'MCS', 'OOP', 2, 'MCS-S19-1', 1, '15-03-20'),
(7, 'MCS', 'SE', 2, 'MCS-S19-1', 0, '15-03-20'),
(8, 'MCS', 'WEB', 2, 'MCS-S19-1', 1, '15-03-20'),
(9, 'BCA', 'UGCA-1936', 5, '2000593', 1, '07-09-22'),
(10, 'BCA', 'UGCA-1935', 5, '2000593', 1, '07-09-22'),
(11, 'BCA', 'UGCA-1936', 5, '2000593', 1, '21-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `student_course_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `roll_no` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_courses`
--

INSERT INTO `student_courses` (`student_course_id`, `course_code`, `semester`, `roll_no`, `subject_code`, `session`, `assign_date`) VALUES
(1, 'MCS', 2, 'MCS-S19-1', 'OOP', 'S19', '15-03-20'),
(2, 'MCS', 2, 'MCS-S19-1', 'DBMS', 'S19', '15-03-20'),
(3, 'MCS', 2, 'MCS-S19-1', 'DLD', 'S19', '15-03-20'),
(4, 'MCS', 2, 'MCS-S19-1', 'SE', 'S19', '15-03-20'),
(5, 'MCS', 2, 'MCS-S19-1', 'WEB', 'S19', '15-03-20'),
(7, 'UGCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(8, 'BCA', 1, '2000593', 'UGCA', '', '03-09-22'),
(9, 'BCA', 1, '2000593', 'UGCA', '', '03-09-22'),
(10, 'BCA', 1, '2000593', 'UGCA', '', '03-09-22'),
(11, 'BCA', 1, '2000593', 'UGCA', '', '03-09-22'),
(12, 'BCA', 1, '2000593', 'UGCA', '', '03-09-22'),
(13, 'BCA', 2, '2000593', 'UGCA', '', '03-09-22'),
(14, 'BCA', 2, '2000593', 'UGCA', '', '03-09-22'),
(15, 'BCA', 2, '2000593', 'UGCA', '', '03-09-22'),
(16, 'BCA', 2, '2000593', 'UGCA', '', '03-09-22'),
(17, 'BCA', 2, '2000593', 'UGCA', '', '03-09-22'),
(18, 'BCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(19, 'BCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(20, 'BCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(21, 'BCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(22, 'BCA', 1, '3320103', 'UGCA', '', '03-09-22'),
(23, 'BCA', 1, '3320103', 'UGCA', '', '03-09-22'),
(24, 'BCA', 1, '3320103', 'UGCA', '', '03-09-22'),
(25, 'BCA', 1, '3320103', 'UGCA', '', '03-09-22'),
(26, 'BCA', 1, '3320103', 'UGCA', '', '03-09-22'),
(27, 'BCA', 2, '3320103', 'UGCA', '', '03-09-22'),
(28, 'BCA', 2, '3320103', 'UGCA', '', '03-09-22'),
(29, 'BCA', 2, '3320103', 'UGCA', '', '03-09-22'),
(30, 'BCA', 2, '3320103', 'UGCA', '', '03-09-22'),
(31, 'BCA', 2, '3320103', 'UGCA', '', '03-09-22'),
(32, 'BCA', 5, '3320103', 'UGCA', '', '03-09-22'),
(33, 'BCA', 5, '3320103', 'UGCA', '', '03-09-22'),
(34, 'BCA', 5, '3320103', 'UGCA', '', '03-09-22'),
(35, 'BCA', 5, '3320103', 'UGCA', '', '03-09-22'),
(36, 'UGCA', 5, '2000593', 'UGCA', '', '03-09-22'),
(37, 'BCA', 1, '3320004', 'UGCA-1901', '', '06-09-22'),
(38, 'BCA', 1, '3320004', 'UGCA-1902', '', '06-09-22'),
(39, 'BCA', 1, '3320004', 'UGCA-1903', '', '06-09-22'),
(40, 'BCA', 1, '3320004', 'UGCA-1905', '', '06-09-22'),
(41, 'BCA', 1, '3320004', 'UGCA-1906', '', '06-09-22'),
(42, 'BCA', 2, '3320004', 'UGCA-1907', '', '06-09-22'),
(43, 'BCA', 2, '3320004', 'UGCA-1908', '', '06-09-22'),
(44, 'BCA', 2, '3320004', 'UGCA-1909', '', '06-09-22'),
(45, 'BCA', 2, '3320004', 'UGCA-1910', '', '06-09-22'),
(46, 'BCA', 2, '3320004', 'UGCA-1911', '', '06-09-22'),
(47, 'BCA', 5, '3320004', 'UGCA-1929', '', '06-09-22'),
(48, 'BCA', 5, '3320004', 'UGCA-1930', '', '06-09-22'),
(49, 'BCA', 5, '3320004', 'UGCA-1931', '', '06-09-22'),
(50, 'BCA', 5, '3320004', 'UGCA-1932', '', '06-09-22'),
(51, 'BCA', 5, '3320004', 'UGCA-1935', '', '06-09-22'),
(52, 'BCA', 5, '3320004', 'UGCA-1936', '', '06-09-22'),
(53, 'BCA', 5, '3320004', 'UGCA-1938', '', '06-09-22'),
(54, 'BCA', 5, '3320004', 'UGCA-1941', '', '06-09-22'),
(55, 'BCA', 1, '2000593', 'UGCA-1901', '', '06-09-22'),
(56, 'BCA', 1, '2000593', 'UGCA-1902', '', '06-09-22'),
(57, 'BCA', 1, '2000593', 'UGCA-1903', '', '06-09-22'),
(58, 'BCA', 1, '2000593', 'UGCA-1905', '', '06-09-22'),
(59, 'BCA', 1, '2000593', 'UGCA-1906', '', '06-09-22'),
(60, 'BCA', 2, '2000593', 'UGCA-1907', '', '06-09-22'),
(61, 'BCA', 2, '2000593', 'UGCA-1908', '', '06-09-22'),
(62, 'BCA', 2, '2000593', 'UGCA-1909', '', '06-09-22'),
(63, 'BCA', 2, '2000593', 'UGCA-1910', '', '06-09-22'),
(64, 'BCA', 2, '2000593', 'UGCA-1911', '', '06-09-22'),
(65, 'BCA', 5, '2000593', 'UGCA-1929', '', '06-09-22'),
(66, 'BCA', 5, '2000593', 'UGCA-1930', '', '06-09-22'),
(67, 'BCA', 5, '2000593', 'UGCA-1931', '', '06-09-22'),
(68, 'BCA', 5, '2000593', 'UGCA-1932', '', '06-09-22'),
(69, 'BCA', 5, '2000593', 'UGCA-1935', '', '06-09-22'),
(70, 'BCA', 5, '2000593', 'UGCA-1936', '', '06-09-22'),
(71, 'BCA', 5, '2000593', 'UGCA-1938', '', '06-09-22'),
(72, 'BCA', 5, '2000593', 'UGCA-1941', '', '06-09-22'),
(73, 'BCA', 5, '2000593', '', '', '21-09-22'),
(74, 'BCA', 5, '2000593', '', '', '21-09-22');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `fee_voucher` int(11) NOT NULL,
  `roll_no` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`fee_voucher`, `roll_no`, `amount`, `posting_date`, `status`) VALUES
(1, 'MCS-S19-1', 23455, '2020-03-29 11:24:36', 'Paid'),
(2, 'MCS-S19-1', 20093, '2020-03-30 12:35:39', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `roll_no` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `mother_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `course_code` varchar(11) NOT NULL,
  `session` varchar(10) NOT NULL,
  `profile_image` varchar(100) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `category` varchar(10) NOT NULL,
  `country` varchar(20) NOT NULL,
  `hostel` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `other_phone` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `permanent_address` varchar(150) NOT NULL,
  `current_address` varchar(150) NOT NULL,
  `place_of_birth` varchar(150) NOT NULL,
  `semester` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `obtain_marks` int(11) NOT NULL,
  `state` varchar(20) NOT NULL,
  `admission_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`roll_no`, `first_name`, `mother_name`, `last_name`, `father_name`, `email`, `mobile_no`, `course_code`, `session`, `profile_image`, `batch`, `category`, `country`, `hostel`, `city`, `dob`, `other_phone`, `gender`, `permanent_address`, `current_address`, `place_of_birth`, `semester`, `total_marks`, `obtain_marks`, `state`, `admission_date`) VALUES
('2000593', 'Abhishek', '  ', 'Chaubey', 'Manoj chaubey', 'abhishek123@gmail.com', '7852455246', 'UGCA', 'S19', 'IMG_0315.JPG', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-14', '', 'Male', 'sheohar', 'amritsar', 'sheohar', 0, 0, 0, '', '2022-09-03 16:39:13'),
('2000597', 'Aakash', '  ', 'kumar', 'Mukesh parashad sah', 'aakash123@gmail.com', '7851246325', 'UGCA', 'S19', 'IMG_0333.JPG', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-13', '', 'Male', 'Bhagalpur', 'amritsar', 'Bhagalpur', 0, 0, 0, '', '2022-09-03 16:42:05'),
('2000598', 'Akhil', '  ', 'mehra', 'Deepak mehra', 'akhil123@gmail.com', '7548651256', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-20', '', 'Male', 'amritsar', 'amritsar', 'amritsar', 0, 0, 0, '', '2022-09-03 16:44:14'),
('2000600', 'Aman', '  ', 'shukla', 'Dilip shukla', 'aman123@gmail.com', '7845246852', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-14', '', 'Male', 'amritsar', 'amritsar', 'amritsar', 0, 0, 0, '', '2022-09-03 16:46:03'),
('2000601', 'Anand', '  ', 'kumar', 'krishna das', 'anand123@gmail.com', '78546255625', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-11', '', 'Male', 'bihar', 'amritsar', 'bihar', 0, 0, 0, '', '2022-09-03 16:48:15'),
('2000605', 'Ashan ', '  ', 'kaur', 'jag preet singh', 'ashan123@gmail.com', '5755455565', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-20', '', 'Male', 'amritsar', 'amritsar', 'amritsar', 0, 0, 0, '', '2022-09-03 16:50:11'),
('2000611', 'Bhanu', '   ', 'parkash', 'ramesh parshad singh', 'bhanu123@gmail.com', '7854623541', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-20', '', 'Male', 'siwan', 'amritsar', 'barharia', 0, 0, 0, '', '2022-09-03 16:52:31'),
('2000613', 'Bittu ', '  ', 'kumar', 'Mohan sah', 'bittu123@gmail.com', '7854698752', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-04', '', 'Male', 'bihar', 'amritsar', 'bihar', 0, 0, 0, '', '2022-09-03 16:54:22'),
('2000620', 'Dharuv ', '  ', 'khosla', 'sanchit khosla', 'dharuv123@gmail.com', '5789654235', 'UGCA', 'S19', 'download.jfif', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-27', '', 'Male', 'amritsar', 'amritsar', 'amritsar', 0, 0, 0, '', '2022-09-03 16:56:37'),
('200063', 'Jatin ', 'Meenu ', 'Mahajan', 'Ashwani Kumar', 'jatinmahajan166@gmail.com', '6280486903', 'BCA', 'S19', 'IMG_0582.JPG', 'Select Opt', 'General', 'India', 'Not Admitted', '', '2003-10-31', '', 'Male', 'Amritsar', 'Amritsar', 'Amritsar', 0, 0, 0, 'Delhi', '2022-09-16 04:39:05'),
('3319064', 'Raushan', 'Usha Devi', 'Kumar', 'Shankar Prasad', 'rocky@gmail.com', '9430669725', 'BCA', 'S19', '02.png', 'Select Opt', 'General', 'India', 'Admitted', '', '2002-07-07', '', 'Male', 'ABC', 'Abc', 'ABC', 0, 0, 0, 'Bihar', '2022-09-12 19:50:58'),
('3320103', 'Shreekant', '   ', 'yadav', 'Vijay yadav', 'sreekankumar2000@gmail.cpm', '7854858556', 'UGCA', 'S19', 'IMG_0327.JPG', 'Yes', 'Yes', '', 'Admitted', 'Approved', '2022-09-08', '', 'Male', 'siwan', 'siwan', 'siwan', 0, 0, 0, '', '2022-09-03 16:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `teacher_id` varchar(30) NOT NULL,
  `attendance` int(11) NOT NULL,
  `attendance_date` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_attendance`
--

INSERT INTO `teacher_attendance` (`attendance_id`, `teacher_id`, `attendance`, `attendance_date`) VALUES
(1, '3', 1, '09-03-20'),
(2, '3', 1, '10-03-20'),
(3, '3', 1, '11-04-20'),
(4, '3', 1, '30-03-20'),
(5, '2', 0, '30-03-20'),
(6, '4', 1, '06-09-22'),
(7, '4', 1, '06-09-22'),
(8, '17', 1, '16-09-22'),
(9, '17', 1, '25-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `teacher_courses_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `teacher_id` varchar(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `assign_date` varchar(10) NOT NULL,
  `total_classes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`teacher_courses_id`, `course_code`, `semester`, `teacher_id`, `subject_code`, `assign_date`, `total_classes`) VALUES
(1, 'MCS', 2, '3', 'OOP', '27-03-20', 30),
(2, 'MCS', 2, '1', 'DBMS', '27-03-20', 30),
(3, 'MCS', 2, '3', 'DLD', '27-03-20', 30),
(4, 'MCS', 2, '1', 'SE', '27-03-20', 30),
(5, 'MCS', 2, '3', 'WEB', '27-03-20', 30),
(6, 'BCA', 5, '4', 'UGCA-1936', '04-09-22', 10),
(7, 'BCA', 5, '4', '', '07-09-22', 40),
(8, 'BCA', 5, '4', '', '07-09-22', 40),
(9, 'BCA', 5, '4', '', '07-09-22', 40),
(10, 'BCA', 5, '4', 'UGCA-1935', '07-09-22', 50),
(11, 'BCA', 5, '17', 'UGCA-1936', '21-09-22', 40),
(12, 'BCA', 5, '17', 'UGCA-1941', '19-10-22', 40),
(13, 'BCA', 5, '17', 'UGCA-1932', '27-10-22', 40),
(14, 'BCA', 5, '17', 'UGCA-1936', '10-11-22', 3);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `teacher_id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `appointment_type` varchar(30) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `hq` varchar(30) NOT NULL,
  `employee_role` varchar(30) NOT NULL,
  `employee_code` varchar(30) NOT NULL,
  `doj` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `profile_image` blob NOT NULL,
  `teacher_status` varchar(10) NOT NULL,
  `marital_status` varchar(30) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `unet` varchar(30) NOT NULL,
  `hire_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacher_id`, `department`, `designation`, `appointment_type`, `employee_name`, `father_name`, `hq`, `employee_role`, `employee_code`, `doj`, `email`, `phone_no`, `profile_image`, `teacher_status`, `marital_status`, `dob`, `gender`, `address`, `city`, `country`, `state`, `unet`, `hire_date`) VALUES
(17, 'Computer_Application', 'professor', 'Regular', 'Amritbir Kaur', ' ', 'mca', 'faculty', '123', '2019-12-30', 'amrit@gmail.com', '7294082159', 0x494d475f303630392e4a5047, 'Permanent', 'Unmarried', '1996-09-17', 'Female', 'Amritsar', 'Amritsar', 'India', 'Punjab', 'Yes', '13-09-22'),
(18, 'Computer_Application', 'professor', 'Regular', 'Abc', 'Xyx', 'm.tech', 'faculty', '0002', '2023-03-08', 'abc12345@gmail.com', '7294082597', 0x30312e706e67, 'Contract', 'Married', '2023-06-13', 'Male', 'VILL PARSAUNI BAIJ POST KAMRAULI, PS PIPRAHI DIST SHEOHAR', 'Sheohar', 'India', 'Bihar', 'Yes', '07-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_allowances`
--

CREATE TABLE `teacher_salary_allowances` (
  `teacher_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `medical_allowance` int(11) NOT NULL,
  `hr_allowance` int(11) NOT NULL,
  `scale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_allowances`
--

INSERT INTO `teacher_salary_allowances` (`teacher_id`, `basic_salary`, `medical_allowance`, `hr_allowance`, `scale`) VALUES
(1, 40000, 5, 10, 15),
(2, 55000, 7, 15, 18),
(3, 43000, 5, 8, 14);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_salary_report`
--

CREATE TABLE `teacher_salary_report` (
  `salary_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `paid_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_salary_report`
--

INSERT INTO `teacher_salary_report` (`salary_id`, `teacher_id`, `total_amount`, `status`, `paid_date`) VALUES
(1, 1, 46000, 'Paid', '2020-03-27 11:28:57'),
(2, 2, 67100, 'Paid', '2020-03-27 11:50:13'),
(3, 3, 48590, 'Paid', '2020-03-27 11:55:58'),
(4, 1, 46000, 'Paid', '2020-03-27 12:33:39'),
(5, 3, 48590, 'Paid', '2020-03-28 08:26:59'),
(6, 2, 67100, 'Paid', '2020-03-28 08:30:46'),
(7, 2, 67100, 'Paid', '2020-03-28 08:32:06'),
(8, 2, 67100, 'Paid', '2020-03-28 08:32:46'),
(9, 2, 67100, 'Paid', '2020-03-28 08:33:59'),
(10, 2, 67100, 'Paid', '2020-03-28 08:35:54'),
(11, 2, 67100, 'Paid', '2020-03-28 08:38:17'),
(12, 2, 67100, 'Paid', '2020-03-28 08:39:22'),
(13, 2, 67100, 'Paid', '2020-03-28 08:40:44'),
(14, 2, 67100, 'Paid', '2020-03-28 08:41:26'),
(15, 2, 67100, 'Paid', '2020-03-28 08:42:25'),
(16, 2, 67100, 'Paid', '2020-03-28 08:43:32'),
(17, 2, 67100, 'Paid', '2020-03-28 08:44:03'),
(18, 2, 67100, 'Paid', '2020-03-28 08:44:39'),
(19, 2, 67100, 'Paid', '2020-03-28 08:45:09'),
(20, 2, 67100, 'Paid', '2020-03-28 08:45:22'),
(21, 2, 67100, 'Paid', '2020-03-28 08:45:36'),
(22, 2, 67100, 'Paid', '2020-03-28 08:45:45'),
(23, 2, 67100, 'Paid', '2020-03-28 08:45:59'),
(24, 2, 67100, 'Paid', '2020-03-28 08:47:42'),
(25, 2, 67100, 'Paid', '2020-03-28 08:48:11'),
(26, 3, 48590, 'Paid', '2020-03-28 08:48:22'),
(27, 3, 48590, 'Paid', '2020-03-28 08:48:40'),
(28, 3, 48590, 'Paid', '2020-03-28 10:48:28'),
(29, 3, 48590, 'Paid', '2020-03-28 10:49:47'),
(30, 3, 48590, 'Paid', '2020-03-30 12:37:11');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `timing_from` varchar(10) NOT NULL,
  `timing_to` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `room_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_code`, `semester`, `timing_from`, `timing_to`, `day`, `subject_code`, `room_no`) VALUES
(1, 'BCA', 5, '09:30', '10:40', '1', 'UGCA-1936', 'MB-202'),
(2, 'BCA', 5, '10:40', '11:30', '1', 'UGCA-1935', 'MB-202'),
(3, 'BCA', 5, '11:30', '12:20', '1', 'UGCA-1932', 'MB-202'),
(4, 'BCA', 5, '09:30', '10:40', '2', 'UGCA-1930', 'MCA LAB-1'),
(5, 'BCA', 5, '09:00', '10:40', '2', 'UGCA-1938', 'MCA LAB-2'),
(6, 'BCA', 5, '10:40', '12:20', '2', 'UGCA-1931', 'MCA LAB-2'),
(7, 'BCA', 5, '10:40', '12:20', '2', 'UGCA-1941', 'PL-1');

-- --------------------------------------------------------

--
-- Table structure for table `weekdays`
--

CREATE TABLE `weekdays` (
  `day_id` int(11) NOT NULL,
  `day_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weekdays`
--

INSERT INTO `weekdays` (`day_id`, `day_name`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_result`
--
ALTER TABLE `class_result`
  ADD PRIMARY KEY (`class_result_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_subjects`
--
ALTER TABLE `course_subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD PRIMARY KEY (`student_course_id`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`fee_voucher`),
  ADD KEY `roll_no` (`roll_no`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`roll_no`);

--
-- Indexes for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`teacher_courses_id`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_allowances`
--
ALTER TABLE `teacher_salary_allowances`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weekdays`
--
ALTER TABLE `weekdays`
  ADD PRIMARY KEY (`day_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_result`
--
ALTER TABLE `class_result`
  MODIFY `class_result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_courses`
--
ALTER TABLE `student_courses`
  MODIFY `student_course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `fee_voucher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `teacher_courses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher_info`
--
ALTER TABLE `teacher_info`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  MODIFY `salary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `weekdays`
--
ALTER TABLE `weekdays`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `teacher_salary_report`
--
ALTER TABLE `teacher_salary_report`
  ADD CONSTRAINT `teacher_salary_report_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher_salary_allowances` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
