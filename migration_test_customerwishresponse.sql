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
-- Table structure for table `customerwishresponse`
--

DROP TABLE IF EXISTS `customerwishresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerwishresponse` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerWishRequestId` int NOT NULL,
  `VendorId` int DEFAULT NULL,
  `CommentText` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ProposedPrice` decimal(18,4) DEFAULT NULL,
  `DeliveryStartDateUtc` datetime DEFAULT NULL,
  `DeliveryEndDateUtc` datetime DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_9FA8695AD6109593FA67AFC6D1514D190C7454B3` (`CustomerWishRequestId`),
  KEY `IX_EA2CC6985DC84A81428B318821CF29EA66B878DC` (`VendorId`),
  CONSTRAINT `FK_7699C670DD1D576371FE09F688D5EABDADEBA97E` FOREIGN KEY (`VendorId`) REFERENCES `vendor` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_9408BD78E3EA63EE01B10B2C6C102F7C0F3140F9` FOREIGN KEY (`CustomerWishRequestId`) REFERENCES `customerwishrequest` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerwishresponse`
--

LOCK TABLES `customerwishresponse` WRITE;
/*!40000 ALTER TABLE `customerwishresponse` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerwishresponse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:41
