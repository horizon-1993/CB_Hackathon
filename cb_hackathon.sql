-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 23, 2021 at 06:14 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cb_hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `ID` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Vertical` varchar(255) NOT NULL,
  `Subvertical` varchar(255) NOT NULL,
  `Features_enabled` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`ID`, `Name`, `Vertical`, `Subvertical`, `Features_enabled`) VALUES
('1', 'Directondergoed', 'Ecommerce', '', '1,3,5'),
('2', 'X', 'Ecommerce', '', '1,2,3'),
('3', 'Y', 'Ecommerce', '', '1,2,3'),
('4', 'Z', 'Ecommerce', '', '1,2,3,4'),
('5', 'A', 'Ecommerce', '', '2,3');

-- --------------------------------------------------------

--
-- Table structure for table `feature_mapping`
--

CREATE TABLE `feature_mapping` (
  `feature_id` varchar(255) NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `feature_description` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `feedback_by` varchar(255) NOT NULL,
  `feedback_role` varchar(255) NOT NULL,
  `feedback_company` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_mapping`
--

INSERT INTO `feature_mapping` (`feature_id`, `feature_name`, `feature_description`, `feedback`, `feedback_by`, `feedback_role`, `feedback_company`) VALUES
('1', 'Smart Dunning', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Daniel Chen', 'Finance Manager', 'Deliverr'),
('2', 'Gift Subscriptions', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', ''),
('3', 'Consolidated Invoices', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', ''),
('4', 'Net-D', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', ''),
('5', 'Adyen SEPA', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `ID` varchar(255) NOT NULL,
  `Feature_Name` varchar(255) NOT NULL,
  `Feature_Description` varchar(255) NOT NULL,
  `Vertical` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`ID`, `Feature_Name`, `Feature_Description`, `Vertical`, `Link`) VALUES
('1', 'BigCommerce', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Ecommerce', ''),
('2', 'Chargeback Automation', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'SaaS', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
