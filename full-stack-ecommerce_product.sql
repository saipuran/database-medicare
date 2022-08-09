-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'BOOK-TECH-1000','XIAOMI Redmi Note 10 6,43\" (4Go, 64Go) 48MP+8MP+2MP+2MP/ 13MP Android - Vert','Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',14.99,'assets/images/products/phones/XIAOMI-Redmi-Note-10.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,1),(2,'BOOK-TECH-1001','Infinix Smart 5 6.6\"HD+ (2GB,32GB) Android Selfie 8MP Double Flash ','Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',20.99,'assets/images/products/phones/Infinix-Smart-5.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,1),(3,'BOOK-TECH-1002','Poco X3 Xiaomi NFC 6.67\" (6Go, 64Go) 64MP+13MP+2MP+2MP/ 20MP Android - Bleu','Learn Vue.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',14.99,'assets/images/products/phones/Poco-X3-Xiaomi.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,1),(4,'BOOK-TECH-1003','XIAOMI Redmi 9 6.53\" (4Go, 64Go) 13 MP+8 MP+5 MP+2 MP/ 8 MP Android - Gris','Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',13.99,'assets/images/products/phones/XIAOMI-Redmi-9.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,1),(5,'BOOK-TECH-1004','XIAOMI Redmi 9T 6,53\" (4Go, 64Go) 48MP+8MP+2MP+2MP/ 8MP Android - Gris','Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',18.99,'assets/images/products/phones/XIAOMI-Redmi-9T.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,1),(26,'COFFEEMUG-1000','Hp PC PORTABLE AMD Ryzen 5 4500U 15.6\" 8GB 512GB W10H6','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/computers/Hp-PC-PORTABLE.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,2),(27,'COFFEEMUG-1001','Asus PC Portable X509J i3-1005G1 4GB/ 1T X509J i3 ','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/computers/Asus-PC-Portable.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,2),(28,'COFFEEMUG-1002','Accent PC Portable W5000 - INTEL CORE i5 - 8GO - 256GO SSD - ECRAN 15,6','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/computers/Accent-PC-Portable.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,2),(29,'COFFEEMUG-1003','Lenovo PC PORTABLE ThinkPad V14 i3-1005G1 14\'\' BlacK 4G/1T Freedos.','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/computers/Lenovo-PC-PORTABLE.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,2),(30,'COFFEEMUG-1004','Hp 15 /Celeron N4020 Dual /4 Go /1 To /Gris /15.6\" /Windows 10 Famille','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/computers/Hp-15-Celeron-N4020.png',_binary '',100,'2021-04-07 11:13:12.000000',NULL,2);
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

-- Dump completed on 2021-05-17 14:08:11
