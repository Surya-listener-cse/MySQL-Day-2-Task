-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2024 at 07:59 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guvi zen class`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL,
  `title` varchar(253) NOT NULL,
  `description` varchar(253) NOT NULL,
  `duration` timestamp(6) NOT NULL,
  `level` varchar(253) NOT NULL,
  `instructor_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `description`, `duration`, `level`, `instructor_id`, `start_date`, `end_date`) VALUES
(10, 'Full Stack Development', 'Here U can learn about web development', '2024-02-15 07:42:51.000000', 'Senior', 18231508, '2024-02-01', '2024-02-29'),
(11, 'Java Developer', 'Here U can learn about java development', '2024-02-15 07:43:28.000000', 'Mid Level', 18231509, '2024-01-01', '2024-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `id` int NOT NULL,
  `first_name` varchar(253) NOT NULL,
  `last_name` varchar(253) NOT NULL,
  `email` varchar(253) NOT NULL,
  `phone_number` int NOT NULL,
  `address` varchar(253) NOT NULL,
  `experties_area` varchar(253) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `experties_area`) VALUES
(18231508, 'Sanjay', 'Saravanan', 'sanjay@gmail.com', 740864532, 'Bengaluru', 'MERN FULL STACK DEVELOPMENT'),
(18231509, 'Varun', 'Vikranth', 'varun14@gmail.com', 948632148, 'Chennai', 'JAVA DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `registration id` int NOT NULL,
  `instructor_id` int NOT NULL,
  `student_id` int NOT NULL,
  `session_id` int NOT NULL,
  `registration_date` date NOT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`registration id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration id`, `instructor_id`, `student_id`, `session_id`, `registration_date`, `payment_status`) VALUES
(1111, 18231508, 1772001, 52, '2024-05-11', 'Done'),
(2222, 18231509, 1772002, 53, '2024-01-11', 'NOT DONE');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int NOT NULL,
  `course_id` varchar(253) NOT NULL,
  `session_date` date NOT NULL,
  `start_time` timestamp(6) NOT NULL,
  `end_time` timestamp(6) NOT NULL,
  `max_capacity` int NOT NULL,
  `remaining_capacity` int NOT NULL,
  `feedback` varchar(253) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `course_id`, `session_date`, `start_time`, `end_time`, `max_capacity`, `remaining_capacity`, `feedback`) VALUES
(52, '10', '2024-02-11', '2024-02-15 07:35:37.000000', '2024-02-15 07:35:37.000000', 30, 5, 'The session goes well'),
(53, '11', '2024-02-12', '2024-02-15 07:36:21.000000', '2024-02-15 07:36:21.000000', 25, 2, 'Learned new things in react');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL,
  `first_name` varchar(253) NOT NULL,
  `last_name` varchar(253) NOT NULL,
  `email` varchar(253) NOT NULL,
  `phone_number` int NOT NULL,
  `address` varchar(253) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `date_of_birth`) VALUES
(1772001, 'Surya', 'Anbazhagan', 'surya20@gmail.com', 1234567890, 'Tiruvannamalai', '2002-05-11'),
(1772002, 'Kavin', 'Prakash', 'kavin@gmail.com', 994377038, 'Chennai', '2001-03-11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
