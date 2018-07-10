CREATE DATABASE  IF NOT EXISTS `cc_project_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `cc_project_database`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: cc_project_database
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Number` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Status` int(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Number` (`Number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'The Catcher in the Rye','J. D. Salinger',0),(2,2,'Firmin: Adventures of a Metropolitan Lowlife','Sam Savage',1),(3,3,'The Spinoza Problem','Irvin D. Yalom',0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `courses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Number` int(11) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Unite` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Number` (`Number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,23151033,1,'Advanced Programming',3,30),(2,23151226,1,'Discrete Mathematics',3,30),(4,23151191,1,'Technical English Language',2,30),(5,23152412,1,'Foundations of Data Mining',3,30);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `foods` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Number` int(11) NOT NULL,
  `DayOfWeek` varchar(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Meal` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Number` (`Number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,1,'Sunday','Broad Bean Cooked Rice with Meat','Lunch',1200),(2,2,'Monday','Ghormeh Sabzi Stew','Lunch',1100),(3,3,'Tuesday','Chicken Tah-chin','Lunch',1400),(4,4,'Wednesday','Cooked Rice with Pieces of Meat','Lunch',1400),(5,5,'Thursday','Bite Kebab','Lunch',1300);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (10),(10);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sbooks`
--

DROP TABLE IF EXISTS `sbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sbooks` (
  `Title` varchar(255) NOT NULL,
  `stdnum` varchar(45) NOT NULL,
  `returndate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Title`,`stdnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbooks`
--

LOCK TABLES `sbooks` WRITE;
/*!40000 ALTER TABLE `sbooks` DISABLE KEYS */;
INSERT INTO `sbooks` VALUES ('The Catcher in the Rye','9312430000','2018/06/25');
/*!40000 ALTER TABLE `sbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selectedmeals`
--

DROP TABLE IF EXISTS `selectedmeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `selectedmeals` (
  `studentnum` varchar(45) NOT NULL,
  `day` varchar(45) NOT NULL,
  `meal` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`studentnum`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selectedmeals`
--

LOCK TABLES `selectedmeals` WRITE;
/*!40000 ALTER TABLE `selectedmeals` DISABLE KEYS */;
/*!40000 ALTER TABLE `selectedmeals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sessions` (
  `id` bigint(20) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  `expire_time` bigint(20) NOT NULL,
  `scope` varchar(255) NOT NULL,
  `session_string` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slessons`
--

DROP TABLE IF EXISTS `slessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `slessons` (
  `ID` int(11) NOT NULL,
  `sid` bigint(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slessons`
--

LOCK TABLES `slessons` WRITE;
/*!40000 ALTER TABLE `slessons` DISABLE KEYS */;
INSERT INTO `slessons` VALUES (1,1234,'Advanced Programming'),(2,1234,'Discrete Mathematics'),(2,9312430000,'Discrete Mathematics');
/*!40000 ALTER TABLE `slessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `field` int(11) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `national_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `persian_field_name` varchar(255) NOT NULL,
  `persian_first_name` varchar(255) NOT NULL,
  `persian_last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `student_number` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h7gboo6v79gig1eo7lt1fubew` (`student_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,1,'Software Eng.','mehdi','akbarian','2080631000','123456','??? ?????','????','???????','09368640180','9312430000',1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-30  3:58:12
