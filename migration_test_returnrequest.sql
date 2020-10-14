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
-- Table structure for table `returnrequest`
--

DROP TABLE IF EXISTS `returnrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returnrequest` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `ReasonForReturn` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RequestedAction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CustomerId` int NOT NULL,
  `CustomNumber` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `StoreId` int NOT NULL,
  `OrderItemId` int NOT NULL,
  `Quantity` int NOT NULL,
  `CustomerComments` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `UploadedFileId` int NOT NULL,
  `StaffNotes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ReturnRequestStatusId` int NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_6111E95274ADB34D717DB9F3FF6270CEC853028C` (`CustomerId`),
  CONSTRAINT `FK_AD4A43CA98A319E62AB648C84A660386E3E2962D` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnrequest`
--

LOCK TABLES `returnrequest` WRITE;
/*!40000 ALTER TABLE `returnrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `returnrequest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:56:03
