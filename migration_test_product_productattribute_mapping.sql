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
-- Table structure for table `product_productattribute_mapping`
--

DROP TABLE IF EXISTS `product_productattribute_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productattribute_mapping` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ProductAttributeId` int NOT NULL,
  `ProductId` int NOT NULL,
  `TextPrompt` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `IsRequired` tinyint(1) NOT NULL,
  `AttributeControlTypeId` int NOT NULL,
  `DisplayOrder` int NOT NULL,
  `ValidationMinLength` int DEFAULT NULL,
  `ValidationMaxLength` int DEFAULT NULL,
  `ValidationFileAllowedExtensions` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ValidationFileMaximumSize` int DEFAULT NULL,
  `DefaultValue` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ConditionAttributeXml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`Id`),
  KEY `IX_47FA8F827F33CA5D7C889B64078C36A49F6790A6` (`ProductAttributeId`),
  KEY `IX_F6226437D41700C3BDEDDE266458E52BCE9E3715` (`ProductId`),
  KEY `IX_Product_ProductAttribute_Mapping_ProductId_DisplayOrder` (`ProductId`,`DisplayOrder`),
  CONSTRAINT `FK_BF77199B4E9AA217913E748D643B23876607F875` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CB9C37622581D2B6F728E49884CDE88E4165F79C` FOREIGN KEY (`ProductAttributeId`) REFERENCES `productattribute` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productattribute_mapping`
--

LOCK TABLES `product_productattribute_mapping` WRITE;
/*!40000 ALTER TABLE `product_productattribute_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_productattribute_mapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:44
