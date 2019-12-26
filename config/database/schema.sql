/*
 Navicat Premium Data Transfer

 Source Server         : _TLP_SSH
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : localhost
 Source Database       : theloanp_repdb

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : utf-8

 Date: 09/18/2018 17:43:15 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `fixpayment`
-- ----------------------------
DROP TABLE IF EXISTS `fixpayment`;
CREATE TABLE `fixpayment` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRResponseId` int(10) unsigned NOT NULL,
  `LMRId` int(10) unsigned NOT NULL,
  `LMRExecutive` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `LMRResponseStatus` varchar(50) CHARACTER SET latin1 DEFAULT 'New',
  `lates1Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates2Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates3Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `executiveEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `executiveNotes` blob,
  `lastUpdatedDate` datetime DEFAULT NULL,
  `signExecutiveName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `LMRProcessorStatus` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `processorId` int(11) DEFAULT '0',
  `QCId` int(11) DEFAULT '0',
  `negotiatorId` int(11) DEFAULT '0',
  `fileNumber` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `executiveId` int(11) DEFAULT '0',
  `leadSource` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `closedBy` int(11) DEFAULT '0',
  `closedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fileClosedDate` datetime DEFAULT NULL,
  `approvedBy` int(11) DEFAULT '0',
  `approvedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `approvedDate` datetime DEFAULT NULL,
  `priorityLevel` enum('high','medium','low','') CHARACTER SET latin1 DEFAULT '',
  `attorneyId` int(11) DEFAULT '0',
  `managerId` int(11) DEFAULT '0',
  `trialModReceivedDate` date DEFAULT NULL,
  `firstTrialPaymentDate` date DEFAULT NULL,
  `primeStatusId` int(11) DEFAULT '0',
  `borrowerCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderSubmissionDate` date DEFAULT NULL,
  `resolutionType` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `closedDisposition` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `borrowerCallBack_del` varchar(25) DEFAULT '',
  `lenderCallBack_del` varchar(25) DEFAULT '',
  `lawSuiteFileDate` date DEFAULT NULL,
  `HAFADate` date DEFAULT NULL,
  `appealDate` date DEFAULT NULL,
  `welcomeCallDate` date DEFAULT NULL,
  `bankCallCompleted` date NOT NULL DEFAULT '0000-00-00',
  `attorneyReviewDate` date DEFAULT NULL,
  `trialPaymentDate1` date DEFAULT NULL,
  `trialPaymentDate2` date DEFAULT NULL,
  `trialPaymentDate3` date DEFAULT NULL,
  `firstModPaymentAmt` varchar(30) NOT NULL DEFAULT '',
  `retainerDate` date DEFAULT NULL,
  `escalationDate` date DEFAULT NULL,
  `denialDate` date DEFAULT NULL,
  `totalCallsPlaced` int(10) DEFAULT '0',
  PRIMARY KEY (`sid`),
  KEY `LMRId` (`LMRId`),
  KEY `primeStatusId` (`primeStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=17107 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `numbers`
-- ----------------------------
DROP TABLE IF EXISTS `numbers`;
CREATE TABLE `numbers` (
  `N` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `purchaseInfo`
-- ----------------------------
DROP TABLE IF EXISTS `purchaseInfo`;
CREATE TABLE `purchaseInfo` (
  `PID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL DEFAULT '0',
  `PKGID` int(11) NOT NULL DEFAULT '0',
  `purchaserName` varchar(100) DEFAULT '',
  `purchaserPhone` varchar(20) DEFAULT '',
  `purchaserAddr` varchar(100) DEFAULT '',
  `purchaserEmail` varchar(100) DEFAULT '',
  `purchaserCity` varchar(50) DEFAULT '',
  `purchaserState` varchar(10) DEFAULT '',
  `purchaserZip` varchar(10) DEFAULT '',
  `oNotes` varchar(100) DEFAULT '',
  `CCFName` varchar(100) DEFAULT '',
  `CCLName` varchar(60) DEFAULT '',
  `CCNumber` longtext,
  `CCAddress` varchar(100) DEFAULT '',
  `CCCity` varchar(50) DEFAULT '',
  `CCState` varchar(5) DEFAULT '',
  `CCZip` varchar(10) DEFAULT '',
  `CCType` longtext,
  `CCExpiryMonth` longtext,
  `CCExpiryYear` longtext,
  `CCSecCode` longtext,
  `bankName` varchar(100) DEFAULT '',
  `checkNo` longtext,
  `bankAddr` varchar(100) DEFAULT '',
  `bankCity` varchar(50) DEFAULT '',
  `bankState` varchar(10) DEFAULT '',
  `bankZip` varchar(10) DEFAULT '',
  `routingNo` longtext,
  `accountNo` longtext,
  `accType` varchar(3) DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `accountName` varchar(100) DEFAULT '',
  `accountOwnerName` varchar(100) DEFAULT '',
  `phase1ChargeDate` varchar(50) DEFAULT '',
  `phase2ChargeDate` varchar(50) DEFAULT '',
  `firstPaymentAmt` varchar(50) DEFAULT '',
  `recurringPaymentAmt` varchar(50) DEFAULT '',
  `startRecPaymentDate` varchar(50) DEFAULT '',
  `recurringPaymentDate` varchar(50) DEFAULT '',
  `debitMyAccount` varchar(5) DEFAULT '',
  `debitMyAccDate` varchar(20) DEFAULT '',
  `paymentSendDate` varchar(20) DEFAULT '',
  PRIMARY KEY (`PID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `purchaseInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=933 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180710105747_10450_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180710105747_10450_Employee`;
CREATE TABLE `t_20180710105747_10450_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `clientAddress` varchar(100) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1OriginalBalance` varchar(30) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `attorneyName` varchar(100) DEFAULT NULL,
  `servicer2` varchar(60) DEFAULT NULL,
  `lien2OriginalBalance` varchar(30) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180710115329_10450_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180710115329_10450_Employee`;
CREATE TABLE `t_20180710115329_10450_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `fileNumber` varchar(30) DEFAULT NULL,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `clientAddress` varchar(100) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1OriginalBalance` varchar(30) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `attorneyName` varchar(100) DEFAULT NULL,
  `servicer2` varchar(60) DEFAULT NULL,
  `lien2OriginalBalance` varchar(30) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `leadSource` varchar(50) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180710183134_3381_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180710183134_3381_Employee`;
CREATE TABLE `t_20180710183134_3381_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180710190226_10454_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180710190226_10454_Employee`;
CREATE TABLE `t_20180710190226_10454_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(100) DEFAULT NULL,
  `clientCity` varchar(50) DEFAULT NULL,
  `clientState` varchar(20) DEFAULT NULL,
  `clientZip` varchar(15) DEFAULT NULL,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `homeValue` varchar(30) DEFAULT NULL,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `coBorrowerLName` varchar(150) DEFAULT NULL,
  `client2LName` varchar(150) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `servicer2` varchar(60) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180710194953_10454_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180710194953_10454_Employee`;
CREATE TABLE `t_20180710194953_10454_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(100) DEFAULT NULL,
  `clientCity` varchar(50) DEFAULT NULL,
  `clientState` varchar(20) DEFAULT NULL,
  `clientZip` varchar(15) DEFAULT NULL,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `homeValue` varchar(30) DEFAULT NULL,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `coBorrowerLName` varchar(150) DEFAULT NULL,
  `client2LName` varchar(150) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `servicer2` varchar(60) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180711152344_7048_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180711152344_7048_Employee`;
CREATE TABLE `t_20180711152344_7048_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientAddress` varchar(100) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `mortgageNotes` blob,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180712162712_7748_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180712162712_7748_Employee`;
CREATE TABLE `t_20180712162712_7748_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientCell` varchar(20) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180717113803_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180717113803_9645_Employee`;
CREATE TABLE `t_20180717113803_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=6544 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180718142716_10432_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180718142716_10432_Employee`;
CREATE TABLE `t_20180718142716_10432_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `presentCity` varchar(100) DEFAULT NULL,
  `presentState` varchar(10) DEFAULT NULL,
  `presentZip` varchar(10) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180718143123_10432_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180718143123_10432_Employee`;
CREATE TABLE `t_20180718143123_10432_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientCell` varchar(20) DEFAULT NULL,
  `presentAddress` varchar(100) DEFAULT NULL,
  `presentCity` varchar(100) DEFAULT NULL,
  `presentState` varchar(10) DEFAULT NULL,
  `presentZip` varchar(10) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180720170302_8744_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180720170302_8744_Employee`;
CREATE TABLE `t_20180720170302_8744_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=2919 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180723115615_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180723115615_9645_Employee`;
CREATE TABLE `t_20180723115615_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=10264 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180727105235_7748_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180727105235_7748_Employee`;
CREATE TABLE `t_20180727105235_7748_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientCell` varchar(20) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180730121710_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180730121710_9645_Employee`;
CREATE TABLE `t_20180730121710_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=5454 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180731174444_10454_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180731174444_10454_Employee`;
CREATE TABLE `t_20180731174444_10454_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `homeValue` varchar(30) DEFAULT NULL,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `coBorrowerLName` varchar(150) DEFAULT NULL,
  `client2LName` varchar(150) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `servicer2` varchar(60) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180803091455_10429_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180803091455_10429_Employee`;
CREATE TABLE `t_20180803091455_10429_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180803164454_7748_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180803164454_7748_Employee`;
CREATE TABLE `t_20180803164454_7748_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientCell` varchar(20) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180813142400_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180813142400_9645_Employee`;
CREATE TABLE `t_20180813142400_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=7562 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180820114919_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180820114919_9645_Employee`;
CREATE TABLE `t_20180820114919_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=3167 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180825145241_8744_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180825145241_8744_Employee`;
CREATE TABLE `t_20180825145241_8744_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=2908 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180903161104_8744_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180903161104_8744_Employee`;
CREATE TABLE `t_20180903161104_8744_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=2170 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180904131726_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180904131726_9645_Employee`;
CREATE TABLE `t_20180904131726_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=3899 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180908124728_8744_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180908124728_8744_Employee`;
CREATE TABLE `t_20180908124728_8744_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=3054 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180910113438_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180910113438_9645_Employee`;
CREATE TABLE `t_20180910113438_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=4399 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180910114542_9645_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180910114542_9645_Employee`;
CREATE TABLE `t_20180910114542_9645_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `servicer1` varchar(60) DEFAULT NULL,
  `lien1Amount` varchar(30) DEFAULT NULL,
  `lien1Rate` varchar(30) DEFAULT NULL,
  `lien1Payment` varchar(30) DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `fileNumber` varchar(30) DEFAULT NULL,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=1529 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180911181743_10454_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180911181743_10454_Employee`;
CREATE TABLE `t_20180911181743_10454_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientLName` varchar(150) DEFAULT NULL,
  `enc_borrowerLName` longtext,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientAddress` varchar(100) DEFAULT NULL,
  `clientCity` varchar(50) DEFAULT NULL,
  `clientState` varchar(20) DEFAULT NULL,
  `clientZip` varchar(15) DEFAULT NULL,
  `ssnNumber` varchar(12) DEFAULT NULL,
  `enc_ssnNumber` longtext,
  `borrowerDOB` date DEFAULT NULL,
  `enc_borrowerDOB` longtext,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyState` varchar(100) DEFAULT NULL,
  `enc_propertyState` longtext,
  `propertyZip` varchar(10) DEFAULT NULL,
  `enc_propertyZip` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `homeValue` varchar(30) DEFAULT NULL,
  `coBorrowerFName` varchar(150) DEFAULT NULL,
  `client2FName` varchar(150) DEFAULT NULL,
  `coBorrowerLName` varchar(150) DEFAULT NULL,
  `client2LName` varchar(150) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `loanNumber` varchar(75) DEFAULT NULL,
  `enc_loanNumber` longtext,
  `servicer2` varchar(60) DEFAULT NULL,
  `loanNumber2` varchar(75) DEFAULT NULL,
  `enc_loanNumber2` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `t_20180918094530_6631_Employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_20180918094530_6631_Employee`;
CREATE TABLE `t_20180918094530_6631_Employee` (
  `tempId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dummyId` varchar(50) NOT NULL,
  `CID` int(11) NOT NULL DEFAULT '0',
  `LMRID` int(11) NOT NULL DEFAULT '0',
  `pushedToLive` tinyint(4) DEFAULT '0',
  `isCoBorrower` int(11) DEFAULT '0',
  `STCode` varchar(10) NOT NULL DEFAULT '',
  `propTypeID` varchar(30) NOT NULL DEFAULT '',
  `primeStatusId` int(11) NOT NULL DEFAULT '0',
  `contactID` int(11) NOT NULL DEFAULT '0',
  `propertyCounty` varchar(100) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `enc_propertyAddress` longtext,
  `propertyCity` varchar(100) DEFAULT NULL,
  `enc_propertyCity` longtext,
  `propertyType` varchar(30) DEFAULT NULL,
  `servicer1` varchar(60) DEFAULT NULL,
  `clientPhone` varchar(20) DEFAULT NULL,
  `clientPwd` varchar(75) DEFAULT NULL,
  `clientFName` varchar(150) DEFAULT NULL,
  `enc_borrowerName` longtext,
  `clientCell` varchar(20) DEFAULT NULL,
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `enc_borrowerEmail` longtext,
  `sanitized` enum('OK','Failed','') DEFAULT NULL,
  `msg` longtext,
  PRIMARY KEY (`tempId`),
  UNIQUE KEY `dummyId` (`dummyId`),
  KEY `CID` (`CID`),
  KEY `LMRID` (`LMRID`),
  KEY `clientEmail` (`clientEmail`),
  KEY `pushedToLive` (`pushedToLive`),
  KEY `sanitized` (`sanitized`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblACHInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblACHInfo`;
CREATE TABLE `tblACHInfo` (
  `ACID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `bankName` varchar(100) DEFAULT '',
  `checkNo` longtext,
  `bankAddr` varchar(100) DEFAULT '',
  `bankCity` varchar(50) DEFAULT '',
  `bankState` varchar(10) DEFAULT '',
  `bankZip` varchar(10) DEFAULT '',
  `routingNo` longtext,
  `accountNo` longtext,
  `accType` varchar(10) DEFAULT '',
  `accountName` varchar(100) DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `depositDate` date DEFAULT NULL,
  `acctHolderCity` varchar(100) DEFAULT '',
  `acctHolderState` varchar(10) DEFAULT '',
  `acctHolderZip` varchar(10) DEFAULT '',
  `acctHolderAddr` varchar(100) DEFAULT '',
  PRIMARY KEY (`ACID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblACHInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=36854 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `ACHInfo_h` BEFORE UPDATE ON `tblACHInfo` FOR EACH ROW BEGIN
       IF (NEW.LMRId>0) THEN
           INSERT INTO tblACHInfo_h (SELECT * FROM tblACHInfo WHERE LMRID = NEW.LMRId);
                 
       END IF;
   END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblACHInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblACHInfo_h`;
CREATE TABLE `tblACHInfo_h` (
  `ACID` int(10) unsigned NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `bankName` varchar(100) DEFAULT '',
  `checkNo` longtext,
  `bankAddr` varchar(100) DEFAULT '',
  `bankCity` varchar(50) DEFAULT '',
  `bankState` varchar(10) DEFAULT '',
  `bankZip` varchar(10) DEFAULT '',
  `routingNo` longtext,
  `accountNo` longtext,
  `accType` varchar(10) DEFAULT '',
  `accountName` varchar(100) DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `depositDate` date DEFAULT NULL,
  `acctHolderCity` varchar(100) DEFAULT '',
  `acctHolderState` varchar(10) DEFAULT '',
  `acctHolderZip` varchar(10) DEFAULT '',
  `acctHolderAddr` varchar(100) DEFAULT '',
  KEY `LMRID` (`LMRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAdditionalLienInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblAdditionalLienInfo`;
CREATE TABLE `tblAdditionalLienInfo` (
  `ALID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `servicer` varchar(100) DEFAULT '',
  `balance` decimal(13,2) DEFAULT '0.00',
  `phoneNumber` varchar(20) DEFAULT '',
  `loanNumber` varchar(50) DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `interestRate` decimal(13,3) DEFAULT '0.000',
  `addLienFax` varchar(20) DEFAULT '',
  `addLienEmail` varchar(75) DEFAULT '',
  `noOfMonthsBehind` varchar(20) DEFAULT '',
  `contactName` varchar(20) DEFAULT '',
  `fileNumber` varchar(30) DEFAULT '',
  `refID` int(11) DEFAULT '0',
  PRIMARY KEY (`ALID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblAdditionalLienInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=17907 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAddlnLienContactInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblAddlnLienContactInfo`;
CREATE TABLE `tblAddlnLienContactInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `contactName` varchar(30) DEFAULT '',
  `addLienEmail` varchar(75) DEFAULT '',
  `addLienPhone` varchar(20) DEFAULT '',
  `addLienFax` varchar(20) DEFAULT '',
  `sn` int(11) DEFAULT '0',
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblAddlnLienContactInfo_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblAdditionalLienInfo` (`ALID`)
) ENGINE=InnoDB AUTO_INCREMENT=1288 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAdminUsers`
-- ----------------------------
DROP TABLE IF EXISTS `tblAdminUsers`;
CREATE TABLE `tblAdminUsers` (
  `AID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL DEFAULT '',
  `processorName` varchar(60) NOT NULL DEFAULT '0',
  `processorLName` varchar(60) DEFAULT NULL,
  `pwd` varchar(25) DEFAULT '',
  `tollFree` varchar(20) DEFAULT '',
  `cellNumber` varchar(20) DEFAULT '',
  `fax` varchar(20) DEFAULT '',
  `role` varchar(60) NOT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `LMRAEId` int(11) DEFAULT '0',
  `processingCompanyId` int(10) unsigned NOT NULL DEFAULT '0',
  `empCreatedDate` date DEFAULT NULL,
  `empLastLoginDate` datetime DEFAULT NULL,
  `allowToViewAllFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `serviceProvider` varchar(20) DEFAULT '',
  `timeZone` varchar(10) DEFAULT 'EST',
  `simLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowExcelDownload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendMarketingEmail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forensicAuditService` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `forensicAuditInterest` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `feedbackOfFAS` longtext,
  `allowToListIn3PartyForm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showLAMsg` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `directPhone` varchar(20) DEFAULT '',
  `allowEmpToCreateFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToCreateTasks` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToSeeDashboard` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `accessRestriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seePrivate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowedToDeleteUplodedDocs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowedToEditOwnNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seeBilling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alternatePC` varchar(70) DEFAULT NULL,
  `permissionToREST` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmailCampaign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBOToEditLMRFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `changeDIYPlan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendHomeownerLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToUpdateFileAdminSection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fluidLayout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribeToHOME` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToLASubmit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToSendFax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmployeeToEditCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmployeeToSeeCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendFileDesignation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `barNo` varchar(210) NOT NULL DEFAULT '',
  `allowEmpToSeePublicNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `paralegalRate` varchar(15) NOT NULL DEFAULT '',
  `attorneyRate` varchar(15) NOT NULL DEFAULT '',
  `empAddress` varchar(75) NOT NULL DEFAULT '',
  `empCity` varchar(45) NOT NULL DEFAULT '',
  `empState` varchar(45) NOT NULL DEFAULT '',
  `empZip` varchar(15) NOT NULL DEFAULT '',
  `allowToChangeOrAssignBranchForFile` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToCFPBSubmit` tinyint(1) NOT NULL DEFAULT '0',
  `allowToViewCFPBPipeline` tinyint(1) NOT NULL DEFAULT '0',
  `empCounty` varchar(60) NOT NULL DEFAULT '',
  `serviceFeeRate` varchar(15) NOT NULL DEFAULT '',
  `allowToAccessRAM` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmpToCreateBranch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `convertNewBRIntoEmpOwnBR` tinyint(1) NOT NULL DEFAULT '0',
  `allowToSeeBillingSectionForFile` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`AID`),
  KEY `processingCompanyId` (`processingCompanyId`),
  KEY `activeStatus` (`activeStatus`),
  KEY `processorName` (`processorName`),
  KEY `email` (`email`),
  KEY `allowEmpToLogin` (`allowEmpToLogin`),
  KEY `activeStatus_2` (`activeStatus`,`processingCompanyId`),
  KEY `role` (`role`),
  CONSTRAINT `tblAdminUsers_ibfk_1` FOREIGN KEY (`processingCompanyId`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblAdminUsers_ibfk_2` FOREIGN KEY (`role`) REFERENCES `tblUserRole` (`userType`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10706 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAdminUsers_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tblAdminUsers_copy`;
CREATE TABLE `tblAdminUsers_copy` (
  `AID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL DEFAULT '',
  `processorName` varchar(60) NOT NULL DEFAULT '0',
  `pwd` varchar(25) DEFAULT '',
  `tollFree` varchar(20) DEFAULT '',
  `cellNumber` varchar(20) DEFAULT '',
  `fax` varchar(20) DEFAULT '',
  `role` varchar(60) NOT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `LMRAEId` int(11) DEFAULT '0',
  `processingCompanyId` int(10) unsigned NOT NULL DEFAULT '0',
  `empCreatedDate` date DEFAULT NULL,
  `empLastLoginDate` datetime DEFAULT NULL,
  `allowToViewAllFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `serviceProvider` varchar(20) DEFAULT '',
  `timeZone` varchar(10) DEFAULT 'EST',
  `simLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowExcelDownload` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendMarketingEmail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forensicAuditService` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `forensicAuditInterest` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `feedbackOfFAS` longtext,
  `allowToListIn3PartyForm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showLAMsg` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `directPhone` varchar(20) DEFAULT '',
  `allowEmpToCreateFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToCreateTasks` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmpToSeeDashboard` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `accessRestriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seePrivate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowedToDeleteUplodedDocs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowedToEditOwnNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seeBilling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `alternatePC` varchar(70) DEFAULT NULL,
  `permissionToREST` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmailCampaign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBOToEditLMRFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `changeDIYPlan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendHomeownerLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToUpdateFileAdminSection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fluidLayout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribeToHOME` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToLASubmit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToSendFax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmployeeToEditCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowEmployeeToSeeCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendFileDesignation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `barNo` varchar(210) NOT NULL DEFAULT '',
  `allowEmpToSeePublicNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `paralegalRate` varchar(15) NOT NULL DEFAULT '',
  `attorneyRate` varchar(15) NOT NULL DEFAULT '',
  `empAddress` varchar(75) NOT NULL DEFAULT '',
  `empCity` varchar(45) NOT NULL DEFAULT '',
  `empState` varchar(45) NOT NULL DEFAULT '',
  `empZip` varchar(15) NOT NULL DEFAULT '',
  `allowToChangeOrAssignBranchForFile` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToCFPBSubmit` tinyint(1) NOT NULL DEFAULT '0',
  `allowToViewCFPBPipeline` tinyint(1) NOT NULL DEFAULT '0',
  `empCounty` varchar(60) NOT NULL DEFAULT '',
  `serviceFeeRate` varchar(15) NOT NULL DEFAULT '',
  `allowToAccessRAM` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmpToCreateBranch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `convertNewBRIntoEmpOwnBR` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AID`),
  KEY `processingCompanyId` (`processingCompanyId`),
  KEY `activeStatus` (`activeStatus`),
  KEY `processorName` (`processorName`),
  KEY `email` (`email`),
  KEY `allowEmpToLogin` (`allowEmpToLogin`),
  KEY `activeStatus_2` (`activeStatus`,`processingCompanyId`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=10397 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAffiliate`
-- ----------------------------
DROP TABLE IF EXISTS `tblAffiliate`;
CREATE TABLE `tblAffiliate` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT '',
  `lastName` varchar(100) DEFAULT '',
  `company` varchar(50) DEFAULT '',
  `email` varchar(75) DEFAULT '',
  `pwd` varchar(50) DEFAULT '',
  `webAddress` varchar(100) DEFAULT '',
  `promoCode` int(11) DEFAULT '0',
  `site` varchar(10) DEFAULT '',
  `joiningDate` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`serialNumber`),
  UNIQUE KEY `promoCode` (`promoCode`),
  UNIQUE KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=29966 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAgent`
-- ----------------------------
DROP TABLE IF EXISTS `tblAgent`;
CREATE TABLE `tblAgent` (
  `userNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(250) DEFAULT '',
  `firstName` varchar(75) DEFAULT NULL,
  `lastName` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(75) NOT NULL DEFAULT '',
  `addr` varchar(150) DEFAULT '',
  `city` varchar(20) DEFAULT '',
  `state` varchar(20) DEFAULT '',
  `zipCode` varchar(10) DEFAULT '',
  `phoneNumber` varchar(20) NOT NULL DEFAULT '',
  `cellNumber` varchar(20) DEFAULT '',
  `fax` varchar(20) DEFAULT '',
  `promoCode` varchar(30) DEFAULT '',
  `company` varchar(60) DEFAULT '',
  `registerDate` date NOT NULL,
  `expireDate` date NOT NULL,
  `planType` varchar(10) DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateOfInvite` date DEFAULT NULL,
  `dateOfUpdate` date DEFAULT NULL,
  `emailStatus` tinyint(1) DEFAULT '0',
  `referralID` blob,
  `agreedTC` tinyint(1) DEFAULT '0',
  `position` varchar(10) DEFAULT '0',
  `mgrID` int(11) DEFAULT '0',
  `eStatus` tinyint(1) DEFAULT '0',
  `lastLogin` date DEFAULT NULL,
  `suiteNumber` varchar(50) DEFAULT '',
  `surveyPosition` varchar(50) DEFAULT '',
  `surveyExp` varchar(50) DEFAULT '',
  `noOfMortgageBropkers` varchar(50) DEFAULT '',
  `surveyCompDesc` varchar(50) DEFAULT '',
  `surveyPrefPerson` varchar(50) DEFAULT '',
  `significantPerson` varchar(50) DEFAULT '',
  `surveyAEProb` varchar(50) DEFAULT '',
  `surveyOnlineTool` varchar(50) DEFAULT '',
  `surveyAltaPgm` varchar(50) DEFAULT '',
  `totNoOfLenders` int(11) DEFAULT '0',
  `conformingLenders` blob,
  `AltLenders` blob,
  `subPrimeLenders` blob,
  `hardMoneyLenders` blob,
  `commercialLenders` blob,
  `optArmLenders` blob,
  `noDocLoanLenders` blob,
  `membership` varchar(10) DEFAULT 'B',
  `paymentStatus` varchar(10) DEFAULT 'Unpaid',
  `ARBSubscriptionStatus` varchar(10) DEFAULT '',
  `AEPartnerCode` int(11) DEFAULT '0',
  `referralCode` int(11) DEFAULT '0',
  `receiveUpdates` tinyint(1) DEFAULT '1',
  `receiveNews` tinyint(1) DEFAULT '1',
  `hearAbout` varchar(100) DEFAULT '',
  `sendHighlights` tinyint(1) DEFAULT '1',
  `surveyMonthlyLoan` varchar(50) DEFAULT '',
  `FHAApproved` varchar(5) DEFAULT '',
  `principalBroker` int(11) DEFAULT '0',
  `reminderScheduleDate` datetime DEFAULT NULL,
  `LMRView` tinyint(1) DEFAULT '0',
  `receiveLMInfo` tinyint(1) DEFAULT '0',
  `LMRAEID` int(11) DEFAULT '0',
  `regFrom` varchar(20) DEFAULT 'TLP',
  `privateBroker` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowAgentToAccessLMRDocs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowFreeLMR` tinyint(1) DEFAULT '0',
  `url` varchar(200) DEFAULT '',
  `allowAgentToSendHomeownerLink` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToEditLMRFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowAgentToLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `serviceProvider` varchar(20) DEFAULT '',
  `allowedToUpdateFiles` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToAccessPrivateNotes` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timeZone` varchar(10) DEFAULT 'EST',
  `sendNewDealAlert` tinyint(1) DEFAULT '1',
  `userIPAddress` varchar(25) DEFAULT '',
  `allowToSendMassEmail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToCreateFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToCreateTasks` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToSeeDashboard` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `accessRestriction` tinyint(1) DEFAULT '0',
  `allowedToDeleteUplodedDocs` tinyint(1) DEFAULT '1',
  `allowedToEditOwnNotes` tinyint(1) DEFAULT '1',
  `agentNotes` longtext,
  `seeBilling` tinyint(1) DEFAULT '1',
  `permissionToREST` tinyint(1) DEFAULT '0',
  `allowedToExcelReport` tinyint(1) DEFAULT '0',
  `changeDIYPlan` tinyint(1) DEFAULT '1',
  `isPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fluidLayout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribeToHOME` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToLASubmit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowEmailCampaign` tinyint(1) DEFAULT '1',
  `allowToSendFax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowAgentToEditCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToSeeCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendFileDesignation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowAgentToSeePublicNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToCFPBSubmit` tinyint(1) NOT NULL DEFAULT '0',
  `allowToViewCFPBPipeline` tinyint(1) NOT NULL DEFAULT '0',
  `allowToAccessRAM` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToSendMarketingEmailForBRBO` tinyint(1) unsigned DEFAULT '0',
  `TAC` longtext,
  `thankMsg` text,
  `thankMsgSV` text,
  `allowToSeeWebForms` tinyint(1) DEFAULT '0',
  `license` varchar(25) DEFAULT NULL,
  `eniNumber` varchar(25) DEFAULT NULL,
  `brokerPartnerType` varchar(50) DEFAULT NULL,
  `prefCommunication` varchar(100) DEFAULT NULL,
  `allowToEditCCInfo` tinyint(4) DEFAULT '0',
  `allowEditToIR` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`userNumber`),
  KEY `firstName` (`firstName`),
  KEY `lastName` (`lastName`),
  KEY `email` (`email`),
  KEY `status` (`status`),
  KEY `allowAgentToLogin` (`allowAgentToLogin`),
  KEY `lastName_2` (`lastName`,`firstName`,`status`),
  KEY `email_2` (`email`,`status`),
  KEY `lastLogin` (`lastLogin`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=36920 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAgentBranch`
-- ----------------------------
DROP TABLE IF EXISTS `tblAgentBranch`;
CREATE TABLE `tblAgentBranch` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BID` int(10) unsigned NOT NULL DEFAULT '0',
  `brokerNumber` int(10) unsigned NOT NULL DEFAULT '0',
  `contactDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `PCID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serialNumber`),
  KEY `LMRAEID` (`BID`),
  KEY `brokerNumber` (`brokerNumber`),
  KEY `BID` (`BID`,`brokerNumber`),
  KEY `activeStatus` (`activeStatus`),
  KEY `brokerNumber_2` (`brokerNumber`,`activeStatus`,`BID`),
  CONSTRAINT `tblAgentBranch_ibfk_1` FOREIGN KEY (`brokerNumber`) REFERENCES `tblAgent` (`userNumber`),
  CONSTRAINT `tblAgentBranch_ibfk_2` FOREIGN KEY (`BID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=67054 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAgentEmployee`
-- ----------------------------
DROP TABLE IF EXISTS `tblAgentEmployee`;
CREATE TABLE `tblAgentEmployee` (
  `BEID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AID` int(10) unsigned NOT NULL,
  `EID` int(10) unsigned NOT NULL,
  `allowToCommunicate` tinyint(4) DEFAULT '0',
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BEID`),
  KEY `EID` (`EID`),
  KEY `AID` (`AID`),
  KEY `allowToCommunicate` (`allowToCommunicate`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblAgentEmployee_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `tblAgent` (`userNumber`),
  CONSTRAINT `tblAgentEmployee_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `tblAdminUsers` (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=147590 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAgentMandatoryChecklistItems`
-- ----------------------------
DROP TABLE IF EXISTS `tblAgentMandatoryChecklistItems`;
CREATE TABLE `tblAgentMandatoryChecklistItems` (
  `AGCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agentNo` int(10) unsigned NOT NULL,
  `checklistId` text,
  `showInLV` tinyint(4) DEFAULT '0',
  `showInSV` tinyint(4) DEFAULT '0',
  `recordDate` datetime DEFAULT NULL,
  `mandatoryInLV` tinyint(4) NOT NULL DEFAULT '0',
  `mandatoryInSV` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AGCID`),
  KEY `agentNo` (`agentNo`),
  CONSTRAINT `tblAgentMandatoryChecklistItems_ibfk_1` FOREIGN KEY (`agentNo`) REFERENCES `tblAgent` (`userNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=740 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAgentPC`
-- ----------------------------
DROP TABLE IF EXISTS `tblAgentPC`;
CREATE TABLE `tblAgentPC` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AID` int(10) unsigned NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `brokerStatus` tinyint(4) DEFAULT NULL,
  `brokerNotes` text,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `AID` (`AID`,`PCID`),
  KEY `AID_2` (`AID`),
  KEY `PCID` (`PCID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `AID_3` (`AID`,`activeStatus`),
  CONSTRAINT `tblAgentPC_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `tblAgent` (`userNumber`),
  CONSTRAINT `tblAgentPC_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=91858 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAllowAccessIP`
-- ----------------------------
DROP TABLE IF EXISTS `tblAllowAccessIP`;
CREATE TABLE `tblAllowAccessIP` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `IP` longtext NOT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `UID` int(11) NOT NULL,
  `URole` varchar(10) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`,`UID`,`URole`),
  CONSTRAINT `tblAllowAccessIP_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAnnouncement`
-- ----------------------------
DROP TABLE IF EXISTS `tblAnnouncement`;
CREATE TABLE `tblAnnouncement` (
  `AID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Atitle` varchar(100) DEFAULT NULL,
  `Acontent` longtext,
  `UID` int(11) DEFAULT NULL,
  `UType` varchar(20) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `FromDate` date DEFAULT NULL,
  `LastDate` date DEFAULT NULL,
  `Bo` tinyint(4) DEFAULT '0',
  `Br` tinyint(4) DEFAULT '0',
  `Ag` tinyint(4) DEFAULT '0',
  `Cl` tinyint(4) DEFAULT '0',
  `Al` tinyint(4) DEFAULT '0',
  `activeStatus` tinyint(4) DEFAULT '1',
  `BOMgr` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblAssetsInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblAssetsInfo`;
CREATE TABLE `tblAssetsInfo` (
  `assetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `assetCheckingAccounts` varchar(30) DEFAULT '',
  `assetSavingMoneyMarket` varchar(30) DEFAULT '',
  `assetStocks` varchar(30) DEFAULT '',
  `assetIRAAccounts` varchar(30) DEFAULT '',
  `assetESPOAccounts` varchar(30) DEFAULT '',
  `assetHome` varchar(30) DEFAULT '',
  `assetORE` varchar(30) DEFAULT '',
  `assetCars` varchar(30) DEFAULT '',
  `assetLifeInsurance` varchar(30) DEFAULT '',
  `assetOther` varchar(30) DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `assetCash` varchar(30) DEFAULT '',
  `assetCashOwed_del` varchar(30) DEFAULT '',
  `assetCheckingAccountsOwed_del` varchar(30) DEFAULT '',
  `assetSavingMoneyMarketOwed_del` varchar(30) DEFAULT '',
  `assetStocksOwed_del` varchar(30) DEFAULT '',
  `assetIRAAccountsOwed_del` varchar(30) DEFAULT '',
  `assetESPOAccountsOwed_del` varchar(30) DEFAULT '',
  `assetHomeOwed` varchar(30) DEFAULT '',
  `assetOREOwed` varchar(30) DEFAULT '',
  `assetCarsOwed` varchar(30) DEFAULT '',
  `assetLifeInsuranceOwed_del` varchar(30) DEFAULT '',
  `assetOtherOwed_del` varchar(30) DEFAULT '',
  `otherAmtOwed` varchar(30) DEFAULT NULL,
  `assetTotalCashBankAcc` varchar(30) DEFAULT NULL,
  `assetTotalRetirementValue` varchar(30) DEFAULT NULL,
  `assetAvailabilityLinesCredit` varchar(30) DEFAULT NULL,
  `assetSR` varchar(30) DEFAULT NULL,
  `assetSROwed` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`assetID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblAssetsInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=93365 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBillableMinutes`
-- ----------------------------
DROP TABLE IF EXISTS `tblBillableMinutes`;
CREATE TABLE `tblBillableMinutes` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notesID` int(10) unsigned NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `updateBillable` tinyint(4) DEFAULT '0',
  `billableMinutes` int(10) unsigned DEFAULT '0',
  `UID` int(11) NOT NULL DEFAULT '0',
  `URole` varchar(10) NOT NULL DEFAULT '',
  `recordDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `billingRate` varchar(10) DEFAULT '',
  `billingRate_bk` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `notesID` (`notesID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblBillableMinutes_ibfk_1` FOREIGN KEY (`notesID`) REFERENCES `tblLMRProcessorComments` (`serialNumber`),
  CONSTRAINT `tblBillableMinutes_ibfk_2` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=509714 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBinder`
-- ----------------------------
DROP TABLE IF EXISTS `tblBinder`;
CREATE TABLE `tblBinder` (
  `BID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL DEFAULT '0',
  `binderName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `createdDate` datetime DEFAULT NULL,
  `fileCopied` int(11) NOT NULL DEFAULT '0',
  `notes` longtext,
  PRIMARY KEY (`BID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblBinder_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=30019 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBouncedEmail`
-- ----------------------------
DROP TABLE IF EXISTS `tblBouncedEmail`;
CREATE TABLE `tblBouncedEmail` (
  `BID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL DEFAULT '',
  `bouncedDate` datetime NOT NULL,
  `accountName` varchar(75) NOT NULL DEFAULT '',
  `PCID` int(10) unsigned NOT NULL DEFAULT '0',
  `tried` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BID`),
  KEY `email` (`email`),
  KEY `PCID` (`PCID`,`tried`),
  KEY `accountName` (`accountName`)
) ENGINE=InnoDB AUTO_INCREMENT=79228 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBoundDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblBoundDocs`;
CREATE TABLE `tblBoundDocs` (
  `BDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BID` int(10) unsigned NOT NULL,
  `docID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `docType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `docName` varchar(75) DEFAULT NULL,
  `waterMark` tinyint(4) DEFAULT '0',
  `sequenceNo` int(11) DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BDID`),
  KEY `BID` (`BID`),
  CONSTRAINT `tblBoundDocs_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `tblBinder` (`BID`)
) ENGINE=InnoDB AUTO_INCREMENT=119930 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranch`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranch`;
CREATE TABLE `tblBranch` (
  `executiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRExecutive` varchar(50) NOT NULL DEFAULT '',
  `executiveEmail` varchar(75) NOT NULL DEFAULT '',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pwd` varchar(50) DEFAULT '',
  `company` varchar(60) DEFAULT '',
  `LMRBccEmail` text,
  `LMRCcEmail` text,
  `tollFree` varchar(20) DEFAULT '',
  `fax` varchar(20) DEFAULT '',
  `website` varchar(250) DEFAULT '',
  `logo` varchar(100) DEFAULT '',
  `cellNumber` varchar(20) DEFAULT '',
  `signCellNumber` varchar(20) DEFAULT '',
  `address` varchar(100) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `state` varchar(10) DEFAULT '',
  `zipCode` varchar(10) DEFAULT '',
  `applicationFee` varchar(30) DEFAULT '',
  `forensicFee` varchar(30) DEFAULT '',
  `docPreparationFee` varchar(30) DEFAULT '',
  `attorneyProcessingFee` varchar(30) DEFAULT '',
  `mortgae2Fee` varchar(30) DEFAULT '',
  `disclosure` blob,
  `paymentToCompany` varchar(50) DEFAULT '',
  `rescissionPhNo` varchar(20) DEFAULT '',
  `processingCompanyId` int(11) DEFAULT '0',
  `packageId` varchar(30) DEFAULT '',
  `brokerProcessingFee` varchar(30) DEFAULT '',
  `loanModificationFee` varchar(30) DEFAULT '',
  `serviceAFee` varchar(30) DEFAULT '',
  `serviceBFee` varchar(30) DEFAULT '',
  `userType` varchar(25) DEFAULT '',
  `tcUrl` varchar(250) DEFAULT '',
  `paymentGateway` varchar(25) DEFAULT 'Authorize.net',
  `executiveCreatedDate` date DEFAULT NULL,
  `executiveLastLoginDate` datetime DEFAULT NULL,
  `addHearAbout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowLMRAEToEditFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `APILoginId` varchar(50) DEFAULT '',
  `transactionKey` varchar(50) DEFAULT '',
  `paypalEmailId` varchar(75) DEFAULT '',
  `eCheckUrl` varchar(250) DEFAULT '',
  `isECheck` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribedOption` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `askReferralAgent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `branchAELoginUrl` varchar(150) DEFAULT '',
  `demoVideoLink` varchar(250) DEFAULT '',
  `allowLMRAEToAccessDocs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowLMRToOnOffAgentLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `eBookLink` varchar(250) DEFAULT '',
  `linkToSpanishVersion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `askPaymentBeforeLMR` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowLMRAEToEditCommission` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `showPoweredByTMPLink` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sslScript` longtext,
  `allowToViewSslScript` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `serviceProvider` varchar(20) DEFAULT '',
  `simLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowAddOn` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `timeZone` varchar(10) DEFAULT 'EST',
  `redirectUrl` varchar(250) DEFAULT '',
  `subscriberID` varchar(30) DEFAULT '',
  `googleTrackingCode` longtext,
  `TAC` longtext,
  `TACQA` longtext,
  `allowToUpdateFileAdminSection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sendMarketingEmail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowClientToUploadDocs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `displayLinkToFICO` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBranchToLogin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addBranchHearAbout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowLMRToEditAgentProfile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `customMessage` longtext,
  `directPhone` varchar(20) DEFAULT '',
  `allowToAddAgent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `useMyServerSetting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowBranchToCreateFiles` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBranchToCreateTasks` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBranchToSeeDashboard` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `accessRestriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seePrivate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowedToDeleteUplodedDocs` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowedToEditOwnNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `permissionToREST` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowedToExcelReport` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `RESTApproval` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `RESTFee` int(11) DEFAULT '0',
  `ReadyForAnalysis` varchar(5) DEFAULT 'No',
  `globalAcctNo` varchar(50) DEFAULT '',
  `sponsorName` varchar(50) DEFAULT '',
  `changeDIYPlan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowToSendHomeownerLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isPrimary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `fluidLayout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribeToHOME` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToLASubmit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agentFileAccess` int(10) unsigned NOT NULL DEFAULT '1',
  `allowEmailCampaign` tinyint(1) DEFAULT '1',
  `allowToSendFax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowBranchToSeeCommission` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowClientToAccessDocs` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToSendFileDesignation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowBranchToSeePublicNotes` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mailingAddress` varchar(75) NOT NULL DEFAULT '',
  `mailingCity` varchar(45) NOT NULL DEFAULT '',
  `mailingState` varchar(45) NOT NULL DEFAULT '',
  `mailingZipCode` varchar(15) NOT NULL DEFAULT '',
  `bankName` varchar(75) NOT NULL DEFAULT '',
  `routingNumber` longtext,
  `accountNumber` longtext,
  `county` varchar(60) NOT NULL DEFAULT '',
  `allowToCFPBSubmit` tinyint(1) NOT NULL DEFAULT '0',
  `allowToViewCFPBPipeline` tinyint(1) NOT NULL DEFAULT '0',
  `allowToAccessRAM` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowBranchManagerToLogin` tinyint(1) unsigned DEFAULT '0',
  `thankMsg` text,
  `thankMsgSV` text,
  `defaultPrimaryStatus` varchar(100) NOT NULL,
  `defaultPrimaryStatusForFA` varchar(25) NOT NULL,
  `googleTrackingCodeQA` longtext,
  `allowToEditCCInfo` tinyint(4) DEFAULT '0',
  `allowEditToIR` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`executiveId`),
  KEY `executiveEmail` (`executiveEmail`),
  KEY `activeStatus` (`activeStatus`),
  KEY `processingCompanyId` (`processingCompanyId`),
  KEY `userType` (`userType`),
  KEY `allowBranchToLogin` (`allowBranchToLogin`),
  KEY `activeStatus_2` (`activeStatus`,`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=5140 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `insert_default_hear_about_values` AFTER INSERT ON `tblBranch` FOR EACH ROW BEGIN
		DECLARE cnt INT DEFAULT 0;

		IF (new.addBranchHearAbout = 1) THEN
			SET cnt = (SELECT COUNT(*) FROM tblBranchHearAbout WHERE LMRAEID = new.executiveId); 
			IF cnt = 0 THEN
				INSERT IGNORE INTO tblBranchHearAbout (LMRAEID, branchHearAbout)
				VALUES (new.executiveId, 'Referral from Friend'),
				(new.executiveId, 'Google Ad'),
				(new.executiveId, 'Google Search'),
				(new.executiveId, 'Banner Ad'),
				(new.executiveId, 'Trade Show'),
				(new.executiveId, 'Trade Publication'),
				(new.executiveId, 'Direct Mail');
			END IF;

		END IF;
    END;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `update_default_hear_about_values` AFTER UPDATE ON `tblBranch` FOR EACH ROW BEGIN
		DECLARE cnt INT DEFAULT 0;
		IF (new.addBranchHearAbout = 1) THEN

			SET cnt = (SELECT COUNT(*) FROM tblBranchHearAbout WHERE LMRAEID = new.executiveId); 
			IF cnt = 0 THEN
				INSERT IGNORE INTO tblBranchHearAbout (LMRAEID, branchHearAbout)
				VALUES (new.executiveId, 'Referral from Friend'),
				(new.executiveId, 'Google Ad'),
				(new.executiveId, 'Google Search'),
				(new.executiveId, 'Banner Ad'),
				(new.executiveId, 'Trade Show'),
				(new.executiveId, 'Trade Publication'),
				(new.executiveId, 'Direct Mail');
			END IF;

		END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblBranchCustomPKGID`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchCustomPKGID`;
CREATE TABLE `tblBranchCustomPKGID` (
  `BCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branchID` int(10) unsigned NOT NULL,
  `pkgID` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BCID`),
  KEY `pkgID` (`pkgID`),
  KEY `branchID` (`branchID`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblBranchCustomPKGID_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=57299 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchEmployees`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchEmployees`;
CREATE TABLE `tblBranchEmployees` (
  `ALID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEID` int(10) unsigned NOT NULL,
  `EID` int(10) unsigned NOT NULL,
  `updatedDate` date DEFAULT NULL,
  PRIMARY KEY (`ALID`),
  UNIQUE KEY `LMEID` (`LMRAEID`,`EID`),
  KEY `LMRAEID` (`LMRAEID`),
  KEY `EID` (`EID`),
  CONSTRAINT `tblBranchEmployees_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchEmployees_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `tblAdminUsers` (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=54995 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchFee`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchFee`;
CREATE TABLE `tblBranchFee` (
  `FID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EID` int(10) unsigned NOT NULL,
  `fee` decimal(13,2) DEFAULT '0.00',
  `paidDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`FID`),
  KEY `EID` (`EID`),
  CONSTRAINT `tblBranchFee_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchHearAbout`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchHearAbout`;
CREATE TABLE `tblBranchHearAbout` (
  `BHID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEID` int(10) unsigned NOT NULL,
  `branchHearAbout` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BHID`),
  UNIQUE KEY `LMRAEID_2` (`LMRAEID`,`branchHearAbout`,`activeStatus`),
  KEY `LMRAEID` (`LMRAEID`),
  CONSTRAINT `tblBranchHearAbout_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=1819 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchLMRClientType`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchLMRClientType`;
CREATE TABLE `tblBranchLMRClientType` (
  `BTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branchID` int(10) unsigned NOT NULL,
  `LMRClientType` varchar(10) DEFAULT NULL,
  `moduleCode` varchar(10) NOT NULL,
  PRIMARY KEY (`BTID`),
  UNIQUE KEY `branchID_3` (`branchID`,`moduleCode`,`LMRClientType`),
  KEY `branchID` (`branchID`),
  KEY `LMRClientType` (`LMRClientType`),
  KEY `branchID_2` (`branchID`,`LMRClientType`),
  KEY `moduleCode` (`moduleCode`),
  KEY `branchID_4` (`branchID`,`moduleCode`,`LMRClientType`),
  CONSTRAINT `tblBranchLMRClientType_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchLMRClientType_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=199534 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchLMRClientType_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchLMRClientType_h`;
CREATE TABLE `tblBranchLMRClientType_h` (
  `BTID` int(10) unsigned NOT NULL,
  `branchID` int(10) unsigned NOT NULL,
  `LMRClientType` varchar(10) DEFAULT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `recordDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchLegalContract`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchLegalContract`;
CREATE TABLE `tblBranchLegalContract` (
  `LCLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEId` int(11) unsigned NOT NULL,
  `PCId` int(11) unsigned NOT NULL,
  `legalContent` blob,
  `updatedDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LCLID`),
  KEY `LMRAEId` (`LMRAEId`),
  KEY `PCId` (`PCId`),
  CONSTRAINT `tblBranchLegalContract_ibfk_1` FOREIGN KEY (`LMRAEId`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchLegalContract_ibfk_2` FOREIGN KEY (`PCId`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=23482 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchMandatoryChecklistItems`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchMandatoryChecklistItems`;
CREATE TABLE `tblBranchMandatoryChecklistItems` (
  `BRCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `executiveId` int(10) unsigned NOT NULL,
  `checklistId` text,
  `showInLV` tinyint(4) DEFAULT '0',
  `showInSV` tinyint(4) DEFAULT '0',
  `recordDate` datetime DEFAULT NULL,
  `mandatoryInLV` tinyint(4) NOT NULL DEFAULT '0',
  `mandatoryInSV` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BRCID`),
  KEY `executiveId` (`executiveId`),
  CONSTRAINT `tblBranchMandatoryChecklistItems_ibfk_1` FOREIGN KEY (`executiveId`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=1546 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchModules`;
CREATE TABLE `tblBranchModules` (
  `BMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branchID` int(10) unsigned NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`BMID`),
  KEY `BMID` (`BMID`),
  KEY `branchID` (`branchID`),
  KEY `moduleCode` (`moduleCode`),
  KEY `branchID_2` (`branchID`,`moduleCode`,`activeStatus`),
  CONSTRAINT `tblBranchModules_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=22056 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchPCUploadDoc`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchPCUploadDoc`;
CREATE TABLE `tblBranchPCUploadDoc` (
  `BPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docID` int(10) unsigned NOT NULL,
  `UID` int(11) DEFAULT '0',
  `URole` varchar(30) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `branchID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`BPID`),
  KEY `docID` (`docID`),
  KEY `branchID` (`branchID`),
  CONSTRAINT `tblBranchPCUploadDoc_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchPCUploadDoc_ibfk_2` FOREIGN KEY (`docID`) REFERENCES `tblPCUploadDocs` (`DID`)
) ENGINE=InnoDB AUTO_INCREMENT=2801 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchPackageId`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchPackageId`;
CREATE TABLE `tblBranchPackageId` (
  `LPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgID` int(10) unsigned NOT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `LMRAEID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`LPID`),
  KEY `pkgID` (`pkgID`),
  KEY `LMRAEID` (`LMRAEID`),
  CONSTRAINT `tblBranchPackageId_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblBranchPackageId_ibfk_2` FOREIGN KEY (`pkgID`) REFERENCES `tblLibPackage` (`PKGID`)
) ENGINE=InnoDB AUTO_INCREMENT=1164861 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBranchThankYouMsg`
-- ----------------------------
DROP TABLE IF EXISTS `tblBranchThankYouMsg`;
CREATE TABLE `tblBranchThankYouMsg` (
  `TMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branchID` int(10) unsigned NOT NULL,
  `thankMsgLMLV` longtext,
  `thankMsgLMSV` longtext,
  `thankMsgFOP` longtext,
  `thankMsgSLM` longtext,
  `thankMsgFSS` longtext,
  `thankMsgFSI` longtext,
  `thankMsgUSEI` longtext,
  `thankMsgFU` longtext,
  `thankMsgAQ` longtext,
  `thankAgReg` longtext,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `thankMsgBR` longtext,
  PRIMARY KEY (`TMID`),
  KEY `TMID` (`TMID`),
  KEY `branchID` (`branchID`),
  CONSTRAINT `tblBranchThankYouMsg_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBrokerDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblBrokerDocs`;
CREATE TABLE `tblBrokerDocs` (
  `brDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userNumber` int(10) unsigned NOT NULL,
  `docName` blob,
  `displayDocName` blob,
  `uploadedBy` int(11) DEFAULT '0',
  `uploadedDate` datetime DEFAULT NULL,
  `uploadingUserType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `docCategory` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `dType` enum('U','GD','DB','BC') DEFAULT 'U',
  `docUrl` varchar(100) DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`brDID`),
  KEY `userNumber` (`userNumber`),
  CONSTRAINT `tblBrokerDocs_ibfk_1` FOREIGN KEY (`userNumber`) REFERENCES `tblAgent` (`userNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblBrokerSubscription`
-- ----------------------------
DROP TABLE IF EXISTS `tblBrokerSubscription`;
CREATE TABLE `tblBrokerSubscription` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brokerNumber` int(10) unsigned NOT NULL,
  `payment` float DEFAULT NULL,
  `paymentStatus` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `transactionID` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ARBSubscriptionID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ARBSubscriptionStatus` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `paymentError` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`),
  KEY `brokerNumber` (`brokerNumber`),
  CONSTRAINT `tblBrokerSubscription_ibfk_1` FOREIGN KEY (`brokerNumber`) REFERENCES `tblAgent` (`userNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=1769 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblCFPBFileLock`
-- ----------------------------
DROP TABLE IF EXISTS `tblCFPBFileLock`;
CREATE TABLE `tblCFPBFileLock` (
  `LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `lockedUID` int(11) NOT NULL,
  `lockedTime` datetime NOT NULL,
  `lockedUserRole` varchar(20) DEFAULT NULL,
  `lockedBy` varchar(30) DEFAULT NULL,
  `releaseUID` int(11) DEFAULT NULL,
  `releaseTime` datetime DEFAULT NULL,
  `releaseUserRole` varchar(20) DEFAULT NULL,
  `releasedBy` varchar(30) DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Equals 1 if locked and 0 if released',
  PRIMARY KEY (`LID`),
  KEY `LMRID` (`fileID`),
  CONSTRAINT `tblCFPBFileLock_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblChecklistFlatNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblChecklistFlatNotes`;
CREATE TABLE `tblChecklistFlatNotes` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `CID` int(10) unsigned NOT NULL,
  `notes` longtext NOT NULL,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Employee','Branch','Agent') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `sendTO` longtext,
  `CLType` enum('PCL','FCL') DEFAULT 'PCL',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblChecklistFlatNotes_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblChecklistFlatNotes_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `tblPCChecklistModules` (`PCMID`)
) ENGINE=InnoDB AUTO_INCREMENT=17653 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClient`
-- ----------------------------
DROP TABLE IF EXISTS `tblClient`;
CREATE TABLE `tblClient` (
  `CID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientFName` varchar(150) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `clientLName` varchar(150) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `clientPhone` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `clientCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `clientEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `clientPwd` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `registerDate` date DEFAULT NULL,
  `lastLogin` date DEFAULT NULL,
  `referralCode` int(11) DEFAULT NULL,
  `hearAbout` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(1) DEFAULT '1',
  `agreedTC` tinyint(1) DEFAULT '0',
  `emailAuthOpt` tinyint(1) DEFAULT '0',
  `clientAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `clientCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `clientState` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `clientZip` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `paymentStatus` varchar(10) CHARACTER SET latin1 DEFAULT 'Unpaid',
  `membership` varchar(10) CHARACTER SET latin1 DEFAULT 'B',
  `LMRAffiliateCode` int(11) DEFAULT '0',
  `clientRemarks` longtext CHARACTER SET latin1,
  `serviceProvider` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `timeZone` varchar(10) CHARACTER SET latin1 DEFAULT 'EST',
  `dummyId` varchar(50) DEFAULT '',
  `sendMarketingEmail` int(11) DEFAULT '1',
  `ipAddr` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `mailinghouseNumber` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `altPhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `refId` int(11) DEFAULT '0',
  `allowToLogin` tinyint(1) DEFAULT '1',
  `publishBInfo` tinyint(1) unsigned DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `ethnicity` int(11) DEFAULT NULL,
  `gender` tinyint(1) unsigned DEFAULT NULL,
  `PCID` int(10) unsigned DEFAULT NULL,
  `methodOfContact` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CID`),
  KEY `CID` (`CID`),
  KEY `clientFName` (`clientFName`),
  KEY `clientLName` (`clientLName`),
  KEY `clientEmail` (`clientEmail`),
  KEY `referralCode` (`referralCode`),
  KEY `LMRAffiliateCode` (`LMRAffiliateCode`),
  KEY `activeStatus` (`activeStatus`),
  KEY `dummyId` (`dummyId`)
) ENGINE=InnoDB AUTO_INCREMENT=5830683 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientAssetsInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientAssetsInfo`;
CREATE TABLE `tblClientAssetsInfo` (
  `cAssetID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(10) unsigned NOT NULL,
  `assetCheckingAccounts` float NOT NULL,
  `assetSavingMoneyMarket` float NOT NULL,
  `assetStocks` float NOT NULL,
  `assetIRAAccounts` float NOT NULL,
  `assetESPOAccounts` float NOT NULL,
  `assetHome` float NOT NULL,
  `assetORE` float NOT NULL,
  `assetCars` float NOT NULL,
  `assetLifeInsurance` float NOT NULL,
  `assetOther` float NOT NULL,
  `assetCash` float NOT NULL,
  `assetHomeOwed` float NOT NULL,
  `assetOREOwed` float NOT NULL,
  `assetCarsOwed` float NOT NULL,
  `otherAmtOwed` float NOT NULL,
  `networthOfBusinessOwned` float NOT NULL,
  `otherDesc` text,
  `activeStatus` tinyint(4) DEFAULT '1',
  `recordDate` datetime DEFAULT NULL,
  `assetTotalCashBankAcc` varchar(30) DEFAULT NULL,
  `assetTotalRetirementValue` varchar(30) DEFAULT NULL,
  `assetAvailabilityLinesCredit` varchar(30) DEFAULT NULL,
  `assetSR` varchar(30) DEFAULT NULL,
  `assetSROwed` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cAssetID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientAssetsInfo_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=4119 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientDocs`;
CREATE TABLE `tblClientDocs` (
  `cDocID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(10) unsigned NOT NULL,
  `docName` blob,
  `displayDocName` blob,
  `fileName` varchar(100) DEFAULT NULL,
  `docCategory` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `dType` enum('U','GD','DB','BC') DEFAULT 'U',
  `docUrl` varchar(100) DEFAULT NULL,
  `uploadedBy` int(11) DEFAULT '0',
  `uploadingUserType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `uploadedDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`cDocID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientDocs_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientExp`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientExp`;
CREATE TABLE `tblClientExp` (
  `HFEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `userType` enum('B','C') DEFAULT NULL,
  `expType` enum('Flip','Gup','Sell') DEFAULT NULL,
  `propertyType` varchar(35) NOT NULL,
  `purchaseDate` date NOT NULL,
  `purchasePrice` float NOT NULL,
  `amountFinanced` float NOT NULL,
  `rehabBudget` float NOT NULL,
  `entityName` varchar(75) NOT NULL,
  `ownership` float NOT NULL,
  `exitValues` varchar(100) DEFAULT NULL,
  `salePrice` float NOT NULL,
  `saleDate` date NOT NULL,
  `monthlyRent` float NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `Outcome` float NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`HFEID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientExp_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=66907 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientLOScheduleRealInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientLOScheduleRealInfo`;
CREATE TABLE `tblClientLOScheduleRealInfo` (
  `CLOSRID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `schedulePropAddr` varchar(75) NOT NULL,
  `scheduleStatus` varchar(45) NOT NULL,
  `propType` varchar(45) NOT NULL,
  `presentMarketValue` varchar(45) NOT NULL,
  `amountOfMortgages` int(11) NOT NULL,
  `grossRentalIncome` int(11) NOT NULL,
  `mortgagePayments` int(11) NOT NULL,
  `insMaintTaxMisc` int(11) NOT NULL,
  `netRentalIncome` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  `schedulePropCity` varchar(50) DEFAULT NULL,
  `schedulePropState` varchar(50) DEFAULT NULL,
  `schedulePropZip` varchar(20) DEFAULT NULL,
  `propertyDesc` text,
  PRIMARY KEY (`CLOSRID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientLOScheduleRealInfo_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientPayments`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientPayments`;
CREATE TABLE `tblClientPayments` (
  `CPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `BRID` int(11) NOT NULL,
  `amount` varchar(20) DEFAULT '0',
  `paymentStatus` varchar(20) DEFAULT 'Unpaid',
  `membership` varchar(10) DEFAULT 'B',
  `recordDate` datetime DEFAULT NULL,
  `remarks` longtext,
  `referralCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CPID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientPayments_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=10427 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientReferral`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientReferral`;
CREATE TABLE `tblClientReferral` (
  `CRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(10) unsigned NOT NULL,
  `BRC` int(11) DEFAULT '0',
  `ARC` int(11) DEFAULT '0',
  `BRID` int(10) unsigned NOT NULL,
  `AGID` int(10) unsigned NOT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`CRID`),
  UNIQUE KEY `CID_2` (`CID`,`BRID`,`AGID`,`activeStatus`),
  KEY `BRID` (`BRID`,`activeStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=9251426 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblClientSubscription`
-- ----------------------------
DROP TABLE IF EXISTS `tblClientSubscription`;
CREATE TABLE `tblClientSubscription` (
  `BCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(10) unsigned NOT NULL,
  `payment` float DEFAULT NULL,
  `paymentStatus` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `paymentError` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `transactionID` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `paymentDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BCID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblClientSubscription_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=1961 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblContacts`
-- ----------------------------
DROP TABLE IF EXISTS `tblContacts`;
CREATE TABLE `tblContacts` (
  `CID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `companyName` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `city` varchar(40) NOT NULL DEFAULT '',
  `state` varchar(5) NOT NULL DEFAULT '',
  `zip` varchar(15) NOT NULL DEFAULT '',
  `website` varchar(40) NOT NULL DEFAULT '',
  `phone` varchar(25) DEFAULT NULL,
  `cell` varchar(15) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `description` longtext,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `contactName` varchar(100) NOT NULL DEFAULT '',
  `CTypeID` int(11) unsigned NOT NULL DEFAULT '13',
  `dummyID` int(10) unsigned NOT NULL,
  `licenseNo` varchar(50) NOT NULL DEFAULT '',
  `tollFree` varchar(20) DEFAULT NULL,
  `contactLName` varchar(100) DEFAULT NULL,
  `contactDummyId` varchar(50) DEFAULT NULL,
  `barNo` varchar(50) DEFAULT NULL,
  `stateOfFormation` varchar(5) DEFAULT NULL,
  `entityType` varchar(50) DEFAULT NULL,
  `einNo` varchar(50) DEFAULT NULL,
  `repTitle` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CID`),
  KEY `PCID` (`PCID`),
  KEY `CTypeID` (`CTypeID`),
  CONSTRAINT `tblcontacts_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblcontacts_ibfk_2` FOREIGN KEY (`CTypeID`) REFERENCES `tblContactsType` (`CTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=185066 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblContactsType`
-- ----------------------------
DROP TABLE IF EXISTS `tblContactsType`;
CREATE TABLE `tblContactsType` (
  `CTypeID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(40) NOT NULL DEFAULT '',
  `conType` enum('M','C') DEFAULT 'M',
  `PCID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CTypeID`),
  UNIQUE KEY `TYPE` (`TYPE`,`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDIYClientPackageId`
-- ----------------------------
DROP TABLE IF EXISTS `tblDIYClientPackageId`;
CREATE TABLE `tblDIYClientPackageId` (
  `DCPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEID` int(10) unsigned NOT NULL,
  `pkgID` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`DCPID`),
  KEY `pkgID` (`pkgID`),
  KEY `LMRAEID` (`LMRAEID`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblDIYClientPackageId_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=70807 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDashboardAnnouncement`
-- ----------------------------
DROP TABLE IF EXISTS `tblDashboardAnnouncement`;
CREATE TABLE `tblDashboardAnnouncement` (
  `AID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `announcementDate` date DEFAULT NULL,
  `announcementTitle` longtext,
  `documentName` varchar(25) NOT NULL DEFAULT '',
  `documentPath` longtext,
  `description` longtext,
  `dStatus` tinyint(1) DEFAULT '0',
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDefaultTabOnPipeline`
-- ----------------------------
DROP TABLE IF EXISTS `tblDefaultTabOnPipeline`;
CREATE TABLE `tblDefaultTabOnPipeline` (
  `DTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PSID` varchar(30) NOT NULL DEFAULT '',
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Employee','Branch','Agent','Super','Auditor','Sales','REST','Client','CFPB Auditor','Auditor Manager') NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`DTID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblDefaultTabOnPipeline_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDoNotShowAnnouncementForUser`
-- ----------------------------
DROP TABLE IF EXISTS `tblDoNotShowAnnouncementForUser`;
CREATE TABLE `tblDoNotShowAnnouncementForUser` (
  `announcementID` int(10) unsigned NOT NULL,
  `remind` tinyint(1) NOT NULL DEFAULT '1',
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client') DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  KEY `tblDoNotShowAnnouncementForUser` (`announcementID`),
  CONSTRAINT `tblDoNotShowAnnouncementForUser` FOREIGN KEY (`announcementID`) REFERENCES `tblAnnouncement` (`AID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDomainComments`
-- ----------------------------
DROP TABLE IF EXISTS `tblDomainComments`;
CREATE TABLE `tblDomainComments` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `brokerName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `brokerEmail` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `brokerCompany` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `entryDate` date DEFAULT NULL,
  `comments` blob,
  `status` tinyint(4) DEFAULT '1',
  `approvedStatus` varchar(10) CHARACTER SET latin1 DEFAULT '1',
  `reply` blob,
  `brokerPhone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDomainSearchTerm`
-- ----------------------------
DROP TABLE IF EXISTS `tblDomainSearchTerm`;
CREATE TABLE `tblDomainSearchTerm` (
  `DSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `searchTerm` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`DSID`),
  KEY `searchTerm` (`searchTerm`,`DSID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblDomainWhoIs`
-- ----------------------------
DROP TABLE IF EXISTS `tblDomainWhoIs`;
CREATE TABLE `tblDomainWhoIs` (
  `DWID` int(10) unsigned NOT NULL DEFAULT '0',
  `DSID` int(10) unsigned NOT NULL,
  `domain` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `firstName` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `lastName` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `adminContact` longtext CHARACTER SET latin1,
  `city` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `state` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  KEY `DSID` (`DSID`),
  CONSTRAINT `tblDomainWhoIs_ibfk_1` FOREIGN KEY (`DSID`) REFERENCES `tblDomainSearchTerm` (`DSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblEMailServerInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblEMailServerInfo`;
CREATE TABLE `tblEMailServerInfo` (
  `ESID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL,
  `senderUserType` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `hostName` longtext CHARACTER SET latin1,
  `userName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `pwd` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `portNo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `replyTo` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `bounceMail` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `verified` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ESID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblEmailAttachments`
-- ----------------------------
DROP TABLE IF EXISTS `tblEmailAttachments`;
CREATE TABLE `tblEmailAttachments` (
  `EAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MSID` int(10) unsigned NOT NULL,
  `docName` varchar(100) NOT NULL,
  `displayDocName` varchar(100) NOT NULL DEFAULT '',
  `uploadedDate` datetime NOT NULL,
  PRIMARY KEY (`EAID`),
  KEY `MSID` (`MSID`),
  CONSTRAINT `tblEmailAttachments_ibfk_1` FOREIGN KEY (`MSID`) REFERENCES `tblMailScheduled` (`MSID`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblEmployeeOwnBranch`
-- ----------------------------
DROP TABLE IF EXISTS `tblEmployeeOwnBranch`;
CREATE TABLE `tblEmployeeOwnBranch` (
  `EBID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EID` int(10) unsigned NOT NULL,
  `BID` int(10) unsigned NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`EBID`),
  UNIQUE KEY `EIBID_index` (`EID`,`BID`),
  KEY `EID` (`EID`),
  KEY `BID` (`BID`),
  CONSTRAINT `tblEmployeeOwnBranch_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `tblAdminUsers` (`AID`),
  CONSTRAINT `tblEmployeeOwnBranch_ibfk_2` FOREIGN KEY (`BID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblEmployeeStateBarInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblEmployeeStateBarInfo`;
CREATE TABLE `tblEmployeeStateBarInfo` (
  `ESID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employeeId` int(10) unsigned NOT NULL,
  `state` varchar(45) NOT NULL,
  `barNo` varchar(210) NOT NULL,
  `county` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`ESID`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `tblEmployeeStateBarInfo_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `tblAdminUsers` (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblEquipmentInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblEquipmentInfo`;
CREATE TABLE `tblEquipmentInfo` (
  `EIID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(11) unsigned NOT NULL,
  `vendorName` varchar(75) NOT NULL,
  `vendorPhone` varchar(20) NOT NULL,
  `vendorContact` varchar(75) NOT NULL,
  `equipmentType` varchar(75) NOT NULL,
  `vinSerialNumber` varchar(75) NOT NULL,
  `YEAR` varchar(15) NOT NULL,
  `salePrice` float NOT NULL,
  `own` varchar(15) NOT NULL,
  `make` varchar(75) NOT NULL,
  `downPayment` float NOT NULL,
  `replacementAddition` varchar(25) NOT NULL,
  `model` varchar(75) NOT NULL,
  `loanAmtRequested` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `mileage` varchar(35) NOT NULL,
  `equipmentDescription` text NOT NULL,
  `term` text NOT NULL,
  `userType` varchar(20) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`EIID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblEquipmentInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFaxNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblFaxNotes`;
CREATE TABLE `tblFaxNotes` (
  `FNID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FQID` int(10) unsigned NOT NULL,
  `notes` longtext,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`FNID`),
  KEY `FQID` (`FQID`),
  CONSTRAINT `tblFaxNotes_ibfk_1` FOREIGN KEY (`FQID`) REFERENCES `tblFaxQueue` (`FQID`)
) ENGINE=InnoDB AUTO_INCREMENT=3528 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFaxQueue`
-- ----------------------------
DROP TABLE IF EXISTS `tblFaxQueue`;
CREATE TABLE `tblFaxQueue` (
  `FQID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromUID` int(11) DEFAULT NULL,
  `fromUType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `PCID` int(11) DEFAULT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `noOfPagesSent` int(11) DEFAULT NULL,
  `faxSubj` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `faxMessage` longtext CHARACTER SET latin1,
  `faxedOn` datetime DEFAULT NULL,
  `mfFaxID` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `mfCost` float DEFAULT NULL,
  `sentStatus` varchar(50) CHARACTER SET latin1 DEFAULT 'Pending',
  `faxTrkNo` varchar(500) CHARACTER SET latin1 DEFAULT '',
  `docName` varchar(300) CHARACTER SET latin1 DEFAULT '',
  `faxedTo` varchar(500) CHARACTER SET latin1 DEFAULT '',
  `faxJobId` varchar(200) NOT NULL DEFAULT '',
  `faxType` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`FQID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFaxQueue_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=81464 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFaxRecipients`
-- ----------------------------
DROP TABLE IF EXISTS `tblFaxRecipients`;
CREATE TABLE `tblFaxRecipients` (
  `FRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FQID` int(10) unsigned NOT NULL,
  `recipients` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`FRID`),
  KEY `FQID` (`FQID`),
  CONSTRAINT `tblFaxRecipients_ibfk_1` FOREIGN KEY (`FQID`) REFERENCES `tblFaxQueue` (`FQID`)
) ENGINE=InnoDB AUTO_INCREMENT=90412 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFaxServerInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFaxServerInfo`;
CREATE TABLE `tblFaxServerInfo` (
  `FSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `eFaxHName` longtext CHARACTER SET latin1,
  `eFaxUserName` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `eFaxPwd` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `eFaxCompany` varchar(50) NOT NULL DEFAULT '',
  `eFaxServiceProvider` enum('Vitelity','Ringcentral','Faxage') DEFAULT 'Vitelity',
  PRIMARY KEY (`FSID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblFaxServerInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFaxedDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFaxedDocs`;
CREATE TABLE `tblFaxedDocs` (
  `FDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FQID` int(10) unsigned NOT NULL,
  `attachments` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `attachedDocPath` longtext,
  PRIMARY KEY (`FDID`),
  KEY `FQID` (`FQID`),
  CONSTRAINT `tblFaxedDocs_ibfk_1` FOREIGN KEY (`FQID`) REFERENCES `tblFaxQueue` (`FQID`)
) ENGINE=InnoDB AUTO_INCREMENT=119757 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFieldsQuickApp`
-- ----------------------------
DROP TABLE IF EXISTS `tblFieldsQuickApp`;
CREATE TABLE `tblFieldsQuickApp` (
  `PFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldID` int(10) unsigned NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `sectionID` varchar(50) DEFAULT NULL,
  `fieldLabel` varchar(200) DEFAULT NULL,
  `fieldName` varchar(200) DEFAULT NULL,
  `QADisplay` tinyint(2) DEFAULT '0',
  `mandatory` tinyint(2) NOT NULL DEFAULT '0',
  `FADisplay` tinyint(2) DEFAULT '0',
  `FAMandatory` tinyint(2) DEFAULT '0',
  `tabName` varchar(50) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  `recordDate` datetime NOT NULL,
  `BODisplay` tinyint(4) DEFAULT '0',
  `BOMandatory` tinyint(4) DEFAULT '0',
  `fileType` text,
  PRIMARY KEY (`PFID`),
  KEY `fieldID` (`fieldID`),
  KEY `PCID` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=127833 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFieldsQuickApp_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tblFieldsQuickApp_copy`;
CREATE TABLE `tblFieldsQuickApp_copy` (
  `PFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fieldID` int(10) unsigned NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `sectionID` varchar(50) DEFAULT NULL,
  `fieldLabel` varchar(200) DEFAULT NULL,
  `fieldName` varchar(200) DEFAULT NULL,
  `QADisplay` tinyint(2) DEFAULT '0',
  `mandatory` tinyint(2) NOT NULL DEFAULT '0',
  `FADisplay` tinyint(2) DEFAULT '0',
  `FAMandatory` tinyint(2) DEFAULT '0',
  `tabName` varchar(50) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`PFID`),
  KEY `fieldID` (`fieldID`),
  KEY `PCID` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=49356 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFile`
-- ----------------------------
DROP TABLE IF EXISTS `tblFile`;
CREATE TABLE `tblFile` (
  `LMRId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `brokerNumber` int(10) unsigned NOT NULL,
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0',
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `borrowerName` varchar(60) DEFAULT NULL,
  `occupancy` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerLoanRate` varchar(11) NOT NULL DEFAULT '',
  `loanType` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `adjustableDate` date DEFAULT NULL,
  `mortgageLates` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'NA',
  `lates1` float NOT NULL DEFAULT '0',
  `lates2` float NOT NULL DEFAULT '0',
  `lates3` float NOT NULL DEFAULT '0',
  `lates4` float NOT NULL DEFAULT '0',
  `lien1Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer3` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `homeValue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerMonthlyIncome` float NOT NULL DEFAULT '0',
  `description` blob,
  `doneLMR` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recordDate` date DEFAULT NULL,
  `doneAdjustableRate` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `initialRate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `totalMonthlyExpenses` float NOT NULL DEFAULT '0',
  `borrowerLName` varchar(70) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerFName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerLName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBCellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receivedDate` date DEFAULT NULL,
  `missedMonthOfMortPay` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `closedDate` date DEFAULT NULL,
  `loanNumber` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ssnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receiveNotice` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `salesDate` date DEFAULT NULL,
  `negotiatorName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `negotiatorPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `negotiatorNotes` blob,
  `isCoBorrower` tinyint(4) NOT NULL DEFAULT '0',
  `coBLoanNumber` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBSsnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBFax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyCity` varchar(100) DEFAULT NULL,
  `propertyState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber2` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber3` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddressAsProp` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `monthsBehind` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receiveModification` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'NA',
  `receiveModificationNotes` blob,
  `userType` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `createdBy` int(11) DEFAULT NULL,
  `createdUserType` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `lien1BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyType` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanType2` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Terms` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Terms` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `checkingAndSavings` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerDOB` date DEFAULT NULL,
  `noOfPeopleInProperty` int(11) NOT NULL DEFAULT '0',
  `mortgageNotes` blob,
  `areTaxesInsuranceEscrowed` int(11) NOT NULL DEFAULT '0',
  `workNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerWorkNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_borrowerName` text,
  `enc_borrowerLName` text CHARACTER SET latin1,
  `enc_ssnNumber` text CHARACTER SET latin1,
  `enc_borrowerDOB` text CHARACTER SET latin1,
  `enc_loanNumber` text CHARACTER SET latin1,
  `enc_loanNumber2` text CHARACTER SET latin1,
  `enc_borrowerEmail` text CHARACTER SET latin1,
  `enc_propertyAddress` text CHARACTER SET latin1,
  `enc_propertyCity` text CHARACTER SET latin1,
  `enc_propertyState` text CHARACTER SET latin1,
  `enc_propertyZip` text CHARACTER SET latin1,
  `fileSubmissionStatus` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `altPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBAltPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `LMREmailSent` int(11) NOT NULL DEFAULT '0',
  `clientId` int(11) NOT NULL,
  `packageViewed` int(11) NOT NULL DEFAULT '0',
  `coBorrowerDOB` date DEFAULT NULL,
  `dummyId` varchar(50) NOT NULL DEFAULT '',
  `referralCode1_del` int(11) NOT NULL DEFAULT '0',
  `LMRAffiliateCode1_del` int(11) NOT NULL DEFAULT '0',
  `executiveId1_del` int(11) NOT NULL DEFAULT '0',
  `propertyCounty` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `maritalStatus` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `marriageDate` date DEFAULT NULL,
  `divorceDate` date DEFAULT NULL,
  `maidenName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddressAsBorrower` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `coBorrowerMailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `spouseName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `leadID` int(11) NOT NULL DEFAULT '0',
  `noOfMonthsBehind1` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `noOfMonthsBehind2` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mortgageOwner1` int(11) NOT NULL DEFAULT '0',
  `mortgageOwner2` int(11) NOT NULL DEFAULT '0',
  `FAFeePaid` int(11) NOT NULL DEFAULT '0',
  `trueRetainerPayment1` float NOT NULL DEFAULT '0',
  `trueRetainerPayment2` float NOT NULL DEFAULT '0',
  `previousAddrAsMailing` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `previousAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousAddrAsMailing` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `coBorPreviousAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBedRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBathRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyHalfBathRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `basementHome` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `basementFinish` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `garageHome` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `dummyLeadSource_del` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `lastRefinanceDate` date DEFAULT NULL,
  `areInsuranceEscrowed` int(11) NOT NULL DEFAULT '0',
  `propertyCounty_old` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyLMRResponseStatus` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'Lead',
  `coBorrowerCounty` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `yearPurchased` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1LPMade` date DEFAULT NULL,
  `lien2LPMade` date DEFAULT NULL,
  `houseNo` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailinghouseNumber` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `REBrokerId` int(11) NOT NULL DEFAULT '0',
  `dummyFileNumber_del` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyBCallBack_del` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyLCallBack_del` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBMailinghouseNumber` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `encFieldUpdate` tinyint(4) NOT NULL DEFAULT '0',
  `serviceProvider` varchar(20) NOT NULL DEFAULT '',
  `borrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `coBorrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `mortgageInvestor1` int(11) DEFAULT NULL,
  `mortgageInvestor2` int(11) DEFAULT NULL,
  `mortgageOwner1_copy` int(11) DEFAULT NULL,
  `mortgageOwner2_copy` int(11) DEFAULT NULL,
  `coBServiceProvider` varchar(20) NOT NULL DEFAULT '',
  `lastUpdatedDate` datetime DEFAULT NULL,
  `updatedBy` varchar(25) DEFAULT NULL,
  `borrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `coBorrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `fileCopied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remainingMonths` int(11) DEFAULT '0',
  `oldFPCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LMRId`),
  KEY `FBRID` (`FBRID`),
  KEY `FPCID` (`FPCID`),
  KEY `brokerNumber` (`brokerNumber`),
  KEY `ssnNumber` (`ssnNumber`),
  KEY `clientId` (`clientId`),
  KEY `borrowerName` (`borrowerName`),
  KEY `FBRID_2` (`FBRID`,`FPCID`),
  KEY `dummyId` (`dummyId`),
  KEY `borrowerEmail` (`borrowerEmail`),
  KEY `borrowerLName` (`borrowerLName`),
  KEY `activeStatus` (`activeStatus`),
  KEY `brokerNumber_2` (`brokerNumber`,`activeStatus`,`LMRId`),
  KEY `FBRID_3` (`FBRID`,`activeStatus`,`LMRId`),
  KEY `FPCID_2` (`FPCID`,`activeStatus`,`LMRId`),
  KEY `activeStatus_2` (`activeStatus`,`FPCID`),
  KEY `borrowerName_2` (`borrowerName`,`borrowerLName`),
  KEY `salesDate` (`salesDate`),
  KEY `oldFPCID` (`oldFPCID`),
  CONSTRAINT `tblFile_ibfk_2` FOREIGN KEY (`FBRID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblFile_ibfk_3` FOREIGN KEY (`FPCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblFile_ibfk_4` FOREIGN KEY (`brokerNumber`) REFERENCES `tblAgent` (`userNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6232007 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `insert_system_notes_file_create` AFTER INSERT ON `tblFile` FOR EACH ROW BEGIN
		DECLARE cnt INT DEFAULT 0;
		DECLARE comments VARCHAR(100);
		DECLARE brokerNumber INT DEFAULT 0;
		DECLARE clientId INT DEFAULT 0;
		DECLARE branchID INT DEFAULT 0;
		DECLARE employeeId INT DEFAULT 0;
		IF (new.createdUserType = 'Employee') THEN
			SET comments = 'Created via Back Office';
			SET employeeId =  new.createdBy;
			ELSEIF (new.createdUserType = 'Admin') THEN
				SET comments = 'Created By Super';
			ELSEIF (new.createdUserType = 'LMR AE' || new.createdUserType = 'Branch') THEN
				SET comments = 'Created via Branch';
				SET branchID =  new.FBRID;
			ELSEIF (new.createdUserType = 'Client') THEN
				SET comments = 'Created via Borrower Portal';
				SET clientId =  new.clientId;
			ELSEIF (new.createdUserType = 'Agent') THEN
				SET comments = 'Created via Broker';
				SET brokerNumber =  new.brokerNumber;
			ELSEIF (new.createdUserType = 'Lead') THEN
				SET comments = 'Created via POST';
			ELSEIF (new.createdUserType = 'Web Form') THEN
			SET comments = 'Created via Webform';
		END IF;
			SET cnt = (SELECT COUNT(*) FROM tblLMRProcessorComments WHERE fileID = new.LMRId); 			IF cnt = 0 THEN
				INSERT IGNORE INTO tblLMRProcessorComments (fileID, notesDate, processorComments, isSysNotes, brokerNumber, clientId, executiveId, employeeId)
				VALUES (new.LMRId, NOW(), comments, '1', brokerNumber, clientId, branchID, employeeId);
			END IF;
    END;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `before_tblFile_updateHistory` BEFORE UPDATE ON `tblFile` FOR EACH ROW BEGIN
        IF (NEW.LMRId>0) THEN
        INSERT INTO tblFile_h (SELECT * FROM tblFile WHERE LMRId = NEW.LMRId);
        END IF;
		   IF ((new.salesDate <> old.salesDate) AND ( new.salesDate >= CURDATE())) THEN
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'saleDate' AND reminded = 1;
		   ELSEIF ((new.lien1LPMade <> old.lien1LPMade) AND ( new.lien1LPMade >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'lastPaymentDate' AND reminded = 1;
		   ELSEIF ((new.receivedDate <> old.receivedDate) AND ( new.receivedDate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'receivedDate' AND reminded = 1;
		   ELSEIF ((new.closedDate <> old.closedDate) AND ( new.closedDate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'closedDate' AND reminded = 1;																							   				
		   END IF; 	           
    END;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `updateFileLastUpdatedDate` AFTER UPDATE ON `tblFile` FOR EACH ROW BEGIN
	UPDATE tblFileUpdatedDate SET lastUpdatedDate = NOW() WHERE fileID= new.LMRId;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFile2`
-- ----------------------------
DROP TABLE IF EXISTS `tblFile2`;
CREATE TABLE `tblFile2` (
  `F2ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `worldPhone` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `worldPhoneCoB` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `borrowerTypeSS` varchar(15) DEFAULT '',
  `coborrowerTypeSS` varchar(15) DEFAULT '',
  `borrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `coBorrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `preQualifierName` varchar(80) NOT NULL DEFAULT '',
  `driverLicenseNo` varchar(30) NOT NULL DEFAULT '',
  `borrowerMaidenName` varchar(60) NOT NULL DEFAULT '',
  `noticeAccelerationDate` date NOT NULL DEFAULT '0000-00-00',
  `driverLicenseState` varchar(10) NOT NULL DEFAULT '',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `methodOfContact` varchar(100) DEFAULT NULL,
  `timeToContact` varchar(10) NOT NULL DEFAULT '',
  `bestTime` varchar(5) NOT NULL DEFAULT '',
  `transferOfServicingDate` date DEFAULT NULL,
  `coMethodOfContact` varchar(10) NOT NULL DEFAULT '',
  `coTimeToContact` varchar(10) NOT NULL DEFAULT '',
  `coBestTime` varchar(5) NOT NULL DEFAULT '',
  `FSAID` varchar(30) NOT NULL DEFAULT '',
  `chA1` varchar(75) NOT NULL DEFAULT '',
  `chA2` varchar(75) NOT NULL DEFAULT '',
  `chA3` varchar(75) NOT NULL DEFAULT '',
  `chA4` varchar(75) NOT NULL DEFAULT '',
  `loanReliefObjective` varchar(75) NOT NULL DEFAULT '',
  `significantDate` date DEFAULT NULL,
  `processingEmail` varchar(100) NOT NULL DEFAULT '',
  `processingPassword` varchar(75) NOT NULL DEFAULT '',
  `borrowerMInitial` varchar(60) NOT NULL DEFAULT '',
  `chQ1` varchar(10) NOT NULL DEFAULT '',
  `chQ2` varchar(10) NOT NULL DEFAULT '',
  `chQ3` varchar(250) NOT NULL DEFAULT '',
  `chQ4` varchar(250) NOT NULL DEFAULT '',
  `nonBorrowerName` varchar(60) NOT NULL DEFAULT '',
  `nonBorrowerEmail` varchar(60) NOT NULL DEFAULT '',
  `nonBorrowerSSN` longtext,
  `nonBorrowerDOB` date DEFAULT NULL,
  `monthlyContribution` varchar(45) NOT NULL DEFAULT '',
  `isNonBorrower` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `IPAddress` varchar(100) NOT NULL,
  `presentAddress` varchar(100) NOT NULL,
  `presentCity` varchar(100) NOT NULL,
  `presentState` varchar(10) NOT NULL,
  `presentZip` varchar(10) NOT NULL,
  `coBPresentAddress` varchar(100) NOT NULL,
  `coBPresentCity` varchar(100) NOT NULL,
  `coBPresentState` varchar(10) NOT NULL,
  `coBPresentZip` varchar(10) NOT NULL,
  `coBNoOfDependent` int(11) NOT NULL,
  `borPresentPropType` varchar(10) NOT NULL,
  `borMailingPropType` varchar(10) NOT NULL,
  `borFormerPropType` varchar(10) NOT NULL,
  `coBPresentPropType` varchar(10) NOT NULL,
  `coBMailingPropType` varchar(10) NOT NULL,
  `coBFormerPropType` varchar(10) NOT NULL,
  `mailingAddrAsPresent` varchar(5) DEFAULT NULL,
  `coBorMailingAddrAsPresent` varchar(5) DEFAULT NULL,
  `paidStatus` int(11) NOT NULL DEFAULT '1',
  `guarantorNotes` text,
  `presentPropLengthTime` varchar(100) DEFAULT NULL,
  `previousPropLengthTime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`F2ID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFile2_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1838351 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFile3`
-- ----------------------------
DROP TABLE IF EXISTS `tblFile3`;
CREATE TABLE `tblFile3` (
  `F3ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `newMortgageType` varchar(30) DEFAULT NULL,
  `adjustmentDate` date DEFAULT NULL,
  `doesSecondMtg` varchar(5) DEFAULT NULL,
  `doesCashOutOnHome` varchar(5) DEFAULT NULL,
  `cashOutAmount` varchar(30) DEFAULT NULL,
  `doesModifiedLoan1` varchar(10) DEFAULT NULL,
  `loanModificationDate1` date DEFAULT NULL,
  `doesModifiedLoan2` varchar(10) DEFAULT NULL,
  `loanModificationDate2` date DEFAULT NULL,
  `haveStudentLoan` varchar(5) DEFAULT NULL,
  `isStudentLoanBehind` varchar(5) DEFAULT NULL,
  `haveCreditCardDebt` varchar(5) DEFAULT NULL,
  `behindOnCreditCard` varchar(5) DEFAULT NULL,
  `currentlyEmployed` varchar(5) DEFAULT NULL,
  `appointmentDay_del` varchar(5) DEFAULT NULL,
  `appointmentMonth_del` varchar(5) DEFAULT NULL,
  `appointmentYear_del` varchar(5) DEFAULT NULL,
  `appointmentTime` varchar(10) DEFAULT NULL,
  `voiceAgentName` varchar(35) DEFAULT NULL,
  `mgrReviewNotes` longtext,
  `hasMtgRestructure` enum('','Yes','No','NA') NOT NULL,
  `loanModIsLow` enum('','Yes','No','NA') NOT NULL,
  `loanRestructureIsHigh` enum('','Yes','No','NA') NOT NULL,
  `loanRestructureIsLow` enum('','Yes','No','NA') NOT NULL,
  `isInvestmentProperty` enum('','Yes','No','NA') NOT NULL,
  `hasHardship` enum('','Yes','No','NA') NOT NULL,
  `hasGreaterReserves` enum('','Yes','No','NA') NOT NULL,
  `mtgOriginAfterJanTTN` enum('','Yes','No','NA') NOT NULL,
  `notQualifyForHARP` enum('','Yes','No','NA') NOT NULL,
  `notQualifyForHAMPRate` enum('','Yes','No','NA') NOT NULL,
  `notQualifyForHAMPAmount` enum('','Yes','No','NA') NOT NULL,
  `appointmentDate` varchar(45) NOT NULL DEFAULT '',
  `creditRating` varchar(20) NOT NULL,
  `lenderSendReply` varchar(5) NOT NULL DEFAULT 'NA',
  `foreclosureAnswered` varchar(5) NOT NULL DEFAULT 'NA',
  `methodofService` varchar(30) NOT NULL DEFAULT '',
  `titleofAction` varchar(45) NOT NULL DEFAULT '',
  `replyReceivedDate` date DEFAULT NULL,
  PRIMARY KEY (`F3ID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFile3_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileAdditionalGuarantors`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileAdditionalGuarantors`;
CREATE TABLE `tblFileAdditionalGuarantors` (
  `AGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(11) unsigned NOT NULL,
  `guarantorFName` varchar(75) NOT NULL,
  `guarantorLName` varchar(75) NOT NULL,
  `guarantorPhone` varchar(20) NOT NULL,
  `guarantorCellNumber` varchar(20) NOT NULL,
  `guarantorSSN` varchar(12) NOT NULL,
  `guarantorDOB` date DEFAULT NULL,
  `guarantorStatus` varchar(25) NOT NULL,
  `guarantorAddress` varchar(100) DEFAULT NULL,
  `guarantorCity` varchar(75) DEFAULT NULL,
  `guarantorState` varchar(15) DEFAULT NULL,
  `guarantorZip` varchar(15) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `guarantorEmail` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`AGID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblFileAdditionalGuarantors_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=4639 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileAssignedCFPBAuditors`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileAssignedCFPBAuditors`;
CREATE TABLE `tblFileAssignedCFPBAuditors` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `UID` int(11) DEFAULT '0',
  `URole` varchar(30) NOT NULL DEFAULT '',
  `UGroup` enum('Employee','') NOT NULL DEFAULT '',
  `dateAssigned` datetime DEFAULT NULL,
  `dateRemoved` datetime DEFAULT NULL,
  `assignedByUID` int(11) DEFAULT '0',
  `assignedByURole` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `removedByUID` int(11) DEFAULT '0',
  `removedByURole` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `UID` (`UID`,`URole`,`fileID`,`dateRemoved`),
  KEY `fileID_2` (`fileID`,`UID`,`URole`),
  KEY `dateRemoved` (`dateRemoved`,`URole`,`UID`,`fileID`),
  CONSTRAINT `tblFileAssignedCFPBAuditors_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileBrokers`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileBrokers`;
CREATE TABLE `tblFileBrokers` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `brokerID` int(11) NOT NULL,
  `estimatedCom` float DEFAULT NULL,
  `role` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `brokerPhone2` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `sn` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileBrokers_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3030 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileCFPB`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileCFPB`;
CREATE TABLE `tblFileCFPB` (
  `CFPBID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `PCID` int(10) NOT NULL,
  `submittedAfterLMPkg` varchar(5) NOT NULL DEFAULT 'NA',
  `additionalServicer` varchar(5) NOT NULL DEFAULT 'NA',
  `pkgSubmittedToServicer` varchar(5) NOT NULL DEFAULT '',
  `CFPBPkgSent` varchar(40) NOT NULL DEFAULT '',
  `haveProofForPkgReceived` varchar(5) NOT NULL DEFAULT 'NA',
  `submissionProofExplanation` longtext,
  `hasServicerSendNotice` varchar(5) NOT NULL DEFAULT 'NA',
  `receiptWithinFiveDays` varchar(5) NOT NULL DEFAULT 'NA',
  `stateOfPkg` varchar(5) NOT NULL DEFAULT 'NA',
  `additionalDocsRequired` varchar(5) NOT NULL DEFAULT 'NA',
  `fiveDayProofExplanation` longtext,
  `receiptOfCompleteLossMit` varchar(5) NOT NULL DEFAULT 'NA',
  `lossMitDeterminationInWriting` varchar(5) NOT NULL DEFAULT 'NA',
  `LMProofExplanation` longtext,
  `hasServicerSentTrailNotice` varchar(5) NOT NULL DEFAULT 'NA',
  `hasSaleDateSetBeforeSent` varchar(5) NOT NULL DEFAULT 'NA',
  `isFinalHearingSent` varchar(5) NOT NULL DEFAULT 'NA',
  `foreclosureProofExplanation` longtext,
  `hasRequestDenied` varchar(5) NOT NULL DEFAULT 'NA',
  `hasDenialLetterSent` varchar(5) NOT NULL DEFAULT 'NA',
  `hasDenialLetterDenied` varchar(5) NOT NULL DEFAULT 'NA',
  `hasDenialLetterAppealOfDenial` varchar(5) NOT NULL DEFAULT 'NA',
  `noticeProofExplanation` longtext,
  `isClientAppealDenial` varchar(5) NOT NULL DEFAULT 'NA',
  `appealRequest` varchar(40) NOT NULL DEFAULT '',
  `isDecisionAppealed` varchar(5) NOT NULL DEFAULT 'NA',
  `isServicerProvideDecisionAppeal` varchar(5) NOT NULL DEFAULT 'NA',
  `appealProofExplanation` longtext,
  `isServicerMakeLiveContact` varchar(5) NOT NULL DEFAULT 'NA',
  `isServicerProvideNotice` varchar(5) NOT NULL DEFAULT 'NA',
  `isContactInfo` varchar(5) NOT NULL DEFAULT 'NA',
  `servicerLetterProofExplanation` longtext,
  `isServicerForceInsurance` varchar(5) NOT NULL DEFAULT 'NA',
  `servicer1DateTransfer` date DEFAULT NULL,
  `servicer2DateTransfer` date DEFAULT NULL,
  `pkgSubmittedDate` date DEFAULT NULL,
  `letterSentDate` date DEFAULT NULL,
  `additionalDocsSentDate` date DEFAULT NULL,
  `dateofDetermination` date DEFAULT NULL,
  `dateofLetter` date DEFAULT NULL,
  `trialSentDate` date DEFAULT NULL,
  `cancelledSaleDate` date DEFAULT NULL,
  `finalHearingSentDate` date DEFAULT NULL,
  `denialDate` date DEFAULT NULL,
  `appealDate` date DEFAULT NULL,
  `decisionDate` date DEFAULT NULL,
  `occurDate` date DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Auditor','','CFPB Auditor','Super','Auditor Manager') NOT NULL,
  `recordDate` datetime NOT NULL,
  `lastUpdatedDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `isSaleDateCancelled` varchar(5) NOT NULL DEFAULT 'NA',
  `lenderOrServicer` longtext,
  `lossMitigationPackageServicer` varchar(5) NOT NULL DEFAULT 'NA',
  `datePackageSent` date DEFAULT NULL,
  `servicerTransferNotes` longtext,
  `clientSubmitLM` varchar(5) NOT NULL DEFAULT 'NA',
  `dateSubmitted` date DEFAULT NULL,
  `fellBehindMortgage` varchar(5) NOT NULL DEFAULT 'NA',
  `coverageExplanation` longtext,
  `initialContactNotes` longtext,
  `lenderOrServicer1` longtext,
  `submittedDate` datetime DEFAULT NULL,
  `CFPBAuditStatus` enum('In Review','Ineligible','Docs needed','Attorney Review','Attorney Preparing Case','Filed Suit','Settlement Awarded','Closed','','Pending Review','Pending QWR','Direction To Pay Needed','Waiting For Retainer') NOT NULL DEFAULT '',
  `isSaleDateCanceledByBank` varchar(5) NOT NULL DEFAULT 'NA',
  `CFPBServicer1` varchar(60) DEFAULT NULL,
  `CFPBServicer2` varchar(60) DEFAULT NULL,
  `potentialViolationServicers` longtext,
  `hasApprovalInWriting` varchar(5) NOT NULL DEFAULT 'NA',
  `approvalReceivedDate` date NOT NULL,
  `delinquencyAfterJan` varchar(5) NOT NULL DEFAULT 'NA',
  `determinationServicer` varchar(45) NOT NULL DEFAULT '',
  `otherDetermination` varchar(40) NOT NULL DEFAULT '',
  `reasonsForDenial` varchar(5) NOT NULL DEFAULT 'NA',
  `appealofDenial` varchar(5) NOT NULL DEFAULT 'NA',
  `servicerDetermination` varchar(45) NOT NULL DEFAULT '',
  `estimatedDateofDetermination` date DEFAULT NULL,
  `dateof1stDelinquency` date DEFAULT NULL,
  `wasPackageSent` varchar(45) NOT NULL DEFAULT '',
  `loanModificationOrSS` varchar(5) NOT NULL DEFAULT '',
  `estimatedSettlementAmount` varchar(30) NOT NULL,
  `awardedSettlement` varchar(30) NOT NULL,
  PRIMARY KEY (`CFPBID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileCFPB_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1180 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileCFPBDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileCFPBDocs`;
CREATE TABLE `tblFileCFPBDocs` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `displayDocName` varchar(50) NOT NULL DEFAULT '',
  `docCategory` varchar(50) NOT NULL DEFAULT '',
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','Auditor','Employee','Branch','Agent','CFPB Auditor','Auditor Manager') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `docName` longtext,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `uploadType` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileCFPBDocs` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1393 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileCFPBLinkedUploadedDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileCFPBLinkedUploadedDocs`;
CREATE TABLE `tblFileCFPBLinkedUploadedDocs` (
  `LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `docID` int(10) unsigned NOT NULL,
  `uploadType` varchar(50) NOT NULL,
  `linkedBy` int(11) NOT NULL,
  `linkedUType` enum('Employee','Super','Agent','Branch','Client','CFPB Auditor','','Auditor Manager') NOT NULL,
  `linkedDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `searchType` varchar(20) NOT NULL,
  PRIMARY KEY (`LID`),
  KEY `fileID` (`fileID`),
  KEY `docID` (`docID`),
  KEY `uploadType` (`uploadType`),
  CONSTRAINT `tblFileCFPBLinkedUploadedDocs_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileCFPBNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileCFPBNotes`;
CREATE TABLE `tblFileCFPBNotes` (
  `NID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `CFPBNotes` longtext,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','CFPB Auditor','Employee','Branch','Agent','Client','','Auditor Manager') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sendTo` longtext,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`NID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileCFPBNotes` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileChecklistModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileChecklistModules`;
CREATE TABLE `tblFileChecklistModules` (
  `FMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `docName` longtext,
  `dStatus` tinyint(4) DEFAULT '1',
  `serviceType` varchar(18) NOT NULL,
  `moduleType` varchar(10) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`FMID`),
  KEY `fileID` (`fileID`),
  KEY `moduleType` (`moduleType`),
  KEY `dStatus` (`dStatus`),
  CONSTRAINT `tblFileChecklistModules_ibfk_1` FOREIGN KEY (`moduleType`) REFERENCES `tblModules` (`moduleCode`),
  CONSTRAINT `tblFileChecklistModules_ibfk_2` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileChecklistRequiredBy`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileChecklistRequiredBy`;
CREATE TABLE `tblFileChecklistRequiredBy` (
  `FRID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FMID` int(10) unsigned NOT NULL,
  `requiredBy` enum('Branch','Broker','Lender','Borrower') DEFAULT 'Lender',
  `UID` int(11) DEFAULT '0',
  `URole` varchar(30) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FRID`),
  KEY `FMID` (`FMID`),
  KEY `requiredBy` (`requiredBy`),
  CONSTRAINT `tblFileChecklistRequiredBy_ibfk_1` FOREIGN KEY (`FMID`) REFERENCES `tblFileChecklistModules` (`FMID`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileClients`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileClients`;
CREATE TABLE `tblFileClients` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `clientID` int(11) NOT NULL,
  `ownerType` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `sn` int(11) DEFAULT NULL,
  `SSNNumber` varchar(12) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileClients_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1962 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileContacts`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileContacts`;
CREATE TABLE `tblFileContacts` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `CID` int(10) unsigned NOT NULL,
  `cRole_old` enum('HOA1','','Title Rep','HOA2','Bank Attorney','Counselor','PO Attorney','B1 Attorney','B2 Attorney','B3 Attorney','Realtor','B1 Agent','B2 Agent','B3 Agent','PM','Counsel Attorney','Insurance Rep','Appraiser 1','Appraiser 2','BPO 1','BPO 2','BPO 3','Attorney','Lender','Trustee Attorney','Servicer Rep','General Contractor') DEFAULT NULL,
  `oldCRole` varchar(75) DEFAULT NULL,
  `cRole` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblFileContacts_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileContacts_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `tblContacts` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=201054 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileCourtInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileCourtInfo`;
CREATE TABLE `tblFileCourtInfo` (
  `CSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `courtCaseNumber` varchar(60) NOT NULL DEFAULT '',
  `lastDocketCheckDate` date DEFAULT NULL,
  `judge` varchar(60) NOT NULL DEFAULT '',
  `defendantName` varchar(100) NOT NULL DEFAULT '',
  `plaintiffName` varchar(350) NOT NULL DEFAULT '',
  `circuitCourt` varchar(60) NOT NULL DEFAULT '',
  `countyAppraiser` varchar(250) NOT NULL DEFAULT '',
  `clerkOfCourts` varchar(350) NOT NULL DEFAULT '',
  `barNo` varchar(50) NOT NULL DEFAULT '',
  `services` varchar(50) NOT NULL DEFAULT '',
  `attorneyReviewSentDate` date DEFAULT NULL,
  `attorneyWelcomeCallCompleted` date DEFAULT NULL,
  `attorneyWelcomeCallScheduled` datetime DEFAULT NULL,
  `counselJurisDiction` varchar(50) NOT NULL DEFAULT '',
  `counselIndexNo` varchar(50) NOT NULL DEFAULT '',
  `counselAttorneyNum` varchar(50) NOT NULL DEFAULT '',
  `counselBarNo` varchar(50) NOT NULL DEFAULT '',
  `counselAttorneyReviewDate` date DEFAULT NULL,
  PRIMARY KEY (`CSID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileCourtInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=9572 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileDealAnalysis`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileDealAnalysis`;
CREATE TABLE `tblFileDealAnalysis` (
  `DAID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `LTV` int(11) DEFAULT NULL,
  `includeRehab` enum('','Yes','No') NOT NULL DEFAULT '',
  `percentOfRehab` int(11) DEFAULT NULL,
  `hazardInsurance` decimal(10,2) DEFAULT NULL,
  `lenderPointsFee` decimal(10,2) DEFAULT NULL,
  `additionalExpenses` decimal(10,2) DEFAULT NULL,
  `AVGInterestRate` int(11) DEFAULT NULL,
  `loanCarryingCost` int(11) DEFAULT NULL,
  `realtorCommissions` varchar(10) DEFAULT NULL,
  `monthsPaymentReserves` int(11) DEFAULT NULL,
  `minProfitDesired` decimal(10,2) DEFAULT NULL,
  `dealNotes` text,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DAID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileDealAnalysis_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileExpFilpGroundUp`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileExpFilpGroundUp`;
CREATE TABLE `tblFileExpFilpGroundUp` (
  `FFGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(11) unsigned NOT NULL,
  `userType` enum('B','C') DEFAULT NULL,
  `expType` enum('Flip','Gup','Sell') DEFAULT NULL,
  `propertyType` varchar(35) NOT NULL,
  `purchaseDate` date NOT NULL,
  `purchasePrice` float NOT NULL,
  `amountFinanced` float NOT NULL,
  `rehabBudget` float NOT NULL,
  `entityName` varchar(75) NOT NULL,
  `ownership` float NOT NULL,
  `exitValues` varchar(75) DEFAULT NULL,
  `salePrice` float NOT NULL,
  `saleDate` date NOT NULL,
  `monthlyRent` float NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `Outcome` float NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`FFGID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblFileExpFilpGroundUp_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=41914 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileExteriorWorkInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileExteriorWorkInfo`;
CREATE TABLE `tblFileExteriorWorkInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `exteriorTrimNotes` varchar(250) NOT NULL DEFAULT '',
  `exteriorTrimSqft` decimal(10,3) DEFAULT '0.000',
  `exteriorTrimQuantity` int(10) DEFAULT NULL,
  `exteriorTrimRate` decimal(10,3) DEFAULT '0.000',
  `exteriorDoorsNotes` varchar(250) NOT NULL DEFAULT '',
  `exteriorDoorsSqft` decimal(10,3) DEFAULT '0.000',
  `exteriorDoorsQuantity` int(10) DEFAULT NULL,
  `exteriorDoorsRate` decimal(10,3) DEFAULT '0.000',
  `porchesNotes` varchar(250) NOT NULL DEFAULT '',
  `porchesSqft` decimal(10,3) DEFAULT '0.000',
  `porchesQuantity` int(10) DEFAULT NULL,
  `porchesRate` decimal(10,3) DEFAULT '0.000',
  `sidingNotes` varchar(250) NOT NULL DEFAULT '',
  `sidingSqft` decimal(10,3) DEFAULT '0.000',
  `sidingQuantity` int(10) DEFAULT NULL,
  `sidingRate` decimal(10,3) DEFAULT '0.000',
  `exteriorPaintingNotes` varchar(250) NOT NULL DEFAULT '',
  `exteriorPaintingSqft` decimal(10,3) DEFAULT '0.000',
  `exteriorPaintingQuantity` int(10) DEFAULT NULL,
  `exteriorPaintingRate` decimal(10,3) DEFAULT '0.000',
  `roofNotes` varchar(250) NOT NULL DEFAULT '',
  `roofSqft` decimal(10,3) DEFAULT '0.000',
  `roofQuantity` int(10) DEFAULT NULL,
  `roofRate` decimal(10,3) DEFAULT '0.000',
  `downspoutsNotes` varchar(250) NOT NULL DEFAULT '',
  `downspoutsSqft` decimal(10,3) DEFAULT '0.000',
  `downspoutsQuantity` int(10) DEFAULT NULL,
  `downspoutsRate` decimal(10,3) DEFAULT '0.000',
  `fencingNotes` varchar(250) NOT NULL DEFAULT '',
  `fencingSqft` decimal(10,3) DEFAULT '0.000',
  `fencingQuantity` int(10) DEFAULT NULL,
  `fencingRate` decimal(10,3) DEFAULT '0.000',
  `landscapingNotes` varchar(250) NOT NULL DEFAULT '',
  `landscapingSqft` decimal(10,3) DEFAULT '0.000',
  `landscapingQuantity` int(10) DEFAULT NULL,
  `landscapingRate` decimal(10,3) DEFAULT '0.000',
  `concreteWorkNotes` varchar(250) NOT NULL DEFAULT '',
  `concreteWorkSqft` decimal(10,3) DEFAULT '0.000',
  `concreteWorkQuantity` int(10) DEFAULT NULL,
  `concreteWorkRate` decimal(10,3) DEFAULT '0.000',
  `foudationWorkNotes` varchar(250) NOT NULL DEFAULT '',
  `foudationWorkSqft` decimal(10,3) DEFAULT '0.000',
  `foudationWorkQuantity` int(10) DEFAULT NULL,
  `foudationWorkRate` decimal(10,3) DEFAULT '0.000',
  `brickPointingNotes` varchar(250) NOT NULL DEFAULT '',
  `brickPointingSqft` decimal(10,3) DEFAULT '0.000',
  `brickPointingQuantity` int(10) DEFAULT NULL,
  `brickPointingRate` decimal(10,3) DEFAULT '0.000',
  `otherExteriorNotes` varchar(250) NOT NULL DEFAULT '',
  `otherExteriorSqft` decimal(10,3) DEFAULT '0.000',
  `otherExteriorQuantity` int(10) DEFAULT NULL,
  `otherExteriorRate` decimal(10,3) DEFAULT '0.000',
  `exteriorPaintingEstCost` decimal(13,2) DEFAULT NULL,
  `exteriorPaintingActCost` decimal(13,2) DEFAULT NULL,
  `roofEstCost` decimal(13,2) DEFAULT NULL,
  `roofActCost` decimal(13,2) DEFAULT NULL,
  `downspoutsEstCost` decimal(13,2) DEFAULT NULL,
  `downspoutsActCost` decimal(13,2) DEFAULT NULL,
  `fencingEstCost` decimal(13,2) DEFAULT NULL,
  `fencingActCost` decimal(13,2) DEFAULT NULL,
  `landscapingEstCost` decimal(13,2) DEFAULT NULL,
  `landscapingActCost` decimal(13,2) DEFAULT NULL,
  `concreteWorkEstCost` decimal(13,2) DEFAULT NULL,
  `concreteWorkActCost` decimal(13,2) DEFAULT NULL,
  `foudationWorkEstCost` decimal(13,2) DEFAULT NULL,
  `foudationWorkActCost` decimal(13,2) DEFAULT NULL,
  `brickPointingEstCost` decimal(13,2) DEFAULT NULL,
  `brickPointingActCost` decimal(13,2) DEFAULT NULL,
  `otherExteriorEstCost` decimal(13,2) DEFAULT NULL,
  `otherExteriorActCost` decimal(13,2) DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  `exteriorTrimEstCost` decimal(13,2) DEFAULT NULL,
  `exteriorTrimActCost` decimal(13,2) DEFAULT NULL,
  `exteriorDoorsEstCost` decimal(13,2) DEFAULT NULL,
  `exteriorDoorsActCost` decimal(13,2) DEFAULT NULL,
  `porchesEstCost` decimal(13,2) DEFAULT NULL,
  `porchesActCost` decimal(13,2) DEFAULT NULL,
  `sidingEstCost` decimal(13,2) DEFAULT NULL,
  `sidingActCost` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileExteriorWorkInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileFUBusinessEntity`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileFUBusinessEntity`;
CREATE TABLE `tblFileFUBusinessEntity` (
  `FUBEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `entityName` varchar(75) DEFAULT NULL,
  `entityType` varchar(75) DEFAULT NULL,
  `entityIndustryType` varchar(100) DEFAULT NULL,
  `entityAddress` varchar(75) DEFAULT NULL,
  `entityCity` varchar(100) DEFAULT NULL,
  `entityState` varchar(10) DEFAULT NULL,
  `entityZip` varchar(10) DEFAULT NULL,
  `entityPhone` varchar(20) DEFAULT NULL,
  `entityProjectedAnnualSales` varchar(25) DEFAULT NULL,
  `member1Name` varchar(75) DEFAULT NULL,
  `member1Title` varchar(75) DEFAULT NULL,
  `member1Address` varchar(100) DEFAULT NULL,
  `member1City` varchar(100) DEFAULT NULL,
  `member1State` varchar(10) DEFAULT NULL,
  `member1Zip` varchar(10) DEFAULT NULL,
  `member2Name` varchar(75) DEFAULT NULL,
  `member2Title` varchar(75) DEFAULT NULL,
  `member2Address` varchar(100) DEFAULT NULL,
  `member2City` varchar(100) DEFAULT NULL,
  `member2State` varchar(10) DEFAULT NULL,
  `member2Zip` varchar(10) DEFAULT NULL,
  `member3Name` varchar(75) DEFAULT NULL,
  `member3Title` varchar(75) DEFAULT NULL,
  `member3Address` varchar(100) DEFAULT NULL,
  `member3City` varchar(100) DEFAULT NULL,
  `member3State` varchar(10) DEFAULT NULL,
  `member3Zip` varchar(10) DEFAULT NULL,
  `member4Name` varchar(75) DEFAULT NULL,
  `member4Title` varchar(75) DEFAULT NULL,
  `member4Address` varchar(100) DEFAULT NULL,
  `member4City` varchar(100) DEFAULT NULL,
  `member4State` varchar(10) DEFAULT NULL,
  `member4Zip` varchar(10) DEFAULT NULL,
  `member5Name` varchar(75) DEFAULT NULL,
  `member5Title` varchar(75) DEFAULT NULL,
  `member5Address` varchar(100) DEFAULT NULL,
  `member5City` varchar(100) DEFAULT NULL,
  `member5State` varchar(10) DEFAULT NULL,
  `member5Zip` varchar(10) DEFAULT NULL,
  `member6Name` varchar(75) DEFAULT NULL,
  `member6Title` varchar(75) DEFAULT NULL,
  `member6Address` varchar(100) DEFAULT NULL,
  `member6City` varchar(100) DEFAULT NULL,
  `member6State` varchar(10) DEFAULT NULL,
  `member6Zip` varchar(10) DEFAULT NULL,
  `member7Name` varchar(75) DEFAULT NULL,
  `member7Title` varchar(75) DEFAULT NULL,
  `member7Address` varchar(100) DEFAULT NULL,
  `member7City` varchar(100) DEFAULT NULL,
  `member7State` varchar(10) DEFAULT NULL,
  `member7Zip` varchar(10) DEFAULT NULL,
  `member8Name` varchar(75) DEFAULT NULL,
  `member8Title` varchar(75) DEFAULT NULL,
  `member8Address` varchar(100) DEFAULT NULL,
  `member8City` varchar(100) DEFAULT NULL,
  `member8State` varchar(10) DEFAULT NULL,
  `member8Zip` varchar(10) DEFAULT NULL,
  `member9Name` varchar(75) DEFAULT NULL,
  `member9Title` varchar(75) DEFAULT NULL,
  `member9Address` varchar(100) DEFAULT NULL,
  `member9City` varchar(100) DEFAULT NULL,
  `member9State` varchar(10) DEFAULT NULL,
  `member9Zip` varchar(10) DEFAULT NULL,
  `member10Name` varchar(75) DEFAULT NULL,
  `member10Title` varchar(75) DEFAULT NULL,
  `member10Address` varchar(100) DEFAULT NULL,
  `member10City` varchar(100) DEFAULT NULL,
  `member10State` varchar(10) DEFAULT NULL,
  `member10Zip` varchar(10) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FUBEID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileFUBusinessEntity_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileFUCreditEnhancement`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileFUCreditEnhancement`;
CREATE TABLE `tblFileFUCreditEnhancement` (
  `FUCEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `previousAddress1` varchar(100) DEFAULT NULL,
  `previousStreet1` varchar(75) DEFAULT NULL,
  `previousCity1` varchar(100) DEFAULT NULL,
  `previousZip1` varchar(10) DEFAULT NULL,
  `noOfYearAddr1` int(11) DEFAULT NULL,
  `previousAddress2` varchar(100) DEFAULT NULL,
  `previousStreet2` varchar(75) DEFAULT NULL,
  `previousCity2` varchar(100) DEFAULT NULL,
  `previousZip2` varchar(10) DEFAULT NULL,
  `noOfYearAddr2` int(11) DEFAULT NULL,
  `originalCreditScore1` float DEFAULT NULL,
  `experianScore1` float DEFAULT NULL,
  `equifaxScore1` float DEFAULT NULL,
  `transunionScore1` float DEFAULT NULL,
  `originalCreditScore2` float DEFAULT NULL,
  `experianScore2` float DEFAULT NULL,
  `equifaxScore2` float DEFAULT NULL,
  `transunionScore2` float DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FUCEID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileFUCreditEnhancement_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileFUCreditItems`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileFUCreditItems`;
CREATE TABLE `tblFileFUCreditItems` (
  `FUCIID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `creditorName` varchar(75) DEFAULT NULL,
  `creditorAccountNo` int(11) DEFAULT NULL,
  `creditorBureau` varchar(50) DEFAULT NULL,
  `creditorCurrentBalance` float DEFAULT NULL,
  `creditorCurrentLimit` float DEFAULT NULL,
  `creditorAmtPayOfDown` float DEFAULT NULL,
  `creditorPaidDown` varchar(10) DEFAULT NULL,
  `creditorReasonForDispute` varchar(50) DEFAULT NULL,
  `creditorSubmittedBy` varchar(30) DEFAULT NULL,
  `creditorDisputeConfirmation` int(11) DEFAULT NULL,
  `creditorNotes` text,
  `creditorDateSubmitted` date DEFAULT NULL,
  `creditorDateChecked_1` date DEFAULT NULL,
  `creditorDateChecked_2` date DEFAULT NULL,
  `creditorDateChecked_3` date DEFAULT NULL,
  `creditorDateChecked_4` date DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FUCIID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileFUCreditItems_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileFUCreditItems_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileFUCreditItems_h`;
CREATE TABLE `tblFileFUCreditItems_h` (
  `FUCIID` int(11) unsigned NOT NULL,
  `fileID` int(11) unsigned NOT NULL,
  `creditorName` varchar(75) DEFAULT NULL,
  `creditorAccountNo` int(11) DEFAULT NULL,
  `creditorBureau` varchar(50) DEFAULT NULL,
  `creditorCurrentBalance` float DEFAULT NULL,
  `creditorCurrentLimit` float DEFAULT NULL,
  `creditorAmtPayOfDown` float DEFAULT NULL,
  `creditorPaidDown` varchar(10) DEFAULT NULL,
  `creditorReasonForDispute` varchar(50) DEFAULT NULL,
  `creditorSubmittedBy` varchar(30) DEFAULT NULL,
  `creditorDisputeConfirmation` int(11) DEFAULT NULL,
  `creditorNotes` text,
  `creditorDateSubmitted` date DEFAULT NULL,
  `creditorDateChecked_1` date DEFAULT NULL,
  `creditorDateChecked_2` date DEFAULT NULL,
  `creditorDateChecked_3` date DEFAULT NULL,
  `creditorDateChecked_4` date DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileFunding`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileFunding`;
CREATE TABLE `tblFileFunding` (
  `FID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `creditChkUsername` varchar(75) NOT NULL,
  `creditChkPwd` varchar(45) NOT NULL,
  `experianScore` int(11) NOT NULL,
  `equifaxScore` int(11) NOT NULL,
  `transunionScore` int(11) NOT NULL,
  `monthlyIncomeBFTax` int(11) NOT NULL,
  `monthlyIncomeAFTax` int(11) NOT NULL,
  `haveEmployed` varchar(5) NOT NULL DEFAULT 'No',
  `noOfMonthsAtCurrentJob` int(11) NOT NULL,
  `havePaystubW2ITReturn` varchar(5) NOT NULL DEFAULT 'No',
  `isFMInUSMilitary` varchar(5) NOT NULL DEFAULT 'No',
  `ownBusiness` varchar(5) NOT NULL DEFAULT 'No',
  `typeOfBusiness` varchar(45) NOT NULL,
  `businessStartDate` varchar(45) NOT NULL,
  `propType` varchar(10) NOT NULL,
  `creditIssues` longtext,
  `amtDesired` varchar(45) NOT NULL,
  `fundsNeededReason` longtext,
  `recordDate` datetime NOT NULL,
  `referredBy` varchar(75) NOT NULL,
  PRIMARY KEY (`FID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileFunding_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLO`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLO`;
CREATE TABLE `tblFileHMLO` (
  `HMLOID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `borCompanyName` varchar(75) NOT NULL,
  `borCreditScoreRange` varchar(45) NOT NULL,
  `midFicoScore` varchar(100) DEFAULT NULL,
  `borCreditScore` int(11) NOT NULL,
  `coBorCompanyName` varchar(75) NOT NULL,
  `coBorCreditScoreRange` varchar(45) NOT NULL,
  `coBorCreditScore` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `afterRepairValue` decimal(10,2) DEFAULT '0.00',
  `targetClosingDate` date DEFAULT NULL,
  `ownThisProperty` varchar(5) DEFAULT 'No',
  `borrowerContribution` decimal(10,2) DEFAULT '0.00',
  `propertyPurchase` varchar(5) DEFAULT 'No',
  `rehabCost` decimal(10,2) DEFAULT '0.00',
  `purchaseDate` date DEFAULT NULL,
  `REBroker` varchar(5) DEFAULT 'No',
  `borExperianScore` varchar(75) DEFAULT NULL,
  `borEquifaxScore` varchar(75) DEFAULT NULL,
  `borTransunionScore` varchar(75) DEFAULT NULL,
  `coBorExperianScore` varchar(75) DEFAULT NULL,
  `coBorEquifaxScore` varchar(75) DEFAULT NULL,
  `coBorTransunionScore` varchar(75) DEFAULT NULL,
  `rehabDuration` float DEFAULT NULL,
  PRIMARY KEY (`HMLOID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLO_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=7452 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOAssetsInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOAssetsInfo`;
CREATE TABLE `tblFileHMLOAssetsInfo` (
  `HMLOAID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `otherDesc` text,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`HMLOAID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLOAssetsInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3031 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOBackGround`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOBackGround`;
CREATE TABLE `tblFileHMLOBackGround` (
  `HMLOBGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `isBorUSCitizen` varchar(5) DEFAULT 'NA',
  `isBorDecalredBankruptPastYears` varchar(5) DEFAULT 'NA',
  `isAnyBorOutstandingJudgements` varchar(5) DEFAULT 'NA',
  `hasBorAnyActiveLawsuits` varchar(5) DEFAULT 'NA',
  `hasBorPropertyTaxLiens` varchar(5) DEFAULT 'NA',
  `hasBorObligatedInForeclosure` varchar(5) DEFAULT 'NA',
  `isBorPresenltyDelinquent` varchar(5) DEFAULT 'NA',
  `isBorBorrowedDownPayment` varchar(5) DEFAULT 'NA',
  `isBorIntendToOccupyPropAsPRI` varchar(5) DEFAULT 'NA',
  `haveBorOtherFraudRelatedCrimes` varchar(5) DEFAULT 'NA',
  `isBorPersonallyGuaranteeLoan` varchar(5) DEFAULT 'NA',
  `isCoBorUSCitizen` varchar(5) DEFAULT 'NA',
  `isCoBorDecalredBankruptPastYears` varchar(5) DEFAULT 'NA',
  `isAnyCoBorOutstandingJudgements` varchar(5) DEFAULT 'NA',
  `hasCoBorAnyActiveLawsuits` varchar(5) DEFAULT 'NA',
  `hasCoBorPropertyTaxLiens` varchar(5) DEFAULT 'NA',
  `hasCoBorObligatedInForeclosure` varchar(5) DEFAULT 'NA',
  `isCoBorPresenltyDelinquent` varchar(5) DEFAULT 'NA',
  `isCoBorBorrowedDownPayment` varchar(5) DEFAULT 'NA',
  `isCoBorIntendToOccupyPropAsPRI` varchar(5) DEFAULT 'NA',
  `haveCoBorOtherFraudRelatedCrimes` varchar(5) DEFAULT 'NA',
  `isCoBorPersonallyGuaranteeLoan` varchar(5) DEFAULT 'NA',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `borBackgroundExplanation` longtext,
  `coBorBackgroundExplanation` longtext,
  `borDecalredBankruptExpln` longtext,
  `borOutstandingJudgementsExpln` longtext,
  `borActiveLawsuitsExpln` longtext,
  `borPropertyTaxLiensExpln` longtext,
  `borObligatedInForeclosureExpln` longtext,
  `borDelinquentExpln` longtext,
  `borOtherFraudRelatedCrimesExpln` longtext,
  `borBorrowedDownPaymentExpln` longtext,
  `coBorDecalredBankruptExpln` longtext,
  `coBorOutstandingJudgementsExpln` longtext,
  `coBorActiveLawsuitsExpln` longtext,
  `coBorPropertyTaxLiensExpln` longtext,
  `coBorObligatedInForeclosureExpln` longtext,
  `coBorDelinquentExpln` longtext,
  `coBorOtherFraudRelatedCrimesExpln` longtext,
  `coBorBorrowedDownPaymentExpln` longtext,
  `CID` int(10) unsigned NOT NULL,
  `borOrigin` varchar(50) DEFAULT NULL,
  `borVisaStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`HMLOBGID`),
  KEY `fileID` (`fileID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblFileHMLOBackGround_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileHMLOBackGround_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=5522 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOBusinessEntity`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOBusinessEntity`;
CREATE TABLE `tblFileHMLOBusinessEntity` (
  `HMLOBEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `entityName` varchar(310) DEFAULT NULL,
  `entityType` varchar(75) DEFAULT NULL,
  `ENINo` varchar(25) DEFAULT NULL,
  `entityAddress` varchar(75) DEFAULT NULL,
  `entityCity` varchar(100) DEFAULT NULL,
  `entityState` varchar(10) DEFAULT NULL,
  `entityZip` varchar(10) DEFAULT NULL,
  `entityStateOfFormation` varchar(10) DEFAULT NULL,
  `entityNotes` text,
  `member1Name` varchar(75) DEFAULT NULL,
  `member1Title` varchar(75) DEFAULT NULL,
  `member1Ownership` float DEFAULT NULL,
  `member2Name` varchar(75) DEFAULT NULL,
  `member2Title` varchar(75) DEFAULT NULL,
  `member2Ownership` float DEFAULT NULL,
  `member3Name` varchar(75) DEFAULT NULL,
  `member3Title` varchar(75) DEFAULT NULL,
  `member3Ownership` float DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `member4Name` varchar(75) DEFAULT NULL,
  `member4Title` varchar(75) DEFAULT NULL,
  `member4Ownership` float DEFAULT NULL,
  `member5Name` varchar(75) DEFAULT NULL,
  `member5Title` varchar(75) DEFAULT NULL,
  `member5Ownership` float DEFAULT NULL,
  `member6Name` varchar(75) DEFAULT NULL,
  `member6Title` varchar(75) DEFAULT NULL,
  `member6Ownership` float DEFAULT NULL,
  `member7Name` varchar(75) DEFAULT NULL,
  `member7Title` varchar(75) DEFAULT NULL,
  `member7Ownership` float DEFAULT NULL,
  `member8Name` varchar(75) DEFAULT NULL,
  `member8Title` varchar(75) DEFAULT NULL,
  `member8Ownership` float DEFAULT NULL,
  `member9Name` varchar(75) DEFAULT NULL,
  `member9Title` varchar(75) DEFAULT NULL,
  `member9Ownership` float DEFAULT NULL,
  `member10Name` varchar(75) DEFAULT NULL,
  `member10Title` varchar(75) DEFAULT NULL,
  `member10Ownership` float DEFAULT NULL,
  `borrowerUnderEntity` varchar(5) NOT NULL DEFAULT '',
  `entityWebsite` varchar(250) DEFAULT NULL,
  `sameAsEntityAddr` tinyint(4) DEFAULT '0',
  `entityBillAddress` varchar(100) DEFAULT NULL,
  `entityBillCity` varchar(75) DEFAULT NULL,
  `entityBillState` varchar(10) DEFAULT NULL,
  `entityBillZip` varchar(10) DEFAULT NULL,
  `CID` int(10) unsigned NOT NULL,
  `businessTypeEF` varchar(75) DEFAULT NULL,
  `member1Address` varchar(100) DEFAULT NULL,
  `member1Phone` varchar(20) DEFAULT NULL,
  `member1Cell` varchar(20) DEFAULT NULL,
  `member1SSN` varchar(12) DEFAULT NULL,
  `member1DOB` date DEFAULT NULL,
  `member1Email` varchar(75) DEFAULT NULL,
  `member2Address` varchar(100) DEFAULT NULL,
  `member2Phone` varchar(20) DEFAULT NULL,
  `member2Cell` varchar(20) DEFAULT NULL,
  `member2SSN` varchar(12) DEFAULT NULL,
  `member2DOB` date DEFAULT NULL,
  `member2Email` varchar(75) DEFAULT NULL,
  `member3Address` varchar(100) DEFAULT NULL,
  `member3Phone` varchar(20) DEFAULT NULL,
  `member3Cell` varchar(20) DEFAULT NULL,
  `member3SSN` varchar(12) DEFAULT NULL,
  `member3DOB` date DEFAULT NULL,
  `member3Email` varchar(75) DEFAULT NULL,
  `member4Address` varchar(100) DEFAULT NULL,
  `member4Phone` varchar(20) DEFAULT NULL,
  `member4Cell` varchar(20) DEFAULT NULL,
  `member4SSN` varchar(12) DEFAULT NULL,
  `member4DOB` date DEFAULT NULL,
  `member4Email` varchar(75) DEFAULT NULL,
  `member5Address` varchar(100) DEFAULT NULL,
  `member5Phone` varchar(20) DEFAULT NULL,
  `member5Cell` varchar(20) DEFAULT NULL,
  `member5SSN` varchar(12) DEFAULT NULL,
  `member5DOB` date DEFAULT NULL,
  `member5Email` varchar(75) DEFAULT NULL,
  `member6Address` varchar(100) DEFAULT NULL,
  `member6Phone` varchar(20) DEFAULT NULL,
  `member6Cell` varchar(20) DEFAULT NULL,
  `member6SSN` varchar(12) DEFAULT NULL,
  `member6DOB` date DEFAULT NULL,
  `member6Email` varchar(75) DEFAULT NULL,
  `member7Address` varchar(100) DEFAULT NULL,
  `member7Phone` varchar(20) DEFAULT NULL,
  `member7Cell` varchar(20) DEFAULT NULL,
  `member7SSN` varchar(12) DEFAULT NULL,
  `member7DOB` date DEFAULT NULL,
  `member7Email` varchar(100) DEFAULT NULL,
  `member8Address` varchar(100) DEFAULT NULL,
  `member8Phone` varchar(20) DEFAULT NULL,
  `member8Cell` varchar(20) DEFAULT NULL,
  `member8SSN` varchar(12) DEFAULT NULL,
  `member8DOB` date DEFAULT NULL,
  `member8Email` varchar(75) DEFAULT NULL,
  `member9Address` varchar(100) DEFAULT NULL,
  `member9Phone` varchar(20) DEFAULT NULL,
  `member9Cell` varchar(20) DEFAULT NULL,
  `member9SSN` varchar(12) DEFAULT NULL,
  `member9DOB` date DEFAULT NULL,
  `member9Email` varchar(75) DEFAULT NULL,
  `member10Address` varchar(100) DEFAULT NULL,
  `member10Phone` varchar(20) DEFAULT NULL,
  `member10Cell` varchar(20) DEFAULT NULL,
  `member10SSN` varchar(12) DEFAULT NULL,
  `member10DOB` date DEFAULT NULL,
  `member10Email` varchar(75) DEFAULT NULL,
  `crossCorporateGuarantor` varchar(75) DEFAULT NULL,
  `tradeName` varchar(75) DEFAULT NULL,
  `noOfEmployees` int(11) DEFAULT NULL,
  `grossAnnualRevenues` float DEFAULT NULL,
  `businessDescription` text,
  `businessEntityFax` varchar(30) DEFAULT NULL,
  `businessEntityPhone` varchar(30) DEFAULT NULL,
  `member1CreditScore` varchar(100) DEFAULT NULL,
  `member2CreditScore` varchar(100) DEFAULT NULL,
  `member3CreditScore` varchar(100) DEFAULT NULL,
  `member4CreditScore` varchar(100) DEFAULT NULL,
  `member5CreditScore` varchar(100) DEFAULT NULL,
  `member6CreditScore` varchar(100) DEFAULT NULL,
  `member7CreditScore` varchar(100) DEFAULT NULL,
  `member8CreditScore` varchar(100) DEFAULT NULL,
  `member9CreditScore` varchar(100) DEFAULT NULL,
  `member10CreditScore` varchar(100) DEFAULT NULL,
  `organizationalRef` varchar(25) DEFAULT NULL,
  `dateOfFormation` date DEFAULT NULL,
  PRIMARY KEY (`HMLOBEID`),
  KEY `fileID` (`fileID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblFileHMLOBusinessEntity_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileHMLOBusinessEntity_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=5842 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOExperience`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOExperience`;
CREATE TABLE `tblFileHMLOExperience` (
  `HMLOEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `haveBorREInvestmentExperience` varchar(5) DEFAULT 'NA',
  `borNoOfFlippingExperience` int(11) DEFAULT NULL,
  `borNoOfREPropertiesCompleted` int(11) DEFAULT NULL,
  `haveBorRehabConstructionExperience` varchar(5) DEFAULT 'NA',
  `borNoOfYearRehabExperience` int(11) DEFAULT NULL,
  `borRehabPropCompleted` int(11) DEFAULT NULL,
  `haveBorProjectCurrentlyInProgress` varchar(5) DEFAULT 'NA',
  `borNoOfProjectCurrently` int(11) DEFAULT NULL,
  `haveBorOwnInvestmentProperties` varchar(5) DEFAULT 'NA',
  `borNoOfOwnProp` int(11) DEFAULT NULL,
  `areBorMemberOfInvestmentClub` varchar(5) DEFAULT 'NA',
  `borClubName` varchar(75) DEFAULT NULL,
  `haveCoBorREInvestmentExperience` varchar(5) DEFAULT 'NA',
  `coBorNoOfREPropertiesCompleted` int(11) DEFAULT NULL,
  `haveCoBorRehabConstructionExperience` varchar(5) DEFAULT 'NA',
  `coBorNoOfYearRehabExperience` int(11) DEFAULT NULL,
  `coBorRehabPropCompleted` int(11) DEFAULT NULL,
  `haveCoBorProjectCurrentlyInProgress` varchar(5) DEFAULT 'NA',
  `coBorNoOfProjectCurrently` int(11) DEFAULT NULL,
  `haveCoBorOwnInvestmentProperties` varchar(5) DEFAULT 'NA',
  `coBorNoOfOwnProp` int(11) DEFAULT NULL,
  `areCoBorMemberOfInvestmentClub` varchar(5) DEFAULT 'NA',
  `coBorClubName` varchar(75) DEFAULT NULL,
  `borREAddress1` text,
  `borOutcomeRE1` varchar(20) DEFAULT NULL,
  `borREAddress2` text,
  `borOutcomeRE2` varchar(20) DEFAULT NULL,
  `borREAddress3` text,
  `borOutcomeRE3` varchar(20) DEFAULT NULL,
  `coBorREAddress1` text,
  `coBorOutcomeRE1` varchar(20) DEFAULT NULL,
  `coBorREAddress2` text,
  `coBorOutcomeRE2` varchar(20) DEFAULT NULL,
  `coBorREAddress3` text,
  `coBorOutcomeRE3` varchar(20) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `borRCAddress1` text,
  `borRCOutcome1` varchar(20) DEFAULT NULL,
  `borRCAddress2` text,
  `borRCOutcome2` varchar(20) DEFAULT NULL,
  `borRCAddress3` text,
  `borRCOutcome3` varchar(20) DEFAULT NULL,
  `coBorRCAddress1` text,
  `coBorRCOutcome1` varchar(20) DEFAULT NULL,
  `coBorRCAddress2` text,
  `coBorRCOutcome2` varchar(20) DEFAULT NULL,
  `coBorRCAddress3` text,
  `coBorRCOutcome3` varchar(20) DEFAULT NULL,
  `CID` int(10) unsigned NOT NULL,
  `haveBorSquareFootage` varchar(5) DEFAULT NULL,
  `borNoOfSquareFeet` int(11) DEFAULT NULL,
  `coBorNoOfFlippingExperience` int(11) DEFAULT NULL,
  `liquidAssets` int(11) DEFAULT NULL,
  `haveBorProfLicences` varchar(5) DEFAULT NULL,
  `borProfLicence` varchar(50) DEFAULT NULL,
  `haveCoBorProfLicences` varchar(5) DEFAULT NULL,
  `coBorProfLicence` varchar(50) DEFAULT NULL,
  `fullTimeRealEstateInvestor` varchar(5) DEFAULT NULL,
  `coFullTimeRealEstateInvestor` varchar(5) DEFAULT NULL,
  `areBuilderDeveloper` varchar(5) DEFAULT NULL,
  `amountOfFinancing` float DEFAULT NULL,
  `amountOfFinancingTo` float DEFAULT NULL,
  `typicalPurchasePrice` float DEFAULT NULL,
  `typicalPurchasePriceTo` float DEFAULT NULL,
  `typicalConstructionCosts` float DEFAULT NULL,
  `typicalConstructionCostsTo` float DEFAULT NULL,
  `typicalSalePrice` float DEFAULT NULL,
  `typicalSalePriceTo` float DEFAULT NULL,
  `constructionDrawsPerProject` int(11) DEFAULT NULL,
  `constructionDrawsPerProjectTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateToFirstConst` int(11) DEFAULT NULL,
  `monthsPurchaseDateToFirstConstTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateUntilConst` int(11) DEFAULT NULL,
  `monthsPurchaseDateUntilConstTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateToSaleDate` int(11) DEFAULT NULL,
  `monthsPurchaseDateToSaleDateTo` int(11) DEFAULT NULL,
  `NoOfSuchProjects` int(11) DEFAULT NULL,
  `NoOfSuchProjectsTo` int(11) DEFAULT NULL,
  `haveBorSellPropertie` varchar(5) DEFAULT NULL,
  `borNoOfProSellExperience` tinyint(4) DEFAULT NULL,
  `borNoOfProSellCompleted` tinyint(4) DEFAULT NULL,
  `borPrimaryInvestmentStrategy` varchar(100) DEFAULT NULL,
  `borPrimaryInvestmentStrategyExplain` text,
  `haveCoBorSellPropertie` varchar(5) DEFAULT NULL,
  `coBorNoOfProSellExperience` tinyint(4) DEFAULT NULL,
  `coBorNoOfProSellCompleted` tinyint(4) DEFAULT NULL,
  `coBorPrimaryInvestmentStrategy` varchar(100) DEFAULT NULL,
  `coBorPrimaryInvestmentStrategyExplain` text,
  `coBorSellAddress1` text,
  `coBorSellAddress2` text,
  `coBorSellAddress3` text,
  `coBorSellOutcome1` float DEFAULT NULL,
  `coBorSellOutcome2` float DEFAULT NULL,
  `coBorSellOutcome3` float DEFAULT NULL,
  `borLicenseNo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`HMLOEID`),
  KEY `fileID` (`fileID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblFileHMLOExperience_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileHMLOExperience_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=6430 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOListOfRepairs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOListOfRepairs`;
CREATE TABLE `tblFileHMLOListOfRepairs` (
  `HMLORID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `architectFees` int(11) DEFAULT NULL,
  `permitsFees` int(11) DEFAULT NULL,
  `demolitionTrashDumpsters` int(11) DEFAULT NULL,
  `exteriorRepairs` int(11) DEFAULT NULL,
  `termiteInspectionTreatment` int(11) DEFAULT NULL,
  `foundationStructuralReport` int(11) DEFAULT NULL,
  `roofing` int(11) DEFAULT NULL,
  `windows` int(11) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `siding` int(11) DEFAULT NULL,
  `carpentry` int(11) DEFAULT NULL,
  `deckPorch` int(11) DEFAULT NULL,
  `drivewayWalkwayPatio` int(11) DEFAULT NULL,
  `landscaping` int(11) DEFAULT NULL,
  `exteriorRepairsOther` int(11) DEFAULT NULL,
  `HVACRough` int(11) DEFAULT NULL,
  `HVACFinish` int(11) DEFAULT NULL,
  `plumbingRough` int(11) DEFAULT NULL,
  `plumbingFixtures` int(11) DEFAULT NULL,
  `plumbingFinish` int(11) DEFAULT NULL,
  `electricalRough` int(11) DEFAULT NULL,
  `electricalFixtures` int(11) DEFAULT NULL,
  `electricalFinish` int(11) DEFAULT NULL,
  `sheetRock` int(11) DEFAULT NULL,
  `interiorRepairsDoors` int(11) DEFAULT NULL,
  `interiorRepairsOther1` int(11) DEFAULT NULL,
  `interiorRepairsOther2` int(11) DEFAULT NULL,
  `interiorRepairsOther3` int(11) DEFAULT NULL,
  `kitchenCabinets` int(11) DEFAULT NULL,
  `kitchenCountertops` int(11) DEFAULT NULL,
  `kitchenAppliances` int(11) DEFAULT NULL,
  `bath1` int(11) DEFAULT NULL,
  `bath2` int(11) DEFAULT NULL,
  `bath3` int(11) DEFAULT NULL,
  `interiorPainting` int(11) DEFAULT NULL,
  `exteriorPainting` int(11) DEFAULT NULL,
  `flooringCarpetVinyl` int(11) DEFAULT NULL,
  `flooringTile` int(11) DEFAULT NULL,
  `flooringHardwood` int(11) DEFAULT NULL,
  `finalCleanupOther1` int(11) DEFAULT NULL,
  `finalCleanupOther2` int(11) DEFAULT NULL,
  `finalCleanupOther3` int(11) DEFAULT NULL,
  `finalCleanupOther4` int(11) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `interiorRepairsCarpentry` int(11) DEFAULT NULL,
  `finalCleanupOther1Desc` varchar(75) DEFAULT NULL,
  `finalCleanupOther2Desc` varchar(75) DEFAULT NULL,
  `finalCleanupOther3Desc` varchar(75) DEFAULT NULL,
  `finalCleanupOther4Desc` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`HMLORID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLOListOfRepairs_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1104 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLONewLoanInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLONewLoanInfo`;
CREATE TABLE `tblFileHMLONewLoanInfo` (
  `HMLIID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `extensionOption` int(11) NOT NULL,
  `loanTermExpireDate` date DEFAULT NULL,
  `isTaxesInsEscrowed` varchar(5) NOT NULL,
  `assumability` varchar(5) NOT NULL,
  `applicationFee` float NOT NULL,
  `processingFee` float NOT NULL,
  `appraisalFee` float NOT NULL,
  `drawsSetUpFee` float NOT NULL,
  `miscellaneousFee` float NOT NULL,
  `estdTitleClosingFee` float NOT NULL,
  `originationPointsRate` decimal(10,2) DEFAULT '0.00',
  `originationPointsValue` float NOT NULL,
  `brokerPointsRate` decimal(10,2) DEFAULT '0.00',
  `brokerPointsValue` float NOT NULL,
  `closingCostFinanced` float NOT NULL,
  `rehabCostFinanced` float NOT NULL,
  `HMLOLender` varchar(75) NOT NULL,
  `recordDate` datetime NOT NULL,
  `interestReserves` smallint(5) NOT NULL,
  `percentageOfBudget` decimal(10,2) DEFAULT '0.00',
  `drawsFee` decimal(10,2) DEFAULT '0.00',
  `originalPurchaseDate` date DEFAULT NULL,
  `originalPurchasePrice` float NOT NULL,
  `costOfImprovementsMade` varchar(75) NOT NULL,
  `payOffMortgage1` float NOT NULL,
  `payOffMortgage2` float NOT NULL,
  `payOffOutstandingTaxes` float NOT NULL,
  `payOffOtherOutstandingAmounts` float NOT NULL,
  `refinanceCurrentLender` varchar(75) NOT NULL,
  `refinanceCurrentRate` decimal(10,2) DEFAULT '0.00',
  `refinanceMonthlyPayment` float NOT NULL,
  `CashOut` text,
  `additionalPropertyRestrictions` varchar(5) NOT NULL,
  `restrictionsExplain` text,
  `actualRentsInPlace` float NOT NULL,
  `lessActualExpenses` float NOT NULL,
  `grossAnnualRentLargestTenant` float NOT NULL,
  `prePaymentPenaltyPercentage` decimal(10,2) DEFAULT '0.00',
  `amortizationType` varchar(25) NOT NULL,
  `noUnitsOccupied` int(10) NOT NULL,
  `noOfBuildings` int(10) NOT NULL,
  `ownerOccupancyPercentage` decimal(10,2) DEFAULT '0.00',
  `noOfPropertiesAcquiring` int(10) NOT NULL,
  `cashOutAmt` float NOT NULL,
  `datesigned` date DEFAULT NULL,
  `resalePrice` float NOT NULL,
  `resaleClosingDate` date DEFAULT NULL,
  `initialAdvance` float NOT NULL,
  `secondaryFinancingAmount` float NOT NULL,
  `valuationBPOFee` float NOT NULL,
  `valuationCMAFee` float NOT NULL,
  `valuationAVEFee` float NOT NULL,
  `valuationAVMFee` float NOT NULL,
  `creditReportFee` float NOT NULL,
  `creditCheckFee` float NOT NULL,
  `employmentVerificationFee` float NOT NULL,
  `backgroundCheckFee` float NOT NULL,
  `taxReturnOrderFee` float NOT NULL,
  `floodCertificateFee` float NOT NULL,
  `loanOriginationFee` float NOT NULL,
  `documentPreparationFee` float NOT NULL,
  `wireFee` float NOT NULL,
  `servicingSetUpFee` float NOT NULL,
  `taxServiceFee` float NOT NULL,
  `floodServiceFee` float NOT NULL,
  `constructionHoldbackFee` float NOT NULL,
  `thirdPartyFees` float NOT NULL,
  `otherFee` float NOT NULL,
  `taxImpoundsMonth` varchar(5) DEFAULT NULL,
  `taxImpoundsMonthAmt` float NOT NULL,
  `taxImpoundsFee` float NOT NULL,
  `insImpoundsMonth` varchar(5) DEFAULT NULL,
  `insImpoundsMonthAmt` float NOT NULL,
  `insImpoundsFee` float NOT NULL,
  `interestChargedFromDate` date DEFAULT NULL,
  `interestChargedEndDate` date DEFAULT NULL,
  `costOfImprovementsToBeMade` float DEFAULT NULL,
  `LOCTotalLoanAmt` float DEFAULT NULL,
  `rehabCostPercentageFinanced` varchar(30) DEFAULT NULL,
  `downPaymentPercentage` varchar(30) DEFAULT NULL,
  `yieldSpread` varchar(30) DEFAULT NULL,
  `CORTotalLoanAmt` float DEFAULT NULL,
  `CORefiLTVPercentage` int(11) DEFAULT NULL,
  `costOfCapital` varchar(30) DEFAULT NULL,
  `stabilizedRate` varchar(30) DEFAULT NULL,
  `includeCCF` tinyint(1) DEFAULT '0',
  `landValue` float DEFAULT NULL,
  `isOwnLand` varchar(5) DEFAULT NULL,
  `PAExpirationDate` date DEFAULT NULL,
  `totalLoanAmount` float NOT NULL,
  `finalLoanAmt` float NOT NULL,
  `inspectionFees` float DEFAULT NULL,
  `projectFeasibility` float DEFAULT NULL,
  `dueDiligence` float DEFAULT NULL,
  `UccLienSearch` float DEFAULT NULL,
  `isFeeUpdated` tinyint(4) DEFAULT NULL,
  `haveBorSquareFootage` varchar(5) DEFAULT NULL,
  `borNoOfSquareFeet` int(11) DEFAULT NULL,
  `haveInterestreserve` varchar(50) DEFAULT NULL,
  `prepaidInterestReserve` float DEFAULT NULL,
  `noOfMonthsPrepaid` int(11) DEFAULT NULL,
  `closingCostFinancingFee` float DEFAULT NULL,
  `lien1MaturityDate` date DEFAULT NULL,
  `lien2MaturityDate` date DEFAULT NULL,
  `lean1CurrentDefault` varchar(5) DEFAULT NULL,
  `lean2CurrentDefault` varchar(5) DEFAULT NULL,
  `ownPropertyFreeAndClear` varchar(5) DEFAULT NULL,
  `brokerDealPoints` int(11) DEFAULT NULL,
  `brokerDealFee` int(11) DEFAULT NULL,
  `brokerQuotedinterestRate` varchar(5) DEFAULT NULL,
  `accessWholesalePricing` varchar(5) DEFAULT NULL,
  `desiredLoanAmount` float DEFAULT NULL,
  `attorneyFee` float DEFAULT NULL,
  `extensionOptionPercentage` decimal(10,2) DEFAULT NULL,
  `escrowFees` float DEFAULT NULL,
  `recordingFee` float DEFAULT NULL,
  `prePaidInterest` float DEFAULT NULL,
  `realEstateTaxes` float DEFAULT NULL,
  `insurancePremium` float DEFAULT NULL,
  `bufferAndMessengerFee` float DEFAULT NULL,
  `travelNotaryFee` float DEFAULT NULL,
  `underwritingFees` float DEFAULT NULL,
  `propertyTax` float DEFAULT NULL,
  `payOffLiensCreditors` float DEFAULT NULL,
  `wireTransferFeeToTitle` float DEFAULT NULL,
  `wireTransferFeeToEscrow` float DEFAULT NULL,
  `pastDuePropertyTaxes` float DEFAULT NULL,
  `earnestDeposit` float DEFAULT NULL,
  `otherDownPayment` float DEFAULT NULL,
  `isLoanPaymentAmt` varchar(5) DEFAULT NULL,
  `ownedFreeAndClear` varchar(5) DEFAULT NULL,
  `ownedSameEntity` varchar(5) DEFAULT NULL,
  `autoCalcTLAARV` varchar(5) DEFAULT 'No',
  `maxArvPer` float DEFAULT NULL,
  PRIMARY KEY (`HMLIID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLONewLoanInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5927 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLOPropInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLOPropInfo`;
CREATE TABLE `tblFileHMLOPropInfo` (
  `HMLOPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `typeOfHMLOLoanRequesting` varchar(75) DEFAULT NULL,
  `purchaseCloseDate` date DEFAULT NULL,
  `acceptedPurchase` varchar(5) DEFAULT NULL,
  `requiredLoanAmount` int(11) DEFAULT NULL,
  `exitStrategy` varchar(50) DEFAULT NULL,
  `propertyNeedRehab` varchar(5) DEFAULT NULL,
  `rehabStrategyPlans` text,
  `proInsName` varchar(75) DEFAULT NULL,
  `proInsRep` varchar(75) DEFAULT NULL,
  `proInsFirstName` varchar(75) DEFAULT NULL,
  `proInsLastName` varchar(75) DEFAULT NULL,
  `proIncTollFree` varchar(20) DEFAULT NULL,
  `proIncPhone` varchar(20) DEFAULT NULL,
  `proIncCell` varchar(20) DEFAULT NULL,
  `proIncFax` varchar(20) DEFAULT NULL,
  `proIncEmail` varchar(75) DEFAULT NULL,
  `proIncWebsite` varchar(200) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `loanTerm` varchar(75) DEFAULT NULL,
  `prePaymentPenalty` varchar(30) DEFAULT NULL,
  `lienPosition` int(11) DEFAULT NULL,
  `annualPremium` int(11) DEFAULT NULL,
  `isHiredPerformRehab` varchar(5) DEFAULT NULL,
  `GCCompanyName` varchar(75) DEFAULT NULL,
  `GCFirstName` varchar(75) DEFAULT NULL,
  `GCLastName` varchar(75) DEFAULT NULL,
  `GCLicense` varchar(75) DEFAULT NULL,
  `approvedLoanAmt` varchar(30) DEFAULT NULL,
  `propIncNotes` text,
  `propEquity` varchar(30) DEFAULT NULL,
  `maxAmtToPutDown` int(11) DEFAULT NULL,
  `HMLOEstateHeldIn` varchar(50) DEFAULT NULL,
  `paymentReserves` int(11) DEFAULT NULL,
  `requiredConstruction` int(11) DEFAULT NULL,
  `contingencyReserve` int(11) DEFAULT NULL,
  `isBlanketLoan` varchar(5) DEFAULT NULL,
  `serviceLenderType` varchar(75) DEFAULT NULL,
  `typeOfRecordingJurisdiction` varchar(75) DEFAULT NULL,
  `nameOfRecordingJurisdiction` varchar(75) DEFAULT NULL,
  `dateNoteSigned` date DEFAULT NULL,
  `riders` text,
  `maturityDate` date DEFAULT NULL,
  `typeOfSale` varchar(75) DEFAULT NULL,
  `latePayemntAppliedOn` int(11) DEFAULT NULL,
  `lateChargeAmt` float DEFAULT NULL,
  `proInsPolicyNo` varchar(150) DEFAULT NULL,
  `proInsPolicyExpDate` date DEFAULT NULL,
  `propDetailsProcess` varchar(75) DEFAULT NULL,
  `propertyTaxDueDate` date DEFAULT NULL,
  `assetCollateralized` text,
  `lenderNotes` text,
  `checkDisplayTermSheet` varchar(30) DEFAULT 'No',
  `involvedPurchase` varchar(5) DEFAULT NULL,
  `wholesaleFee` float DEFAULT NULL,
  `seekingCashRefinance` varchar(5) DEFAULT NULL,
  `seekingCash` int(11) DEFAULT NULL,
  `seekingFund` int(11) DEFAULT NULL,
  `rentalIncomePerMonth` float DEFAULT NULL,
  `minLiabilityCoverage` float DEFAULT NULL,
  `serviceLenderStateOfFormation` varchar(75) DEFAULT NULL,
  `serviceLenderEntityType` varchar(75) DEFAULT NULL,
  `loanSaleDate` date DEFAULT NULL,
  `masterLoanSaleDate` date DEFAULT NULL,
  `isAdditionalGuarantors` varchar(5) DEFAULT NULL,
  `isTherePrePaymentPenalty` varchar(5) DEFAULT NULL,
  `defaultInterestRate` varchar(30) DEFAULT NULL,
  `madePursuantToCourtOrder` varchar(5) DEFAULT NULL,
  `loanSigning` varchar(75) DEFAULT NULL,
  `courtOrderNecessary` varchar(75) DEFAULT NULL,
  `loanPurpose` varchar(75) DEFAULT NULL,
  `expectForDueDiligence` longtext,
  `referringParty` varchar(50) DEFAULT NULL,
  `hereAbout` text,
  `proInsPolicyEffDate` date DEFAULT NULL,
  PRIMARY KEY (`HMLOPID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLOPropInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6885 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHMLORehabInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHMLORehabInfo`;
CREATE TABLE `tblFileHMLORehabInfo` (
  `RID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `rehabCost` int(11) DEFAULT NULL,
  `rehabRepairDetails` varchar(100) DEFAULT NULL,
  `neededToCompleteRehab` varchar(25) DEFAULT NULL,
  `rehabCompanyName` varchar(75) DEFAULT NULL,
  `rehabContractorName` varchar(75) DEFAULT NULL,
  `rehabGCLicense` int(11) DEFAULT NULL,
  `rehabContractorPhone` varchar(20) DEFAULT NULL,
  `rehabContractorEmail` varchar(75) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileHMLORehabInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHUDBasicInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHUDBasicInfo`;
CREATE TABLE `tblFileHUDBasicInfo` (
  `HBID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fileNumber` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `loanNumber` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `mtgInsuranceCaseNumber` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `borrowerInfo` longtext CHARACTER SET latin1,
  `sellerInfo` longtext CHARACTER SET latin1,
  `lenderInfo` longtext CHARACTER SET latin1,
  `propertyLocation` longtext CHARACTER SET latin1,
  `settlementAgent` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `placeOfSettlement` longtext CHARACTER SET latin1,
  `settlementDate` date DEFAULT NULL,
  `HUD_borrowerName` varchar(70) DEFAULT NULL,
  `HUD_borrowerLName` varchar(70) DEFAULT NULL,
  `HUD_mailingAddress` varchar(75) DEFAULT NULL,
  `HUD_mailingCity` varchar(100) DEFAULT NULL,
  `HUD_mailingState` varchar(10) DEFAULT NULL,
  `HUD_mailingZip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`HBID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileHUDBasicInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8258 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHUDSettlementCharges`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHUDSettlementCharges`;
CREATE TABLE `tblFileHUDSettlementCharges` (
  `HSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `salesPrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `salesRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `salesValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `borrowerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sellerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `fieldName` varchar(70) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HSID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileHUDSettlementCharges_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=19225 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHUDTransaction`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHUDTransaction`;
CREATE TABLE `tblFileHUDTransaction` (
  `HUDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `fieldName` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `fieldValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HUDID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileHUDTransaction_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=112930 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileHUDType`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileHUDType`;
CREATE TABLE `tblFileHUDType` (
  `HTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `loanType` int(11) DEFAULT NULL,
  PRIMARY KEY (`HTID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileHUDType_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1258 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileInteriorWorkInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileInteriorWorkInfo`;
CREATE TABLE `tblFileInteriorWorkInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `wallFramingNotes` varchar(250) NOT NULL DEFAULT '',
  `wallFramingSqft` decimal(10,3) DEFAULT '0.000',
  `wallFramingQuantity` int(10) DEFAULT NULL,
  `wallFramingRate` decimal(10,3) DEFAULT '0.000',
  `floorFramingNotes` varchar(250) NOT NULL DEFAULT '',
  `floorFramingSqft` decimal(10,3) DEFAULT '0.000',
  `floorFramingQuantity` int(10) DEFAULT NULL,
  `floorFramingRate` decimal(10,3) DEFAULT '0.000',
  `ceilingFramingNotes` varchar(250) NOT NULL DEFAULT '',
  `ceilingFramingSqft` decimal(10,3) DEFAULT '0.000',
  `ceilingFramingQuantity` int(10) DEFAULT NULL,
  `ceilingFramingRate` decimal(10,3) DEFAULT '0.000',
  `interiorElectricalNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorElectricalSqft` decimal(10,3) DEFAULT '0.000',
  `interiorElectricalQuantity` int(10) DEFAULT NULL,
  `interiorElectricalRate` decimal(10,3) DEFAULT '0.000',
  `interiorPlumpingNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorPlumpingSqft` decimal(10,3) DEFAULT '0.000',
  `interiorPlumpingQuantity` int(10) DEFAULT NULL,
  `interiorPlumpingRate` decimal(10,3) DEFAULT '0.000',
  `interiorHVACNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorHVACSqft` decimal(10,3) DEFAULT '0.000',
  `interiorHVACQuantity` int(10) DEFAULT NULL,
  `interiorHVACRate` decimal(10,3) DEFAULT '0.000',
  `flooringNotes` varchar(250) NOT NULL DEFAULT '',
  `flooringSqft` decimal(10,3) DEFAULT '0.000',
  `flooringQuantity` int(10) DEFAULT NULL,
  `flooringRate` decimal(10,3) DEFAULT '0.000',
  `sheetrockNotes` varchar(250) NOT NULL DEFAULT '',
  `sheetrockSqft` decimal(10,3) DEFAULT '0.000',
  `sheetrockQuantity` int(10) DEFAULT NULL,
  `sheetrockRate` decimal(10,3) DEFAULT '0.000',
  `windowsNotes` varchar(250) NOT NULL DEFAULT '',
  `windowsSqft` decimal(10,3) DEFAULT '0.000',
  `windowsQuantity` int(10) DEFAULT NULL,
  `windowsRate` decimal(10,3) DEFAULT '0.000',
  `interiorDoorsNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorDoorsSqft` decimal(10,3) DEFAULT '0.000',
  `interiorDoorsQuantity` int(10) DEFAULT NULL,
  `interiorDoorsRate` decimal(10,3) DEFAULT '0.000',
  `interiorTrimNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorTrimSqft` decimal(10,3) DEFAULT '0.000',
  `interiorTrimQuantity` int(10) DEFAULT NULL,
  `interiorTrimRate` decimal(10,3) DEFAULT '0.000',
  `bathroomVanitiesNotes` varchar(250) NOT NULL DEFAULT '',
  `bathroomVanitiesSqft` decimal(10,3) DEFAULT '0.000',
  `bathroomVanitiesQuantity` int(10) DEFAULT NULL,
  `bathroomVanitiesRate` decimal(10,3) DEFAULT '0.000',
  `bathroomFixturesNotes` varchar(250) NOT NULL DEFAULT '',
  `bathroomFixturesSqft` decimal(10,3) DEFAULT '0.000',
  `bathroomFixturesQuantity` int(10) DEFAULT NULL,
  `bathroomFixturesRate` decimal(10,3) DEFAULT '0.000',
  `kitchenCabinetsNotes` varchar(250) NOT NULL DEFAULT '',
  `kitchenCabinetsSqft` decimal(10,3) DEFAULT '0.000',
  `kitchenCabinetsQuantity` int(10) DEFAULT NULL,
  `kitchenCabinetsRate` decimal(10,3) DEFAULT '0.000',
  `laborToInstallKitchenNotes` varchar(250) NOT NULL DEFAULT '',
  `laborToInstallKitchenSqft` decimal(10,3) DEFAULT '0.000',
  `laborToInstallKitchenQuantity` int(10) DEFAULT NULL,
  `laborToInstallKitchenRate` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsNotes1` varchar(250) NOT NULL DEFAULT '',
  `floorCoveringsSqft1` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsQuantity1` int(10) DEFAULT NULL,
  `floorCoveringsRate1` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsNotes2` varchar(250) NOT NULL DEFAULT '',
  `floorCoveringsSqft2` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsQuantity2` int(10) DEFAULT NULL,
  `floorCoveringsRate2` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsNotes3` varchar(250) NOT NULL DEFAULT '',
  `floorCoveringsSqft3` decimal(10,3) DEFAULT '0.000',
  `floorCoveringsQuantity3` int(10) DEFAULT NULL,
  `floorCoveringsRate3` decimal(10,3) DEFAULT '0.000',
  `interiorPaintingNotes` varchar(250) NOT NULL DEFAULT '',
  `interiorPaintingSqft` decimal(10,3) DEFAULT '0.000',
  `interiorPaintingQuantity` int(10) DEFAULT NULL,
  `interiorPaintingRate` decimal(10,3) DEFAULT '0.000',
  `lightFixturesNotes` varchar(250) NOT NULL DEFAULT '',
  `lightFixturesSqft` decimal(10,3) DEFAULT '0.000',
  `lightFixturesQuantity` int(10) DEFAULT NULL,
  `lightFixturesRate` decimal(10,3) DEFAULT '0.000',
  `otherFixturesNotes` varchar(250) NOT NULL DEFAULT '',
  `otherFixturesSqft` decimal(10,3) DEFAULT '0.000',
  `otherFixturesQuantity` int(10) DEFAULT NULL,
  `otherFixturesRate` decimal(10,3) DEFAULT '0.000',
  `appliancesNotes` varchar(250) NOT NULL DEFAULT '',
  `appliancesSqft` decimal(10,3) DEFAULT '0.000',
  `appliancesQuantity` int(10) DEFAULT NULL,
  `appliancesRate` decimal(10,3) DEFAULT '0.000',
  `otherInteriorNotes` varchar(250) NOT NULL DEFAULT '',
  `otherInteriorSqft` decimal(10,3) DEFAULT '0.000',
  `otherInteriorQuantity` int(10) DEFAULT NULL,
  `otherInteriorRate` decimal(10,3) DEFAULT '0.000',
  `recordDate` date DEFAULT NULL,
  `wallFramingEstCost` decimal(13,2) DEFAULT NULL,
  `wallFramingActCost` decimal(13,2) DEFAULT NULL,
  `floorFramingEstCost` decimal(13,2) DEFAULT NULL,
  `floorFramingActCost` decimal(13,2) DEFAULT NULL,
  `ceilingFramingEstCost` decimal(13,2) DEFAULT NULL,
  `ceilingFramingActCost` decimal(13,2) DEFAULT NULL,
  `interiorElectricalEstCost` decimal(13,2) DEFAULT NULL,
  `interiorElectricalActCost` decimal(13,2) DEFAULT NULL,
  `interiorPlumpingEstCost` decimal(13,2) DEFAULT NULL,
  `interiorPlumpingActCost` decimal(13,2) DEFAULT NULL,
  `interiorHVACEstCost` decimal(13,2) DEFAULT NULL,
  `interiorHVACActCost` decimal(13,2) DEFAULT NULL,
  `flooringEstCost` decimal(13,2) DEFAULT NULL,
  `flooringActCost` decimal(13,2) DEFAULT NULL,
  `sheetrockEstCost` decimal(13,2) DEFAULT NULL,
  `sheetrockActCost` decimal(13,2) DEFAULT NULL,
  `windowsEstCost` decimal(13,2) DEFAULT NULL,
  `windowsActCost` decimal(13,2) DEFAULT NULL,
  `interiorDoorsEstCost` decimal(13,2) DEFAULT NULL,
  `interiorDoorsActCost` decimal(13,2) DEFAULT NULL,
  `interiorTrimEstCost` decimal(13,2) DEFAULT NULL,
  `interiorTrimActCost` decimal(13,2) DEFAULT NULL,
  `bathroomVanitiesEstCost` decimal(13,2) DEFAULT NULL,
  `bathroomVanitiesActCost` decimal(13,2) DEFAULT NULL,
  `bathroomFixturesEstCost` decimal(13,2) DEFAULT NULL,
  `bathroomFixturesActCost` decimal(13,2) DEFAULT NULL,
  `kitchenCabinetsEstCost` decimal(13,2) DEFAULT NULL,
  `kitchenCabinetsActCost` decimal(13,2) DEFAULT NULL,
  `laborToInstallKitchenEstCost` decimal(13,2) DEFAULT NULL,
  `laborToInstallKitchenActCost` decimal(13,2) DEFAULT NULL,
  `floorCoveringsEstCost1` decimal(13,2) DEFAULT NULL,
  `floorCoveringsActCost1` decimal(13,2) DEFAULT NULL,
  `floorCoveringsEstCost2` decimal(13,2) DEFAULT NULL,
  `floorCoveringsActCost2` decimal(13,2) DEFAULT NULL,
  `floorCoveringsEstCost3` decimal(13,2) DEFAULT NULL,
  `floorCoveringsActCost3` decimal(13,2) DEFAULT NULL,
  `interiorPaintingEstCost` decimal(13,2) DEFAULT NULL,
  `interiorPaintingActCost` decimal(13,2) DEFAULT NULL,
  `lightFixturesEstCost` decimal(13,2) DEFAULT NULL,
  `lightFixturesActCost` decimal(13,2) DEFAULT NULL,
  `otherFixturesEstCost` decimal(13,2) DEFAULT NULL,
  `otherFixturesActCost` decimal(13,2) DEFAULT NULL,
  `appliancesEstCost` decimal(13,2) DEFAULT NULL,
  `appliancesActCost` decimal(13,2) DEFAULT NULL,
  `otherInteriorEstCost` decimal(13,2) DEFAULT NULL,
  `otherInteriorActCost` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileInteriorWorkInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOAssetsInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOAssetsInfo`;
CREATE TABLE `tblFileLOAssetsInfo` (
  `LOAID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `vestedInterest` int(11) NOT NULL,
  `networthOfBusinessOwned` int(11) NOT NULL,
  `automobilesOwned3x` varchar(55) NOT NULL,
  `stocksBondsComNameNumberDesc` varchar(75) NOT NULL,
  `faceAmount` int(11) NOT NULL,
  `otherAssets` varchar(105) NOT NULL,
  `alimonyChildSupportSeparatePayments` int(11) NOT NULL,
  `owedTo` varchar(55) NOT NULL,
  `jobRelatedExpense` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `automobilesOwned3x1` varchar(55) NOT NULL,
  `automobilesOwned3x2` varchar(55) NOT NULL,
  `automobilesOwned1` int(11) NOT NULL,
  PRIMARY KEY (`LOAID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOAssetsInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2563 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOBorEmploymentInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOBorEmploymentInfo`;
CREATE TABLE `tblFileLOBorEmploymentInfo` (
  `LOBEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `nameOfEmployer` varchar(55) NOT NULL,
  `addrOfEmployer` longtext,
  `employmentType` varchar(55) NOT NULL,
  `employedFrom` date DEFAULT NULL,
  `employedTo` date DEFAULT NULL,
  `monthlyIncome` int(11) NOT NULL,
  `position` varchar(55) NOT NULL,
  `businessPhone` varchar(45) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOBEID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOBorEmploymentInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOChekingSavingInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOChekingSavingInfo`;
CREATE TABLE `tblFileLOChekingSavingInfo` (
  `LOCSID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `nameAddrOfBank` varchar(150) NOT NULL,
  `accountNumber` varchar(45) NOT NULL,
  `balance` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `accType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`LOCSID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOChekingSavingInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `LOChekingSavingInfo_h` BEFORE DELETE ON `tblFileLOChekingSavingInfo` FOR EACH ROW BEGIN
        IF (OLD.LOCSID>0) THEN
            INSERT INTO tblFileLOChekingSavingInfo_h (SELECT * FROM tblFileLOChekingSavingInfo WHERE LOCSID = OLD.LOCSID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileLOChekingSavingInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOChekingSavingInfo_h`;
CREATE TABLE `tblFileLOChekingSavingInfo_h` (
  `LOCSID` int(11) unsigned NOT NULL,
  `fileID` int(11) unsigned NOT NULL,
  `nameAddrOfBank` varchar(150) NOT NULL,
  `accountNumber` varchar(45) NOT NULL,
  `balance` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `accType` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOCoBEmploymentInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOCoBEmploymentInfo`;
CREATE TABLE `tblFileLOCoBEmploymentInfo` (
  `LOCBID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `nameOfEmployer` varchar(55) NOT NULL,
  `addrOfEmployer` longtext,
  `employmentType` varchar(55) NOT NULL,
  `employedFrom` date DEFAULT NULL,
  `employedTo` date DEFAULT NULL,
  `monthlyIncome` int(11) NOT NULL,
  `position` varchar(55) NOT NULL,
  `businessPhone` varchar(45) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOCBID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOCoBEmploymentInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOExpensesInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOExpensesInfo`;
CREATE TABLE `tblFileLOExpensesInfo` (
  `LOEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `presentRent` int(11) NOT NULL,
  `proposedRent` int(11) NOT NULL,
  `presentFirstMortgage` int(11) NOT NULL,
  `proposedFirstMortgage` int(11) NOT NULL,
  `presentOtherFinancing` int(11) NOT NULL,
  `proposedOtherFinancing` int(11) NOT NULL,
  `presentHazardInsurance` int(11) NOT NULL,
  `proposedHazardInsurance` int(11) NOT NULL,
  `presentRealEstateTaxes` int(11) NOT NULL,
  `proposedRealEstateTaxes` int(11) NOT NULL,
  `presentMortgageInsurance` int(11) NOT NULL,
  `proposedMortgageInsurance` int(11) NOT NULL,
  `presentHomeownerAssnDues` int(11) NOT NULL,
  `proposedHomeownerAssnDues` int(11) NOT NULL,
  `presentOther` int(11) NOT NULL,
  `proposedOther` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOEID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOExpensesInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOExplanation`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOExplanation`;
CREATE TABLE `tblFileLOExplanation` (
  `EID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `borOutstandingJudgements` varchar(5) NOT NULL DEFAULT 'NA',
  `borBankruptWithinThePast` varchar(5) NOT NULL DEFAULT 'NA',
  `borPropertyForeclosed` varchar(5) NOT NULL DEFAULT 'NA',
  `borPartyToLawsuit` varchar(5) NOT NULL DEFAULT 'NA',
  `borTransferOfTitleLieuOfForeclosure` varchar(5) NOT NULL DEFAULT 'NA',
  `isBorrowerPresentlyDelinquent` varchar(5) NOT NULL DEFAULT 'NA',
  `isBorrowerObligatedPayAlimony` varchar(5) NOT NULL DEFAULT 'NA',
  `borDownPaymentBorrowed` varchar(5) NOT NULL DEFAULT 'NA',
  `borEndorserOnNote` varchar(5) NOT NULL DEFAULT 'NA',
  `isBorrowerUSCitizen` varchar(5) NOT NULL DEFAULT 'NA',
  `borPermanentResidentAlien` varchar(5) NOT NULL DEFAULT 'NA',
  `borIntendToOccupyTheProperty` varchar(5) NOT NULL DEFAULT 'NA',
  `borOwnershipInterestInProperty` varchar(5) NOT NULL DEFAULT 'NA',
  `propertyTypeBorrowerOwn` varchar(45) NOT NULL,
  `borrowerHoldTitleHome` varchar(45) NOT NULL,
  `cobOutstandingJudgements` varchar(5) NOT NULL DEFAULT 'NA',
  `cobBankruptWithinThePast` varchar(5) NOT NULL DEFAULT 'NA',
  `cobPropertyForeclosed` varchar(5) NOT NULL DEFAULT 'NA',
  `cobPartyToLawsuit` varchar(5) NOT NULL DEFAULT 'NA',
  `cobTransferOfTitleLieuOfForeclosure` varchar(5) NOT NULL DEFAULT 'NA',
  `isCoBorrowerPresentlyDelinquent` varchar(5) NOT NULL DEFAULT 'NA',
  `isCoBorrowerObligatedPayAlimony` varchar(5) NOT NULL DEFAULT 'NA',
  `cobDownPaymentBorrowed` varchar(5) NOT NULL DEFAULT 'NA',
  `cobEndorserOnNote` varchar(5) NOT NULL DEFAULT 'NA',
  `isCoBorrowerUSCitizen` varchar(5) NOT NULL DEFAULT 'NA',
  `cobPermanentResidentAlien` varchar(5) NOT NULL DEFAULT 'NA',
  `cobIntendToOccupyTheProperty` varchar(5) NOT NULL DEFAULT 'NA',
  `cobOwnershipInterestInProperty` varchar(5) NOT NULL DEFAULT 'NA',
  `propertyTypeCoBorrowerOwn` varchar(45) NOT NULL,
  `coBorrowerHoldTitleHome` varchar(45) NOT NULL,
  `typeOfLoanRequesteing` varchar(45) NOT NULL,
  `inventmentRehabProjected` int(11) NOT NULL,
  `investmentPropertiesHasAcquired` int(11) NOT NULL,
  `borrowerPlanForThisProperty` longtext,
  `borrowerAnticipateHoldTime` int(11) NOT NULL,
  `estimatedMonthlyRentalIncome` varchar(45) NOT NULL,
  `intendToRepayLoan` varchar(45) NOT NULL,
  `otherExplanation` longtext,
  `doesBorrowerIntendUseFunds` longtext,
  `propertyRequireRehab` varchar(5) NOT NULL,
  `explainRehabPlans` longtext,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `borComment` text,
  `coBorComment` text,
  PRIMARY KEY (`EID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOExplanation_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=4238 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOLiabilitiesInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOLiabilitiesInfo`;
CREATE TABLE `tblFileLOLiabilitiesInfo` (
  `LOLID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `nameAddrOfCompany` varchar(150) NOT NULL,
  `monthlyPayment` int(11) NOT NULL,
  `monthsLeftToPay` int(11) NOT NULL,
  `unpaidBalance` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOLID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOLiabilitiesInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `LOLiabilitiesInfo_h` BEFORE DELETE ON `tblFileLOLiabilitiesInfo` FOR EACH ROW BEGIN
        IF (OLD.LOLID>0) THEN
            INSERT INTO tblFileLOLiabilitiesInfo_h (SELECT * FROM tblFileLOLiabilitiesInfo WHERE LOLID = OLD.LOLID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileLOLiabilitiesInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOLiabilitiesInfo_h`;
CREATE TABLE `tblFileLOLiabilitiesInfo_h` (
  `LOLID` int(11) unsigned NOT NULL,
  `fileID` int(11) unsigned NOT NULL,
  `nameAddrOfCompany` varchar(150) NOT NULL,
  `monthlyPayment` int(11) NOT NULL,
  `monthsLeftToPay` int(11) NOT NULL,
  `unpaidBalance` int(11) NOT NULL,
  `recordDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOOtherCredits`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOOtherCredits`;
CREATE TABLE `tblFileLOOtherCredits` (
  `LOOCID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `otherCreditsName` varchar(45) NOT NULL,
  `otherCreditsAmount` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOOCID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOOtherCredits_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `LOOtherCredits_h` BEFORE DELETE ON `tblFileLOOtherCredits` FOR EACH ROW BEGIN
        IF (OLD.LOOCID>0) THEN
            INSERT INTO tblFileLOOtherCredits_h (SELECT * FROM tblFileLOOtherCredits WHERE LOOCID = OLD.LOOCID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileLOOtherCredits_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOOtherCredits_h`;
CREATE TABLE `tblFileLOOtherCredits_h` (
  `LOOCID` int(11) unsigned NOT NULL,
  `fileID` int(11) unsigned NOT NULL,
  `otherCreditsName` varchar(45) NOT NULL,
  `otherCreditsAmount` int(11) NOT NULL,
  `recordDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOPropertyInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOPropertyInfo`;
CREATE TABLE `tblFileLOPropertyInfo` (
  `LOPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `typeOfMortgage` varchar(45) NOT NULL,
  `otherExplanation` varchar(45) NOT NULL,
  `amorizationType` varchar(45) NOT NULL,
  `otherARMExp` varchar(45) NOT NULL,
  `agencyCaseNo` int(11) NOT NULL,
  `lenderCaseNumber` int(11) NOT NULL,
  `noOfUnits` int(11) NOT NULL,
  `purposeOfLoan` varchar(45) NOT NULL,
  `otherPurposeExp` varchar(45) NOT NULL,
  `originalCost` varchar(45) NOT NULL,
  `amtExistLiens` varchar(45) NOT NULL,
  `presentValOfLot` varchar(45) NOT NULL,
  `costOfImprovements` varchar(45) NOT NULL,
  `refPurposeOfRefinance` varchar(45) NOT NULL,
  `refImprovements` varchar(45) NOT NULL,
  `titleHeldNames` varchar(105) NOT NULL,
  `mannerTitleHeld` varchar(55) NOT NULL,
  `estateHeldIn` varchar(45) NOT NULL,
  `expirationDate` date DEFAULT NULL,
  `sourceOfDownPayment` varchar(150) NOT NULL,
  `purchasePrice` int(11) NOT NULL,
  `alterImpRepairs` int(11) NOT NULL,
  `land` int(11) NOT NULL,
  `refinance` int(11) NOT NULL,
  `estimatedPrepaidItems` int(11) NOT NULL,
  `estimatedClosingCosts` int(11) NOT NULL,
  `PMIMIPFundFee` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `subordinateFinancing` int(11) NOT NULL,
  `borCloCostPaidSeller` int(11) NOT NULL,
  `loanAmountExclude` int(11) NOT NULL,
  `PMIMIPFundingFeeFin` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOPID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOPropertyInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLOScheduleRealInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOScheduleRealInfo`;
CREATE TABLE `tblFileLOScheduleRealInfo` (
  `LOSRID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `schedulePropAddr` varchar(75) NOT NULL,
  `scheduleStatus` varchar(45) NOT NULL,
  `propType` varchar(45) NOT NULL,
  `presentMarketValue` varchar(45) NOT NULL,
  `amountOfMortgages` int(11) NOT NULL,
  `grossRentalIncome` int(11) NOT NULL,
  `mortgagePayments` int(11) NOT NULL,
  `insMaintTaxMisc` int(11) NOT NULL,
  `netRentalIncome` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `schedulePropCity` varchar(50) DEFAULT NULL,
  `schedulePropState` varchar(50) DEFAULT NULL,
  `schedulePropZip` varchar(20) DEFAULT NULL,
  `propertyDesc` text,
  PRIMARY KEY (`LOSRID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLOScheduleRealInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `LOScheduleRealInfo_h` BEFORE DELETE ON `tblFileLOScheduleRealInfo` FOR EACH ROW BEGIN
        IF (OLD.LOSRID>0) THEN
            INSERT INTO tblFileLOScheduleRealInfo_h (SELECT * FROM tblFileLOScheduleRealInfo WHERE LOSRID = OLD.LOSRID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileLOScheduleRealInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLOScheduleRealInfo_h`;
CREATE TABLE `tblFileLOScheduleRealInfo_h` (
  `LOSRID` int(11) unsigned NOT NULL,
  `fileID` int(11) unsigned NOT NULL,
  `schedulePropAddr` varchar(75) NOT NULL,
  `scheduleStatus` varchar(45) NOT NULL,
  `propType` varchar(45) NOT NULL,
  `presentMarketValue` varchar(45) NOT NULL,
  `amountOfMortgages` int(11) NOT NULL,
  `grossRentalIncome` int(11) NOT NULL,
  `mortgagePayments` int(11) NOT NULL,
  `insMaintTaxMisc` int(11) NOT NULL,
  `netRentalIncome` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `propertyDesc` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLegalBankruptcy`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLegalBankruptcy`;
CREATE TABLE `tblFileLegalBankruptcy` (
  `BRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `filingDate` date DEFAULT NULL,
  `dischargeDate` date DEFAULT NULL,
  `preDischargeCertificateDate` date DEFAULT NULL,
  `trusteeDocsSentDate` date DEFAULT NULL,
  `clientLetterSentDate` date DEFAULT NULL,
  `planConfirmedDate` date DEFAULT NULL,
  `confirmationHearingDate` date DEFAULT NULL,
  `creditorMeetingDate` date DEFAULT NULL,
  `lmmMediationDate` date DEFAULT NULL,
  `uploadDMMPortalDate` date DEFAULT NULL,
  `mediatorFeeSentDate` date DEFAULT NULL,
  `firstPaymentDueDate` date DEFAULT NULL,
  `verifiedMotionDate` date DEFAULT NULL,
  `lmmPaymentAmount` varchar(40) NOT NULL DEFAULT '',
  `mediatorName` varchar(40) NOT NULL DEFAULT '',
  `lenderDecision` varchar(40) NOT NULL DEFAULT '',
  `chapter13Payment` varchar(40) NOT NULL DEFAULT '',
  `plan13Amount` varchar(40) NOT NULL DEFAULT '',
  `bankruptcyCounty` varchar(40) NOT NULL DEFAULT '',
  `legalNotes` longtext,
  PRIMARY KEY (`BRID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLegalBankruptcy_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3462 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAudit`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAudit`;
CREATE TABLE `tblFileLoanAudit` (
  `LAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `freePreScreen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loanAuditStatus` enum('New Submission','Free Analysis Complete','Pending Review','Incomplete-See Notes','Complete','Invoiced','Auditing','Cancelled') NOT NULL,
  `fraudLevel` enum('','0','1','2','3') NOT NULL DEFAULT '',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recordDate` datetime DEFAULT NULL,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','Auditor','Employee','Branch','Agent') NOT NULL,
  `QWRStatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `QWRDate` date DEFAULT NULL,
  `price` varchar(30) NOT NULL DEFAULT '',
  `paymentStatus` enum('Payment Due','Paid','Delinquent') DEFAULT 'Payment Due',
  PRIMARY KEY (`LAID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLoanAudit_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=977 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditDocChecklist`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditDocChecklist`;
CREATE TABLE `tblFileLoanAuditDocChecklist` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LAID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `DID` int(11) NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `LAID` (`LAID`),
  CONSTRAINT `tblFileLoanAuditDocChecklist_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileLoanAuditDocChecklist_ibfk_2` FOREIGN KEY (`LAID`) REFERENCES `tblFileLoanAudit` (`LAID`)
) ENGINE=InnoDB AUTO_INCREMENT=2226 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditDocChecklistH`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditDocChecklistH`;
CREATE TABLE `tblFileLoanAuditDocChecklistH` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LAID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `DID` int(11) NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=1904 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditDocs`;
CREATE TABLE `tblFileLoanAuditDocs` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `displayDocName` varchar(50) NOT NULL DEFAULT '',
  `docCategory` varchar(50) NOT NULL DEFAULT '',
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','Auditor','Employee','Branch','Agent') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `docName` longtext,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLoanAuditDocs_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1631 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditH`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditH`;
CREATE TABLE `tblFileLoanAuditH` (
  `LAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `freePreScreen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loanAuditStatus` enum('New Submission','Free Analysis Complete','Pending Review','Incomplete-See Notes','Complete','Invoiced','Auditing') NOT NULL,
  `fraudLevel` enum('','0','1','2','3') NOT NULL DEFAULT '',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recordDate` datetime DEFAULT NULL,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','Auditor','Employee','Branch','Agent') NOT NULL,
  `QWRStatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `QWRDate` date DEFAULT NULL,
  `price` varchar(30) NOT NULL DEFAULT '',
  `paymentStatus` enum('Payment Due','Paid','Delinquent') DEFAULT 'Payment Due',
  PRIMARY KEY (`LAID`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditNotes`;
CREATE TABLE `tblFileLoanAuditNotes` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `notes` longtext,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Super','Auditor','Employee','Branch','Agent') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sendTo` longtext,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLoanAuditNotes_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileLoanAuditNotes_ibfk_2` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2443 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditProduct`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditProduct`;
CREATE TABLE `tblFileLoanAuditProduct` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LAID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `PID` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `LAID` (`LAID`),
  CONSTRAINT `tblFileLoanAuditProduct_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileLoanAuditProduct_ibfk_2` FOREIGN KEY (`LAID`) REFERENCES `tblFileLoanAudit` (`LAID`)
) ENGINE=InnoDB AUTO_INCREMENT=909 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanAuditProductH`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanAuditProductH`;
CREATE TABLE `tblFileLoanAuditProductH` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LAID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `PID` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=662 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanOrigination`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanOrigination`;
CREATE TABLE `tblFileLoanOrigination` (
  `LOID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `borYearsOfSchool` int(11) NOT NULL,
  `dependentsNotListed` int(11) NOT NULL,
  `dependentsAges` varchar(25) NOT NULL,
  `borNoOfYrAtMailingAddr` int(11) NOT NULL,
  `borResidedPresentAddr` varchar(5) NOT NULL DEFAULT 'NA',
  `borNoOfYrAtPrevAddr` int(11) NOT NULL,
  `coBYearsOfSchool` int(11) NOT NULL,
  `coBNoOfYrAtMailingAddr` int(11) NOT NULL,
  `coBResidedPresentAddr` varchar(5) NOT NULL DEFAULT 'NA',
  `coBNoOfYrAtPrevAddr` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LOID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileLoanOrigination_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2239 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLoanServicing`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanServicing`;
CREATE TABLE `tblFileLoanServicing` (
  `LSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `servicerLoanNo` varchar(75) DEFAULT NULL,
  `lienPos` int(10) DEFAULT NULL,
  `isSecondLien` tinyint(1) NOT NULL DEFAULT '0',
  `nextDueDate` date DEFAULT NULL,
  `lastContactDate` date DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','','CFPB Auditor','Super','Auditor Manager') DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `lastUpdatedDate` datetime DEFAULT NULL,
  `paymentDelinquent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`LSID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `tblFileLoanServicing_h` BEFORE UPDATE ON `tblFileLoanServicing` FOR EACH ROW BEGIN
        IF (old.fileID>0) THEN
            INSERT INTO tblFileLoanServicing_h (SELECT * FROM tblFileLoanServicing WHERE fileID = old.fileID);
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileLoanServicing_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLoanServicing_h`;
CREATE TABLE `tblFileLoanServicing_h` (
  `LSID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `servicerLoanNo` varchar(75) DEFAULT NULL,
  `lienPos` int(10) DEFAULT NULL,
  `isSecondLien` tinyint(1) NOT NULL DEFAULT '0',
  `nextDueDate` date DEFAULT NULL,
  `lastContactDate` date DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','','CFPB Auditor','Super','Auditor Manager') DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `lastUpdatedDate` datetime DEFAULT NULL,
  `paymentDelinquent` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileLock`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileLock`;
CREATE TABLE `tblFileLock` (
  `LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `lockedUID` int(11) NOT NULL,
  `lockedTime` datetime NOT NULL,
  `lockedUserRole` varchar(20) DEFAULT NULL,
  `lockedBy` varchar(30) DEFAULT NULL,
  `releaseUID` int(11) DEFAULT NULL,
  `releaseTime` datetime DEFAULT NULL,
  `releaseUserRole` varchar(20) DEFAULT NULL,
  `releasedBy` varchar(30) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Equals 1 if locked and 0 if released',
  PRIMARY KEY (`LID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblFileLock_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileMFLoanTerms`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileMFLoanTerms`;
CREATE TABLE `tblFileMFLoanTerms` (
  `LTID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `lenderName` varchar(75) DEFAULT NULL,
  `applnSubDate` date DEFAULT NULL,
  `loanType` varchar(70) DEFAULT NULL,
  `approvedLoanAmt` float(15,2) DEFAULT NULL,
  `loanTerms` varchar(50) DEFAULT NULL,
  `applnStatus` varchar(50) DEFAULT NULL,
  `interestRate` float(15,2) DEFAULT NULL,
  `PRPurchase` float(15,2) DEFAULT NULL,
  `PRPurchaseMonths` varchar(10) DEFAULT NULL,
  `prePaymentPenalty` varchar(50) DEFAULT NULL,
  `PRBalance` float(15,2) DEFAULT NULL,
  `PRBalanceMonths` varchar(10) DEFAULT NULL,
  `monthlyPayment` float(15,2) DEFAULT NULL,
  `originationFee` float(15,2) DEFAULT NULL,
  `LTNotes` text,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `creditLineType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LTID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileMFLoanTerms_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3987 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileMerchantFunding`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileMerchantFunding`;
CREATE TABLE `tblFileMerchantFunding` (
  `MFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `majorityBusiness` varchar(5) NOT NULL,
  `ownersName` varchar(100) NOT NULL,
  `Owned` int(11) NOT NULL,
  `businessName` varchar(100) NOT NULL,
  `businessNameDBA` varchar(100) NOT NULL,
  `businessLegalName` varchar(100) NOT NULL,
  `businessTax` varchar(50) NOT NULL,
  `businessType` varchar(50) NOT NULL,
  `Website` varchar(100) NOT NULL,
  `Industry` varchar(100) NOT NULL,
  `businessConsumers` varchar(5) NOT NULL,
  `monthsBusiness` int(11) NOT NULL,
  `monthlyRevenue` int(11) NOT NULL,
  `creditScore` int(11) NOT NULL,
  `grossRevenue` int(11) NOT NULL,
  `monthlyDepositVolume` int(11) NOT NULL,
  `bankBalance` int(11) NOT NULL,
  `invoices` varchar(5) NOT NULL,
  `invoiceAmount` int(11) NOT NULL,
  `requestedAmount` int(11) NOT NULL,
  `requestedTermLength` int(11) NOT NULL,
  `funding` varchar(50) NOT NULL,
  `businessCreditCards` varchar(5) NOT NULL,
  `businessFinancing` varchar(5) NOT NULL,
  `netProfit` varchar(5) NOT NULL,
  `amount` int(11) NOT NULL,
  `ownCollateral` varchar(5) NOT NULL,
  `monthlyDebtPayments` int(11) NOT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MFID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileMerchantFunding_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileModules`;
CREATE TABLE `tblFileModules` (
  `FMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`FMID`),
  KEY `FMID` (`FMID`),
  KEY `fileID` (`fileID`),
  KEY `moduleCode` (`moduleCode`),
  CONSTRAINT `tblFileModules_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=3476626 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `fileModules_h` BEFORE DELETE ON `tblFileModules` FOR EACH ROW BEGIN
        IF (OLD.FMID>0) THEN
            INSERT INTO tblFileModules_h (SELECT * FROM tblFileModules WHERE FMID = OLD.FMID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileModules_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileModules_h`;
CREATE TABLE `tblFileModules_h` (
  `FMID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileOtherWorkInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileOtherWorkInfo`;
CREATE TABLE `tblFileOtherWorkInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `contingencyNotes` varchar(250) NOT NULL DEFAULT '',
  `contingencySqft` decimal(10,3) DEFAULT '0.000',
  `contingencyQuantity` int(10) DEFAULT NULL,
  `contingencyRate` decimal(10,3) DEFAULT '0.000',
  `GCFeeNotes` varchar(250) NOT NULL DEFAULT '',
  `GCFeeSqft` decimal(10,3) DEFAULT '0.000',
  `GCFeeQuantity` int(10) DEFAULT NULL,
  `GCFeeRate` decimal(10,3) DEFAULT '0.000',
  `cleanupNotes` varchar(250) NOT NULL DEFAULT '',
  `cleanupSqft` decimal(10,3) DEFAULT '0.000',
  `cleanupQuantity` int(10) DEFAULT NULL,
  `cleanupRate` decimal(10,3) DEFAULT '0.000',
  `otherNotes` varchar(250) NOT NULL DEFAULT '',
  `otherSqft` decimal(10,3) DEFAULT '0.000',
  `otherQuantity` int(10) DEFAULT NULL,
  `otherRate` decimal(10,3) DEFAULT '0.000',
  `contingencyEstCost` decimal(13,2) DEFAULT NULL,
  `contingencyActCost` decimal(13,2) DEFAULT NULL,
  `GCFeeEstCost` decimal(13,2) DEFAULT NULL,
  `GCFeeActCost` decimal(13,2) DEFAULT NULL,
  `cleanupEstCost` decimal(13,2) DEFAULT NULL,
  `cleanupActCost` decimal(13,2) DEFAULT NULL,
  `otherEstCost` decimal(13,2) DEFAULT NULL,
  `otherActCost` decimal(13,2) DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileOtherWorkInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFilePayee`
-- ----------------------------
DROP TABLE IF EXISTS `tblFilePayee`;
CREATE TABLE `tblFilePayee` (
  `PID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `payeeName` varchar(45) DEFAULT NULL,
  `payeeEmail` varchar(75) DEFAULT NULL,
  `payeePhoneNo` varchar(30) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `clientOptedIn` varchar(5) NOT NULL DEFAULT 'NA',
  `draftInterval` varchar(30) NOT NULL DEFAULT '',
  `monthlyMaintDonation` varchar(30) NOT NULL DEFAULT '',
  `monthlyRecurringDraftDay` varchar(30) NOT NULL DEFAULT '',
  `initialDraftDate` date DEFAULT NULL,
  `payeeDateOfBirth` date DEFAULT NULL,
  `payeeSSN` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFilePayee_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=25993 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFilePreliminaryWorkInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFilePreliminaryWorkInfo`;
CREATE TABLE `tblFilePreliminaryWorkInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `demoNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `demoSqft` decimal(10,3) DEFAULT '0.000',
  `demoQuantity` int(10) DEFAULT NULL,
  `demoRate` decimal(10,3) DEFAULT '0.000',
  `architecturalFeesNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `architecturalFeesSqft` decimal(10,3) DEFAULT '0.000',
  `architecturalFeesQuantity` int(10) DEFAULT NULL,
  `architecturalFeesRate` decimal(10,3) DEFAULT '0.000',
  `masterBuildingPermitNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `masterBuildingPermitSqft` decimal(10,3) DEFAULT '0.000',
  `masterBuildingPermitQuantity` int(10) DEFAULT NULL,
  `masterBuildingPermitRate` decimal(10,3) DEFAULT '0.000',
  `tradePermitsNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `tradePermitsSqft` decimal(10,3) DEFAULT '0.000',
  `tradePermitsQuantity` int(10) DEFAULT NULL,
  `tradePermitsRate` decimal(10,3) DEFAULT '0.000',
  `plumpingNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `plumpingSqft` decimal(10,3) DEFAULT '0.000',
  `plumpingQuantity` int(10) DEFAULT NULL,
  `plumpingRate` decimal(10,3) DEFAULT '0.000',
  `electricalNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `electricalSqft` decimal(10,3) DEFAULT '0.000',
  `electricalQuantity` int(10) DEFAULT NULL,
  `electricalRate` decimal(10,3) DEFAULT '0.000',
  `HVACNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `HVACSqft` decimal(10,3) DEFAULT '0.000',
  `HVACQuantity` int(10) DEFAULT NULL,
  `HVACRate` decimal(10,3) DEFAULT '0.000',
  `dumpsterNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dumpsterSqft` decimal(10,3) DEFAULT '0.000',
  `dumpsterQuantity` int(10) DEFAULT NULL,
  `dumpsterRate` decimal(10,3) DEFAULT '0.000',
  `otherPreliminaryWorkNotes` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `otherPreliminaryWorkSqft` decimal(10,3) DEFAULT '0.000',
  `otherPreliminaryWorkQuantity` int(10) DEFAULT NULL,
  `otherPreliminaryWorkRate` decimal(10,3) DEFAULT '0.000',
  `demoEstCost` decimal(13,2) DEFAULT NULL,
  `demoActCost` decimal(13,2) DEFAULT NULL,
  `architecturalFeesEstCost` decimal(13,2) DEFAULT NULL,
  `architecturalFeesActCost` decimal(13,2) DEFAULT NULL,
  `masterBuildingPermitEstCost` decimal(13,2) DEFAULT NULL,
  `masterBuildingPermitActCost` decimal(13,2) DEFAULT NULL,
  `tradePermitsEstCost` decimal(13,2) DEFAULT NULL,
  `tradePermitsActCost` decimal(13,2) DEFAULT NULL,
  `plumpingEstCost` decimal(13,2) DEFAULT NULL,
  `plumpingActCost` decimal(13,2) DEFAULT NULL,
  `electricalEstCost` decimal(13,2) DEFAULT NULL,
  `electricalActCost` decimal(13,2) DEFAULT NULL,
  `HVACEstCost` decimal(13,2) DEFAULT NULL,
  `HVACActCost` decimal(13,2) DEFAULT NULL,
  `dumpsterEstCost` decimal(13,2) DEFAULT NULL,
  `dumpsterActCost` decimal(13,2) DEFAULT NULL,
  `otherPreliminaryEstCost` decimal(13,2) DEFAULT NULL,
  `otherPreliminaryActCost` decimal(13,2) DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFilePropertyInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFilePropertyInfo`;
CREATE TABLE `tblFilePropertyInfo` (
  `FPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `municipality` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `schoolDistrict` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `propertyURLLink1` longtext CHARACTER SET latin1,
  `propertyURLLink2` longtext CHARACTER SET latin1,
  `parcelNo` varchar(50) DEFAULT NULL,
  `lockbox` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `taxYear` varchar(6) CHARACTER SET latin1 DEFAULT '',
  `legalDescription` longtext CHARACTER SET latin1,
  `propertySqFt` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `yearBuilt` varchar(6) CHARACTER SET latin1 DEFAULT '',
  `waterFront` varchar(20) CHARACTER SET latin1 DEFAULT '0',
  `acres` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `propertyFeatures` varchar(250) CHARACTER SET latin1 DEFAULT '',
  `occupancyNotes` varchar(250) CHARACTER SET latin1 DEFAULT '',
  `propertyCondition` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `conditionNotes` varchar(250) CHARACTER SET latin1 DEFAULT '',
  `titleName` varchar(105) DEFAULT NULL,
  `titleOrderedOn` date DEFAULT NULL,
  `titleUpdatedOn` date DEFAULT NULL,
  `titleOfHome` varchar(200) NOT NULL DEFAULT '',
  `adjustedSqFt` varchar(20) NOT NULL DEFAULT '',
  `LBInfo` varchar(75) DEFAULT NULL,
  `LBContactName` varchar(75) DEFAULT NULL,
  `isHouseProperty` varchar(75) DEFAULT NULL,
  `propConstructionType` varchar(75) DEFAULT NULL,
  `LBContactPhone` varchar(20) DEFAULT NULL,
  `titleEscrowNo` varchar(25) DEFAULT NULL,
  `titleSeller` varchar(75) DEFAULT NULL,
  `titleReportDate` date DEFAULT NULL,
  `annualPropTaxes1` varchar(30) DEFAULT NULL,
  `presentOccupancy` varchar(75) DEFAULT NULL,
  `LBContactEmail` varchar(75) NOT NULL,
  `titleOrderNumber` varchar(15) DEFAULT NULL,
  `escrowOfficer` varchar(75) DEFAULT NULL,
  `HMLOmlsnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`FPID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblFilePropertyInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=107028 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFilePropertyInfo2`
-- ----------------------------
DROP TABLE IF EXISTS `tblFilePropertyInfo2`;
CREATE TABLE `tblFilePropertyInfo2` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `principalResServicer1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `principalResPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `principalResMortPaid` varchar(5) CHARACTER SET latin1 DEFAULT '0',
  `principalPastDueMonths` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `deleted` tinyint(4) DEFAULT '0',
  `deletedBy` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `deletedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblFilePropertyInfo2_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=10675 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileRAMClientInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileRAMClientInfo`;
CREATE TABLE `tblFileRAMClientInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `vendorID` varchar(70) NOT NULL DEFAULT '',
  `updated` tinyint(1) NOT NULL DEFAULT '0',
  `uploadedDocID` int(10) NOT NULL,
  `ramDocID` int(10) NOT NULL,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `ACHStatus` enum('1','6','21','') DEFAULT '' COMMENT '1 is Active, 6 is Cancelled, 21 is On Hold.',
  `accountStatus` enum('0','99','98','') DEFAULT '' COMMENT '0 for Active, 99 for On Hold (return), \r\n                                                                                and 98 for On Hold (request)',
  `accountType` enum('','NOT_SET','CONSUMER_DEBIT_SAVINGS','CONSUMER_DEBIT_CHECKING','ACH','CREDIT_SAVINGS','CREDIT_CHECKING') DEFAULT '',
  `assignedAffiliateID` int(10) NOT NULL,
  `assignedProgramID` int(10) NOT NULL,
  `RAMClientStatus` varchar(5) NOT NULL DEFAULT '',
  `RAMClientEmail` varchar(100) NOT NULL DEFAULT '',
  `RAMClientPwd` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileRAMClientInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `updateRAMClient_h` BEFORE UPDATE ON `tblFileRAMClientInfo` FOR EACH ROW BEGIN
        IF (old.SID>0) THEN
            INSERT INTO tblFileRAMClientInfo_h (SELECT * FROM tblFileRAMClientInfo WHERE SID = old.SID);
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileRAMClientInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileRAMClientInfo_h`;
CREATE TABLE `tblFileRAMClientInfo_h` (
  `SID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `vendorID` varchar(70) NOT NULL DEFAULT '',
  `updated` tinyint(1) NOT NULL DEFAULT '0',
  `uploadedDocID` int(10) NOT NULL,
  `ramDocID` int(10) NOT NULL,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `ACHStatus` enum('','1','6','21') DEFAULT '' COMMENT '1 is Active, 6 is Cancelled, 21 is On Hold',
  `accountStatus` enum('','0','99','98') DEFAULT '' COMMENT '0 for Active, 99 for On Hold (return), \r\n                                                                                and 98 for On Hold (request)',
  `accountType` enum('','NOT_SET','CONSUMER_DEBIT_SAVINGS','CONSUMER_DEBIT_CHECKING','ACH','CREDIT_SAVINGS','CREDIT_CHECKING') DEFAULT '',
  `assignedAffiliateID` int(10) NOT NULL,
  `assignedProgramID` int(10) NOT NULL,
  `RAMClientStatus` varchar(5) NOT NULL DEFAULT '',
  `RAMClientEmail` varchar(100) NOT NULL DEFAULT '',
  `RAMClientPwd` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileRAMPaymentInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileRAMPaymentInfo`;
CREATE TABLE `tblFileRAMPaymentInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `feeCode` int(11) NOT NULL COMMENT '76 - Monthly Recurring Fee, 75 - Retainer Fee',
  `paymentAmt` float NOT NULL DEFAULT '0',
  `PCFee` float NOT NULL DEFAULT '0',
  `attorneyFee` float NOT NULL DEFAULT '0',
  `fee4` float NOT NULL DEFAULT '0',
  `affiliateFee` float NOT NULL DEFAULT '0',
  `fee5` float NOT NULL DEFAULT '0',
  `fee6` float NOT NULL DEFAULT '0',
  `fee7` float NOT NULL DEFAULT '0',
  `bankFee` float NOT NULL DEFAULT '0',
  `phase` int(11) NOT NULL,
  `dateOwed` date NOT NULL,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activestatus` tinyint(1) NOT NULL DEFAULT '1',
  `schedDate` varchar(100) NOT NULL DEFAULT '',
  `RAMFee` float NOT NULL DEFAULT '0' COMMENT 'RAM Fee',
  `PID` int(11) NOT NULL DEFAULT '0' COMMENT 'RAM Payment ID - Unique',
  `paymentStatus` varchar(20) NOT NULL DEFAULT '',
  `remarks` longtext,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileRAMPaymentInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `updateRAMPayment_h` BEFORE UPDATE ON `tblFileRAMPaymentInfo` FOR EACH ROW BEGIN
        IF (old.SID>0) THEN
            INSERT INTO tblFileRAMPaymentInfo_h (SELECT * FROM tblFileRAMPaymentInfo WHERE SID = old.SID);
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileRAMPaymentInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileRAMPaymentInfo_h`;
CREATE TABLE `tblFileRAMPaymentInfo_h` (
  `SID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `feeCode` int(11) NOT NULL COMMENT '76 - Monthly Recurring Fee, 75 - Retainer Fee',
  `paymentAmt` float NOT NULL DEFAULT '0',
  `PCFee` float NOT NULL DEFAULT '0',
  `attorneyFee` float NOT NULL DEFAULT '0',
  `fee4` float NOT NULL DEFAULT '0',
  `affiliateFee` float NOT NULL DEFAULT '0',
  `fee5` float NOT NULL DEFAULT '0',
  `fee6` float NOT NULL DEFAULT '0',
  `fee7` float NOT NULL DEFAULT '0',
  `bankFee` float NOT NULL DEFAULT '0',
  `phase` int(11) NOT NULL,
  `dateOwed` date NOT NULL,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activestatus` tinyint(1) NOT NULL DEFAULT '1',
  `schedDate` varchar(100) NOT NULL DEFAULT '',
  `RAMFee` float NOT NULL DEFAULT '0' COMMENT 'RAM Fee',
  `PID` int(11) NOT NULL DEFAULT '0' COMMENT 'RAM Payment ID - Unique',
  `paymentStatus` varchar(20) NOT NULL DEFAULT '',
  `remarks` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileRAMVendorInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileRAMVendorInfo`;
CREATE TABLE `tblFileRAMVendorInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `vendorID` varchar(70) NOT NULL DEFAULT '',
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `updateFileRAMVendor` BEFORE UPDATE ON `tblFileRAMVendorInfo` FOR EACH ROW BEGIN
        IF (NEW.fileID>0) THEN
            UPDATE tblFileVendorClient SET activeStatus = 0 WHERE activeStatus = 1 AND fileID = new.fileID;
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileResponse`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileResponse`;
CREATE TABLE `tblFileResponse` (
  `LMRResponseId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `LMRExecutive` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `LMRResponseStatus` varchar(50) CHARACTER SET latin1 DEFAULT 'New',
  `lates1Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates2Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates3Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `executiveEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `executiveNotes` blob,
  `lastUpdatedDate` datetime DEFAULT NULL,
  `signExecutiveName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `LMRProcessorStatus` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `processorId` int(11) DEFAULT '0',
  `QCId` int(11) DEFAULT '0',
  `negotiatorId` int(11) DEFAULT '0',
  `fileNumber` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `executiveId` int(11) DEFAULT '0',
  `leadSource` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `closedBy` int(11) DEFAULT '0',
  `closedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fileClosedDate` datetime DEFAULT NULL,
  `approvedBy` int(11) DEFAULT '0',
  `approvedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `approvedDate` datetime DEFAULT NULL,
  `priorityLevel` enum('high','medium','low','') CHARACTER SET latin1 DEFAULT '',
  `attorneyId` int(11) DEFAULT '0',
  `managerId` int(11) DEFAULT '0',
  `trialModReceivedDate` date DEFAULT NULL,
  `firstTrialPaymentDate` date DEFAULT NULL,
  `primeStatusId` int(11) DEFAULT '0',
  `borrowerCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderSubmissionDate` date DEFAULT NULL,
  `resolutionType` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `closedDisposition` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `borrowerCallBack_del` varchar(25) DEFAULT '',
  `lenderCallBack_del` varchar(25) DEFAULT '',
  `lawSuiteFileDate` date DEFAULT NULL,
  `HAFADate` date DEFAULT NULL,
  `appealDate` date DEFAULT NULL,
  `welcomeCallDate` date DEFAULT NULL,
  `bankCallCompleted` date NOT NULL DEFAULT '0000-00-00',
  `attorneyReviewDate` date DEFAULT NULL,
  `trialPaymentDate1` date DEFAULT NULL,
  `trialPaymentDate2` date DEFAULT NULL,
  `trialPaymentDate3` date DEFAULT NULL,
  `firstModPaymentAmt` varchar(30) NOT NULL DEFAULT '',
  `retainerDate` date DEFAULT NULL,
  `escalationDate` date DEFAULT NULL,
  `denialDate` date DEFAULT NULL,
  `totalCallsPlaced` int(10) DEFAULT '0',
  `ANINo` varchar(25) NOT NULL,
  `screenerName` varchar(50) NOT NULL,
  `projectName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`LMRResponseId`),
  UNIQUE KEY `LMRId` (`LMRId`),
  KEY `executiveId` (`executiveId`),
  KEY `primeStatusId` (`primeStatusId`),
  KEY `activeStatus` (`activeStatus`),
  KEY `lastUpdatedDate` (`lastUpdatedDate`),
  KEY `activeStatus_2` (`activeStatus`,`primeStatusId`,`LMRId`),
  KEY `borrowerCallBack` (`borrowerCallBack`),
  KEY `lenderCallBack` (`lenderCallBack`),
  KEY `LMRId_2` (`LMRId`),
  CONSTRAINT `tblFileResponse_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8839812 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `before_tblFileResponse_updateHistory` BEFORE UPDATE ON `tblFileResponse` FOR EACH ROW BEGIN
        IF (NEW.LMRId>0) THEN
		   IF ((new.appealDate <> old.appealDate) AND ( new.appealDate >= CURDATE())) THEN
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'appealDate' AND reminded = 1;
		   ELSEIF ((new.borrowerCallBack <> old.borrowerCallBack) AND ( new.borrowerCallBack >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'borrowerCallBackDate' AND reminded = 1;
		   ELSEIF ((new.HAFADate <> old.HAFADate) AND ( new.HAFADate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'HAFADate' AND reminded = 1;
		   ELSEIF ((new.HAFADate <> old.HAFADate) AND ( new.HAFADate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'HAFADate' AND reminded = 1;
		   ELSEIF ((new.lenderCallBack <> old.lenderCallBack) AND ( new.lenderCallBack >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'lenderCallBackDate' AND reminded = 1;
		   ELSEIF ((new.lenderSubmissionDate <> old.lenderSubmissionDate) AND ( new.lenderSubmissionDate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'lenderSubmissionDate' AND reminded = 1;
		   ELSEIF ((new.trialModReceivedDate <> old.trialModReceivedDate) AND ( new.trialModReceivedDate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'dateModReceived' AND reminded = 1;
		   ELSEIF ((new.firstTrialPaymentDate <> old.firstTrialPaymentDate) AND ( new.firstTrialPaymentDate >= CURDATE())) THEN 
				UPDATE tblLMRWorkflowSteps t1, tblFileWorkflowStepsEvents t2, tblPCWorkflowEvent t3 SET reminded = 0 WHERE t1.LMRID = t2.fileID AND t1.WFSID = t2.WFSID AND t2.WFEID = t3.WEID AND t1.LMRID = NEW.LMRId AND t3.referralDate = 'dateModPayment' AND reminded = 1;																									   				
		   END IF; 		
            INSERT INTO tblFileResponse_h (SELECT * FROM tblFileResponse WHERE LMRId = NEW.LMRId);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileResponse_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileResponse_h`;
CREATE TABLE `tblFileResponse_h` (
  `LMRResponseId` int(10) unsigned NOT NULL,
  `LMRId` int(10) unsigned NOT NULL,
  `LMRExecutive` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `LMRResponseStatus` varchar(50) CHARACTER SET latin1 DEFAULT 'New',
  `lates1Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates2Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lates3Eligibility` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `executiveEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `executiveNotes` blob,
  `lastUpdatedDate` datetime DEFAULT NULL,
  `signExecutiveName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `LMRProcessorStatus` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `processorId` int(11) DEFAULT '0',
  `QCId` int(11) DEFAULT '0',
  `negotiatorId` int(11) DEFAULT '0',
  `fileNumber` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `executiveId` int(11) DEFAULT '0',
  `leadSource` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `closedBy` int(11) DEFAULT '0',
  `closedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fileClosedDate` datetime DEFAULT NULL,
  `approvedBy` int(11) DEFAULT '0',
  `approvedByUserType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `approvedDate` datetime DEFAULT NULL,
  `priorityLevel` enum('high','medium','low','') CHARACTER SET latin1 DEFAULT '',
  `attorneyId` int(11) DEFAULT '0',
  `managerId` int(11) DEFAULT '0',
  `trialModReceivedDate` date DEFAULT NULL,
  `firstTrialPaymentDate` date DEFAULT NULL,
  `primeStatusId` int(11) DEFAULT '0',
  `borrowerCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderSubmissionDate` date DEFAULT NULL,
  `resolutionType` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `closedDisposition` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `borrowerCallBack_del` varchar(25) DEFAULT '',
  `lenderCallBack_del` varchar(25) DEFAULT '',
  `lawSuiteFileDate` date DEFAULT NULL,
  `HAFADate` date DEFAULT NULL,
  `appealDate` date DEFAULT NULL,
  `welcomeCallDate` date DEFAULT NULL,
  `bankCallCompleted` date NOT NULL DEFAULT '0000-00-00',
  `attorneyReviewDate` date DEFAULT NULL,
  `trialPaymentDate1` date DEFAULT NULL,
  `trialPaymentDate2` date DEFAULT NULL,
  `trialPaymentDate3` date DEFAULT NULL,
  `firstModPaymentAmt` varchar(30) NOT NULL DEFAULT '',
  `retainerDate` date DEFAULT NULL,
  `escalationDate` date DEFAULT NULL,
  `denialDate` date DEFAULT NULL,
  `totalCallsPlaced` int(10) DEFAULT '0',
  `ANINo` varchar(25) NOT NULL,
  `screenerName` varchar(50) NOT NULL,
  `projectName` varchar(75) DEFAULT NULL,
  KEY `executiveId` (`executiveId`),
  KEY `primeStatusId` (`primeStatusId`),
  KEY `activeStatus` (`activeStatus`),
  KEY `lastUpdatedDate` (`lastUpdatedDate`),
  KEY `activeStatus_2` (`activeStatus`,`primeStatusId`,`LMRId`),
  KEY `borrowerCallBack` (`borrowerCallBack`),
  KEY `lenderCallBack` (`lenderCallBack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileSecondaryWFStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileSecondaryWFStatus`;
CREATE TABLE `tblFileSecondaryWFStatus` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `WFID` int(10) unsigned NOT NULL,
  `WFSID` int(11) NOT NULL,
  `dStatus` tinyint(1) NOT NULL DEFAULT '0',
  `UID` int(10) unsigned NOT NULL,
  `UType` varchar(25) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `WFID` (`WFID`),
  KEY `WFSID` (`WFSID`),
  CONSTRAINT `tblFileSecondaryWFStatus_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileSecondaryWFStatus_ibfk_2` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`),
  CONSTRAINT `tblFileSecondaryWFStatus_ibfk_3` FOREIGN KEY (`WFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileSubstatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileSubstatus`;
CREATE TABLE `tblFileSubstatus` (
  `LFSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRRespId` int(11) DEFAULT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `substatusId_old` int(11) DEFAULT NULL,
  `fStatus` tinyint(4) DEFAULT '1',
  `substatusId` int(11) DEFAULT NULL,
  `tempPCID` int(11) DEFAULT NULL,
  `UID` int(11) DEFAULT '0',
  `URole` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `dateChecked` datetime DEFAULT NULL,
  `dateUnchecked` datetime DEFAULT NULL,
  `notes` longtext,
  PRIMARY KEY (`LFSID`),
  KEY `fileID` (`fileID`),
  KEY `substatusId_old` (`substatusId_old`),
  CONSTRAINT `tblFileSubstatus_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3162010 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileTabs`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileTabs`;
CREATE TABLE `tblFileTabs` (
  `FTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tabName` varchar(50) NOT NULL,
  `tabAbbr` varchar(50) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `isPublic` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`FTID`),
  UNIQUE KEY `tabName` (`tabName`),
  KEY `tabName_2` (`tabName`),
  KEY `isPublic` (`isPublic`),
  KEY `displayOrder` (`displayOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileTabsUsers`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileTabsUsers`;
CREATE TABLE `tblFileTabsUsers` (
  `PFUID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tabName` varchar(50) NOT NULL,
  `userGroup` enum('Employee','Agent','Branch','Client','Auditor','CFPB Auditor','Auditor Manager','Super') DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PFUID`),
  KEY `userGroup` (`userGroup`),
  KEY `tabName` (`tabName`),
  CONSTRAINT `tblFileTabsUsers_ibfk_1` FOREIGN KEY (`tabName`) REFERENCES `tblFileTabs` (`tabName`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileUpdateAudit`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileUpdateAudit`;
CREATE TABLE `tblFileUpdateAudit` (
  `FUAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') NOT NULL,
  `recordDate` datetime NOT NULL,
  `FAction` enum('C','U') NOT NULL,
  `tabName` varchar(100) NOT NULL,
  PRIMARY KEY (`FUAID`),
  KEY `fileID` (`fileID`),
  KEY `fileID_2` (`fileID`,`UID`,`UType`),
  KEY `UID` (`UID`,`UType`),
  CONSTRAINT `tblFileUpdateAudit_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1818639 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileUpdatedDate`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileUpdatedDate`;
CREATE TABLE `tblFileUpdatedDate` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `lastUpdatedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  UNIQUE KEY `fileID` (`fileID`),
  CONSTRAINT `tblFileUpdatedDate_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5597360 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `fileUpdatedDateHistory` BEFORE UPDATE ON `tblFileUpdatedDate` FOR EACH ROW BEGIN
       IF (NEW.fileID>0) THEN
           INSERT INTO tblFileUpdatedDate_h (SELECT * FROM tblFileUpdatedDate WHERE fileID = NEW.fileID);
       END IF;
   END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblFileUpdatedDate_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileUpdatedDate_h`;
CREATE TABLE `tblFileUpdatedDate_h` (
  `SID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `lastUpdatedDate` datetime DEFAULT NULL,
  KEY `fileID` (`fileID`),
  KEY `lastUpdatedDate` (`lastUpdatedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileUsers`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileUsers`;
CREATE TABLE `tblFileUsers` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `UID` int(11) DEFAULT '0',
  `URole` enum('Employee','') NOT NULL DEFAULT '',
  `dateAssigned` datetime DEFAULT NULL,
  `dateRemoved` datetime DEFAULT NULL,
  `assignedByUID` int(11) DEFAULT '0',
  `assignedByURole` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `removedByUID` int(11) DEFAULT '0',
  `removedByURole` varchar(10) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `UID` (`UID`,`URole`,`fileID`,`dateRemoved`),
  KEY `fileID_2` (`fileID`,`UID`,`URole`),
  KEY `dateRemoved` (`dateRemoved`,`URole`,`UID`,`fileID`),
  CONSTRAINT `tblFileUsers_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=904995 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileVendorClient`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileVendorClient`;
CREATE TABLE `tblFileVendorClient` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `vendorID` varchar(70) NOT NULL DEFAULT '',
  `updated` tinyint(1) NOT NULL DEFAULT '0',
  `uploadedDocID` int(10) NOT NULL,
  `ramDocID` int(10) NOT NULL,
  `UID` int(10) NOT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `accountStatus` enum('1','6','21','') DEFAULT '',
  `ACHStatus` enum('0','99','98','') DEFAULT '',
  `accountType` enum('','NOT_SET','CONSUMER_DEBIT_SAVINGS','CONSUMER_DEBIT_CHECKING','ACH','CREDIT_SAVINGS','CREDIT_CHECKING') DEFAULT '',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileWorkflowStepsEvents`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileWorkflowStepsEvents`;
CREATE TABLE `tblFileWorkflowStepsEvents` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `WFID` int(10) unsigned NOT NULL,
  `WFSID` int(10) NOT NULL,
  `WFEID` int(10) unsigned NOT NULL,
  `status` enum('Completed','Not applicable','Not Started','In Progress') NOT NULL DEFAULT 'Not Started',
  `reminded` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `WFID` (`WFID`),
  KEY `WFSID` (`WFSID`),
  KEY `WFEID` (`WFEID`),
  CONSTRAINT `tblFileWorkflowStepsEvents_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblFileWorkflowStepsEvents_ibfk_2` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`),
  CONSTRAINT `tblFileWorkflowStepsEvents_ibfk_3` FOREIGN KEY (`WFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`),
  CONSTRAINT `tblFileWorkflowStepsEvents_ibfk_4` FOREIGN KEY (`WFEID`) REFERENCES `tblPCWorkflowEvent` (`WEID`)
) ENGINE=InnoDB AUTO_INCREMENT=80880 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFileWorkflowStepsEventsH`
-- ----------------------------
DROP TABLE IF EXISTS `tblFileWorkflowStepsEventsH`;
CREATE TABLE `tblFileWorkflowStepsEventsH` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `WFID` int(10) unsigned NOT NULL,
  `WFSID` int(10) NOT NULL,
  `WFEID` int(10) unsigned NOT NULL,
  `status` enum('Completed','Not applicable','Not Started','In Progress') NOT NULL DEFAULT 'Not Started',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=15449 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFile_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblFile_h`;
CREATE TABLE `tblFile_h` (
  `LMRId` int(10) unsigned NOT NULL,
  `brokerNumber` int(10) unsigned NOT NULL,
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0',
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `borrowerName` varchar(60) DEFAULT NULL,
  `occupancy` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerLoanRate` varchar(11) NOT NULL DEFAULT '',
  `loanType` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `adjustableDate` date DEFAULT NULL,
  `mortgageLates` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'NA',
  `lates1` float NOT NULL DEFAULT '0',
  `lates2` float NOT NULL DEFAULT '0',
  `lates3` float NOT NULL DEFAULT '0',
  `lates4` float NOT NULL DEFAULT '0',
  `lien1Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer3` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `homeValue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerMonthlyIncome` float NOT NULL DEFAULT '0',
  `description` blob,
  `doneLMR` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recordDate` date DEFAULT NULL,
  `doneAdjustableRate` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `initialRate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `totalMonthlyExpenses` float NOT NULL DEFAULT '0',
  `borrowerLName` varchar(70) DEFAULT NULL,
  `propertyAddress` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerFName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerLName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBCellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receivedDate` date DEFAULT NULL,
  `missedMonthOfMortPay` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `closedDate` date DEFAULT NULL,
  `loanNumber` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ssnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receiveNotice` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'No',
  `salesDate` date DEFAULT NULL,
  `negotiatorName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `negotiatorPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `negotiatorNotes` blob,
  `isCoBorrower` tinyint(4) NOT NULL DEFAULT '0',
  `coBLoanNumber` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBSsnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBFax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyCity` varchar(100) DEFAULT NULL,
  `propertyState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber2` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber3` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddressAsProp` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `monthsBehind` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receiveModification` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT 'NA',
  `receiveModificationNotes` blob,
  `userType` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `createdBy` int(11) DEFAULT NULL,
  `createdUserType` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `lien1BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien3BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyType` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanType2` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Terms` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Terms` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `checkingAndSavings` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `borrowerDOB` date DEFAULT NULL,
  `noOfPeopleInProperty` int(11) NOT NULL DEFAULT '0',
  `mortgageNotes` blob,
  `areTaxesInsuranceEscrowed` int(11) NOT NULL DEFAULT '0',
  `workNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerWorkNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_borrowerName` text,
  `enc_borrowerLName` text CHARACTER SET latin1,
  `enc_ssnNumber` text CHARACTER SET latin1,
  `enc_borrowerDOB` text CHARACTER SET latin1,
  `enc_loanNumber` text CHARACTER SET latin1,
  `enc_loanNumber2` text CHARACTER SET latin1,
  `enc_borrowerEmail` text CHARACTER SET latin1,
  `enc_propertyAddress` text CHARACTER SET latin1,
  `enc_propertyCity` text CHARACTER SET latin1,
  `enc_propertyState` text CHARACTER SET latin1,
  `enc_propertyZip` text CHARACTER SET latin1,
  `fileSubmissionStatus` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `altPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBAltPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `LMREmailSent` int(11) NOT NULL DEFAULT '0',
  `clientId` int(11) NOT NULL,
  `packageViewed` int(11) NOT NULL DEFAULT '0',
  `coBorrowerDOB` date DEFAULT NULL,
  `dummyId` varchar(50) NOT NULL DEFAULT '',
  `referralCode1_del` int(11) NOT NULL DEFAULT '0',
  `LMRAffiliateCode1_del` int(11) NOT NULL DEFAULT '0',
  `executiveId1_del` int(11) NOT NULL DEFAULT '0',
  `propertyCounty` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `maritalStatus` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `marriageDate` date DEFAULT NULL,
  `divorceDate` date DEFAULT NULL,
  `maidenName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingAddressAsBorrower` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `coBorrowerMailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `spouseName` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `leadID` int(11) NOT NULL DEFAULT '0',
  `noOfMonthsBehind1` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `noOfMonthsBehind2` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mortgageOwner1` int(11) NOT NULL DEFAULT '0',
  `mortgageOwner2` int(11) NOT NULL DEFAULT '0',
  `FAFeePaid` int(11) NOT NULL DEFAULT '0',
  `trueRetainerPayment1` float NOT NULL DEFAULT '0',
  `trueRetainerPayment2` float NOT NULL DEFAULT '0',
  `previousAddrAsMailing` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `previousAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `previousZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousAddrAsMailing` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `coBorPreviousAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorPreviousZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBedRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBathRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyHalfBathRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `basementHome` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `basementFinish` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `garageHome` varchar(6) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `dummyLeadSource_del` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `lastRefinanceDate` date DEFAULT NULL,
  `areInsuranceEscrowed` int(11) NOT NULL DEFAULT '0',
  `propertyCounty_old` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyLMRResponseStatus` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT 'Lead',
  `coBorrowerCounty` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `yearPurchased` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1LPMade` date DEFAULT NULL,
  `lien2LPMade` date DEFAULT NULL,
  `houseNo` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailinghouseNumber` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `REBrokerId` int(11) NOT NULL DEFAULT '0',
  `dummyFileNumber_del` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyBCallBack_del` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dummyLCallBack_del` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBMailinghouseNumber` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `encFieldUpdate` tinyint(4) NOT NULL DEFAULT '0',
  `serviceProvider` varchar(20) NOT NULL DEFAULT '',
  `borrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `coBorrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `mortgageInvestor1` int(11) DEFAULT NULL,
  `mortgageInvestor2` int(11) DEFAULT NULL,
  `mortgageOwner1_copy` int(11) DEFAULT NULL,
  `mortgageOwner2_copy` int(11) DEFAULT NULL,
  `coBServiceProvider` varchar(20) NOT NULL DEFAULT '',
  `lastUpdatedDate` datetime DEFAULT NULL,
  `updatedBy` varchar(25) DEFAULT NULL,
  `borrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `coBorrowerPinNo` varchar(7) NOT NULL DEFAULT '',
  `fileCopied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remainingMonths` int(11) DEFAULT '0',
  `oldFPCID` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `FBRID` (`FBRID`),
  KEY `FPCID` (`FPCID`),
  KEY `brokerNumber` (`brokerNumber`),
  KEY `ssnNumber` (`ssnNumber`),
  KEY `clientId` (`clientId`),
  KEY `borrowerName` (`borrowerName`),
  KEY `FBRID_2` (`FBRID`,`FPCID`),
  KEY `dummyId` (`dummyId`),
  KEY `borrowerEmail` (`borrowerEmail`),
  KEY `borrowerLName` (`borrowerLName`),
  KEY `activeStatus` (`activeStatus`),
  KEY `brokerNumber_2` (`brokerNumber`,`activeStatus`,`LMRId`),
  KEY `FBRID_3` (`FBRID`,`activeStatus`,`LMRId`),
  KEY `FPCID_2` (`FPCID`,`activeStatus`,`LMRId`),
  KEY `activeStatus_2` (`activeStatus`,`FPCID`),
  KEY `borrowerName_2` (`borrowerName`,`borrowerLName`),
  KEY `salesDate` (`salesDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFormFieldsMaster`
-- ----------------------------
DROP TABLE IF EXISTS `tblFormFieldsMaster`;
CREATE TABLE `tblFormFieldsMaster` (
  `fieldName` varchar(200) DEFAULT NULL,
  `fieldLabel` varchar(200) DEFAULT NULL,
  `sectionID` varchar(50) NOT NULL,
  `tabName` varchar(50) DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `fieldID` int(11) NOT NULL AUTO_INCREMENT,
  `displayOrder` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `toolTip` varchar(256) DEFAULT NULL,
  `QADefaultShow` binary(1) DEFAULT '1',
  `FADefaultShow` binary(1) DEFAULT '1',
  `QADefaultMandatory` binary(1) DEFAULT '1',
  `FADefaultMandatory` binary(1) DEFAULT '1',
  `fileType` varchar(250) DEFAULT NULL,
  `BODefaultShow` tinyint(4) DEFAULT '1',
  `BODefaultMandatory` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`fieldID`)
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblFriedmanNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblFriedmanNotes`;
CREATE TABLE `tblFriedmanNotes` (
  `TFID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FileNumber` varchar(100) NOT NULL,
  `createdOn` varchar(100) NOT NULL,
  `createdBy` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Message` varchar(100) NOT NULL,
  `LMRId` int(11) DEFAULT NULL,
  PRIMARY KEY (`TFID`),
  KEY `FileNumber` (`FileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4870 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblGeneralFAQInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblGeneralFAQInfo`;
CREATE TABLE `tblGeneralFAQInfo` (
  `FAQID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FQuestion` text,
  `FAnswer` text,
  `dispOrder` int(5) NOT NULL DEFAULT '0',
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`FAQID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblGlobalIntegrity`
-- ----------------------------
DROP TABLE IF EXISTS `tblGlobalIntegrity`;
CREATE TABLE `tblGlobalIntegrity` (
  `loanAmount` varchar(15) DEFAULT NULL,
  `len1Rate` varchar(15) DEFAULT NULL,
  `createdDate` varchar(15) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `LMRId` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHAFASaleDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblHAFASaleDocs`;
CREATE TABLE `tblHAFASaleDocs` (
  `HSDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `HAFADocId` int(11) DEFAULT NULL,
  PRIMARY KEY (`HSDID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblHAFASaleDocs_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2724 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHAFATermsOfSale`
-- ----------------------------
DROP TABLE IF EXISTS `tblHAFATermsOfSale`;
CREATE TABLE `tblHAFATermsOfSale` (
  `HTSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `HAFAContractSalePrice` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFAClosingCosts` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFACommissions` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFASettlementFees` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFASellerFees` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFALienPayoff` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFATransferFees` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFAPropertyTax` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFATermite` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFABorrowerRelocation` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFAOther` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFAMoneyDeposit` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFADownPayment` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `HAFAClosingDate` date DEFAULT NULL,
  `approvedBuyers` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgent` varchar(70) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentAddr` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentCity` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentState` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentZip` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentPhone` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `settlementAgentFax` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`HTSID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblHAFATermsOfSale_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2175 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHMLOBlanketLoanOtherProps`
-- ----------------------------
DROP TABLE IF EXISTS `tblHMLOBlanketLoanOtherProps`;
CREATE TABLE `tblHMLOBlanketLoanOtherProps` (
  `BLPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(11) unsigned NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `county` varchar(100) DEFAULT NULL,
  `isHouseProperty` varchar(75) DEFAULT NULL,
  `propertyCondition` varchar(10) DEFAULT NULL,
  `propType` varchar(30) DEFAULT NULL,
  `propConstructionType` varchar(10) DEFAULT NULL,
  `occupancyNotes` varchar(250) DEFAULT NULL,
  `conditionNotes` varchar(250) DEFAULT NULL,
  `propertyFeatures` varchar(250) DEFAULT NULL,
  `yearBuilt` varchar(6) DEFAULT NULL,
  `acres` varchar(20) DEFAULT NULL,
  `legalDescription` longtext,
  `propertySqFt` varchar(20) DEFAULT NULL,
  `howManyBedRoom` varchar(15) DEFAULT NULL,
  `howManyBathRoom` varchar(15) DEFAULT NULL,
  `parcelNo` varchar(50) DEFAULT NULL,
  `taxYear` varchar(6) DEFAULT NULL,
  `annualPropTaxes` varchar(30) DEFAULT NULL,
  `propertyURLLink1` longtext,
  `propertyURLLink2` longtext,
  `LBContactName` varchar(75) DEFAULT NULL,
  `LBInfo` varchar(75) DEFAULT NULL,
  `LBContactPhone` varchar(20) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `noUnitsOccupied` int(11) DEFAULT NULL,
  `noOfBuildings` int(10) DEFAULT NULL,
  `ownerOccupancyPercentage` decimal(10,2) DEFAULT NULL,
  `stabilizedRate` varchar(30) DEFAULT NULL,
  `propertyTaxDueDate` date DEFAULT NULL,
  `LBContactEmail` varchar(75) NOT NULL,
  PRIMARY KEY (`BLPID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblHMLOBlanketLoanOtherProps_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHMLONiches`
-- ----------------------------
DROP TABLE IF EXISTS `tblHMLONiches`;
CREATE TABLE `tblHMLONiches` (
  `NID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `nichesType` enum('M','C') DEFAULT 'M',
  `niches` text,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`NID`),
  KEY `PCID` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHMLOPropertyType`
-- ----------------------------
DROP TABLE IF EXISTS `tblHMLOPropertyType`;
CREATE TABLE `tblHMLOPropertyType` (
  `PTID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `propType` varchar(75) DEFAULT NULL,
  `propTypeID` int(11) DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`PTID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHRRequiredCheckList`
-- ----------------------------
DROP TABLE IF EXISTS `tblHRRequiredCheckList`;
CREATE TABLE `tblHRRequiredCheckList` (
  `HRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `HRRequiredChecklist` enum('Hardship','QA','LMProposal','IncExp','') NOT NULL,
  `activeStatus` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`HRID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblHRRequiredCheckList_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3933 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHardship`
-- ----------------------------
DROP TABLE IF EXISTS `tblHardship`;
CREATE TABLE `tblHardship` (
  `HID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL DEFAULT '0',
  `hardship` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `template` text CHARACTER SET latin1,
  PRIMARY KEY (`HID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblHardship_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=460962 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHardshipDescription`
-- ----------------------------
DROP TABLE IF EXISTS `tblHardshipDescription`;
CREATE TABLE `tblHardshipDescription` (
  `HDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `hardshipDesc` longtext CHARACTER SET latin1,
  `hardshipSituation` tinyint(4) DEFAULT '0',
  `hardshipType` varchar(5) CHARACTER SET latin1 DEFAULT 'LM',
  `hardshipAddInfo` longtext CHARACTER SET latin1,
  `HBeganDate` date DEFAULT NULL,
  `HDuration` varchar(5) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HDID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblHardshipDescription_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=299657 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHardshipInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblHardshipInfo`;
CREATE TABLE `tblHardshipInfo` (
  `HID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `hardshipDescription` blob,
  `agreedTC` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHardshipTemplate`
-- ----------------------------
DROP TABLE IF EXISTS `tblHardshipTemplate`;
CREATE TABLE `tblHardshipTemplate` (
  `HTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `hardship` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `template` blob,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`HTID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHearAbout`
-- ----------------------------
DROP TABLE IF EXISTS `tblHearAbout`;
CREATE TABLE `tblHearAbout` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hearAbout` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `displayNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHomeReport`
-- ----------------------------
DROP TABLE IF EXISTS `tblHomeReport`;
CREATE TABLE `tblHomeReport` (
  `HRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `BRID` int(10) unsigned NOT NULL,
  `preparedForBranchName` varchar(70) NOT NULL DEFAULT '',
  `preparedForBranchAddr` varchar(100) NOT NULL DEFAULT '',
  `preparedForBranchPhone` varchar(20) NOT NULL DEFAULT '',
  `propertyValuation` enum('Fullappraisal','BrokerPriceOpinion','AutomatedValuationModel','Zillow.com','','Other') NOT NULL,
  `loanOriginationDate` date NOT NULL,
  `NPVAnalysisValue` int(10) unsigned NOT NULL DEFAULT '0',
  `borrowerFName` varchar(70) NOT NULL DEFAULT '',
  `borrowerLName` varchar(70) NOT NULL DEFAULT '',
  `coBorrowerFName` varchar(70) NOT NULL DEFAULT '',
  `coBorrowerLName` varchar(70) NOT NULL DEFAULT '',
  `propertyAddress` varchar(100) NOT NULL DEFAULT '',
  `propertyCity` varchar(100) NOT NULL DEFAULT '',
  `propertyState` varchar(10) NOT NULL DEFAULT '',
  `propertyZip` varchar(10) NOT NULL DEFAULT '',
  `loanNumber` varchar(75) NOT NULL DEFAULT '',
  `servicer1` varchar(60) NOT NULL DEFAULT '',
  `orderStatus` enum('','Pending','Pending Update','Completed') NOT NULL DEFAULT 'Pending',
  `price` int(11) NOT NULL DEFAULT '0',
  `paymentStatus` enum('','Payment Due','Paid','Delinquent') NOT NULL DEFAULT 'Payment Due',
  `HRProposalSummary` longtext,
  PRIMARY KEY (`HRID`),
  KEY `PCID` (`PCID`,`BRID`,`fileID`),
  KEY `BRID` (`BRID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblHomeReport_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblHomeReport_ibfk_2` FOREIGN KEY (`BRID`) REFERENCES `tblBranch` (`executiveId`),
  CONSTRAINT `tblHomeReport_ibfk_3` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1293 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblHomeReportHistory`
-- ----------------------------
DROP TABLE IF EXISTS `tblHomeReportHistory`;
CREATE TABLE `tblHomeReportHistory` (
  `HID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `submissionDate` datetime NOT NULL,
  `docPath` varchar(100) NOT NULL DEFAULT '',
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `UID` int(10) unsigned NOT NULL,
  `UType` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`HID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblHomeReportHistory_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1822 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblIncomeInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblIncomeInfo`;
CREATE TABLE `tblIncomeInfo` (
  `IID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `occupation1` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `occupation2` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `employedInfo1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `employedInfo2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `grossIncome1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `grossIncome2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `commissionOrBonus1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `commissionOrBonus2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `overtime1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `overtime2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `tipsMiscIncome1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `tipsMiscIncome2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `socialSecurity1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `socialSecurity2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `pensionOrRetirement1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `pensionOrRetirement2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `disability1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `disability2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `childSupportOrAlimony1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `childSupportOrAlimony2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `rental1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `rental2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `earnedInterest1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `earnedInterest2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sonOrDaughter1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sonOrDaughter2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `parents1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `parents2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unemployment1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unemployment2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherHouseHold1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherHouseHold2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `primTotalHouseHoldIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `coTotalHouseHoldIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `primaryMortgage1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `primaryMortgage2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `HOAFees1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `HOAFees2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `taxes1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `taxes2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `insurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `insurance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherMortgage1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherMortgage2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `creditCards1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `creditCards2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `autoLoan1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `autoLoan2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unsecuredLoans1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unsecuredLoans2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `studentLoans1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `studentLoans2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `childSupportOrAlimonyMonthly1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `childSupportOrAlimonyMonthly2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `careAmt1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `careAmt2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `allInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `allInsurance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `groceries1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `groceries2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `carExpenses1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `carExpenses2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `medicalBill1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `medicalBill2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `entertainment1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `entertainment2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `other1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `other2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `cable1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `cable2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `electricity1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `electricity2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `natural1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `natural2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `primaryBorrowerPhone` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `coBorrowerPhone` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `water1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `water2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `internet1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `internet2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `utilityOther1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `utilityOther2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `primTotalHouseHoldExpenses` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `coTotalHouseHoldExpenses` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `incomeNotes` blob,
  `houseHoldExpensesNotes` blob,
  `roomRental1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `roomRental2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `secondJobIncome1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `secondJobIncome2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netMonthlyIncome1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netMonthlyIncome2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `currntPmntTaxAndIns1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `columnmortgageInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `mortgageInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `employer1` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `employer2` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `yearsAtJob1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `yearsAtJob2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `employmentHistory` longtext CHARACTER SET latin1,
  `federalTaxFICA1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `federalTaxFICA2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherDeductions1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherDeductions2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `foodStampWelfare1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `foodStampWelfare2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `employer1Add` longtext CHARACTER SET latin1,
  `employer1Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `employer2Add` longtext CHARACTER SET latin1,
  `employer2Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditCardsBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `creditCardsBalance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `autoLoanBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `autoLoanBalance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unsecuredLoanBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unsecuredLoanBalance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherMortgageBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `otherMortgageBalance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `studentLoansBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `studentLoansBalance2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `contactAtWork1` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `contactAtWork2` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `donation1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `donation2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `pets1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `pets2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `monthlyParking1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `monthlyParking2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unionDues1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `unionDues2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `personalLoan1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `personalLoan2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `dryCleaning1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `dryCleaning2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lunchPurchased1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lunchPurchased2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netSocialSecurity1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netSocialSecurity2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netPensionOrRetirement1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netPensionOrRetirement2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netDisability1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netDisability2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netRental1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netRental2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netEarnedInterest1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netEarnedInterest2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netRoomRental1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netRoomRental2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netSecondJobIncome1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netSecondJobIncome2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netUnemployment1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netUnemployment2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `floodInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `borrowerHireDate` date DEFAULT NULL,
  `coBorrowerHireDate` date DEFAULT NULL,
  `includeNotesToPDF` tinyint(4) DEFAULT '1',
  `rentalExp1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `rentalExp2` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `secondJobEmpType1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `secondJobEmpType2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `unemploymentStDate1` date DEFAULT NULL,
  `unemploymentStDate2` date DEFAULT NULL,
  `secondJobStDate1` date DEFAULT NULL,
  `secondJobStDate2` date DEFAULT NULL,
  `addGrossedUp1` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addGrossedUp2` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paidOften` enum('','weekly','monthly','every2Weeks','twiceMonth') NOT NULL DEFAULT '',
  `paidOften1` enum('','weekly','monthly','every2Weeks','twiceMonth') NOT NULL DEFAULT '',
  `pastDueMtg` varchar(30) DEFAULT '',
  `pastDueHOA` varchar(30) DEFAULT '',
  `escrowAdvances` varchar(30) DEFAULT '',
  `projectedEscrowAdvances` varchar(30) DEFAULT '',
  `borLineOfWorkProfession` int(11) NOT NULL,
  `cobLineOfWorkProfession` int(11) NOT NULL,
  `childSupportOrAlimonyMonthlyBalance1` varchar(30) DEFAULT NULL,
  `childSupportOrAlimonyMonthlyBalance2` varchar(30) DEFAULT NULL,
  `otherBalance1` varchar(30) DEFAULT NULL,
  `otherBalance2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IID`),
  KEY `LMRId` (`LMRId`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblIncomeInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=570394 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblInvalidAccess`
-- ----------------------------
DROP TABLE IF EXISTS `tblInvalidAccess`;
CREATE TABLE `tblInvalidAccess` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IPNo` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `accessUrl` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `recDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recStatus` tinyint(4) DEFAULT '1',
  `userEmail` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `userGroup` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `remarks` longtext CHARACTER SET latin1,
  `fileID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=367342 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblJAInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblJAInfo`;
CREATE TABLE `tblJAInfo` (
  `JAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `borrowerDated` date DEFAULT NULL,
  `coBorrowerDated` date DEFAULT NULL,
  PRIMARY KEY (`JAID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblJAInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8979 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMProposalSummary`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMProposalSummary`;
CREATE TABLE `tblLMProposalSummary` (
  `LPSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `LMProposalSummary` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`LPSID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMProposalSummary_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=377027 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBilling`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBilling`;
CREATE TABLE `tblLMRBilling` (
  `BID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(11) unsigned NOT NULL,
  `feeCode` int(11) NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `amount` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`BID`),
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `feeCode` (`feeCode`),
  KEY `rStatus` (`rStatus`),
  KEY `dateOwed` (`dateOwed`),
  KEY `LMRId_2` (`LMRId`,`rStatus`,`phase`),
  KEY `amount` (`amount`),
  KEY `LMRId_3` (`LMRId`,`rStatus`),
  CONSTRAINT `tblLMRBilling_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6510619 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBillingPayment`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBillingPayment`;
CREATE TABLE `tblLMRBillingPayment` (
  `BPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `totalPaid` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `paymentType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `billingNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  `duration` enum('P','W','M','A') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`BPID`),
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `dateOwed` (`dateOwed`),
  KEY `totalPaid` (`totalPaid`),
  KEY `rStatus` (`rStatus`),
  KEY `LMRId_2` (`LMRId`,`rStatus`,`phase`),
  KEY `LMRId_3` (`LMRId`,`rStatus`),
  CONSTRAINT `tblLMRBillingPayment_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=4324586 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBillingPayment_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBillingPayment_h`;
CREATE TABLE `tblLMRBillingPayment_h` (
  `BPID` int(10) unsigned NOT NULL,
  `LMRId` int(10) unsigned NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `totalPaid` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `paymentType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `billingNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  `duration` enum('P','W','M','A') NOT NULL DEFAULT 'P',
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `dateOwed` (`dateOwed`),
  KEY `totalPaid` (`totalPaid`),
  KEY `rStatus` (`rStatus`),
  KEY `LMRId_2` (`LMRId`,`rStatus`,`phase`),
  KEY `LMRId_3` (`LMRId`,`rStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBillingReminder`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBillingReminder`;
CREATE TABLE `tblLMRBillingReminder` (
  `LBRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `AID` int(11) DEFAULT NULL,
  `LMRAEID` int(11) DEFAULT NULL,
  `notifyBorrower` int(11) DEFAULT NULL,
  `notifyCoBorrower` int(11) DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `remindedOn` datetime DEFAULT NULL,
  `sentReminder` int(11) DEFAULT '0',
  `PCID` int(11) DEFAULT NULL,
  `SID` int(11) DEFAULT NULL,
  `SType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `SName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `SEmail` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `SMS` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LBRID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRBillingReminder_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=16466 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBillingReminderEmployee`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBillingReminderEmployee`;
CREATE TABLE `tblLMRBillingReminderEmployee` (
  `LERID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LBRID` int(10) unsigned NOT NULL,
  `EID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LERID`),
  KEY `LBRID` (`LBRID`),
  KEY `EID` (`EID`),
  CONSTRAINT `tblLMRBillingReminderEmployee_ibfk_1` FOREIGN KEY (`LBRID`) REFERENCES `tblLMRBillingReminder` (`LBRID`)
) ENGINE=InnoDB AUTO_INCREMENT=26701 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRBilling_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRBilling_h`;
CREATE TABLE `tblLMRBilling_h` (
  `BID` int(10) unsigned NOT NULL,
  `LMRId` int(11) unsigned NOT NULL,
  `feeCode` int(11) NOT NULL,
  `phase` int(11) DEFAULT NULL,
  `amount` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `feeCode` (`feeCode`),
  KEY `rStatus` (`rStatus`),
  KEY `dateOwed` (`dateOwed`),
  KEY `LMRId_2` (`LMRId`,`rStatus`,`phase`),
  KEY `amount` (`amount`),
  KEY `LMRId_3` (`LMRId`,`rStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRCCInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCCInfo`;
CREATE TABLE `tblLMRCCInfo` (
  `LCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `CCType` longtext CHARACTER SET latin1,
  `CCNumber` longtext CHARACTER SET latin1,
  `CCExpiryMonth` longtext CHARACTER SET latin1,
  `CCExpiryYear` longtext CHARACTER SET latin1,
  `CCName` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `CCSecCode` longtext CHARACTER SET latin1,
  `CCAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `CCCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `CCState` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `CCZip` varchar(10) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`LCID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRCCInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=35131 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `LMRCCInfo_h` BEFORE UPDATE ON `tblLMRCCInfo` FOR EACH ROW BEGIN
       IF (NEW.LMRId>0) THEN
           INSERT INTO tblLMRCCInfo_h (SELECT * FROM tblLMRCCInfo WHERE LMRID = NEW.LMRId);
                 
       END IF;
   END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblLMRCCInfo_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCCInfo_h`;
CREATE TABLE `tblLMRCCInfo_h` (
  `LCID` int(10) unsigned NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `CCType` longtext CHARACTER SET latin1,
  `CCNumber` longtext CHARACTER SET latin1,
  `CCExpiryMonth` longtext CHARACTER SET latin1,
  `CCExpiryYear` longtext CHARACTER SET latin1,
  `CCName` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `CCSecCode` longtext CHARACTER SET latin1,
  `CCAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `CCCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `CCState` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `CCZip` varchar(10) CHARACTER SET latin1 DEFAULT '',
  KEY `LMRID` (`LMRID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRChecklistNotRequired`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRChecklistNotRequired`;
CREATE TABLE `tblLMRChecklistNotRequired` (
  `CNID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` int(11) NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedUserType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `updatedOn` datetime DEFAULT NULL,
  `CLType` enum('PCL','FCL') DEFAULT 'PCL',
  PRIMARY KEY (`CNID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRChecklistNotRequired_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=154875 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRClientType`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRClientType`;
CREATE TABLE `tblLMRClientType` (
  `CTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned DEFAULT NULL,
  `ClientType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CTID`),
  KEY `LMRID` (`LMRID`),
  KEY `ClientType` (`ClientType`),
  CONSTRAINT `tblLMRClientType_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6180679 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRClientType_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRClientType_h`;
CREATE TABLE `tblLMRClientType_h` (
  `CTID` int(10) unsigned NOT NULL,
  `LMRID` int(10) unsigned DEFAULT NULL,
  `ClientType` varchar(10) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRCommission`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCommission`;
CREATE TABLE `tblLMRCommission` (
  `CID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `userType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `phase` int(11) DEFAULT NULL,
  `owed` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `totalPaid` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `paymentType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `commissionNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  `duration` enum('P','W','M','A') NOT NULL DEFAULT 'P',
  PRIMARY KEY (`CID`),
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `userId` (`userId`),
  KEY `userType` (`userType`),
  CONSTRAINT `tblLMRCommission_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=149043 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRCommission_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCommission_h`;
CREATE TABLE `tblLMRCommission_h` (
  `CID` int(10) unsigned NOT NULL,
  `LMRId` int(10) unsigned NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `userType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `phase` int(11) DEFAULT NULL,
  `owed` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `dateOwed` date DEFAULT NULL,
  `datePaid` date DEFAULT NULL,
  `totalPaid` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `paymentType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `commissionNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `rStatus` tinyint(4) DEFAULT '1',
  `duration` enum('P','W','M','A') NOT NULL DEFAULT 'P',
  KEY `LMRId` (`LMRId`),
  KEY `phase` (`phase`),
  KEY `userId` (`userId`),
  KEY `userType` (`userType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRCreditorInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCreditorInfo`;
CREATE TABLE `tblLMRCreditorInfo` (
  `CIID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `creditorName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `creditorAcctNumber` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `creditorType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `creditorAcctType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorMinPayment` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorMonthsBehind` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorAcctBalance` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorRepName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `creditorRepPhoneNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorRepFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorRepEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `creditorRepNotes` longtext CHARACTER SET latin1,
  `creditorAgentName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `creditorAgentPhoneNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorAgentFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditorAgentEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `creditorAgentNotes` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `creditorRate` varchar(10) DEFAULT '',
  `accDesc` varchar(7) DEFAULT '',
  `notificationDate` date NOT NULL DEFAULT '0000-00-00',
  `creditorAddress` varchar(100) NOT NULL DEFAULT '',
  `creditorCity` varchar(100) NOT NULL DEFAULT '',
  `creditorState` varchar(30) NOT NULL DEFAULT '',
  `creditorZip` varchar(10) NOT NULL DEFAULT '',
  `creditorAgentAddress` varchar(100) NOT NULL DEFAULT '',
  `creditorAgentCity` varchar(100) NOT NULL DEFAULT '',
  `creditorAgentState` varchar(30) NOT NULL DEFAULT '',
  `creditorAgentZip` varchar(10) NOT NULL DEFAULT '',
  `collectionAgencyName` varchar(100) NOT NULL DEFAULT '',
  `alternateName` varchar(45) DEFAULT NULL,
  `monthsLeftToPay` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`CIID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblLMRCreditorInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3506 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRCreditorStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRCreditorStatus`;
CREATE TABLE `tblLMRCreditorStatus` (
  `CSID` int(11) NOT NULL AUTO_INCREMENT,
  `CIID` int(10) DEFAULT NULL,
  `creditorStatus` enum('AJ','BR','FC','TL','PC','MI','SL','SM','SJ','SD','LS','UC','WPR','GA','NR') DEFAULT NULL,
  KEY `CSID` (`CSID`)
) ENGINE=InnoDB AUTO_INCREMENT=3159 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRDocs`;
CREATE TABLE `tblLMRDocs` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `executiveId` int(10) unsigned NOT NULL,
  `docName` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `displayDocName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `attachWithEmail` int(11) DEFAULT '1',
  `publishInPQPortal` int(11) DEFAULT '0',
  `publishDoument` int(11) DEFAULT '0',
  `categoryID` int(11) DEFAULT NULL,
  `category` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`),
  KEY `executiveId` (`executiveId`),
  CONSTRAINT `tblLMRDocs_ibfk_1` FOREIGN KEY (`executiveId`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=2807 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMREmailTemplates`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMREmailTemplates`;
CREATE TABLE `tblLMREmailTemplates` (
  `LETID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) CHARACTER SET latin1 NOT NULL,
  `content` longtext CHARACTER SET latin1 NOT NULL,
  `UID` int(11) DEFAULT NULL,
  `UType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `PCID` int(11) DEFAULT '0',
  `templateName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`LETID`)
) ENGINE=InnoDB AUTO_INCREMENT=1648 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRFileDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRFileDocs`;
CREATE TABLE `tblLMRFileDocs` (
  `docID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `docName` blob,
  `displayDocName` blob,
  `uploadedBy` int(11) DEFAULT '0',
  `uploadedDate` datetime DEFAULT NULL,
  `uploadingUserType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `docCategory` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `fileCopied` tinyint(4) DEFAULT '0',
  `notes` longtext,
  `oldFileCopied` tinyint(1) NOT NULL DEFAULT '0',
  `dType` enum('U','GD','DB','BC') DEFAULT 'U',
  `docUrl` varchar(100) DEFAULT NULL,
  `docCategoryBak` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`docID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRFileDocs_ibfk_2` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1868950 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRFileSubStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRFileSubStatus`;
CREATE TABLE `tblLMRFileSubStatus` (
  `FID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileSubStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`FID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `fileSubStatus` (`fileSubStatus`),
  KEY `displayOrder` (`displayOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRHUDAdditionalCharges`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRHUDAdditionalCharges`;
CREATE TABLE `tblLMRHUDAdditionalCharges` (
  `HAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fieldName` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `borrowerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sellerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HAID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRHUDAdditionalCharges_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=54503 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRHUDItemsPayableLoan`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRHUDItemsPayableLoan`;
CREATE TABLE `tblLMRHUDItemsPayableLoan` (
  `HIID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fieldName` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `borrowerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sellerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HIID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRHUDItemsPayableLoan_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6781 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRHUDLenderToPay`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRHUDLenderToPay`;
CREATE TABLE `tblLMRHUDLenderToPay` (
  `HLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `fieldName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `interestRateFrom` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `interestRateTo` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `perDay` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `insurancePremium` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `monthsTo` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `yearsTo` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `borrowerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sellerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HLID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRHUDLenderToPay_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3011 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRHUDReservesDeposit`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRHUDReservesDeposit`;
CREATE TABLE `tblLMRHUDReservesDeposit` (
  `HRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `fieldID` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lenderMonths` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lenderAmount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `borrowerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `sellerSettlementValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`HRID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblLMRHUDReservesDeposit_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5151 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRProcessorComments`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRProcessorComments`;
CREATE TABLE `tblLMRProcessorComments` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRResponseId` int(11) DEFAULT '0',
  `fileID` int(10) unsigned NOT NULL DEFAULT '0',
  `executiveId` int(11) DEFAULT '0',
  `notesDate` datetime DEFAULT NULL,
  `processorComments` blob,
  `brokerNumber` int(11) DEFAULT '0',
  `processorName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `signExecutiveName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `employeeId` int(11) DEFAULT '0',
  `updatedBy` int(11) DEFAULT '0',
  `updatedUserType` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `private` int(11) DEFAULT '1',
  `clientId` int(11) DEFAULT '0',
  `displayIn` enum('BO','NH','EH','SH') CHARACTER SET latin1 DEFAULT 'NH',
  `notesType` enum('GE','CL','LN','','WFN','BN','AN','RN','CALN','TLN','BGN','BR','SR','UW','ED','CE','TLD','CCD','CS','LD','AD','CHKN','BK','SN') DEFAULT 'GE',
  `sendTo` longtext CHARACTER SET latin1,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `deletedBy` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `deletedTime` datetime DEFAULT NULL,
  `isSysNotes` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`serialNumber`),
  KEY `LMRResponseId` (`LMRResponseId`),
  KEY `private` (`private`),
  KEY `notesDate` (`notesDate`),
  KEY `serialNumber` (`serialNumber`),
  KEY `fileID` (`fileID`),
  KEY `deleted` (`deleted`),
  KEY `displayIn` (`displayIn`),
  KEY `employeeId` (`employeeId`),
  KEY `employeeId_2` (`employeeId`,`fileID`,`deleted`,`displayIn`,`notesDate`),
  KEY `fileID_2` (`fileID`,`deleted`,`notesType`,`notesDate`),
  KEY `deleted_2` (`deleted`,`employeeId`,`notesType`,`fileID`,`notesDate`),
  KEY `fileID_3` (`fileID`,`deleted`,`notesType`,`notesDate`),
  KEY `deleted_3` (`deleted`,`employeeId`,`notesType`,`fileID`,`notesDate`),
  CONSTRAINT `tblLMRProcessorComments_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=17075279 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRWorkflow`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRWorkflow`;
CREATE TABLE `tblLMRWorkflow` (
  `LWID` int(11) NOT NULL AUTO_INCREMENT,
  `WFID` int(11) NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `dStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LWID`),
  KEY `LMRID` (`LMRID`),
  KEY `WFID` (`WFID`,`LMRID`),
  KEY `dStatus` (`dStatus`),
  CONSTRAINT `tblLMRWorkflow_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=13068 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLMRWorkflowSteps`
-- ----------------------------
DROP TABLE IF EXISTS `tblLMRWorkflowSteps`;
CREATE TABLE `tblLMRWorkflowSteps` (
  `LWID` int(11) NOT NULL AUTO_INCREMENT,
  `WFID` int(11) NOT NULL,
  `WFSID` int(11) NOT NULL,
  `LMRID` int(10) unsigned NOT NULL,
  `updatedBy` int(11) DEFAULT '0',
  `updatedUserType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `updatedOn` datetime DEFAULT NULL,
  `dStatus` tinyint(4) DEFAULT '1',
  `docStatus` int(10) unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`LWID`),
  KEY `LMRID` (`LMRID`),
  KEY `WFID` (`WFID`,`WFSID`,`LMRID`),
  KEY `dStatus` (`dStatus`),
  KEY `WFID_2` (`WFID`,`WFSID`),
  CONSTRAINT `tblLMRWorkflowSteps_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=44903 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLeadDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblLeadDocs`;
CREATE TABLE `tblLeadDocs` (
  `LDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `docName` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `displayDocName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `userType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `uploadedDate` datetime DEFAULT NULL,
  `tempTableName` varchar(100) NOT NULL DEFAULT '',
  `PCID` int(11) DEFAULT NULL,
  `BRID` int(11) DEFAULT NULL,
  `AID` int(11) DEFAULT NULL,
  `pushRequest` tinyint(4) DEFAULT '0',
  `primeStatusId` int(11) DEFAULT NULL,
  `pushedStatus` varchar(20) DEFAULT NULL,
  `failureAlert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `firstRowHeader` varchar(10) DEFAULT 'No',
  `pushedDate` date NOT NULL DEFAULT '0000-00-00',
  `moduleCode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LDID`)
) ENGINE=InnoDB AUTO_INCREMENT=3204 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLegalContract`
-- ----------------------------
DROP TABLE IF EXISTS `tblLegalContract`;
CREATE TABLE `tblLegalContract` (
  `LCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empId` int(11) DEFAULT NULL,
  `PCId` int(11) DEFAULT NULL,
  `legalContent` blob,
  `updatedDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LCID`)
) ENGINE=InnoDB AUTO_INCREMENT=20277 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderComments`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderComments`;
CREATE TABLE `tblLenderComments` (
  `LCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `comments` longtext CHARACTER SET latin1,
  `comDate` datetime DEFAULT NULL,
  `comBy` int(11) DEFAULT NULL,
  `comUserType` varchar(7) CHARACTER SET latin1 DEFAULT '',
  `public` int(11) DEFAULT '1',
  PRIMARY KEY (`LCID`),
  KEY `LID` (`LID`),
  KEY `comDate` (`comDate`),
  CONSTRAINT `tblLenderComments_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderContacts`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderContacts`;
CREATE TABLE `tblLenderContacts` (
  `LCPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(11) unsigned NOT NULL,
  `contactName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `CPDepartment` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `CPPhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPCellNumber` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPFax` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `CPEmail` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `createdBy` int(11) DEFAULT NULL,
  `createdUserType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`LCPID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderContacts_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderDocs`;
CREATE TABLE `tblLenderDocs` (
  `LDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `docName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `groupNumber` int(11) DEFAULT NULL,
  `docDisplayName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LDID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderDocs_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderLinks`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderLinks`;
CREATE TABLE `tblLenderLinks` (
  `LLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `urlName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `groupNumber` int(11) DEFAULT NULL,
  `linkDisplayName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LLID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderLinks_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderLoanType`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderLoanType`;
CREATE TABLE `tblLenderLoanType` (
  `LLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `loanType` enum('','LOC','TL','CFL','IFL') DEFAULT '',
  `APRMin` float(15,4) NOT NULL,
  `APRMax` float(15,4) NOT NULL,
  `minCreditScore` int(10) NOT NULL,
  `loanAmountMin` float(15,2) NOT NULL,
  `loanAmountMax` float(15,2) NOT NULL,
  `guidelines` longtext,
  `ageOfBusiness` varchar(30) DEFAULT NULL,
  `annualRevenueMin` float(15,2) DEFAULT NULL,
  `annualRevenueMax` float(15,2) DEFAULT NULL,
  `invoiceFactor` varchar(5) DEFAULT NULL,
  `businessProfitable` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`LLID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderLoanType_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderNOEInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderNOEInfo`;
CREATE TABLE `tblLenderNOEInfo` (
  `NOE_LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `NOE_phoneNumber` varchar(25) DEFAULT NULL,
  `NOE_fax` varchar(20) DEFAULT NULL,
  `NOE_city` varchar(50) DEFAULT NULL,
  `NOE_state` varchar(5) DEFAULT NULL,
  `NOE_zipCode` varchar(15) DEFAULT NULL,
  `NOE_address` varchar(100) DEFAULT NULL,
  `NOE_suite` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NOE_LID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderNOEInfo_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderSSInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderSSInfo`;
CREATE TABLE `tblLenderSSInfo` (
  `SS_LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `SS_phoneNumber` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `SS_fax` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `SS_city` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `SS_state` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `SS_zipCode` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `SS_lenderWebsite` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`SS_LID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLenderSSInfo_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenderTypeMaster`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenderTypeMaster`;
CREATE TABLE `tblLenderTypeMaster` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanType` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `displayNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLenders`
-- ----------------------------
DROP TABLE IF EXISTS `tblLenders`;
CREATE TABLE `tblLenders` (
  `LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `department` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `phoneNumber` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `address1` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `city` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `state` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `zipCode` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(1) DEFAULT '1',
  `approvedStatus` tinyint(1) DEFAULT '1',
  `lenderWebsite` varchar(250) CHARACTER SET latin1 DEFAULT '',
  `email` varchar(75) NOT NULL DEFAULT '',
  `lenderType` enum('ML','BL') DEFAULT 'ML',
  `lenderLogo` text,
  PRIMARY KEY (`LID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `approvedStatus` (`approvedStatus`),
  KEY `company` (`company`)
) ENGINE=InnoDB AUTO_INCREMENT=110622 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLendersGuidelines`
-- ----------------------------
DROP TABLE IF EXISTS `tblLendersGuidelines`;
CREATE TABLE `tblLendersGuidelines` (
  `LGID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LID` int(10) unsigned NOT NULL,
  `submissionInfo` longtext CHARACTER SET latin1,
  `lenderGuidelines` longtext CHARACTER SET latin1,
  `lenderNotes` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`LGID`),
  KEY `LID` (`LID`),
  CONSTRAINT `tblLendersGuidelines_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `tblLenders` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLibPackage`
-- ----------------------------
DROP TABLE IF EXISTS `tblLibPackage`;
CREATE TABLE `tblLibPackage` (
  `PKGID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) DEFAULT NULL,
  `category` varchar(10) DEFAULT NULL,
  `category_old_services` varchar(30) DEFAULT NULL,
  `packageName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `packageType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `filePath` longtext CHARACTER SET latin1,
  `customDoc` tinyint(4) DEFAULT '0',
  `digiSign` tinyint(4) DEFAULT '0',
  `allPCs` tinyint(4) DEFAULT '0',
  `allBranches` tinyint(4) DEFAULT '0',
  `docName` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `docFn` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `explanation` longtext,
  `newPDFFormat` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PKGID`),
  KEY `PKGID` (`PKGID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `categoryID` (`categoryID`),
  KEY `packageName` (`packageName`)
) ENGINE=InnoDB AUTO_INCREMENT=946 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLibPackageCategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblLibPackageCategory`;
CREATE TABLE `tblLibPackageCategory` (
  `CID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PKGID` int(10) unsigned NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`CID`),
  UNIQUE KEY `PKGID_2` (`PKGID`,`category`),
  KEY `PKGID` (`PKGID`),
  KEY `category` (`category`),
  CONSTRAINT `tblLibPackageCategory_ibfk_1` FOREIGN KEY (`PKGID`) REFERENCES `tblLibPackage` (`PKGID`)
) ENGINE=InnoDB AUTO_INCREMENT=1989 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLibPackageSubCategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblLibPackageSubCategory`;
CREATE TABLE `tblLibPackageSubCategory` (
  `SCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PKGID` int(10) unsigned NOT NULL,
  `subCategory` varchar(50) NOT NULL,
  PRIMARY KEY (`SCID`),
  UNIQUE KEY `PKGID_2` (`PKGID`,`subCategory`),
  KEY `PKGID` (`PKGID`),
  KEY `subCategory` (`subCategory`),
  CONSTRAINT `tblLibPackageSubCategory_ibfk_1` FOREIGN KEY (`PKGID`) REFERENCES `tblLibPackage` (`PKGID`)
) ENGINE=InnoDB AUTO_INCREMENT=1053 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLibServiceTypes`
-- ----------------------------
DROP TABLE IF EXISTS `tblLibServiceTypes`;
CREATE TABLE `tblLibServiceTypes` (
  `STID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serviceType` varchar(70) CHARACTER SET latin1 NOT NULL,
  `STCode` varchar(10) CHARACTER SET latin1 NOT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `type` enum('M','C') DEFAULT 'M',
  `PCID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`STID`),
  UNIQUE KEY `STCode` (`STCode`),
  KEY `serviceType` (`serviceType`,`STCode`)
) ENGINE=InnoDB AUTO_INCREMENT=4628 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblListingHistoryInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblListingHistoryInfo`;
CREATE TABLE `tblListingHistoryInfo` (
  `LID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `mlsNo` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `listingDate` date DEFAULT NULL,
  `listingPrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `listingNotes` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `listingClass` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `listingExpDate` date DEFAULT NULL,
  `mlsName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`LID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblListingHistoryInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5527 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLoanNumbers`
-- ----------------------------
DROP TABLE IF EXISTS `tblLoanNumbers`;
CREATE TABLE `tblLoanNumbers` (
  `PCID` int(10) unsigned NOT NULL,
  `lastLoanNumber` int(11) NOT NULL,
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblLoanNumbers_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblLoanTypeMaster`
-- ----------------------------
DROP TABLE IF EXISTS `tblLoanTypeMaster`;
CREATE TABLE `tblLoanTypeMaster` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loanType` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `displayNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMailQueue`
-- ----------------------------
DROP TABLE IF EXISTS `tblMailQueue`;
CREATE TABLE `tblMailQueue` (
  `mail_number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sent_time` datetime DEFAULT NULL,
  `sender` varchar(50) NOT NULL DEFAULT '',
  `recipient` longtext,
  `senderEmail` varchar(100) NOT NULL DEFAULT '',
  `recipientEmail` longtext,
  `subj` mediumtext NOT NULL,
  `body` blob NOT NULL,
  `attachments` longtext,
  `senderEmailActual` varchar(100) NOT NULL DEFAULT '',
  `mailType` varchar(100) DEFAULT '',
  `LMRBccEmail` text,
  `LMRCcEmail` text,
  `sendAsUser` int(11) DEFAULT '0',
  `timeToSend` datetime DEFAULT NULL,
  `sendServerUserId` int(11) DEFAULT '0',
  `sendServerUserType` varchar(10) DEFAULT '',
  `PCID` int(11) DEFAULT '0',
  `UID` int(11) DEFAULT '0',
  `UType` varchar(30) DEFAULT '',
  `tried` varchar(10) DEFAULT '',
  `LMRId` int(11) DEFAULT '0',
  `deliveryMsg` longtext NOT NULL,
  PRIMARY KEY (`mail_number`),
  KEY `create_time` (`create_time`),
  KEY `sent_time` (`sent_time`),
  KEY `senderEmail` (`senderEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=8130713 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMailScheduled`
-- ----------------------------
DROP TABLE IF EXISTS `tblMailScheduled`;
CREATE TABLE `tblMailScheduled` (
  `MSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fromUID` int(11) DEFAULT '0',
  `fromUType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `toUID` int(11) DEFAULT '0',
  `toUType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `mailSubject` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailContent` longtext CHARACTER SET latin1,
  `scheduledOn` datetime DEFAULT NULL,
  `scheduledBy` int(11) DEFAULT '0',
  `scheduledUType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `sentOn` datetime DEFAULT NULL,
  `mailSent` int(11) DEFAULT '0',
  `scheduledTime` datetime DEFAULT NULL,
  `templateName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `tried` int(11) DEFAULT '0',
  `bccEmail` longtext NOT NULL,
  `ccEmail` longtext NOT NULL,
  `fileID` int(11) NOT NULL DEFAULT '0',
  `toEmail` varchar(75) NOT NULL DEFAULT '',
  PRIMARY KEY (`MSID`),
  KEY `toUType` (`toUType`,`toUID`),
  KEY `toUID` (`toUID`,`scheduledOn`)
) ENGINE=InnoDB AUTO_INCREMENT=98779 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMarketingEmail`
-- ----------------------------
DROP TABLE IF EXISTS `tblMarketingEmail`;
CREATE TABLE `tblMarketingEmail` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) CHARACTER SET latin1 NOT NULL,
  `content` blob NOT NULL,
  `byLine` blob,
  `tabOption` int(11) DEFAULT '2',
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMasterSSFileChecklist`
-- ----------------------------
DROP TABLE IF EXISTS `tblMasterSSFileChecklist`;
CREATE TABLE `tblMasterSSFileChecklist` (
  `FCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checklistName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `descNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`FCID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMembersOfficers`
-- ----------------------------
DROP TABLE IF EXISTS `tblMembersOfficers`;
CREATE TABLE `tblMembersOfficers` (
  `MOID` int(11) NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `CBEID` int(11) NOT NULL,
  `memberName` varchar(200) DEFAULT NULL,
  `memberTitle` varchar(200) DEFAULT NULL,
  `memberOwnership` int(11) DEFAULT NULL,
  `memberAddress` varchar(300) DEFAULT NULL,
  `memberPhone` varchar(30) DEFAULT NULL,
  `memberCell` varchar(30) DEFAULT NULL,
  `memberSSN` varchar(30) DEFAULT NULL,
  `memberDOB` date DEFAULT NULL,
  `memberEmail` varchar(50) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `recordDate` date DEFAULT NULL,
  PRIMARY KEY (`MOID`),
  KEY `CID` (`CID`),
  CONSTRAINT `tblMembersOfficers_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=749 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblMissingDocuments`
-- ----------------------------
DROP TABLE IF EXISTS `tblMissingDocuments`;
CREATE TABLE `tblMissingDocuments` (
  `MDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRResponseIdDel` int(10) unsigned NOT NULL,
  `docId_del` int(11) DEFAULT '0',
  `PCId` int(11) DEFAULT '0',
  `docId` int(11) DEFAULT '0',
  `tempDocName` varchar(300) CHARACTER SET latin1 DEFAULT '',
  `updatedBy` int(11) DEFAULT '0',
  `updatedUserType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `updatedOn` datetime DEFAULT NULL,
  `fileID` int(10) unsigned NOT NULL DEFAULT '0',
  `docStatus` int(10) unsigned NOT NULL DEFAULT '1',
  `CLType` enum('PCL','FCL') DEFAULT 'PCL',
  PRIMARY KEY (`MDID`),
  KEY `PCId` (`PCId`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblMissingDocuments_ibfk_2` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=382051 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblModPostSurvey`
-- ----------------------------
DROP TABLE IF EXISTS `tblModPostSurvey`;
CREATE TABLE `tblModPostSurvey` (
  `MSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BRID` int(11) DEFAULT NULL,
  `affiliatePackage` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `doingLoanModifications` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `loanModificationsMonth` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `clientChargesLow` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `clientChargesHigh` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `modificationCost` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `clientPaymentsName` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `subAffiliateOrAgentAccess` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `orientationSettings` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `buyingLoanModLeads` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `convenientTime` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`MSID`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblModuleFileTabs`
-- ----------------------------
DROP TABLE IF EXISTS `tblModuleFileTabs`;
CREATE TABLE `tblModuleFileTabs` (
  `MFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MID` int(10) unsigned NOT NULL,
  `tabName` varchar(50) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`MFID`),
  KEY `MID` (`MID`),
  KEY `tabName` (`tabName`),
  CONSTRAINT `tblModuleFileTabs_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `tblModules` (`MID`),
  CONSTRAINT `tblModuleFileTabs_ibfk_2` FOREIGN KEY (`tabName`) REFERENCES `tblFileTabs` (`tabName`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblModuleServices`
-- ----------------------------
DROP TABLE IF EXISTS `tblModuleServices`;
CREATE TABLE `tblModuleServices` (
  `MSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MID` int(10) unsigned NOT NULL,
  `STCode` varchar(10) NOT NULL,
  PRIMARY KEY (`MSID`),
  KEY `MID` (`MID`),
  CONSTRAINT `tblModuleServices_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `tblModules` (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=5018 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `moduleServices_h` BEFORE DELETE ON `tblModuleServices` FOR EACH ROW BEGIN
        IF (OLD.MSID>0) THEN
            INSERT INTO tblModuleServices_h (SELECT * FROM tblModuleServices WHERE MSID = OLD.MSID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblModuleServices_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tblModuleServices_copy`;
CREATE TABLE `tblModuleServices_copy` (
  `MSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MID` int(10) unsigned NOT NULL,
  `STCode` varchar(10) NOT NULL,
  PRIMARY KEY (`MSID`),
  KEY `MID` (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=4620 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblModuleServices_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblModuleServices_h`;
CREATE TABLE `tblModuleServices_h` (
  `MSID` int(10) unsigned NOT NULL,
  `MID` int(10) unsigned NOT NULL,
  `STCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblModules`;
CREATE TABLE `tblModules` (
  `MID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `moduleName` varchar(100) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `moduleNotes` text,
  PRIMARY KEY (`MID`),
  UNIQUE KEY `moduleCode` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblNVAEmployee`
-- ----------------------------
DROP TABLE IF EXISTS `tblNVAEmployee`;
CREATE TABLE `tblNVAEmployee` (
  `AID` int(10) unsigned NOT NULL DEFAULT '0',
  `state` varchar(20) DEFAULT NULL,
  `actualState` varchar(20) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `tempbarno` varchar(100) DEFAULT NULL,
  `barNo` varchar(100) DEFAULT NULL,
  `hourlyRate` varchar(30) DEFAULT NULL,
  `paralegalRate` varchar(30) DEFAULT NULL,
  `empEmail` varchar(75) DEFAULT NULL,
  `empSecondEmail` varchar(75) DEFAULT NULL,
  `mailingAddr` varchar(100) DEFAULT NULL,
  `officePhone` varchar(30) DEFAULT NULL,
  `cellPhone` varchar(30) DEFAULT NULL,
  `faxNo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblOccupancy`
-- ----------------------------
DROP TABLE IF EXISTS `tblOccupancy`;
CREATE TABLE `tblOccupancy` (
  `occupancyNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `displayNo` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`occupancyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblOccupancyFilter`
-- ----------------------------
DROP TABLE IF EXISTS `tblOccupancyFilter`;
CREATE TABLE `tblOccupancyFilter` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `occupancyNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2517 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblOtherProps`
-- ----------------------------
DROP TABLE IF EXISTS `tblOtherProps`;
CREATE TABLE `tblOtherProps` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `houseNumber` int(10) DEFAULT NULL,
  `street` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `city` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `state` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `zip` varchar(7) CHARACTER SET latin1 DEFAULT '',
  `loanIdNumber` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `servicer` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `mortBalance` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `currentValue` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `occupancy` varchar(21) CHARACTER SET latin1 DEFAULT '',
  `monthlyRent` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `monthlyMortPayment` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `status` varchar(4) CHARACTER SET latin1 DEFAULT '',
  `propType` int(5) DEFAULT NULL,
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  `OPITM` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `purchaseDate` date DEFAULT NULL,
  `purchasePrice` float DEFAULT NULL,
  `rehabBudget` float DEFAULT NULL,
  `entityName` varchar(75) DEFAULT NULL,
  `salePrice` float DEFAULT NULL,
  `soldDate` date DEFAULT NULL,
  `refinanceDate` date DEFAULT NULL,
  `amountFinanced` float DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblOtherProps_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=4036 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCAuditor`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCAuditor`;
CREATE TABLE `tblPCAuditor` (
  `AID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `auditorID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`AID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCAuditor_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCBranchAssociation`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCBranchAssociation`;
CREATE TABLE `tblPCBranchAssociation` (
  `PBID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `branchID` int(10) unsigned NOT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`PBID`),
  KEY `PBID` (`PBID`),
  KEY `PCID` (`PCID`),
  KEY `branchID` (`branchID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `PCID_2` (`PCID`,`activeStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5754 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCChecklist`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCChecklist`;
CREATE TABLE `tblPCChecklist` (
  `CID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `docName` longtext CHARACTER SET latin1,
  `docType` varchar(7) CHARACTER SET latin1 DEFAULT '',
  `dStatus` tinyint(4) DEFAULT '1',
  `serviceType` varchar(10) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `MFCID` int(11) DEFAULT '0',
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`CID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCChecklist_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=85121 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCChecklistModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCChecklistModules`;
CREATE TABLE `tblPCChecklistModules` (
  `PCMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `docName` longtext,
  `dStatus` tinyint(4) DEFAULT '1',
  `serviceType` varchar(18) NOT NULL,
  `moduleType` varchar(10) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  `MFCID` int(11) DEFAULT '0',
  `requiredFor` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`PCMID`),
  KEY `PCID` (`PCID`),
  KEY `moduleType` (`moduleType`),
  KEY `serviceType` (`serviceType`),
  CONSTRAINT `tblPCChecklistModules_ibfk_1` FOREIGN KEY (`moduleType`) REFERENCES `tblModules` (`moduleCode`),
  CONSTRAINT `tblPCChecklistModules_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=196712 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCChecklistRequiredBy`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCChecklistRequiredBy`;
CREATE TABLE `tblPCChecklistRequiredBy` (
  `PRID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCMID` int(10) unsigned NOT NULL,
  `requiredBy` enum('Branch','Broker','Lender','Borrower') DEFAULT 'Lender',
  `UID` int(11) DEFAULT '0',
  `URole` varchar(30) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PRID`),
  KEY `PCMID` (`PCMID`),
  KEY `requiredBy` (`requiredBy`),
  CONSTRAINT `tblPCChecklistRequiredBy_ibfk_1` FOREIGN KEY (`PCMID`) REFERENCES `tblPCChecklistModules` (`PCMID`)
) ENGINE=InnoDB AUTO_INCREMENT=1021889 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCChecklistUploadDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCChecklistUploadDocs`;
CREATE TABLE `tblPCChecklistUploadDocs` (
  `PCUDID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCMID` int(10) unsigned NOT NULL,
  `docID` int(10) unsigned NOT NULL,
  `fileID` int(10) unsigned NOT NULL,
  `UID` int(11) DEFAULT '0',
  `URole` varchar(30) NOT NULL DEFAULT '',
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `CLType` enum('PCL','FCL') DEFAULT 'PCL',
  PRIMARY KEY (`PCUDID`),
  KEY `PCMID` (`PCMID`),
  KEY `docID` (`docID`),
  KEY `fileID` (`fileID`),
  KEY `CLType` (`CLType`),
  CONSTRAINT `tblPCChecklistUploadDocs_ibfk_1` FOREIGN KEY (`docID`) REFERENCES `tblLMRFileDocs` (`docID`),
  CONSTRAINT `tblPCChecklistUploadDocs_ibfk_2` FOREIGN KEY (`PCMID`) REFERENCES `tblPCChecklistModules` (`PCMID`),
  CONSTRAINT `tblPCChecklistUploadDocs_ibfk_3` FOREIGN KEY (`fileID`) REFERENCES `tblLMRFileDocs` (`LMRID`)
) ENGINE=InnoDB AUTO_INCREMENT=11458 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCClientBackGroundInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCClientBackGroundInfo`;
CREATE TABLE `tblPCClientBackGroundInfo` (
  `CBGID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `PCID` int(11) unsigned NOT NULL,
  `isBorUSCitizen` varchar(5) DEFAULT 'NA',
  `isBorDecalredBankruptPastYears` varchar(5) DEFAULT 'NA',
  `isAnyBorOutstandingJudgements` varchar(5) DEFAULT 'NA',
  `hasBorAnyActiveLawsuits` varchar(5) DEFAULT 'NA',
  `hasBorPropertyTaxLiens` varchar(5) DEFAULT 'NA',
  `hasBorObligatedInForeclosure` varchar(5) DEFAULT 'NA',
  `isBorPresenltyDelinquent` varchar(5) DEFAULT 'NA',
  `isBorBorrowedDownPayment` varchar(5) DEFAULT 'NA',
  `isBorIntendToOccupyPropAsPRI` varchar(5) DEFAULT 'NA',
  `haveBorOtherFraudRelatedCrimes` varchar(5) DEFAULT 'NA',
  `isBorPersonallyGuaranteeLoan` varchar(5) DEFAULT 'NA',
  `isCoBorUSCitizen` varchar(5) DEFAULT 'NA',
  `isCoBorDecalredBankruptPastYears` varchar(5) DEFAULT 'NA',
  `isAnyCoBorOutstandingJudgements` varchar(5) DEFAULT 'NA',
  `hasCoBorAnyActiveLawsuits` varchar(5) DEFAULT 'NA',
  `hasCoBorPropertyTaxLiens` varchar(5) DEFAULT 'NA',
  `hasCoBorObligatedInForeclosure` varchar(5) DEFAULT 'NA',
  `isCoBorPresenltyDelinquent` varchar(5) DEFAULT 'NA',
  `isCoBorBorrowedDownPayment` varchar(5) DEFAULT 'NA',
  `isCoBorIntendToOccupyPropAsPRI` varchar(5) DEFAULT 'NA',
  `haveCoBorOtherFraudRelatedCrimes` varchar(5) DEFAULT 'NA',
  `isCoBorPersonallyGuaranteeLoan` varchar(5) DEFAULT 'NA',
  `borBackgroundExplanation` longtext,
  `coBorBackgroundExplanation` longtext,
  `borDecalredBankruptExpln` longtext,
  `borOutstandingJudgementsExpln` longtext,
  `borActiveLawsuitsExpln` longtext,
  `borPropertyTaxLiensExpln` longtext,
  `borObligatedInForeclosureExpln` longtext,
  `borDelinquentExpln` longtext,
  `borOtherFraudRelatedCrimesExpln` longtext,
  `borBorrowedDownPaymentExpln` longtext,
  `coBorDecalredBankruptExpln` longtext,
  `coBorOutstandingJudgementsExpln` longtext,
  `coBorActiveLawsuitsExpln` longtext,
  `coBorPropertyTaxLiensExpln` longtext,
  `coBorObligatedInForeclosureExpln` longtext,
  `coBorDelinquentExpln` longtext,
  `coBorOtherFraudRelatedCrimesExpln` longtext,
  `coBorBorrowedDownPaymentExpln` longtext,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `borOrigin` varchar(50) DEFAULT NULL,
  `borVisaStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CBGID`),
  KEY `CID` (`CID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCClientBackGroundInfo_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`),
  CONSTRAINT `tblPCClientBackGroundInfo_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3048 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCClientEntityInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCClientEntityInfo`;
CREATE TABLE `tblPCClientEntityInfo` (
  `CBEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `PCID` int(11) unsigned NOT NULL,
  `entityName` varchar(75) DEFAULT NULL,
  `entityType` varchar(75) DEFAULT NULL,
  `ENINo` varchar(25) DEFAULT NULL,
  `entityAddress` varchar(75) DEFAULT NULL,
  `entityCity` varchar(100) DEFAULT NULL,
  `entityState` varchar(10) DEFAULT NULL,
  `entityZip` varchar(10) DEFAULT NULL,
  `entityStateOfFormation` varchar(10) DEFAULT NULL,
  `entityNotes` text,
  `member1Name` varchar(75) DEFAULT NULL,
  `member1Title` varchar(75) DEFAULT NULL,
  `member1Ownership` float DEFAULT NULL,
  `member2Name` varchar(75) DEFAULT NULL,
  `member2Title` varchar(75) DEFAULT NULL,
  `member2Ownership` float DEFAULT NULL,
  `member3Name` varchar(75) DEFAULT NULL,
  `member3Title` varchar(75) DEFAULT NULL,
  `member3Ownership` float DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `member4Name` varchar(75) DEFAULT NULL,
  `member4Title` varchar(75) DEFAULT NULL,
  `member4Ownership` float DEFAULT NULL,
  `member5Name` varchar(75) DEFAULT NULL,
  `member5Title` varchar(75) DEFAULT NULL,
  `member5Ownership` float DEFAULT NULL,
  `member6Name` varchar(75) DEFAULT NULL,
  `member6Title` varchar(75) DEFAULT NULL,
  `member6Ownership` float DEFAULT NULL,
  `member7Name` varchar(75) DEFAULT NULL,
  `member7Title` varchar(75) DEFAULT NULL,
  `member7Ownership` float DEFAULT NULL,
  `member8Name` varchar(75) DEFAULT NULL,
  `member8Title` varchar(75) DEFAULT NULL,
  `member8Ownership` float DEFAULT NULL,
  `member9Name` varchar(75) DEFAULT NULL,
  `member9Title` varchar(75) DEFAULT NULL,
  `member9Ownership` float DEFAULT NULL,
  `member10Name` varchar(75) DEFAULT NULL,
  `member10Title` varchar(75) DEFAULT NULL,
  `member10Ownership` float DEFAULT NULL,
  `borrowerUnderEntity` varchar(5) NOT NULL DEFAULT '',
  `entityWebsite` varchar(250) DEFAULT NULL,
  `businessTypeEF` varchar(75) DEFAULT NULL,
  `organizationalRef` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`CBEID`),
  KEY `CID` (`CID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCClientEntityInfo_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`),
  CONSTRAINT `tblPCClientEntityInfo_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=4519 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCClientExperience`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCClientExperience`;
CREATE TABLE `tblPCClientExperience` (
  `CEID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CID` int(11) unsigned NOT NULL,
  `PCID` int(11) unsigned NOT NULL,
  `haveBorREInvestmentExperience` varchar(5) DEFAULT 'NA',
  `borNoOfREPropertiesCompleted` int(11) DEFAULT NULL,
  `haveBorRehabConstructionExperience` varchar(5) DEFAULT 'NA',
  `borNoOfYearRehabExperience` int(11) DEFAULT NULL,
  `borRehabPropCompleted` int(11) DEFAULT NULL,
  `haveBorProjectCurrentlyInProgress` varchar(5) DEFAULT 'NA',
  `borNoOfProjectCurrently` int(11) DEFAULT NULL,
  `haveBorOwnInvestmentProperties` varchar(5) DEFAULT 'NA',
  `borNoOfOwnProp` int(11) DEFAULT NULL,
  `areBorMemberOfInvestmentClub` varchar(5) DEFAULT 'NA',
  `borClubName` varchar(75) DEFAULT NULL,
  `borREAddress1` text,
  `borOutcomeRE1` varchar(20) DEFAULT NULL,
  `borREAddress2` text,
  `borOutcomeRE2` varchar(20) DEFAULT NULL,
  `borREAddress3` text,
  `borOutcomeRE3` varchar(20) DEFAULT NULL,
  `borRCAddress1` text,
  `borRCOutcome1` varchar(20) DEFAULT NULL,
  `borRCAddress2` text,
  `borRCOutcome2` varchar(20) DEFAULT NULL,
  `borRCAddress3` text,
  `borRCOutcome3` varchar(20) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `borNoOfFlippingExperience` int(11) DEFAULT NULL,
  `liquidAssets` int(11) DEFAULT NULL,
  `haveBorProfLicences` varchar(5) DEFAULT NULL,
  `borProfLicence` varchar(50) DEFAULT NULL,
  `fullTimeRealEstateInvestor` varchar(5) DEFAULT NULL,
  `areBuilderDeveloper` varchar(5) DEFAULT NULL,
  `amountOfFinancing` float DEFAULT NULL,
  `amountOfFinancingTo` float DEFAULT NULL,
  `typicalPurchasePrice` float DEFAULT NULL,
  `typicalPurchasePriceTo` float DEFAULT NULL,
  `typicalConstructionCosts` float DEFAULT NULL,
  `typicalConstructionCostsTo` float DEFAULT NULL,
  `typicalSalePrice` float DEFAULT NULL,
  `typicalSalePriceTo` float DEFAULT NULL,
  `constructionDrawsPerProject` int(11) DEFAULT NULL,
  `constructionDrawsPerProjectTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateToFirstConst` int(11) DEFAULT NULL,
  `monthsPurchaseDateToFirstConstTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateUntilConst` int(11) DEFAULT NULL,
  `monthsPurchaseDateUntilConstTo` int(11) DEFAULT NULL,
  `monthsPurchaseDateToSaleDate` int(11) DEFAULT NULL,
  `monthsPurchaseDateToSaleDateTo` int(11) DEFAULT NULL,
  `NoOfSuchProjects` int(11) DEFAULT NULL,
  `NoOfSuchProjectsTo` int(11) DEFAULT NULL,
  `haveBorSellPropertie` varchar(5) DEFAULT NULL,
  `borNoOfProSellExperience` tinyint(4) DEFAULT NULL,
  `borNoOfProSellCompleted` tinyint(4) DEFAULT NULL,
  `borPrimaryInvestmentStrategy` varchar(100) DEFAULT NULL,
  `borPrimaryInvestmentStrategyExplain` text,
  PRIMARY KEY (`CEID`),
  KEY `CID` (`CID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCClientExperience_ibfk_1` FOREIGN KEY (`CID`) REFERENCES `tblClient` (`CID`),
  CONSTRAINT `tblPCClientExperience_ibfk_2` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3663 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCCustomDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCCustomDocs`;
CREATE TABLE `tblPCCustomDocs` (
  `CCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `docTitle` varchar(200) DEFAULT NULL,
  `docContent` longtext CHARACTER SET latin1,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedUserType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL,
  `dStatus` tinyint(4) DEFAULT '1',
  `eSignable` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`CCID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCCustomDocs_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=1636 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileDoc`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileDoc`;
CREATE TABLE `tblPCFileDoc` (
  `PFDID` int(11) NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `docName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dispOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `categoryId` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PFDID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCFileDoc_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=44499 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileDocCategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileDocCategory`;
CREATE TABLE `tblPCFileDocCategory` (
  `PFDCID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `category` varchar(200) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PFDCID`),
  UNIQUE KEY `category` (`category`,`PCID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCFileDocCategory_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3901 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileDocModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileDocModules`;
CREATE TABLE `tblPCFileDocModules` (
  `PFDMID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `docId` int(11) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`PFDMID`),
  UNIQUE KEY `docId_2` (`docId`,`moduleCode`),
  KEY `docId` (`docId`),
  KEY `moduleCode` (`moduleCode`),
  CONSTRAINT `tblPCFileDocModules_ibfk_1` FOREIGN KEY (`docId`) REFERENCES `tblPCFileDoc` (`PFDID`),
  CONSTRAINT `tblPCFileDocModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=143707 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileSubstatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileSubstatus`;
CREATE TABLE `tblPCFileSubstatus` (
  `PFSID` int(11) NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `substatus` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dispOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `tempFID` int(11) DEFAULT NULL,
  `categoryId` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`PFSID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCFileSubstatus_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=273402 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileSubstatusCategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileSubstatusCategory`;
CREATE TABLE `tblPCFileSubstatusCategory` (
  `PSCID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `category` varchar(200) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PSCID`),
  UNIQUE KEY `category` (`category`,`PCID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCFileSubstatusCategory_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=32146 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileSubstatusModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileSubstatusModules`;
CREATE TABLE `tblPCFileSubstatusModules` (
  `PSMID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `substatusId` int(11) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`PSMID`),
  UNIQUE KEY `substatusId_2` (`substatusId`,`moduleCode`),
  KEY `substatusId` (`substatusId`),
  KEY `moduleCode` (`moduleCode`),
  CONSTRAINT `tblPCFileSubstatusModules_ibfk_1` FOREIGN KEY (`substatusId`) REFERENCES `tblPCFileSubstatus` (`PFSID`),
  CONSTRAINT `tblPCFileSubstatusModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=1089402 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `PCFileSubstatusModules_h` BEFORE DELETE ON `tblPCFileSubstatusModules` FOR EACH ROW BEGIN
        IF (OLD.PSMID>0) THEN
            INSERT INTO tblPCFileSubstatusModules_h (SELECT * FROM tblPCFileSubstatusModules WHERE PSMID = OLD.PSMID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblPCFileSubstatusModules_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileSubstatusModules_h`;
CREATE TABLE `tblPCFileSubstatusModules_h` (
  `PSMID` int(11) DEFAULT NULL,
  `substatusId` int(11) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCFileTabsOrder`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCFileTabsOrder`;
CREATE TABLE `tblPCFileTabsOrder` (
  `PFTID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tabName` varchar(50) NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PFTID`),
  KEY `PCID` (`PCID`),
  KEY `tabName` (`tabName`),
  CONSTRAINT `tblPCFileTabsOrder_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCFileTabsOrder_ibfk_2` FOREIGN KEY (`tabName`) REFERENCES `tblFileTabs` (`tabName`)
) ENGINE=InnoDB AUTO_INCREMENT=1070 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanExtensionOption`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanExtensionOption`;
CREATE TABLE `tblPCHMLOBasicLoanExtensionOption` (
  `EPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `extnOption` int(11) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`EPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanExtensionOption_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanExtensionOption_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=590 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanInfo`;
CREATE TABLE `tblPCHMLOBasicLoanInfo` (
  `BLID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `minLoanAmount` float NOT NULL,
  `minRate` decimal(10,2) DEFAULT '0.00',
  `minPoints` float NOT NULL,
  `maxLoanAmount` float NOT NULL,
  `maxRate` decimal(10,2) DEFAULT '0.00',
  `maxPoints` float NOT NULL,
  `originationPointsRate` decimal(10,2) DEFAULT '0.00',
  `originationPointsValue` float NOT NULL,
  `brokerPointsRate` decimal(10,2) DEFAULT '0.00',
  `brokerPointsValue` float NOT NULL,
  `applicationFee` float NOT NULL,
  `estdTitleClosingFee` float NOT NULL,
  `processingFee` float NOT NULL,
  `appraisalFee` float NOT NULL,
  `drawsSetUpFee` float NOT NULL,
  `drawsFee` float NOT NULL,
  `miscellaneousFee` float NOT NULL,
  `closingCostFinanced` float NOT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  `loanPgmDetails` longtext,
  `PCBorrCreditScoreRange` text,
  `valuationBPOFee` float DEFAULT NULL,
  `valuationAVMFee` float DEFAULT NULL,
  `creditReportFee` float DEFAULT NULL,
  `backgroundCheckFee` float DEFAULT NULL,
  `floodCertificateFee` float DEFAULT NULL,
  `documentPreparationFee` float DEFAULT NULL,
  `wireFee` float DEFAULT NULL,
  `servicingSetUpFee` float DEFAULT NULL,
  `taxServiceFee` float DEFAULT NULL,
  `floodServiceFee` float DEFAULT NULL,
  `inspectionFees` float DEFAULT NULL,
  `projectFeasibility` float DEFAULT NULL,
  `dueDiligence` float DEFAULT NULL,
  `UccLienSearch` float DEFAULT NULL,
  `otherFee` float DEFAULT NULL,
  `taxImpoundsMonth` float DEFAULT NULL,
  `taxImpoundsFee` float DEFAULT NULL,
  `taxImpoundsMonthAmt` float DEFAULT NULL,
  `thirdPartyFees` float DEFAULT NULL,
  `insImpoundsMonth` float DEFAULT NULL,
  `insImpoundsFee` float DEFAULT NULL,
  `insImpoundsMonthAmt` float DEFAULT NULL,
  `downPaymentPercentage` varchar(11) DEFAULT NULL,
  `rehabCostPercentageFinanced` varchar(11) DEFAULT NULL,
  `reqForLoanProUnderwriting` text,
  `closingCostFinancingFee` float DEFAULT NULL,
  `liquidAssets` int(11) DEFAULT NULL,
  `attorneyFee` float DEFAULT NULL,
  `prePaidInterest` float DEFAULT NULL,
  `realEstateTaxes` float DEFAULT NULL,
  `insurancePremium` float DEFAULT NULL,
  `bufferAndMessengerFee` float DEFAULT NULL,
  `travelNotaryFee` float DEFAULT NULL,
  `underwritingFees` float DEFAULT NULL,
  `propertyTax` float DEFAULT NULL,
  `escrowFees` float DEFAULT NULL,
  `recordingFee` float DEFAULT NULL,
  `payOffLiensCreditors` float DEFAULT NULL,
  `wireTransferFeeToTitle` float DEFAULT NULL,
  `wireTransferFeeToEscrow` float DEFAULT NULL,
  `pastDuePropertyTaxes` float DEFAULT NULL,
  PRIMARY KEY (`BLID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanNichesInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanNichesInfo`;
CREATE TABLE `tblPCHMLOBasicLoanNichesInfo` (
  `NPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `nichesID` int(11) unsigned NOT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`NPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanNichesInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanNichesInfo_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanOccupancy`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanOccupancy`;
CREATE TABLE `tblPCHMLOBasicLoanOccupancy` (
  `OPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `occupancy` varchar(30) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`OPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanOccupancy_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanOccupancy_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanPgmInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanPgmInfo`;
CREATE TABLE `tblPCHMLOBasicLoanPgmInfo` (
  `LPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `loanPgm` varchar(10) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`LPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanPgmInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanPgmInfo_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=953 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanPropertyType`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanPropertyType`;
CREATE TABLE `tblPCHMLOBasicLoanPropertyType` (
  `PTID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `propertyType` varchar(30) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`PTID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanPropertyType_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanPropertyType_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=3879 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanStateInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanStateInfo`;
CREATE TABLE `tblPCHMLOBasicLoanStateInfo` (
  `SPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `stateCode` varchar(10) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`SPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanStateInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanStateInfo_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=11617 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanTermInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanTermInfo`;
CREATE TABLE `tblPCHMLOBasicLoanTermInfo` (
  `TIID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `loanTerm` varchar(75) DEFAULT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`TIID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanTermInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanTermInfo_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=1178 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCHMLOBasicLoanTransactionType`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCHMLOBasicLoanTransactionType`;
CREATE TABLE `tblPCHMLOBasicLoanTransactionType` (
  `TPID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) unsigned NOT NULL,
  `BLID` int(11) unsigned NOT NULL,
  `transactionType` varchar(75) DEFAULT NULL,
  `maxLTV` float NOT NULL,
  `maxLTVAfterRehab` float NOT NULL,
  `UID` int(11) NOT NULL,
  `UType` enum('Employee','Branch','Agent','Client','Super') DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`TPID`),
  KEY `PCID` (`PCID`),
  KEY `BLID` (`BLID`),
  CONSTRAINT `tblPCHMLOBasicLoanTransactionType_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCHMLOBasicLoanTransactionType_ibfk_2` FOREIGN KEY (`BLID`) REFERENCES `tblPCHMLOBasicLoanInfo` (`BLID`)
) ENGINE=InnoDB AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCModules`;
CREATE TABLE `tblPCModules` (
  `PMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  `subscribedStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`PMID`),
  KEY `PMID` (`PMID`),
  KEY `PCID` (`PCID`),
  KEY `moduleCode` (`moduleCode`),
  CONSTRAINT `tblPCModules_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=16461 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCNotes`;
CREATE TABLE `tblPCNotes` (
  `PNID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `PCRemarks` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`PNID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCNotes_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=8672 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCPrimeStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCPrimeStatus`;
CREATE TABLE `tblPCPrimeStatus` (
  `PSID` int(11) NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `primaryStatus` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `dispOrder` int(11) DEFAULT NULL,
  `allowOthersToUpdate` tinyint(4) DEFAULT '1',
  `activeStatus` tinyint(4) DEFAULT '1',
  `statusDesc` longtext CHARACTER SET latin1,
  `allowAgentToEditFile` tinyint(4) DEFAULT '0',
  `allowClientToEditFile` tinyint(4) DEFAULT '0',
  `allowBOToEditFile` int(11) DEFAULT '1',
  `showFSInDash` tinyint(4) DEFAULT '1',
  `showFSInCP` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`PSID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCPrimeStatus_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=54295 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCPrimeStatusModules`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCPrimeStatusModules`;
CREATE TABLE `tblPCPrimeStatusModules` (
  `PSMID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `primeStatusId` int(11) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`PSMID`),
  KEY `substatusId` (`primeStatusId`),
  KEY `moduleCode` (`moduleCode`),
  CONSTRAINT `tblPCPrimeStatusModules_ibfk_1` FOREIGN KEY (`primeStatusId`) REFERENCES `tblPCPrimeStatus` (`PSID`),
  CONSTRAINT `tblPCPrimeStatusModules_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=234941 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `PCFileStatusModules_h` BEFORE DELETE ON `tblPCPrimeStatusModules` FOR EACH ROW BEGIN
        IF (OLD.PSMID>0) THEN
            INSERT INTO tblPCPrimeStatusModules_h (SELECT * FROM tblPCPrimeStatusModules WHERE PSMID = OLD.PSMID);
                  
        END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblPCPrimeStatusModules_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCPrimeStatusModules_h`;
CREATE TABLE `tblPCPrimeStatusModules_h` (
  `PSMID` int(11) unsigned NOT NULL,
  `primeStatusId` int(11) NOT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `displayOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCRAMAffiliateInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCRAMAffiliateInfo`;
CREATE TABLE `tblPCRAMAffiliateInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `affiliateName` varchar(70) NOT NULL DEFAULT '',
  `feeGroup` varchar(40) NOT NULL DEFAULT '',
  `affiliateID` varchar(40) NOT NULL DEFAULT '',
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCRAMAffiliateInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCRAMAttorneyInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCRAMAttorneyInfo`;
CREATE TABLE `tblPCRAMAttorneyInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `attorneyNo` int(10) unsigned NOT NULL,
  `attorneyKey` longtext,
  `feeGroup` varchar(40) NOT NULL DEFAULT '',
  `RAMAttorneyID` varchar(40) NOT NULL DEFAULT '',
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  `feeSplit` varchar(40) NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  KEY `attorneyNo` (`attorneyNo`),
  CONSTRAINT `tblPCRAMAttorneyInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCRAMFeeGroupInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCRAMFeeGroupInfo`;
CREATE TABLE `tblPCRAMFeeGroupInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `programName` varchar(70) NOT NULL DEFAULT '',
  `retainerPCFee` varchar(40) NOT NULL DEFAULT '',
  `retainerAttorneyFee` varchar(40) NOT NULL DEFAULT '',
  `retainerAffiliateFee` varchar(40) NOT NULL DEFAULT '',
  `recurringPCFee` varchar(40) NOT NULL DEFAULT '',
  `recurringAttorneyFee` varchar(40) NOT NULL DEFAULT '',
  `recurringAffiliateFee` varchar(40) NOT NULL DEFAULT '',
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCRAMFeeGroupInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCRAMVendorInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCRAMVendorInfo`;
CREATE TABLE `tblPCRAMVendorInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `vendorName` varchar(70) NOT NULL DEFAULT '',
  `vendorKey` longtext,
  `feeGroup` varchar(40) NOT NULL DEFAULT '',
  `affiliateID` varchar(40) NOT NULL DEFAULT '',
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCRAMVendorInfo_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCSSFileChecklist`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCSSFileChecklist`;
CREATE TABLE `tblPCSSFileChecklist` (
  `PFCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FCID` int(11) DEFAULT NULL,
  `PCID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`PFCID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCSSFileChecklist_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=173845 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCSecondaryWFRule`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCSecondaryWFRule`;
CREATE TABLE `tblPCSecondaryWFRule` (
  `RID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `WFID` int(10) unsigned NOT NULL,
  `mainWFSID` int(11) NOT NULL,
  `secWFSID` int(11) NOT NULL,
  `dStatus` tinyint(1) NOT NULL DEFAULT '0',
  `assignedByUID` int(11) DEFAULT '0',
  `assignedByURole` varchar(10) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RID`),
  KEY `NewIndex1` (`mainWFSID`),
  KEY `NewIndex2` (`secWFSID`),
  KEY `PCID` (`PCID`),
  KEY `WFID` (`WFID`),
  CONSTRAINT `tblPCSecondaryWFRule_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblPCSecondaryWFRule_ibfk_2` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`),
  CONSTRAINT `tblPCSecondaryWFRule_ibfk_3` FOREIGN KEY (`mainWFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`),
  CONSTRAINT `tblPCSecondaryWFRule_ibfk_4` FOREIGN KEY (`secWFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCShowFileTabs`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCShowFileTabs`;
CREATE TABLE `tblPCShowFileTabs` (
  `SFTID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `tabName` varchar(50) DEFAULT NULL,
  `showTabs` tinyint(1) NOT NULL DEFAULT '1',
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `recordDate` datetime NOT NULL,
  PRIMARY KEY (`SFTID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCShowFileTabs_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCUpdateDay`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCUpdateDay`;
CREATE TABLE `tblPCUpdateDay` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `allowToSend` tinyint(4) DEFAULT '0',
  `WeekDay` int(11) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCUpdateDay_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=4224 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCUploadDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCUploadDocs`;
CREATE TABLE `tblPCUploadDocs` (
  `DID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `categoryID` int(11) DEFAULT NULL,
  `category_old_services` varchar(10) DEFAULT NULL,
  `fileName` longtext CHARACTER SET latin1,
  `displayDocName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `docName` longtext,
  `category` varchar(10) DEFAULT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCUploadDocs_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=1347 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWFServiceType`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWFServiceType`;
CREATE TABLE `tblPCWFServiceType` (
  `STID` int(11) NOT NULL AUTO_INCREMENT,
  `WFID` int(10) unsigned NOT NULL,
  `WFServiceType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`STID`),
  KEY `WFID` (`WFID`),
  CONSTRAINT `tblPCWFServiceType_ibfk_1` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`)
) ENGINE=InnoDB AUTO_INCREMENT=13276 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflow`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflow`;
CREATE TABLE `tblPCWorkflow` (
  `WFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `WFName` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `WFOrder` int(11) NOT NULL DEFAULT '0',
  `dStatus` tinyint(4) DEFAULT '1',
  `showWorkFlowborrower` int(11) DEFAULT '0',
  PRIMARY KEY (`WFID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblPCWorkflow_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=5796 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowEvent`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowEvent`;
CREATE TABLE `tblPCWorkflowEvent` (
  `WEID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WFSID` int(11) NOT NULL,
  `noOfDays` int(10) NOT NULL DEFAULT '0',
  `rule1` enum('BEFORE','ON','AFTER') NOT NULL DEFAULT 'ON',
  `referralDate` enum('','HAFADate','saleDate','lastPaymentDate','fileCreatedDate','receivedDate','closedDate','lenderSubmissionDate','dateModReceived','dateModPayment','workflowActivation','borrowerCallBackDate','lenderCallBackDate','lastUpdatedDate','appealDate','trialPaymentDate1','loanTermExpireDate','proInsPolicyExpDate','maturityDate','PAExpirationDate','dateNoteSigned','propertyTaxDueDate') DEFAULT NULL,
  `event` enum('task','email','stdUpdateEmail') NOT NULL DEFAULT 'task',
  `sms` int(10) NOT NULL DEFAULT '0',
  `reminderSms` int(10) NOT NULL DEFAULT '0',
  `reminderEmail` int(10) NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `comments` longtext,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Employee','Super') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `bridgeCall` int(11) NOT NULL DEFAULT '0',
  `roboCall` int(11) NOT NULL DEFAULT '0',
  `bridgeCallUser` varchar(100) NOT NULL DEFAULT '',
  `liveGreeting` longtext NOT NULL,
  `answerMachineGreeting` longtext NOT NULL,
  `pressTransfer` varchar(30) NOT NULL DEFAULT '',
  `callerID` varchar(30) NOT NULL DEFAULT '',
  `emailCampaignID` int(11) NOT NULL DEFAULT '0',
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  `fromRole` varchar(50) NOT NULL DEFAULT '',
  `fromEmail` varchar(75) NOT NULL DEFAULT '',
  `eventStatus` enum('In Progress','Not Started','Completed') NOT NULL DEFAULT 'In Progress',
  PRIMARY KEY (`WEID`),
  KEY `WFSID` (`WFSID`),
  CONSTRAINT `tblPCWorkflowEvent_ibfk_1` FOREIGN KEY (`WFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`)
) ENGINE=InnoDB AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowEventDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowEventDocs`;
CREATE TABLE `tblPCWorkflowEventDocs` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WEID` int(10) unsigned NOT NULL,
  `docName` longtext,
  `UID` int(10) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `UType` varchar(10) DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  `docDisplayName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `WEID` (`WEID`),
  CONSTRAINT `tblPCWorkflowEventDocs_ibfk_1` FOREIGN KEY (`WEID`) REFERENCES `tblPCWorkflowEvent` (`WEID`)
) ENGINE=InnoDB AUTO_INCREMENT=330 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowEventNotificationEmployees`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowEventNotificationEmployees`;
CREATE TABLE `tblPCWorkflowEventNotificationEmployees` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WEID` int(10) unsigned NOT NULL,
  `EID` int(10) unsigned NOT NULL,
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `WEID` (`WEID`),
  CONSTRAINT `tblPCWorkflowEventNotificationEmployees_ibfk_1` FOREIGN KEY (`WEID`) REFERENCES `tblPCWorkflowEvent` (`WEID`)
) ENGINE=InnoDB AUTO_INCREMENT=1178 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowEventNotificationUsers`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowEventNotificationUsers`;
CREATE TABLE `tblPCWorkflowEventNotificationUsers` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WEID` int(10) unsigned NOT NULL,
  `scheduleUType` varchar(100) NOT NULL,
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `WEID` (`WEID`),
  CONSTRAINT `tblPCWorkflowEventNotificationUsers_ibfk_1` FOREIGN KEY (`WEID`) REFERENCES `tblPCWorkflowEvent` (`WEID`)
) ENGINE=InnoDB AUTO_INCREMENT=3227 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowEventReminders`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowEventReminders`;
CREATE TABLE `tblPCWorkflowEventReminders` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WEID` int(10) unsigned NOT NULL,
  `noOfDays` int(10) NOT NULL DEFAULT '0',
  `rule1` enum('BEFORE','ON','AFTER') NOT NULL DEFAULT 'ON',
  `referralDate` enum('','HAFADate','saleDate','lastPaymentDate','fileCreatedDate','receivedDate','closedDate','lenderSubmissionDate','dateModReceived','dateModPayment','workflowActivation','trialPaymentDate1','loanTermExpireDate') DEFAULT '',
  `activeStatus` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `WEID` (`WEID`),
  CONSTRAINT `tblPCWorkflowEventReminders_ibfk_1` FOREIGN KEY (`WEID`) REFERENCES `tblPCWorkflowEvent` (`WEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPCWorkflowSteps`
-- ----------------------------
DROP TABLE IF EXISTS `tblPCWorkflowSteps`;
CREATE TABLE `tblPCWorkflowSteps` (
  `WFSID` int(11) NOT NULL AUTO_INCREMENT,
  `WFID` int(10) unsigned NOT NULL,
  `steps` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `dispOrder` int(11) DEFAULT NULL,
  `dStatus` tinyint(4) DEFAULT '1',
  `description` text,
  PRIMARY KEY (`WFSID`),
  KEY `WFID` (`WFID`),
  CONSTRAINT `tblPCWorkflowSteps_ibfk_1` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`)
) ENGINE=InnoDB AUTO_INCREMENT=50049 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOCreditCardType`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOCreditCardType`;
CREATE TABLE `tblPLOCreditCardType` (
  `PID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEID` int(10) unsigned NOT NULL,
  `creditCardType` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`PID`),
  KEY `LMRAEID` (`LMRAEID`),
  CONSTRAINT `tblPLOCreditCardType_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=2053 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOFeatureOrder`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOFeatureOrder`;
CREATE TABLE `tblPLOFeatureOrder` (
  `FID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `featureId` int(10) unsigned NOT NULL,
  `displayOrder` int(10) unsigned NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `executiveId` int(11) NOT NULL,
  PRIMARY KEY (`FID`),
  KEY `featureId` (`featureId`),
  CONSTRAINT `tblPLOFeatureOrder_ibfk_1` FOREIGN KEY (`featureId`) REFERENCES `tblPLOFeatures` (`FID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOFeatures`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOFeatures`;
CREATE TABLE `tblPLOFeatures` (
  `FID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `executiveId` int(10) unsigned NOT NULL,
  `feature` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `featureNotes` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `displayOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FID`),
  KEY `executiveId` (`executiveId`),
  CONSTRAINT `tblPLOFeatures_ibfk_1` FOREIGN KEY (`executiveId`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOHearAbout`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOHearAbout`;
CREATE TABLE `tblPLOHearAbout` (
  `HID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRAEID` int(10) unsigned NOT NULL,
  `hearAbout` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`HID`),
  KEY `FK_tblPLOHearAbout` (`LMRAEID`),
  CONSTRAINT `tblPLOHearAbout_ibfk_1` FOREIGN KEY (`LMRAEID`) REFERENCES `tblBranch` (`executiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=446 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOPlanFeatures`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOPlanFeatures`;
CREATE TABLE `tblPLOPlanFeatures` (
  `PFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `planId` int(11) DEFAULT NULL,
  `featureId` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`PFID`)
) ENGINE=InnoDB AUTO_INCREMENT=36456 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPLOPlans`
-- ----------------------------
DROP TABLE IF EXISTS `tblPLOPlans`;
CREATE TABLE `tblPLOPlans` (
  `PPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `executiveId` int(11) DEFAULT NULL,
  `planName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `planNo` int(11) DEFAULT '0',
  `feeAmount` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`PPID`)
) ENGINE=InnoDB AUTO_INCREMENT=747 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPackageAccess`
-- ----------------------------
DROP TABLE IF EXISTS `tblPackageAccess`;
CREATE TABLE `tblPackageAccess` (
  `HID` int(11) NOT NULL AUTO_INCREMENT,
  `PKGID` int(11) DEFAULT '0',
  `PCID` int(11) NOT NULL DEFAULT '0',
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `UserType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `actions` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `updatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`HID`),
  KEY `PCID` (`PCID`),
  KEY `LMRId` (`LMRId`),
  KEY `PKGID` (`PKGID`),
  CONSTRAINT `tblPackageAccess_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=869581 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPipelineAccess`
-- ----------------------------
DROP TABLE IF EXISTS `tblPipelineAccess`;
CREATE TABLE `tblPipelineAccess` (
  `RAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT '0',
  `viewedDate` datetime DEFAULT NULL,
  `SID` varchar(200) CHARACTER SET latin1 DEFAULT '',
  `IPAddr` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `remarks` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `userType` enum('Employee','Admin','Super','Client','Branch','Agent','DIY Client','LMR','REST','Sales','') CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`RAID`)
) ENGINE=InnoDB AUTO_INCREMENT=24477334 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPrincipalResidenceInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPrincipalResidenceInfo`;
CREATE TABLE `tblPrincipalResidenceInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `propertyAddress` varchar(70) NOT NULL DEFAULT '',
  `loanNumber` varchar(20) NOT NULL DEFAULT '',
  `loanNumber2` varchar(20) NOT NULL DEFAULT '',
  `lien1PIPayment` varchar(30) NOT NULL,
  `lien2PIPayment` varchar(30) NOT NULL,
  `lien2servicer` varchar(70) NOT NULL DEFAULT '',
  `monthlyInsurance` varchar(30) NOT NULL,
  `floodInsurance` varchar(30) NOT NULL,
  `HOAFees` varchar(30) NOT NULL,
  `HOAName` varchar(60) NOT NULL DEFAULT '',
  `propertySale` varchar(10) DEFAULT 'NA',
  `monthlyTaxes` varchar(30) NOT NULL,
  `agentName` varchar(60) NOT NULL DEFAULT '',
  `agentPhonenumber` varchar(30) NOT NULL DEFAULT '',
  `listDate` date NOT NULL DEFAULT '0000-00-00',
  `purchaseOffer` varchar(10) DEFAULT 'NA',
  `amountOffer` varchar(30) NOT NULL,
  `closingDate` date NOT NULL DEFAULT '0000-00-00',
  `HOAFeeCurrent` varchar(10) NOT NULL DEFAULT 'NA',
  `mortgagePayment` varchar(10) NOT NULL DEFAULT 'NA',
  `taxesInsurance` varchar(10) NOT NULL DEFAULT 'NA',
  `otherLiensPRI` varchar(10) NOT NULL DEFAULT 'NA',
  `condominiumHOAFeePRI` varchar(10) NOT NULL DEFAULT 'NA',
  `lien1servicer` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblPrincipalResidenceInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProcessingCompany`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompany`;
CREATE TABLE `tblProcessingCompany` (
  `PCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `processingCompanyName` varchar(60) DEFAULT '',
  `attorneyFName` varchar(25) DEFAULT '',
  `attorneyMName` varchar(5) DEFAULT '',
  `attorneyLName` varchar(25) DEFAULT '',
  `attorneyTelephone` varchar(25) DEFAULT '',
  `attorneyFascimile` varchar(20) DEFAULT '',
  `attorneyAddress` varchar(100) DEFAULT '',
  `attorneyCity` varchar(50) DEFAULT '',
  `attorneyState` varchar(10) DEFAULT '',
  `attorneyZipCode` varchar(10) DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `attorneyEmail` varchar(75) DEFAULT '',
  `procCompLogo` varchar(100) DEFAULT '',
  `processingCompanyWebsite` varchar(250) DEFAULT '',
  `allowToCreateBranch` tinyint(4) DEFAULT '0',
  `timeZone` varchar(10) DEFAULT 'EST',
  `allowToCreateEmployee` tinyint(4) DEFAULT '0',
  `allowToSendUpdateToClient` int(11) DEFAULT '1',
  `allowToOnOffAgentLogin` int(11) DEFAULT '1',
  `PCARBDuration` varchar(5) DEFAULT '0',
  `PCExpiryDate` datetime DEFAULT NULL,
  `noOfBranches` int(11) DEFAULT '1',
  `attorneyCell` varchar(20) DEFAULT '',
  `regnFor` varchar(100) DEFAULT '',
  `doingLM` varchar(5) DEFAULT '',
  `totalPotentialUsers` int(11) DEFAULT '0',
  `companyGoals` longtext,
  `nUsers_old` int(11) DEFAULT '0',
  `nEmps` int(11) DEFAULT '0',
  `nBranches` int(11) DEFAULT '0',
  `nDIYs` int(11) DEFAULT '0',
  `nAgents` int(11) DEFAULT '0',
  `nDIYPlatform` int(11) DEFAULT '0',
  `stdWebsiteReq` int(11) DEFAULT '0',
  `premiumWebsiteReq` int(11) DEFAULT '0',
  `dataImport` int(11) DEFAULT '0',
  `dStatus` tinyint(4) DEFAULT '0',
  `setupFee` int(11) DEFAULT '0',
  `userRegEmail` varchar(75) DEFAULT '',
  `nUsers` int(11) DEFAULT '0',
  `salesRep` varchar(50) DEFAULT '',
  `serverInfoUserSetting` int(11) DEFAULT '0',
  `subscriberID` varchar(30) DEFAULT '',
  `allowToEditLenderList` int(11) DEFAULT '0',
  `allowToEditServiceReq` int(11) DEFAULT '0',
  `useMyNameAndEmail` enum('0','1','branch') DEFAULT '0',
  `allowPCToViewAddOn` int(11) DEFAULT '1',
  `allowESignService` int(11) DEFAULT '1',
  `FAServiceRequired` int(11) DEFAULT '0',
  `FAFee` decimal(13,2) DEFAULT '0.00',
  `forensicAuditCompany` int(11) DEFAULT '0',
  `allowBOToUseCredit` int(11) DEFAULT '0',
  `allowBranchToUseCredit` int(11) DEFAULT '0',
  `allowAgentToUseCredit` int(11) DEFAULT '0',
  `allowClientToUseCredit` int(11) DEFAULT '0',
  `showLAMsg` int(11) DEFAULT '1',
  `sendMassEmailToClient` int(11) DEFAULT '0',
  `allowUBAToUpAndDowngradeClient` int(11) DEFAULT '1',
  `owedFlag` int(11) DEFAULT '1',
  `EINNumber` int(11) DEFAULT '0',
  `websiteTemplate` varchar(5) DEFAULT '',
  `privateLabeled` varchar(5) DEFAULT '',
  `sendFax` int(11) DEFAULT '1',
  `allowEmailCampaign` tinyint(4) DEFAULT '0',
  `isPLO` tinyint(4) DEFAULT '0',
  `subscribeToREST` tinyint(4) DEFAULT '1',
  `allow3WayCall` tinyint(4) DEFAULT '1',
  `procCompFooterLogo` varchar(100) DEFAULT '',
  `faxInfoUserSetting` tinyint(4) DEFAULT '0',
  `fluidLayout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `PCDeactivatedDate` datetime DEFAULT NULL,
  `subscribeToHOME` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowToLASubmitForPC` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HRFee` int(11) NOT NULL DEFAULT '0',
  `theme` int(10) unsigned NOT NULL DEFAULT '1',
  `allowToViewFSSF` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isSysNotesPrivate` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `allowToCFPBSubmitForPC` tinyint(1) NOT NULL DEFAULT '0',
  `allowPCUserToSubmitCFPB` tinyint(1) NOT NULL DEFAULT '1',
  `allowPCToSendCustomText` tinyint(1) DEFAULT '0',
  `lenderPayableInfo` text,
  `stateOfIncorporation` varchar(10) DEFAULT NULL,
  `servicerName` varchar(60) DEFAULT NULL,
  `servicerAddress` varchar(100) DEFAULT NULL,
  `servicerEmail` varchar(75) DEFAULT NULL,
  `servicerPhone` varchar(25) DEFAULT NULL,
  `showStateMapInDash` tinyint(1) DEFAULT '1',
  `showFSCntInDash` tinyint(1) DEFAULT NULL,
  `payoffPhoneNo` varchar(25) DEFAULT NULL,
  `payOffRequestEmail` varchar(75) DEFAULT NULL,
  `borrowerLoginURL` text,
  `NMLSID` varchar(25) DEFAULT NULL,
  `notesType` varchar(200) DEFAULT NULL,
  `showSysGenNote` int(11) DEFAULT '1',
  `hideBorrowerInfo` tinyint(1) DEFAULT '0',
  `loanNumberPrefix` int(11) DEFAULT NULL,
  `showStartLoanNumber` int(11) DEFAULT '0',
  PRIMARY KEY (`PCID`),
  KEY `processingCompanyName` (`processingCompanyName`),
  KEY `attorneyFName` (`attorneyFName`),
  KEY `attorneyMName` (`attorneyMName`),
  KEY `attorneyLName` (`attorneyLName`),
  KEY `attorneyEmail` (`attorneyEmail`),
  KEY `activeStatus` (`activeStatus`),
  KEY `dStatus` (`dStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3311 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `insert_last_loan_number` AFTER INSERT ON `tblProcessingCompany` FOR EACH ROW BEGIN
		DECLARE cnt INT DEFAULT 0;
		DECLARE cnt2 INT DEFAULT 0;
		DECLARE nn INT DEFAULT 0;
		IF (NEW.showStartLoanNumber) THEN
			SET cnt = (SELECT lastLoanNumber FROM tblLoanNumbers WHERE PCID = new.PCID);
			SET cnt2 = (SELECT loanNumberPrefix FROM tblProcessingCompany WHERE PCID = new.PCID);
			
			IF (cnt > cnt2 )THEN
				SET nn = cnt;
			ELSE 
				SET nn = cnt2;
			END IF;
			IF (cnt > 0) THEN
				UPDATE `tblLoanNumbers` SET `lastLoanNumber` = nn WHERE `PCID` = NEW.PCID;
			ELSE
				INSERT INTO tblLoanNumbers (PCID, lastLoanNumber)
				VALUES (NEW.PCID, nn);
			END IF;
		END IF;
    END;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `update_last_loan_number` AFTER UPDATE ON `tblProcessingCompany` FOR EACH ROW BEGIN
		DECLARE cnt INT DEFAULT 0;
		DECLARE cnt2 INT DEFAULT 0;
		DECLARE nn INT DEFAULT 0;
		IF (NEW.showStartLoanNumber) THEN
			SET cnt = (SELECT lastLoanNumber FROM tblLoanNumbers WHERE PCID = new.PCID);
			SET cnt2 = (SELECT loanNumberPrefix FROM tblProcessingCompany WHERE PCID = new.PCID);
			
			IF (cnt > cnt2 )THEN
				SET nn = cnt;
			ELSE 
				SET nn = cnt2;
			END IF;
			IF (cnt > 0) THEN
				UPDATE `tblLoanNumbers` SET `lastLoanNumber` = nn WHERE `PCID` = NEW.PCID;
			ELSE
				INSERT INTO tblLoanNumbers (PCID, lastLoanNumber)
				VALUES (NEW.PCID, nn);
			END IF;
		END IF;
    END;
 ;;
delimiter ;

-- ----------------------------
--  Table structure for `tblProcessingCompanyDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompanyDocs`;
CREATE TABLE `tblProcessingCompanyDocs` (
  `PCDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `documentName` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `PKGID` int(11) DEFAULT '0',
  PRIMARY KEY (`PCDID`),
  KEY `PCID` (`PCID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `PKGID` (`PKGID`),
  CONSTRAINT `tblProcessingCompanyDocs_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=716662 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProcessingCompanyFee`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompanyFee`;
CREATE TABLE `tblProcessingCompanyFee` (
  `PCFID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `processingCompanyId` int(10) unsigned NOT NULL,
  `feeCode` int(11) DEFAULT '0',
  PRIMARY KEY (`PCFID`),
  KEY `processingCompanyId` (`processingCompanyId`),
  CONSTRAINT `tblProcessingCompanyFee_ibfk_1` FOREIGN KEY (`processingCompanyId`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=274942 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProcessingCompanyFileSubStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompanyFileSubStatus`;
CREATE TABLE `tblProcessingCompanyFileSubStatus` (
  `PFSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `processingCompanyId` int(10) unsigned NOT NULL,
  `fileSubStatus` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`PFSID`),
  KEY `processingCompanyId` (`processingCompanyId`),
  KEY `fileSubStatus` (`fileSubStatus`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblProcessingCompanyFileSubStatus_ibfk_1` FOREIGN KEY (`processingCompanyId`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=410100 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProcessingCompanyLMRClientType`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompanyLMRClientType`;
CREATE TABLE `tblProcessingCompanyLMRClientType` (
  `PCTID` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(10) unsigned NOT NULL,
  `LMRClientType` varchar(10) DEFAULT NULL,
  `moduleCode` varchar(10) NOT NULL,
  PRIMARY KEY (`PCTID`),
  UNIQUE KEY `PCID_3` (`PCID`,`moduleCode`,`LMRClientType`),
  KEY `PCID` (`PCID`),
  KEY `LMRClientType` (`LMRClientType`),
  KEY `moduleCode` (`moduleCode`),
  KEY `PCID_2` (`PCID`,`moduleCode`,`LMRClientType`),
  CONSTRAINT `tblProcessingCompanyLMRClientType_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`),
  CONSTRAINT `tblProcessingCompanyLMRClientType_ibfk_2` FOREIGN KEY (`moduleCode`) REFERENCES `tblModules` (`moduleCode`)
) ENGINE=InnoDB AUTO_INCREMENT=207605 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProcessingCompanyLMRClientType_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblProcessingCompanyLMRClientType_h`;
CREATE TABLE `tblProcessingCompanyLMRClientType_h` (
  `PCTID` mediumint(5) unsigned NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  `LMRClientType` varchar(10) DEFAULT NULL,
  `moduleCode` varchar(10) NOT NULL,
  `recordDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPropSellerInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblPropSellerInfo`;
CREATE TABLE `tblPropSellerInfo` (
  `SID` int(15) NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) DEFAULT NULL,
  `sellerinfoFirstName` varchar(75) DEFAULT NULL,
  `sellerinfoLastName` varchar(75) DEFAULT NULL,
  `sellerinfoEmail` varchar(50) DEFAULT NULL,
  `sellerinfoPhone` varchar(20) DEFAULT NULL,
  `sellerinfoAddress` varchar(50) DEFAULT NULL,
  `sellerinfoCity` varchar(20) DEFAULT NULL,
  `sellerinfoState` varchar(20) DEFAULT NULL,
  `sellerinfoZip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `tblPropType`
-- ----------------------------
DROP TABLE IF EXISTS `tblPropType`;
CREATE TABLE `tblPropType` (
  `propertyNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `propertyType` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `displayNumber` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`propertyNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblPropTypeFilter`
-- ----------------------------
DROP TABLE IF EXISTS `tblPropTypeFilter`;
CREATE TABLE `tblPropTypeFilter` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `propertyValue` float DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=9598 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblProposalInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblProposalInfo`;
CREATE TABLE `tblProposalInfo` (
  `PID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `lien1LenderPhoneNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien1LenderFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepName` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Bank1RepPhoneNo` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1ProposalType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalDTI` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalDTI` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalBalance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalBalance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalHomeValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalHomeValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalArrears` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalArrears` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1ApprovalFaithDeposit` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalNotes` blob,
  `lien1Bank1ApprovalNotes` blob,
  `lien2LenderPhoneNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2LenderFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1RepName` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Bank1RepPhoneNo` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1RepFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1RepEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2ProposalType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalDTI` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalDTI` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalBalance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalBalance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalHomeValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalHomeValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalArrears` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalArrears` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1ApprovalFaithDeposit` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalNotes` blob,
  `lien2Bank1ApprovalNotes` blob,
  `activeStatus` tinyint(4) DEFAULT '1',
  `yearsInProp` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalGrossIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1Terms` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalTerms` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1DTI` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2Terms` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalTerms` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalMonthlyPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalMonthlyResidualCash` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalPrincipalReductionAmt` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `netMonthlyIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalNetMonthlyIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `nonMtgTotalHouseHoldExpenses` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `nonMtgProposalTotalHouseHoldExpenses` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalTotalHouseHoldIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalTotalHouseHoldExpenses` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `monthlyNetCashFlow` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalLoanType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1EscrowShortage` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalEscrowShortage` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1FeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalFeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalLoanType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2FeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalFeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalPrincipalReductionAmt` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `totalHousingTaxesInsurance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `proposalTotalHousingTaxesInsurance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `REOArrearsMonths` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `attorneyFees` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `securePropertyCost` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `maintenanceCost` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalBalanceDue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalBalanceDue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `realEstateCommissions` varchar(12) CHARACTER SET latin1 DEFAULT '',
  `lien1ProposalBalanceDue_old` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `lien2ProposalBalanceDue_old` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `extendTheTerms` int(11) DEFAULT '0',
  `appliedForbearPrincipal` int(11) DEFAULT '0',
  `NPVResult` varchar(15) CHARACTER SET latin1 DEFAULT 'Unknown',
  `lien1Bank1RepDept` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepCallCenter` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1RepDept` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank1RepCallCenter` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepAdd` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `lien1RepCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `lien1Bank1RepState` varchar(20) DEFAULT NULL,
  `lien1Bank1RepZip` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank2RepAdd` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `lien2RepCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `lien2Bank2RepState` varchar(20) DEFAULT NULL,
  `lien2Bank2RepZip` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `remainingMonths1` int(11) DEFAULT '0',
  `remainingMonths2` int(11) DEFAULT '0',
  `interestBearingUPB` varchar(30) DEFAULT NULL,
  `newPaymentInterest` varchar(30) DEFAULT NULL,
  `newTargetPayment` varchar(30) DEFAULT NULL,
  `newHAMPT1DTI` varchar(30) DEFAULT NULL,
  `requestedLoanWriteDown` varchar(25) NOT NULL DEFAULT '',
  `principalForgiveness` varchar(30) NOT NULL DEFAULT '',
  `lien1LoanModDoc` varchar(5) NOT NULL DEFAULT 'Yes',
  `lien2LoanModDoc` varchar(5) NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`PID`),
  KEY `LMRId` (`LMRId`),
  KEY `activeStatus` (`activeStatus`),
  CONSTRAINT `tblProposalInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=355242 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblQAInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblQAInfo`;
CREATE TABLE `tblQAInfo` (
  `QAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `noOfPeopleDependent` int(11) DEFAULT NULL,
  `stayInHome` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `homeListedForSale` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `homeVacant` varchar(10) CHARACTER SET latin1 DEFAULT 'No',
  `seriousNeedRepair` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `repairExplanation` longtext CHARACTER SET latin1,
  `homeMortgageClosed` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `employmentType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `employmentExplanation` longtext CHARACTER SET latin1,
  `moreThanOneProperty` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `propertyExlpanation` longtext CHARACTER SET latin1,
  `bankruptcy` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `bankruptcyExlpanation` longtext CHARACTER SET latin1,
  `creditCounselling` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `propertyIncludedBankruptcy` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `thirtyDaysLate` int(11) DEFAULT '2',
  `noticeReceivedDate` date DEFAULT NULL,
  `summonDate` date DEFAULT NULL,
  `saleByOwner` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `receiveOfferOnProperty` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `dateOfOffer` date DEFAULT NULL,
  `amountOfOffer` decimal(13,2) DEFAULT '0.00',
  `offerPropertyAgentName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `OPAPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `RETBillPayer` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `taxesCurrent` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `condominiumOrHOAFee` varchar(10) CHARACTER SET latin1 DEFAULT '0',
  `condominiumOrHOAFeeAmt` decimal(13,2) DEFAULT '0.00',
  `condominiumOrHOAFeeAmtReceiver` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `policyCurrent` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `insuranceCompName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `insuranceCompPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `filedBankruptcy` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `bankruptcyChapter` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `bankruptcyFilingDate` date DEFAULT NULL,
  `bankruptcyDischarged` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `bankruptcyCaseNumb` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `hazardInsurancePolicy` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `creditCounselorName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `creditCounselorPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `creditCounselorEmail` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `additionalLienMortgage` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `addLien1Servicer` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `addLien1Balance` decimal(13,2) DEFAULT '0.00',
  `addLien1Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `addLien1LoanNumb` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `addLien2Servicer` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `addLien2Balance` decimal(13,2) DEFAULT '0.00',
  `addLien2Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `addLien2LoanNumb` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `addLien3Servicer` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `addLien3Balance` decimal(13,2) DEFAULT '0.00',
  `addLien3Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `addLien3LoanNumb` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `addLien4Servicer` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `addLien4Balance` decimal(13,2) DEFAULT '0.00',
  `addLien4Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `addLien4LoanNumb` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `addLien5Servicer` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `addLien5Balance` decimal(13,2) DEFAULT '0.00',
  `addLien5Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `addLien5LoanNumb` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `rentPayment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `anyOtherProperty` varchar(6) CHARACTER SET latin1 DEFAULT '',
  `propertyForRent` varchar(6) CHARACTER SET latin1 DEFAULT 'NA',
  `monthlyRentAmt` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `monthlyLastPaidAmt` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `leaseExpiresDate` date DEFAULT NULL,
  `isHomeownerServed` varchar(6) CHARACTER SET latin1 DEFAULT 'NA',
  `noOfProperties` varchar(8) CHARACTER SET latin1 DEFAULT '',
  `noOfMortgages` varchar(8) CHARACTER SET latin1 DEFAULT '',
  `bankruptcyDischargeDate` date DEFAULT NULL,
  `borrowerConvicted` int(11) DEFAULT '2',
  `coBorrowerConvicted` int(11) DEFAULT '2',
  `repaymentOrMortAssistance` varchar(5) CHARACTER SET latin1 DEFAULT 'NA',
  `delinquentOnPropTax` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `delinquentTaxYear` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `delinquentTaxAmount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `feeAmtReceiverAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `feeAmtReceiverCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `feeAmtReceiverState` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `feeAmtReceiverZip` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `delinquencySavedAmount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `attorneyFirmName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `attorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `attorneyPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `isPaymentsPlanBehind` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `bankruptcyDispositionStatus` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `doneAppraisal` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `appraisalListValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `offerPropertyAgencyName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `listingPrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `propertyListedDate` date DEFAULT NULL,
  `mortgageDelinquencyAmount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `isHOAOrCOAFee` varchar(10) CHARACTER SET latin1 DEFAULT '0',
  `HOAOrCOAFeeAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `HOAOrCOAFeeCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `HOAOrCOAFeeState` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `HOAOrCOAFeeZip` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `HOAOrCOAFeeAmt` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `saleForHowLong` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `PublishBInfo` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `BEthnicity` int(11) DEFAULT NULL,
  `BRace` int(11) DEFAULT NULL,
  `BGender` tinyint(1) DEFAULT NULL,
  `PublishCBInfo` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `CBEthnicity` int(11) DEFAULT NULL,
  `CBRace` int(11) DEFAULT NULL,
  `CBGender` tinyint(1) unsigned NOT NULL,
  `HAMPPrincipalResidence` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `permanentHAMPModification` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `howManyPermanentHAMP` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `HAMPTrialPrincipal` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `serviceMember` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `serviceMemberOrder` varchar(10) CHARACTER SET latin1 DEFAULT 'NA',
  `HOAFeePaidCurrent` varchar(10) CHARACTER SET latin1 DEFAULT '0',
  `creditCounselorAgency` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `attorneyNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `policyNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyAddress` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `attorneyCity` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `attorneyState` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `attorneyZip` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `jurisDiction` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `indexNo` varchar(30) DEFAULT '',
  `appliedModification` varchar(6) DEFAULT 'NA',
  `appliedModificationDate` date DEFAULT NULL,
  `receivedModificationOfferDate` date DEFAULT NULL,
  `repaymentOrMortAssistanceDate` date DEFAULT NULL,
  `borrowerNatural` tinyint(4) DEFAULT '2',
  `attorneyCell` varchar(25) NOT NULL DEFAULT '',
  `occupiedBy` varchar(5) NOT NULL DEFAULT '',
  `creditCounselStartedDate` date NOT NULL DEFAULT '0000-00-00',
  `creditCounselFinisheddDate` date NOT NULL DEFAULT '0000-00-00',
  `loanModType` enum('','1','2','3','4','5','6','7','8') NOT NULL DEFAULT '',
  `HAMPTier1Payment` float NOT NULL DEFAULT '0',
  `loanModPlanStanding` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `stateHFAEntity` varchar(40) DEFAULT '',
  `stateHFAContactName` varchar(60) DEFAULT '',
  `stateHFAPhone` varchar(20) DEFAULT NULL,
  `stateHFAEmailAddress` varchar(65) DEFAULT '',
  `serviceMemberSurvivor` varchar(10) NOT NULL DEFAULT 'NA',
  `serviceMemberServing` varchar(10) NOT NULL DEFAULT 'NA',
  `isMtgReaffirmed` varchar(10) NOT NULL DEFAULT 'NA',
  `isInsuranceDelinquent` varchar(10) NOT NULL DEFAULT 'NA',
  `delinquentInsuranceAmount` varchar(30) NOT NULL DEFAULT '',
  `hazardPolicyCurrent` varchar(10) NOT NULL DEFAULT 'NA',
  `leaseStartedDate` date NOT NULL,
  `closingDate` date DEFAULT NULL,
  `HOAAllowRentals` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `IsCommunity` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HOA1Notes` longtext,
  `HOA2Notes` longtext,
  `serviceMemberDeceased` varchar(10) NOT NULL DEFAULT 'NA',
  `noOfvehiclesOwned` int(10) DEFAULT NULL,
  `notOnMortgageNote` varchar(5) DEFAULT 'NA',
  `isTaxReturn` varchar(5) DEFAULT '0',
  `QABorName` varchar(130) NOT NULL,
  `QABorSSN` varchar(12) NOT NULL,
  `QABorSpouseName` varchar(140) NOT NULL,
  `QABorSpouseSSN` varchar(12) NOT NULL,
  `QACoBorName` varchar(140) NOT NULL,
  `QACoBorSSN` varchar(12) NOT NULL,
  `QACoBorSpouseName` varchar(140) NOT NULL,
  `QACoBorSpouseSSN` varchar(12) NOT NULL,
  `YRF4506TDate1` date DEFAULT NULL,
  `YRF4506TDate2` date DEFAULT NULL,
  `YRF4506TDate3` date DEFAULT NULL,
  `YRF4506TDate4` date DEFAULT NULL,
  PRIMARY KEY (`QAID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblQAInfo_ibfk_2` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=395522 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblQAOtherPropertyInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblQAOtherPropertyInfo`;
CREATE TABLE `tblQAOtherPropertyInfo` (
  `QAPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `monthlyPayment` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `rentalIncome` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `principalBalance` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `propCurrentlyVacant` varchar(6) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `recordDate` date DEFAULT NULL,
  PRIMARY KEY (`QAPID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblQAOtherPropertyInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2102 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblQuickAppFieldsMaster`
-- ----------------------------
DROP TABLE IF EXISTS `tblQuickAppFieldsMaster`;
CREATE TABLE `tblQuickAppFieldsMaster` (
  `fieldID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PCID` int(11) DEFAULT NULL,
  `sectionID` varchar(50) NOT NULL,
  `fieldLabel` varchar(200) DEFAULT NULL,
  `fieldName` varchar(200) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT NULL,
  `recordDate` datetime NOT NULL,
  `activeStatus` tinyint(1) NOT NULL DEFAULT '1',
  `tabName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`fieldID`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRSSNews`
-- ----------------------------
DROP TABLE IF EXISTS `tblRSSNews`;
CREATE TABLE `tblRSSNews` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` blob,
  `newsTitle` blob,
  `newsLink` blob,
  `description` blob,
  `pubDate` date DEFAULT NULL,
  `newsStatus` int(11) DEFAULT '1',
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=58428 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRecentSalesInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblRecentSalesInfo`;
CREATE TABLE `tblRecentSalesInfo` (
  `RSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `listPrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `salePrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `financingType` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `saleDate` date DEFAULT NULL,
  `daysOnMkt` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `recentBuilt` varchar(6) CHARACTER SET latin1 DEFAULT '',
  `recentSalesNotes` longtext CHARACTER SET latin1,
  `salePropertyAddress` varchar(75) DEFAULT NULL,
  `noOfBedroom` int(11) DEFAULT NULL,
  `noOfBathroom` int(11) DEFAULT NULL,
  `saleSqFt` int(11) DEFAULT NULL,
  `salePropertyURLLink1` varchar(100) DEFAULT NULL,
  `saleLotSize` int(11) DEFAULT NULL,
  PRIMARY KEY (`RSID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblRecentSalesInfo_ibfk_2` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRecordFileSecondaryWFStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblRecordFileSecondaryWFStatus`;
CREATE TABLE `tblRecordFileSecondaryWFStatus` (
  `rFID` int(11) NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `WFID` int(11) unsigned NOT NULL,
  `statusID` int(11) unsigned NOT NULL,
  `UID` int(11) unsigned NOT NULL DEFAULT '0',
  `URole` varchar(10) DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `noOfDays` int(11) DEFAULT NULL,
  PRIMARY KEY (`rFID`),
  KEY `fileID` (`fileID`),
  KEY `WFID` (`WFID`),
  CONSTRAINT `tblRecordFileSecondaryWFStatus_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblRecordFileSecondaryWFStatus_ibfk_2` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRecordFileStatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblRecordFileStatus`;
CREATE TABLE `tblRecordFileStatus` (
  `rID` int(11) NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `statusID` int(11) unsigned NOT NULL,
  `statusType` varchar(6) CHARACTER SET latin1 DEFAULT '',
  `UID` int(11) unsigned NOT NULL DEFAULT '0',
  `URole` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `branchID` int(11) unsigned NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `noOfDays` int(11) DEFAULT NULL,
  `noOfDays_org` int(11) DEFAULT NULL,
  `ok` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rID`),
  KEY `LMRID` (`LMRID`),
  KEY `branchID` (`branchID`,`LMRID`),
  KEY `statusID` (`statusID`,`LMRID`),
  CONSTRAINT `tblRecordFileStatus_ibfk_2` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6170173 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRecordFileSubstatus`
-- ----------------------------
DROP TABLE IF EXISTS `tblRecordFileSubstatus`;
CREATE TABLE `tblRecordFileSubstatus` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `substatusID` int(11) unsigned NOT NULL,
  `UID` int(11) DEFAULT NULL,
  `URole` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `dateChecked` datetime DEFAULT NULL,
  `dateUnchecked` datetime DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblRecordFileSubstatus_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRemoteUrl`
-- ----------------------------
DROP TABLE IF EXISTS `tblRemoteUrl`;
CREATE TABLE `tblRemoteUrl` (
  `RUID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `billingRemoteUrl` longtext CHARACTER SET latin1,
  `paymentMethod` varchar(10) DEFAULT '',
  PRIMARY KEY (`RUID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblRemoteUrl_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=69631 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRemoteUrl_h`
-- ----------------------------
DROP TABLE IF EXISTS `tblRemoteUrl_h`;
CREATE TABLE `tblRemoteUrl_h` (
  `RUID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `billingRemoteUrl` longtext CHARACTER SET latin1,
  `paymentMethod` varchar(10) DEFAULT '',
  PRIMARY KEY (`RUID`),
  KEY `LMRId` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=38019 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblReservesMaster`
-- ----------------------------
DROP TABLE IF EXISTS `tblReservesMaster`;
CREATE TABLE `tblReservesMaster` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reserves` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `displayNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblResource`
-- ----------------------------
DROP TABLE IF EXISTS `tblResource`;
CREATE TABLE `tblResource` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceType` int(11) DEFAULT NULL,
  `resTitle` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `hyperLink` longtext CHARACTER SET latin1,
  `publishedDate` date DEFAULT NULL,
  `resCat` int(11) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `resState` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblResourceCategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblResourceCategory`;
CREATE TABLE `tblResourceCategory` (
  `RCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceCategory` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `recordDate` date DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`RCID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblResourceDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblResourceDocs`;
CREATE TABLE `tblResourceDocs` (
  `RDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RID` int(11) DEFAULT NULL,
  `uploadedFileName` longtext CHARACTER SET latin1,
  PRIMARY KEY (`RDID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblResponseDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblResponseDocs`;
CREATE TABLE `tblResponseDocs` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `responseNumber` int(11) DEFAULT NULL,
  `docName` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `displayDocName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `docType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3755 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRestInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblRestInfo`;
CREATE TABLE `tblRestInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `houseNum` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `propertyValuation` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `propertyOccupied` varchar(7) CHARACTER SET latin1 DEFAULT '',
  `ficoBor` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `ficoCobor` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `investor` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `InvestorRiskPremium` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `PMMS` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `OriginalTermMonths` int(11) DEFAULT '0',
  `noteDate` date DEFAULT NULL,
  `firstPaymentDate` date DEFAULT NULL,
  `nextResetDate` date DEFAULT NULL,
  `resetRate` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `LTVOrigination` decimal(10,4) DEFAULT '0.0000',
  `originalInterestRate` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `totalMonthlyPayment` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `delinquencyClassification` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `currentMonthsPastDue` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `maxMonthsPastDue` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `reasonForDefault` varchar(40) CHARACTER SET latin1 DEFAULT '',
  `borrowerIntent` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `prevModifiedUnderHAMP` tinyint(4) DEFAULT '0',
  `delinquentFees` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `delinquentInterest` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `escrow` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `RestMortType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `RestPropType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `RestPropUse` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `RestPropCondition` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `RestLoanProd` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `notes` longtext CHARACTER SET latin1,
  `borrowerChkInfo` tinyint(4) DEFAULT '0',
  `personInfo` longtext CHARACTER SET latin1,
  `restComments` longtext CHARACTER SET latin1,
  `RID` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `restLien1Payment` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restLien1Rate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restMortgageInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restFloodInsurance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restTaxes1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restHOAFees1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restCreditCardsBalance1` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restGrossIncome` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restLien1OriginalBalance` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restLien1Amount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `restHomeValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `CaseFileId` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `SubmissionDate` datetime DEFAULT NULL,
  `preparedForBranchName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `preparedForAddr` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `preparedForPhone` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `orderStatus` varchar(20) CHARACTER SET latin1 DEFAULT 'Pending',
  `price` int(11) DEFAULT '0',
  `paymentStatus` varchar(20) CHARACTER SET latin1 DEFAULT 'Payment Due',
  `prevModifiedUnderHAMPResult` varchar(30) CHARACTER SET latin1 DEFAULT '0',
  `priorModPI` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `grossMonthlyRental` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `primaryResidenceHousingExpense` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `RequestedService` varchar(20) CHARACTER SET latin1 DEFAULT 'RESTCombo',
  `orderDate` date DEFAULT NULL,
  `lastExecutionDate` date DEFAULT NULL,
  `servicerName` varchar(70) CHARACTER SET latin1 DEFAULT '',
  `miCoveragePercentage` decimal(13,2) DEFAULT '0.00',
  `useOverride` tinyint(4) DEFAULT '0',
  `miPartialClaimAmount` decimal(13,2) DEFAULT '0.00',
  `overrideInterestRate` decimal(13,2) DEFAULT '0.00',
  `overrideForbearance` decimal(13,2) DEFAULT '0.00',
  `overrideForgiveness` decimal(13,2) DEFAULT '0.00',
  `overrideTerm` int(11) DEFAULT '0',
  `nAttempts` int(11) DEFAULT '0',
  PRIMARY KEY (`SID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblRestInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=178797 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRestNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblRestNotes`;
CREATE TABLE `tblRestNotes` (
  `LMRId` int(10) unsigned NOT NULL,
  `notes` longtext CHARACTER SET latin1,
  `rDate` datetime DEFAULT NULL,
  `UID` int(11) DEFAULT '0',
  `UType` varchar(10) CHARACTER SET latin1 DEFAULT '',
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblRestNotes_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblRestReports`
-- ----------------------------
DROP TABLE IF EXISTS `tblRestReports`;
CREATE TABLE `tblRestReports` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `RestReportFile` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `restDocName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  `remoteReportUrl` varchar(200) CHARACTER SET latin1 DEFAULT '',
  `nPulls` int(11) DEFAULT '0',
  `reportComplete` tinyint(4) DEFAULT '0',
  `RID` varchar(50) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`SID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblRestReports_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=5329 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSCMAAnalysis`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSCMAAnalysis`;
CREATE TABLE `tblSSCMAAnalysis` (
  `SCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `cmaEstimatedValue` decimal(13,2) DEFAULT '0.00',
  `cmaHighPrice` decimal(13,2) DEFAULT '0.00',
  `cmaSuggListPrice` decimal(13,2) DEFAULT '0.00',
  `cmaQuickResalePrice` decimal(13,2) DEFAULT '0.00',
  `cmaDesc` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `cmaSalePrice` decimal(13,2) DEFAULT '0.00',
  `cmaMonthsOnMLS` int(11) DEFAULT NULL,
  `cmaAverageListingPrice` decimal(13,2) DEFAULT '0.00',
  PRIMARY KEY (`SCID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSSCMAAnalysis_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=3396 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSComparables`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSComparables`;
CREATE TABLE `tblSSComparables` (
  `SCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `mlsNumber` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `address` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `saleDate` date DEFAULT NULL,
  `timeOnMkt` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `bedrooms` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `bath` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `sqft` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `descNotes` longtext CHARACTER SET latin1,
  `mlsServiceType` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`SCID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSSComparables_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=559 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSFileCheckList`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSFileCheckList`;
CREATE TABLE `tblSSFileCheckList` (
  `FCLID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `checklistId` int(11) DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `tempLMRResponseId` int(11) DEFAULT NULL,
  `tempPCID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FCLID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSSFileCheckList_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=23820 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSProposalInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSProposalInfo`;
CREATE TABLE `tblSSProposalInfo` (
  `SSPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `SS_realEstateCommissions` varchar(12) CHARACTER SET latin1 DEFAULT '',
  `SS_REOArrearsMonths` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_attorneyFees` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_securePropertyCost` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_maintenanceCost` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_lien1EscrowShortage` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_lien1FeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_lien2FeesAdminCosts` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `SS_CureRate` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_HomePriceForecastedDepreciation` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_REOStigmaDiscount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_LiquidationValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_PIAEF` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_REODispositionValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_REOValue` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_Offer` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `SS_InvestorBenefit` varchar(30) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`SSPID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSSProposalInfo_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2972 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSProposalSummary`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSProposalSummary`;
CREATE TABLE `tblSSProposalSummary` (
  `SPSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `SSProposalSummary` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `displayOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`SPSID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSSProposalSummary_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=2823 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSSRegnInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblSSRegnInfo`;
CREATE TABLE `tblSSRegnInfo` (
  `SRID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL,
  `mlsNo` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `estSellingPrice` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `listingTotalCommission` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `listingDollarAmount` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `REOfficeName` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `REBrokerName` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `REBrokerPhoneNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `REBrokerEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`SRID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblSSRegnInfo_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=923 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSaveEmailPkgDetails`
-- ----------------------------
DROP TABLE IF EXISTS `tblSaveEmailPkgDetails`;
CREATE TABLE `tblSaveEmailPkgDetails` (
  `SEPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRID` int(10) unsigned NOT NULL,
  `docID` int(11) unsigned DEFAULT NULL,
  `UID` int(11) DEFAULT '0',
  `UGroup` varchar(30) NOT NULL DEFAULT '',
  `recordDate` datetime DEFAULT NULL,
  PRIMARY KEY (`SEPID`),
  KEY `LMRID` (`LMRID`),
  CONSTRAINT `tblSaveEmailPkgDetails_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=20785 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSchools`
-- ----------------------------
DROP TABLE IF EXISTS `tblSchools`;
CREATE TABLE `tblSchools` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(200) DEFAULT '',
  `address1` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `city` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `state` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `zipCode` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(1) DEFAULT '1',
  `approvedStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `activeStatus` (`activeStatus`),
  KEY `approvedStatus` (`approvedStatus`),
  KEY `schoolName` (`schoolName`)
) ENGINE=InnoDB AUTO_INCREMENT=1427 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSendBillingReminderAt`
-- ----------------------------
DROP TABLE IF EXISTS `tblSendBillingReminderAt`;
CREATE TABLE `tblSendBillingReminderAt` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LBRID` int(11) DEFAULT NULL,
  `sendAt` datetime DEFAULT NULL,
  `remindedOn` datetime DEFAULT NULL,
  `sentReminder` int(11) DEFAULT '0',
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=11998 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSeriveProviders`
-- ----------------------------
DROP TABLE IF EXISTS `tblSeriveProviders`;
CREATE TABLE `tblSeriveProviders` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cellPhoneCompany` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `domainName` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `status` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblShortSale`
-- ----------------------------
DROP TABLE IF EXISTS `tblShortSale`;
CREATE TABLE `tblShortSale` (
  `SSID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(11) NOT NULL,
  `unPaidTax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `liens` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lender1RepName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `lender1PhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lender1Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lender1Email` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `lender1Notes` longtext CHARACTER SET latin1,
  `lender2RepName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `lender2PhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lender2Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lender2Email` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `lender2Notes` longtext CHARACTER SET latin1,
  `realtor` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `agency` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `realtorPhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `realtorEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `titleCompany` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `contact` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `titleCompanyPhoneNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `titleCompanyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `appraiser1` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `appraiser1Value` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `appraiser2` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `appraiser2Value` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `BPO1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `BPO1Value` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `BPO2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `BPO2Value` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `BPO3` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `BPO3Value` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyerName1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `offer1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `sqft1` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `contractDate1` date DEFAULT NULL,
  `closingDate1` date DEFAULT NULL,
  `buyerName2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `offer2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `sqft2` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `contractDate2` date DEFAULT NULL,
  `closingDate2` date DEFAULT NULL,
  `buyerName3` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `offer3` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `sqft3` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `contractDate3` date DEFAULT NULL,
  `closingDate3` date DEFAULT NULL,
  `mlsNumber` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `address` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `saleDate` date DEFAULT NULL,
  `timeOnMkt` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `bedrooms` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `bath` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `sqft` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `descNotes` longtext CHARACTER SET latin1,
  `mlsServiceType` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `recordDate` date DEFAULT NULL,
  `sales1CellNo` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `sales1Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `sales2Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `HOContactName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `HOPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1Deal` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1AgentName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer1AgencyName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer1Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1Cell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1Email` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOCompany` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1LOEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer2Deal` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2AgentName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer2AgencyName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer2Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2Cell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2Email` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOCompany` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2LOEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer3Deal` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3AgentName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer3AgencyName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer3Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3Cell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3Fax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOCompany` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer3Email` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3LOEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `listingPrice` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `firmName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `attorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `attorneyPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `attorneyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `HOFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `listingDate` date DEFAULT NULL,
  `buyer1RelToSeller` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer2RelToSeller` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer3RelToSeller` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `coBuyerName1` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `coBuyerName2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `coBuyerName3` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `realtorAddress` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `HOAssociationName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `HOEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `firstBuyerPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `firstBuyerEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `secondBuyerPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `secondBuyerEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `thirdBuyerPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `thirdBuyerEmail` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer2FirmName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyer2AttorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyer2AttorneyPhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2AttorneyCell` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2AttorneyFax` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2AttorneyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyer3FirmName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyer3AttorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyer3AttorneyPhone` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `buyer3AttorneyCell` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `buyer3AttorneyFax` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `buyer3AttorneyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `appraisalNotes` longtext CHARACTER SET latin1,
  `attorneyNotes` longtext CHARACTER SET latin1,
  `costBasis` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `dateObtained` date DEFAULT NULL,
  `rehabValue` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `dateObtained2` date DEFAULT NULL,
  `rehabValue2` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `dateObtained3` date DEFAULT NULL,
  `rehabValue3` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `dateObtained4` date DEFAULT NULL,
  `rehabValue4` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `dateObtained5` date DEFAULT NULL,
  `rehabValue5` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `buyer1Notes` longtext CHARACTER SET latin1,
  `buyer2Notes` longtext CHARACTER SET latin1,
  `buyer3Notes` longtext CHARACTER SET latin1,
  `pictures` tinyint(4) DEFAULT '0',
  `listingRECompany` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `sellingRECompany` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `buyerRECompany` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `wholesaleRECompany` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `buyer1Phone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer2Phone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer3Phone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer4Deal` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `buyerName4` varchar(200) CHARACTER SET latin1 DEFAULT '',
  `buyer4AgentName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer4AgencyName` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer4Phone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `offer4` varchar(200) CHARACTER SET latin1 DEFAULT '',
  `contractDate4` date DEFAULT NULL,
  `buyer4Email` varchar(100) CHARACTER SET latin1 DEFAULT '',
  `buyer4Notes` longtext CHARACTER SET latin1,
  `buyer4Phone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `block` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `lot` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `preferredClose` tinyint(4) DEFAULT '0',
  `preferredCloseDate` date DEFAULT NULL,
  `source` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `sourceDetail` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `buyerType` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `listingCom` decimal(10,4) DEFAULT '0.0000',
  `listingComAmt` float DEFAULT '0',
  `sellingCom` float DEFAULT '0',
  `sellingComAmt` float DEFAULT '0',
  `buyerBrokerFee` float DEFAULT '0',
  `buyerBrokerFeeAmt` float DEFAULT '0',
  `wholesaleCom` float DEFAULT '0',
  `wholesaleComAmt` float DEFAULT '0',
  `attorneyFee` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyer1FirmName` varchar(60) DEFAULT '',
  `buyer1AttorneyName` varchar(60) DEFAULT '',
  `buyer1AttorneyPhone` varchar(20) DEFAULT '',
  `buyer1AttorneyCell` varchar(20) DEFAULT '',
  `buyer1AttorneyFax` varchar(20) DEFAULT '',
  `buyer1AttorneyEmail` varchar(75) DEFAULT '',
  `lender1Cell` varchar(25) NOT NULL DEFAULT '',
  `lender1Address` varchar(100) NOT NULL DEFAULT '',
  `lender1City` varchar(50) NOT NULL DEFAULT '',
  `lender1State` varchar(5) NOT NULL DEFAULT '',
  `lender1Zip` varchar(15) NOT NULL DEFAULT '',
  `lender2Cell` varchar(25) NOT NULL DEFAULT '',
  `lender2Address` varchar(100) NOT NULL DEFAULT '',
  `lender2City` varchar(50) NOT NULL DEFAULT '',
  `lender2State` varchar(5) NOT NULL DEFAULT '',
  `lender2Zip` varchar(15) NOT NULL DEFAULT '',
  `RELicenseNumber1` varchar(50) NOT NULL DEFAULT '',
  `RELicenseNumber2` varchar(50) NOT NULL DEFAULT '',
  `RELicenseNumber3` varchar(50) NOT NULL DEFAULT '',
  `buyer1AttorneyAddress` varchar(100) NOT NULL DEFAULT '',
  `buyer1AttorneyCity` varchar(50) NOT NULL DEFAULT '',
  `buyer1AttorneyState` varchar(5) NOT NULL DEFAULT '',
  `buyer1AttorneyZip` varchar(15) NOT NULL DEFAULT '',
  `buyer2AttorneyAddress` varchar(100) NOT NULL DEFAULT '',
  `buyer2AttorneyCity` varchar(50) NOT NULL DEFAULT '',
  `buyer2AttorneyState` varchar(5) NOT NULL DEFAULT '',
  `buyer2AttorneyZip` varchar(15) NOT NULL DEFAULT '',
  `buyer3AttorneyAddress` varchar(100) NOT NULL DEFAULT '',
  `buyer3AttorneyCity` varchar(50) NOT NULL DEFAULT '',
  `buyer3AttorneyState` varchar(5) NOT NULL DEFAULT '',
  `buyer3AttorneyZip` varchar(15) NOT NULL DEFAULT '',
  `paralegalName` varchar(50) NOT NULL DEFAULT '',
  `paralegalEmail` varchar(75) NOT NULL DEFAULT '',
  `paralegalPhone` varchar(25) NOT NULL DEFAULT '',
  `paralegalCell` varchar(25) NOT NULL DEFAULT '',
  `paralegalFaxNo` varchar(25) NOT NULL DEFAULT '',
  `twelveMonthRent` varchar(20) NOT NULL DEFAULT '',
  `eighteenMonthRent` varchar(20) NOT NULL DEFAULT '',
  `twentyFourMonthRent` varchar(20) NOT NULL DEFAULT '',
  `assessedValue` varchar(20) NOT NULL DEFAULT '',
  `quickSaleValue` varchar(20) NOT NULL DEFAULT '',
  `zillowValue` varchar(50) NOT NULL DEFAULT '',
  `zillowRentValue` varchar(50) NOT NULL DEFAULT '',
  `updateEmailStatus` varchar(35) DEFAULT NULL,
  `offerAmount` varchar(15) DEFAULT NULL,
  `currentLenderValue` varchar(25) DEFAULT NULL,
  `valueExpires` varchar(20) DEFAULT NULL,
  `nextStage` varchar(120) DEFAULT NULL,
  `updateEmailComments` blob,
  `updateEmailBuyerName` varchar(75) DEFAULT NULL,
  `contractDate` date DEFAULT NULL,
  `foreclosureDate` date DEFAULT NULL,
  `updateEmailAgentName` varchar(75) DEFAULT NULL,
  `appraiser1Email` varchar(75) DEFAULT NULL,
  `appraiser2Email` varchar(75) DEFAULT NULL,
  `appraiser1Company` varchar(100) DEFAULT NULL,
  `appraiser2Company` varchar(100) DEFAULT NULL,
  `appraiser1Phone` varchar(20) DEFAULT NULL,
  `appraiser2Phone` varchar(20) DEFAULT NULL,
  `realtor1Company` varchar(100) DEFAULT NULL,
  `realtor2Company` varchar(100) DEFAULT NULL,
  `realtor3Company` varchar(100) DEFAULT NULL,
  `realtor1Email` varchar(75) DEFAULT NULL,
  `realtor2Email` varchar(75) DEFAULT NULL,
  `realtor3Email` varchar(75) DEFAULT NULL,
  `realtor1Phone` varchar(20) DEFAULT NULL,
  `realtor2Phone` varchar(20) DEFAULT NULL,
  `realtor3Phone` varchar(20) DEFAULT NULL,
  `twelveMonthRent1` varchar(20) DEFAULT NULL,
  `twelveMonthRent2` varchar(20) DEFAULT NULL,
  `propertyValByBor` float DEFAULT NULL,
  `rehabValByBor` float DEFAULT NULL,
  `AVM1Company` varchar(100) DEFAULT NULL,
  `AVM2Company` varchar(100) DEFAULT NULL,
  `AVM3Company` varchar(100) DEFAULT NULL,
  `AVM1Value` varchar(20) DEFAULT NULL,
  `AVM2Value` varchar(20) DEFAULT NULL,
  `AVM3Value` varchar(20) DEFAULT NULL,
  `BPO1LName` varchar(75) DEFAULT NULL,
  `BPO2LName` varchar(75) DEFAULT NULL,
  `BPO3LName` varchar(75) DEFAULT NULL,
  `appraiser1LName` varchar(75) DEFAULT NULL,
  `appraiser2LName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`SSID`),
  KEY `LMRId` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=160613 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblShortSale2`
-- ----------------------------
DROP TABLE IF EXISTS `tblShortSale2`;
CREATE TABLE `tblShortSale2` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `transAttorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `transFirmName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `transPhone1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `transPhone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `transEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `transAttorneyFee` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyFname` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyPhone1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyPhone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `buyerAttorneyFee` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `BPOContactName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `BPOContactEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `BPOPhone1` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `BPOPhone2` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `lienCompany` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `lienStatus` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `lienDate` date DEFAULT NULL,
  `lienFee` float DEFAULT '0',
  `titleStatus` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `titleDate` date DEFAULT NULL,
  `titleFee` float DEFAULT '0',
  `contractStatus` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `contractClosingDate` date DEFAULT NULL,
  `contractPrice` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `servicePrice` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `bankOfferStatus` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `mortgageCompany` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `mortgageContactName` varchar(60) CHARACTER SET latin1 DEFAULT '',
  `mortgageEmail` varchar(75) CHARACTER SET latin1 DEFAULT '',
  `mortgagePhone` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `mortgageClosingDate` date DEFAULT NULL,
  `relocationPayment` varchar(20) CHARACTER SET latin1 DEFAULT '',
  `relocationFeeStatus` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `relocationPaidBy` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `appointmentDate` datetime DEFAULT NULL,
  `auctionDate` datetime DEFAULT NULL,
  `appointmentDeed` varchar(75) DEFAULT NULL,
  `appointmentMortgage` varchar(75) DEFAULT NULL,
  `caller` varchar(75) DEFAULT NULL,
  `appraiser1MonthlyRent` varchar(50) DEFAULT NULL,
  `appraiser2MonthlyRent` varchar(50) DEFAULT NULL,
  `AVM1MonthlyRent` varchar(50) DEFAULT NULL,
  `AVM2MonthlyRent` varchar(50) DEFAULT NULL,
  `AVM3MonthlyRent` varchar(50) DEFAULT NULL,
  `assessedRentValue` varchar(50) DEFAULT NULL,
  `totalJudgement` float DEFAULT NULL,
  `listingType` int(11) DEFAULT NULL,
  `houseStyle` varchar(100) DEFAULT NULL,
  `openHouseDate` date DEFAULT NULL,
  `notSheduledReason` varchar(200) DEFAULT NULL,
  `noOfOpenHouses` int(11) DEFAULT NULL,
  `priceAdjusted` int(11) DEFAULT NULL,
  `occupied` int(11) DEFAULT NULL,
  `haveSign` int(11) DEFAULT NULL,
  `bankNumber` float DEFAULT NULL,
  `lienAmount` float DEFAULT NULL,
  `BPOExpirationDate` date DEFAULT NULL,
  `intAssAppraiserName` varchar(75) DEFAULT NULL,
  `intAssPhone` varchar(20) DEFAULT NULL,
  `intAssEmail` varchar(75) DEFAULT NULL,
  `intAssRehabBudget` float DEFAULT NULL,
  `intAssRehabbedValue` float DEFAULT NULL,
  `intAssRecommendedOffer` float DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblShortSale2_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6615 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStaffContacts`
-- ----------------------------
DROP TABLE IF EXISTS `tblStaffContacts`;
CREATE TABLE `tblStaffContacts` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `staffPosition` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `staffName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `phone1` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `phone2` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStateAndCounty`
-- ----------------------------
DROP TABLE IF EXISTS `tblStateAndCounty`;
CREATE TABLE `tblStateAndCounty` (
  `SCID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stateCode` varchar(10) CHARACTER SET latin1 DEFAULT '',
  `countyName` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `FIPSState` varchar(5) CHARACTER SET latin1 DEFAULT '',
  `FIPSCounty` varchar(5) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`SCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3144 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStates`
-- ----------------------------
DROP TABLE IF EXISTS `tblStates`;
CREATE TABLE `tblStates` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stateCode` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `stateName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `displayNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStudentLoanInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblStudentLoanInfo`;
CREATE TABLE `tblStudentLoanInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `loanBalance` varchar(30) NOT NULL DEFAULT '',
  `loanPayment` varchar(30) NOT NULL DEFAULT '',
  `loanRate` varchar(30) NOT NULL DEFAULT '',
  `loanTerms` varchar(30) NOT NULL DEFAULT '',
  `loanServicer` varchar(60) NOT NULL DEFAULT '',
  `loanStatus` varchar(100) NOT NULL DEFAULT '',
  `loanIsGovt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loanSchoolName` varchar(200) NOT NULL DEFAULT '',
  `loanSchoolStartDate` date DEFAULT NULL,
  `loanSchoolEndDate` date DEFAULT NULL,
  `loanIsGraduate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `loanNumber` varchar(75) NOT NULL DEFAULT '',
  `loanType` varchar(100) NOT NULL DEFAULT '',
  `estimation` int(10) unsigned NOT NULL,
  `proposedPayment` varchar(30) NOT NULL DEFAULT '',
  `proposedRate` varchar(30) NOT NULL DEFAULT '',
  `proposedTerm` varchar(30) NOT NULL DEFAULT '',
  `forgivenessOption` varchar(80) NOT NULL DEFAULT '',
  `annualGrossIncome` varchar(30) NOT NULL DEFAULT '',
  `studentLoanDebt` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `howMuchDept` varchar(30) NOT NULL DEFAULT '',
  `noOfStudentLoans` varchar(30) NOT NULL DEFAULT '',
  `workoutProgram` varchar(50) NOT NULL DEFAULT '',
  `verifiedAnnualGrossIncome` varchar(30) NOT NULL DEFAULT '',
  `loanEstimatedTerm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblStudentLoanInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8351 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStudentLoanQAInfo`
-- ----------------------------
DROP TABLE IF EXISTS `tblStudentLoanQAInfo`;
CREATE TABLE `tblStudentLoanQAInfo` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `studentEducationStatus` varchar(30) NOT NULL DEFAULT '',
  `isCurrentlyMakingPayments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `defaultedDate` date DEFAULT NULL,
  `defaultedReason` varchar(110) NOT NULL DEFAULT '',
  `isWageGarnishments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `garnishmentsAmount` varchar(30) NOT NULL DEFAULT '',
  `garnishmentsDate` date DEFAULT NULL,
  `acquireLoan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isSchoolRefuse` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isQualifiedToAttend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isWorkAfterGraduation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `jobTitle` varchar(100) NOT NULL DEFAULT '',
  `jobLength` varchar(20) NOT NULL DEFAULT '',
  `currentlyEnrolled` varchar(50) NOT NULL DEFAULT '',
  `taxType` varchar(40) NOT NULL DEFAULT '',
  `isHousehold` varchar(40) NOT NULL DEFAULT '',
  `noOfDependents` varchar(30) NOT NULL DEFAULT '',
  `employer` varchar(70) NOT NULL DEFAULT '',
  `occupation` varchar(70) NOT NULL DEFAULT '',
  `employerAddress` varchar(70) NOT NULL DEFAULT '',
  `pslfEligible` varchar(5) NOT NULL DEFAULT 'NA',
  `incomeType` varchar(30) NOT NULL DEFAULT '',
  `childrenOrDependents` varchar(20) NOT NULL DEFAULT '',
  `adultsIncApplicant` varchar(30) NOT NULL DEFAULT '',
  `privateDebtAmt` varchar(20) NOT NULL,
  `studentDebtAmt` varchar(20) NOT NULL,
  `spouseFirstName` varchar(75) DEFAULT NULL,
  `spouseLastName` varchar(75) DEFAULT NULL,
  `spouseSSN` int(15) DEFAULT NULL,
  `spouseDOB` date DEFAULT NULL,
  `spouseEmployerName` varchar(75) DEFAULT NULL,
  `spouseWorkPhoneNumber` varchar(30) DEFAULT NULL,
  `empPhoneNumber` varchar(30) DEFAULT NULL,
  `taxFilingStatus` varchar(75) DEFAULT NULL,
  `spouseAnnualIncome` varchar(30) DEFAULT NULL,
  `formofDocumentedIncome` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblStudentLoanQAInfo_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=6892 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblStudentLoanReferences`
-- ----------------------------
DROP TABLE IF EXISTS `tblStudentLoanReferences`;
CREATE TABLE `tblStudentLoanReferences` (
  `RID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `referrerName` varchar(60) NOT NULL DEFAULT '',
  `referrerPhoneNo` varchar(30) NOT NULL DEFAULT '',
  `relationship` varchar(20) NOT NULL DEFAULT '',
  `referrerAddress` varchar(100) NOT NULL DEFAULT '',
  `referrerCity` varchar(100) NOT NULL DEFAULT '',
  `referrerState` varchar(30) NOT NULL DEFAULT '',
  `referrerZip` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`RID`),
  KEY `fileID` (`fileID`),
  CONSTRAINT `tblStudentLoanReferences_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB AUTO_INCREMENT=8952 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSubmissionItem`
-- ----------------------------
DROP TABLE IF EXISTS `tblSubmissionItem`;
CREATE TABLE `tblSubmissionItem` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `submissionItem` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `prequalNumber` int(11) DEFAULT NULL,
  `responseNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=9565 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSupportingDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblSupportingDocs`;
CREATE TABLE `tblSupportingDocs` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prequalNumber` int(11) DEFAULT NULL,
  `docName` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `displayDocName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `docType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `userType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3763 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSurvey`
-- ----------------------------
DROP TABLE IF EXISTS `tblSurvey`;
CREATE TABLE `tblSurvey` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `content` longtext CHARACTER SET latin1,
  `showToBO` tinyint(4) DEFAULT '1',
  `showToBranch` tinyint(4) DEFAULT '1',
  `showToAgent` tinyint(4) DEFAULT '1',
  `showToClient` tinyint(4) DEFAULT '1',
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblSurveyTaken`
-- ----------------------------
DROP TABLE IF EXISTS `tblSurveyTaken`;
CREATE TABLE `tblSurveyTaken` (
  `STID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SID` int(10) unsigned NOT NULL,
  `UID` int(11) DEFAULT NULL,
  `UType` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Taken` tinyint(4) DEFAULT '0',
  `remindLater` tinyint(4) DEFAULT '0',
  `showAgain` tinyint(4) DEFAULT '1',
  `takenDate` datetime DEFAULT NULL,
  PRIMARY KEY (`STID`),
  KEY `SID` (`SID`),
  CONSTRAINT `tblSurveyTaken_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `tblSurvey` (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=1940 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTMPSubscription`
-- ----------------------------
DROP TABLE IF EXISTS `tblTMPSubscription`;
CREATE TABLE `tblTMPSubscription` (
  `TMPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `UType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `payment` decimal(13,2) DEFAULT '0.00',
  `paymentStatus` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `paymentError` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `transactionID` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `ARBSubscriptionID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `ARBSubscriptionStatus` longtext CHARACTER SET latin1,
  `paymentDate` datetime DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `licensePayment` decimal(13,2) DEFAULT '0.00',
  `plan` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`TMPID`)
) ENGINE=InnoDB AUTO_INCREMENT=3171 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTMPSupportTestimonial`
-- ----------------------------
DROP TABLE IF EXISTS `tblTMPSupportTestimonial`;
CREATE TABLE `tblTMPSupportTestimonial` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `testiName` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `testiEmail` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `testiSuccessDesc` longtext CHARACTER SET latin1,
  `activeStatus` tinyint(4) DEFAULT '1',
  `publish` tinyint(4) DEFAULT '0',
  `recordDate` date DEFAULT NULL,
  `testiCompany` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTask`
-- ----------------------------
DROP TABLE IF EXISTS `tblTask`;
CREATE TABLE `tblTask` (
  `taskId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clientId_del` int(11) unsigned DEFAULT '0',
  `fileID` int(10) unsigned DEFAULT '0',
  `subject` varchar(250) DEFAULT '',
  `dueDate` datetime DEFAULT NULL,
  `reminderDate` datetime DEFAULT NULL,
  `comments` longtext,
  `recordDate` date NOT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdBy` int(10) unsigned NOT NULL DEFAULT '0',
  `taskStatus` enum('','Completed','In Progress','Not Started','Not Applicable') NOT NULL DEFAULT '',
  `priorityLevel` enum('Low','Medium','High','') NOT NULL DEFAULT 'Low',
  `createdUserType` enum('Client','Agent','DIY Client','Admin','Branch','Employee','','CFPB Auditor','Auditor Manager') NOT NULL DEFAULT '',
  `remindedOn` date DEFAULT NULL,
  `sentReminder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isSendLinkToUser` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sendSMS` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sendNH` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`taskId`,`recordDate`),
  KEY `activeStatus` (`activeStatus`),
  KEY `recordDate` (`recordDate`),
  KEY `reminderDate` (`reminderDate`),
  KEY `fileID` (`fileID`),
  KEY `createdBy` (`createdBy`),
  KEY `createdUserType` (`createdUserType`),
  KEY `taskStatus` (`taskStatus`),
  KEY `activeStatus_2` (`activeStatus`,`taskId`),
  KEY `createdUserType_2` (`createdUserType`,`createdBy`),
  KEY `dueDate` (`dueDate`,`taskId`),
  KEY `priorityLevel` (`priorityLevel`),
  KEY `subject` (`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=647413 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTaskDocs`
-- ----------------------------
DROP TABLE IF EXISTS `tblTaskDocs`;
CREATE TABLE `tblTaskDocs` (
  `TDID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskID` int(10) unsigned NOT NULL,
  `docName` blob,
  `uploadedBy` int(11) DEFAULT NULL,
  `uploadedDate` datetime DEFAULT NULL,
  `uploadingUserType` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  `docDisplayName` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `fileCopied` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TDID`),
  KEY `taskID` (`taskID`),
  CONSTRAINT `tblTaskDocs_ibfk_1` FOREIGN KEY (`taskID`) REFERENCES `tblTask` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=1388 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTaskEmployee`
-- ----------------------------
DROP TABLE IF EXISTS `tblTaskEmployee`;
CREATE TABLE `tblTaskEmployee` (
  `taskEmpId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskId` int(10) unsigned NOT NULL,
  `employeeId` int(10) unsigned NOT NULL,
  `recordDate` date DEFAULT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `receiverUserType` enum('Agent','Branch','Client','Employee','','CFPB Auditor','Auditor Manager') CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`taskEmpId`),
  KEY `taskId` (`taskId`),
  KEY `employeeId` (`employeeId`),
  KEY `receiverUserType` (`receiverUserType`),
  KEY `activeStatus` (`activeStatus`,`taskId`,`employeeId`,`receiverUserType`),
  CONSTRAINT `tblTaskEmployee_ibfk_2` FOREIGN KEY (`taskId`) REFERENCES `tblTask` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=1813551 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempClientUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempClientUpdated`;
CREATE TABLE `tblTempClientUpdated` (
  `fileNumber` varchar(14) DEFAULT NULL,
  `createdOn` varchar(20) DEFAULT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `address1` varchar(60) DEFAULT NULL,
  `address2` varchar(60) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zipCode` varchar(6) DEFAULT NULL,
  `homeNumber` varchar(15) DEFAULT NULL,
  `workNumber` varchar(15) DEFAULT NULL,
  `cellNumber` varchar(15) DEFAULT NULL,
  `alternateNumber` varchar(15) DEFAULT NULL,
  `emailAddress` varchar(40) DEFAULT NULL,
  `updatedOn` varchar(20) DEFAULT NULL,
  `updatedBy` varchar(50) DEFAULT NULL,
  `createdOnNew` date DEFAULT NULL,
  `createdOn1` datetime DEFAULT NULL,
  `updatedBy1` datetime DEFAULT NULL,
  `updatedOn1` datetime DEFAULT NULL,
  `clientID` int(11) DEFAULT NULL,
  `LMRID` int(11) DEFAULT NULL,
  KEY `fileNumber` (`fileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempFinancialInfoUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempFinancialInfoUpdated`;
CREATE TABLE `tblTempFinancialInfoUpdated` (
  `FileNumber` varchar(14) DEFAULT NULL,
  `BorGrossMonthlyIncome` varchar(15) DEFAULT NULL,
  `OvertimeIncome` varchar(15) DEFAULT NULL,
  `SpouseGrossIncome` varchar(15) DEFAULT NULL,
  `CommissionsIncome` varchar(15) DEFAULT NULL,
  `BonusIncome` varchar(15) DEFAULT NULL,
  `EarnedInterest` varchar(15) DEFAULT NULL,
  `ChildSupportIncome` varchar(15) DEFAULT NULL,
  `DisabilityIncome` varchar(15) DEFAULT NULL,
  `RetirementIncome` varchar(15) DEFAULT NULL,
  `RentalIncome` varchar(15) DEFAULT NULL,
  `OtherIncome` varchar(15) DEFAULT NULL,
  `OtherIncome2` varchar(15) DEFAULT NULL,
  `OtherIncome3` varchar(15) DEFAULT NULL,
  `OtherIncome4` varchar(15) DEFAULT NULL,
  `AssetsCheckingAccount` varchar(15) DEFAULT NULL,
  `AssetsSavingsAccount` varchar(15) DEFAULT NULL,
  `AssetsOther` varchar(15) DEFAULT NULL,
  `AssetsCash` varchar(15) DEFAULT NULL,
  `1stlienTotalPayment` varchar(15) DEFAULT NULL,
  `1stlienPropertyTax` varchar(15) DEFAULT NULL,
  `1stlienHomeInsurance` varchar(15) DEFAULT NULL,
  `1stlienHOA` varchar(15) DEFAULT NULL,
  `ExpOtherMortgages` varchar(15) DEFAULT NULL,
  `ExpAutoLoans` varchar(15) DEFAULT NULL,
  `CarExpenses` varchar(15) DEFAULT NULL,
  `Electricity` varchar(15) DEFAULT NULL,
  `NaturalGas` varchar(15) DEFAULT NULL,
  `WaterSewage` varchar(15) DEFAULT NULL,
  `UtlitiesOther` varchar(15) DEFAULT NULL,
  `UtilitiesTelephone` varchar(15) DEFAULT NULL,
  `Cable` varchar(15) DEFAULT NULL,
  `CreditCards` varchar(15) DEFAULT NULL,
  `UnsecuredLoans` varchar(15) DEFAULT NULL,
  `OtherLoans` varchar(15) DEFAULT NULL,
  `Insurancehealth` varchar(15) DEFAULT NULL,
  `1stlienTaxes` varchar(15) DEFAULT NULL,
  `ChurchClubdonations` varchar(15) DEFAULT NULL,
  `UnionDues` varchar(15) DEFAULT NULL,
  `DoctorMedicalBills` varchar(15) DEFAULT NULL,
  `PrescriptionsDoctorMedicalBills` varchar(15) DEFAULT NULL,
  `ChildDependentCare` varchar(15) DEFAULT NULL,
  `ChildSupportAlimony` varchar(15) DEFAULT NULL,
  `StudentLoans` varchar(15) DEFAULT NULL,
  `DryCleaning` varchar(15) DEFAULT NULL,
  `Groceries` varchar(15) DEFAULT NULL,
  `DryCleaningClothing` varchar(15) DEFAULT NULL,
  `OtherExpenses` varchar(15) DEFAULT NULL,
  `LMRID` int(11) DEFAULT NULL,
  KEY `FileNumber` (`FileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempHardshipUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempHardshipUpdated`;
CREATE TABLE `tblTempHardshipUpdated` (
  `fileNumber` varchar(14) DEFAULT NULL,
  `panelName` varchar(15) DEFAULT NULL,
  `hardship_Select` varchar(25) DEFAULT NULL,
  `hardshipReason` varchar(150) DEFAULT NULL,
  `hardshipDate` varchar(15) DEFAULT NULL,
  `dependents` varchar(10) DEFAULT NULL,
  `dependentAges` varchar(25) DEFAULT NULL,
  `otherDependents` varchar(10) DEFAULT NULL,
  `totalOccupants` varchar(10) DEFAULT NULL,
  `LMRID` int(11) DEFAULT NULL,
  KEY `fileNumber` (`fileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempPaymentInfoUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempPaymentInfoUpdated`;
CREATE TABLE `tblTempPaymentInfoUpdated` (
  `FileNumber` varchar(14) DEFAULT NULL,
  `PaymentType` varchar(20) DEFAULT NULL,
  `CheckingACTBankName` varchar(50) DEFAULT NULL,
  `AccountType` varchar(20) DEFAULT NULL,
  `bankroutingnumber` varchar(15) DEFAULT NULL,
  `CheckingACTNumber` varchar(25) DEFAULT NULL,
  `ACTHolderAddr` varchar(150) DEFAULT NULL,
  `ACTHoldersCity` varchar(50) DEFAULT NULL,
  `ACTHoldersState` varchar(15) DEFAULT NULL,
  `ACTHoldersZip` varchar(15) DEFAULT NULL,
  `ACTHolderName` varchar(150) DEFAULT NULL,
  `ACTBankName` varchar(75) DEFAULT NULL,
  `creditCardType` varchar(20) DEFAULT NULL,
  `Card` varchar(35) DEFAULT NULL,
  `CVV` varchar(15) DEFAULT NULL,
  `ExpDateMonth` varchar(6) DEFAULT NULL,
  `ExpDateYear` varchar(6) DEFAULT NULL,
  `cardHolderName` varchar(75) DEFAULT NULL,
  `CardHoldersAddress` varchar(150) DEFAULT NULL,
  `CardHoldersCity` varchar(50) DEFAULT NULL,
  `CardHoldersState` varchar(15) DEFAULT NULL,
  `Cardholderszip` varchar(10) DEFAULT NULL,
  `PayorPhonenumber` varchar(15) DEFAULT NULL,
  `Phase1DateOwed` varchar(15) DEFAULT NULL,
  `Phase1TotalOwed` varchar(10) DEFAULT NULL,
  `Phase1PaymentNotes` varchar(15) DEFAULT NULL,
  `Phase2DateOwed` varchar(15) DEFAULT NULL,
  `Phase2TotalOwed` varchar(10) DEFAULT NULL,
  `Phase2PaymentStatus` varchar(15) DEFAULT NULL,
  `Phase3DateOwed` varchar(15) DEFAULT NULL,
  `Phase3TotalOwed` varchar(10) DEFAULT NULL,
  `Phase3PaymentNotes` varchar(15) DEFAULT NULL,
  `Phase4DateOwed` varchar(15) DEFAULT NULL,
  `Phase4TotalOwed` varchar(10) DEFAULT NULL,
  `Phase4PaymentNotes` varchar(15) DEFAULT NULL,
  `LMRID` int(11) DEFAULT NULL,
  `Phase1DateOwed1` date DEFAULT NULL,
  `Phase2DateOwed2` date DEFAULT NULL,
  `Phase3DateOwed3` date DEFAULT NULL,
  `Phase4DateOwed4` date DEFAULT NULL,
  KEY `FileNumber` (`FileNumber`),
  KEY `FileNumber_2` (`FileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempPersonalInfoUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempPersonalInfoUpdated`;
CREATE TABLE `tblTempPersonalInfoUpdated` (
  `FileNumber` varchar(14) NOT NULL,
  `BorFirstName` varchar(50) NOT NULL,
  `BorLastName` varchar(50) NOT NULL,
  `BorEmailAddress` varchar(50) NOT NULL,
  `BorHomeNumber` varchar(15) NOT NULL,
  `BorCellNumber` varchar(15) NOT NULL,
  `BorWorkNumber` varchar(15) NOT NULL,
  `BorMailingAddressstreet` varchar(150) NOT NULL,
  `BorMailingAddresCity` varchar(100) NOT NULL,
  `MailingState` varchar(10) NOT NULL,
  `MailingZip` varchar(10) NOT NULL,
  `BorrowerCallbackDate` varchar(20) NOT NULL,
  `ServicesRequested` varchar(50) NOT NULL,
  `BorSSN` varchar(20) NOT NULL,
  `BorDOB` varchar(20) NOT NULL,
  `BorMartialStatus` varchar(30) NOT NULL,
  `EmploymentType` varchar(20) NOT NULL,
  `EmployerName` varchar(50) NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `EmploymentPhone` varchar(15) NOT NULL,
  `EmploymentAddress` varchar(150) NOT NULL,
  `CoborFirstName` varchar(50) NOT NULL,
  `CoborLastName` varchar(50) NOT NULL,
  `CoHomeNumber` varchar(15) NOT NULL,
  `CoCellNumber` varchar(15) NOT NULL,
  `CoWorkNumber` varchar(15) NOT NULL,
  `CoAlternateNumber` varchar(15) NOT NULL,
  `CoAddressLine1` varchar(150) NOT NULL,
  `CoZipCode` varchar(10) NOT NULL,
  `CoEmailAddress` varchar(75) NOT NULL,
  `CoMartialStatus` varchar(30) NOT NULL,
  `CoSSN` varchar(20) NOT NULL,
  `CoDOB` varchar(30) NOT NULL,
  `CoEmploymentType` varchar(30) NOT NULL,
  `CoEmployerName` varchar(50) NOT NULL,
  `CoOccupation` varchar(40) NOT NULL,
  `CoEmploymentPhone` varchar(15) NOT NULL,
  `CoEmploymentAddress` varchar(150) NOT NULL,
  `CoEmploymentLength` varchar(20) NOT NULL,
  `LMRId` int(11) NOT NULL,
  `BorrowerCallbackDate1` date DEFAULT NULL,
  KEY `FileNumber` (`FileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTempPropertyLenderUpdated`
-- ----------------------------
DROP TABLE IF EXISTS `tblTempPropertyLenderUpdated`;
CREATE TABLE `tblTempPropertyLenderUpdated` (
  `FileNumber` varchar(14) DEFAULT NULL,
  `SubjectPropertyAddress` varchar(150) DEFAULT NULL,
  `SubjectPropertyCity` varchar(30) DEFAULT NULL,
  `SubjectPropertyState` varchar(10) DEFAULT NULL,
  `SubjectPropertyZip` varchar(10) DEFAULT NULL,
  `SubjectPropertyCountry` varchar(25) DEFAULT NULL,
  `PropertyType` varchar(35) DEFAULT NULL,
  `propertyForRent` varchar(10) DEFAULT NULL,
  `homeValue` varchar(15) DEFAULT NULL,
  `1stlienloanoriginationdate` varchar(10) DEFAULT NULL,
  `1stlienoriginalloanamount` varchar(15) DEFAULT NULL,
  `receiveNotice` varchar(10) DEFAULT NULL,
  `noticeReceivedDate` varchar(10) DEFAULT NULL,
  `loanSalesDate` varchar(15) DEFAULT NULL,
  `BorrowerNotes` varchar(150) DEFAULT NULL,
  `attorneyName` varchar(50) DEFAULT NULL,
  `attorneyEmail` varchar(75) DEFAULT NULL,
  `attorneyPhone` varchar(25) DEFAULT NULL,
  `attorneyFax` varchar(15) DEFAULT NULL,
  `receiveModification` varchar(25) DEFAULT NULL,
  `receivedModificationDate` varchar(45) DEFAULT NULL,
  `InBankruptcy_Select` varchar(20) DEFAULT NULL,
  `filedBankruptcy` varchar(20) DEFAULT NULL,
  `Chapter` varchar(20) DEFAULT NULL,
  `bankruptcyFilingDate` varchar(15) DEFAULT NULL,
  `bankruptcyDischargeDate` varchar(20) DEFAULT NULL,
  `1stliencurrentlender2` varchar(255) DEFAULT NULL,
  `1stlienloannumber` varchar(30) DEFAULT NULL,
  `1stlienMonthlyPayment` varchar(20) DEFAULT NULL,
  `1stlienCurrentUnpaidPrincipalBalance` varchar(20) DEFAULT NULL,
  `1stlienRate` varchar(10) DEFAULT NULL,
  `1stlienMonthsBehind` varchar(10) DEFAULT NULL,
  `1stlienLoanType` varchar(15) DEFAULT NULL,
  `1stlienRemainingMonths` varchar(15) DEFAULT NULL,
  `2ndliencurrentlender` varchar(150) DEFAULT NULL,
  `2ndlienloannumber` varchar(30) DEFAULT NULL,
  `2ndlienPayment` varchar(15) DEFAULT NULL,
  `2ndlienCurrentUnpaidBalance` varchar(15) DEFAULT NULL,
  `2ndlienRate` varchar(15) DEFAULT NULL,
  `2ndlienmonthsbehind` varchar(15) DEFAULT NULL,
  `2ndlienloantype` varchar(15) DEFAULT NULL,
  `LMRID` int(11) DEFAULT NULL,
  KEY `FileNumber` (`FileNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTemplNoteEntries`
-- ----------------------------
DROP TABLE IF EXISTS `tblTemplNoteEntries`;
CREATE TABLE `tblTemplNoteEntries` (
  `fileNumber` varchar(15) DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `message` blob,
  `tempID` int(10) NOT NULL AUTO_INCREMENT,
  `fileID` int(11) DEFAULT NULL,
  KEY `tempID` (`tempID`),
  KEY `fileNumber` (`fileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4866 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTemplNoteEntriesNew`
-- ----------------------------
DROP TABLE IF EXISTS `tblTemplNoteEntriesNew`;
CREATE TABLE `tblTemplNoteEntriesNew` (
  `fileNumber` varchar(15) DEFAULT NULL,
  `createdOn` varchar(100) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `message` blob,
  `tempID` int(10) NOT NULL AUTO_INCREMENT,
  `fileID` int(11) DEFAULT NULL,
  KEY `tempID` (`tempID`),
  KEY `fileNumber` (`fileNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4866 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTicketReply`
-- ----------------------------
DROP TABLE IF EXISTS `tblTicketReply`;
CREATE TABLE `tblTicketReply` (
  `TRID` int(11) NOT NULL AUTO_INCREMENT,
  `TID` int(11) NOT NULL,
  `MID` int(11) DEFAULT '0',
  `memberType` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `reply` longtext CHARACTER SET latin1,
  `attachementName` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `remarkUrl` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` int(11) DEFAULT '1',
  `visibleToUser` int(11) DEFAULT '1',
  `AssignedTo` varchar(10) CHARACTER SET latin1 DEFAULT '0',
  PRIMARY KEY (`TRID`)
) ENGINE=InnoDB AUTO_INCREMENT=1192 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTickets`
-- ----------------------------
DROP TABLE IF EXISTS `tblTickets`;
CREATE TABLE `tblTickets` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `MID` int(11) DEFAULT '0',
  `memberType` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `name` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `priority` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `subject` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  `comments` longtext CHARACTER SET latin1,
  `attachementName` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `reason` longtext CHARACTER SET latin1,
  `remarkUrl` longtext CHARACTER SET latin1,
  `recordDate` datetime DEFAULT NULL,
  `closedDate` datetime DEFAULT NULL,
  `activeStatus` int(11) DEFAULT '1',
  `ticketStatus` varchar(50) CHARACTER SET latin1 DEFAULT 'OPEN',
  `AssignedTo` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `yourOS` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `browserName` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `browserVersion` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=953 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTracking`
-- ----------------------------
DROP TABLE IF EXISTS `tblTracking`;
CREATE TABLE `tblTracking` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `brokerNumber` int(11) DEFAULT NULL,
  `viewedDateAndTime` datetime DEFAULT NULL,
  `noOfVisit` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrackingEmail`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrackingEmail`;
CREATE TABLE `tblTrackingEmail` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AENumber` int(11) DEFAULT NULL,
  `EMTopic` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `viewedDateAndTime` datetime DEFAULT NULL,
  `userType` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `brokerNumber` int(11) DEFAULT NULL,
  `referralCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`serialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=485473 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustActions`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustActions`;
CREATE TABLE `tblTrustActions` (
  `SAID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txnID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `actions` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `actionTime` datetime DEFAULT NULL,
  `userIP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `userName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `userEmail` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`SAID`),
  KEY `txnID` (`txnID`),
  CONSTRAINT `tblTrustActions_ibfk_1` FOREIGN KEY (`txnID`) REFERENCES `tblTrustTransactions` (`txnID`)
) ENGINE=InnoDB AUTO_INCREMENT=187020 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustCreditors`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustCreditors`;
CREATE TABLE `tblTrustCreditors` (
  `LMRId` int(10) unsigned NOT NULL,
  `txnID` varchar(20) NOT NULL,
  `CRID` int(10) unsigned NOT NULL,
  KEY `LMRId` (`LMRId`),
  CONSTRAINT `tblTrustCreditors_ibfk_1` FOREIGN KEY (`LMRId`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustDocPositions`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustDocPositions`;
CREATE TABLE `tblTrustDocPositions` (
  `DPID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `txnID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pageNo` int(11) DEFAULT NULL,
  `xPos` float DEFAULT NULL,
  `yPos` float DEFAULT NULL,
  `showTo` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `createdOn` datetime DEFAULT NULL,
  `userSign` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `userIP` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `signedOn` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `signField` int(11) DEFAULT '1',
  `maxLen` int(11) DEFAULT '0',
  `fldType` varchar(10) CHARACTER SET latin1 DEFAULT 'txt',
  `fldValue` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `signOk` int(11) DEFAULT '0',
  `footerSign` int(11) DEFAULT '0',
  `signDPID` int(11) DEFAULT NULL,
  `initialField` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DPID`),
  KEY `txnID` (`txnID`),
  CONSTRAINT `tblTrustDocPositions_ibfk_1` FOREIGN KEY (`txnID`) REFERENCES `tblTrustTransactions` (`txnID`)
) ENGINE=InnoDB AUTO_INCREMENT=464897 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustEmailTo`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustEmailTo`;
CREATE TABLE `tblTrustEmailTo` (
  `SAID` int(11) DEFAULT NULL,
  `recipientName` varchar(60) CHARACTER SET latin1 DEFAULT NULL,
  `recipientEmail` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `emailedOn` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustTransactions`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustTransactions`;
CREATE TABLE `tblTrustTransactions` (
  `LMRID` int(10) unsigned NOT NULL,
  `txnID` varchar(20) CHARACTER SET latin1 NOT NULL,
  `docID` int(11) DEFAULT NULL,
  `fileName` longtext CHARACTER SET latin1,
  `fStatus` tinyint(4) DEFAULT '1',
  `recordDate` datetime DEFAULT NULL,
  `pkgType` varchar(10) CHARACTER SET latin1 DEFAULT 'LibPack',
  `dStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `LMRID` (`LMRID`),
  KEY `txnID` (`txnID`),
  CONSTRAINT `tblTrustTransactions_ibfk_1` FOREIGN KEY (`LMRID`) REFERENCES `tblFile` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblTrustUserSign`
-- ----------------------------
DROP TABLE IF EXISTS `tblTrustUserSign`;
CREATE TABLE `tblTrustUserSign` (
  `USID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `UType` varchar(14) DEFAULT NULL,
  `fileName` longtext,
  `savedOn` datetime DEFAULT NULL,
  `activeStatus` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`USID`)
) ENGINE=InnoDB AUTO_INCREMENT=7057 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblUnsubscribedEmail`
-- ----------------------------
DROP TABLE IF EXISTS `tblUnsubscribedEmail`;
CREATE TABLE `tblUnsubscribedEmail` (
  `UEID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(75) NOT NULL DEFAULT '',
  `unSubscribedDate` datetime NOT NULL,
  `acctName` varchar(75) NOT NULL DEFAULT '',
  `PCID` int(11) unsigned NOT NULL DEFAULT '0',
  `tried` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UEID`),
  KEY `email` (`email`),
  KEY `PCID` (`PCID`,`tried`),
  KEY `acctName` (`acctName`)
) ENGINE=InnoDB AUTO_INCREMENT=4392 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblUserAccess`
-- ----------------------------
DROP TABLE IF EXISTS `tblUserAccess`;
CREATE TABLE `tblUserAccess` (
  `serialNumber` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userNumber` int(11) DEFAULT '0',
  `recordDate` datetime DEFAULT NULL,
  `userType` varchar(10) DEFAULT '',
  `SID` varchar(200) DEFAULT '',
  `LO` datetime DEFAULT NULL,
  `IPAddr` varchar(25) DEFAULT '',
  `remarks` longtext,
  `PCID` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`serialNumber`),
  KEY `userNumber` (`userNumber`),
  KEY `recordDate` (`recordDate`)
) ENGINE=InnoDB AUTO_INCREMENT=3805317 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblUserAssignedWorkflow`
-- ----------------------------
DROP TABLE IF EXISTS `tblUserAssignedWorkflow`;
CREATE TABLE `tblUserAssignedWorkflow` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `WFID` int(10) unsigned NOT NULL,
  `UID` int(10) DEFAULT NULL,
  `UType` varchar(10) DEFAULT NULL,
  `updatedBy` int(10) DEFAULT NULL,
  `updatedType` varchar(10) DEFAULT NULL,
  `recordDate` datetime DEFAULT NULL,
  `activeStatus` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`SID`),
  KEY `WFID` (`WFID`),
  CONSTRAINT `tblUserAssignedWorkflow_ibfk_1` FOREIGN KEY (`WFID`) REFERENCES `tblPCWorkflow` (`WFID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblUserPreferences`
-- ----------------------------
DROP TABLE IF EXISTS `tblUserPreferences`;
CREATE TABLE `tblUserPreferences` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `COLUMNS` varchar(30) NOT NULL DEFAULT '',
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Employee','Branch','Agent','Super','Auditor','Sales','REST','Client','CFPB Auditor','Auditor Manager') NOT NULL,
  `PCID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`SID`),
  KEY `PCID` (`PCID`),
  CONSTRAINT `tblUserPreferences_ibfk_1` FOREIGN KEY (`PCID`) REFERENCES `tblProcessingCompany` (`PCID`)
) ENGINE=InnoDB AUTO_INCREMENT=955964 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblUserRole`
-- ----------------------------
DROP TABLE IF EXISTS `tblUserRole`;
CREATE TABLE `tblUserRole` (
  `UID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userType` varchar(60) NOT NULL,
  `isPublic` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `activeStatus` tinyint(4) DEFAULT '1',
  `createdDate` date DEFAULT NULL,
  `type` enum('M','C') DEFAULT 'M',
  `PCID` int(10) unsigned NOT NULL,
  `moduleCode` varchar(200) DEFAULT 'ALL',
  PRIMARY KEY (`UID`),
  UNIQUE KEY `userType` (`userType`,`PCID`,`activeStatus`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tblWorkflowFlatNotes`
-- ----------------------------
DROP TABLE IF EXISTS `tblWorkflowFlatNotes`;
CREATE TABLE `tblWorkflowFlatNotes` (
  `SID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fileID` int(10) unsigned NOT NULL,
  `WFSID` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `UID` int(10) unsigned NOT NULL,
  `UType` enum('Employee','Branch','Agent') NOT NULL,
  `recordDate` datetime DEFAULT NULL,
  `sendTo` longtext,
  PRIMARY KEY (`SID`),
  KEY `fileID` (`fileID`),
  KEY `WFSID` (`WFSID`),
  CONSTRAINT `tblWorkflowFlatNotes_ibfk_1` FOREIGN KEY (`fileID`) REFERENCES `tblFile` (`LMRId`),
  CONSTRAINT `tblWorkflowFlatNotes_ibfk_2` FOREIGN KEY (`WFSID`) REFERENCES `tblPCWorkflowSteps` (`WFSID`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `temp1`
-- ----------------------------
DROP TABLE IF EXISTS `temp1`;
CREATE TABLE `temp1` (
  `brokerNumber` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `temp2`
-- ----------------------------
DROP TABLE IF EXISTS `temp2`;
CREATE TABLE `temp2` (
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `temp_consumer_defense_Notes`
-- ----------------------------
DROP TABLE IF EXISTS `temp_consumer_defense_Notes`;
CREATE TABLE `temp_consumer_defense_Notes` (
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0',
  `recordDate` date DEFAULT NULL,
  `borrowerName` varchar(60) DEFAULT NULL,
  `borrowerLName` varchar(70) DEFAULT NULL,
  `fileActiveStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `fileCopied` tinyint(4) DEFAULT '0',
  KEY `LMRId` (`LMRId`),
  KEY `fileCopied` (`fileCopied`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `temp_consumer_defense_billing`
-- ----------------------------
DROP TABLE IF EXISTS `temp_consumer_defense_billing`;
CREATE TABLE `temp_consumer_defense_billing` (
  `primeStatusId` int(11) DEFAULT '0',
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `clientFName` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `clientLName` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `coBorrowerFName` varchar(70) NOT NULL DEFAULT '',
  `coBorrowerLName` varchar(70) NOT NULL DEFAULT '',
  `coBorrowerEmail` varchar(75) NOT NULL DEFAULT '',
  `coBPhoneNumber` varchar(20) NOT NULL DEFAULT '',
  `clientEmail` varchar(75) NOT NULL DEFAULT '',
  `clientPhone` varchar(20) NOT NULL DEFAULT '',
  `fileNumber` varchar(50) DEFAULT '',
  `leadSource` varchar(50) DEFAULT '',
  `receivedDate` date DEFAULT NULL,
  `brokerNumber` int(10) unsigned NOT NULL,
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0',
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `branchName` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `agentName` varchar(91) CHARACTER SET utf8 DEFAULT NULL,
  `amtOwed` varchar(30) DEFAULT NULL,
  `amtPaid` varchar(30) DEFAULT NULL,
  `balanceOwed` varchar(30) DEFAULT NULL,
  `dateOwed` date DEFAULT NULL,
  `phase` int(11) DEFAULT NULL,
  `activeStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `fileCopied` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `temp_consumer_defense_data`
-- ----------------------------
DROP TABLE IF EXISTS `temp_consumer_defense_data`;
CREATE TABLE `temp_consumer_defense_data` (
  `clientId` int(11) NOT NULL,
  `LMRId` int(10) unsigned NOT NULL DEFAULT '0',
  `recordDate` date DEFAULT NULL,
  `salesDate` date DEFAULT NULL,
  `servicer1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `servicer2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender1` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originalLender2` varchar(60) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mortgageInvestor1` int(11) DEFAULT NULL,
  `mortgageInvestor2` int(11) DEFAULT NULL,
  `borrowerName` varchar(60) DEFAULT NULL,
  `borrowerLName` varchar(70) DEFAULT NULL,
  `borrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_borrowerName` text,
  `enc_borrowerLName` text CHARACTER SET latin1,
  `enc_borrowerEmail` text CHARACTER SET latin1,
  `coBorrowerFName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerLName` varchar(70) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerEmail` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyAddress` varchar(100) DEFAULT NULL,
  `propertyCity` varchar(100) DEFAULT NULL,
  `propertyState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyCounty` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_propertyAddress` text CHARACTER SET latin1,
  `enc_propertyCity` text CHARACTER SET latin1,
  `enc_propertyState` text CHARACTER SET latin1,
  `enc_propertyZip` text CHARACTER SET latin1,
  `mailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `mailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `loanNumber2` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `phoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `ssnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `noOfMonthsBehind1` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Payment` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `homeValue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `isCoBorrower` tinyint(4) NOT NULL DEFAULT '0',
  `brokerNumber` int(10) unsigned NOT NULL,
  `fileActiveStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `altPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBAltPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `workNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerWorkNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBCellNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `houseNo` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `fax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBFax` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_ssnNumber` text CHARACTER SET latin1,
  `coBSsnNumber` varchar(12) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `enc_borrowerDOB` text CHARACTER SET latin1,
  `coBorrowerDOB` date DEFAULT NULL,
  `coBPhoneNumber` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingAddress` varchar(75) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingCity` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingState` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `coBorrowerMailingZip` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `FBRID` int(10) unsigned NOT NULL DEFAULT '0',
  `occupancy` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `propertyType` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBedRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `howManyBathRoom` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `yearPurchased` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `receivedDate` date DEFAULT NULL,
  `closedDate` date DEFAULT NULL,
  `mortgageNotes` blob,
  `borrowerDOB` date DEFAULT NULL,
  `LMRResponseId` int(10) unsigned NOT NULL DEFAULT '0',
  `lastUpdatedDate` datetime DEFAULT NULL,
  `priorityLevel` enum('high','medium','low','') CHARACTER SET latin1 DEFAULT '',
  `fileNumber` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `leadSource` varchar(50) CHARACTER SET latin1 DEFAULT '',
  `borrowerCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `lenderCallBack` varchar(25) CHARACTER SET latin1 DEFAULT '',
  `HAFADate` date DEFAULT NULL,
  `welcomeCallDate` date DEFAULT NULL,
  `bankCallCompleted` date NOT NULL DEFAULT '0000-00-00',
  `firstModPaymentAmt` varchar(30) NOT NULL DEFAULT '',
  `retainerDate` date DEFAULT NULL,
  `escalationDate` date DEFAULT NULL,
  `denialDate` date DEFAULT NULL,
  `totalCallsPlaced` int(10) DEFAULT '0',
  `trialModReceivedDate` date DEFAULT NULL,
  `firstTrialPaymentDate` date DEFAULT NULL,
  `lenderSubmissionDate` date DEFAULT NULL,
  `resolutionType` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `primeStatusId` int(11) DEFAULT '0',
  `appealDate` date DEFAULT NULL,
  `attorneyReviewDate` date DEFAULT NULL,
  `trialPaymentDate1` date DEFAULT NULL,
  `trialPaymentDate2` date DEFAULT NULL,
  `trialPaymentDate3` date DEFAULT NULL,
  `mortgageOwner1` int(11) NOT NULL DEFAULT '0',
  `loanType` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien1LPMade` date DEFAULT NULL,
  `lien1BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `noOfDaysStale` int(7) DEFAULT NULL,
  `borrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `coBorrowerTimeZone` enum('','EST','CST','PST','MST','HST','AKST','AST','UTC-11','UTC+10','YST','UTC-3','UTC+5','UTC+5:30','UTC+6','UTC+7','UTC+8','UTC+9') NOT NULL DEFAULT '',
  `loanType2` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Rate` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2Amount` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2OriginalBalance` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `lien2BalanceDue` varchar(30) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `noOfMonthsBehind2` varchar(25) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `closedDisposition` varchar(15) CHARACTER SET latin1 DEFAULT '',
  `serviceProvider` varchar(20) NOT NULL DEFAULT '',
  `coBServiceProvider` varchar(20) NOT NULL DEFAULT '',
  `fileCopied` int(11) DEFAULT '0',
  KEY `LMRId` (`LMRId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `temp_consumer_defense_docs`
-- ----------------------------
DROP TABLE IF EXISTS `temp_consumer_defense_docs`;
CREATE TABLE `temp_consumer_defense_docs` (
  `docID` int(10) unsigned NOT NULL DEFAULT '0',
  `LMRID` int(10) unsigned NOT NULL,
  `docName` blob,
  `displayDocName` blob,
  `uploadedBy` int(11) DEFAULT '0',
  `uploadedDate` datetime DEFAULT NULL,
  `uploadingUserType` varchar(30) CHARACTER SET latin1 DEFAULT '',
  `activeStatus` tinyint(4) DEFAULT '1',
  `docCategory` varchar(150) CHARACTER SET latin1 DEFAULT '',
  `fileCopied` tinyint(4) DEFAULT '0',
  `notes` longtext,
  `oldFileCopied` tinyint(1) NOT NULL DEFAULT '0',
  `dType` enum('U','GD','DB','BC') DEFAULT 'U',
  `docUrl` varchar(100) DEFAULT NULL,
  `docCategoryBak` varchar(100) DEFAULT NULL,
  `fileCreatedDate` date DEFAULT NULL,
  `FPCID` int(10) unsigned NOT NULL DEFAULT '0',
  `fileActiveStatus` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `clientName` varchar(131) DEFAULT NULL,
  KEY `fileCopied` (`fileCopied`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  View structure for `activePCsCount`
-- ----------------------------
DROP VIEW IF EXISTS `activePCsCount`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `activePCsCount` AS (select `t1`.`userNumber` AS `userNumber`,`t1`.`userType` AS `userType`,`t1`.`recordDate` AS `recordDate`,(case when ((`t1`.`userType` = 'Employee') or (`t1`.`userType` = 'employee')) then (select `ta`.`processingCompanyId` from `tblAdminUsers` `ta` where (`ta`.`AID` = `t1`.`userNumber`)) when ((`t1`.`userType` = 'Branch') or (`t1`.`userType` = 'LMR')) then (select `tb`.`processingCompanyId` from `tblBranch` `tb` where (`tb`.`executiveId` = `t1`.`userNumber`)) when ((`t1`.`userType` = 'Agent') or (`t1`.`userType` = 'Broker')) then (select `tp`.`PCID` from `tblAgentPC` `tp` where ((`tp`.`AID` = `t1`.`userNumber`) and (`tp`.`activeStatus` = 1))) else '' end) AS `PCID` from `tblUserAccess` `t1` where ((`t1`.`userNumber` > 0) and ((`t1`.`userType` = 'Employee') or (`t1`.`userType` = 'employee') or (`t1`.`userType` = 'Branch') or (`t1`.`userType` = 'LMR') or (`t1`.`userType` = 'Agent') or (`t1`.`userType` = 'Broker'))));

-- ----------------------------
--  View structure for `file_view`
-- ----------------------------
DROP VIEW IF EXISTS `file_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`theloanp_usr`@`49.207.183.50` SQL SECURITY DEFINER VIEW `file_view` AS select `t1`.`LMRId` AS `LMRId` from `tblFile` `t1` where ((`t1`.`FPCID` = 2854) and (`t1`.`activeStatus` = 1));

-- ----------------------------
--  View structure for `status_view`
-- ----------------------------
DROP VIEW IF EXISTS `status_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `status_view` AS select `tfr`.`primeStatusId` AS `primeStatusId`,`tf`.`LMRId` AS `LMRId`,`tf`.`FBRID` AS `FBRID` from (`tblFileResponse` `tfr` join `tblFile` `tf`) where ((`tf`.`LMRId` = `tfr`.`LMRId`) and (`tf`.`LMRId` = 746638) and (`tf`.`activeStatus` = 1));

-- ----------------------------
--  View structure for `v1`
-- ----------------------------
DROP VIEW IF EXISTS `v1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1` AS select `t_20180710105747_10450_Employee`.`LMRID` AS `LMRId` from `t_20180710105747_10450_Employee` where (`t_20180710105747_10450_Employee`.`LMRID` > 0);

-- ----------------------------
--  View structure for `va`
-- ----------------------------
DROP VIEW IF EXISTS `va`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `va` AS select `t1`.`userNumber` AS `userNumber` from (`tblAgent` `t1` join `tblAgentPC` `t2`) where ((`t2`.`PCID` = 93) and (`t1`.`userNumber` = `t2`.`AID`) and (`t2`.`activeStatus` = 1));

-- ----------------------------
--  View structure for `view_WFEvents`
-- ----------------------------
DROP VIEW IF EXISTS `view_WFEvents`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_WFEvents` AS (select `t4`.`appealDate` AS `appealDate`,`t3`.`salesDate` AS `salesDate`,`t4`.`HAFADate` AS `HAFADate`,`t3`.`lien1LPMade` AS `lien1LPMade`,`t3`.`recordDate` AS `recordDate`,`t3`.`receivedDate` AS `receivedDate`,`t4`.`lenderSubmissionDate` AS `lenderSubmissionDate`,`t9`.`closingDate` AS `closedDate`,`t4`.`borrowerCallBack` AS `borrowerCallBack`,`t4`.`lenderCallBack` AS `lenderCallBack`,`tfu`.`lastUpdatedDate` AS `lastUpdatedDate`,`t4`.`trialModReceivedDate` AS `trialModReceivedDate`,`t4`.`firstTrialPaymentDate` AS `firstTrialPaymentDate`,`t2`.`updatedOn` AS `updatedOn`,`t4`.`LMRId` AS `LMRID`,`t1`.`noOfDays` AS `noOfDays`,`t1`.`rule1` AS `rule1`,`t1`.`referralDate` AS `referralDate`,`t1`.`WFSID` AS `WFSID`,`t1`.`WEID` AS `WEID`,`t1`.`subject` AS `subject`,`t1`.`comments` AS `comments`,`t3`.`borrowerName` AS `borrowerName`,`t3`.`borrowerLName` AS `borrowerLName`,`t3`.`enc_borrowerName` AS `enc_borrowerName`,`t3`.`enc_borrowerLName` AS `enc_borrowerLName`,`t5`.`steps` AS `steps`,`t6`.`status` AS `status`,`t6`.`SID` AS `SID`,`t3`.`coBorrowerFName` AS `coBorrowerFName`,`t3`.`coBorrowerLName` AS `coBorrowerLName`,`tb`.`LMRExecutive` AS `LMRExecutive`,`tb`.`executiveEmail` AS `executiveEmail`,`ta`.`email` AS `email`,concat(`ta`.`firstName`,' ',`ta`.`lastName`) AS `brokerName`,`t3`.`loanNumber` AS `loanNumber`,`t3`.`loanNumber2` AS `loanNumber2`,`t4`.`fileNumber` AS `fileNumber`,`t4`.`trialPaymentDate1` AS `trialPaymentDate1`,`t7`.`loanTermExpireDate` AS `loanTermExpireDate`,`t2`.`updatedBy` AS `updatedBy`,`t2`.`updatedUserType` AS `updatedUserType`,`t8`.`proInsPolicyExpDate` AS `proInsPolicyExpDate`,`t8`.`maturityDate` AS `maturityDate`,`t7`.`PAExpirationDate` AS `PAExpirationDate`,`t8`.`dateNoteSigned` AS `dateNoteSigned`,`t8`.`propertyTaxDueDate` AS `propertyTaxDueDate`,(case when ((`t1`.`referralDate` = 'saleDate') and (`t3`.`salesDate` is not null) and (`t3`.`salesDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t3`.`salesDate` - interval `t1`.`noOfDays` day) else (`t3`.`salesDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'HAFADate') and (`t4`.`HAFADate` is not null) and (`t4`.`HAFADate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`HAFADate` - interval `t1`.`noOfDays` day) else (`t4`.`HAFADate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'lastPaymentDate') and (`t3`.`lien1LPMade` is not null) and (`t3`.`lien1LPMade` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t3`.`lien1LPMade` - interval `t1`.`noOfDays` day) else (`t3`.`lien1LPMade` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'fileCreatedDate') and (`t3`.`recordDate` is not null) and (`t3`.`recordDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t3`.`recordDate` - interval `t1`.`noOfDays` day) else (`t3`.`recordDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'receivedDate') and (`t3`.`receivedDate` is not null) and (`t3`.`receivedDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t3`.`receivedDate` - interval `t1`.`noOfDays` day) else (`t3`.`receivedDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'lenderSubmissionDate') and (`t4`.`lenderSubmissionDate` is not null) and (`t4`.`lenderSubmissionDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`lenderSubmissionDate` - interval `t1`.`noOfDays` day) else (`t4`.`lenderSubmissionDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'closedDate') and (`t9`.`closingDate` is not null) and (`t9`.`closingDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t9`.`closingDate` - interval `t1`.`noOfDays` day) else (`t9`.`closingDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'borrowerCallBackDate') and (`t4`.`borrowerCallBack` is not null) and (`t4`.`borrowerCallBack` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`borrowerCallBack` - interval `t1`.`noOfDays` day) else (`t4`.`borrowerCallBack` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'lenderCallBackDate') and (`t4`.`lenderCallBack` is not null) and (`t4`.`lenderCallBack` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`lenderCallBack` - interval `t1`.`noOfDays` day) else (`t4`.`lenderCallBack` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'lastUpdatedDate') and (`tfu`.`lastUpdatedDate` is not null) and (`t3`.`lastUpdatedDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`tfu`.`lastUpdatedDate` - interval `t1`.`noOfDays` day) else (`tfu`.`lastUpdatedDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'dateModReceived') and (`t4`.`trialModReceivedDate` is not null) and (`t4`.`trialModReceivedDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`trialModReceivedDate` - interval `t1`.`noOfDays` day) else (`t4`.`trialModReceivedDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'dateModPayment') and (`t4`.`firstTrialPaymentDate` is not null) and (`t4`.`firstTrialPaymentDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`firstTrialPaymentDate` - interval `t1`.`noOfDays` day) else (`t4`.`firstTrialPaymentDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'workflowActivation') and (`t2`.`updatedOn` is not null) and (`t2`.`updatedOn` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t2`.`updatedOn` - interval `t1`.`noOfDays` day) else (`t2`.`updatedOn` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'appealDate') and (`t4`.`appealDate` is not null) and (`t4`.`appealDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`appealDate` - interval `t1`.`noOfDays` day) else (`t4`.`appealDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'trialPaymentDate1') and (`t4`.`trialPaymentDate1` is not null) and (`t4`.`trialPaymentDate1` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t4`.`trialPaymentDate1` - interval `t1`.`noOfDays` day) else (`t4`.`trialPaymentDate1` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'loanTermExpireDate') and (`t7`.`loanTermExpireDate` is not null) and (`t7`.`loanTermExpireDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t7`.`loanTermExpireDate` - interval `t1`.`noOfDays` day) else (`t7`.`loanTermExpireDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'proInsPolicyExpDate') and (`t8`.`proInsPolicyExpDate` is not null) and (`t8`.`proInsPolicyExpDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t8`.`proInsPolicyExpDate` - interval `t1`.`noOfDays` day) else (`t8`.`proInsPolicyExpDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'maturityDate') and (`t8`.`maturityDate` is not null) and (`t8`.`maturityDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t8`.`maturityDate` - interval `t1`.`noOfDays` day) else (`t8`.`maturityDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'PAExpirationDate') and (`t7`.`PAExpirationDate` is not null) and (`t7`.`PAExpirationDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t7`.`PAExpirationDate` - interval `t1`.`noOfDays` day) else (`t7`.`PAExpirationDate` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'dateNoteSigned') and (`t8`.`dateNoteSigned` is not null) and (`t8`.`dateNoteSigned` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t8`.`dateNoteSigned` - interval `t1`.`noOfDays` day) else (`t8`.`dateNoteSigned` + interval `t1`.`noOfDays` day) end) when ((`t1`.`referralDate` = 'propertyTaxDueDate') and (`t8`.`propertyTaxDueDate` is not null) and (`t8`.`propertyTaxDueDate` <> '0000-00-00')) then (case when (`t1`.`rule1` = 'BEFORE') then (`t8`.`propertyTaxDueDate` - interval `t1`.`noOfDays` day) else (`t8`.`propertyTaxDueDate` + interval `t1`.`noOfDays` day) end) end) AS `displayDate`,`t1`.`event` AS `event`,`t1`.`UID` AS `UID`,`t1`.`UType` AS `UType`,`t1`.`fromRole` AS `fromRole`,`t1`.`fromEmail` AS `fromEmail`,`t1`.`reminderSms` AS `reminderSms`,`t1`.`reminderEmail` AS `reminderEmail`,`t3`.`FPCID` AS `FPCID`,'WFEvents' AS `myKey` from ((((((((`tblPCWorkflowEvent` `t1` join `tblLMRWorkflowSteps` `t2`) join `tblFileResponse` `t4`) join `tblFileUpdatedDate` `tfu`) join `tblPCWorkflowSteps` `t5`) join `tblFileWorkflowStepsEvents` `t6`) join `tblBranch` `tb`) join `tblAgent` `ta`) join (((`tblFile` `t3` left join `tblFileHMLONewLoanInfo` `t7` on((`t7`.`fileID` = `t3`.`LMRId`))) left join `tblFileHMLOPropInfo` `t8` on((`t8`.`fileID` = `t3`.`LMRId`))) left join `tblQAInfo` `t9` on((`t9`.`LMRId` = `t3`.`LMRId`)))) where ((`t4`.`LMRId` = `t3`.`LMRId`) and (`t3`.`LMRId` = `tfu`.`fileID`) and (`t3`.`LMRId` = `t2`.`LMRID`) and (`t1`.`WFSID` = `t2`.`WFSID`) and (`t2`.`WFSID` = `t5`.`WFSID`) and (`t2`.`dStatus` = 1) and (`t1`.`activeStatus` = 1) and (`t1`.`WEID` = `t6`.`WFEID`) and (`t3`.`LMRId` = `t6`.`fileID`) and (`tb`.`executiveId` = `t3`.`FBRID`) and (`ta`.`userNumber` = `t3`.`brokerNumber`) and (`t3`.`FPCID` = 2854)) having (cast(`displayDate` as date) between '2018-09-01' and '2018-09-30') order by `displayDate` desc);

-- ----------------------------
--  View structure for `view_empFiles`
-- ----------------------------
DROP VIEW IF EXISTS `view_empFiles`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_empFiles` AS (select `tblLMRProcessorComments`.`employeeId` AS `employeeId`,`tblLMRProcessorComments`.`fileID` AS `fileId` from `tblLMRProcessorComments` where ((`tblLMRProcessorComments`.`deleted` = 0) and (`tblLMRProcessorComments`.`employeeId` in (7386,7391,7392,7402,7403,7404,7440,7441,7442,7443,7444,7445,7446,7472,7525,7527,7528)) and (cast(`tblLMRProcessorComments`.`notesDate` as date) between '2015-07-01' and '2015-07-31')) group by `tblLMRProcessorComments`.`employeeId`,`tblLMRProcessorComments`.`fileID`);

-- ----------------------------
--  View structure for `view_fileStatus`
-- ----------------------------
DROP VIEW IF EXISTS `view_fileStatus`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fileStatus` AS (select max(`tblRecordFileStatus`.`rID`) AS `rID` from `tblRecordFileStatus` where isnull(`tblRecordFileStatus`.`noOfDays`) group by `tblRecordFileStatus`.`LMRID`);

-- ----------------------------
--  View structure for `view_fileStatus_PSID`
-- ----------------------------
DROP VIEW IF EXISTS `view_fileStatus_PSID`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fileStatus_PSID` AS (select max(`tblRecordFileStatus`.`rID`) AS `rID` from `tblRecordFileStatus` where (`tblRecordFileStatus`.`ok` = 0) group by `tblRecordFileStatus`.`LMRID`);

-- ----------------------------
--  View structure for `view_fileStatus_ok`
-- ----------------------------
DROP VIEW IF EXISTS `view_fileStatus_ok`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_fileStatus_ok` AS (select `tblRecordFileStatus`.`LMRID` AS `LMRId` from `tblRecordFileStatus` where (`tblRecordFileStatus`.`ok` = 1));

SET FOREIGN_KEY_CHECKS = 1;
