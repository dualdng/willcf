-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: willcf
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookdetail`
--

DROP TABLE IF EXISTS `bookdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookdetail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bookId` int(5) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookdetail`
--

LOCK TABLES `bookdetail` WRITE;
/*!40000 ALTER TABLE `bookdetail` DISABLE KEYS */;
INSERT INTO `bookdetail` VALUES (9,1,'步骤1','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO','2015-09-12 02:51:33','2015-09-12 02:51:33'),(10,1,'步骤2','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO','2015-09-12 02:51:33','2015-09-12 02:51:33'),(11,1,'步骤3','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO','2015-09-12 02:51:33','2015-09-12 02:51:33'),(12,1,'步骤4','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO','2015-09-12 02:51:33','2015-09-12 02:51:33');
/*!40000 ALTER TABLE `bookdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cartId` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(5) NOT NULL,
  `foodId` int(5) NOT NULL,
  `foodName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(2) NOT NULL,
  `price` double(5,2) NOT NULL,
  `state` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category` int(1) NOT NULL COMMENT '1、食材；2、菜式；3、场景',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'猪肉',1,'2015-09-12 00:42:22','2015-09-12 00:42:22'),(2,'羊肉',1,'2015-09-12 00:42:30','2015-09-12 00:42:30'),(3,'家常菜',2,'2015-09-12 00:43:56','2015-09-12 00:43:56');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookbook`
--

DROP TABLE IF EXISTS `cookbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cookbook` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cookbook name',
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'cookbook pic',
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cookbook category and separated by ,',
  `sort` tinyint(4) DEFAULT NULL COMMENT 'sort number',
  `top` tinyint(4) DEFAULT NULL COMMENT 'top and 0:主厨推荐;1:今日特价;置顶',
  `rate` int(5) DEFAULT NULL COMMENT 'click rate 热门',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookbook`
--

LOCK TABLES `cookbook` WRITE;
/*!40000 ALTER TABLE `cookbook` DISABLE KEYS */;
INSERT INTO `cookbook` VALUES (1,'胡桃沢梅',NULL,'2',NULL,NULL,NULL,'2015-09-12 02:02:36','2015-09-12 02:02:36'),(2,'不吃饭会饿',NULL,',1,2',NULL,NULL,NULL,'2015-09-12 02:09:23','2015-09-12 02:09:23');
/*!40000 ALTER TABLE `cookbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food name',
  `price` double(5,2) NOT NULL,
  `discount` double(3,2) NOT NULL DEFAULT '1.00',
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food avatar',
  `video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'food video',
  `detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food description',
  `cookbook` int(4) DEFAULT NULL COMMENT 'cookbook',
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food category and separated by ,',
  `sort` tinyint(4) DEFAULT NULL COMMENT 'sort number',
  `top` tinyint(4) DEFAULT '3' COMMENT 'top and 0:主厨推荐;1:今日特价;置顶',
  `rate` int(5) DEFAULT NULL COMMENT 'food click rate 热门',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'不吃饭会饿',58.00,1.00,'/testpic/11.jpg,/testpic/1.jpg,/testpic/2.jpg,/tes','<embed src=\"http://player.youku.com/player.php/sid','',1,',1,2,3',NULL,0,NULL,'2015-09-12 12:31:43','2015-09-12 04:21:46'),(2,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,0,NULL,'2015-09-12 12:48:42','2015-09-12 04:25:51'),(3,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,0,NULL,'2015-09-12 12:48:48','2015-09-12 04:25:51'),(4,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,0,NULL,'2015-09-12 12:48:50','2015-09-12 04:25:51'),(5,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:53','2015-09-12 04:25:51'),(6,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:55','2015-09-12 04:25:51'),(7,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:58','2015-09-12 04:25:51'),(8,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:49:00','2015-09-12 04:25:51'),(9,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:49:05','2015-09-12 04:25:51'),(10,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,1,NULL,'2015-09-12 12:49:07','2015-09-12 04:25:51'),(11,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:49:09','2015-09-12 04:25:51'),(12,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:00','2015-09-12 04:25:51'),(13,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:01','2015-09-12 04:25:51'),(14,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:03','2015-09-12 04:25:51'),(15,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:05','2015-09-12 04:25:51'),(16,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:06','2015-09-12 04:25:51'),(17,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:07','2015-09-12 04:25:51'),(18,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:07','2015-09-12 04:25:51'),(19,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:07','2015-09-12 04:25:51'),(20,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:01','2015-09-12 04:25:51'),(21,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:01','2015-09-12 04:25:51'),(22,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:49:09','2015-09-12 04:25:51'),(23,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:03','2015-09-12 04:25:51'),(24,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:03','2015-09-12 04:25:51'),(25,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:05','2015-09-12 04:25:51'),(26,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:03','2015-09-12 04:25:51'),(27,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:05','2015-09-12 04:25:51'),(28,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',2,',1,2,3',NULL,3,NULL,'2015-09-12 13:00:05','2015-09-12 04:25:51'),(29,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:53','2015-09-12 04:25:51'),(30,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:53','2015-09-12 04:25:51'),(31,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:53','2015-09-12 04:25:51'),(32,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:53','2015-09-12 04:25:51'),(33,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:55','2015-09-12 04:25:51'),(34,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:55','2015-09-12 04:25:51'),(35,'胡桃沢梅',58.11,1.00,'/testpic/4.jpg,/testpic/2,jpg,/testpic/5,jpg,/test','<embed src=\"http://player.youku.com/player.php/sid','云通讯平台为开发者提供语音、IVR、短信、IM、视频等传统电信能力API，为服务器端开发提供REST Web Service 接口，并面向不同平台提供不同语言函数库和Demo，如：Android、IO',1,',1,2,3',NULL,1,NULL,'2015-09-12 12:48:55','2015-09-12 04:25:51');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `town` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupA` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backupB` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'中国','华东','江苏省','南京市','江宁区','2015-02-18 20:18:08','2015-02-18 20:18:08',NULL,NULL),(2,'中国','华东','江苏省','南京市','浦口区','2015-02-18 20:18:40','2015-02-18 20:18:40',NULL,NULL),(3,'中国','华东','江苏省','南京市','下关区','2015-02-18 20:18:47','2015-02-18 20:18:47',NULL,NULL),(4,'中国','华东','江苏省','南京市','鼓楼区','2015-02-18 20:18:55','2015-02-18 20:18:55',NULL,NULL),(5,'中国','华东','江苏省','南京市','白下区','2015-02-18 20:19:01','2015-02-18 20:19:01',NULL,NULL),(6,'中国','华东','江苏省','南京市','栖霞区','2015-02-18 20:19:06','2015-02-18 20:19:06',NULL,NULL),(7,'中国','华东','江苏省','南京市','建邺区','2015-02-18 20:19:12','2015-02-18 20:19:12',NULL,NULL),(8,'中国','华东','江苏省','苏州市','吴中区','2015-02-18 20:20:04','2015-02-18 20:20:04',NULL,NULL),(9,'中国','华东','江苏省','苏州市','吴江区','2015-02-18 20:20:10','2015-02-18 20:20:10',NULL,NULL),(10,'中国','华东','江苏省','苏州市','姑苏区','2015-02-18 20:20:15','2015-02-18 20:20:15',NULL,NULL),(11,'中国','华东','江苏省','苏州市','相城区','2015-02-18 20:20:29','2015-02-18 20:20:29',NULL,NULL),(12,'中国','华东','江苏省','苏州市','虎丘区','2015-02-18 20:20:36','2015-02-18 20:20:36',NULL,NULL),(13,'中国','华东','上海市','上海市','黄浦区','2015-02-19 04:23:45','2015-02-19 04:23:45',NULL,NULL),(14,'中国','华东','上海市','上海市','浦东新区','2015-02-19 04:23:53','2015-02-19 04:23:53',NULL,NULL),(15,'中国','华东','上海市','上海市','徐汇区','2015-02-19 04:24:00','2015-02-19 04:24:00',NULL,NULL),(16,'中国','华东','上海市','上海市','长宁区','2015-02-19 04:24:44','2015-02-19 04:24:44',NULL,NULL),(17,'中国','华东','上海市','上海市','静安区','2015-02-19 04:24:48','2015-02-19 04:24:48',NULL,NULL),(18,'中国','华东','上海市','上海市','普陀区','2015-02-19 04:24:59','2015-02-19 04:24:59',NULL,NULL),(19,'中国','华东','上海市','上海市','闸北区','2015-02-19 04:25:13','2015-02-19 04:25:13',NULL,NULL),(20,'中国','华东','上海市','上海市','虹口区','2015-02-19 04:25:22','2015-02-19 04:25:22',NULL,NULL),(21,'中国','华东','上海市','上海市','杨浦区','2015-02-19 04:25:28','2015-02-19 04:25:28',NULL,NULL),(22,'中国','华东','上海市','上海市','闵行区','2015-02-19 04:25:38','2015-02-19 04:25:38',NULL,NULL),(23,'中国','华东','上海市','上海市','宝山区','2015-02-19 04:25:47','2015-02-19 04:25:47',NULL,NULL),(24,'中国','华东','上海市','上海市','嘉定区','2015-02-19 04:25:53','2015-02-19 04:25:53',NULL,NULL),(25,'中国','华东','上海市','上海市','金山区','2015-02-19 04:26:02','2015-02-19 04:26:02',NULL,NULL),(26,'中国','华东','上海市','上海市','松江区','2015-02-19 04:26:07','2015-02-19 04:26:07',NULL,NULL),(27,'中国','华东','上海市','上海市','青浦区','2015-02-19 04:26:27','2015-02-19 04:26:27',NULL,NULL),(28,'中国','华东','上海市','上海市','奉贤区','2015-02-19 04:26:32','2015-02-19 04:26:32',NULL,NULL),(29,'中国','华东','上海市','上海市','崇明县','2015-02-19 04:26:44','2015-02-19 04:26:44',NULL,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nav`
--

DROP TABLE IF EXISTS `nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nav` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'food category',
  `avatar` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'category avatar',
  `detail` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'description',
  `id` tinyint(4) NOT NULL COMMENT 'category id',
  `parentId` tinyint(4) NOT NULL COMMENT 'parent id and use 0 if main',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nav`
--

LOCK TABLES `nav` WRITE;
/*!40000 ALTER TABLE `nav` DISABLE KEYS */;
/*!40000 ALTER TABLE `nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'18625167059','胡桃沢梅',NULL,'$2y$10$Y17uQvn4aq7OoOR2kTC0Ze13/JMNmu1EpYmt8HG2ILaNJ2udmdizG','/avatar/default.jpg',1,'3NAUkovUjqLrnpfphz3mSDeHlOxEfmAHZ3NiuUqVn9glrXQ8LQousadY40SW','2015-09-11 12:11:39','2015-09-11 15:40:52');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-12 19:15:09
