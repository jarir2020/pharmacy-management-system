-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2025 at 11:42 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creativedesignbd_phar`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_coa`
--

CREATE TABLE `acc_coa` (
  `HeadCode` varchar(50) NOT NULL,
  `HeadName` varchar(100) NOT NULL,
  `PHeadName` varchar(50) NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 1, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2021-01-07 04:33:34', '', '0000-00-00 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'admin', '2015-10-15 19:50:43', '', '2019-08-10 11:01:12'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '', '2019-08-10 11:01:12', 'admin', '2013-09-18 15:29:35'),
('1', 'Asset', 'COA', 0, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2020-12-01 00:37:22', '', '2019-08-10 11:01:12'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-06-12 11:47:24', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('401', 'Cost of Goods Purchase', 'Expence', 1, 1, 1, 1, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2021-11-16 04:32:28', NULL, NULL),
('102', 'Current Asset', 'Asset', 1, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2020-12-15 00:14:54', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-04-08 10:36:32', '', '2019-08-10 11:01:12'),
('404', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-05-23 05:46:14', '', '2019-08-10 11:01:12'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12'),
('4', 'Expence', 'COA', 0, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-06-18 11:40:41', '', '2019-08-10 11:01:12'),
('405', 'Fixed Assets Cost', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-05-29 05:32:01', '', '2019-08-10 11:01:12'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-05-20 05:32:59', '', '2019-08-10 11:01:12'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '2', '2018-07-07 15:21:58', '', '2019-08-10 11:01:12'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-01-26 07:37:20', '', '2019-08-10 11:01:12'),
('101', 'Non Current Assets', 'Asset', 1, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '', '2019-08-10 11:01:12', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-05-20 07:46:59', '', '2019-08-10 11:01:12'),
('304', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-06-16 12:15:40', '', '2019-08-10 11:01:12'),
('305', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-05-22 13:36:02', '', '2019-08-10 11:01:12'),
('1020303', 'Service Receive', 'Account Receivable', 3, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2020-12-19 03:31:45', '', '0000-00-00 00:00:00'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('50205', 'Supplier Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2019-10-06 06:18:49', '', '2019-08-10 11:01:12'),
('103', 'Tassets', 'Asset', 1, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '1', '2020-12-01 00:37:43', '', '0000-00-00 00:00:00'),
('50206', 'Tax', 'Current Liabilities', 2, 1, 1, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, 0.00, '10', '2020-12-20 02:41:04', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) DEFAULT NULL,
  `Vtype` varchar(50) DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) NOT NULL,
  `Narration` text DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) DEFAULT NULL,
  `CreateBy` varchar(50) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) DEFAULT NULL,
  `is_opening` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sign_out` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `staytime` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_information`
--

CREATE TABLE `bank_information` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Taka', 'à§³'),
(2, 'Dollar', '$');

-- --------------------------------------------------------

--
-- Table structure for table `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text DEFAULT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '324234234', '', '', '', '', '', '', '', '', '', 1, '2021-01-07 05:33:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` int(11) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL,
  `closed_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_information`
--

CREATE TABLE `employee_information` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sal_type` int(11) NOT NULL,
  `salary_type_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `invoice_discount` decimal(12,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `prevous_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sales_by` int(30) DEFAULT NULL,
  `invoice_details` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT 1,
  `bank_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `quantity` float NOT NULL,
  `rate` float DEFAULT NULL,
  `manufacturer_rate` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `arabic` text DEFAULT NULL,
  `hindi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES
(1, 'email', 'Email', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', NULL),
(2, 'preview', 'Preview', 'Ù…Ø¹Ø§ÙŠÙ†Ø©', NULL),
(3, 'about', 'About', 'Ø­ÙˆÙ„', NULL),
(4, 'password', 'Password', 'ÙƒÙ„Ù…Ù‡ Ø§Ù„Ø³Ø±', NULL),
(5, 'image', 'Image', 'ØµÙˆØ±Ø©', NULL),
(6, 'successfully_deleted', 'Successfully Deleted', 'ØªÙ… Ø§Ù„Ø­Ø°Ù Ø¨Ù†Ø¬Ø§Ø­', NULL),
(7, 'please_try_again', 'Please Try Again', 'Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰', NULL),
(8, 'are_you_sure', 'Are You Sure ??', 'Ù‡Ù„ Ø£Ù†Øª ÙˆØ§Ø«Ù‚ØŸ', NULL),
(9, 'save', 'Save', 'Ø­ÙØ¸', NULL),
(10, 'reset', 'Reset', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ†', NULL),
(11, 'company_title', 'Company Title', 'Ø¹Ù†ÙˆØ§Ù† Ø§Ù„ØªØ·Ø¨ÙŠÙ‚', NULL),
(12, 'address', 'Address', 'Ø¹Ù†ÙˆØ§Ù†', NULL),
(13, 'phone', 'Phone', 'Ù‡Ø§ØªÙ', NULL),
(14, 'favicon', 'Favicon', 'ÙØ§ÙÙŠÙƒÙˆÙ†', NULL),
(15, 'logo', 'Logo', 'Ø´Ø¹Ø§Ø±', NULL),
(16, 'footer_text', 'Footer Text', 'Ù†Øµ Ø§Ù„ØªØ°ÙŠÙŠÙ„', NULL),
(17, 'language', 'Language', 'Ù„ØºØ©', NULL),
(18, 'firstname', 'First Name', 'Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø§ÙˆÙ„', NULL),
(19, 'lastname', 'Last Name', 'Ø§Ù„ÙƒÙ†ÙŠØ©', NULL),
(20, 'add_module', 'Add Module', 'Ø¥Ø¶Ø§ÙØ© ÙˆØ­Ø¯Ø©', NULL),
(21, 'module_name', 'Module Name', 'Ø§Ø³Ù… ÙˆØ­Ø¯Ø©', NULL),
(22, 'successfully_inserted', 'Successfully Saved', 'ØªÙ… Ø§Ù„Ø¥Ø¯Ø±Ø§Ø¬ Ø¨Ù†Ø¬Ø§Ø­', NULL),
(23, 'menu_name', 'Menu Name', 'Ø§Ø³Ù… Ø§Ù„Ù‚Ø§Ø¦Ù…Ø©', NULL),
(24, 'role_name', 'Role Name', 'Ø§Ø³Ù… Ø§Ù„Ø¯ÙˆØ±', NULL),
(25, 'create', 'Create', 'Ø®Ù„Ù‚', NULL),
(26, 'read', 'Read', 'Ø§Ù‚Ø±Ø£', NULL),
(27, 'update', 'Update', 'Ù…Ø­Ø¯Ø«', NULL),
(28, 'delete', 'Delete', 'Ø­Ø°Ù', NULL),
(29, 'sl_no', 'Sl', 'Ù…Ø³Ù„Ø³Ù„', NULL),
(30, 'application_setting', 'Application Setting', 'Ø§Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªØ·Ø¨ÙŠÙ‚', NULL),
(31, 'user', 'User', 'Ø§Ù„Ù…Ø³ØªØ¹Ù…Ù„', NULL),
(32, 'add_menu', 'Add Menu', 'Ø¥Ø¶Ø§ÙØ© Ù‚Ø§Ø¦Ù…Ø©', NULL),
(33, 'action', 'Action', 'Ø¹Ù…Ù„', NULL),
(34, 'successfully_updated', 'Successfully Updated', 'ØªÙ… Ø§Ù„ØªØ­Ø¯ÙŠØ« Ø¨Ù†Ø¬Ø§Ø­', NULL),
(35, 'no_role_selected', 'No Role assigned Yet', 'Ù„Ù… ÙŠØªÙ… ØªØ­Ø¯ÙŠØ¯ Ø¯ÙˆØ±', NULL),
(36, 'test_phrase', '', '', NULL),
(37, 'dashboard', 'Dashboard', 'Ù„ÙˆØ­Ø© Ø§Ù„Ù‚ÙŠØ§Ø¯Ø©', NULL),
(38, 'add_user', 'Add User', 'Ø¥Ø¶Ø§ÙØ© Ù…Ø³ØªØ®Ø¯Ù…', NULL),
(39, 'user_list', 'User List', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…', NULL),
(40, 'setting', 'Setting', 'Ø¶Ø¨Ø·', NULL),
(41, 'add_role', 'Add Role', 'Ø£Ø¶Ù Ø¯ÙˆØ±Ù‹Ø§', NULL),
(42, 'role_list', 'Role List', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø£Ø¯ÙˆØ§Ø±', NULL),
(43, 'assign_role', 'Assign Role', 'ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ø¯ÙˆØ±', NULL),
(44, 'welcome_back', 'Welcome Back', NULL, NULL),
(45, 'add_customer', 'Add Customer', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø²Ø¨ÙˆÙ†', NULL),
(46, 'customer_name', 'Customer Name', NULL, NULL),
(47, 'mobile_no', 'Mobile No', NULL, NULL),
(48, 'email_address', 'Email Address', NULL, NULL),
(49, 'contact', 'Contact', 'Ø§ØªØµÙ„', NULL),
(50, 'address1', 'Address 1', 'Ø§Ù„Ø¹Ù†ÙˆØ§Ù† 1', NULL),
(51, 'address2', 'Address 2', 'Ø§Ù„Ø¹Ù†ÙˆØ§Ù† 2', NULL),
(52, 'fax', 'Fax', NULL, NULL),
(53, 'city', 'City', 'Ù…Ø¯ÙŠÙ†Ø©', NULL),
(54, 'state', 'State', NULL, NULL),
(55, 'zip', 'Zip', NULL, NULL),
(56, 'country', 'Country', 'Ø¨Ù„Ø¯', NULL),
(57, 'previous_balance', 'Previous Balance', NULL, NULL),
(58, 'save_successfully', 'Successfully Saved', NULL, NULL),
(59, 'update_successfully', 'Successfully Updated', NULL, NULL),
(60, 'customer_list', 'Customer List', NULL, NULL),
(61, 'balance', 'Balance', 'ØªÙˆØ§Ø²Ù†', NULL),
(62, 'customer', 'Customer', NULL, NULL),
(63, 'total', 'Total', NULL, NULL),
(64, 'credit_customer', 'Credit Customer', NULL, NULL),
(65, 'paid_customer', 'Paid Customer', NULL, NULL),
(66, 'manufacturer', 'Manufacturer', NULL, NULL),
(67, 'add_manufacturer', 'Add Manufacturer', 'Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø´Ø±ÙƒØ© Ø§Ù„Ù…ØµÙ†Ø¹Ø©', NULL),
(68, 'manufacturer_list', 'Manufacturer List', NULL, NULL),
(69, 'manufacturerlist', '', NULL, NULL),
(70, 'manufacturer_name', 'Manufacturer Name', NULL, NULL),
(71, 'username', 'User Name', NULL, NULL),
(72, 'last_login', 'Last Login', NULL, NULL),
(73, 'last_logout', 'Last Logout', NULL, NULL),
(74, 'ip_address', 'Ip Address', NULL, NULL),
(75, 'currency', 'Currency', NULL, NULL),
(76, 'medicine', 'Medicine', NULL, NULL),
(77, 'add_category', 'Add Category', 'Ø¥Ø¶Ø§ÙØ© ÙØ¦Ø©', NULL),
(78, 'category_list', 'Category List', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„ÙØ¦Ø§Øª', NULL),
(79, 'category_name', 'Category Name', 'Ø§Ø³Ù… Ø§Ù„ØªØµÙ†ÙŠÙ', NULL),
(80, 'status', 'Status', NULL, NULL),
(81, 'unit', 'Unit', NULL, NULL),
(82, 'add_unit', 'Add Unit', 'Ø£Ø¶Ù ÙˆØ­Ø¯Ø©', NULL),
(83, 'unit_name', 'Unit Name', NULL, NULL),
(84, 'unit_list', 'Unit List', NULL, NULL),
(85, 'add_type', 'Add Type', 'Ø£Ø¶Ù Ù†ÙˆØ¹', NULL),
(86, 'type_list', 'Type List', NULL, NULL),
(87, 'type_name', 'Type Name', NULL, NULL),
(88, 'add_medicine', 'Add Medicine', 'Ø£Ø¶Ù Ø§Ù„Ø¯ÙˆØ§Ø¡', NULL),
(89, 'medicine_list', 'Medicine List', NULL, NULL),
(90, 'medicine_name', 'Medicine Name', NULL, NULL),
(91, 'strength', 'Strength', NULL, NULL),
(92, 'generic_name', 'Generic Name', NULL, NULL),
(93, 'box_size', 'Box Size', 'Ø­Ø¬Ù… Ù…Ø±Ø¨Ø¹', NULL),
(94, 'product_location', 'Shelf', NULL, NULL),
(95, 'price', 'Price', NULL, NULL),
(96, 'medicine_type', 'Medicine Type', NULL, NULL),
(97, 'manufacturer_price', 'Manufacturer Price', NULL, NULL),
(98, 'product_details', 'Medicine Details', NULL, NULL),
(99, 'category', 'Category', 'Ø§Ù„ÙØ¦Ø©', NULL),
(100, 'bar_qrcode', 'Bar Code/QR Code', 'Ø§Ù„Ø±Ù…Ø² Ø§Ù„Ø´Ø±ÙŠØ·ÙŠ', NULL),
(101, 'purchase', 'Purchase', NULL, NULL),
(102, 'add_purchase', 'Add Purchase', 'Ø¥Ø¶Ø§ÙØ© Ø´Ø±Ø§Ø¡', NULL),
(103, 'purchase_list', 'Purchase List', NULL, NULL),
(104, 'date', 'Date', NULL, NULL),
(105, 'invoice_no', 'Invoice No', NULL, NULL),
(106, 'details', 'Details', NULL, NULL),
(107, 'payment_type', 'Payment Type', NULL, NULL),
(108, 'bank', 'Bank', 'Ù…ØµØ±Ù', NULL),
(109, 'medicine_information', 'Medicine Information', NULL, NULL),
(110, 'batch_id', 'Batch Id', 'Ø¯ÙØ¹Ø©', NULL),
(111, 'expeire_date', 'Expiry Date', NULL, NULL),
(112, 'stock_qty', 'Stock Qty', NULL, NULL),
(113, 'box_qty', 'Box Qty', 'Ù…Ø±Ø¨Ø¹ Ø§Ù„ÙƒÙ…ÙŠØ©', NULL),
(114, 'quantity', 'Quantity', NULL, NULL),
(115, 'manufacturer_rate', 'Manufacturer Price', NULL, NULL),
(116, 'grand_total', 'Grand Total', NULL, NULL),
(117, 'cash_payment', 'Cash Payment', 'Ø¯ÙØ¹ Ù†Ù‚Ø¯Ø§', NULL),
(118, 'bank_payment', 'Bank Payment', 'Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ù…ØµØ±ÙÙŠØ©', NULL),
(119, 'discount', 'Discount', NULL, NULL),
(120, 'paid_amount', 'Paid Amount', NULL, NULL),
(121, 'due_amount', 'Due Amount', NULL, NULL),
(122, 'start_date', 'Start Date', NULL, NULL),
(123, 'end_date', 'End Date', NULL, NULL),
(124, 'find', 'Find', NULL, NULL),
(125, 'purchase_id', 'Purchase Id', NULL, NULL),
(126, 'total_amount', 'Total Amount', NULL, NULL),
(127, 'invoice', 'Invoice', NULL, NULL),
(128, 'add_invoice', 'Add Invoice', 'Ø£Ø¶Ù Ø§Ù„ÙØ§ØªÙˆØ±Ø©', NULL),
(129, 'invoice_list', 'Invoice List', NULL, NULL),
(130, 'available_qnty', 'Avail Qty', 'Ø§Ù„ÙƒÙ…ÙŠØ© Ø§Ù„Ù…ØªÙˆÙØ±Ø©', NULL),
(131, 'serial', 'Serial', NULL, NULL),
(132, 'invoice_discount', 'Invoice Discount', NULL, NULL),
(133, 'total_discount', 'Total Discount', NULL, NULL),
(134, 'total_tax', 'Total Tax', NULL, NULL),
(135, 'shipping_cost', 'Shipping Cost', NULL, NULL),
(136, 'previous', 'Previous', NULL, NULL),
(137, 'net_total', 'Net Total', NULL, NULL),
(138, 'add_bank', 'Add Bank', 'Ø¥Ø¶Ø§ÙØ© Ø¨Ù†Ùƒ', NULL),
(139, 'bank_list', 'Bank List', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¨Ù†Ùƒ', NULL),
(140, 'bank_name', 'Bank Name', 'Ø§Ø³Ù… Ø§Ù„Ø¨Ù†Ùƒ', NULL),
(141, 'ac_name', 'Account Name', 'Ø£Ø³Ù… Ø§Ù„Ø­Ø³Ø§Ø¨', NULL),
(142, 'ac_number', 'Account Number', 'Ø±Ù‚Ù… Ø­Ø³Ø§Ø¨', NULL),
(143, 'branch', 'Branch', 'ÙØ±Ø¹ Ø´Ø¬Ø±Ø©', NULL),
(144, 'signature_pic', 'Signature Picture', NULL, NULL),
(145, 'hrm', 'Human Resource', NULL, NULL),
(146, 'add_employee', 'Add Employee', 'Ø¥Ø¶Ø§ÙØ© Ù…ÙˆØ¸Ù', NULL),
(147, 'employee_list', 'Employee List', NULL, NULL),
(148, 'employee', 'Employee', NULL, NULL),
(149, 'add_designation', 'Add Designation', 'Ø£Ø¶Ù ØªØ³Ù…ÙŠØ©', NULL),
(150, 'designation_list', 'Designation List', NULL, NULL),
(151, 'designation_name', 'Designation Name', NULL, NULL),
(152, 'designation', 'Designation', NULL, NULL),
(153, 'rate_type', 'Rate Type', NULL, NULL),
(154, 'hour_rate', 'Hour Rate/Salary', NULL, NULL),
(155, 'blood_group', 'Blood Group', 'ÙØµÙŠÙ„Ø© Ø§Ù„Ø¯Ù…', NULL),
(156, 'address_line_1', 'Address Line 1', 'Ø§Ù„Ø¹Ù†ÙˆØ§Ù† Ø§Ù„Ø³Ø·Ø± 1', NULL),
(157, 'address_line_2', 'Address Line 2', 'Ø³Ø·Ø± Ø§Ù„Ø¹Ù†ÙˆØ§Ù† 2', NULL),
(158, 'hourly', 'Hourly', NULL, NULL),
(159, 'salary', 'Salary', NULL, NULL),
(160, 'select_batch', 'Select Batch', NULL, NULL),
(161, 'pos_invoice', 'POS Invoice', NULL, NULL),
(162, 'batch', 'Batch', 'Ø¯ÙØ¹Ø©', NULL),
(163, 'stock', 'Stock', NULL, NULL),
(164, 'barcode', 'Bar-Code', 'Ø§Ù„Ø±Ù…Ø² Ø§Ù„Ø´Ø±ÙŠØ·ÙŠ', NULL),
(165, 'qrcode', 'QR-Code', NULL, NULL),
(166, 'discount_type', 'Discount Type', NULL, NULL),
(167, 'select_discount_type', 'Select Discount Type', NULL, NULL),
(168, 'discount_percentage', 'Discount Percentage', NULL, NULL),
(169, 'fixed_dis', 'Fixed Discount', NULL, NULL),
(170, 'rtlltr', 'RTL/LTR', NULL, NULL),
(171, 'rtl', 'RTL', NULL, NULL),
(172, 'ltr', 'LTR', NULL, NULL),
(173, 'vat', 'Vat', NULL, NULL),
(174, 'invoice_id', 'Invoice Id', NULL, NULL),
(175, 'full_paid', 'Full Paid', NULL, NULL),
(176, 'expiry_date', 'Expiry Date', NULL, NULL),
(177, 'total_vat', 'Total VAT', NULL, NULL),
(179, 'stock_report', 'Stock Report', NULL, NULL),
(180, 'stock_report_batchwise', 'Stock Report(Batch Wise)', NULL, NULL),
(181, 'sale_price', 'Sale Price', NULL, NULL),
(182, 'purchase_price', 'Purchase Price', NULL, NULL),
(183, 'in_qty', 'In Qty', NULL, NULL),
(184, 'out_qty', 'Out Qty', NULL, NULL),
(185, 'stock_sale_price', 'Stock Sale Price', NULL, NULL),
(186, 'stock_purchase_price', 'Stock Purchase Price', NULL, NULL),
(187, 'accounts', 'Accounts', NULL, NULL),
(188, 'coa', 'Chart Of Accounts', NULL, NULL),
(189, 'opening_balance', 'Opening Balance', NULL, NULL),
(190, 'voucher_no', 'Voucher No', NULL, NULL),
(191, 'account_head', 'Account Head', NULL, NULL),
(192, 'amount', 'Amount', NULL, NULL),
(193, 'remark', 'Remarks', NULL, NULL),
(194, 'manufaturer_payment', 'Manufacturer Payment', NULL, NULL),
(195, 'customer_receive', 'Customer Receive', NULL, NULL),
(196, 'cash_adjustment', 'Cash Adjustment', NULL, NULL),
(197, 'adjustment_type', 'Adjustment Type', NULL, NULL),
(198, 'debit', 'Debit', NULL, NULL),
(199, 'credit', 'Credit', NULL, NULL),
(200, 'debit_voucher', 'Debit Voucher', NULL, NULL),
(201, 'cash_in_hand', 'Cash In Hand', NULL, NULL),
(202, 'account_name', 'Account Name', NULL, NULL),
(203, 'code', 'Code', NULL, NULL),
(204, 'credit_head', 'Credit Head', NULL, NULL),
(205, 'debit_head', 'Debit Head', NULL, NULL),
(206, 'credit_voucher', 'Credit Voucher', NULL, NULL),
(207, 'contra_voucher', 'Contra Voucher', NULL, NULL),
(208, 'journal_voucher', 'Journal Voucher', NULL, NULL),
(209, 'voucher_list', 'Voucher List', NULL, NULL),
(210, 'approve', 'Approve', NULL, NULL),
(211, 'update_debit_voucher', 'Update Debit Voucher', NULL, NULL),
(212, 'update_journal_voucher', 'Update Journal Voucher', NULL, NULL),
(213, 'report', 'Report', NULL, NULL),
(214, 'cash_book', 'Cash Book', NULL, NULL),
(215, 'from_date', 'From Date', NULL, NULL),
(216, 'to_date', 'To Date', NULL, NULL),
(217, 'bank_book', 'Bank Book', NULL, NULL),
(218, 'account_code', 'Account Code', NULL, NULL),
(219, 'search', 'Search', NULL, NULL),
(220, 'bank_book_report_of', 'Bank Book Report Of', NULL, NULL),
(221, 'to', 'To', NULL, NULL),
(222, 'type', 'Type', NULL, NULL),
(223, 'general_ledger', 'General Ledger', NULL, NULL),
(224, 'general_head', 'General Head', NULL, NULL),
(225, 'transaction_head', 'Transaction Head', NULL, NULL),
(226, 'with_details', 'With Details', NULL, NULL),
(227, 'pre_balance', 'Pre Balance', NULL, NULL),
(228, 'current_balance', 'Current Balance', NULL, NULL),
(229, 'particulars', 'Particulars', NULL, NULL),
(230, 'general_ledger_of', 'General Ledger Of', NULL, NULL),
(231, 'no_record_found', 'No Record Found', NULL, NULL),
(232, 'inventory_ledger', 'Inventory Ledger', NULL, NULL),
(233, 'trial_balance', 'Trial Balance', NULL, NULL),
(234, 'prepared_by', 'Prepared By', NULL, NULL),
(235, 'chairman', 'Chairman', NULL, NULL),
(236, 'profit_loss', 'Profit Loss', NULL, NULL),
(237, 'statement_of_comprehensive_income', 'Statement Of Comprehensive Income', NULL, NULL),
(238, 'total_income', 'Total Income', NULL, NULL),
(239, 'cash_flow', 'Cash Flow', NULL, NULL),
(240, 'cash_flow_statement', 'Cash Flow Statement', NULL, NULL),
(241, 'opening_cash_and_equivalent', 'Opening Cash and Equipment', NULL, NULL),
(242, 'coa_print', 'COA Print', NULL, NULL),
(243, 'balance_sheet', 'Balance Sheet', NULL, NULL),
(244, 'attendance', 'Attendance', NULL, NULL),
(245, 'add_attendance', 'Add Attendance', NULL, NULL),
(246, 'attendance_list', 'Attendance List', NULL, NULL),
(247, 'sign_in', 'Sign In', NULL, NULL),
(248, 'sign_out', 'Sign Out', NULL, NULL),
(249, 'staytime', 'Staytime', NULL, NULL),
(250, 'datewise_attendance_report', 'Date Wise Attendance Report', NULL, NULL),
(251, 'attendance_report', 'Attendance Report', NULL, NULL),
(252, 'payroll', 'Payroll', NULL, NULL),
(253, 'add_benefits', 'Add Benefits', NULL, NULL),
(254, 'benefit_name', 'Benefit Name', NULL, NULL),
(255, 'benefit_type', 'Benefit Type', NULL, NULL),
(256, 'benefit_list', 'Benefit List', NULL, NULL),
(257, 'add', 'Add', NULL, NULL),
(258, 'deduct', 'Deduct', NULL, NULL),
(259, 'active', 'Active', NULL, NULL),
(260, 'inactive', 'Inactive', NULL, NULL),
(261, 'add_salarysetup', 'Add Salary Setup', NULL, NULL),
(262, 'basic', 'Basic', NULL, NULL),
(263, 'tax', 'Tax', NULL, NULL),
(264, 'salary_type', 'Salary Type', NULL, NULL),
(265, 'gross_salary', 'Gross Salary', NULL, NULL),
(266, 'addition', 'Addition', NULL, NULL),
(267, 'deduction', 'Deduction', NULL, NULL),
(268, 'already_exist', 'Already Exist', NULL, NULL),
(269, 'salary_setup_list', 'Salary Setup List', NULL, NULL),
(270, 'edit_salary_setup', 'Edit Salary Setup', NULL, NULL),
(271, 'salary_generate', 'Salary Generate', NULL, NULL),
(272, 'generate_list', 'Generate List', NULL, NULL),
(273, 'salary_month', 'Salary Month', NULL, NULL),
(274, 'the_salary_of', 'The Salary Of', NULL, NULL),
(275, 'already_generated', 'Already Generated', NULL, NULL),
(276, 'successfully_generated', 'Successfully Generated', NULL, NULL),
(277, 'salary_sheet', 'Salary Sheet', NULL, NULL),
(278, 'month_of_salary', 'Month Of Salary', NULL, NULL),
(279, 'generated_by', 'Generated By', NULL, NULL),
(280, 'salary_payment', 'Salary Payment', NULL, NULL),
(281, 'total_working_hours', 'Total Hours', NULL, NULL),
(282, 'total_working_day', 'Total Working Days', NULL, NULL),
(283, 'paid_by', 'Paid By', NULL, NULL),
(284, 'total_salary', 'Total Salary', NULL, NULL),
(285, 'pay_now', 'Pay Now', NULL, NULL),
(286, 'successfully_paid', 'Successfully Paid', NULL, NULL),
(287, 'payslip', 'Payslip', NULL, NULL),
(288, 'employee_name', 'Employee Name', NULL, NULL),
(289, 'salary_date', 'Salary Date', NULL, NULL),
(290, 'earnings', 'Earnings', NULL, NULL),
(291, 'basic_salary', 'Basic Salary', NULL, NULL),
(292, 'total_addition', 'Total Addition', NULL, NULL),
(293, 'total_deduction', 'Total Deduction', NULL, NULL),
(294, 'net_salary', 'Net Salary', NULL, NULL),
(295, 'ref_number', 'Reference Number', NULL, NULL),
(296, 'employee_signature', 'Employee Signature', NULL, NULL),
(297, 'in_word', 'In Word', NULL, NULL),
(298, 'expense', 'Expense', NULL, NULL),
(299, 'add_expense_item', 'Add Expense Item', NULL, NULL),
(300, 'expense_item_name', 'Expense Item Name', NULL, NULL),
(301, 'expense_item_list', 'Expense Item List', NULL, NULL),
(302, 'add_expense', 'Add Expense', NULL, NULL),
(303, 'expense_type', 'Expense Type', NULL, NULL),
(304, 'expense_list', 'Expense List', NULL, NULL),
(305, 'expense_item', 'Expense Item', NULL, NULL),
(306, 'expense_statement', 'Expense Statement', NULL, NULL),
(307, 'add_person', 'Add Person', NULL, NULL),
(308, 'personal_loan', 'Personal Loan', NULL, NULL),
(309, 'name', 'Name', NULL, NULL),
(310, 'person_list', 'Person List', NULL, NULL),
(311, 'person_name', 'Person Name', NULL, NULL),
(312, 'add_loan', 'Add Loan', NULL, NULL),
(313, 'loan_list', 'Loan List', NULL, NULL),
(314, 'loan', 'Loan', NULL, NULL),
(315, 'total_balance', 'Total Balance', NULL, NULL),
(316, 'person_ledger', 'Person Ledger', NULL, NULL),
(317, 'add_payment', 'Add Payment', NULL, NULL),
(318, 'service', 'Service', NULL, NULL),
(319, 'service_list', 'Service List', NULL, NULL),
(320, 'add_service', 'Add Service', NULL, NULL),
(321, 'service_name', 'Service Name', NULL, NULL),
(322, 'charge', 'Charge', NULL, NULL),
(323, 'description', 'Description', NULL, NULL),
(324, 'hanging_over', 'Hanging Over', NULL, NULL),
(325, 'change', 'Change', NULL, NULL),
(326, 'tax_settings', 'Tax Settings', NULL, NULL),
(327, 'number_of_tax', 'Number Of Tax', NULL, NULL),
(328, 'income_tax', 'Income Tax', NULL, NULL),
(329, 'add_income_tax', 'Add Income Tax', NULL, NULL),
(330, 'start_amount', 'Start Amount', NULL, NULL),
(331, 'end_amount', 'End Amount', NULL, NULL),
(332, 'tax_rate', 'Tax Rate', NULL, NULL),
(333, 'add_more', 'Add More', NULL, NULL),
(334, 'setup', 'Setup', NULL, NULL),
(335, 'income_tax_list', 'Income Tax List', NULL, NULL),
(336, 'update_income_tax', 'Update Income Tax', NULL, NULL),
(337, 'add_closing', 'Add Closing', NULL, NULL),
(338, 'last_day_closing', 'Last Day Closing', NULL, NULL),
(339, 'receive', 'Received', NULL, NULL),
(340, 'payment', 'Payment', NULL, NULL),
(341, 'close', 'Close', NULL, NULL),
(342, 'note_name', 'Note Name', NULL, NULL),
(343, 'pcs', 'PCS', NULL, NULL),
(344, 'closing_list', 'Closing List', NULL, NULL),
(345, 'closed_by', 'Closed By', NULL, NULL),
(346, 'sales_report', 'Sales Report', NULL, NULL),
(347, 'userwise_sales_report', 'User Wise Sales Report', NULL, NULL),
(348, 'sold_by', 'Sold By', NULL, NULL),
(349, 'productwise_sales_report', 'Product Wise Sales Report', NULL, NULL),
(350, 'categorywise_sales_report', 'Category Wise Sales Report', NULL, NULL),
(351, 'purchase_report', 'Purchase Report', NULL, NULL),
(352, 'purchase_by', 'Purchase By', NULL, NULL),
(353, 'purchase_report_categorywise', 'Purchase Report Category Wise', NULL, NULL),
(354, 'return', 'Return', NULL, NULL),
(355, 'add_return', 'Add Return', NULL, NULL),
(356, 'return_from_customer', 'Return From Customer', NULL, NULL),
(357, 'return_to_manufacturer', 'Return To Manufacturer', NULL, NULL),
(358, 'sold_qty', 'Sold Qty', NULL, NULL),
(359, 'ret_quantity', 'Ret Qty', NULL, NULL),
(360, 'check_return', 'Check Return', NULL, NULL),
(361, 'adjs_with_stck', 'Adjust With Stock', NULL, NULL),
(362, 'nt_return', 'Net Return', NULL, NULL),
(363, 'wastage', 'Wastage', NULL, NULL),
(364, 'return_invoice', 'Return Invoice', NULL, NULL),
(365, 'todays_report', 'Today&#39;s Report', NULL, NULL),
(366, 'total_purchase', 'Total Purchase', NULL, NULL),
(367, 'total_sales', 'Total Sales', NULL, NULL),
(368, 'cash_received', 'Cash Received', NULL, NULL),
(369, 'bank_received', 'Bank Receive', NULL, NULL),
(370, 'total_service', 'Total Service', NULL, NULL),
(371, 'invoice_return_list', 'Invoice Return List', NULL, NULL),
(372, 'purchase_qty', 'Purchase QTY', NULL, NULL),
(373, 'manufacturer_return_list', 'Manufacturer Return List', NULL, NULL),
(374, 'income_expense_statement', 'Income Expense Statement', NULL, NULL),
(375, 'best_sale_of_the_month', 'Best Sales Of The Month', NULL, NULL),
(376, 'monthly_progress_report', 'Monthly Progress Report', NULL, NULL),
(377, 'medicine_search', 'Medicine Search', NULL, NULL),
(378, 'enter_what_you_search', 'Enter What You Search', NULL, NULL),
(379, 'invoice_search', 'Invoice Search', NULL, NULL),
(380, 'purchase_search', 'Purchase Search', NULL, NULL),
(381, 'upload_csv', 'Upload Csv', NULL, NULL),
(382, 'import_csv', 'Import Csv', NULL, NULL),
(383, 'leaf_setting', 'Leaf Setting', NULL, NULL),
(384, 'leaf_type', 'Leaf Type', NULL, NULL),
(385, 'total_number', 'Total Number', NULL, NULL),
(386, 'note', 'Note', NULL, NULL),
(387, 'customer_ledger', 'Customer Ledger', NULL, NULL),
(388, 'manufacturer_ledger', 'Manufacturer Ledger', NULL, NULL),
(389, 'menu_title', 'Menu Title', NULL, NULL),
(390, 'panel_setting', 'Panel Setting', NULL, NULL),
(391, 'backup_download', 'Download Backup', NULL, NULL),
(392, 'restore_database', 'Restore Database', NULL, NULL),
(393, 'restore', 'Restore', NULL, NULL),
(394, 'db_import', 'Databse Import', NULL, NULL),
(395, 'import', 'Import', NULL, NULL),
(396, 'autoupdate', 'Autoupdate', NULL, NULL),
(397, 'latestv', 'Latest Verstion', NULL, NULL),
(398, 'current_ver', 'Current Version', NULL, NULL),
(399, 'purchase_key', 'Purchase Key', NULL, NULL),
(400, 'select_option', 'Select Option', NULL, NULL),
(401, 'noupdates', 'No Update Available', NULL, NULL),
(402, 'notesupdate', 'Note: If you want to update software,you Must have immediate previous version', NULL, NULL),
(403, 'sub_total', 'Sub Total', NULL, NULL),
(404, 'edit_purchase', 'Edit Purchase', NULL, NULL),
(405, 'box_pattern', 'Box Pattern', NULL, NULL),
(406, 'box_mrp', 'Box MRP', NULL, NULL),
(407, 'total_purchase_price', 'Total Purchase Price', NULL, NULL),
(408, 'available_stock', 'Available Stock', NULL, NULL),
(409, 'payments', 'Payments', NULL, NULL),
(410, 'print_invoice', 'Print Invoice', NULL, NULL),
(411, 'invoice_from', NULL, NULL, NULL),
(412, 'billing_from', 'Billing From', NULL, NULL),
(413, 'billing_to', 'Billing To', NULL, NULL),
(414, 'qty_box', 'QTY(BOX)', NULL, NULL),
(415, 'per_pcs_price', 'Per Pcs Price', NULL, NULL),
(416, 'wastage_return_list', 'Wastage Return List', NULL, NULL),
(417, 'currency_name', 'Currency Name', NULL, NULL),
(418, 'icon', 'Icon', NULL, NULL),
(419, 'currency_list', 'Currency List', NULL, NULL),
(420, 'add_currency', 'Add Currency', NULL, NULL),
(421, 'login_background_image', 'Login Background Image', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_information`
--

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_leaf_setting`
--

CREATE TABLE `medicine_leaf_setting` (
  `id` int(11) NOT NULL,
  `leaf_type` text NOT NULL,
  `total_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(3, 'dashboard', NULL, NULL, NULL, 1),
(4, 'customer', NULL, NULL, NULL, 1),
(5, 'manufacturer', NULL, NULL, NULL, 1),
(6, 'medicine', NULL, NULL, NULL, 1),
(7, 'purchase', NULL, NULL, NULL, 1),
(8, 'invoice', NULL, NULL, NULL, 1),
(9, 'return', NULL, NULL, NULL, 1),
(10, 'stock', NULL, NULL, NULL, 1),
(11, 'bank', NULL, NULL, NULL, 1),
(12, 'accounts', NULL, NULL, NULL, 1),
(13, 'hrm', NULL, NULL, NULL, 1),
(14, 'service', NULL, NULL, NULL, 1),
(15, 'report', NULL, NULL, NULL, 1),
(16, 'tax', NULL, NULL, NULL, 1),
(17, 'search', NULL, NULL, 'search', 1),
(18, 'application_setting', NULL, NULL, 'application_setting', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_information`
--

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `strength` varchar(250) NOT NULL,
  `box_size` varchar(30) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `b_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `m_b_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `product_type` varchar(50) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_price` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `product_details` varchar(250) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL,
  `chalan_no` varchar(100) NOT NULL,
  `manufacturer_id` varchar(100) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT 0.00,
  `total_vat` decimal(10,0) DEFAULT NULL,
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL,
  `purchase_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `quantity` float DEFAULT NULL,
  `box_qty` float DEFAULT NULL,
  `unit_rate` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `old_mprice` decimal(10,0) DEFAULT NULL,
  `mrp` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `single_vat` decimal(10,2) DEFAULT NULL,
  `batch_id` varchar(25) NOT NULL,
  `expeire_date` date DEFAULT NULL,
  `status` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_return`
--

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(30) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `purchase_id` varchar(30) DEFAULT NULL,
  `date_purchase` varchar(20) NOT NULL,
  `date_return` varchar(30) NOT NULL,
  `byy_qty` decimal(12,2) DEFAULT NULL,
  `batch_id` varchar(50) DEFAULT NULL,
  `ret_qty` decimal(10,2) DEFAULT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `manufacturer_id` varchar(20) DEFAULT NULL,
  `product_rate` decimal(12,2) DEFAULT NULL,
  `deduction` decimal(10,2) DEFAULT NULL,
  `total_deduct` decimal(12,2) DEFAULT NULL,
  `total_tax` decimal(12,2) DEFAULT NULL,
  `total_ret_amount` decimal(10,2) DEFAULT NULL,
  `net_total_amount` decimal(10,2) DEFAULT NULL,
  `reason` text NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_service`
--

CREATE TABLE `product_service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_benefit`
--

CREATE TABLE `salary_benefit` (
  `id` int(11) NOT NULL,
  `benefit_name` varchar(100) NOT NULL,
  `benefit_type` int(2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `gdate` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `generate_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` text DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` decimal(20,2) DEFAULT NULL,
  `total_discount` decimal(20,2) DEFAULT NULL,
  `invoice_discount` decimal(10,2) DEFAULT NULL,
  `total_tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `shipping_cost` decimal(10,2) DEFAULT NULL,
  `previous` decimal(10,2) DEFAULT NULL,
  `details` varchar(250) NOT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `bank_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `discount_amount` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `login_background` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `currency` varchar(30) DEFAULT NULL,
  `rtl` int(11) NOT NULL DEFAULT 0,
  `discount_type` int(11) NOT NULL,
  `timezone` varchar(150) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `update_notification` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `menu_title`, `address`, `email`, `phone`, `logo`, `login_background`, `favicon`, `language`, `currency`, `rtl`, `discount_type`, `timezone`, `footer_text`, `update_notification`) VALUES
(1, 'Bdtask Ltd', 'pharmacare', 'Demo Address', 'bdtask@gmail.com', '00123456734', '/assets/dist/img/logo/1610774737_a80f4e581f1e063f13a7.png', '/assets/dist/img/logo/1613647690_9a202d45c2902dd82b57.jpg', '/assets/dist/img/favicon/1612675588_2e4ae5951792e016e4c5.png', 'english', 'à§³', 0, 1, 'Asia/Dhaka', 'Copyright@bdtaskkk', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 3, 'income_expense_statement', NULL, NULL, 'income_expense_statement', 1),
(2, 3, 'best_sale_of_the_month', NULL, NULL, 'best_sale_of_the_month', 1),
(3, 3, 'monthly_progress_report', NULL, NULL, 'monthly_progress_report', 1),
(4, 3, 'todays_report', NULL, NULL, 'todays_report', 1),
(5, 4, 'add_customer', NULL, NULL, 'add_customer', 1),
(6, 4, 'customer_list', NULL, NULL, 'customer_list', 1),
(7, 4, 'credit_customer', NULL, NULL, 'credit_customer', 1),
(8, 4, 'paid_customer', NULL, NULL, 'paid_customer', 1),
(9, 5, 'add_manufacturer', NULL, NULL, 'add_manufacturer', 1),
(10, 5, 'manufacturer_list', NULL, NULL, 'manufacturer_list', 1),
(11, 6, 'add_category', NULL, NULL, 'add_category', 1),
(12, 6, 'category_list', NULL, NULL, 'category_list', 1),
(13, 6, 'add_unit', NULL, NULL, 'add_unit', 1),
(14, 6, 'unit_list', NULL, NULL, 'unit_list', 1),
(15, 6, 'add_type', NULL, NULL, 'add_type', 1),
(16, 6, 'type_list', NULL, NULL, 'type_list', 1),
(17, 6, 'add_medicine', NULL, NULL, 'add_medicine', 1),
(18, 6, 'medicine_list', NULL, NULL, 'medicine_list', 1),
(19, 7, 'add_purchase', NULL, NULL, 'add_purchase', 1),
(20, 7, 'purchase_list', NULL, NULL, 'purchase_list', 1),
(21, 8, 'add_invoice', NULL, NULL, 'add_invoice', 1),
(22, 8, 'pos_invoice', NULL, NULL, 'pos_invoice', 1),
(23, 8, 'invoice_list', NULL, NULL, 'invoice_list', 1),
(24, 9, 'add_return', NULL, NULL, 'add_return', 1),
(25, 9, 'invoice_return_list', NULL, NULL, 'invoice_return_list', 1),
(26, 9, 'manufacturer_return_list', NULL, NULL, 'manufacturer_return_list', 1),
(27, 10, 'stock_report', NULL, NULL, 'stock_report', 1),
(28, 10, 'stock_report_batchwise', NULL, NULL, 'stock_report_batchwise', 1),
(29, 11, 'add_bank', NULL, NULL, 'add_bank', 1),
(30, 11, 'bank_list', NULL, NULL, 'bank_list', 1),
(31, 12, 'coa', NULL, NULL, 'coa', 1),
(32, 12, 'opening_balance', NULL, NULL, 'opening_balance', 1),
(33, 12, 'manufaturer_payment', NULL, NULL, 'manufaturer_payment', 1),
(34, 12, 'customer_receive', NULL, NULL, 'customer_receive', 1),
(35, 12, 'cash_adjustment', NULL, NULL, 'cash_adjustment', 1),
(36, 12, 'debit_voucher', NULL, NULL, 'debit_voucher', 1),
(37, 12, 'credit_voucher', NULL, NULL, 'credit_voucher', 1),
(38, 12, 'contra_voucher', NULL, NULL, 'contra_voucher', 1),
(39, 12, 'journal_voucher', NULL, NULL, 'journal_voucher', 1),
(40, 12, 'voucher_list', NULL, NULL, 'voucher_list', 1),
(41, 12, 'report', NULL, NULL, 'report', 1),
(42, 12, 'cash_book', NULL, NULL, 'cash_book', 1),
(43, 12, 'bank_book', NULL, NULL, 'bank_book', 1),
(44, 12, 'general_ledger', NULL, NULL, 'general_ledger', 1),
(46, 12, 'trial_balance', NULL, NULL, 'trial_balance', 1),
(47, 12, 'profit_loss', NULL, NULL, 'profit_loss', 1),
(48, 12, 'cash_flow', NULL, NULL, 'cash_flow', 1),
(49, 12, 'coa_print', NULL, NULL, 'coa_print', 1),
(50, 12, 'balance_sheet', NULL, NULL, 'balance_sheet', 1),
(51, 15, 'add_closing', NULL, NULL, 'add_closing', 1),
(52, 15, 'closing_list', NULL, NULL, 'closing_list', 1),
(53, 15, 'sales_report', NULL, NULL, 'sales_report', 1),
(54, 15, 'userwise_sales_report', NULL, NULL, 'userwise_sales_report', 1),
(55, 15, 'productwise_sales_report', NULL, NULL, 'productwise_sales_report', 1),
(56, 15, 'categorywise_sales_report', NULL, NULL, 'categorywise_sales_report', 1),
(57, 15, 'purchase_report', NULL, NULL, 'purchase_report', 1),
(58, 15, 'purchase_report_categorywise', NULL, NULL, 'purchase_report_categorywise', 1),
(59, 13, 'employee', NULL, NULL, 'employee', 1),
(60, 13, 'add_designation', NULL, NULL, 'add_designation', 1),
(61, 13, 'designation_list', NULL, NULL, 'designation_list', 1),
(62, 13, 'add_employee', NULL, NULL, 'add_employee', 1),
(63, 13, 'employee_list', NULL, NULL, 'employee_list', 1),
(64, 13, 'attendance', NULL, NULL, 'attendance', 1),
(65, 13, 'add_attendance', NULL, NULL, 'add_attendance', 1),
(66, 13, 'attendance_list', NULL, NULL, 'attendance_list', 1),
(67, 13, 'datewise_attendance_report', NULL, NULL, 'datewise_attendance_report', 1),
(68, 13, 'payroll', NULL, NULL, 'payroll', 1),
(69, 13, 'add_benefits', NULL, NULL, 'add_benefits', 1),
(70, 13, 'benefit_list', NULL, NULL, 'benefit_list', 1),
(71, 13, 'add_salarysetup', NULL, NULL, 'add_salarysetup', 1),
(72, 13, 'salary_setup_list', NULL, NULL, 'salary_setup_list', 1),
(73, 13, 'salary_generate', NULL, NULL, 'salary_generate', 1),
(74, 13, 'salary_sheet', NULL, NULL, 'salary_sheet', 1),
(75, 13, 'salary_payment', NULL, NULL, 'salary_payment', 1),
(76, 13, 'expense', NULL, NULL, 'expense', 1),
(77, 13, 'add_expense_item', NULL, NULL, 'add_expense_item', 1),
(78, 13, 'expense_item_list', NULL, NULL, 'expense_item_list', 1),
(79, 13, 'add_expense', NULL, NULL, 'add_expense', 1),
(80, 13, 'expense_list', NULL, NULL, 'expense_list', 1),
(81, 13, 'expense_statement', NULL, NULL, 'expense_statement', 1),
(82, 13, 'loan', NULL, NULL, 'loan', 1),
(83, 13, 'add_person', NULL, NULL, 'add_person', 1),
(84, 13, 'person_list', NULL, NULL, 'person_list', 1),
(85, 13, 'add_loan', NULL, NULL, 'add_loan', 1),
(86, 13, 'add_payment', NULL, NULL, 'add_payment', 1),
(87, 13, 'loan_list', NULL, NULL, 'loan_list', 1),
(88, 13, 'person_ledger', NULL, NULL, 'person_ledger', 1),
(89, 16, 'tax_settings', NULL, NULL, 'tax_settings', 1),
(90, 16, 'add_income_tax', NULL, NULL, 'add_income_tax', 1),
(91, 16, 'income_tax_list', NULL, NULL, 'income_tax_list', 1),
(92, 14, 'add_service', NULL, NULL, 'add_service', 1),
(93, 14, 'service_list', NULL, NULL, 'service_list', 1),
(94, 14, 'add_invoice', NULL, NULL, 'service_invoice_form', 1),
(95, 14, 'invoice_list', NULL, NULL, 'service_invoice_list', 1),
(96, 17, 'medicine_search', NULL, NULL, 'medicine_search', 1),
(97, 17, 'invoice_search', NULL, NULL, 'invoice_search', 1),
(98, 17, 'purchase_search', NULL, NULL, 'purchase_search', 1),
(99, 18, 'add_user', NULL, NULL, 'add_user', 1),
(100, 18, 'user_list', NULL, NULL, 'user_list', 1),
(101, 18, 'currency', NULL, NULL, 'currency', 1),
(102, 18, 'setting', NULL, NULL, 'setting', 1),
(103, 10, 'available_stock', NULL, NULL, 'available_stock', 1),
(104, 18, 'backup_download', NULL, NULL, 'backup_download', 1),
(105, 18, 'restore_database', NULL, NULL, 'restore_database', 1),
(106, 18, 'db_import', NULL, NULL, 'db_import', 1),
(107, 18, 'panel_setting', NULL, NULL, 'panel_setting', 1),
(108, 18, 'add_role', NULL, NULL, 'add_role', 1),
(109, 18, 'role_list', NULL, NULL, 'role_list', 1),
(110, 18, 'assign_role', NULL, NULL, 'assign_role', 1),
(111, 18, 'language', NULL, NULL, 'language', 1),
(112, 9, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `relation_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme_color_setup`
--

CREATE TABLE `theme_color_setup` (
  `id` int(11) NOT NULL,
  `color_code` varchar(25) NOT NULL,
  `content_text_color` varchar(20) DEFAULT NULL,
  `font_one` varchar(200) NOT NULL,
  `font_two` varchar(200) NOT NULL,
  `body_font_size` varchar(11) NOT NULL,
  `logo_text_color` varchar(20) DEFAULT NULL,
  `menu_font_color` varchar(10) DEFAULT NULL,
  `menu_hover_color` varchar(10) DEFAULT NULL,
  `menubg_color` varchar(10) DEFAULT NULL,
  `active_menu_color` varchar(30) DEFAULT NULL,
  `active_menu_bgcolor` varchar(30) DEFAULT NULL,
  `body_line_hight` varchar(11) NOT NULL,
  `menu_font_size` varchar(11) DEFAULT NULL,
  `menu_line_hight` varchar(20) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `theme_color_setup`
--

INSERT INTO `theme_color_setup` (`id`, `color_code`, `content_text_color`, `font_one`, `font_two`, `body_font_size`, `logo_text_color`, `menu_font_color`, `menu_hover_color`, `menubg_color`, `active_menu_color`, `active_menu_bgcolor`, `body_line_hight`, `menu_font_size`, `menu_line_hight`, `active_status`) VALUES
(5, '#bad6d8', '#181616', 'Rock Salt', 'Poppins', '14', '#fafcf8', '#f3f2ec', '#ffa53d', '#1864cd', '#f5f5f5', '#3fb7de', '', '13', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `token_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `token_id`) VALUES
(1, 'Admin ', 'User', '', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '/assets/dist/img/user/1610013835_02bd092e4cb106d94293.jpg', '2025-04-23 09:17:42', '2021-02-03 03:34:52', '103.170.140.9', 1, 1, NULL),
(2, NULL, NULL, NULL, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL),
(3, NULL, NULL, NULL, 'info@creativedesign.com.bd', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '2025-05-11 13:58:34', '2025-05-11 04:32:41', '103.161.71.15', 1, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `HeadCode` (`HeadCode`);

--
-- Indexes for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `bank_information`
--
ALTER TABLE `bank_information`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `daily_closing`
--
ALTER TABLE `daily_closing`
  ADD PRIMARY KEY (`closing_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_information`
--
ALTER TABLE `employee_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `generate_id` (`generate_id`);

--
-- Indexes for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `invoice` (`invoice`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `medicine_leaf_setting`
--
ALTER TABLE `medicine_leaf_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indexes for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `product_return`
--
ALTER TABLE `product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indexes for table `salary_benefit`
--
ALTER TABLE `salary_benefit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indexes for table `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_color_setup`
--
ALTER TABLE `theme_color_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_information`
--
ALTER TABLE `bank_information`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_closing`
--
ALTER TABLE `daily_closing`
  MODIFY `closing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_information`
--
ALTER TABLE `employee_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  MODIFY `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_leaf_setting`
--
ALTER TABLE `medicine_leaf_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_information`
--
ALTER TABLE `person_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_return`
--
ALTER TABLE `product_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_service`
--
ALTER TABLE `product_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_benefit`
--
ALTER TABLE `salary_benefit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme_color_setup`
--
ALTER TABLE `theme_color_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
