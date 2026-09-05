#
# TABLE STRUCTURE FOR: acc_coa
#

DROP TABLE IF EXISTS `acc_coa`;

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
  `UpdateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`HeadName`),
  KEY `customer_id` (`customer_id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `HeadCode` (`HeadCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102030000001', '1-Walking Customer', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 1, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2021-01-07 04:33:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2013-09-18 15:29:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1', 'Asset', 'COA', 0, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2020-12-01 00:37:22', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-06-12 11:47:24', 'admin', '2015-10-15 15:57:55');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('401', 'Cost of Goods Purchase', 'Expence', 1, 1, 1, 1, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2021-11-16 04:32:28', NULL, NULL);
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102', 'Current Asset', 'Asset', 1, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2020-12-15 00:14:54', 'admin', '2018-07-07 11:23:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-04-08 10:36:32', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('404', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-05-23 05:46:14', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4', 'Expence', 'COA', 0, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-06-18 11:40:41', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('405', 'Fixed Assets Cost', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-05-29 05:32:01', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-05-20 05:32:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '2', '2018-07-07 15:21:58', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:37:20', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('101', 'Non Current Assets', 'Asset', 1, 1, 0, 0, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-10-15 15:29:11');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('402', 'Product Purchase', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-05-20 07:46:59', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('304', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-06-16 12:15:40', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('305', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-05-22 13:36:02', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020303', 'Service Receive', 'Account Receivable', 3, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2020-12-19 03:31:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50205', 'Supplier Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2019-10-06 06:18:49', '', '2019-08-10 11:01:12');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('103', 'Tassets', 'Asset', 1, 1, 1, 1, 'A', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '1', '2020-12-01 00:37:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `bank_id`, `person_id`, `service_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50206', 'Tax', 'Current Liabilities', 2, 1, 1, 1, 'L', 0, NULL, NULL, NULL, NULL, NULL, 0, '0.00', '10', '2020-12-20 02:41:04', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: acc_transaction
#

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `is_opening` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `ID` (`ID`),
  KEY `COAID` (`COAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: attendance
#

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sign_out` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `staytime` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: bank_information
#

DROP TABLE IF EXISTS `bank_information`;

CREATE TABLE `bank_information` (
  `bank_id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: currency_tbl
#

DROP TABLE IF EXISTS `currency_tbl`;

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES (1, 'Taka', '৳');


#
# TABLE STRUCTURE FOR: customer_information
#

DROP TABLE IF EXISTS `customer_information`;

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `create_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES ('1', 'Walking Customer', '', '', '324234234', '', '', '', '', '', '', '', '', '', 1, '2021-01-07 11:33:34', '1');


#
# TABLE STRUCTURE FOR: daily_closing
#

DROP TABLE IF EXISTS `daily_closing`;

CREATE TABLE `daily_closing` (
  `closing_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float DEFAULT NULL,
  `status` int(2) NOT NULL,
  `closed_by` int(11) NOT NULL,
  PRIMARY KEY (`closing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: designation
#

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: employee_information
#

DROP TABLE IF EXISTS `employee_information`;

CREATE TABLE `employee_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: employee_salary_payment
#

DROP TABLE IF EXISTS `employee_salary_payment`;

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `generate_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `paid_by` int(11) DEFAULT NULL,
  `salary_month` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`emp_sal_pay_id`),
  KEY `employee_id` (`employee_id`),
  KEY `generate_id` (`generate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: employee_salary_setup
#

DROP TABLE IF EXISTS `employee_salary_setup`;

CREATE TABLE `employee_salary_setup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `sal_type` int(11) NOT NULL,
  `salary_type_id` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gross_salary` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: expense_item
#

DROP TABLE IF EXISTS `expense_item`;

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_item_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: invoice
#

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `invoice` (`invoice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: invoice_details
#

DROP TABLE IF EXISTS `invoice_details`;

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `quantity` float NOT NULL,
  `rate` float DEFAULT NULL,
  `manufacturer_rate` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `arabic` text DEFAULT NULL,
  `hindi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (1, 'email', 'Email', 'البريد الإلكتروني', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (2, 'preview', 'Preview', 'معاينة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (3, 'about', 'About', 'حول', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (4, 'password', 'Password', 'كلمه السر', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (5, 'image', 'Image', 'صورة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (6, 'successfully_deleted', 'Successfully Deleted', 'تم الحذف بنجاح', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (7, 'please_try_again', 'Please Try Again', 'حاول مرة اخرى', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (8, 'are_you_sure', 'Are You Sure ??', 'هل أنت واثق؟', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (9, 'save', 'Save', 'حفظ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (10, 'reset', 'Reset', 'إعادة تعيين', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (11, 'company_title', 'Company Title', 'عنوان التطبيق', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (12, 'address', 'Address', 'عنوان', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (13, 'phone', 'Phone', 'هاتف', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (14, 'favicon', 'Favicon', 'فافيكون', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (15, 'logo', 'Logo', 'شعار', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (16, 'footer_text', 'Footer Text', 'نص التذييل', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (17, 'language', 'Language', 'لغة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (18, 'firstname', 'First Name', 'الاسم الاول', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (19, 'lastname', 'Last Name', 'الكنية', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (20, 'add_module', 'Add Module', 'إضافة وحدة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (21, 'module_name', 'Module Name', 'اسم وحدة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (22, 'successfully_inserted', 'Successfully Saved', 'تم الإدراج بنجاح', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (23, 'menu_name', 'Menu Name', 'اسم القائمة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (24, 'role_name', 'Role Name', 'اسم الدور', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (25, 'create', 'Create', 'خلق', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (26, 'read', 'Read', 'اقرأ', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (27, 'update', 'Update', 'محدث', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (28, 'delete', 'Delete', 'حذف', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (29, 'sl_no', 'Sl', 'مسلسل', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (30, 'application_setting', 'Application Setting', 'اعدادات التطبيق', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (31, 'user', 'User', 'المستعمل', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (32, 'add_menu', 'Add Menu', 'إضافة قائمة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (33, 'action', 'Action', 'عمل', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (34, 'successfully_updated', 'Successfully Updated', 'تم التحديث بنجاح', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (35, 'no_role_selected', 'No Role assigned Yet', 'لم يتم تحديد دور', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (36, 'test_phrase', '', '', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (37, 'dashboard', 'Dashboard', 'لوحة القيادة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (38, 'add_user', 'Add User', 'إضافة مستخدم', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (39, 'user_list', 'User List', 'قائمة المستخدم', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (40, 'setting', 'Setting', 'ضبط', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (41, 'add_role', 'Add Role', 'أضف دورًا', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (42, 'role_list', 'Role List', 'قائمة الأدوار', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (43, 'assign_role', 'Assign Role', 'تعيين الدور', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (44, 'welcome_back', 'Welcome Back', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (45, 'add_customer', 'Add Customer', 'إضافة الزبون', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (46, 'customer_name', 'Customer Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (47, 'mobile_no', 'Mobile No', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (48, 'email_address', 'Email Address', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (49, 'contact', 'Contact', 'اتصل', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (50, 'address1', 'Address 1', 'العنوان 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (51, 'address2', 'Address 2', 'العنوان 2', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (52, 'fax', 'Fax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (53, 'city', 'City', 'مدينة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (54, 'state', 'State', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (55, 'zip', 'Zip', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (56, 'country', 'Country', 'بلد', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (57, 'previous_balance', 'Previous Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (58, 'save_successfully', 'Successfully Saved', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (59, 'update_successfully', 'Successfully Updated', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (60, 'customer_list', 'Customer List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (61, 'balance', 'Balance', 'توازن', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (62, 'customer', 'Customer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (63, 'total', 'Total', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (64, 'credit_customer', 'Credit Customer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (65, 'paid_customer', 'Paid Customer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (66, 'manufacturer', 'Manufacturer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (67, 'add_manufacturer', 'Add Manufacturer', 'إضافة الشركة المصنعة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (68, 'manufacturer_list', 'Manufacturer List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (69, 'manufacturerlist', '', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (70, 'manufacturer_name', 'Manufacturer Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (71, 'username', 'User Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (72, 'last_login', 'Last Login', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (73, 'last_logout', 'Last Logout', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (74, 'ip_address', 'Ip Address', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (75, 'currency', 'Currency', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (76, 'medicine', 'Medicine', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (77, 'add_category', 'Add Category', 'إضافة فئة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (78, 'category_list', 'Category List', 'قائمة الفئات', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (79, 'category_name', 'Category Name', 'اسم التصنيف', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (80, 'status', 'Status', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (81, 'unit', 'Unit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (82, 'add_unit', 'Add Unit', 'أضف وحدة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (83, 'unit_name', 'Unit Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (84, 'unit_list', 'Unit List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (85, 'add_type', 'Add Type', 'أضف نوع', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (86, 'type_list', 'Type List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (87, 'type_name', 'Type Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (88, 'add_medicine', 'Add Medicine', 'أضف الدواء', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (89, 'medicine_list', 'Medicine List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (90, 'medicine_name', 'Medicine Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (91, 'strength', 'Strength', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (92, 'generic_name', 'Generic Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (93, 'box_size', 'Box Size', 'حجم مربع', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (94, 'product_location', 'Shelf', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (95, 'price', 'Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (96, 'medicine_type', 'Medicine Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (97, 'manufacturer_price', 'Manufacturer Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (98, 'product_details', 'Medicine Details', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (99, 'category', 'Category', 'الفئة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (100, 'bar_qrcode', 'Bar Code/QR Code', 'الرمز الشريطي', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (101, 'purchase', 'Purchase', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (102, 'add_purchase', 'Add Purchase', 'إضافة شراء', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (103, 'purchase_list', 'Purchase List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (104, 'date', 'Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (105, 'invoice_no', 'Invoice No', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (106, 'details', 'Details', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (107, 'payment_type', 'Payment Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (108, 'bank', 'Bank', 'مصرف', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (109, 'medicine_information', 'Medicine Information', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (110, 'batch_id', 'Batch Id', 'دفعة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (111, 'expeire_date', 'Expiry Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (112, 'stock_qty', 'Stock Qty', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (113, 'box_qty', 'Box Qty', 'مربع الكمية', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (114, 'quantity', 'Quantity', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (115, 'manufacturer_rate', 'Manufacturer Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (116, 'grand_total', 'Grand Total', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (117, 'cash_payment', 'Cash Payment', 'دفع نقدا', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (118, 'bank_payment', 'Bank Payment', 'الدفع المصرفية', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (119, 'discount', 'Discount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (120, 'paid_amount', 'Paid Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (121, 'due_amount', 'Due Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (122, 'start_date', 'Start Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (123, 'end_date', 'End Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (124, 'find', 'Find', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (125, 'purchase_id', 'Purchase Id', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (126, 'total_amount', 'Total Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (127, 'invoice', 'Invoice', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (128, 'add_invoice', 'Add Invoice', 'أضف الفاتورة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (129, 'invoice_list', 'Invoice List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (130, 'available_qnty', 'Avail Qty', 'الكمية المتوفرة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (131, 'serial', 'Serial', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (132, 'invoice_discount', 'Invoice Discount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (133, 'total_discount', 'Total Discount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (134, 'total_tax', 'Total Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (135, 'shipping_cost', 'Shipping Cost', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (136, 'previous', 'Previous', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (137, 'net_total', 'Net Total', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (138, 'add_bank', 'Add Bank', 'إضافة بنك', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (139, 'bank_list', 'Bank List', 'قائمة البنك', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (140, 'bank_name', 'Bank Name', 'اسم البنك', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (141, 'ac_name', 'Account Name', 'أسم الحساب', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (142, 'ac_number', 'Account Number', 'رقم حساب', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (143, 'branch', 'Branch', 'فرع شجرة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (144, 'signature_pic', 'Signature Picture', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (145, 'hrm', 'Human Resource', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (146, 'add_employee', 'Add Employee', 'إضافة موظف', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (147, 'employee_list', 'Employee List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (148, 'employee', 'Employee', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (149, 'add_designation', 'Add Designation', 'أضف تسمية', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (150, 'designation_list', 'Designation List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (151, 'designation_name', 'Designation Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (152, 'designation', 'Designation', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (153, 'rate_type', 'Rate Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (154, 'hour_rate', 'Hour Rate/Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (155, 'blood_group', 'Blood Group', 'فصيلة الدم', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (156, 'address_line_1', 'Address Line 1', 'العنوان السطر 1', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (157, 'address_line_2', 'Address Line 2', 'سطر العنوان 2', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (158, 'hourly', 'Hourly', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (159, 'salary', 'Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (160, 'select_batch', 'Select Batch', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (161, 'pos_invoice', 'POS Invoice', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (162, 'batch', 'Batch', 'دفعة', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (163, 'stock', 'Stock', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (164, 'barcode', 'Bar-Code', 'الرمز الشريطي', NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (165, 'qrcode', 'QR-Code', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (166, 'discount_type', 'Discount Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (167, 'select_discount_type', 'Select Discount Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (168, 'discount_percentage', 'Discount Percentage', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (169, 'fixed_dis', 'Fixed Discount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (170, 'rtlltr', 'RTL/LTR', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (171, 'rtl', 'RTL', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (172, 'ltr', 'LTR', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (173, 'vat', 'Vat', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (174, 'invoice_id', 'Invoice Id', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (175, 'full_paid', 'Full Paid', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (176, 'expiry_date', 'Expiry Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (177, 'total_vat', 'Total VAT', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (179, 'stock_report', 'Stock Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (180, 'stock_report_batchwise', 'Stock Report(Batch Wise)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (181, 'sale_price', 'Sale Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (182, 'purchase_price', 'Purchase Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (183, 'in_qty', 'In Qty', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (184, 'out_qty', 'Out Qty', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (185, 'stock_sale_price', 'Stock Sale Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (186, 'stock_purchase_price', 'Stock Purchase Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (187, 'accounts', 'Accounts', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (188, 'coa', 'Chart Of Accounts', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (189, 'opening_balance', 'Opening Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (190, 'voucher_no', 'Voucher No', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (191, 'account_head', 'Account Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (192, 'amount', 'Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (193, 'remark', 'Remarks', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (194, 'manufaturer_payment', 'Manufacturer Payment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (195, 'customer_receive', 'Customer Receive', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (196, 'cash_adjustment', 'Cash Adjustment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (197, 'adjustment_type', 'Adjustment Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (198, 'debit', 'Debit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (199, 'credit', 'Credit', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (200, 'debit_voucher', 'Debit Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (201, 'cash_in_hand', 'Cash In Hand', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (202, 'account_name', 'Account Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (203, 'code', 'Code', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (204, 'credit_head', 'Credit Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (205, 'debit_head', 'Debit Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (206, 'credit_voucher', 'Credit Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (207, 'contra_voucher', 'Contra Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (208, 'journal_voucher', 'Journal Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (209, 'voucher_list', 'Voucher List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (210, 'approve', 'Approve', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (211, 'update_debit_voucher', 'Update Debit Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (212, 'update_journal_voucher', 'Update Journal Voucher', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (213, 'report', 'Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (214, 'cash_book', 'Cash Book', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (215, 'from_date', 'From Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (216, 'to_date', 'To Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (217, 'bank_book', 'Bank Book', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (218, 'account_code', 'Account Code', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (219, 'search', 'Search', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (220, 'bank_book_report_of', 'Bank Book Report Of', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (221, 'to', 'To', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (222, 'type', 'Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (223, 'general_ledger', 'General Ledger', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (224, 'general_head', 'General Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (225, 'transaction_head', 'Transaction Head', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (226, 'with_details', 'With Details', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (227, 'pre_balance', 'Pre Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (228, 'current_balance', 'Current Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (229, 'particulars', 'Particulars', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (230, 'general_ledger_of', 'General Ledger Of', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (231, 'no_record_found', 'No Record Found', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (232, 'inventory_ledger', 'Inventory Ledger', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (233, 'trial_balance', 'Trial Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (234, 'prepared_by', 'Prepared By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (235, 'chairman', 'Chairman', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (236, 'profit_loss', 'Profit Loss', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (237, 'statement_of_comprehensive_income', 'Statement Of Comprehensive Income', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (238, 'total_income', 'Total Income', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (239, 'cash_flow', 'Cash Flow', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (240, 'cash_flow_statement', 'Cash Flow Statement', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (241, 'opening_cash_and_equivalent', 'Opening Cash and Equipment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (242, 'coa_print', 'COA Print', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (243, 'balance_sheet', 'Balance Sheet', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (244, 'attendance', 'Attendance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (245, 'add_attendance', 'Add Attendance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (246, 'attendance_list', 'Attendance List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (247, 'sign_in', 'Sign In', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (248, 'sign_out', 'Sign Out', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (249, 'staytime', 'Staytime', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (250, 'datewise_attendance_report', 'Date Wise Attendance Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (251, 'attendance_report', 'Attendance Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (252, 'payroll', 'Payroll', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (253, 'add_benefits', 'Add Benefits', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (254, 'benefit_name', 'Benefit Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (255, 'benefit_type', 'Benefit Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (256, 'benefit_list', 'Benefit List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (257, 'add', 'Add', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (258, 'deduct', 'Deduct', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (259, 'active', 'Active', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (260, 'inactive', 'Inactive', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (261, 'add_salarysetup', 'Add Salary Setup', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (262, 'basic', 'Basic', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (263, 'tax', 'Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (264, 'salary_type', 'Salary Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (265, 'gross_salary', 'Gross Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (266, 'addition', 'Addition', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (267, 'deduction', 'Deduction', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (268, 'already_exist', 'Already Exist', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (269, 'salary_setup_list', 'Salary Setup List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (270, 'edit_salary_setup', 'Edit Salary Setup', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (271, 'salary_generate', 'Salary Generate', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (272, 'generate_list', 'Generate List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (273, 'salary_month', 'Salary Month', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (274, 'the_salary_of', 'The Salary Of', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (275, 'already_generated', 'Already Generated', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (276, 'successfully_generated', 'Successfully Generated', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (277, 'salary_sheet', 'Salary Sheet', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (278, 'month_of_salary', 'Month Of Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (279, 'generated_by', 'Generated By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (280, 'salary_payment', 'Salary Payment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (281, 'total_working_hours', 'Total Hours', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (282, 'total_working_day', 'Total Working Days', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (283, 'paid_by', 'Paid By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (284, 'total_salary', 'Total Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (285, 'pay_now', 'Pay Now', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (286, 'successfully_paid', 'Successfully Paid', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (287, 'payslip', 'Payslip', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (288, 'employee_name', 'Employee Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (289, 'salary_date', 'Salary Date', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (290, 'earnings', 'Earnings', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (291, 'basic_salary', 'Basic Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (292, 'total_addition', 'Total Addition', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (293, 'total_deduction', 'Total Deduction', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (294, 'net_salary', 'Net Salary', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (295, 'ref_number', 'Reference Number', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (296, 'employee_signature', 'Employee Signature', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (297, 'in_word', 'In Word', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (298, 'expense', 'Expense', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (299, 'add_expense_item', 'Add Expense Item', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (300, 'expense_item_name', 'Expense Item Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (301, 'expense_item_list', 'Expense Item List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (302, 'add_expense', 'Add Expense', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (303, 'expense_type', 'Expense Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (304, 'expense_list', 'Expense List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (305, 'expense_item', 'Expense Item', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (306, 'expense_statement', 'Expense Statement', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (307, 'add_person', 'Add Person', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (308, 'personal_loan', 'Personal Loan', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (309, 'name', 'Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (310, 'person_list', 'Person List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (311, 'person_name', 'Person Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (312, 'add_loan', 'Add Loan', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (313, 'loan_list', 'Loan List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (314, 'loan', 'Loan', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (315, 'total_balance', 'Total Balance', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (316, 'person_ledger', 'Person Ledger', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (317, 'add_payment', 'Add Payment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (318, 'service', 'Service', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (319, 'service_list', 'Service List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (320, 'add_service', 'Add Service', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (321, 'service_name', 'Service Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (322, 'charge', 'Charge', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (323, 'description', 'Description', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (324, 'hanging_over', 'Hanging Over', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (325, 'change', 'Change', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (326, 'tax_settings', 'Tax Settings', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (327, 'number_of_tax', 'Number Of Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (328, 'income_tax', 'Income Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (329, 'add_income_tax', 'Add Income Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (330, 'start_amount', 'Start Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (331, 'end_amount', 'End Amount', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (332, 'tax_rate', 'Tax Rate', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (333, 'add_more', 'Add More', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (334, 'setup', 'Setup', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (335, 'income_tax_list', 'Income Tax List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (336, 'update_income_tax', 'Update Income Tax', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (337, 'add_closing', 'Add Closing', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (338, 'last_day_closing', 'Last Day Closing', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (339, 'receive', 'Received', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (340, 'payment', 'Payment', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (341, 'close', 'Close', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (342, 'note_name', 'Note Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (343, 'pcs', 'PCS', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (344, 'closing_list', 'Closing List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (345, 'closed_by', 'Closed By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (346, 'sales_report', 'Sales Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (347, 'userwise_sales_report', 'User Wise Sales Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (348, 'sold_by', 'Sold By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (349, 'productwise_sales_report', 'Product Wise Sales Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (350, 'categorywise_sales_report', 'Category Wise Sales Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (351, 'purchase_report', 'Purchase Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (352, 'purchase_by', 'Purchase By', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (353, 'purchase_report_categorywise', 'Purchase Report Category Wise', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (354, 'return', 'Return', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (355, 'add_return', 'Add Return', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (356, 'return_from_customer', 'Return From Customer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (357, 'return_to_manufacturer', 'Return To Manufacturer', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (358, 'sold_qty', 'Sold Qty', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (359, 'ret_quantity', 'Ret Qty', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (360, 'check_return', 'Check Return', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (361, 'adjs_with_stck', 'Adjust With Stock', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (362, 'nt_return', 'Net Return', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (363, 'wastage', 'Wastage', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (364, 'return_invoice', 'Return Invoice', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (365, 'todays_report', 'Today&#39;s Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (366, 'total_purchase', 'Total Purchase', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (367, 'total_sales', 'Total Sales', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (368, 'cash_received', 'Cash Received', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (369, 'bank_received', 'Bank Receive', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (370, 'total_service', 'Total Service', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (371, 'invoice_return_list', 'Invoice Return List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (372, 'purchase_qty', 'Purchase QTY', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (373, 'manufacturer_return_list', 'Manufacturer Return List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (374, 'income_expense_statement', 'Income Expense Statement', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (375, 'best_sale_of_the_month', 'Best Sales Of The Month', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (376, 'monthly_progress_report', 'Monthly Progress Report', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (377, 'medicine_search', 'Medicine Search', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (378, 'enter_what_you_search', 'Enter What You Search', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (379, 'invoice_search', 'Invoice Search', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (380, 'purchase_search', 'Purchase Search', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (381, 'upload_csv', 'Upload Csv', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (382, 'import_csv', 'Import Csv', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (383, 'leaf_setting', 'Leaf Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (384, 'leaf_type', 'Leaf Type', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (385, 'total_number', 'Total Number', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (386, 'note', 'Note', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (387, 'customer_ledger', 'Customer Ledger', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (388, 'manufacturer_ledger', 'Manufacturer Ledger', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (389, 'menu_title', 'Menu Title', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (390, 'panel_setting', 'Panel Setting', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (391, 'backup_download', 'Download Backup', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (392, 'restore_database', 'Restore Database', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (393, 'restore', 'Restore', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (394, 'db_import', 'Databse Import', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (395, 'import', 'Import', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (396, 'autoupdate', 'Autoupdate', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (397, 'latestv', 'Latest Verstion', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (398, 'current_ver', 'Current Version', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (399, 'purchase_key', 'Purchase Key', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (400, 'select_option', 'Select Option', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (401, 'noupdates', 'No Update Available', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (402, 'notesupdate', 'Note: If you want to update software,you Must have immediate previous version', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (403, 'sub_total', 'Sub Total', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (404, 'edit_purchase', 'Edit Purchase', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (405, 'box_pattern', 'Box Pattern', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (406, 'box_mrp', 'Box MRP', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (407, 'total_purchase_price', 'Total Purchase Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (408, 'available_stock', 'Available Stock', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (409, 'payments', 'Payments', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (410, 'print_invoice', 'Print Invoice', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (411, 'invoice_from', NULL, NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (412, 'billing_from', 'Billing From', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (413, 'billing_to', 'Billing To', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (414, 'qty_box', 'QTY(BOX)', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (415, 'per_pcs_price', 'Per Pcs Price', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (416, 'wastage_return_list', 'Wastage Return List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (417, 'currency_name', 'Currency Name', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (418, 'icon', 'Icon', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (419, 'currency_list', 'Currency List', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (420, 'add_currency', 'Add Currency', NULL, NULL);
INSERT INTO `language` (`id`, `phrase`, `english`, `arabic`, `hindi`) VALUES (421, 'login_background_image', 'Login Background Image', NULL, NULL);


#
# TABLE STRUCTURE FOR: manufacturer_information
#

DROP TABLE IF EXISTS `manufacturer_information`;

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: medicine_leaf_setting
#

DROP TABLE IF EXISTS `medicine_leaf_setting`;

CREATE TABLE `medicine_leaf_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaf_type` text NOT NULL,
  `total_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (3, 'dashboard', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (4, 'customer', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (5, 'manufacturer', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (6, 'medicine', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (7, 'purchase', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (8, 'invoice', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (9, 'return', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (10, 'stock', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (11, 'bank', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (12, 'accounts', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (13, 'hrm', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (14, 'service', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (15, 'report', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (16, 'tax', NULL, NULL, NULL, 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (17, 'search', NULL, NULL, 'search', 1);
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES (18, 'application_setting', NULL, NULL, 'application_setting', 1);


#
# TABLE STRUCTURE FOR: payroll_tax_setup
#

DROP TABLE IF EXISTS `payroll_tax_setup`;

CREATE TABLE `payroll_tax_setup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: person_information
#

DROP TABLE IF EXISTS `person_information`;

CREATE TABLE `person_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_information
#

DROP TABLE IF EXISTS `product_information`;

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `purchase_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `bank_id` (`bank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_purchase_details
#

DROP TABLE IF EXISTS `product_purchase_details`;

CREATE TABLE `product_purchase_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_id` (`purchase_id`),
  KEY `product_id` (`product_id`),
  KEY `batch_id` (`batch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_return
#

DROP TABLE IF EXISTS `product_return`;

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `usablity` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_service
#

DROP TABLE IF EXISTS `product_service`;

CREATE TABLE `product_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: product_type
#

DROP TABLE IF EXISTS `product_type`;

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (1, 'Lostion', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (2, 'Solustion', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (3, 'Spray ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (4, 'Tablet ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (5, 'Syrup ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (6, 'Injection ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (7, 'Capsule ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (8, 'Ointment ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (9, 'Cream ', 1);
INSERT INTO `product_type` (`id`, `type_name`, `status`) VALUES (10, ' powder for suspension ', 1);


#
# TABLE STRUCTURE FOR: role_permission
#

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: salary_benefit
#

DROP TABLE IF EXISTS `salary_benefit`;

CREATE TABLE `salary_benefit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `benefit_name` varchar(100) NOT NULL,
  `benefit_type` int(2) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: salary_sheet_generate
#

DROP TABLE IF EXISTS `salary_sheet_generate`;

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `gdate` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `generate_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`ssg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: sec_role
#

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: sec_userrole
#

DROP TABLE IF EXISTS `sec_userrole`;

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: service_invoice
#

DROP TABLE IF EXISTS `service_invoice`;

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `bank_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: service_invoice_details
#

DROP TABLE IF EXISTS `service_invoice_details`;

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `charge` decimal(10,2) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `discount_amount` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `update_notification` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `setting` (`id`, `title`, `menu_title`, `address`, `email`, `phone`, `logo`, `login_background`, `favicon`, `language`, `currency`, `rtl`, `discount_type`, `timezone`, `footer_text`, `update_notification`) VALUES (1, 'Jononi Madical Hall', 'Jononi Madical Hall', '33555', 'bdtask@gmail.com', '00123456734', '/assets/dist/img/logo/1743947790_60e36f9ab6b89e35d550.png', '/assets/dist/img/logo/1613647690_9a202d45c2902dd82b57.jpg', '/assets/dist/img/favicon/1743947790_835441a49eba8faee7f9.jpg', 'english', '৳', 0, 1, 'Asia/Dhaka', 'Copyright@bdtaskkk', 1);


#
# TABLE STRUCTURE FOR: sub_module
#

DROP TABLE IF EXISTS `sub_module`;

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `directory` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (1, 3, 'income_expense_statement', NULL, NULL, 'income_expense_statement', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (2, 3, 'best_sale_of_the_month', NULL, NULL, 'best_sale_of_the_month', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (3, 3, 'monthly_progress_report', NULL, NULL, 'monthly_progress_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (4, 3, 'todays_report', NULL, NULL, 'todays_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (5, 4, 'add_customer', NULL, NULL, 'add_customer', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (6, 4, 'customer_list', NULL, NULL, 'customer_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (7, 4, 'credit_customer', NULL, NULL, 'credit_customer', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (8, 4, 'paid_customer', NULL, NULL, 'paid_customer', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (9, 5, 'add_manufacturer', NULL, NULL, 'add_manufacturer', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (10, 5, 'manufacturer_list', NULL, NULL, 'manufacturer_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (11, 6, 'add_category', NULL, NULL, 'add_category', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (12, 6, 'category_list', NULL, NULL, 'category_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (13, 6, 'add_unit', NULL, NULL, 'add_unit', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (14, 6, 'unit_list', NULL, NULL, 'unit_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (15, 6, 'add_type', NULL, NULL, 'add_type', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (16, 6, 'type_list', NULL, NULL, 'type_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (17, 6, 'add_medicine', NULL, NULL, 'add_medicine', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (18, 6, 'medicine_list', NULL, NULL, 'medicine_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (19, 7, 'add_purchase', NULL, NULL, 'add_purchase', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (20, 7, 'purchase_list', NULL, NULL, 'purchase_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (21, 8, 'add_invoice', NULL, NULL, 'add_invoice', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (22, 8, 'pos_invoice', NULL, NULL, 'pos_invoice', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (23, 8, 'invoice_list', NULL, NULL, 'invoice_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (24, 9, 'add_return', NULL, NULL, 'add_return', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (25, 9, 'invoice_return_list', NULL, NULL, 'invoice_return_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (26, 9, 'manufacturer_return_list', NULL, NULL, 'manufacturer_return_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (27, 10, 'stock_report', NULL, NULL, 'stock_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (28, 10, 'stock_report_batchwise', NULL, NULL, 'stock_report_batchwise', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (29, 11, 'add_bank', NULL, NULL, 'add_bank', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (30, 11, 'bank_list', NULL, NULL, 'bank_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (31, 12, 'coa', NULL, NULL, 'coa', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (32, 12, 'opening_balance', NULL, NULL, 'opening_balance', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (33, 12, 'manufaturer_payment', NULL, NULL, 'manufaturer_payment', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (34, 12, 'customer_receive', NULL, NULL, 'customer_receive', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (35, 12, 'cash_adjustment', NULL, NULL, 'cash_adjustment', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (36, 12, 'debit_voucher', NULL, NULL, 'debit_voucher', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (37, 12, 'credit_voucher', NULL, NULL, 'credit_voucher', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (38, 12, 'contra_voucher', NULL, NULL, 'contra_voucher', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (39, 12, 'journal_voucher', NULL, NULL, 'journal_voucher', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (40, 12, 'voucher_list', NULL, NULL, 'voucher_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (41, 12, 'report', NULL, NULL, 'report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (42, 12, 'cash_book', NULL, NULL, 'cash_book', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (43, 12, 'bank_book', NULL, NULL, 'bank_book', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (44, 12, 'general_ledger', NULL, NULL, 'general_ledger', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (46, 12, 'trial_balance', NULL, NULL, 'trial_balance', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (47, 12, 'profit_loss', NULL, NULL, 'profit_loss', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (48, 12, 'cash_flow', NULL, NULL, 'cash_flow', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (49, 12, 'coa_print', NULL, NULL, 'coa_print', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (50, 12, 'balance_sheet', NULL, NULL, 'balance_sheet', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (51, 15, 'add_closing', NULL, NULL, 'add_closing', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (52, 15, 'closing_list', NULL, NULL, 'closing_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (53, 15, 'sales_report', NULL, NULL, 'sales_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (54, 15, 'userwise_sales_report', NULL, NULL, 'userwise_sales_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (55, 15, 'productwise_sales_report', NULL, NULL, 'productwise_sales_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (56, 15, 'categorywise_sales_report', NULL, NULL, 'categorywise_sales_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (57, 15, 'purchase_report', NULL, NULL, 'purchase_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (58, 15, 'purchase_report_categorywise', NULL, NULL, 'purchase_report_categorywise', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (59, 13, 'employee', NULL, NULL, 'employee', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (60, 13, 'add_designation', NULL, NULL, 'add_designation', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (61, 13, 'designation_list', NULL, NULL, 'designation_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (62, 13, 'add_employee', NULL, NULL, 'add_employee', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (63, 13, 'employee_list', NULL, NULL, 'employee_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (64, 13, 'attendance', NULL, NULL, 'attendance', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (65, 13, 'add_attendance', NULL, NULL, 'add_attendance', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (66, 13, 'attendance_list', NULL, NULL, 'attendance_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (67, 13, 'datewise_attendance_report', NULL, NULL, 'datewise_attendance_report', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (68, 13, 'payroll', NULL, NULL, 'payroll', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (69, 13, 'add_benefits', NULL, NULL, 'add_benefits', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (70, 13, 'benefit_list', NULL, NULL, 'benefit_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (71, 13, 'add_salarysetup', NULL, NULL, 'add_salarysetup', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (72, 13, 'salary_setup_list', NULL, NULL, 'salary_setup_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (73, 13, 'salary_generate', NULL, NULL, 'salary_generate', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (74, 13, 'salary_sheet', NULL, NULL, 'salary_sheet', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (75, 13, 'salary_payment', NULL, NULL, 'salary_payment', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (76, 13, 'expense', NULL, NULL, 'expense', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (77, 13, 'add_expense_item', NULL, NULL, 'add_expense_item', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (78, 13, 'expense_item_list', NULL, NULL, 'expense_item_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (79, 13, 'add_expense', NULL, NULL, 'add_expense', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (80, 13, 'expense_list', NULL, NULL, 'expense_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (81, 13, 'expense_statement', NULL, NULL, 'expense_statement', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (82, 13, 'loan', NULL, NULL, 'loan', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (83, 13, 'add_person', NULL, NULL, 'add_person', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (84, 13, 'person_list', NULL, NULL, 'person_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (85, 13, 'add_loan', NULL, NULL, 'add_loan', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (86, 13, 'add_payment', NULL, NULL, 'add_payment', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (87, 13, 'loan_list', NULL, NULL, 'loan_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (88, 13, 'person_ledger', NULL, NULL, 'person_ledger', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (89, 16, 'tax_settings', NULL, NULL, 'tax_settings', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (90, 16, 'add_income_tax', NULL, NULL, 'add_income_tax', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (91, 16, 'income_tax_list', NULL, NULL, 'income_tax_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (92, 14, 'add_service', NULL, NULL, 'add_service', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (93, 14, 'service_list', NULL, NULL, 'service_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (94, 14, 'add_invoice', NULL, NULL, 'service_invoice_form', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (95, 14, 'invoice_list', NULL, NULL, 'service_invoice_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (96, 17, 'medicine_search', NULL, NULL, 'medicine_search', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (97, 17, 'invoice_search', NULL, NULL, 'invoice_search', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (98, 17, 'purchase_search', NULL, NULL, 'purchase_search', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (99, 18, 'add_user', NULL, NULL, 'add_user', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (100, 18, 'user_list', NULL, NULL, 'user_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (101, 18, 'currency', NULL, NULL, 'currency', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (102, 18, 'setting', NULL, NULL, 'setting', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (103, 10, 'available_stock', NULL, NULL, 'available_stock', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (104, 18, 'backup_download', NULL, NULL, 'backup_download', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (105, 18, 'restore_database', NULL, NULL, 'restore_database', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (106, 18, 'db_import', NULL, NULL, 'db_import', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (107, 18, 'panel_setting', NULL, NULL, 'panel_setting', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (108, 18, 'add_role', NULL, NULL, 'add_role', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (109, 18, 'role_list', NULL, NULL, 'role_list', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (110, 18, 'assign_role', NULL, NULL, 'assign_role', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (111, 18, 'language', NULL, NULL, 'language', 1);
INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES (112, 9, 'wastage_return_list', NULL, NULL, 'wastage_return_list', 1);


#
# TABLE STRUCTURE FOR: tax_collection
#

DROP TABLE IF EXISTS `tax_collection`;

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `relation_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: tax_settings
#

DROP TABLE IF EXISTS `tax_settings`;

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: theme_color_setup
#

DROP TABLE IF EXISTS `theme_color_setup`;

CREATE TABLE `theme_color_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `active_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

INSERT INTO `theme_color_setup` (`id`, `color_code`, `content_text_color`, `font_one`, `font_two`, `body_font_size`, `logo_text_color`, `menu_font_color`, `menu_hover_color`, `menubg_color`, `active_menu_color`, `active_menu_bgcolor`, `body_line_hight`, `menu_font_size`, `menu_line_hight`, `active_status`) VALUES (5, '#bad6d8', '#181616', 'Rock Salt', 'Poppins', '14', '#fafcf8', '#f3f2ec', '#ffa53d', '#1864cd', '#f5f5f5', '#3fb7de', '', '13', NULL, 0);


#
# TABLE STRUCTURE FOR: unit
#

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `token_id` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `token_id`) VALUES (1, 'Admin ', 'User', '', 'info@jononimadicalhall.com', '25d55ad283aa400af464c76d713c07ad', NULL, '/assets/dist/img/user/1610013835_02bd092e4cb106d94293.jpg', '2025-04-06 08:56:52', '2025-04-06 08:56:35', '103.131.145.159', 1, 1, NULL);
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `token_id`) VALUES (2, NULL, NULL, NULL, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL);


