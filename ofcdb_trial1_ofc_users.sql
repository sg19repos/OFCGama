CREATE DATABASE  IF NOT EXISTS `ofcdb_trial1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ofcdb_trial1`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: ofcdb_trial1
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ofc_users`
--

DROP TABLE IF EXISTS `ofc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofc_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(45) NOT NULL,
  `user_firstname` varchar(45) NOT NULL,
  `user_lastname` varchar(45) DEFAULT 'NA',
  `user_phone` varchar(45) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_loggedinstate` tinyint NOT NULL,
  `user_gender` int DEFAULT '0',
  `user_verifiedstatus` tinyint NOT NULL,
  `user_consignerrating` int DEFAULT NULL,
  `user_carrierrating` int DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_email`,`user_phone`,`user_password`,`user_firstname`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_email`),
  UNIQUE KEY `user_phone_UNIQUE` (`user_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=1001009 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofc_users`
--

LOCK TABLES `ofc_users` WRITE;
/*!40000 ALTER TABLE `ofc_users` DISABLE KEYS */;
INSERT INTO `ofc_users` VALUES (1001001,'betaprog@gmail.com','beta','prog','8888888888','pass1',0,0,0,0,0),(1001005,'johndoe@email.com','John','Doe','9898989891','$2b$10$/r7SIm60VJPJAf5edoYa5Of6JBTQ/b7KABgu.hIIQspdVWZOTmPLi',0,0,0,0,0),(1001006,'jasongillespy@email.com','Jason','Gillespi','9898989892','$2y$10$GYwd.IXi04NbSnW2VA.OA.cY/3Dcg7CQ6NgeCgYnsfuEvELupWqqy',0,0,0,0,0),(1001007,'stevewaugh@email.com','Steve','Waugh','9898989893','$2b$10$eUNT4nBoyRVxjBPnakp00OfVo2MPAQ2mVXea518vy30eu8UiWKDF2',0,0,0,0,0),(1001008,'sunday@email.com','Sunday','','9885761260','$2b$10$1pDTy1/XCrhNufBUDoSDw.u0ZpAKIaSiK2HPqPDiEZ/pGx4WpJ47O',1,0,0,0,0);
/*!40000 ALTER TABLE `ofc_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-30 15:33:14
