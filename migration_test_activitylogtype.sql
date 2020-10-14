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
-- Table structure for table `activitylogtype`
--

DROP TABLE IF EXISTS `activitylogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activitylogtype` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `SystemKeyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activitylogtype`
--

LOCK TABLES `activitylogtype` WRITE;
/*!40000 ALTER TABLE `activitylogtype` DISABLE KEYS */;
INSERT INTO `activitylogtype` VALUES (1,'AddNewAddressAttribute','Add a new address attribute',1),(2,'AddNewAddressAttributeValue','Add a new address attribute value',1),(3,'AddNewAffiliate','Add a new affiliate',1),(4,'AddNewBlogPost','Add a new blog post',1),(5,'AddNewCampaign','Add a new campaign',1),(6,'AddNewCategory','Add a new category',1),(7,'AddNewCheckoutAttribute','Add a new checkout attribute',1),(8,'AddNewCountry','Add a new country',1),(9,'AddNewCurrency','Add a new currency',1),(10,'AddNewCustomer','Add a new customer',1),(11,'AddNewCustomerAttribute','Add a new customer attribute',1),(12,'AddNewCustomerAttributeValue','Add a new customer attribute value',1),(13,'AddNewCustomerRole','Add a new customer role',1),(14,'AddNewDiscount','Add a new discount',1),(15,'AddNewEmailAccount','Add a new email account',1),(16,'AddNewGiftCard','Add a new gift card',1),(17,'AddNewLanguage','Add a new language',1),(18,'AddNewManufacturer','Add a new manufacturer',1),(19,'AddNewMeasureDimension','Add a new measure dimension',1),(20,'AddNewMeasureWeight','Add a new measure weight',1),(21,'AddNewNews','Add a new news',1),(22,'AddNewProduct','Add a new product',1),(23,'AddNewProductAttribute','Add a new product attribute',1),(24,'AddNewSetting','Add a new setting',1),(25,'AddNewSpecAttribute','Add a new specification attribute',1),(26,'AddNewStateProvince','Add a new state or province',1),(27,'AddNewStore','Add a new store',1),(28,'AddNewTopic','Add a new topic',1),(29,'AddNewReviewType','Add a new review type',1),(30,'AddNewVendor','Add a new vendor',1),(31,'AddNewVendorAttribute','Add a new vendor attribute',1),(32,'AddNewVendorAttributeValue','Add a new vendor attribute value',1),(33,'AddNewWarehouse','Add a new warehouse',1),(34,'AddNewWidget','Add a new widget',1),(35,'DeleteActivityLog','Delete activity log',1),(36,'DeleteAddressAttribute','Delete an address attribute',1),(37,'DeleteAddressAttributeValue','Delete an address attribute value',1),(38,'DeleteAffiliate','Delete an affiliate',1),(39,'DeleteBlogPost','Delete a blog post',1),(40,'DeleteBlogPostComment','Delete a blog post comment',1),(41,'DeleteCampaign','Delete a campaign',1),(42,'DeleteCategory','Delete category',1),(43,'DeleteCheckoutAttribute','Delete a checkout attribute',1),(44,'DeleteCountry','Delete a country',1),(45,'DeleteCurrency','Delete a currency',1),(46,'DeleteCustomer','Delete a customer',1),(47,'DeleteCustomerAttribute','Delete a customer attribute',1),(48,'DeleteCustomerAttributeValue','Delete a customer attribute value',1),(49,'DeleteCustomerRole','Delete a customer role',1),(50,'DeleteDiscount','Delete a discount',1),(51,'DeleteEmailAccount','Delete an email account',1),(52,'DeleteGiftCard','Delete a gift card',1),(53,'DeleteLanguage','Delete a language',1),(54,'DeleteManufacturer','Delete a manufacturer',1),(55,'DeleteMeasureDimension','Delete a measure dimension',1),(56,'DeleteMeasureWeight','Delete a measure weight',1),(57,'DeleteMessageTemplate','Delete a message template',1),(58,'DeleteNews','Delete a news',1),(59,'DeleteNewsComment','Delete a news comment',1),(60,'DeleteOrder','Delete an order',1),(61,'DeletePlugin','Delete a plugin',1),(62,'DeleteProduct','Delete a product',1),(63,'DeleteProductAttribute','Delete a product attribute',1),(64,'DeleteProductReview','Delete a product review',1),(65,'DeleteReturnRequest','Delete a return request',1),(66,'DeleteReviewType','Delete a review type',1),(67,'DeleteSetting','Delete a setting',1),(68,'DeleteSpecAttribute','Delete a specification attribute',1),(69,'DeleteStateProvince','Delete a state or province',1),(70,'DeleteStore','Delete a store',1),(71,'DeleteSystemLog','Delete system log',1),(72,'DeleteTopic','Delete a topic',1),(73,'DeleteVendor','Delete a vendor',1),(74,'DeleteVendorAttribute','Delete a vendor attribute',1),(75,'DeleteVendorAttributeValue','Delete a vendor attribute value',1),(76,'DeleteWarehouse','Delete a warehouse',1),(77,'DeleteWidget','Delete a widget',1),(78,'EditActivityLogTypes','Edit activity log types',1),(79,'EditAddressAttribute','Edit an address attribute',1),(80,'EditAddressAttributeValue','Edit an address attribute value',1),(81,'EditAffiliate','Edit an affiliate',1),(82,'EditBlogPost','Edit a blog post',1),(83,'EditCampaign','Edit a campaign',1),(84,'EditCategory','Edit category',1),(85,'EditCheckoutAttribute','Edit a checkout attribute',1),(86,'EditCountry','Edit a country',1),(87,'EditCurrency','Edit a currency',1),(88,'EditCustomer','Edit a customer',1),(89,'EditCustomerAttribute','Edit a customer attribute',1),(90,'EditCustomerAttributeValue','Edit a customer attribute value',1),(91,'EditCustomerRole','Edit a customer role',1),(92,'EditDiscount','Edit a discount',1),(93,'EditEmailAccount','Edit an email account',1),(94,'EditGiftCard','Edit a gift card',1),(95,'EditLanguage','Edit a language',1),(96,'EditManufacturer','Edit a manufacturer',1),(97,'EditMeasureDimension','Edit a measure dimension',1),(98,'EditMeasureWeight','Edit a measure weight',1),(99,'EditMessageTemplate','Edit a message template',1),(100,'EditNews','Edit a news',1),(101,'EditOrder','Edit an order',1),(102,'EditPlugin','Edit a plugin',1),(103,'EditProduct','Edit a product',1),(104,'EditProductAttribute','Edit a product attribute',1),(105,'EditProductReview','Edit a product review',1),(106,'EditPromotionProviders','Edit promotion providers',1),(107,'EditReturnRequest','Edit a return request',1),(108,'EditReviewType','Edit a review type',1),(109,'EditSettings','Edit setting(s)',1),(110,'EditStateProvince','Edit a state or province',1),(111,'EditStore','Edit a store',1),(112,'EditTask','Edit a task',1),(113,'EditSpecAttribute','Edit a specification attribute',1),(114,'EditVendor','Edit a vendor',1),(115,'EditVendorAttribute','Edit a vendor attribute',1),(116,'EditVendorAttributeValue','Edit a vendor attribute value',1),(117,'EditWarehouse','Edit a warehouse',1),(118,'EditTopic','Edit a topic',1),(119,'EditWidget','Edit a widget',1),(120,'Impersonation.Started','Customer impersonation session. Started',1),(121,'Impersonation.Finished','Customer impersonation session. Finished',1),(122,'ImportCategories','Categories were imported',1),(123,'ImportManufacturers','Manufacturers were imported',1),(124,'ImportProducts','Products were imported',1),(125,'ImportStates','States were imported',1),(126,'InstallNewPlugin','Install a new plugin',1),(127,'UninstallPlugin','Uninstall a plugin',1),(128,'PublicStore.ViewCategory','Public store. View a category',0),(129,'PublicStore.ViewManufacturer','Public store. View a manufacturer',0),(130,'PublicStore.ViewProduct','Public store. View a product',0),(131,'PublicStore.PlaceOrder','Public store. Place an order',0),(132,'PublicStore.SendPM','Public store. Send PM',0),(133,'PublicStore.ContactUs','Public store. Use contact us form',0),(134,'PublicStore.AddToCompareList','Public store. Add to compare list',0),(135,'PublicStore.AddToShoppingCart','Public store. Add to shopping cart',0),(136,'PublicStore.AddToWishlist','Public store. Add to wishlist',0),(137,'PublicStore.Login','Public store. Login',0),(138,'PublicStore.Logout','Public store. Logout',0),(139,'PublicStore.AddProductReview','Public store. Add product review',0),(140,'PublicStore.AddNewsComment','Public store. Add news comment',0),(141,'PublicStore.AddBlogComment','Public store. Add blog comment',0),(142,'PublicStore.AddForumTopic','Public store. Add forum topic',0),(143,'PublicStore.EditForumTopic','Public store. Edit forum topic',0),(144,'PublicStore.DeleteForumTopic','Public store. Delete forum topic',0),(145,'PublicStore.AddForumPost','Public store. Add forum post',0),(146,'PublicStore.EditForumPost','Public store. Edit forum post',0),(147,'PublicStore.DeleteForumPost','Public store. Delete forum post',0),(148,'UploadNewPlugin','Upload a plugin',1),(149,'UploadNewTheme','Upload a theme',1),(150,'UploadIcons','Upload a favicon and app icons',1);
/*!40000 ALTER TABLE `activitylogtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 22:55:53
