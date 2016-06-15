-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2016 at 10:53 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mcw_committee`
--

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE IF NOT EXISTS `beneficiaries` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_idno` varchar(10) NOT NULL,
  `b_natid` varchar(15) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `b_wives` int(11) NOT NULL,
  `b_wife_name` varchar(255) NOT NULL,
  `b_idon_w` varchar(11) NOT NULL,
  `b_installment` int(11) NOT NULL,
  `b_file_no` varchar(10) NOT NULL,
  `b_file` varchar(15) NOT NULL,
  `b_account_no` varchar(24) NOT NULL,
  `b_bank_name` varchar(15) NOT NULL,
  `b_need` int(11) NOT NULL DEFAULT '0',
  `b_class` varchar(100) NOT NULL,
  `b_status` int(11) NOT NULL,
  `b_userid` int(11) NOT NULL,
  `b_lastchange` int(11) NOT NULL,
  `b_dead` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`b_id`),
  UNIQUE KEY `b_idno` (`b_idno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`b_id`, `b_idno`, `b_natid`, `b_name`, `b_wives`, `b_wife_name`, `b_idon_w`, `b_installment`, `b_file_no`, `b_file`, `b_account_no`, `b_bank_name`, `b_need`, `b_class`, `b_status`, `b_userid`, `b_lastchange`, `b_dead`) VALUES
(1, '1023697459', 'SA', 'صالح عبدالرحمن عبدالعزيز القعيمز', 1, '', '', 0, '', 'pause', 'SA0', '7', 0, '', 1, 21, 1462806497, 0),
(2, '1023917089', 'SA', 'عمشاء محمد حامد الرشيدي', 1, '', '', 0, '', 'active', 'SA3480000138608010304785', '1', 0, '', 5, 21, 1461162605, 0),
(3, '1036437265', 'SA', 'مسعد بركة عبيدالله المطيري', 2, '', '', 0, '', 'active', 'SA0', '7', 0, '', 1, 21, 1461162612, 0),
(4, '1023252743', 'SA', 'عبدالعزيز ناصر محمد العوجان', 1, '', '', 0, '', 'finalstop', 'SA0', '1', 0, '', 2, 21, 1461162965, 0),
(5, '1062445604', 'SA', 'ناصر نهار مشعان المطيري', 1, '', '', 1911, '', 'active', 'SA0', '7', 0, '', 1, 21, 1461164486, 0),
(6, '1004191118', 'SA', 'علي برجس مسلي البقمي', 1, '', '', 0, '', 'pause', 'SA74', '4', 0, '', 1, 21, 1462804863, 0),
(7, '1049871963', 'SA', 'عويض مرشد راشد المطيري', 2, '', '', 0, '', 'pause', 'SA10', '6', 0, '', 2, 1, 1462888378, 1),
(8, '1037664206', 'SA', 'ناصر مشلش هلال المطيري', 2, '', '', 0, '', 'active', 'SA10001000', '7', 0, '', 1, 21, 1463063843, 0),
(9, '1033743418', 'SA', 'عبدالله مشعل مشعان المطيري', 1, '', '', 5341, '', 'active', 'SA112221', '7', 0, '', 1, 21, 1463065647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_bid` int(11) NOT NULL,
  `c_no` int(11) NOT NULL DEFAULT '1',
  `c_need` int(11) NOT NULL DEFAULT '0',
  `c_class` varchar(100) NOT NULL,
  `c_userid` int(11) NOT NULL,
  `c_time` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `distribute`
--

CREATE TABLE IF NOT EXISTS `distribute` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_type` int(11) NOT NULL,
  `d_count_no` varchar(15) NOT NULL,
  `d_date` int(11) NOT NULL,
  `d_user` int(11) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `distribute`
--

INSERT INTO `distribute` (`d_id`, `d_type`, `d_count_no`, `d_date`, `d_user`) VALUES
(1, 1, '', 1465825174, 1);

-- --------------------------------------------------------

--
-- Table structure for table `distribute_dtl`
--

CREATE TABLE IF NOT EXISTS `distribute_dtl` (
  `dtl_id` int(11) NOT NULL AUTO_INCREMENT,
  `dtl_pid` int(11) NOT NULL,
  `dtl_bid` int(11) NOT NULL,
  `dtl_count` int(11) NOT NULL DEFAULT '1',
  `dtl_count_no` varchar(255) NOT NULL,
  `dtl_received` int(11) NOT NULL,
  `dtl_lastchange` int(11) NOT NULL,
  `dtl_user` int(11) NOT NULL,
  PRIMARY KEY (`dtl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `distribute_dtl`
--

INSERT INTO `distribute_dtl` (`dtl_id`, `dtl_pid`, `dtl_bid`, `dtl_count`, `dtl_count_no`, `dtl_received`, `dtl_lastchange`, `dtl_user`) VALUES
(1, 1, 1, 2, 'كيلو', 1, 1465825174, 1),
(2, 1, 2, 1, 'كيلو', 1, 1465825174, 1),
(3, 1, 3, 3, 'كيلو', 1, 1465825174, 1),
(4, 1, 4, 1, 'كيلو', 1, 1465825174, 1);

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE IF NOT EXISTS `family` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_bid` int(11) NOT NULL,
  `f_no` int(11) NOT NULL DEFAULT '1',
  `data` text NOT NULL,
  `employed` int(11) NOT NULL,
  `unemployed` int(11) NOT NULL,
  `lastchange` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`f_id`, `f_bid`, `f_no`, `data`, `employed`, `unemployed`, `lastchange`, `userid`) VALUES
(1, 1, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"2";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"2";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"2";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 2, 5, 1461159271, 21),
(2, 2, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:32:"عواض + سارة + مشاعل";s:4:"type";s:21:"ابناء اختها";s:5:"count";s:1:"3";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:8:"تركي";s:4:"type";s:17:"ابن اختها";s:5:"count";s:1:"1";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:10:"بتلاء";s:4:"type";s:10:"اختها";s:5:"count";s:1:"1";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 5, 1461570499, 1),
(3, 3, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"2";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 6, 1461161698, 21),
(4, 3, 2, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"2";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 2, 1463040163, 1),
(5, 4, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"3";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 4, 1461162826, 21),
(6, 5, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 3, 1461163996, 21),
(7, 6, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 5, 1462805011, 21),
(8, 7, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"2";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 4, 1462806866, 21),
(9, 7, 2, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 0, 1462807309, 21),
(11, 8, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"2";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 3, 1463064036, 21),
(13, 9, 1, 'a:7:{i:0;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"1";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:1;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"4";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:2;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:3;a:6:{s:1:"m";s:1:"1";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:4;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:5;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}i:6;a:6:{s:1:"m";s:1:"0";s:1:"f";s:1:"0";s:4:"name";s:0:"";s:4:"type";s:0:"";s:5:"count";s:1:"0";s:4:"note";s:0:"";}}', 0, 8, 1463065733, 21);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE IF NOT EXISTS `incomes` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `i_bid` int(11) NOT NULL,
  `i_no` int(11) NOT NULL DEFAULT '0',
  `i_source` int(11) NOT NULL,
  `i_info` int(11) NOT NULL,
  `i_count` int(11) NOT NULL,
  `i_date` varchar(15) NOT NULL,
  `i_mount` int(11) NOT NULL,
  `i_percent` int(11) NOT NULL,
  `i_time` int(11) NOT NULL,
  `i_userid` int(11) NOT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`i_id`, `i_bid`, `i_no`, `i_source`, `i_info`, `i_count`, `i_date`, `i_mount`, `i_percent`, `i_time`, `i_userid`) VALUES
(1, 1, 1, 2, 1, 0, '', 300, 100, 1461159327, 21),
(3, 2, 0, 5, 1, 0, '', 1000, 100, 1461160056, 21),
(4, 2, 1, 5, 1, 0, '', 2140, 100, 1461160056, 21),
(5, 3, 0, 3, 1, 0, '', 1985, 100, 1461161814, 21),
(6, 3, 0, 5, 1, 0, '', 3703, 100, 1461161814, 21),
(7, 4, 0, 3, 1, 0, '', 7267, 100, 1461162920, 21),
(8, 5, 0, 1, 1, 0, '', 3250, 100, 1461164037, 21),
(9, 6, 0, 3, 1, 0, '', 3068, 100, 1462805064, 21),
(10, 8, 0, 3, 1, 0, '', 1985, 100, 1463064189, 21),
(11, 8, 0, 5, 1, 0, '', 3703, 100, 1463064189, 21),
(12, 9, 0, 1, 1, 0, '', 13800, 100, 1463065790, 21);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `info_bid` int(11) NOT NULL,
  `info_text` text NOT NULL,
  `info_userid` int(11) NOT NULL,
  `info_time` int(11) NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_bid` int(11) NOT NULL,
  `s_no` int(11) NOT NULL DEFAULT '1',
  `s_name` varchar(128) NOT NULL,
  `s_relation` varchar(128) NOT NULL,
  `s_type` varchar(128) NOT NULL,
  `s_report` varchar(128) NOT NULL,
  `s_needs` varchar(128) NOT NULL,
  `s_time` int(11) NOT NULL,
  `s_userid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`s_id`, `s_bid`, `s_no`, `s_name`, `s_relation`, `s_type`, `s_report`, `s_needs`, `s_time`, `s_userid`) VALUES
(1, 3, 1, 'شجون', 'ابنته', 'اعاقة', '', '', 1461161780, 21),
(2, 5, 1, 'ناصر', 'نفسه', 'يده اليمنى معاقة', '', '', 1461164019, 21);

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_bid` int(11) NOT NULL,
  `p_no` int(11) NOT NULL DEFAULT '1',
  `p_name` varchar(255) NOT NULL,
  `p_number` varchar(10) NOT NULL,
  `p_userid` int(11) NOT NULL,
  `p_time` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_number` (`p_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`p_id`, `p_bid`, `p_no`, `p_name`, `p_number`, `p_userid`, `p_time`) VALUES
