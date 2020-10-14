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
-- Table structure for table `queuedemail`
--

DROP TABLE IF EXISTS `queuedemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queuedemail` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `From` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FromName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `To` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ToName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ReplyTo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ReplyToName` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CC` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Bcc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Subject` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EmailAccountId` int NOT NULL,
  `PriorityId` int NOT NULL,
  `Body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AttachmentFilePath` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AttachmentFileName` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AttachedDownloadId` int NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `DontSendBeforeDateUtc` datetime DEFAULT NULL,
  `SentTries` int NOT NULL,
  `SentOnUtc` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_EADE912948B576BF4259B7C4050DC339A54F63AE` (`EmailAccountId`),
  KEY `IX_QueuedEmail_CreatedOnUtc` (`CreatedOnUtc` DESC),
  KEY `IX_QueuedEmail_SentOnUtc_DontSendBeforeDateUtc_Extended` (`SentOnUtc`,`DontSendBeforeDateUtc`),
  CONSTRAINT `FK_1B62499F76869C0810A8F3A176F7658DB37DAB4A` FOREIGN KEY (`EmailAccountId`) REFERENCES `emailaccount` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuedemail`
--

LOCK TABLES `queuedemail` WRITE;
/*!40000 ALTER TABLE `queuedemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuedemail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:48
