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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `MetaKeywords` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MetaTitle` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sku` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ManufacturerPartNumber` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Gtin` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `RequiredProductIds` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `AllowedQuantities` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ProductTypeId` int NOT NULL,
  `ParentGroupedProductId` int NOT NULL,
  `VisibleIndividually` tinyint(1) NOT NULL,
  `ShortDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `FullDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AdminComment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `ProductTemplateId` int NOT NULL,
  `VendorId` int NOT NULL,
  `ShowOnHomepage` tinyint(1) NOT NULL,
  `MetaDescription` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `AllowCustomerReviews` tinyint(1) NOT NULL,
  `ApprovedRatingSum` int NOT NULL,
  `NotApprovedRatingSum` int NOT NULL,
  `ApprovedTotalReviews` int NOT NULL,
  `NotApprovedTotalReviews` int NOT NULL,
  `SubjectToAcl` tinyint(1) NOT NULL,
  `LimitedToStores` tinyint(1) NOT NULL,
  `IsGiftCard` tinyint(1) NOT NULL,
  `GiftCardTypeId` int NOT NULL,
  `OverriddenGiftCardAmount` decimal(18,4) DEFAULT NULL,
  `RequireOtherProducts` tinyint(1) NOT NULL,
  `AutomaticallyAddRequiredProducts` tinyint(1) NOT NULL,
  `IsDownload` tinyint(1) NOT NULL,
  `DownloadId` int NOT NULL,
  `UnlimitedDownloads` tinyint(1) NOT NULL,
  `MaxNumberOfDownloads` int NOT NULL,
  `DownloadExpirationDays` int DEFAULT NULL,
  `DownloadActivationTypeId` int NOT NULL,
  `HasSampleDownload` tinyint(1) NOT NULL,
  `SampleDownloadId` int NOT NULL,
  `HasUserAgreement` tinyint(1) NOT NULL,
  `UserAgreementText` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `IsRecurring` tinyint(1) NOT NULL,
  `RecurringCycleLength` int NOT NULL,
  `RecurringCyclePeriodId` int NOT NULL,
  `RecurringTotalCycles` int NOT NULL,
  `IsRental` tinyint(1) NOT NULL,
  `RentalPriceLength` int NOT NULL,
  `RentalPricePeriodId` int NOT NULL,
  `IsShipEnabled` tinyint(1) NOT NULL,
  `IsFreeShipping` tinyint(1) NOT NULL,
  `ShipSeparately` tinyint(1) NOT NULL,
  `AdditionalShippingCharge` decimal(18,4) NOT NULL,
  `DeliveryDateId` int NOT NULL,
  `IsTaxExempt` tinyint(1) NOT NULL,
  `TaxCategoryId` int NOT NULL,
  `IsTelecommunicationsOrBroadcastingOrElectronicServices` tinyint(1) NOT NULL,
  `ManageInventoryMethodId` int NOT NULL,
  `ProductAvailabilityRangeId` int NOT NULL,
  `UseMultipleWarehouses` tinyint(1) NOT NULL,
  `WarehouseId` int NOT NULL,
  `StockQuantity` int NOT NULL,
  `DisplayStockAvailability` tinyint(1) NOT NULL,
  `DisplayStockQuantity` tinyint(1) NOT NULL,
  `MinStockQuantity` int NOT NULL,
  `LowStockActivityId` int NOT NULL,
  `NotifyAdminForQuantityBelow` int NOT NULL,
  `BackorderModeId` int NOT NULL,
  `AllowBackInStockSubscriptions` tinyint(1) NOT NULL,
  `OrderMinimumQuantity` int NOT NULL,
  `OrderMaximumQuantity` int NOT NULL,
  `AllowAddingOnlyExistingAttributeCombinations` tinyint(1) NOT NULL,
  `NotReturnable` tinyint(1) NOT NULL,
  `DisableBuyButton` tinyint(1) NOT NULL,
  `DisableWishlistButton` tinyint(1) NOT NULL,
  `AvailableForPreOrder` tinyint(1) NOT NULL,
  `PreOrderAvailabilityStartDateTimeUtc` datetime DEFAULT NULL,
  `CallForPrice` tinyint(1) NOT NULL,
  `Price` decimal(18,4) NOT NULL,
  `OldPrice` decimal(18,4) NOT NULL,
  `ProductCost` decimal(18,4) NOT NULL,
  `CustomerEntersPrice` tinyint(1) NOT NULL,
  `MinimumCustomerEnteredPrice` decimal(18,4) NOT NULL,
  `MaximumCustomerEnteredPrice` decimal(18,4) NOT NULL,
  `BasepriceEnabled` tinyint(1) NOT NULL,
  `BasepriceAmount` decimal(18,4) NOT NULL,
  `BasepriceUnitId` int NOT NULL,
  `BasepriceBaseAmount` decimal(18,4) NOT NULL,
  `BasepriceBaseUnitId` int NOT NULL,
  `MarkAsNew` tinyint(1) NOT NULL,
  `MarkAsNewStartDateTimeUtc` datetime DEFAULT NULL,
  `MarkAsNewEndDateTimeUtc` datetime DEFAULT NULL,
  `HasTierPrices` tinyint(1) NOT NULL,
  `HasDiscountsApplied` tinyint(1) NOT NULL,
  `Weight` decimal(18,4) NOT NULL,
  `Length` decimal(18,4) NOT NULL,
  `Width` decimal(18,4) NOT NULL,
  `Height` decimal(18,4) NOT NULL,
  `AvailableStartDateTimeUtc` datetime DEFAULT NULL,
  `AvailableEndDateTimeUtc` datetime DEFAULT NULL,
  `DisplayOrder` int NOT NULL,
  `Published` tinyint(1) NOT NULL,
  `Deleted` tinyint(1) NOT NULL,
  `CreatedOnUtc` datetime NOT NULL,
  `UpdatedOnUtc` datetime NOT NULL,
  `IsPerishable` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Product_PriceDatesEtc` (`Price`,`AvailableStartDateTimeUtc`,`AvailableEndDateTimeUtc`,`Published`,`Deleted`),
  KEY `IX_Product_Deleted_and_Published` (`Published`,`Deleted`),
  KEY `IX_Product_Published` (`Published`),
  KEY `IX_Product_ShowOnHomepage` (`ShowOnHomepage`),
  KEY `IX_Product_ParentGroupedProductId` (`ParentGroupedProductId`),
  KEY `IX_Product_VisibleIndividually` (`VisibleIndividually`),
  KEY `IX_Product_LimitedToStores` (`LimitedToStores`),
  KEY `IX_Product_SubjectToAcl` (`SubjectToAcl`),
  KEY `IX_Product_Delete_Id` (`Deleted`,`Id`),
  KEY `IX_GetLowStockProducts` (`Deleted`,`VendorId`,`ProductTypeId`,`ManageInventoryMethodId`,`MinStockQuantity`,`UseMultipleWarehouses`),
  KEY `IX_Product_VisibleIndividually_Published_Deleted_Extended` (`VisibleIndividually`,`Published`,`Deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:56:05
