-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 27, 2021 at 06:24 AM
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
  `Features_enabled` varchar(255) NOT NULL,
  `Customer_base` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`ID`, `Name`, `Vertical`, `Subvertical`, `Features_enabled`, `Customer_base`) VALUES
('1', 'Directondergoed', 'Ecommerce', '', '3,4,6', 'EU,UK'),
('2', 'X', 'Ecommerce', '', '9,3,4,5,10', ''),
('3', 'Y', 'Ecommerce', '', '2,3,5,6,9', ''),
('4', 'Z', 'Ecommerce', '', '10,2,3,4', ''),
('5', 'A', 'Ecommerce', '', '3,4,9,2', ''),
('6', 'Hopin', 'SaaS', 'Video Conferences', '8,3,4', ''),
('7', 'A', 'SaaS', 'Video Conferences', '1,5,7,4,6,8,3,4', ''),
('8', 'B', 'SaaS', 'Video Conferences', '1,5,6,8,3', ''),
('9', 'C', 'SaaS', 'Video Conferences', '1,7,4,3,2,8', ''),
('10', 'D', 'SaaS', 'Video Conferences', '7,2,3,4', '');

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
  `feedback_company` varchar(255) NOT NULL,
  `Feature_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feature_mapping`
--

INSERT INTO `feature_mapping` (`feature_id`, `feature_name`, `feature_description`, `feedback`, `feedback_by`, `feedback_role`, `feedback_company`, `Feature_image`) VALUES
('1', 'Smart Dunning', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '\"We have been able to reduce our unpaid invoices by at least 80% while we have grown by 600%.\"', 'Daniel Chen', 'Finance Manager', 'Deliverr', 'http://localhost:8888/Hackathon/Dunning2.png'),
('2', 'Gift Subscriptions', 'use this feature to build goodwill around their product through simple, one-step gifting journeys.', '', '', '', '', 'http://localhost:8888/Hackathon/Gift1.png'),
('3', 'Consolidated Invoices', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', '', ''),
('4', 'Net-D', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '', '', '', '', ''),
('5', 'Direct Debit', 'offer Direct Debit payments via GoCardless, Stripe, Adyen, Authorize.net.', '', '', '', '', 'http://localhost:8888/Hackathon/DD.png'),
('6', 'Credit Transfer', 'Reduce the manual effort involved in reconciling payments with due invoices with Credit Transfers via Stripe. ', '', '', '', '', ''),
('', '', '', '', '', '', '', ''),
('7', 'Netsuite', 'use our Oracle NetSuite integration to automate revenue management and reconciliation.', '', '', '', '', 'http://localhost:8888/Hackathon/netsuite.png'),
('8', 'Card Payments', '', '', '', '', '', ''),
('9', 'Email Segmentation', 'use email segmentation to create multiple filters and send targeted emails.', '', '', '', '', 'http://localhost:8888/Hackathon/email-seg.png'),
('10', 'Bank Payments', 'use iDEAL, Sofort and Bancontact via Adyen to improve conversion rates. ', '', '', '', '', 'http://localhost:8888/Hackathon/bank.png');

-- --------------------------------------------------------

--
-- Table structure for table `highlights`
--

CREATE TABLE `highlights` (
  `ID` varchar(255) NOT NULL,
  `Feature_Name` varchar(255) NOT NULL,
  `Feature_Description` varchar(255) NOT NULL,
  `Vertical` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `Highlight_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highlights`
--

INSERT INTO `highlights` (`ID`, `Feature_Name`, `Feature_Description`, `Vertical`, `Link`, `Highlight_image`) VALUES
('1', 'BigCommerce', 'Integrate with BigCommerce to manage subscriptions for your physical goods and billing at ease.', 'Ecommerce', '', 'http://localhost:8888/Hackathon/Bigcommerce.png'),
('2', 'Chargeback Automation', 'Handle chargeback automation for card and SEPA payments made by Stripe, Adyen and GoCardless.', 'SaaS', '', 'http://localhost:8888/Hackathon/chargeback.png'),
('3', 'Resend Orders', 'You can now resend the complete order or specific items in an order to your customers.', 'Ecommerce', 'https://www.chargebee.com/docs/orders.html#resend-orders', 'http://localhost:8888/Hackathon/Orders.png'),
('4', 'Multiple Coupons', 'Apply multiple coupons of the same type to subscriptions withour overriding the previous ones.', 'Ecommerce', '', 'http://localhost:8888/Hackathon/coupon.png'),
('5', 'Select Webhook Events', 'Too many webhook events to handle? Select only the ones you want delivered.', 'SaaS', '', 'http://localhost:8888/Hackathon/webhook.png'),
('6', 'RevLock Integration', 'Automate and ensure financial compliance such as ASC 606 and IFRS 15 guidelines.', 'SaaS', '', 'http://localhost:8888/Hackathon/rl.png');

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE `Login` (
  `Email` varchar(255) NOT NULL,
  `Merchant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Login`
--

INSERT INTO `Login` (`Email`, `Merchant`) VALUES
('swapna@directondergoed.com', 'Directondergoed'),
('bala@hopin.com', 'Hopin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
