-- phpMyAdmin SQL Dump
-- version 4.4.0-beta1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 12, 2015 at 10:46 PM
-- Server version: 5.5.44-0+deb8u1
-- PHP Version: 5.6.12-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `willcf`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookdetail`
--

CREATE TABLE IF NOT EXISTS `bookdetail` (
  `id` int(5) NOT NULL,
  `bookId` int(5) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookdetail`
--

INSERT INTO `bookdetail` (`id`, `bookId`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(9, 1, '步骤1', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', '2015-09-12 02:51:33', '2015-09-12 02:51:33'),
(10, 1, '步骤2', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', '2015-09-12 02:51:33', '2015-09-12 02:51:33'),
(11, 1, '步骤3', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', '2015-09-12 02:51:33', '2015-09-12 02:51:33'),
(12, 1, '步骤4', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', '2015-09-12 02:51:33', '2015-09-12 02:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(5) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` int(1) NOT NULL COMMENT '1、食材；2、菜式；3、场景',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `category`, `created_at`, `updated_at`) VALUES
(1, '猪肉', 1, '2015-09-12 00:42:22', '2015-09-12 00:42:22'),
(2, '羊肉', 1, '2015-09-12 00:42:30', '2015-09-12 00:42:30'),
(3, '家常菜', 2, '2015-09-12 00:43:56', '2015-09-12 00:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `cookbook`
--

CREATE TABLE IF NOT EXISTS `cookbook` (
  `id` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cookbook name',
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'cookbook pic',
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cookbook category and separated by ,',
  `sort` tinyint(4) DEFAULT NULL COMMENT 'sort number',
  `top` tinyint(4) DEFAULT NULL COMMENT 'top and 0:主厨推荐;1:今日特价;置顶',
  `rate` int(5) DEFAULT NULL COMMENT 'click rate 热门',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cookbook`
--

INSERT INTO `cookbook` (`id`, `name`, `avatar`, `category`, `sort`, `top`, `rate`, `created_at`, `updated_at`) VALUES
(1, '胡桃沢梅', NULL, '2', NULL, NULL, NULL, '2015-09-12 02:02:36', '2015-09-12 02:02:36'),
(2, '不吃饭会饿', NULL, ',1,2', NULL, NULL, NULL, '2015-09-12 02:09:23', '2015-09-12 02:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food name',
  `price` double(5,2) NOT NULL,
  `discount` double(3,2) NOT NULL DEFAULT '1.00',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food avatar',
  `video` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'food video',
  `detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food description',
  `cookbook` int(4) DEFAULT NULL COMMENT 'cookbook',
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food category and separated by ,',
  `sort` tinyint(4) DEFAULT NULL COMMENT 'sort number',
  `top` tinyint(4) DEFAULT '3' COMMENT 'top and 0:主厨推荐;1:今日特价;置顶',
  `rate` int(5) DEFAULT NULL COMMENT 'food click rate 热门',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `price`, `discount`, `avatar`, `video`, `detail`, `cookbook`, `category`, `sort`, `top`, `rate`, `created_at`, `updated_at`) VALUES
(1, '不吃饭会饿', 58.00, 1.00, '/testpic/11.jpg,/testpic/1.jpg,/testpic/2.jpg,/tes', '<embed src="http://player.youku.com/player.php/sid', '', 1, ',1,2,3', NULL, 0, NULL, '2015-09-12 12:31:43', '2015-09-12 04:21:46'),
(2, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 0, NULL, '2015-09-12 12:48:42', '2015-09-12 04:25:51'),
(3, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 0, NULL, '2015-09-12 12:48:48', '2015-09-12 04:25:51'),
(4, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 0, NULL, '2015-09-12 12:48:50', '2015-09-12 04:25:51'),
(5, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:53', '2015-09-12 04:25:51'),
(6, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:55', '2015-09-12 04:25:51'),
(7, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:58', '2015-09-12 04:25:51'),
(8, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:49:00', '2015-09-12 04:25:51'),
(9, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:49:05', '2015-09-12 04:25:51'),
(10, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:49:07', '2015-09-12 04:25:51'),
(11, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:49:09', '2015-09-12 04:25:51'),
(12, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:00', '2015-09-12 04:25:51'),
(13, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:01', '2015-09-12 04:25:51'),
(14, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:03', '2015-09-12 04:25:51'),
(15, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:05', '2015-09-12 04:25:51'),
(16, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:06', '2015-09-12 04:25:51'),
(17, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:07', '2015-09-12 04:25:51'),
(18, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:07', '2015-09-12 04:25:51'),
(19, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:07', '2015-09-12 04:25:51'),
(20, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:01', '2015-09-12 04:25:51'),
(21, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:01', '2015-09-12 04:25:51'),
(22, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:49:09', '2015-09-12 04:25:51'),
(23, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:03', '2015-09-12 04:25:51'),
(24, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:03', '2015-09-12 04:25:51'),
(25, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:05', '2015-09-12 04:25:51'),
(26, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:03', '2015-09-12 04:25:51'),
(27, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:05', '2015-09-12 04:25:51'),
(28, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 2, ',1,2,3', NULL, 3, NULL, '2015-09-12 13:00:05', '2015-09-12 04:25:51'),
(29, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:53', '2015-09-12 04:25:51'),
(30, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:53', '2015-09-12 04:25:51'),
(31, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:53', '2015-09-12 04:25:51'),
(32, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:53', '2015-09-12 04:25:51'),
(33, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:55', '2015-09-12 04:25:51'),
(34, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:55', '2015-09-12 04:25:51'),
(35, '胡桃沢梅', 58.11, 1.00, '/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test', '<embed src="http://player.youku.com/player.php/sid', '云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO', 1, ',1,2,3', NULL, 1, NULL, '2015-09-12 12:48:55', '2015-09-12 04:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(10) unsigned NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupA` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backupB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `country`, `section`, `province`, `city`, `town`, `created_at`, `updated_at`, `backupA`, `backupB`) VALUES
(1, '中国', '华东', '江苏省', '南京市', '江宁区', '2015-02-18 20:18:08', '2015-02-18 20:18:08', NULL, NULL),
(2, '中国', '华东', '江苏省', '南京市', '浦口区', '2015-02-18 20:18:40', '2015-02-18 20:18:40', NULL, NULL),
(3, '中国', '华东', '江苏省', '南京市', '下关区', '2015-02-18 20:18:47', '2015-02-18 20:18:47', NULL, NULL),
(4, '中国', '华东', '江苏省', '南京市', '鼓楼区', '2015-02-18 20:18:55', '2015-02-18 20:18:55', NULL, NULL),
(5, '中国', '华东', '江苏省', '南京市', '白下区', '2015-02-18 20:19:01', '2015-02-18 20:19:01', NULL, NULL),
(6, '中国', '华东', '江苏省', '南京市', '栖霞区', '2015-02-18 20:19:06', '2015-02-18 20:19:06', NULL, NULL),
(7, '中国', '华东', '江苏省', '南京市', '建邺区', '2015-02-18 20:19:12', '2015-02-18 20:19:12', NULL, NULL),
(8, '中国', '华东', '江苏省', '苏州市', '吴中区', '2015-02-18 20:20:04', '2015-02-18 20:20:04', NULL, NULL),
(9, '中国', '华东', '江苏省', '苏州市', '吴江区', '2015-02-18 20:20:10', '2015-02-18 20:20:10', NULL, NULL),
(10, '中国', '华东', '江苏省', '苏州市', '姑苏区', '2015-02-18 20:20:15', '2015-02-18 20:20:15', NULL, NULL),
(11, '中国', '华东', '江苏省', '苏州市', '相城区', '2015-02-18 20:20:29', '2015-02-18 20:20:29', NULL, NULL),
(12, '中国', '华东', '江苏省', '苏州市', '虎丘区', '2015-02-18 20:20:36', '2015-02-18 20:20:36', NULL, NULL),
(13, '中国', '华东', '上海市', '上海市', '黄浦区', '2015-02-19 04:23:45', '2015-02-19 04:23:45', NULL, NULL),
(14, '中国', '华东', '上海市', '上海市', '浦东新区', '2015-02-19 04:23:53', '2015-02-19 04:23:53', NULL, NULL),
(15, '中国', '华东', '上海市', '上海市', '徐汇区', '2015-02-19 04:24:00', '2015-02-19 04:24:00', NULL, NULL),
(16, '中国', '华东', '上海市', '上海市', '长宁区', '2015-02-19 04:24:44', '2015-02-19 04:24:44', NULL, NULL),
(17, '中国', '华东', '上海市', '上海市', '静安区', '2015-02-19 04:24:48', '2015-02-19 04:24:48', NULL, NULL),
(18, '中国', '华东', '上海市', '上海市', '普陀区', '2015-02-19 04:24:59', '2015-02-19 04:24:59', NULL, NULL),
(19, '中国', '华东', '上海市', '上海市', '闸北区', '2015-02-19 04:25:13', '2015-02-19 04:25:13', NULL, NULL),
(20, '中国', '华东', '上海市', '上海市', '虹口区', '2015-02-19 04:25:22', '2015-02-19 04:25:22', NULL, NULL),
(21, '中国', '华东', '上海市', '上海市', '杨浦区', '2015-02-19 04:25:28', '2015-02-19 04:25:28', NULL, NULL),
(22, '中国', '华东', '上海市', '上海市', '闵行区', '2015-02-19 04:25:38', '2015-02-19 04:25:38', NULL, NULL),
(23, '中国', '华东', '上海市', '上海市', '宝山区', '2015-02-19 04:25:47', '2015-02-19 04:25:47', NULL, NULL),
(24, '中国', '华东', '上海市', '上海市', '嘉定区', '2015-02-19 04:25:53', '2015-02-19 04:25:53', NULL, NULL),
(25, '中国', '华东', '上海市', '上海市', '金山区', '2015-02-19 04:26:02', '2015-02-19 04:26:02', NULL, NULL),
(26, '中国', '华东', '上海市', '上海市', '松江区', '2015-02-19 04:26:07', '2015-02-19 04:26:07', NULL, NULL),
(27, '中国', '华东', '上海市', '上海市', '青浦区', '2015-02-19 04:26:27', '2015-02-19 04:26:27', NULL, NULL),
(28, '中国', '华东', '上海市', '上海市', '奉贤区', '2015-02-19 04:26:32', '2015-02-19 04:26:32', NULL, NULL),
(29, '中国', '华东', '上海市', '上海市', '崇明县', '2015-02-19 04:26:44', '2015-02-19 04:26:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE IF NOT EXISTS `nav` (
  `no` int(5) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food category',
  `avatar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'category avatar',
  `detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'description',
  `id` tinyint(4) NOT NULL COMMENT 'category id',
  `parentId` tinyint(4) NOT NULL COMMENT 'parent id and use 0 if main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone`, `name`, `email`, `password`, `avatar`, `state`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '18625167059', '胡桃沢梅', NULL, '$2y$10$Y17uQvn4aq7OoOR2kTC0Ze13/JMNmu1EpYmt8HG2ILaNJ2udmdizG', '/avatar/default.jpg', 1, '3NAUkovUjqLrnpfphz3mSDeHlOxEfmAHZ3NiuUqVn9glrXQ8LQousadY40SW', '2015-09-11 12:11:39', '2015-09-11 15:40:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookdetail`
--
ALTER TABLE `bookdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookbook`
--
ALTER TABLE `cookbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookdetail`
--
ALTER TABLE `bookdetail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cookbook`
--
ALTER TABLE `cookbook`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
