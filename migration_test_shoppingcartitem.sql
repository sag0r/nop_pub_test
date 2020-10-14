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
-- Table structure for table `shoppingcartitem`
--

DROP TABLE IF EXISTS `shoppingcartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcartitem` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomerId` int NOT NULL,
  `ProductId` int NOT NULL,
  `StoreId` int NOT NULL,
  `ShoppingCartTypeId` int NOT NULL,
  `AttributesXml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CustomerEnteredPrice` decimal(18,4) NOT NULL,
  `Quantity` int NOT NULL,
  `RentalStartDateUtc` datetime DEFAULT NULL,
  `RentalEndDateUtc` datetime DEFAULT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_F59371B91ADC899F64B183252FFDAD65F99A60B0` (`CustomerId`),
  KEY `IX_874149FC8129BC9A477567717104BF5951801611` (`ProductId`),
  KEY `IX_ShoppingCartItem_ShoppingCartTypeId_CustomerId` (`ShoppingCartTypeId`,`CustomerId`),
  CONSTRAINT `FK_71A82F96A45513FC75E7FE9D5D67F07A5FAFE1CF` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F181ACB6395A22D53CA62D12693DA9ED42583B64` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcartitem`
--

LOCK TABLES `shoppingcartitem` WRITE;
/*!40000 ALTER TABLE `shoppingcartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcartitem` ENABLE KEYS */;
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
