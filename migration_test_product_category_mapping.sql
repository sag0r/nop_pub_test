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
-- Table structure for table `product_category_mapping`
--

DROP TABLE IF EXISTS `product_category_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CategoryId` int NOT NULL,
  `ProductId` int NOT NULL,
  `IsFeaturedProduct` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_65D0E0647344EB198B9C2CE245C24526EA026B04` (`CategoryId`),
  KEY `IX_C069A2C78E4169E39784E2F8D1C8390483CCDC24` (`ProductId`),
  KEY `IX_PCM_Product_and_Category` (`CategoryId`,`ProductId`),
  KEY `IX_Product_Category_Mapping_IsFeaturedProduct` (`IsFeaturedProduct`),
  KEY `IX_PCM_ProductId_Extended` (`ProductId`,`IsFeaturedProduct`),
  CONSTRAINT `FK_073BBE7E6F5507EB5B5F0F297A38DB14FB382AE9` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F95DA02385C247415A37EE6ED15A49BC3E462864` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_mapping`
--

LOCK TABLES `product_category_mapping` WRITE;
/*!40000 ALTER TABLE `product_category_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_category_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:59
