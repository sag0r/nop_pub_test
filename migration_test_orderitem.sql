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
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitem` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `OrderId` int NOT NULL,
  `ProductId` int NOT NULL,
  `OrderItemGuid` char(36) NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPriceInclTax` decimal(18,4) NOT NULL,
  `UnitPriceExclTax` decimal(18,4) NOT NULL,
  `PriceInclTax` decimal(18,4) NOT NULL,
  `PriceExclTax` decimal(18,4) NOT NULL,
  `DiscountAmountInclTax` decimal(18,4) NOT NULL,
  `DiscountAmountExclTax` decimal(18,4) NOT NULL,
  `OriginalProductCost` decimal(18,4) NOT NULL,
  `AttributeDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AttributesXml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `DownloadCount` int NOT NULL,
  `IsDownloadActivated` tinyint(1) NOT NULL,
  `LicenseDownloadId` int DEFAULT NULL,
  `ItemWeight` decimal(18,4) DEFAULT NULL,
  `RentalStartDateUtc` datetime DEFAULT NULL,
  `RentalEndDateUtc` datetime DEFAULT NULL,
  `IsNegotiable` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_01DC8234EFFE848F4BACFA16F95AA7A4EF77375D` (`OrderId`),
  KEY `IX_25727F4EB701F202F56ABC70D9470E7FB2F2D00B` (`ProductId`),
  CONSTRAINT `FK_3F98C065AAC22F3BC70A69B862886677F0A7104B` FOREIGN KEY (`OrderId`) REFERENCES `order` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_AC4D982F947AEF7F6B0F4170F1A85A2E086EAD32` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:51
