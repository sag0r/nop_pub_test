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
-- Table structure for table `productattributevalue`
--

DROP TABLE IF EXISTS `productattributevalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productattributevalue` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ColorSquaresRgb` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ProductAttributeMappingId` int NOT NULL,
  `AttributeValueTypeId` int NOT NULL,
  `AssociatedProductId` int NOT NULL,
  `ImageSquaresPictureId` int NOT NULL,
  `PriceAdjustment` decimal(18,4) NOT NULL,
  `PriceAdjustmentUsePercentage` tinyint(1) NOT NULL,
  `WeightAdjustment` decimal(18,4) NOT NULL,
  `Cost` decimal(18,4) NOT NULL,
  `CustomerEntersQty` tinyint(1) NOT NULL,
  `Quantity` int NOT NULL,
  `IsPreSelected` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  `PictureId` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_C8FD7E41BDF864606B567EA54EAAB6219686F356` (`ProductAttributeMappingId`),
  KEY `IX_ProductAttributeValue_ProductAttributeMappingId_DisplayOrder` (`ProductAttributeMappingId`,`DisplayOrder`),
  CONSTRAINT `FK_8E53C9EE981897428A0481B22AB19DC3EA908F05` FOREIGN KEY (`ProductAttributeMappingId`) REFERENCES `product_productattribute_mapping` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productattributevalue`
--

LOCK TABLES `productattributevalue` WRITE;
/*!40000 ALTER TABLE `productattributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `productattributevalue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:47
