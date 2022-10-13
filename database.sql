-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: webdev2_todo
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Default','default','2022-03-10 10:50:25','2022-03-10 10:50:25'),(2,'Groceries','groceries','2022-03-10 10:50:25','2022-03-10 10:50:25'),(3,'School','school','2022-03-10 10:50:25','2022-03-10 10:50:25'),(4,'Work','work','2022-03-10 10:50:25','2022-03-10 10:50:25'),(5,'Hobbies','hobbies','2022-03-10 10:50:25','2022-03-10 10:50:25'),(6,'Music','music','2022-03-10 10:50:25','2022-03-10 10:50:25'),(7,'Social','social','2022-03-10 10:50:25','2022-03-10 10:50:25'),(8,'Chores','chores','2022-03-10 10:50:25','2022-03-10 10:50:25'),(9,'Sports','sports','2022-03-10 10:50:25','2022-03-10 10:50:25'),(10,'Travel','travel','2022-03-10 10:50:25','2022-03-10 10:50:25');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_done` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (38,10,'Check up on house in Rhodes','2022-03-11 17:10:44','2022-03-11 17:10:46',1),(40,2,'Buy Some Eggs','2022-03-11 17:13:39','2022-03-11 17:13:39',0),(41,2,'Out of Milk -> Go buy some','2022-03-11 17:13:54','2022-03-11 17:13:54',0),(42,2,'Buy Snacks! :D','2022-03-11 17:14:01','2022-03-11 17:14:02',1),(43,3,'Finish Assignment Web Dev 2','2022-03-11 17:14:15','2022-03-11 17:14:16',1),(44,3,'Start on group work for English','2022-03-11 17:14:29','2022-03-11 17:14:29',0),(45,3,'Finish Assignment Mob Dev 2','2022-03-11 17:14:39','2022-03-11 17:14:39',0),(46,4,'Do a shift from 16.00 - 23.00','2022-03-11 17:14:49','2022-03-11 17:14:49',0),(47,5,'Have some relax time','2022-03-11 17:14:56','2022-03-11 17:14:56',0),(48,5,'Play some games','2022-03-11 17:15:00','2022-03-11 17:15:01',1),(49,6,'Play the piano for 1 hour','2022-03-11 17:15:29','2022-03-11 17:15:29',0),(50,6,'Listen to the new mix','2022-03-11 17:15:34','2022-03-11 17:15:34',0),(51,7,'Go and have a lunch with Gunther on Saturday','2022-03-11 17:15:45','2022-03-11 17:15:58',1),(52,7,'Go out with friends on Friday','2022-03-11 17:15:48','2022-03-11 17:15:57',1),(53,7,'Call Seth to catch up','2022-03-11 17:15:51','2022-03-11 17:15:51',0),(54,8,'Clean up the garden','2022-03-11 17:16:03','2022-03-11 17:16:03',0),(55,8,'Clean the House','2022-03-11 17:16:08','2022-03-11 17:16:15',1),(56,8,'Do the dishes','2022-03-11 17:16:11','2022-03-11 17:16:14',1),(57,9,'Go to the gym','2022-03-11 17:16:20','2022-03-11 17:16:20',0),(58,9,'Daily run for 15 minutes','2022-03-11 17:16:23','2022-03-11 17:16:30',1),(59,10,'Travel to Japan','2022-03-11 17:16:39','2022-03-11 17:16:39',0);
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-11 19:32:48