(1, 1, 1, 'الزوجة سارة', '0562763452', 21, 1461159271),
(2, 1, 1, 'ابنه عبدالعزيز', '0563876917', 21, 1461159271),
(3, 1, 1, 'المنزل', '4322954', 21, 1461159271),
(4, 2, 1, 'عمشاء', '0533280735', 21, 1461159993),
(5, 2, 1, 'عمشاء', '0541778451', 21, 1461159993),
(6, 2, 1, 'ابنها عبدالله', '0507281365', 21, 1461159993),
(7, 3, 1, 'مسعد', '0505729220', 21, 1461161698),
(8, 3, 1, 'أم ناصر', '0538288799', 21, 1461161698),
(10, 4, 1, 'الزوجة', '0553321131', 21, 1461162826),
(11, 4, 1, 'ابنه عبدالرحمن', '0564805079', 21, 1461162826),
(12, 4, 1, 'المنزل', '4311559', 21, 1461162826),
(13, 5, 1, 'ناصر', '0508446613', 21, 1461163996),
(14, 5, 1, 'الزوجة', '0508360103', 21, 1461163996),
(15, 6, 1, 'علي', '0551110472', 21, 1462805011),
(16, 6, 1, 'برجس', '0504523968', 21, 1462805011),
(17, 7, 1, 'سعود', '0500067310', 21, 1462806866),
(21, 7, 2, 'سعدى', '0509560845', 21, 1462811469),
(22, 8, 1, 'ناصر', '0553337396', 21, 1463064036),
(23, 8, 1, 'مصرية', '0532731975', 21, 1463064036),
(26, 9, 1, 'عبدالله', '0554176120', 21, 1463065733),
(27, 9, 1, 'ابنه ناصر', '0532631012', 21, 1463065733);

