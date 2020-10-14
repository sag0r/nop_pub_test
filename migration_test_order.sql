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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `CustomOrderNumber` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BillingAddressId` int NOT NULL,
  `CustomerId` int NOT NULL,
  `PickupAddressId` int DEFAULT NULL,
  `ShippingAddressId` int DEFAULT NULL,
  `OrderGuid` char(36) NOT NULL,
  `StoreId` int NOT NULL,
  `PickupInStore` tinyint(1) NOT NULL,
  `OrderStatusId` int NOT NULL,
  `ShippingStatusId` int NOT NULL,
  `PaymentStatusId` int NOT NULL,
  `PaymentMethodSystemName` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CustomerCurrencyCode` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CurrencyRate` decimal(18,4) NOT NULL,
  `CustomerTaxDisplayTypeId` int NOT NULL,
  `VatNumber` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `OrderSubtotalInclTax` decimal(18,4) NOT NULL,
  `OrderSubtotalExclTax` decimal(18,4) NOT NULL,
  `OrderSubTotalDiscountInclTax` decimal(18,4) NOT NULL,
  `OrderSubTotalDiscountExclTax` decimal(18,4) NOT NULL,
  `OrderShippingInclTax` decimal(18,4) NOT NULL,
  `OrderShippingExclTax` decimal(18,4) NOT NULL,
  `PaymentMethodAdditionalFeeInclTax` decimal(18,4) NOT NULL,
  `PaymentMethodAdditionalFeeExclTax` decimal(18,4) NOT NULL,
  `TaxRates` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `OrderTax` decimal(18,4) NOT NULL,
  `OrderDiscount` decimal(18,4) NOT NULL,
  `OrderTotal` decimal(18,4) NOT NULL,
  `RefundedAmount` decimal(18,4) NOT NULL,
  `RewardPointsHistoryEntryId` int DEFAULT NULL,
  `CheckoutAttributeDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CheckoutAttributesXml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CustomerLanguageId` int NOT NULL,
  `AffiliateId` int NOT NULL,
  `CustomerIp` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AllowStoringCreditCardNumber` tinyint(1) NOT NULL,
  `CardType` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CardName` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CardNumber` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `MaskedCreditCardNumber` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CardCvv2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CardExpirationMonth` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CardExpirationYear` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AuthorizationTransactionId` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AuthorizationTransactionCode` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AuthorizationTransactionResult` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CaptureTransactionId` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CaptureTransactionResult` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `SubscriptionTransactionId` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `PaidDateUtc` datetime DEFAULT NULL,
  `ShippingMethod` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ShippingRateComputationMethodSystemName` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `CustomValuesXml` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `Deleted` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `RedeemedRewardPointsEntryId` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_E7755CC7F881D5026F1484CD9F844657848310FB` (`BillingAddressId`),
  KEY `IX_D4D583CDFB5B9FA861705763C89DE617044108E3` (`CustomerId`),
  KEY `IX_0E470D4A2077F13DD52B58146A78BB6D9FF598A3` (`PickupAddressId`),
  KEY `IX_30A52D6385B52F71FB5EDB1D893B738E8549DE8B` (`ShippingAddressId`),
  KEY `IX_Order_CreatedOnUtc` (`CreatedOnUtc` DESC),
  KEY `FK_E2B3006CB294B6FD2E08E9DB53E7296283CB8A61` (`RewardPointsHistoryEntryId`),
  CONSTRAINT `FK_59EADEB3B701B43B0BEDBFEEEDC0597834BE77D5` FOREIGN KEY (`ShippingAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_B82AF61EE7639593EB7CB9A1319FBE9B4AF6F1FC` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`),
  CONSTRAINT `FK_BCC8B18340C4EB00FC90C8D29C95ACF8931B21FE` FOREIGN KEY (`PickupAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_DF57B77161942EFD6C557438EC3BD730AEE345C5` FOREIGN KEY (`BillingAddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FK_E2B3006CB294B6FD2E08E9DB53E7296283CB8A61` FOREIGN KEY (`RewardPointsHistoryEntryId`) REFERENCES `rewardpointshistory` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:56:09
