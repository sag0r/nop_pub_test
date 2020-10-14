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
-- Table structure for table `stateprovince`
--

DROP TABLE IF EXISTS `stateprovince`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stateprovince` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Abbreviation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CountryId` int NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `DisplayOrder` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_B5D25FF62BAA11CE55190C311232C49C9C3206C8` (`CountryId`),
  CONSTRAINT `FK_2BD698F1D0EEAFE0EC514A1BA4B53D34427C2478` FOREIGN KEY (`CountryId`) REFERENCES `country` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stateprovince`
--

LOCK TABLES `stateprovince` WRITE;
/*!40000 ALTER TABLE `stateprovince` DISABLE KEYS */;
INSERT INTO `stateprovince` VALUES (1,'AA (Armed Forces Americas)','AA',1,1,1),(2,'AE (Armed Forces Europe)','AE',1,1,1),(3,'Alabama','AL',1,1,1),(4,'Alaska','AK',1,1,1),(5,'American Samoa','AS',1,1,1),(6,'AP (Armed Forces Pacific)','AP',1,1,1),(7,'Arizona','AZ',1,1,1),(8,'Arkansas','AR',1,1,1),(9,'California','CA',1,1,1),(10,'Colorado','CO',1,1,1),(11,'Connecticut','CT',1,1,1),(12,'Delaware','DE',1,1,1),(13,'District of Columbia','DC',1,1,1),(14,'Federated States of Micronesia','FM',1,1,1),(15,'Florida','FL',1,1,1),(16,'Georgia','GA',1,1,1),(17,'Guam','GU',1,1,1),(18,'Hawaii','HI',1,1,1),(19,'Idaho','ID',1,1,1),(20,'Illinois','IL',1,1,1),(21,'Indiana','IN',1,1,1),(22,'Iowa','IA',1,1,1),(23,'Kansas','KS',1,1,1),(24,'Kentucky','KY',1,1,1),(25,'Louisiana','LA',1,1,1),(26,'Maine','ME',1,1,1),(27,'Marshall Islands','MH',1,1,1),(28,'Maryland','MD',1,1,1),(29,'Massachusetts','MA',1,1,1),(30,'Michigan','MI',1,1,1),(31,'Minnesota','MN',1,1,1),(32,'Mississippi','MS',1,1,1),(33,'Missouri','MO',1,1,1),(34,'Montana','MT',1,1,1),(35,'Nebraska','NE',1,1,1),(36,'Nevada','NV',1,1,1),(37,'New Hampshire','NH',1,1,1),(38,'New Jersey','NJ',1,1,1),(39,'New Mexico','NM',1,1,1),(40,'New York','NY',1,1,1),(41,'North Carolina','NC',1,1,1),(42,'North Dakota','ND',1,1,1),(43,'Northern Mariana Islands','MP',1,1,1),(44,'Ohio','OH',1,1,1),(45,'Oklahoma','OK',1,1,1),(46,'Oregon','OR',1,1,1),(47,'Palau','PW',1,1,1),(48,'Pennsylvania','PA',1,1,1),(49,'Puerto Rico','PR',1,1,1),(50,'Rhode Island','RI',1,1,1),(51,'South Carolina','SC',1,1,1),(52,'South Dakota','SD',1,1,1),(53,'Tennessee','TN',1,1,1),(54,'Texas','TX',1,1,1),(55,'Utah','UT',1,1,1),(56,'Vermont','VT',1,1,1),(57,'Virgin Islands','VI',1,1,1),(58,'Virginia','VA',1,1,1),(59,'Washington','WA',1,1,1),(60,'West Virginia','WV',1,1,1),(61,'Wisconsin','WI',1,1,1),(62,'Wyoming','WY',1,1,1),(63,'Alberta','AB',2,1,1),(64,'British Columbia','BC',2,1,1),(65,'Manitoba','MB',2,1,1),(66,'New Brunswick','NB',2,1,1),(67,'Newfoundland and Labrador','NL',2,1,1),(68,'Northwest Territories','NT',2,1,1),(69,'Nova Scotia','NS',2,1,1),(70,'Nunavut','NU',2,1,1),(71,'Ontario','ON',2,1,1),(72,'Prince Edward Island','PE',2,1,1),(73,'Quebec','QC',2,1,1),(74,'Saskatchewan','SK',2,1,1),(75,'Yukon Territory','YT',2,1,1);
/*!40000 ALTER TABLE `stateprovince` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:55