-- --------------------------------------------------------

--
-- Table structure for table `residences`
--

CREATE TABLE IF NOT EXISTS `residences` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_bid` int(11) NOT NULL,
  `r_no` int(11) NOT NULL DEFAULT '1',
  `r_wife_name` varchar(255) NOT NULL,
  `r_sponsor` varchar(100) NOT NULL,
  `r_spons` int(11) NOT NULL,
  `r_date` text NOT NULL,
  `r_date_end` text NOT NULL,
  `r_dist` varchar(255) NOT NULL,
  `r_street` varchar(255) NOT NULL,
  `r_number` varchar(255) NOT NULL,
  `r_type` int(11) NOT NULL,
  `r_owned` int(11) NOT NULL,
  `r_reatal` int(11) NOT NULL,
  `r_rent` int(11) NOT NULL,
  `r_lat` float NOT NULL,
  `r_long` float NOT NULL,
  `r_userid` int(11) NOT NULL,
  `r_lastchange` int(11) NOT NULL,
  `r_idno` varchar(11) NOT NULL,
  `r_dead` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `residences`
--

INSERT INTO `residences` (`r_id`, `r_bid`, `r_no`, `r_wife_name`, `r_sponsor`, `r_spons`, `r_date`, `r_date_end`, `r_dist`, `r_street`, `r_number`, `r_type`, `r_owned`, `r_reatal`, `r_rent`, `r_lat`, `r_long`, `r_userid`, `r_lastchange`, `r_idno`, `r_dead`) VALUES
(1, 1, 1, 'سارة ناصر عبدالله المطير', 'عبدالله العقيل', 0, '1436/07/13', '1437/07/13', 'الفيحاء', '0', '0', 1, 1, 0, 0, 0, 0, 1, 1462341093, '4563467567', 0),
(2, 2, 1, '', 'أبناء عبدالرحمن العقيل', 0, '1437/07/13', '1438/07/13', 'البصيرة', '0', '0', 3, 0, 0, 10000, 0, 0, 1, 1461571024, '', 0),
(3, 3, 1, 'منيرة غازي عايض المطيري', '', 1, '', '', 'القدس', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, '', 0),
(4, 3, 2, 'جلواء سعد سويد المطيري', '', 1, '', '', 'القدس', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, '', 0),
(5, 4, 1, 'حصة ناصر محمد العوجان', '', 1, '', '', 'اليرموك', '0', '0', 1, 1, 0, 0, 0, 0, 0, 0, '', 0),
(6, 5, 1, 'هيفاء يوسف غازي المطيري', '', 1, '', '', 'حرمة الشمالية', '0', '0', 5, 0, 0, 16000, 0, 0, 0, 0, '', 0),
(7, 6, 1, 'زينب علي حوران المطيري', '', 1, '', '', 'القدس', 'وات افر', '0', 5, 0, 0, 14000, 0, 0, 21, 1462805011, '1073651455', 0),
(8, 7, 1, 'عتيقة رشدان راشد المطيري', '', 1, '', '', 'الملك عبدالله', 'محمد', '10', 5, 1, 0, 0, 0, 0, 21, 1462811265, '1049871971', 1),
(9, 7, 2, 'سعدى سعيد طعيمس المطيري', '', 1, '', '', 'النهضة', 'سعد', '', 5, 0, 0, 0, 0, 0, 21, 1462811169, '1049871989', 0),
(11, 8, 1, 'مصرية مشحن عوض المطيري', '', 1, '', '', 'النهضة', '0', '0', 5, 1, 0, 0, 0, 0, 21, 1463064036, '1037664214', 0),
(13, 9, 1, 'مريم ناصر راجح المطيري', '', 1, '', '', 'اليرموك', 'س', '0', 5, 0, 0, 14000, 0, 0, 21, 1463065733, '1036844957', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_log`
--

CREATE TABLE IF NOT EXISTS `status_log` (
  `s_bid` int(11) NOT NULL,
  `s_status` int(11) NOT NULL,
  `s_reson` text NOT NULL,
  `s_userid` int(11) NOT NULL,
  `s_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
