-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: migration_test
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `scheduletask`
--

DROP TABLE IF EXISTS `scheduletask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduletask` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Type` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Seconds` int NOT NULL,
  `Enabled` tinyint(1) NOT NULL,
  `StopOnError` tinyint(1) NOT NULL,
  `LastStartUtc` datetime DEFAULT NULL,
  `LastEndUtc` datetime DEFAULT NULL,
  `LastSuccessUtc` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduletask`
--

LOCK TABLES `scheduletask` WRITE;
/*!40000 ALTER TABLE `scheduletask` DISABLE KEYS */;
INSERT INTO `scheduletask` VALUES (1,'Send emails','Nop.Services.Messages.QueuedMessagesSendTask, Nop.Services',60,1,0,NULL,NULL,NULL),(2,'Keep alive','Nop.Services.Common.KeepAliveTask, Nop.Services',300,1,0,NULL,NULL,NULL),(3,'Delete guests','Nop.Services.Customers.DeleteGuestsTask, Nop.Services',600,1,0,NULL,NULL,NULL),(4,'Clear cache','Nop.Services.Caching.ClearCacheTask, Nop.Services',600,0,0,NULL,NULL,NULL),(5,'Clear log','Nop.Services.Logging.ClearLogTask, Nop.Services',3600,0,0,NULL,NULL,NULL),(6,'Update currency exchange rates','Nop.Services.Directory.UpdateExchangeRateTask, Nop.Services',3600,1,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `scheduletask` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:56:02
