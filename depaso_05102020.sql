-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: depaso
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advertising_advertising_section`
--

DROP TABLE IF EXISTS `advertising_advertising_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_advertising_section` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `advertising_id` bigint(20) unsigned NOT NULL,
  `advertising_section_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertising_advertising_section`
--

LOCK TABLES `advertising_advertising_section` WRITE;
/*!40000 ALTER TABLE `advertising_advertising_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertising_advertising_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertising_sections`
--

DROP TABLE IF EXISTS `advertising_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertising_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertising_sections`
--

LOCK TABLES `advertising_sections` WRITE;
/*!40000 ALTER TABLE `advertising_sections` DISABLE KEYS */;
INSERT INTO `advertising_sections` VALUES (1,'Productos','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Kits','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Banners','2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'Home','2020-09-26 21:53:02','2020-09-26 21:53:02'),(5,'Recetas','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `advertising_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisings`
--

DROP TABLE IF EXISTS `advertisings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activo',
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisings`
--

LOCK TABLES `advertisings` WRITE;
/*!40000 ALTER TABLE `advertisings` DISABLE KEYS */;
INSERT INTO `advertisings` VALUES (1,'Raspberry 1','raspberry','images/advertisements/R1.png',NULL,'2020-01-01 06:00:00','2020-12-31 06:00:00','activo',NULL,NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Raspberry 2','raspberry','images/advertisements/R2.png',NULL,'2020-01-01 06:00:00','2020-12-31 06:00:00','activo',NULL,NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Raspberry 3','raspberry','images/advertisements/R3.png',NULL,'2020-01-01 06:00:00','2020-12-31 06:00:00','activo',NULL,NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `advertisings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_supplier_id_foreign` (`supplier_id`),
  CONSTRAINT `brands_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Marca 1','Marca 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Marca 2','Marca 2',1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Marca 3','Marca 3',1,'2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_compras`
--

DROP TABLE IF EXISTS `carrito_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito_compras` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carrito_compras_user_id_foreign` (`user_id`),
  KEY `carrito_compras_product_id_foreign` (`product_id`),
  CONSTRAINT `carrito_compras_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carrito_compras_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_compras`
--

LOCK TABLES `carrito_compras` WRITE;
/*!40000 ALTER TABLE `carrito_compras` DISABLE KEYS */;
INSERT INTO `carrito_compras` VALUES (4,1,21,5,0,'2020-09-27 15:41:00','2020-09-29 23:31:37'),(5,1,19,1,0,'2020-09-27 15:50:15','2020-09-29 23:31:37'),(11,58,14,4,0,'2020-09-27 22:15:57','2020-09-28 14:49:07'),(12,58,13,2,0,'2020-09-27 22:20:12','2020-09-28 14:49:07'),(13,58,12,1,0,'2020-09-27 22:20:14','2020-09-28 14:49:07'),(27,58,12,1,0,'2020-09-28 16:03:40','2020-09-28 16:18:52'),(30,58,18,1,0,'2020-09-28 18:15:39','2020-09-28 18:15:51'),(31,58,14,1,0,'2020-09-28 18:15:40','2020-09-28 18:15:51'),(34,58,16,1,0,'2020-09-28 18:30:19','2020-09-28 18:30:51'),(35,58,17,1,0,'2020-09-28 18:30:20','2020-09-28 18:30:51'),(36,58,15,1,0,'2020-09-28 18:30:21','2020-09-28 18:30:51'),(37,58,21,1,0,'2020-09-28 18:30:26','2020-09-28 18:30:51'),(38,58,14,1,0,'2020-09-28 18:30:30','2020-09-28 18:30:51'),(39,58,13,1,0,'2020-09-28 18:30:31','2020-09-28 18:30:51'),(40,58,11,1,0,'2020-09-28 18:30:32','2020-09-28 18:30:51'),(45,58,18,2,0,'2020-09-28 20:36:39','2020-09-28 21:10:52'),(46,58,20,2,0,'2020-09-28 20:36:39','2020-09-28 21:10:53'),(47,58,19,2,0,'2020-09-28 20:36:39','2020-09-28 21:10:53'),(48,58,21,2,0,'2020-09-28 20:36:39','2020-09-28 21:10:53'),(50,58,15,1,0,'2020-09-28 20:58:52','2020-09-28 21:10:54'),(51,58,17,1,0,'2020-09-28 20:58:52','2020-09-28 21:10:54'),(52,58,16,1,0,'2020-09-28 20:58:52','2020-09-28 21:10:55'),(54,58,15,1,0,'2020-09-28 21:11:21','2020-09-28 21:12:01'),(55,58,18,1,0,'2020-09-28 21:11:33','2020-09-28 21:12:01'),(56,58,20,1,0,'2020-09-28 21:11:33','2020-09-28 21:12:01'),(57,58,19,1,0,'2020-09-28 21:11:33','2020-09-28 21:12:01'),(58,58,21,1,0,'2020-09-28 21:11:33','2020-09-28 21:12:01'),(59,59,11,2,0,'2020-09-29 15:47:59','2020-09-29 15:50:53'),(60,59,12,1,0,'2020-09-29 15:48:05','2020-09-29 15:50:53'),(61,59,13,1,0,'2020-09-29 15:48:56','2020-09-29 15:50:53'),(62,58,13,1,0,'2020-09-29 15:49:29','2020-09-29 15:49:39'),(63,59,15,1,0,'2020-09-29 15:49:44','2020-09-29 15:50:53'),(64,59,11,1,0,'2020-09-29 15:53:20','2020-09-29 15:55:31'),(67,60,18,1,0,'2020-09-29 23:44:17','2020-09-29 23:48:14'),(68,60,11,1,0,'2020-09-29 23:44:50','2020-09-29 23:48:14'),(85,59,13,6,0,'2020-09-30 14:29:11','2020-09-30 14:30:07'),(86,59,12,1,0,'2020-09-30 14:29:32','2020-09-30 14:30:07'),(87,58,21,1,0,'2020-09-30 15:09:37','2020-09-30 15:15:47'),(88,58,12,1,0,'2020-09-30 15:09:56','2020-09-30 15:10:13'),(89,58,12,1,0,'2020-09-30 15:10:53','2020-09-30 15:15:47'),(96,60,11,2,0,'2020-09-30 16:01:50','2020-09-30 17:37:31'),(97,60,18,1,0,'2020-09-30 16:01:54','2020-09-30 17:37:30'),(98,60,12,2,0,'2020-09-30 16:03:09','2020-09-30 17:37:30'),(99,58,14,1,0,'2020-09-30 16:03:36','2020-09-30 18:13:57'),(100,60,15,2,0,'2020-09-30 16:16:56','2020-09-30 17:37:29'),(101,60,17,2,0,'2020-09-30 16:16:56','2020-09-30 17:37:28'),(102,60,16,2,0,'2020-09-30 16:16:56','2020-09-30 17:37:27'),(103,60,18,1,0,'2020-09-30 17:52:50','2020-09-30 18:14:01'),(104,60,11,1,0,'2020-09-30 17:53:00','2020-09-30 17:53:23'),(105,64,17,1,0,'2020-09-30 17:58:54','2020-09-30 18:13:04'),(106,64,18,2,0,'2020-09-30 17:59:04','2020-09-30 18:15:50'),(107,60,12,2,0,'2020-09-30 18:13:50','2020-09-30 18:14:01'),(108,1,14,1,0,'2020-09-30 18:14:52','2020-09-30 18:15:04'),(109,1,15,1,0,'2020-09-30 18:14:54','2020-09-30 18:15:04'),(110,65,11,1,0,'2020-09-30 18:27:53','2020-09-30 18:35:25'),(111,65,17,1,0,'2020-09-30 18:27:53','2020-09-30 18:35:25'),(112,65,22,1,0,'2020-09-30 18:27:55','2020-09-30 18:35:25'),(113,65,20,1,0,'2020-09-30 18:27:57','2020-09-30 18:35:25'),(114,65,12,1,0,'2020-10-01 15:05:42','2020-10-01 15:09:51'),(115,65,13,1,0,'2020-10-01 15:05:44','2020-10-01 15:09:51'),(116,65,16,1,0,'2020-10-01 15:05:49','2020-10-01 15:09:51'),(117,65,15,1,0,'2020-10-01 15:05:52','2020-10-01 15:09:51'),(118,65,18,2,0,'2020-10-01 15:06:00','2020-10-01 15:09:51'),(119,65,20,1,0,'2020-10-01 15:07:44','2020-10-01 15:09:51'),(120,65,19,1,0,'2020-10-01 15:07:44','2020-10-01 15:09:51'),(121,65,21,1,0,'2020-10-01 15:07:44','2020-10-01 15:09:51'),(122,65,12,1,0,'2020-10-05 14:10:27','2020-10-05 14:10:43'),(123,65,14,1,0,'2020-10-05 14:10:30','2020-10-05 14:10:43'),(124,65,20,1,0,'2020-10-05 14:10:33','2020-10-05 14:10:43'),(125,65,11,2,0,'2020-10-05 16:43:57','2020-10-05 22:03:34'),(126,65,17,1,0,'2020-10-05 17:23:12','2020-10-05 22:03:34'),(127,65,22,1,0,'2020-10-05 17:23:12','2020-10-05 22:03:34'),(128,58,11,1,1,'2020-10-05 21:22:49','2020-10-05 21:22:49'),(130,58,18,2,1,'2020-10-05 21:25:33','2020-10-05 22:06:09'),(131,58,20,2,1,'2020-10-05 21:25:33','2020-10-05 22:06:09'),(132,58,19,2,1,'2020-10-05 21:25:33','2020-10-05 22:06:09'),(133,58,21,2,1,'2020-10-05 21:25:33','2020-10-05 22:06:09'),(134,58,15,7,1,'2020-10-05 21:43:07','2020-10-05 22:05:21'),(135,58,17,7,1,'2020-10-05 21:43:07','2020-10-05 22:05:21'),(136,58,16,7,1,'2020-10-05 21:43:07','2020-10-05 22:05:21'),(137,58,12,1,1,'2020-10-05 21:47:20','2020-10-05 21:47:20'),(138,65,18,1,0,'2020-10-05 22:05:48','2020-10-05 22:06:32'),(139,65,20,1,0,'2020-10-05 22:05:48','2020-10-05 22:06:32'),(140,65,19,1,0,'2020-10-05 22:05:48','2020-10-05 22:06:32'),(141,65,21,1,0,'2020-10-05 22:05:48','2020-10-05 22:06:32'),(142,65,15,1,0,'2020-10-05 22:06:05','2020-10-05 22:06:32'),(143,65,17,1,0,'2020-10-05 22:06:05','2020-10-05 22:06:32'),(144,65,16,1,0,'2020-10-05 22:06:05','2020-10-05 22:06:32'),(145,65,15,1,0,'2020-10-05 22:12:00','2020-10-05 22:12:48'),(146,65,17,1,0,'2020-10-05 22:12:00','2020-10-05 22:12:48'),(147,65,16,1,0,'2020-10-05 22:12:00','2020-10-05 22:12:48'),(148,65,18,2,0,'2020-10-05 22:12:04','2020-10-05 22:12:48'),(149,65,20,2,0,'2020-10-05 22:12:04','2020-10-05 22:12:48'),(150,65,19,2,0,'2020-10-05 22:12:04','2020-10-05 22:12:48'),(151,65,21,2,0,'2020-10-05 22:12:04','2020-10-05 22:12:48'),(152,65,15,1,0,'2020-10-05 22:13:31','2020-10-05 23:13:37'),(153,65,17,1,0,'2020-10-05 22:13:31','2020-10-05 23:13:37'),(154,65,19,2,0,'2020-10-05 22:13:31','2020-10-05 23:13:37'),(155,65,21,2,0,'2020-10-05 22:13:31','2020-10-05 23:13:37');
/*!40000 ALTER TABLE `carrito_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Abarrotes','Abarrotes','images/categorias/a0HQTcStfK8fiuuCAzmdA95tWFA25MTjjJ3rGoQu.jpeg','2020-09-26 21:53:02','2020-09-30 15:08:15'),(2,'Snacks','Snacks','images/categorias/LVBi1K10L3WMnJrxArGA5VXj8lI0mRQcBC0uoMP7.jpeg','2020-09-26 21:53:02','2020-09-30 15:08:32'),(3,'Bebés','Bebés','images/categorias/QBx8zQETkKVUS3SK5f36nGP0PMF0pFkxw47uIfl0.jpeg','2020-09-26 21:53:02','2020-09-30 15:11:58'),(4,'Bebidas','Bebidas','images/categorias/KJ6iUp7c3KUdqYv7rTnXVx6AvgaG8ug0F6wGy26E.jpeg','2020-09-28 22:14:53','2020-09-30 15:12:07'),(5,'Refrigerados','Refrigerados','images/categorias/KdTY7aPJZW8GcLdI3YXsM1jvpTobkcso3R5BSQ4c.jpeg','2020-09-29 20:47:31','2020-09-30 15:12:25'),(6,'Congelados','Congelados','images/categorias/fB4a9npLciR7gpuHvBxYfxecT6Cuuz7O7hPlxqcH.jpeg','2020-09-29 20:47:52','2020-09-30 15:12:36'),(7,'Mascotas','Mascotas','images/categorias/hsEsY8PTLNS4chM6fykfyPcA1tczBgI237rqmkiU.jpeg','2020-09-29 20:48:09','2020-09-30 15:12:47'),(8,'Limpieza','Limpieza','images/categorias/oT5G3hAu3Cb7Gu62zxwGL1c2KQwDs9Vb36JnLiXX.jpeg','2020-09-29 20:48:39','2020-09-30 15:13:01'),(9,'Desechables','Desechables','images/categorias/Z09huxfM8te7o9deuyI3vQIRE80TiEyPQnnDJ0dD.jpeg','2020-09-29 20:48:59','2020-09-30 15:13:17'),(10,'Alimentos','Alimentos','images/categorias/XXpfzNw8IdysoiiZSPn7oy1GqhDg17c3hVzoNt38.jpeg','2020-09-29 20:49:16','2020-09-30 15:13:31');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_cards`
--

DROP TABLE IF EXISTS `credit_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `credit_cards_user_id_foreign` (`user_id`),
  CONSTRAINT `credit_cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_cards`
--

LOCK TABLES `credit_cards` WRITE;
/*!40000 ALTER TABLE `credit_cards` DISABLE KEYS */;
INSERT INTO `credit_cards` VALUES (21,58,'xxxx-xxxx-xxxx-4556','Sebas','Sebas1234567894556','25/2020','Sebas',1,'2020-09-28 14:48:58','2020-09-28 14:48:58'),(22,58,'xxxx-xxxx-xxxx-4556','Sebas','Sebas1234567894556','25/2020','Sebas',1,'2020-09-28 14:48:58','2020-09-28 14:48:58'),(23,59,'xxxx-xxxx-xxxx-1111','Test','Test4111111111111111','3/','Test',1,'2020-09-29 15:50:50','2020-09-29 15:50:50'),(24,1,'xxxx-xxxx-xxxx-9123','sebas tian','sebas tian123456789123','12/22','sebas tian',1,'2020-09-29 23:31:30','2020-09-29 23:31:30'),(25,60,'xxxx-xxxx-xxxx-4567','Andrea Garcia','Andrea Garcia1234567891234567','09/23','Andrea Garcia',1,'2020-09-29 23:47:52','2020-09-29 23:47:52'),(27,58,'xxxx-xxxx-xxxx-6987','Gustavo Guarchaj','Gustavo Guarchaj456987','12/25','Gustavo Guarchaj',1,'2020-09-30 15:15:33','2020-09-30 15:15:33'),(28,1,'xxxx-xxxx-xxxx-6789','sebas','sebas123456789','01/25','yo mérito',1,'2020-09-30 17:36:00','2020-09-30 17:36:00'),(29,1,'xxxx-xxxx-xxxx-8911','ahdnavhd','ahdnavhd12345678911','12/20','null',1,'2020-09-30 17:37:09','2020-09-30 17:37:09'),(30,64,'xxxx-xxxx-xxxx-1117','Giovanni Lopez','Giovanni Lopez5128754123681117','04/2022','Mi tarjeta de debito',1,'2020-09-30 18:12:38','2020-09-30 18:12:38'),(31,65,'xxxx-xxxx-xxxx-5432','Pablo Samayoa','Pablo Samayoa5643236789765432','7/2024',NULL,0,'2020-09-30 18:29:51','2020-10-05 15:33:26'),(32,65,'xxxx-xxxx-xxxx-6543','Enrique','Enrique12345678976543','10/2022',NULL,0,'2020-09-30 18:31:40','2020-10-05 15:33:01'),(33,65,'xxxx-xxxx-xxxx-5432','Mi tarjeta','Mi tarjeta1234654389765432','6/2023',NULL,0,'2020-10-05 15:33:49','2020-10-05 16:01:48'),(34,65,'xxxx-xxxx-xxxx-4345','test','test4567890987654345','7/2024',NULL,0,'2020-10-05 15:37:00','2020-10-05 16:01:58'),(35,65,'xxxx-xxxx-xxxx-1469','mi tarjeta de prueba','mi tarjeta de prueba4321678904321469','5/2023',NULL,0,'2020-10-05 15:50:00','2020-10-05 16:01:50'),(36,65,'xxxx-xxxx-xxxx-2134','Pablo Samayoa','Pablo Samayoa3216789065432134','3/2024','Mi tarjeta bi',0,'2020-10-05 16:01:23','2020-10-05 16:47:19'),(37,65,'xxxx-xxxx-xxxx-8867','troip[iy','troip[iy6747098867','1/2022','tarjeta',0,'2020-10-05 16:47:37','2020-10-05 16:56:13'),(38,65,'xxxx-xxxx-xxxx-6890','asdfghjkl','asdfghjkl43576890','4/2022','test',0,'2020-10-05 16:53:11','2020-10-05 16:56:28'),(39,65,'xxxx-xxxx-xxxx-7980','alskfjklajdfkljasklfj','alskfjklajdfkljasklfj789708979807907980','2/2022','test test',1,'2020-10-05 16:56:49','2020-10-05 16:56:49'),(40,65,'xxxx-xxxx-xxxx-7686','hiouuoupuou','hiouuoupuou9687667686','1/2020','oipdfghjk',1,'2020-10-05 16:58:00','2020-10-05 16:58:00');
/*!40000 ALTER TABLE `credit_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_todiscount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL DEFAULT '0.00',
  `max_todiscount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discounts_brand_id_foreign` (`brand_id`),
  CONSTRAINT `discounts_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `machine_type_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `divisions_station_id_foreign` (`station_id`),
  KEY `divisions_machine_type_id_foreign` (`machine_type_id`),
  CONSTRAINT `divisions_machine_type_id_foreign` FOREIGN KEY (`machine_type_id`) REFERENCES `machine_types` (`id`),
  CONSTRAINT `divisions_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisions`
--

LOCK TABLES `divisions` WRITE;
/*!40000 ALTER TABLE `divisions` DISABLE KEYS */;
INSERT INTO `divisions` VALUES (1,'Maquina 1 - Estacion 1 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(2,'Maquina 2 - Estacion 1 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(3,'Maquina 3 - Estacion 1 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(4,'Maquina 4 - Estacion 1 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(5,'Maquina 1 - Estacion 2 - Tienda 1',2,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(6,'Maquina 2 - Estacion 2 - Tienda 1',2,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(7,'Maquina 3 - Estacion 2 - Tienda 1',2,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(8,'Maquina 4 - Estacion 2 - Tienda 1',2,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(9,'Maquina 1 - Estacion 3 - Tienda 1',3,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(10,'Maquina 2 - Estacion 3 - Tienda 1',3,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(11,'Maquina 3 - Estacion 3 - Tienda 1',3,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(12,'Maquina 4 - Estacion 3 - Tienda 1',3,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(13,'Maquina 1 - Estacion 1 - Tienda 2',4,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(14,'Maquina 2 - Estacion 1 - Tienda 2',4,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(15,'Maquina 3 - Estacion 1 - Tienda 2',4,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(16,'Maquina 4 - Estacion 1 - Tienda 2',4,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(17,'Maquina 1 - Estacion 2 - Tienda 2',5,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(18,'Maquina 2 - Estacion 2 - Tienda 2',5,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(19,'Maquina 3 - Estacion 2 - Tienda 2',5,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(20,'Maquina 4 - Estacion 2 - Tienda 2',5,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(21,'Maquina 1 - Estacion 3 - Tienda 2',6,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(22,'Maquina 2 - Estacion 3 - Tienda 2',6,'2020-09-26 21:53:02','2020-09-26 21:53:02',1),(23,'Maquina 3 - Estacion 3 - Tienda 2',6,'2020-09-26 21:53:02','2020-09-26 21:53:02',2),(24,'Maquina 4 - Estacion 3 - Tienda 2',6,'2020-09-26 21:53:02','2020-09-26 21:53:02',2);
/*!40000 ALTER TABLE `divisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_statuses`
--

DROP TABLE IF EXISTS `incident_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_statuses`
--

LOCK TABLES `incident_statuses` WRITE;
/*!40000 ALTER TABLE `incident_statuses` DISABLE KEYS */;
INSERT INTO `incident_statuses` VALUES (1,'Pendiente','Pendiente','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Resuelto','Resuelto','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `incident_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_types`
--

DROP TABLE IF EXISTS `incident_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_types`
--

LOCK TABLES `incident_types` WRITE;
/*!40000 ALTER TABLE `incident_types` DISABLE KEYS */;
INSERT INTO `incident_types` VALUES (1,'Producto vencido','Producto vencido','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Producto equivocado','Producto equivocado','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Otro','Otro','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `incident_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `incident_type_id` bigint(20) unsigned NOT NULL,
  `store_id` bigint(20) unsigned NOT NULL,
  `purchase_id` bigint(20) unsigned NOT NULL,
  `incident_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incidents_user_id_foreign` (`user_id`),
  KEY `incidents_incident_type_id_foreign` (`incident_type_id`),
  KEY `incidents_store_id_foreign` (`store_id`),
  KEY `incidents_incident_status_id_foreign` (`incident_status_id`),
  CONSTRAINT `incidents_incident_status_id_foreign` FOREIGN KEY (`incident_status_id`) REFERENCES `incident_statuses` (`id`),
  CONSTRAINT `incidents_incident_type_id_foreign` FOREIGN KEY (`incident_type_id`) REFERENCES `incident_types` (`id`),
  CONSTRAINT `incidents_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `incidents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,4,'Detall de incidencia...',1,1,1,1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,65,'test incidencia',1,1,44,1,'2020-10-05 17:15:42','2020-10-05 17:15:42'),(3,65,'test',2,1,66,1,'2020-10-05 22:13:22','2020-10-05 22:13:22');
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `store_id` bigint(20) unsigned NOT NULL,
  `station_id` bigint(20) unsigned NOT NULL,
  `division_id` bigint(20) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `reserved` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventories_product_id_foreign` (`product_id`),
  KEY `inventories_store_id_foreign` (`store_id`),
  KEY `inventories_station_id_foreign` (`station_id`),
  KEY `inventories_division_id_foreign` (`division_id`),
  CONSTRAINT `inventories_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventories_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`),
  CONSTRAINT `inventories_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (14,11,1,1,1,120,0,5,'2020-09-25 17:06:06','2020-09-28 15:00:28'),(15,11,1,1,2,120,5,5,'2020-09-25 17:06:35','2020-10-05 15:28:53'),(16,11,1,1,4,130,15,0,'2020-09-25 17:06:56','2020-09-25 17:06:56'),(17,12,1,1,3,172,11,9,'2020-09-25 17:07:25','2020-09-30 18:14:01'),(18,13,1,1,1,167,13,12,'2020-09-25 17:07:49','2020-09-30 14:30:07'),(19,14,1,1,2,135,6,9,'2020-09-25 17:08:11','2020-09-30 18:15:03'),(20,14,1,1,4,135,15,0,'2020-09-25 17:08:26','2020-09-25 17:08:26'),(21,15,1,1,4,140,45,5,'2020-09-25 17:08:57','2020-10-05 22:13:00'),(22,16,1,1,4,118,0,1,'2020-09-25 17:09:13','2020-09-28 00:23:17'),(23,17,1,1,3,129,32,3,'2020-09-25 17:09:43','2020-10-05 22:13:00'),(24,18,1,1,2,166,0,5,'2020-09-25 17:10:01','2020-09-30 18:14:01'),(25,19,1,1,3,102,6,2,'2020-09-25 17:10:43','2020-10-05 22:13:00'),(26,20,1,1,2,155,0,5,'2020-09-25 17:11:07','2020-09-30 10:36:22'),(27,21,1,1,1,179,7,8,'2020-09-25 17:11:23','2020-10-05 22:13:00'),(28,22,1,1,1,100,100,0,'2020-09-30 17:18:25','2020-10-05 15:28:53'),(29,31,1,2,5,100,5,0,'2020-09-30 17:24:27','2020-09-30 17:24:27'),(30,32,1,2,5,110,10,0,'2020-09-30 17:24:52','2020-09-30 17:24:52'),(31,33,1,2,5,150,15,0,'2020-09-30 17:25:10','2020-09-30 17:25:10'),(32,34,1,2,5,170,10,0,'2020-09-30 17:26:21','2020-09-30 17:26:21'),(33,35,1,2,6,100,5,0,'2020-09-30 17:26:45','2020-09-30 17:26:45'),(34,36,1,2,6,105,15,0,'2020-09-30 17:27:00','2020-09-30 17:27:00'),(35,37,1,2,6,115,10,0,'2020-09-30 17:27:27','2020-09-30 17:27:27'),(36,38,1,2,6,125,15,0,'2020-09-30 17:27:59','2020-09-30 17:27:59'),(37,39,1,2,7,100,10,0,'2020-09-30 17:28:25','2020-09-30 17:28:25'),(38,40,1,2,6,130,20,0,'2020-09-30 17:30:54','2020-09-30 17:30:54'),(39,41,1,2,7,150,10,0,'2020-09-30 17:35:39','2020-09-30 17:35:39'),(40,47,1,2,8,110,10,0,'2020-09-30 17:36:17','2020-09-30 17:36:17'),(41,49,1,2,8,130,10,0,'2020-09-30 17:36:51','2020-09-30 17:36:51'),(42,50,1,2,8,170,10,0,'2020-09-30 17:37:04','2020-09-30 17:37:04'),(43,52,1,3,9,100,10,0,'2020-09-30 17:37:37','2020-09-30 17:37:37'),(44,53,1,3,9,110,10,0,'2020-09-30 17:37:48','2020-09-30 17:37:48'),(45,56,1,3,10,100,5,0,'2020-09-30 17:38:05','2020-09-30 17:38:05'),(46,57,1,3,12,150,10,0,'2020-09-30 17:38:24','2020-09-30 17:38:24'),(47,58,1,3,12,170,20,0,'2020-09-30 17:38:39','2020-09-30 17:38:39');
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_categories`
--

DROP TABLE IF EXISTS `kit_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kit_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_categories`
--

LOCK TABLES `kit_categories` WRITE;
/*!40000 ALTER TABLE `kit_categories` DISABLE KEYS */;
INSERT INTO `kit_categories` VALUES (1,'Categoria Kit 1','Categoria Kit 1','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Bebés','Bebés','2020-09-26 21:53:02','2020-09-28 23:22:33'),(3,'Categoria Kit 3','Categoria Kit 3','2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'Bebidas','Bebidas','2020-09-28 23:22:43','2020-09-28 23:22:43'),(5,'Mascotas','Mascotas','2020-10-05 19:49:08','2020-10-05 19:49:08');
/*!40000 ALTER TABLE `kit_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_product`
--

DROP TABLE IF EXISTS `kit_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kit_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kit_product_kit_id_foreign` (`kit_id`),
  KEY `kit_product_product_id_foreign` (`product_id`),
  CONSTRAINT `kit_product_kit_id_foreign` FOREIGN KEY (`kit_id`) REFERENCES `kits` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kit_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_product`
--

LOCK TABLES `kit_product` WRITE;
/*!40000 ALTER TABLE `kit_product` DISABLE KEYS */;
INSERT INTO `kit_product` VALUES (13,8,22,1,NULL,NULL),(14,8,24,1,NULL,NULL),(15,8,23,1,NULL,NULL),(16,7,15,1,NULL,NULL),(17,7,17,1,NULL,NULL),(18,7,16,1,NULL,NULL),(19,9,55,1,NULL,NULL),(20,9,56,1,NULL,NULL);
/*!40000 ALTER TABLE `kit_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_statuses`
--

DROP TABLE IF EXISTS `kit_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kit_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_statuses`
--

LOCK TABLES `kit_statuses` WRITE;
/*!40000 ALTER TABLE `kit_statuses` DISABLE KEYS */;
INSERT INTO `kit_statuses` VALUES (1,'Activo','Activo','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Inactivo','Inactivo','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `kit_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_tag`
--

DROP TABLE IF EXISTS `kit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kit_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kit_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kit_tag_kit_id_foreign` (`kit_id`),
  KEY `kit_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `kit_tag_kit_id_foreign` FOREIGN KEY (`kit_id`) REFERENCES `kits` (`id`),
  CONSTRAINT `kit_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_tag`
--

LOCK TABLES `kit_tag` WRITE;
/*!40000 ALTER TABLE `kit_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `kit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits`
--

DROP TABLE IF EXISTS `kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kit_category_id` bigint(20) unsigned NOT NULL,
  `kit_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kits_kit_category_id_foreign` (`kit_category_id`),
  KEY `kits_kit_status_id_foreign` (`kit_status_id`),
  CONSTRAINT `kits_kit_category_id_foreign` FOREIGN KEY (`kit_category_id`) REFERENCES `kit_categories` (`id`),
  CONSTRAINT `kits_kit_status_id_foreign` FOREIGN KEY (`kit_status_id`) REFERENCES `kit_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits`
--

LOCK TABLES `kits` WRITE;
/*!40000 ALTER TABLE `kits` DISABLE KEYS */;
INSERT INTO `kits` VALUES (7,'Kit para Bebés',2,1,'Kit para limpieza de bebés','images/kits/q1P3wKc8YAomqrsUFwH9KHJA4yBxRfvMawpM5Txd.png',0,NULL,NULL,29.97,'2020-09-28 19:05:10','2020-09-30 16:47:10'),(8,'Kit Gaseosas',4,1,'Las tres gaseosas más cotizadas.','images/kits/RrXjL0hCxjesD6jZQ20vD2B5pYTXjrF4W9zQ9gHn.jpeg',0,NULL,NULL,0.00,'2020-09-28 23:26:21','2020-09-28 23:26:22'),(9,'Kit Mascotas',5,1,'Kit perfecto para tu perro. Incluye una cama PetSure y una bolsa de concentrado Purina.','images/kits/VMzlKWXTri14OhVNqTTOLzWW77YGzuA9pePpa7Ma.jpeg',0,NULL,NULL,39.98,'2020-10-05 20:01:48','2020-10-05 20:01:48');
/*!40000 ALTER TABLE `kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_types`
--

DROP TABLE IF EXISTS `machine_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_types`
--

LOCK TABLES `machine_types` WRITE;
/*!40000 ALTER TABLE `machine_types` DISABLE KEYS */;
INSERT INTO `machine_types` VALUES (1,'Iced Plus','Iced Plus','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Vision ES Plus','Vision ES Plus','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `machine_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_request_types`
--

DROP TABLE IF EXISTS `maintenance_request_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_request_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_request_types`
--

LOCK TABLES `maintenance_request_types` WRITE;
/*!40000 ALTER TABLE `maintenance_request_types` DISABLE KEYS */;
INSERT INTO `maintenance_request_types` VALUES (1,'type 1','type 1','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'type 2','type 2','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'type 3','type 3','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `maintenance_request_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_requests`
--

DROP TABLE IF EXISTS `maintenance_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `station_id` bigint(20) unsigned NOT NULL,
  `maintenance_request_type_id` bigint(20) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maintenance_requests_station_id_foreign` (`station_id`),
  KEY `maintenance_requests_maintenance_request_type_id_foreign` (`maintenance_request_type_id`),
  CONSTRAINT `maintenance_requests_maintenance_request_type_id_foreign` FOREIGN KEY (`maintenance_request_type_id`) REFERENCES `maintenance_request_types` (`id`),
  CONSTRAINT `maintenance_requests_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_requests`
--

LOCK TABLES `maintenance_requests` WRITE;
/*!40000 ALTER TABLE `maintenance_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2019_12_14_000001_create_personal_access_tokens_table',1),(10,'2020_06_08_003759_create_user_statuses_table',1),(11,'2020_06_08_003760_add_user_status_to_users_table',1),(12,'2020_06_11_014832_create_supplier_statuses_table',1),(13,'2020_06_11_014833_create_suppliers_table',1),(14,'2020_06_11_014834_create_brands_table',1),(15,'2020_06_11_014854_create_categories_table',1),(16,'2020_06_12_031530_create_product_statuses_table',1),(17,'2020_06_12_034654_create_products_table',1),(18,'2020_06_12_053754_add_supplier_id_to_users_table',1),(19,'2020_07_01_143805_create_store_statuses_table',1),(20,'2020_07_01_143837_create_stores_table',1),(21,'2020_07_01_143846_create_stations_table',1),(22,'2020_07_01_143855_create_divisions_table',1),(23,'2020_07_08_222423_create_incident_statuses_table',1),(24,'2020_07_08_222424_create_incident_types_table',1),(25,'2020_07_08_222425_create_incidents_table',1),(26,'2020_07_15_154524_create_kit_statuses_table',1),(27,'2020_07_15_154525_create_recipe_statuses_table',1),(28,'2020_07_15_154534_create_kit_categories_table',1),(29,'2020_07_15_154542_create_recipe_categories_table',1),(30,'2020_07_15_154631_create_recipes_table',1),(31,'2020_07_15_154642_create_kits_table',1),(32,'2020_07_17_121301_create_kit_product_table',1),(33,'2020_07_17_121316_create_product_recipe_table',1),(34,'2020_07_21_085200_create_tags_table',1),(35,'2020_07_21_090022_create_recipe_tag_table',1),(36,'2020_07_21_114630_create_kit_tag_table',1),(37,'2020_07_23_103154_create_user_details',1),(38,'2020_07_31_100243_create_notifications_table',1),(39,'2020_07_31_153704_create_discounts_table',1),(40,'2020_08_03_144415_create_advertisings_table',1),(41,'2020_08_10_092157_create_segments_table',1),(42,'2020_08_10_092657_create_segmentable_table',1),(43,'2020_08_12_091200_create_advertising_sections_table',1),(44,'2020_08_12_093003_create_advertising_advertisingsection_table',1),(45,'2020_08_14_094710_create_purchases_table',1),(46,'2020_08_14_094800_create_purchase_details_table',1),(47,'2020_08_15_220438_create_maintenance_request_types_table',1),(48,'2020_08_15_225024_create_maintenance_requests_table',1),(49,'2020_08_17_095747_create_permission_tables',1),(50,'2020_08_17_204401_add_fields_to_roles_table',1),(51,'2020_08_17_204422_add_fields_to_permissions_table',1),(52,'2020_08_20_092734_create_inventories_table',1),(53,'2020_08_20_133335_create_order_statuses_table',1),(54,'2020_08_20_133350_create_pickup_statuses_table',1),(55,'2020_08_20_134000_create_orders_table',1),(56,'2020_08_20_134724_create_order_details_table',1),(57,'2020_09_14_093457_create_machine_types_table',1),(58,'2020_09_14_093652_add_machine_type_to_divisions_table',1),(59,'2020_09_14_105054_add_machine_type_to_order_details_table',1),(60,'2020_09_15_111312_create_carrito_compras_table',1),(61,'2020_09_19_211901_create_nit_usuarios_table',1),(62,'2020_09_22_135533_create_credit_cards_table',1),(63,'2020_09_25_151912_add_card_to_orders',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(4,'App\\User',1),(2,'App\\User',2),(2,'App\\User',3),(1,'App\\User',4),(3,'App\\User',5),(3,'App\\User',6),(3,'App\\User',7),(3,'App\\User',8),(3,'App\\User',9),(3,'App\\User',10),(3,'App\\User',11),(3,'App\\User',12),(3,'App\\User',13),(3,'App\\User',14),(3,'App\\User',15),(3,'App\\User',16),(3,'App\\User',17),(3,'App\\User',18),(3,'App\\User',19),(3,'App\\User',20),(3,'App\\User',21),(3,'App\\User',22),(3,'App\\User',23),(3,'App\\User',24),(3,'App\\User',25),(3,'App\\User',26),(3,'App\\User',27),(3,'App\\User',28),(3,'App\\User',29),(3,'App\\User',30),(3,'App\\User',31),(3,'App\\User',32),(3,'App\\User',33),(3,'App\\User',34),(3,'App\\User',35),(3,'App\\User',36),(3,'App\\User',37),(3,'App\\User',38),(3,'App\\User',39),(3,'App\\User',40),(3,'App\\User',41),(3,'App\\User',42),(3,'App\\User',43),(3,'App\\User',44),(3,'App\\User',45),(3,'App\\User',46),(3,'App\\User',47),(3,'App\\User',48),(3,'App\\User',49),(3,'App\\User',50),(3,'App\\User',51),(3,'App\\User',52),(3,'App\\User',53),(3,'App\\User',54),(1,'App\\User',55),(1,'App\\User',56),(3,'App\\User',57),(3,'App\\User',58),(3,'App\\User',59),(3,'App\\User',62),(3,'App\\User',63),(3,'App\\User',64),(3,'App\\User',65);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nit_usuarios`
--

DROP TABLE IF EXISTS `nit_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nit_usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `nit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ciudad',
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nit_usuarios_user_id_foreign` (`user_id`),
  CONSTRAINT `nit_usuarios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nit_usuarios`
--

LOCK TABLES `nit_usuarios` WRITE;
/*!40000 ALTER TABLE `nit_usuarios` DISABLE KEYS */;
INSERT INTO `nit_usuarios` VALUES (2,58,'20120467','Jeremias','Ciudad',1,0,'2020-09-28 14:48:21','2020-09-30 15:11:25'),(3,1,'123457','sebas','aqui',1,1,'2020-09-29 23:30:39','2020-09-29 23:30:39'),(4,60,'1234567','Andrea Prueba','Ciudad',1,1,'2020-09-29 23:46:11','2020-09-29 23:46:11'),(5,59,'11111111-1','Test','Ciudad',1,1,'2020-09-30 14:30:00','2020-09-30 14:30:00'),(6,58,'56987412','Nit de prueba','Ciudad',1,1,'2020-09-30 15:11:25','2020-09-30 15:11:25'),(8,64,'77715-8','Minfo','Ciudad',1,1,'2020-09-30 18:09:48','2020-09-30 18:09:48'),(9,65,'524088-5','Pablo','capital',1,1,'2020-09-30 18:29:28','2020-09-30 18:29:28');
/*!40000 ALTER TABLE `nit_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('5062b528-bc91-47a9-a6c4-74dffe53e98a','App\\Notifications\\GenericNotification','App\\User',57,'{\"icon\":\"flaticon-exclamation-1\",\"message\":\"Notificacion de prueba ...\",\"action\":\"\"}',NULL,'2020-09-30 11:15:42','2020-09-30 11:15:42');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('002bc6605ada2eb412feff315004e5db3ab06bdaf2b721db651652332575d5eb4e12db91592c1ab4',63,2,NULL,'[]',0,'2020-09-30 16:33:51','2020-09-30 16:33:51','2020-10-01 10:33:51'),('053562a8ed3c90d9d13a8e1ca60c441a3f024eaf4b646fd838655f99d75a69c1f78ace163c10cfb0',58,2,NULL,'[]',0,'2020-09-30 16:59:12','2020-09-30 16:59:12','2020-10-01 10:59:12'),('10b61cdc64f2f2fa078533fb9b389ab832bca6bb84c95fd2c9bf6cf673fe102fef3b2bb899205c31',64,2,NULL,'[]',0,'2020-09-30 17:55:45','2020-09-30 17:55:45','2020-10-01 11:55:45'),('13627e31dfd3ad21ef600082e4388afbefb23e799ce198ba17d7dfb1d6eb92f68862dd20fd93bc6d',58,2,NULL,'[]',0,'2020-09-29 19:36:49','2020-09-29 19:36:49','2020-09-30 13:36:49'),('139d0645b99052253eb21ee9721ffd18c1b27206227bd836ccc6d34b8466f6a1c7f7dda7a67b56f7',59,2,NULL,'[]',0,'2020-09-30 14:35:18','2020-09-30 14:35:18','2020-10-01 08:35:18'),('19dbfe180b3475a5d21065eb1ebe74ae1ac45a13ad062fde7b074777884d17bfe459b8395b13eabb',1,2,NULL,'[]',0,'2020-09-30 16:36:03','2020-09-30 16:36:03','2020-10-01 10:36:03'),('1d80edc68fbc5558ca928b78dd336b7d1de1be891a02cba7c91032afef94e71f72426710047182cf',58,2,NULL,'[]',0,'2020-09-28 19:50:55','2020-09-28 19:50:55','2020-09-29 13:50:55'),('1f72a50fcd25bd66d81a0dd06b75bbceededd0c076d3f9b7b54c9b595b4398f4be2cea4c50513d95',58,2,NULL,'[]',0,'2020-09-29 21:11:01','2020-09-29 21:11:01','2020-09-30 15:11:01'),('2379e801ee44cbf3f1ac37793408b7954edc083314022b704ca1a73c7bff1457d3b55563e6416b19',58,2,NULL,'[]',0,'2020-10-04 21:35:48','2020-10-04 21:35:48','2020-10-05 15:35:48'),('25158bd0b5931b81e8f2261092d1613841794bc870fa3afa7cafb426b5b93d6367eecc1adbe4571c',1,1,'raspberry','[]',0,'2020-09-28 21:20:03','2020-09-28 21:20:03','2030-09-28 15:20:03'),('25da7b6cddbf85e2ecc3339e38080657eab0f66da0b0846741c980cf4a329f6593d9313731ce83f0',1,2,NULL,'[]',0,'2020-09-28 21:01:27','2020-09-28 21:01:27','2020-09-29 15:01:27'),('27dcbeb2d5cdbd36b1506d41b9c47698b63068cea7b5cbb5668628fa526ee750b48d790d875da068',60,2,NULL,'[]',0,'2020-10-01 17:49:59','2020-10-01 17:49:59','2020-10-02 11:49:59'),('29dd5104938fefaf19e1a238f4e16dd3e978244cb7559871d023024859cf7369d960b2336d7c98ff',58,2,NULL,'[]',0,'2020-09-30 16:54:04','2020-09-30 16:54:04','2020-10-01 10:54:04'),('2a28e8eb7533d9eaabea4d7308d8112dda0e434af3ac396a5f42884f37632e4480a071a959bbdac8',1,2,NULL,'[]',0,'2020-09-29 19:44:22','2020-09-29 19:44:22','2020-09-30 13:44:22'),('2c1c2e88e7b8d464c7a79d83cee6d131f7e9d5e9a918d42b33d30fde13dc0be764c3d02264fd356e',58,2,NULL,'[]',0,'2020-09-30 15:01:34','2020-09-30 15:01:34','2020-10-01 09:01:34'),('2d8a47a85300971b19930fba44ab8f6d09f69fb5e1e3161e72e619ac491298702c10d3d5413b8a6b',1,1,'raspberry','[]',0,'2020-09-29 14:13:05','2020-09-29 14:13:05','2030-09-29 08:13:05'),('2f7e3a6d3a15279ec6de5305ee060fb935054ee057ce523c8327f16aca79883c78cd6e7cc6a2730b',60,2,NULL,'[]',0,'2020-09-30 16:01:04','2020-09-30 16:01:04','2020-10-01 10:01:04'),('2fe3c8195afedb7e6dea9bbe7659486834f388b44492461f622022f885aecf4f8d21ff78c5e19006',1,2,NULL,'[]',0,'2020-09-29 16:56:21','2020-09-29 16:56:21','2020-09-30 10:56:21'),('320bdb2f04df66d9db73b71f40d1046c8688beffeec98be946501beec923db9772df64f8d82f4bcd',60,2,NULL,'[]',0,'2020-09-30 15:54:41','2020-09-30 15:54:41','2020-10-01 09:54:41'),('3632c928aa5cef521cbe2d0132bfa6336401355305307a913da76c59e24689a58c5c9d302236f5ea',58,2,NULL,'[]',0,'2020-09-30 16:35:35','2020-09-30 16:35:35','2020-10-01 10:35:35'),('384fb5803ba64628e730c1c902ba06d35848a5f43bc490fec00ce2f937dd68d8ee28a45e16c51883',1,2,NULL,'[]',0,'2020-09-26 22:14:38','2020-09-26 22:14:38','2020-09-27 16:14:38'),('3e190a9a17577de96ce4a0fd109b0cd37692700deef9651a2267877cfe50e361802dfa73e17aa55a',1,1,'raspberry','[]',0,'2020-10-05 16:17:27','2020-10-05 16:17:27','2030-10-05 10:17:27'),('3e3cca6de90d68363a7133a70420de693620c77b5000ac3feae6e739a75655bab07b80fd082ae838',58,2,NULL,'[]',0,'2020-09-29 14:13:52','2020-09-29 14:13:52','2020-09-30 08:13:52'),('3f305d37f1a1290e3cb8bbe551335e26a2784a641db87e9deb47e55ac9365a6eb00ba149b4e33432',1,2,NULL,'[]',0,'2020-09-29 21:53:25','2020-09-29 21:53:25','2020-09-30 15:53:25'),('42d23c2db540171a88abce03a9d6516a7a3677f43f2487af88957d93f01bc1aeca7cb6ef4e29ae62',59,2,NULL,'[]',0,'2020-09-29 15:29:28','2020-09-29 15:29:28','2020-09-30 09:29:28'),('4b763dfe72ae91610014aaaa47a57607b951588ec454ee242be896489839553ae7b3aa8f435d3ffa',58,2,NULL,'[]',0,'2020-09-30 16:56:30','2020-09-30 16:56:30','2020-10-01 10:56:30'),('4cfda952545a3352f7420d9882488a9527eb82105165a5a596f88f8980a9852fef6bfaf09978fe64',59,2,NULL,'[]',0,'2020-09-30 14:23:44','2020-09-30 14:23:44','2020-10-01 08:23:44'),('4f72814f2b114d666917377064a9648d1a1853c22d6041ed1d4ba66f49ba667d4cb47b3b6495b1c5',58,2,NULL,'[]',0,'2020-10-02 14:27:51','2020-10-02 14:27:51','2020-10-03 08:27:51'),('553c9553b5abb750728484b7bb8dd02ea01e59514b592b92375efd08057df2c91d105dad5021d78b',1,2,NULL,'[]',0,'2020-09-27 13:26:51','2020-09-27 13:26:51','2020-09-28 07:26:51'),('56adffbfb69beea7ad10511f72ce1729abe4e8c7e149d81fdf34e83c4bbd6e146f5fbd3e47530558',58,2,NULL,'[]',0,'2020-09-30 16:19:03','2020-09-30 16:19:03','2020-10-01 10:19:03'),('59d0d3807620957ca1c60d831a9db5188fb09913e6c1a909cfba503e9349afcf728a8380b0a94bbf',1,2,NULL,'[]',0,'2020-09-29 21:53:14','2020-09-29 21:53:14','2020-09-30 15:53:14'),('5a81c1ce1b95c2b5a57382f9b9ed0f42c8363e237eb7df27f19f0a23b9244b2c3c95baac8f3028fd',58,2,NULL,'[]',0,'2020-09-30 16:58:49','2020-09-30 16:58:49','2020-10-01 10:58:49'),('5be44aca71740c451539d54ea22ddba0bab80b96258827c0c7516f2155401926d7257ae085649ac3',62,2,NULL,'[]',0,'2020-09-30 19:04:06','2020-09-30 19:04:06','2020-10-01 13:04:06'),('5e0254ffbd46cad55fcab378caaaca6ac05a48e471bc71fd6f93ddb4f9a0d91db8192bff82d47287',58,2,NULL,'[]',0,'2020-09-29 16:01:41','2020-09-29 16:01:41','2020-09-30 10:01:41'),('60b1f7fe491e872f0c635db058ad444dbe8ecda3c39c1f32cff4f5cc52068cceea56d073496d3ba3',58,2,NULL,'[]',0,'2020-09-29 22:19:32','2020-09-29 22:19:32','2020-09-30 16:19:32'),('612f118eeac7bc72f808da2c14e40435e719acb21af1d45dd151cb155700e0d6ffc03c329c61b062',58,2,NULL,'[]',0,'2020-10-05 16:06:18','2020-10-05 16:06:18','2020-10-06 10:06:18'),('66f5137e30d3e5a08e0208aa50e515e470d72703f52fba6db48a33d34dad9f0069999c9ca64bd911',58,2,NULL,'[]',0,'2020-09-30 17:18:31','2020-09-30 17:18:31','2020-10-01 11:18:31'),('67d8972afe33cab59356d0c0459e577bf8f22e3d8c39a1a9a9dfcae173c013b5e0908c43d23f3218',1,1,'raspberry','[]',0,'2020-10-05 16:14:41','2020-10-05 16:14:41','2030-10-05 10:14:40'),('6d1d716dea5f249408797e665d8c0406d1b1328cedb36e92cfb4b7d3420834f51d74ac1a4c774c3e',1,2,NULL,'[]',0,'2020-09-30 18:14:44','2020-09-30 18:14:44','2020-10-01 12:14:44'),('6d2162f22574b172f984fe14a3d865c7ee073c3220a6f808db22b1520ee184ea588a5c3714d7c0f2',58,2,NULL,'[]',0,'2020-09-30 21:57:49','2020-09-30 21:57:49','2020-10-01 15:57:49'),('6e11e8ec013d04eb331697d1883c6c29d0998b23b88a6baceb87244a1fcc6cb33e48eb6a3ab8276d',58,2,NULL,'[]',0,'2020-09-30 16:51:14','2020-09-30 16:51:14','2020-10-01 10:51:14'),('6f106a2caf9e8058c9ac0d5c13a3e4854915b712cba8fb92f01a12c7154ccf84a8659e54aa6d957b',58,2,NULL,'[]',0,'2020-10-02 14:28:40','2020-10-02 14:28:40','2020-10-03 08:28:40'),('739f8dd585fe821070a4d56ffa789b5e70b5894f0a6e504c06f90ec9f581204c3e723539331e582f',64,2,NULL,'[]',0,'2020-09-30 19:04:05','2020-09-30 19:04:05','2020-10-01 13:04:05'),('749f9141b62e8230794959e95e6038ba723f40989777943dbb489df8817935bb73cf98172177b8a8',1,2,NULL,'[]',0,'2020-09-29 14:43:31','2020-09-29 14:43:31','2020-09-30 08:43:31'),('788ea78005d02642cc765e01d4e71a450873919a740f0a085ff99a4848235fdc0e4961e2985c844c',58,2,NULL,'[]',0,'2020-09-29 21:16:11','2020-09-29 21:16:11','2020-09-30 15:16:11'),('78a1d4d23451f1318d09081045223462c0e614f00f89f7861ee023396154d13057db67dda6464914',58,2,NULL,'[]',0,'2020-09-30 15:06:00','2020-09-30 15:06:00','2020-10-01 09:06:00'),('84578dbfa2f0406c4d4856a424103646dc23f089452b7c5e046c3e7e20759f0c2b7c63b2786e0ed9',58,2,NULL,'[]',0,'2020-09-29 15:48:37','2020-09-29 15:48:37','2020-09-30 09:48:37'),('8478d6f2d1c3c2893f213d83e786b4a6caef14c05a560db61d3cd9a79ee6dd223a90bbd4bc479842',60,2,NULL,'[]',0,'2020-09-30 16:55:43','2020-09-30 16:55:43','2020-10-01 10:55:43'),('8501521501bb8311fbc2408e32e2eabe883c1394d7e4bd747d85febb4f5e1d6a6954da93ad31e8ef',60,2,NULL,'[]',0,'2020-09-30 17:36:37','2020-09-30 17:36:37','2020-10-01 11:36:37'),('87c7d42eab373f76adf538942b01aec48b0254a52cac13baa28bd59f43001c743b757e4e462a5fc9',58,2,NULL,'[]',0,'2020-09-30 17:00:46','2020-09-30 17:00:46','2020-10-01 11:00:46'),('8b5eaef0c5095f3d1e8a12d20c2c2d6ca4353ee3102dd24db1260d343b6cf0ef83a68372fba337bd',1,2,NULL,'[]',0,'2020-09-28 21:21:07','2020-09-28 21:21:07','2020-09-29 15:21:07'),('8e2f0c8f5081e977ba9884ee9d0b498b1033fdf70a51de3906ebc0ac0d5f422a9307d068f74a2644',1,1,'raspberry','[]',0,'2020-09-28 21:25:28','2020-09-28 21:25:28','2030-09-28 15:25:28'),('9108922f5c47a64629784381d520789280412a1ba4a47a74bb02f0fb14b4f1b4b39b56ad6b6703ee',59,2,NULL,'[]',0,'2020-09-30 14:37:03','2020-09-30 14:37:03','2020-10-01 08:37:03'),('92090acfda78e05b372b04283d71b9ed901142da0c75f2ab37c976c10df0f467730589506a46e3ae',60,2,NULL,'[]',0,'2020-09-30 16:55:46','2020-09-30 16:55:46','2020-10-01 10:55:46'),('9994ae008f57d285144b69977e9491860e67cf9907095e962eb0457f6ccfa0e64abb17e89b043e00',60,2,NULL,'[]',0,'2020-09-30 16:34:05','2020-09-30 16:34:05','2020-10-01 10:34:05'),('9d1700ef57d9b592f4bf67d111ed3bcb3a561f928eb45e4492f47d8529e8427c3dc8abf19a13bb6a',62,2,NULL,'[]',0,'2020-09-30 16:12:04','2020-09-30 16:12:04','2020-10-01 10:12:04'),('a02c2d8e6b1ee031d4018ad31863322d9dd03e3e8e3cda4925081081ad4de4feb7d467fa9bac4ca4',60,2,NULL,'[]',0,'2020-09-30 16:24:24','2020-09-30 16:24:24','2020-10-01 10:24:24'),('a230c597733a3f351b60121f3a2d82f66a4fee36199d929d51244e3c7d6cf1f51267ff302bdc65a7',60,2,NULL,'[]',0,'2020-09-30 16:33:37','2020-09-30 16:33:37','2020-10-01 10:33:37'),('acc4a5b1f2e29a1a2bae1eed9180b6426b9cf2304145d3e1534f951f079299c2acbf72b86e8f3828',58,2,NULL,'[]',0,'2020-09-30 16:13:38','2020-09-30 16:13:38','2020-10-01 10:13:38'),('ad2e3594813c029c0bc37db5463198596a1f2dddca2eb20a6e92e1c421cd5e53092afcfc0a30f69f',58,2,NULL,'[]',0,'2020-10-05 18:09:41','2020-10-05 18:09:41','2020-10-06 12:09:41'),('be044b16ce8aba1c656594c4aebfc0aa1a73ebc5ae820d6b93d400ed4b69a3ca0508bf7cb1d6061a',58,2,NULL,'[]',0,'2020-09-30 14:44:45','2020-09-30 14:44:45','2020-10-01 08:44:45'),('c031b7b3452d43cde7aa5e523b38ee1460cd46984223c97bf0d9e695e55fb09828bbece778019747',58,2,NULL,'[]',0,'2020-09-27 19:50:07','2020-09-27 19:50:07','2020-09-28 13:50:07'),('c0c44d8135d5c84381f825988bf26b5df908b6b3491393e840eb43ce0abafc7ba53a3e2feb738ff8',1,1,'raspberry','[]',0,'2020-10-05 16:14:49','2020-10-05 16:14:49','2030-10-05 10:14:49'),('c45bc26371e2fa87f4e4aa6e3ae3ec9170c5ddda18f1aee82722e3e5365b7462099aa0f67d0344ad',58,2,NULL,'[]',0,'2020-10-04 21:36:10','2020-10-04 21:36:10','2020-10-05 15:36:10'),('c5a9ea02bae6c129d333f2a4758355c9c0e342333f858d946ca5ae823010a9d11755cf6d229f9f43',60,2,NULL,'[]',0,'2020-09-30 15:47:50','2020-09-30 15:47:50','2020-10-01 09:47:50'),('c6658b3ea8751a9cd819e7bd20b36f2f0f6e8ef4bf6a843317b2a7014d84e2b8c67903869a71d173',60,2,NULL,'[]',0,'2020-09-30 17:08:40','2020-09-30 17:08:40','2020-10-01 11:08:40'),('cd4664160e31430134eae56965ae692aeb241324b8aed3604c971b467b754032639fde26b309d1be',58,2,NULL,'[]',0,'2020-09-28 15:19:25','2020-09-28 15:19:25','2020-09-29 09:19:25'),('cf63e028b6a2ace739e6c061f8889fbd31e4b083a4b1bb092062965ba07dbb29ffd51898ebdba87e',1,2,NULL,'[]',0,'2020-09-30 17:35:26','2020-09-30 17:35:26','2020-10-01 11:35:26'),('d8c955b0a10205e931a6d48fda6a15ff9531813ee4cbd6cbe2187a799609ce6a65f7fd260deb0a27',58,2,NULL,'[]',0,'2020-09-30 16:12:11','2020-09-30 16:12:11','2020-10-01 10:12:11'),('d8d87748c64b8645042783b6256d68a20a82622dcb56d35286ab600cbb59c7f941331af4fbcb9fcd',59,2,NULL,'[]',0,'2020-09-30 14:38:50','2020-09-30 14:38:50','2020-10-01 08:38:50'),('d8fbde4bf28bfc8b60d304c9498518ea5c39f1ee9a7bee15c890f48e6b059e53187b72b649ff980f',1,2,NULL,'[]',0,'2020-09-30 16:24:31','2020-09-30 16:24:31','2020-10-01 10:24:31'),('d975dec6771bd41fda7d0aecd5748fe721ff6d06552086b2e81f036f07b1d4e3cba88cb36d45369b',58,2,NULL,'[]',0,'2020-09-30 02:39:23','2020-09-30 02:39:23','2020-09-30 20:39:23'),('da168ac8fa968ab17755ee609dac6b6c298a0aa672ea55740f2d569ebf550bb2fd0ae154933f242b',1,2,NULL,'[]',0,'2020-09-29 23:27:31','2020-09-29 23:27:31','2020-09-30 17:27:31'),('da298f2b94173775c7dc58e02682c3030780335e50c8f1c6b139ddad10c1846ca12496cba91991a8',1,1,'raspberry','[]',0,'2020-10-05 16:17:37','2020-10-05 16:17:37','2030-10-05 10:17:37'),('dbc952c75009beb1cea1a478ff4bf85117cfcbea3014657111f163fb5308962ed5500b8b59b5a538',58,2,NULL,'[]',0,'2020-09-30 16:39:49','2020-09-30 16:39:49','2020-10-01 10:39:49'),('df84f3ef1b63197603d24c14f0f3b6623caa6b89d348958afd7af9188dad76543cc79e7733a655e6',1,2,NULL,'[]',0,'2020-09-29 23:29:43','2020-09-29 23:29:43','2020-09-30 17:29:43'),('e33b441b7f9e27e159b2c915498625d91b9a4589cf363c68df4629be09055f346c81801bfcd35222',62,2,NULL,'[]',0,'2020-09-30 17:52:18','2020-09-30 17:52:18','2020-10-01 11:52:18'),('e620334b49b4813c978f3dfa10df52d42a96c4888207b04313d3d0ad174cccef469932613cdb4a1d',60,2,NULL,'[]',0,'2020-10-01 17:49:59','2020-10-01 17:49:59','2020-10-02 11:49:59'),('e7925b1ab98fda97cd813aa2191b750d5c2784bec68c9bd45e7ea022fbc6591f3220c860febcaf9a',1,1,'raspberry','[]',0,'2020-09-28 21:23:38','2020-09-28 21:23:38','2030-09-28 15:23:38'),('e8bfcadd2290748a5bb8ba74054ac17f803c33bebd26e01e34264f5c8377aba8cfb724560ada08a6',1,2,NULL,'[]',0,'2020-09-29 14:09:10','2020-09-29 14:09:10','2020-09-30 08:09:10'),('e94b5a5470d0755f5e30a4562c671e5351ebcd492bbba141ac7d9f2037f76e4612dde33d144e7c47',58,2,NULL,'[]',0,'2020-09-29 21:53:32','2020-09-29 21:53:32','2020-09-30 15:53:32'),('e99f04f098b993bad0d34b3807514d17235907b3bee5ce78f3afc8f5e384a728f9c6b0b4ed3b993d',58,2,NULL,'[]',0,'2020-09-28 14:59:06','2020-09-28 14:59:06','2020-09-29 08:59:06'),('eb6859912744b9d7a22a1bb002d624c87c1f74d6955428a1eb781e84a4580dc949ec25be5383169a',65,2,NULL,'[]',0,'2020-10-05 16:58:18','2020-10-05 16:58:18','2020-10-06 10:58:17'),('eff055a57ed574ff24fbce74bc08ea20919d95c50f137ac6c0e99745db80a82c98511c27517cb0ce',58,2,NULL,'[]',0,'2020-10-05 16:06:36','2020-10-05 16:06:36','2020-10-06 10:06:36'),('f41dd9d2d5e4252fdf78cbd7c17d25221fe3844835cdc016ed644ffc605867470c2f9625f3b699a5',1,2,NULL,'[]',0,'2020-09-29 23:23:09','2020-09-29 23:23:09','2020-09-30 17:23:09'),('f542100175026baf9ccfff76293372b31551114f726f0df84ce782506b5516ce4295832f0c5feb19',58,2,NULL,'[]',0,'2020-10-05 18:09:21','2020-10-05 18:09:21','2020-10-06 12:09:21'),('f7e4321857f28ea1bb60349de3b77caadf8de22857ca27360f77437d7584969667c803a5c70b9d8d',58,2,NULL,'[]',0,'2020-09-30 14:08:08','2020-09-30 14:08:08','2020-10-01 08:08:08'),('f88847a2c0cf991840f01782d90dd172d9c1a6463f95a06219f604f125bb095f2f64c13c291d64f3',58,2,NULL,'[]',0,'2020-09-30 16:16:31','2020-09-30 16:16:31','2020-10-01 10:16:31'),('f90e81a0d0dfea14444ec6c1c1e8f2e4c7d9ec47f4983b89682a22a70b62bda1ea8722fc3060a484',58,2,NULL,'[]',0,'2020-09-30 15:54:48','2020-09-30 15:54:48','2020-10-01 09:54:48');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'De Paso Personal Access Client','gtQsWvVnNvAhTFc7jcLgU53U8YkYfHVP2HQHgCuv',NULL,'http://localhost',1,0,0,'2020-09-26 22:13:48','2020-09-26 22:13:48'),(2,NULL,'De Paso Password Grant Client','HUMzl40jXmcKNc8FztQfUODJYwAMPE3meg9qiade','users','http://localhost',0,1,0,'2020-09-26 22:13:48','2020-09-26 22:13:48');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-09-26 22:13:48','2020-09-26 22:13:48');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('03dd13de32ab1f88aae95384ea48593f715a1ce7fe1763f87830498ada774ef449fe1f23f507b266','36ee560944a8a95de446b24bbd1d9d0f209bcbe28aebaef9951769544798bd4faa16e3d320db3285',0,'2021-09-29 22:01:50'),('054408dd02e37771348ae9818479622061de1594a9400e5abc4c9ca70fbcbf21872e9df0b3673109','2c1c2e88e7b8d464c7a79d83cee6d131f7e9d5e9a918d42b33d30fde13dc0be764c3d02264fd356e',0,'2021-09-30 09:01:34'),('0571087ecbd50de62a92895ee26ef539703a52505d187e8d7b63c2270785a2e27a789cac520f6bbe','cd4664160e31430134eae56965ae692aeb241324b8aed3604c971b467b754032639fde26b309d1be',0,'2021-09-28 09:19:25'),('05fca5e99126624d1b8aa3c65aabcb2d9e11bf769150022358ab9196b9fd65def258f79320c10034','cf63e028b6a2ace739e6c061f8889fbd31e4b083a4b1bb092062965ba07dbb29ffd51898ebdba87e',0,'2021-09-30 11:35:26'),('05fcb81ccf175f312029ba6296a47bab3c6e8f7217f217bade119b62d0400106d08e9961a7dea89a','471ad9f5320a9ee494165f98cf24ed4af582e93ced5e8232baf330f2ee89c48f1e7396788cbbe715',0,'2021-09-30 09:28:33'),('07efbab6e8e76b2325bf53fb52ae59c63641b5ead028d4846e3968975bdb6ec88ed9fe2a67132254','25da7b6cddbf85e2ecc3339e38080657eab0f66da0b0846741c980cf4a329f6593d9313731ce83f0',0,'2021-09-28 15:01:27'),('08a8a50f98dd03bd43f54e4f6db6abb20d73142cb107e081efa96f880f8717bff1635a1b169046ed','e8bfcadd2290748a5bb8ba74054ac17f803c33bebd26e01e34264f5c8377aba8cfb724560ada08a6',0,'2021-09-29 08:09:10'),('0a8ba6e5f7a98d8c63d850537401ddfc0306ee1b6a3ec4083043db786d129cecabbc6f3588338314','19dbfe180b3475a5d21065eb1ebe74ae1ac45a13ad062fde7b074777884d17bfe459b8395b13eabb',0,'2021-09-30 10:36:03'),('0ae1a831652980c2ed7575490efafb7a19b5768b2498b36736532eaa595e66c70acf8f5569b509dd','739f8dd585fe821070a4d56ffa789b5e70b5894f0a6e504c06f90ec9f581204c3e723539331e582f',0,'2021-09-30 13:04:05'),('0c9b19a4d28aba27a311f53dbced96dd4499b686fb33b065414868b9f2c6a14865779206ad35d900','df84f3ef1b63197603d24c14f0f3b6623caa6b89d348958afd7af9188dad76543cc79e7733a655e6',0,'2021-09-29 17:29:43'),('0d161c2c8a07683962bdb0c9596df433954d799210cbed84eb2bc98167a596bb560197ddafa734a3','e553e7965099c202c3c9729eeaa36ef7ae3d29852e505d395c15aaa01bee9d83e39e6c5b18113c62',0,'2021-09-29 08:05:00'),('0ecd140ad931f8a044bee0ff126f2f930b61a33285f3921cb03d544523d97010d64f8394cd22b087','1801882404ad1fcb8f36247e98b6a256a5aeb3f04657f1a1c0cc5909b488249d5b3e07bff1443e89',0,'2021-10-05 07:52:34'),('0fa870cfa13479f654ef65aea0d8a7bc5f331e5000e963b0f4648874f39ea583ea164d229c526ebc','13627e31dfd3ad21ef600082e4388afbefb23e799ce198ba17d7dfb1d6eb92f68862dd20fd93bc6d',0,'2021-09-29 13:36:49'),('13d285c2273917de5c3de76567abf538ccb00b7e69baecafdcceb6f89009827047fb27b07dfdfd4e','5e0254ffbd46cad55fcab378caaaca6ac05a48e471bc71fd6f93ddb4f9a0d91db8192bff82d47287',0,'2021-09-29 10:01:41'),('16d8aea59575aa0f1da33681f1d984fc805c7491f88be65b4c5ab6cf01e8717fc3be46aeb230801a','eff055a57ed574ff24fbce74bc08ea20919d95c50f137ac6c0e99745db80a82c98511c27517cb0ce',0,'2021-10-05 10:06:36'),('170c25de8602298bafa898e00813fc127b586b1cad2145ddd2575f110869e203e5a8e608a3e3eb49','d2a3281bd54a3c59732d0043330d09eb4e057ea9ef1f7da166665c30ffd4b6516cd7ef1a01e41c8c',0,'2021-09-30 09:28:55'),('1b0f7caa051048e4e43a9f5e486aa2efca8b9e98bf95854577ba5e400b293523fb5043444a2c8468','da168ac8fa968ab17755ee609dac6b6c298a0aa672ea55740f2d569ebf550bb2fd0ae154933f242b',0,'2021-09-29 17:27:31'),('1b6109e126213fd2c31e1d15fc3a136c4bcd53a0a4277dd52fb651c4e157937ab79219de842b71f2','b71fb42b3281db8aeb4fe21eb2735a81ae6c0752ce49e08710632a9b5e1b0ad01cd39fa6a8b057c6',0,'2021-09-28 18:58:27'),('1c5ff1d3dd6ecfcb02229be10ca6e4e74b4c814435d8b297a163623de234fccda41915a376d39ce9','6c849deef75ab31a21ab251f74d7c260e09ac3fbf3b88939fba063191b41570abc1295e274c9edbc',0,'2021-09-29 18:00:17'),('1d158f612ad034ad758b89d993797909865fce40c57cd8a8c398363d9144a039d90d32c9b325f3c5','6e11e8ec013d04eb331697d1883c6c29d0998b23b88a6baceb87244a1fcc6cb33e48eb6a3ab8276d',0,'2021-09-30 10:51:14'),('1e429ff905488a450bb82354fff73894e7926bc41a96d450ce877258ba6456739b77a8dd907838dc','1fae767e213844406c3c5edae1b3fb0f3563be5ed8c1c0bca09987bb20175bb952ae739f76b486a9',0,'2021-09-30 09:07:22'),('1f3a976b3fe5e257f312621d3a7f25060a04708d9c92d55e8897c1817296935a482221fc17a2c17f','1f72a50fcd25bd66d81a0dd06b75bbceededd0c076d3f9b7b54c9b595b4398f4be2cea4c50513d95',0,'2021-09-29 15:11:01'),('20e5488414046d855a1f15ff445e59f420feac10a6f324c983b28eb407b545f05764dc17caa3a808','9d1700ef57d9b592f4bf67d111ed3bcb3a561f928eb45e4492f47d8529e8427c3dc8abf19a13bb6a',0,'2021-09-30 10:12:04'),('224e4b70e6df84856e288910c63e6fecc289f0d82d395080d86d9502d3afa749928c5d0c0c1b4fb9','20fc4137e7a9b128bd4a08c9dbcb3d68a2d753b4c1c0cfb2b723aafad740ebfa1b5b2b42d30a24b3',0,'2021-09-30 01:53:39'),('233987704064c29ca78813e5843303b1672b388e27595a69ed4df908c8940d948cbcf06c54266ee4','ad2e3594813c029c0bc37db5463198596a1f2dddca2eb20a6e92e1c421cd5e53092afcfc0a30f69f',0,'2021-10-05 12:09:41'),('25c38fdab0bc6dc56f7893548e61f0444a9327a8b42a35c932c4ae309d3824e6eea89a600fb40c06','be044b16ce8aba1c656594c4aebfc0aa1a73ebc5ae820d6b93d400ed4b69a3ca0508bf7cb1d6061a',0,'2021-09-30 08:44:45'),('2613ab33f17d30af71d81a4d774ac740142f9d6ab834d2d79d753c46f3dfe8dc5b98c0aa59c9cc19','14cf54cab8f7160731c8e60778a9a9c8f2f38f0c76ec97899db149c200dff991561c04640b82f3b1',0,'2021-09-29 23:08:45'),('270afb13c04df351e74db2fa769cbaa3c84698a1ddb0d579c4d8c8b7dc5e21d7cbdf3da0d09b5e89','6f106a2caf9e8058c9ac0d5c13a3e4854915b712cba8fb92f01a12c7154ccf84a8659e54aa6d957b',0,'2021-10-02 08:28:40'),('27724c6a3a1e6c7d4a5d5688febc700774745050196538f35a00915ddb3733e7284fe8b2cc50e45d','6942ea549048a41a1e79721a48542b3713133669daf823e5f09dcce9949a26abfcd3e2576856d7ec',0,'2021-09-30 14:48:31'),('283864a1f3276c6310cce7a1de1e2be2efdb8cf988b510203aee2f1c3a3c24e4a6e5198f43413cb0','92090acfda78e05b372b04283d71b9ed901142da0c75f2ab37c976c10df0f467730589506a46e3ae',0,'2021-09-30 10:55:46'),('29ae8d2b6850b33908f17ae17cee1b2a6d2c0420f9737d980c92b859467b3fe1f1619e08e6628189','78a1d4d23451f1318d09081045223462c0e614f00f89f7861ee023396154d13057db67dda6464914',0,'2021-09-30 09:06:00'),('29f542f6496abc7d4d89f6eba3008d0dd64af5ad3d0ab34d815c121661a4fee491f505f518f9fb9b','9108922f5c47a64629784381d520789280412a1ba4a47a74bb02f0fb14b4f1b4b39b56ad6b6703ee',0,'2021-09-30 08:37:03'),('2a708905fe3186ac323cca53dd559a6d9da9fa3ebb55d088f0442ff38308bd5ffcc3ee8161fb98db','c6658b3ea8751a9cd819e7bd20b36f2f0f6e8ef4bf6a843317b2a7014d84e2b8c67903869a71d173',0,'2021-09-30 11:08:40'),('2d736842b6ca8426ac2609d0d4f21e58d9eae8380f0257394bb8c7bed175fe029e1c700f1547dd25','59d0d3807620957ca1c60d831a9db5188fb09913e6c1a909cfba503e9349afcf728a8380b0a94bbf',0,'2021-09-29 15:53:14'),('3307d9feae6ac60667416a90d1324c6c43f0abf96f44ae3e6d42ba0820f2fc8579ac31cbab2a0c43','053562a8ed3c90d9d13a8e1ca60c441a3f024eaf4b646fd838655f99d75a69c1f78ace163c10cfb0',0,'2021-09-30 10:59:12'),('3435a52ce7717b093672ca1f69d0121eb7e27ccec0d41d68620086122794b571ca3a62f1c087bf71','eb438e79c6871eb3dc16d4b7ba31ba7cea628c27b7e150fd665646a91fc49403a4fcb3a96dafd2b1',0,'2021-09-29 09:09:39'),('343ed813e12c2a701f4f528a2d6487675a7dc85790458b370e9b734d2caeb1b018516d7139e37a46','a230c597733a3f351b60121f3a2d82f66a4fee36199d929d51244e3c7d6cf1f51267ff302bdc65a7',0,'2021-09-30 10:33:37'),('347350ac71a4ddac885e9e6fff9d5145f17768dc268000f80b7b01f21ec2028ad5e5ad105e718601','5be2b21773eab5fa4769059993f70024fac886e0fdb940c99a63c8e7ce6d6df652b396eba458d9b7',0,'2021-09-29 20:19:02'),('35161c74e8eb84ea89edbf348765407b3607c744ffcc81d40400d1e0de79904f869a5aee5cf3c6b7','a31b9fc213e4ff519df3b6feb096c90d5e40f887d2366595bc2fff26a4bae25f9b64078449d4b414',0,'2021-09-27 18:58:04'),('3543843e12f191674b1d269cf893970cf2ce504dcef0ae353b35ddf2c50d6e9f51c10cfabe5b1ac3','24949b6dccea083f6f5bb5559d41a53ce353306e9f04f8a97a887d80778d24d8aa20ddf80ebd0f87',0,'2021-09-30 14:47:53'),('375f95e6d66d36970610b795e8da39a7b631f44e50200b81baff54034d21b41617bbe528032afa65','bf09f3e29f82374eb671551a58d20b0d690cd0ed2f134fe6d9105c9f78521bd5062eadd6cf2828f8',0,'2021-09-29 09:38:04'),('376d9d75893d59d11518995d10e6e65cad2439afbd353711ff7f5b5b21981462d89d7c3f4d0d22aa','195f5bef587020c1bd8546766c176bf0cf25a8fc988dd0bf011eb87e0abfcc03e2cd413d65c5a260',0,'2021-09-29 15:13:07'),('39a577f5fcd1a5d485c388aa69b2c1be0cbceacbbc2780756d278a46cecf07194f477596523106a5','8501521501bb8311fbc2408e32e2eabe883c1394d7e4bd747d85febb4f5e1d6a6954da93ad31e8ef',0,'2021-09-30 11:36:37'),('3ab86e04c8b5aa91b7b42e232ff282f73086b8e0c70b3437be86da7a59e35eabb4830f4c2f2efc0d','99849b67d038327e4d05e03a248d533831c66b5b467619c3c1d67020d29a69bd479bc3601f67ec74',0,'2021-09-30 11:12:30'),('3b127a5a05392b59be19bb6ab67a8550244cf615097ee7672de990fcc282893dd5b35550bf6dfcd2','2d70faa53ac313c57b4c4abb90aced7630aa9206d82140a068a9a541681d0dc792e7477fde0181eb',0,'2021-09-29 21:58:35'),('3baa23ff54a111597f8b85621c41e77d9e7b81ea6641e0a963e9d00b79fc3690a0934b7b56c1696e','89e3f382af1e2e01b2d6c7f34a4bff28e33ff65f38111863df2c864656ccc0e67f7415d314456d9b',0,'2021-09-26 22:58:12'),('3c3748243e20f1504216abb7348ee9069418f5137f06440ead327e24567e58842cd989dfcb8c16dc','6cf908c7538c25a61f1c1f71761c5ff5add064bb80f77488aa9c35c951c7e37e9266600d7258da83',0,'2021-09-29 21:36:56'),('3d38e5b90c0767233f28ca2b871c4ef94f82cae5081a109655d7a12dba5af1eed587b20a45ae6b6f','d8fbde4bf28bfc8b60d304c9498518ea5c39f1ee9a7bee15c890f48e6b059e53187b72b649ff980f',0,'2021-09-30 10:24:31'),('3e21730ccf33eab89f36fa7c0ac8ede81606d0693d6544658cdac527b8d57220ada17ab4d7436fb0','42d23c2db540171a88abce03a9d6516a7a3677f43f2487af88957d93f01bc1aeca7cb6ef4e29ae62',0,'2021-09-29 09:29:29'),('3f0c6ea0c8ae3cbdb5b899a6ead02ca9e0d493790c7d08b5dab1d3364d8920c72ebaffdebf32ba3d','caa089f23928a35d52847e30d469a6fc4031b42e957413dfe91a666f51a765cde7078296221a4e5f',0,'2021-09-29 22:43:06'),('40691ab934f1ea82021817802de9366a0c163ceff7f714a535899f7620159f78f2bde23544af6945','139d0645b99052253eb21ee9721ffd18c1b27206227bd836ccc6d34b8466f6a1c7f7dda7a67b56f7',0,'2021-09-30 08:35:18'),('40a91acb9a174251f1e8eff66ead595bc4e584fa2b187b8ca2a7086f49e56442abfe0f8c1d8f50ad','5be44aca71740c451539d54ea22ddba0bab80b96258827c0c7516f2155401926d7257ae085649ac3',0,'2021-09-30 13:04:06'),('42d1763d077d71caa3cca041799c6730dcbe51c52c7652efc9339f481fa636309b699c1d376d430e','164ee571c19cb9ef2a3ac8646635a6dd633da842acd0a95a44ff840f279b6c464c3e985378d8f9c3',0,'2021-09-29 14:29:37'),('45780da5878c9e7cd199bd835544b2b651022838caf865ae3b683ab502c7ee4bc536301f0914c3a5','e33b441b7f9e27e159b2c915498625d91b9a4589cf363c68df4629be09055f346c81801bfcd35222',0,'2021-09-30 11:52:18'),('47d4b204b9ea1cbb8a36ceb839104df1bb3d7719a1563f0bcf550b35f791e65c54ccd31839dc9119','749f9141b62e8230794959e95e6038ba723f40989777943dbb489df8817935bb73cf98172177b8a8',0,'2021-09-29 08:43:31'),('47f63da127916db47190095d9968c198b37153e01932526812de269b1abda2a5fd503d0d66be947d','d8c955b0a10205e931a6d48fda6a15ff9531813ee4cbd6cbe2187a799609ce6a65f7fd260deb0a27',0,'2021-09-30 10:12:11'),('497f89c84f025d06b1f2e2a9c0ca565cae9fa6a808c9b5f6f0d96affb818fa48e0266f7257a0a107','0acaf0070212ac6f9738ce5603f72aa45339849a883d909c3ae57364ba3722e4a89c48f48eede87a',0,'2021-09-30 09:28:16'),('49bbe1a9075285bd6da6279474dcf24ae8b8f6c7c0cbf8b54aa16a4025ec3610f328e874bf12cce7','d80cd0819ff9cbb734dfc7a42f35fd96ef075607ba66f7d1a69020a98148cd0d5920640fcf28af6e',0,'2021-09-26 18:01:59'),('4d3789a2f90f3bf22c299c3cc82c7747178dbb837cb5f20eb2f74b2d921ccf0c45c204e4b998ae8f','2a28e8eb7533d9eaabea4d7308d8112dda0e434af3ac396a5f42884f37632e4480a071a959bbdac8',0,'2021-09-29 13:44:22'),('4e8369fad7b73b2ec4cf58174f6f5291e5a412b09d334ccbcc87991f3ceb7e96d3c923c46d168cce','dbc952c75009beb1cea1a478ff4bf85117cfcbea3014657111f163fb5308962ed5500b8b59b5a538',0,'2021-09-30 10:39:49'),('4ee5d6d3713c536511a4246734053ac34860ec0e9a6e76007dae94b085b39980f3598292a340f4a7','f38e8730e26247a754b678b651b50590a73e7d5c805aee2c478ce62909f7258f159870300c5b2609',0,'2021-09-28 15:09:56'),('509b91d33867db13eee56a7fe4e534ae6ef85050d673d1228cfd1816a8f948f1eb8df658bde4e13a','78a90bd4bc4b7921ddfa39cc10bff2dfa0c9a4c4dcac7050bb90dfd6581aa6ae8bb2282c0c88015e',0,'2021-09-30 09:42:49'),('51d66eac6e9f008f565951995175c281c4c45ba4aeb1d13b9fc565b9f03dd2a727c6b5b45a97b31c','3135cfc7f5ca6327fc2e082c72563a6068905b3b3680f89ac976436faf0b22e66a78506fa387ce61',0,'2021-09-30 13:27:16'),('528d069c6def2c68b5b6391e2f6683a34df2188079c2f9098627863d53193343eed7f150c3b78627','384fb5803ba64628e730c1c902ba06d35848a5f43bc490fec00ce2f937dd68d8ee28a45e16c51883',0,'2021-09-26 16:14:38'),('530edb7620f6375d697749de0f2e7949813444e89595cce002ca46ed3007464e39b1e6ef32b7f1a1','acc4a5b1f2e29a1a2bae1eed9180b6426b9cf2304145d3e1534f951f079299c2acbf72b86e8f3828',0,'2021-09-30 10:13:38'),('536ade02eabb1d9c6e5d74e09a0da12fc14caea1beec4e90405db56cebf6d988cc17c6210fcf19ec','b98cd15bb22c7e6f32ea607b2dbf5b764fcf43552327a9337dc21169314527d81458ea7374112d31',0,'2021-09-30 09:25:08'),('540b63432b70a23163bc80320805873458b31b4714d620396e8b5359eae682a0f43e6732cc6c7aab','56b5b97308826464de4c08525e98182461080299d954d5fd604c5b87526728aba1c33157cd405d42',0,'2021-09-26 23:01:08'),('541d95d8387f46f4b59f26e64702e4a0c9b00c6b85410bed7b64ec681ce86fc8db5006e69bbe00b3','aa95052c5055c3221abad82b086b6f411ed6f9b2975abfb18fdf3f69076f6cbcb0523ab5309a27e0',0,'2021-09-29 09:30:32'),('545cc694edfe00291c2956798798272e2fe177b87dfa9fd053a222553a07064737bb4c9bc63c6215','f73ecf688b2d847115b4b26517442dd15e4c76490066e5c60dc810314b8c74d158b0e354da8b2686',0,'2021-09-30 08:29:10'),('54c242bbb4cff36da10cbfacc70f677dfff636f55366267cc029db8d7927377bc8d649ef60d7d964','788ea78005d02642cc765e01d4e71a450873919a740f0a085ff99a4848235fdc0e4961e2985c844c',0,'2021-09-29 15:16:11'),('54c8ffc743fc630f1dc8f790974c082127e2348e7e67870451b92ff705a068fdee5da52287ff25e9','930c5e7c91422458e9c88e9d43ec75ce4160d24e5a45fcd3eaf7ae2a606fd1606a0c813ccbf7bd34',0,'2021-09-30 09:14:50'),('55f8fd954f1aede6aedffc5eb867c8b238e9ab2b78b4e7f9d4fcdb8b7359a79bafbfbe50fb672f16','87c7d42eab373f76adf538942b01aec48b0254a52cac13baa28bd59f43001c743b757e4e462a5fc9',0,'2021-09-30 11:00:46'),('59ee2dac0b285a851d60f4db08db615eda729f92a3a9a3356d6da06a4fec85a65e1939ec1a57eb13','046c7213da449a2c0f0784d8c766e998916d6f107770d5f4bd516341d9861e42159544064ef8b360',0,'2021-10-05 08:57:27'),('5afae249241baa17d05aacc97edfa61b916d3b7a9d3d7403549e453ae426f9958d3fb1a649c20e6d','4742152952402cd0f1582c7d6544e3ebecadd2c30a2fca7d778a7593a2a80c894b6e050ea6656cb5',0,'2021-09-28 15:01:05'),('5c089c65827c43bc3048e2deb9293d747131150eb64a5ca664ea0f21671024026111086450b463e4','87fcb4933734e55fa770c91849dd40116172d33e3fe6e78acfeeb44add13a0089e6d070dba03ee0c',0,'2021-09-28 19:25:54'),('5d0da34ae46c26c8bbbe083186f3ede31184a35cf48cffa8e5ad770e61f0e29541939e9a58da8f10','889808210fcf2d1092f7a2b97b045f13bec1071c6e4c70dbc6b583964f41768646f77a0bc1241d11',0,'2021-09-30 09:34:08'),('5d6105ddb4760262000126fe061c92415628294c9cb5e302a7ef33ce7eff3c9329ff3e70001f2eac','eb6859912744b9d7a22a1bb002d624c87c1f74d6955428a1eb781e84a4580dc949ec25be5383169a',0,'2021-10-05 10:58:18'),('6548cb1d3ec106fcade17d79f113bdf847fb65d4e6b4ff5bf8d1678e69302acaff87bf01aad49e90','4f72814f2b114d666917377064a9648d1a1853c22d6041ed1d4ba66f49ba667d4cb47b3b6495b1c5',0,'2021-10-02 08:27:51'),('668f9555fdcf3087e90afd00f4d5479d32bbf4a50aac1a79e4e7a075df46a4551848b1b863d2d9e5','6d1d716dea5f249408797e665d8c0406d1b1328cedb36e92cfb4b7d3420834f51d74ac1a4c774c3e',0,'2021-09-30 12:14:44'),('6701cbe0bc15d47414db3ca63b3f374ebad8a451d61813b0832b2fdad60213f065bf082e73f1109b','4cfda952545a3352f7420d9882488a9527eb82105165a5a596f88f8980a9852fef6bfaf09978fe64',0,'2021-09-30 08:23:44'),('6ccb98a209798fa46f02c99d7381d427aa8f6c174a8cececa886b59f674fe86214b5c8ce595b3371','8478d6f2d1c3c2893f213d83e786b4a6caef14c05a560db61d3cd9a79ee6dd223a90bbd4bc479842',0,'2021-09-30 10:55:43'),('7034da678979a31f260ca27ccfae8400296c2e12795333a6337817488d03cc1a8a947ba59d29e40c','e99f04f098b993bad0d34b3807514d17235907b3bee5ce78f3afc8f5e384a728f9c6b0b4ed3b993d',0,'2021-09-28 08:59:06'),('722784866322c46554368dacab24749f751d22e01c30fc617235594af3ef4b6aa1396bfc8c745027','2fe3c8195afedb7e6dea9bbe7659486834f388b44492461f622022f885aecf4f8d21ff78c5e19006',0,'2021-09-29 10:56:21'),('72c3125706de24fe4059f101af9ff41af2df59d88afa6865d4fd6f21c8631617bf9dfa4f80ddc552','5afe2dd8e66e9fa3d60cb47c3b19daa51a6a74785d8222d99e8398365bd56a449a532f3e38de6b77',0,'2021-09-29 11:06:46'),('72d7d4a08da89be2eed1606fe9a9b83fa73f81c451563bd26866c7b943902f0f1f235899533b719f','13501d342f56fb23d5a061671eb33e9c0ba9998ad45d836fb795d6bd5259fd2e21de071681ed531a',0,'2021-09-28 08:21:01'),('730bbfc42de7cd2fb32d73a025888f4ffaf8914adbe27e541a3a95e3d89053102d449d3e95e1df22','6d2162f22574b172f984fe14a3d865c7ee073c3220a6f808db22b1520ee184ea588a5c3714d7c0f2',0,'2021-09-30 15:57:49'),('74d13adf21676a6969958752697a61f0d8625dbbf23d7da68002d9319386da695df573cccf15f2a2','5e49ad2c32f1c0b85f97432bd464feb98d694b2ec25849e1c691365511a1b806a94e1491e16c5611',0,'2021-09-28 15:06:40'),('74f205e8f4eb87a071b72b29b397e80d0c519f46a36b666d669073734e934b49e81ede6beb9d6157','56adffbfb69beea7ad10511f72ce1729abe4e8c7e149d81fdf34e83c4bbd6e146f5fbd3e47530558',0,'2021-09-30 10:19:03'),('77200a6c0a544872fb92bedaefb473bc5072f62e04fcce6923f38d0b0ec59446a431e5eb1d1d6094','e4e81d8cce43bf9087551ea16ebc47c3d2bf41dae02c689dbff1f0b3ae7eb281a6cb58eb8dae3e5f',0,'2021-09-29 20:46:33'),('791ec2cd40e7e7b976e2a8c8a5647134a40b72320a8303bbbc4df3a7781ddded02a0625b47bd1271','c93387cf1ddd4f02d867a4c0b187477fe1c3cf89befefb35c7685b11caae3fd71457d32bdcdc574c',0,'2021-09-28 23:20:42'),('797ba7f0030e77a5d1003b3653b403774904c52c7c9b274a571cff1bb0db95793a7daa2bac208af2','f55f45bd9b59adeb1259247a35f75e796be85a5dcbec8a6658f03c29809b18857414b71118b2e35d',0,'2021-09-30 09:25:04'),('79ba7a16693d8e8ad6f295dd10732a6feb9f7907d34bb61ba999464667b0375d00eaa6670032ecaf','1c78bc1b4221438695a3848382e2249031faed5972b4652616ccc5f9097e666db880c649e908c001',0,'2021-09-30 09:28:31'),('7e7748d9d34a361059c76394f5b05a97d081c19ec204ad9c638ceac8190db9f7d11c9516addbad0c','9f9de7cc1ba55d122cbcca51b0bc41a549db420ce957d3836f06a59d9e21b8624ed07f8d4b85e206',0,'2021-09-29 16:10:05'),('80237e8dcfc434fa4a59c72a7e1560f05fff1815aa6adfbc5b628b56a642530d2182d73ad2a22889','f1ec1b233de0acfdba6ee3ae41db8475a2bf946b9d65cbe4c1db24fc81aa782620111a36bb6dbc27',0,'2021-09-28 22:16:30'),('8108901f86952b88b2360b60c57c1022332f8b355e66f7dc439be3562bc058088b902084e2371af1','5062fae986989c233c6ae14517355c227a10c836bfec6dff8160f65675229f416644bad1b7832d6b',0,'2021-10-05 07:51:55'),('823373001180aeb982f3393d23a65cc95d942aeaf2214d606a3864844d3a6765efbe7d0118dbd88b','5a81c1ce1b95c2b5a57382f9b9ed0f42c8363e237eb7df27f19f0a23b9244b2c3c95baac8f3028fd',0,'2021-09-30 10:58:49'),('826307230d7eda017b2f854d0113554c344eadc48ad0fe8f78e31d68252c1068382e0072429bfdfa','588f1e7e06cdb5f0ed7f897894a4b72c547b1d39ed1ef0f267679431414b565a9fb840494ca8d67a',0,'2021-10-05 10:54:27'),('85b60a2d9058afad09f870f6a57185b15c1b7a3e5bcf1209a01ce5abe9625a9a539380c68810eaba','b53b69ee10923790f835c69bd885035c5954a7f483a04b8828b5bc9924f22ff8d3ca2ea6110196e9',0,'2021-09-30 16:46:52'),('880eab9f249fac6096cb003b3b596a3d2e285ad9ae42a239234c91852b38db5389b51b3fea412763','6becdb8d29ffbbf81500328d94348489acd498c3b6d1eb365fa231e6a4d1b9dbc379c48c75831786',0,'2021-09-29 21:48:53'),('8839dc87690945f2e676525d9257a89d279b3d0aad69b98f73b36669ba3b59ad290a0f873978d7d7','3a95527350b5f77b47837bfc1c02e27f1bee981d5e1778051ae587189ab5e393a164ed1151c8b54a',0,'2021-09-30 16:42:35'),('88954a5dbfa8546cff83f4640e0e68155f1f475d9f3e69d564032b40834dd81cf388989b2ad66316','320bdb2f04df66d9db73b71f40d1046c8688beffeec98be946501beec923db9772df64f8d82f4bcd',0,'2021-09-30 09:54:41'),('890a9021053fd610656ff22202a5c5644b7bf265dc3ea9b487dec3b2f50e84a7f855bd5007d3169a','636c8f941e70406651152f473c5ca4fd0d7dbd40c4cc6a689ae56b78c0c730fb6cb2cee65eb7c9a5',0,'2021-09-30 01:58:12'),('8b2d4c7bd472633dcde7f5287f68d6d1d971911bad231a1e35bad16feda3ba98fb974eda91abc557','d975dec6771bd41fda7d0aecd5748fe721ff6d06552086b2e81f036f07b1d4e3cba88cb36d45369b',0,'2021-09-29 20:39:23'),('8b474f76e0b54b47f39068633a2858db72ac182fcb0abd9c83ea4babb4f50f888e2bd8c25c4b5ac4','29dd5104938fefaf19e1a238f4e16dd3e978244cb7559871d023024859cf7369d960b2336d7c98ff',0,'2021-09-30 10:54:04'),('8d382afbcfe3e444b070dd5d79cf485ed06884c019296b2165b3e4c047e921244e1a0b04e665cda6','c5a9ea02bae6c129d333f2a4758355c9c0e342333f858d946ca5ae823010a9d11755cf6d229f9f43',0,'2021-09-30 09:47:50'),('8e3fb6f70cb791a4fa7959884f82f31d8e33f42ce04659226808e32aebedb789eb0d66ba9c2219b9','4f63ebf08433fc4e3f5d7af7cb22286bd9f162df37263b28171521dcd64f6849ab225174c5f51b35',0,'2021-09-28 23:17:36'),('915ecfbd5350ce60b54c0f13994769bde59c646f75b77d6d3b00aae69a65004b34b3372381d5ab6a','1a6e66023fdb680a02054264799bec4443e7683e54b3bea0d986a616bcb429386c8ba3fa8325ebc7',0,'2021-09-30 10:54:40'),('9270a13c4843d6078c8dec25791d20ccb53b014c5d68bda24f409979baa7e89c91139399486fd459','f90e81a0d0dfea14444ec6c1c1e8f2e4c7d9ec47f4983b89682a22a70b62bda1ea8722fc3060a484',0,'2021-09-30 09:54:48'),('9537d043781c25d50cf8c6d2accb0def9f4cbcbb1ca751e10bd14b7ec1cd03089bb90e12701ccfcc','bd60240388f9881976367c1a844ea026e784d6866de48493b11c3d18822f24052740ac289380f172',0,'2021-09-27 08:15:43'),('973bd426ce4a23b522db1ad0653a98eed5ffadaaa6d0193a5a0a38ad4dc588719e2c989eace5ed39','0c0e5e74fc60776648f30171b9e5a98078d87f1f0d9ecc6c8eecc3a4afcd5ad0317e5b93e917b22e',0,'2021-09-30 09:40:21'),('a1946506b7e33d6f07d3364f3845e7527fcbf1b1279f4132aa7f5933c5f71bfaa85b8b12c81ea7b8','60b1f7fe491e872f0c635db058ad444dbe8ecda3c39c1f32cff4f5cc52068cceea56d073496d3ba3',0,'2021-09-29 16:19:32'),('a2a829dfab5d051e8dff0c92dce118cdcbf869e0197363e1ad52fdba4b35cfa67f328055da18d5ed','c45bc26371e2fa87f4e4aa6e3ae3ec9170c5ddda18f1aee82722e3e5365b7462099aa0f67d0344ad',0,'2021-10-04 15:36:10'),('a30eb944c330a0c5fe7a0dc39258a226a5bf05581abb01e4757821469e2d0d6b7a9e86d976862737','553c9553b5abb750728484b7bb8dd02ea01e59514b592b92375efd08057df2c91d105dad5021d78b',0,'2021-09-27 07:26:51'),('a557786f3f7db64e1f34077ab81dfd59130e6be140cb135a50a22be433bcec86c03e7cc506821a9d','66f5137e30d3e5a08e0208aa50e515e470d72703f52fba6db48a33d34dad9f0069999c9ca64bd911',0,'2021-09-30 11:18:32'),('a5c53ba18b7c08a335d30941e1c2eff8aebc216a8b165d2f105c23d08afe60ff1201f72e7fc74e90','f520f5ccdb612c9801add14e86a82f3e8a58ac9955c018e1431e4a996eb11f986a85313303ccdfa5',0,'2021-09-30 09:29:01'),('a7e8ce99afafb726833f6753f074a2bac617555c28bf0fcc23a073efc0b9c540a37358accd529d5e','db6fa1881e39add5c40e377d86a2bc4a985a669e4721e3064dd58ac4cef2332c28d4e74c5466df3f',0,'2021-09-30 09:31:29'),('ab28bf709e3bdc349c7e43a1b34a5fb0ef08cd04294ffc1a4c0f7e86a3bb90ee8bf1804b99042beb','84578dbfa2f0406c4d4856a424103646dc23f089452b7c5e046c3e7e20759f0c2b7c63b2786e0ed9',0,'2021-09-29 09:48:37'),('ab9ec270212f8934ee8730d33f3bd7b63b6e7f3e669b86b34f1843396420f34c034775d5f5dda763','60914e7f1b6103e87776d1a515cdb6e9b2b8245b6a91f87be2ebd8b81b295032dabe3af7db157769',0,'2021-09-30 11:43:17'),('adb01e5c8ae6a1208a477dcf6cb5626bf3673b3194754e87fd3fa2494e91b9c58934c68054f4c0cd','0a5ca7ee37fc2b292306c6a6a5121daef763af54b0a135fcd2bf24baf972dabf38c4ce7948b38352',0,'2021-09-30 11:11:16'),('b519405dbf5386ee5f04c41dabd0911308f238b04a895b7e30c109aa9852d6cf4c8b7b79ccab07c1','e598e1e38429b76e2b6a5062e73d50568bfca35803231b128009b6a6647d037de206f76a48a9713b',0,'2021-09-26 17:42:30'),('b718d049740c049265c6329dc382308acb160ce51fc33b6c8a1c58b202c1b8407cdd1e578d891e99','a2ee5aebe29b62b476121c50f83ea6df85154bfe4883d17ed154864ce30624e758f6e7c29ffa8043',0,'2021-09-30 10:55:21'),('b88cdd50e1bf5c3f1fdd47ab57457ef09e576ee079fc41c7122ebf6a6205e39cdaf42b5be76b7885','05cc4b2cae431197b8e55d652db0adde4cf8d9d94f51e34c61dbc4c7618ffacabb48622f1394ae72',0,'2021-09-30 16:53:09'),('b8931ed2c3f5ace3dd7f7e827332f0630f2928bb335c96649ac356d28d1128e64a00d184243f861d','612f118eeac7bc72f808da2c14e40435e719acb21af1d45dd151cb155700e0d6ffc03c329c61b062',0,'2021-10-05 10:06:18'),('ba49fc38ed6930ef25e05417dc961e8847a1008639b9fdcab2b322f536c8084b44fb703353f72bc5','5b420c3280f087f78d3e164b7a2daa7ddf51ebe2369bc5e3dd23b44696e508c30b2c2d3e2f5d8c15',0,'2021-09-29 22:51:15'),('bba42484fcca5cd0d1f0fd4470bb1a963a8c8b61e3de2eac4155d5d05d4ce53da02c5dea92631786','d8d87748c64b8645042783b6256d68a20a82622dcb56d35286ab600cbb59c7f941331af4fbcb9fcd',0,'2021-09-30 08:38:50'),('bd728f013ea8734253d2883a6ed4ca6cabb5475bed1eb80d1bce5e532502d025fb9093b0f84a34b4','9994ae008f57d285144b69977e9491860e67cf9907095e962eb0457f6ccfa0e64abb17e89b043e00',0,'2021-09-30 10:34:05'),('bda157aec719d657f1a4777be46e114c28fdce2f9fc53c68413c18e48cb8f95f875de81f75c24f16','a7b86271929deef9193df885d9a63fc34bb085d9c75abe08c972c5461620898f768640c5d7b7dc57',0,'2021-09-29 15:33:00'),('c1eaefc914799b4a1dd21ca24c19f3103796fa0666415414376a89f33f0e57372b78d0b618da09e7','1d80edc68fbc5558ca928b78dd336b7d1de1be891a02cba7c91032afef94e71f72426710047182cf',0,'2021-09-28 13:50:55'),('c3315648ce2e8e3ee5ecfcf9e24b50aa3822293d56684e8fc2e9b9dfbac068a8ef6653aa7d261e37','a02c2d8e6b1ee031d4018ad31863322d9dd03e3e8e3cda4925081081ad4de4feb7d467fa9bac4ca4',0,'2021-09-30 10:24:24'),('c656c18bddd36178eb48deb8249e02335e9c03236b3f9116ba877436b08e26bee9745b3890b6691e','6f1e5a090e1eaf60ab4ba906a9ba1fe32bc6fc8a17fda08659c4aec870bd151d5efc4d6bba7785e9',0,'2021-09-29 09:06:19'),('c7da21769bd49397dfb1bfd89bd27b20d4047a1a4a5c2cf8aebdbe794618b6533d9e98a6754e6fc9','f41dd9d2d5e4252fdf78cbd7c17d25221fe3844835cdc016ed644ffc605867470c2f9625f3b699a5',0,'2021-09-29 17:23:09'),('c8626e38793cfc70acf0bc566e1a83de8a8aff5bc694985375bdfd2e025d2612ce12a533fd91783c','ea5f4d6f3b44a2e5f415896f3b225c98f2b1649dbc50a03d2cf8dd203794164a22b8efa942e1dcd2',0,'2021-09-30 10:20:10'),('cc19d4642a310f5a129327d6f43144e2930395f2ed74d87993bdbe463d5dbb3fba61716d113f9883','a9ff700168ebe3d7179771f106d7ef6e8aa4a66d7febc21aa0c2900c3f908d9b5b183bde1608a1d9',0,'2021-09-29 17:39:59'),('cd8010ed6a976ad80d34b5f13de03de23686a16b07ff2edf34fcb11fc95678c9220210e4785ab645','d5ed29156a2c7ff3f004fa1e4122fdf74bec35b7a65d078affb343f5367710a5115a8d64c60d6e43',0,'2021-09-29 08:01:26'),('cf8eace1811dc7001c5c3ce3ec95a44614ad55cce4a84a9627148807be1aef3504f58eddc992729f','f542100175026baf9ccfff76293372b31551114f726f0df84ce782506b5516ce4295832f0c5feb19',0,'2021-10-05 12:09:21'),('d0236d4b1721d2d4d16ba3b1206aaf7a4305872f80f57fca08a89988797146b320ef70e4b3ac4008','3e3cca6de90d68363a7133a70420de693620c77b5000ac3feae6e739a75655bab07b80fd082ae838',0,'2021-09-29 08:13:52'),('d139953409fc8e46684b93d2e4ed44ff6f8e5499080efe2172082aee94738b0e2f176c810d18b4c7','37443a602c6365f4e1ae5fa83e3fb9103c8acc2459283d489a90f9db3dc742e5c38d28a76b75d4ce',0,'2021-09-30 00:43:45'),('d44bae3416d7027bfefc451f616a7eb764031581ea6db3a0413c8980fc3c87dd77bf81fdc64c75a2','d855002f71cccfb97d3e8e9dc0dd403c202a2e55fa49d3eb5cd446256ab7facec0f58a9347627b56',0,'2021-10-05 07:51:55'),('d4ecc208b28099d1b93d1abbbabc35ad84580101e5777bdfb14226c6b859f04aeb52b285a5e7e3b5','4e805115a1a3eef54fd77008e850cf7cdb175f99c7526807ac9b722058b49128bfe9c5b427887b9a',0,'2021-09-30 12:21:58'),('d4f6ab2b3c77d407ae292e639d15796511a4fdc04b7e82fe644d09937b098a366e2262a509e3fe76','b6bfbfdf3598b05e22bfe4ba92d68d52c458c8e62fda6b6f8ecb760005eb4adc9971611c84486456',0,'2021-09-29 09:44:15'),('d684c3f1a597ac8ac16ee9ec5a876d962d245f9724c7a27ed8c77f314d9876f0e141acb4c0a96be5','10b61cdc64f2f2fa078533fb9b389ab832bca6bb84c95fd2c9bf6cf673fe102fef3b2bb899205c31',0,'2021-09-30 11:55:45'),('d74855931240fcb6827542ef7711cf4869d6c4f96f7aefee965c23c5024fe09bbf878c0eb997d21d','2379e801ee44cbf3f1ac37793408b7954edc083314022b704ca1a73c7bff1457d3b55563e6416b19',0,'2021-10-04 15:35:48'),('dab1df00eb9c44dcac4a24ee2ac8d4740a2cc44767d222377d4baec4673c44ad89d42d82b440a115','9ebac3415df93519e3a92fa87744775950267c072b9781c8a3bb126e5ad01dc02c388b4a64b8ca87',0,'2021-09-30 16:46:38'),('dc229f8368a7a298db8149d65f8607c17f09f4e97bb174bb9480417bcedd90e3ac2bd858168333d9','27dcbeb2d5cdbd36b1506d41b9c47698b63068cea7b5cbb5668628fa526ee750b48d790d875da068',0,'2021-10-01 11:49:59'),('dc47aed880aa2783761d479791fd3e2b0de41a4003f753e61b04e4775b731a684ceb7948262f9d7b','2f7e3a6d3a15279ec6de5305ee060fb935054ee057ce523c8327f16aca79883c78cd6e7cc6a2730b',0,'2021-09-30 10:01:04'),('e35fa3765392e6743a715ef23fd44667516f74bafd6ab509e6329c3cf688706ee5317a0816ca10aa','95e977c0d1c5bfa13ad10f58590b33972e956531dfe49a64efafc3c864282961391e7de1e181954f',0,'2021-09-29 22:30:08'),('e3c30ac6989f226726270d6838ba640b68a0eddc4084aadde7e8f9a986cc32ba47dec3015cdfd136','04c72f9a3be619d4d3c681596171d4dfebd0cc0b310f02c048fd6ca67b8d46d297c68eccd61a80ff',0,'2021-09-29 18:06:01'),('e44470ada1cac70c30938bbcabd5793e5ef23efec66df2b2feaf4342f30b7a031e0b4392328751b0','4b763dfe72ae91610014aaaa47a57607b951588ec454ee242be896489839553ae7b3aa8f435d3ffa',0,'2021-09-30 10:56:30'),('e570786f52d388d97e1c9a878e05592fd9feefc47c829a52c2ce972fd651d9ce069919ea59c812e6','f7e4321857f28ea1bb60349de3b77caadf8de22857ca27360f77437d7584969667c803a5c70b9d8d',0,'2021-09-30 08:08:08'),('e5f2cfa720de7460290867b4eeb1def7f26ba59dca618bb4a6a5469b2f8084bc777b1ed0499956cb','f88847a2c0cf991840f01782d90dd172d9c1a6463f95a06219f604f125bb095f2f64c13c291d64f3',0,'2021-09-30 10:16:31'),('e602b28290679ddb4be2d21332a181900e4654ad46b43e00e20a28a5dd1bf0b3e4aa9e1a65372bd1','3f305d37f1a1290e3cb8bbe551335e26a2784a641db87e9deb47e55ac9365a6eb00ba149b4e33432',0,'2021-09-29 15:53:25'),('e6bb2368ff6650c9afa8f3d93bcc7229aaf5895b04c23f278d7a8c114b4b9897a87ce631698d89e2','002bc6605ada2eb412feff315004e5db3ab06bdaf2b721db651652332575d5eb4e12db91592c1ab4',0,'2021-09-30 10:33:51'),('e81fe2034fe7ebb809ec44a6beafb50dd002184cf7259dddb949aeac62827400153aad9d2cba7ee8','7c6e702844e9b3a3c8d1a7b085892257955b4a1dbef956fc5e58984904598f71d62e0422f9b17ca9',0,'2021-09-28 12:28:56'),('e8c3163c142840a15244a487dc7d712bf8a59255d60ca6ce3d9084a7176aa16481ee4602bfad1a23','a67dc70afeec27b5a9ffdc5aa8cdaa0e3f692efbd3ce6621fbced4e85bd877c01f351701c17eca99',0,'2021-09-28 11:17:37'),('ea611654ac1b3d0017ce50a04686d081c291106d2bbb47b91e96a1567994610b867ce5088f4e0f3e','9c7ba69b069ae57b507fb9b297545067df13bb2c6e24b5218fe2cba3e7f97f68b444d795f6f059c0',0,'2021-09-30 09:07:24'),('ed71abd7a8cfd34f899f726c3539a37c478205eba1a22db6d3362e65403f1accc4fb0b7524500bdd','814fc438c687e239674fd34c36fcc3304a7ee230d5b592da66d4677b16c805398e47f966c30346b8',0,'2021-09-28 08:57:50'),('ee6c0441121d4f755b0f95a5252e315f1c0fbd3399ad8cd853ae2728c7a00a3185e66b334e0cab77','c67fea35d2f01603cce07eb8a27cf3268e9ab74c72fd0c5424cf78fe1bee0a5035aa0a6d67b2eec0',0,'2021-09-26 22:58:54'),('eedac5a1a9f3ec0c815279438b1682fef0ad9321c8cd8c826ba67b2b7b87573d3afd06f6f8954d07','3632c928aa5cef521cbe2d0132bfa6336401355305307a913da76c59e24689a58c5c9d302236f5ea',0,'2021-09-30 10:35:35'),('f0bf855a80ba06c3888d8962f285385a029d01159c180058aa4a53f0ae6cf0af6de7446a645ef92d','7c58c7b3cba3ed21b485b37517817d89f4f327d50dc7fbf8d363feebe6fcecb512fa529902b67281',0,'2021-09-30 09:33:25'),('f0ee9bdbb25d558533a6732eac0454eeaff851244b6c4ae83a5059b16404bbbf95d5fb5c4cb9bd1e','afd7eb98a9d384c5bf5bb2e6934be29c4f447532a5e1b88643704ce8f328ee67a1a7744237233145',0,'2021-09-30 09:30:00'),('f33a2e456f05e7eb7ddd7eccdd45914e1cb7c02a70373c0ad9b28c5b5bbff89f81d2e68c6b4b6b60','35411fbc0a0f26b55a0fa3173b49f2d9d0cbca1c388faf1e1c300db59aa2146395e86e6b8556ea33',0,'2021-09-30 00:40:46'),('f5851b3276a21c010144ffe45ba59f15a00e6c2368340dbb4ed11beb4c582695e3406a87661bbbfc','e94b5a5470d0755f5e30a4562c671e5351ebcd492bbba141ac7d9f2037f76e4612dde33d144e7c47',0,'2021-09-29 15:53:32'),('f5b1e2f04fc212b7b3a2c35b1527919c2846119fd644c26c29f270c4e72b411d7f124fff3bb837ac','79b257a2aa3ba6ce5a8e45228708f7c82d647a6eb9572781d8b9893dc585faf1dd0c8dbb791b54d0',0,'2021-09-30 11:13:08'),('f73e3259d841b6b3264143cfaebae24bb5e121c92bb7d9464744fa3a659b33ae4465fb72f5b54fe8','c031b7b3452d43cde7aa5e523b38ee1460cd46984223c97bf0d9e695e55fb09828bbece778019747',0,'2021-09-27 13:50:07'),('f7d8482a537308c3156e8bb1982b9503393259dcacc63c06a41eca0f84fd7f4741d10b3062f809de','e620334b49b4813c978f3dfa10df52d42a96c4888207b04313d3d0ad174cccef469932613cdb4a1d',0,'2021-10-01 11:49:59'),('f8113acbe09860ffa4c3b5a8be4bbbf2a78f73aa7df88f2a5797f1f59552de88cd430dd47948cee9','9e58a2bc1067e4e8d3866672fc51f1fac7d53818f79f58b0ea4357f85763a88b8e235a3fc6a72346',0,'2021-09-30 10:56:28'),('fa6385c157bfefcfab166136a7e80d196969711970c90f8adf3bc4ca3d168959dab8a58493b7cdd5','8b5eaef0c5095f3d1e8a12d20c2c2d6ca4353ee3102dd24db1260d343b6cf0ef83a68372fba337bd',0,'2021-09-28 15:21:07'),('fc85677bb1c26dff40c5455dda1d3291578bb401e784fb3fc4ab84be5f2c8a12c841833ce65c19f9','03ad787029063cb1f539c09a07f9413900cc79cbe24c66ee97d195612909998f207f72d9b7a69a2a',0,'2021-09-28 16:57:30');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `store_id` bigint(20) unsigned NOT NULL,
  `station_id` bigint(20) unsigned NOT NULL,
  `division_id` bigint(20) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `pickup_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `machine_type_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_product_id_foreign` (`product_id`),
  KEY `order_details_store_id_foreign` (`store_id`),
  KEY `order_details_station_id_foreign` (`station_id`),
  KEY `order_details_division_id_foreign` (`division_id`),
  KEY `order_details_pickup_status_id_foreign` (`pickup_status_id`),
  KEY `order_details_machine_type_id_foreign` (`machine_type_id`),
  CONSTRAINT `order_details_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  CONSTRAINT `order_details_machine_type_id_foreign` FOREIGN KEY (`machine_type_id`) REFERENCES `machine_types` (`id`),
  CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_pickup_status_id_foreign` FOREIGN KEY (`pickup_status_id`) REFERENCES `pickup_statuses` (`id`),
  CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`),
  CONSTRAINT `order_details_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (25,13,18,1,9.99,1,1,2,166,1,'2020-09-28 18:15:51','2020-09-28 18:15:51',1),(26,13,14,1,9.99,1,1,2,135,1,'2020-09-28 18:15:51','2020-09-28 18:15:51',1),(28,15,17,1,9.99,1,1,3,129,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',2),(29,15,15,1,9.99,1,1,4,140,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',2),(30,15,21,1,9.99,1,1,1,179,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',1),(31,15,14,1,9.99,1,1,2,135,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',1),(32,15,13,1,9.99,1,1,1,167,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',1),(33,15,11,1,9.99,1,1,2,120,1,'2020-09-28 18:30:51','2020-09-28 18:30:51',1),(38,17,15,1,9.99,1,1,4,140,1,'2020-09-28 21:12:01','2020-09-28 21:12:01',2),(39,17,18,1,9.99,1,1,2,166,1,'2020-09-28 21:12:01','2020-09-28 21:12:01',1),(40,17,20,1,9.99,1,1,2,155,1,'2020-09-28 21:12:01','2020-09-28 21:12:01',1),(41,17,19,1,9.99,1,1,3,102,1,'2020-09-28 21:12:01','2020-09-28 21:12:01',2),(42,17,21,1,9.99,1,1,1,179,1,'2020-09-28 21:12:01','2020-09-28 21:12:01',1),(45,20,13,1,9.99,1,1,1,167,1,'2020-09-29 15:49:39','2020-09-29 15:49:39',1),(50,22,21,5,9.99,1,1,1,179,1,'2020-09-29 23:31:37','2020-09-29 23:31:37',1),(51,22,19,1,9.99,1,1,3,102,1,'2020-09-29 23:31:37','2020-09-29 23:31:37',2),(52,23,18,1,9.99,1,1,2,166,1,'2020-09-29 23:48:14','2020-09-29 23:48:14',1),(53,23,11,1,9.99,1,1,2,120,1,'2020-09-29 23:48:14','2020-09-29 23:48:14',1),(57,25,13,6,9.99,1,1,1,167,1,'2020-09-30 14:30:07','2020-09-30 14:30:07',1),(58,25,12,1,9.99,1,1,3,172,1,'2020-09-30 14:30:07','2020-09-30 14:30:07',2),(59,26,21,1,9.99,1,1,1,179,1,'2020-09-30 15:15:47','2020-09-30 15:15:47',1),(60,26,12,1,9.99,1,1,3,172,1,'2020-09-30 15:15:47','2020-09-30 15:15:47',2),(64,28,17,1,9.99,1,1,3,129,1,'2020-09-30 18:13:04','2020-09-30 18:13:04',2),(65,32,14,1,9.99,1,1,2,135,1,'2020-09-30 18:13:57','2020-09-30 18:13:57',1),(66,33,18,1,9.99,1,1,2,166,1,'2020-09-30 18:14:01','2020-09-30 18:14:01',1),(67,33,12,2,9.99,1,1,3,172,1,'2020-09-30 18:14:01','2020-09-30 18:14:01',2),(68,34,14,1,9.99,1,1,2,135,1,'2020-09-30 18:15:03','2020-09-30 18:15:03',1),(69,34,15,1,9.99,1,1,4,140,1,'2020-09-30 18:15:04','2020-09-30 18:15:04',2),(70,44,11,1,9.99,1,1,2,120,3,'2020-09-30 18:35:25','2020-10-05 15:28:53',1),(71,44,17,1,9.99,1,1,3,129,3,'2020-09-30 18:35:25','2020-10-05 15:28:53',2),(72,44,22,1,12.00,1,1,1,100,3,'2020-09-30 18:35:25','2020-10-05 15:28:53',1),(78,51,11,1,10.00,1,1,1,181,1,'2020-10-05 15:51:17','2020-10-05 15:51:17',1),(79,52,11,1,10.00,1,1,1,181,2,'2020-10-05 16:20:32','2020-10-05 16:21:28',1),(80,52,11,1,1.00,1,1,1,111,2,'2020-10-05 16:20:32','2020-10-05 16:21:28',1),(81,53,11,1,10.00,1,1,1,181,2,'2020-10-05 16:24:12','2020-10-05 16:26:01',1),(82,53,11,1,10.00,1,1,1,111,2,'2020-10-05 16:24:12','2020-10-05 16:26:01',1),(83,53,11,1,11.00,1,1,1,110,2,'2020-10-05 16:24:12','2020-10-05 16:26:01',1),(84,54,11,1,10.00,1,1,1,111,2,'2020-10-05 16:30:00','2020-10-05 16:33:54',1),(85,54,11,1,20.00,1,1,1,181,2,'2020-10-05 16:30:00','2020-10-05 16:33:54',1),(86,55,11,1,10.00,1,1,1,181,2,'2020-10-05 17:12:04','2020-10-05 17:24:26',1),(87,55,12,1,10.00,1,1,1,111,2,'2020-10-05 17:12:04','2020-10-05 17:24:26',1),(88,55,12,1,10.00,1,1,1,110,2,'2020-10-05 17:12:04','2020-10-05 17:24:26',1),(89,56,11,1,10.00,1,1,1,181,2,'2020-10-05 17:27:22','2020-10-05 17:28:10',1),(90,56,12,1,10.00,1,1,1,111,2,'2020-10-05 17:27:22','2020-10-05 17:28:10',1),(91,57,11,1,10.00,1,1,1,111,1,'2020-10-05 17:29:39','2020-10-05 17:29:39',1),(92,57,12,1,20.00,1,1,1,181,1,'2020-10-05 17:29:39','2020-10-05 17:29:39',1),(93,58,12,1,10.00,1,1,1,181,2,'2020-10-05 17:31:05','2020-10-05 17:31:41',1),(94,58,11,1,10.00,1,1,1,111,2,'2020-10-05 17:31:05','2020-10-05 17:31:41',1),(95,59,11,1,10.00,1,1,1,181,2,'2020-10-05 17:32:28','2020-10-05 17:33:31',1),(96,59,12,1,10.00,1,1,1,111,2,'2020-10-05 17:32:28','2020-10-05 17:33:31',1),(97,60,11,1,10.00,1,1,1,181,2,'2020-10-05 17:38:21','2020-10-05 17:40:40',1),(98,60,12,1,20.00,1,1,1,111,2,'2020-10-05 17:38:21','2020-10-05 17:40:40',1),(99,61,11,1,10.00,1,1,1,181,2,'2020-10-05 17:42:07','2020-10-05 17:43:00',1),(100,61,12,1,10.00,1,1,1,111,2,'2020-10-05 17:42:07','2020-10-05 17:43:00',1),(101,62,11,1,10.00,1,1,1,181,2,'2020-10-05 17:48:31','2020-10-05 18:35:14',1),(102,62,12,1,20.00,1,1,1,111,2,'2020-10-05 17:48:31','2020-10-05 18:35:14',1),(103,63,11,1,10.00,1,1,1,181,2,'2020-10-05 18:36:41','2020-10-05 19:27:38',1),(104,63,12,1,10.00,1,1,1,111,2,'2020-10-05 18:36:41','2020-10-05 19:27:38',1),(105,64,11,1,10.00,1,1,1,181,2,'2020-10-05 19:33:29','2020-10-05 19:36:21',1),(106,64,12,1,10.00,1,1,1,111,2,'2020-10-05 19:33:29','2020-10-05 19:36:21',1),(107,64,11,1,1.00,1,1,1,110,2,'2020-10-05 19:33:29','2020-10-05 19:36:21',1),(108,65,11,1,10.00,1,1,1,110,1,'2020-10-05 21:51:35','2020-10-05 21:51:35',1),(109,65,11,1,20.00,1,1,1,111,1,'2020-10-05 21:51:35','2020-10-05 21:51:35',1),(110,65,12,1,20.00,1,1,5,110,1,'2020-10-05 21:51:35','2020-10-05 21:51:35',1),(111,65,12,1,10.00,1,1,5,111,1,'2020-10-05 21:51:35','2020-10-05 21:51:35',1),(112,66,15,1,9.99,1,1,4,140,3,'2020-10-05 22:12:48','2020-10-05 22:13:00',2),(113,66,17,1,9.99,1,1,3,129,3,'2020-10-05 22:12:48','2020-10-05 22:13:00',2),(114,66,19,2,9.99,1,1,3,102,3,'2020-10-05 22:12:48','2020-10-05 22:13:00',2),(115,66,21,2,9.99,1,1,1,179,3,'2020-10-05 22:12:48','2020-10-05 22:13:00',1),(116,67,11,1,10.00,1,1,1,110,2,'2020-10-05 22:55:00','2020-10-05 23:00:28',1),(117,67,11,1,20.00,1,1,5,110,2,'2020-10-05 22:55:00','2020-10-05 23:00:28',1);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES (1,'Pagado','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Cancelada','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Pending','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_date` date NOT NULL,
  `order_total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `img_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `store_id` bigint(20) unsigned NOT NULL,
  `order_status_id` bigint(20) unsigned NOT NULL,
  `pickup_status_id` bigint(20) unsigned NOT NULL,
  `limit_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_id` bigint(20) unsigned DEFAULT NULL,
  `nit_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_store_id_foreign` (`store_id`),
  KEY `orders_order_status_id_foreign` (`order_status_id`),
  KEY `orders_pickup_status_id_foreign` (`pickup_status_id`),
  KEY `orders_card_id_foreign` (`card_id`),
  KEY `orders_nit_id_foreign` (`nit_id`),
  CONSTRAINT `orders_card_id_foreign` FOREIGN KEY (`card_id`) REFERENCES `credit_cards` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_nit_id_foreign` FOREIGN KEY (`nit_id`) REFERENCES `nit_usuarios` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `order_statuses` (`id`),
  CONSTRAINT `orders_pickup_status_id_foreign` FOREIGN KEY (`pickup_status_id`) REFERENCES `pickup_statuses` (`id`),
  CONSTRAINT `orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (13,58,'2020-09-28',19.98,'391756','images/qrcode/391756.svg',1,1,1,'2020-09-29 18:15:51','2020-09-28 18:15:51','2020-09-28 18:15:51',21,2),(15,58,'2020-09-28',69.93,'714823','images/qrcode/714823.svg',1,1,1,'2020-09-29 18:30:51','2020-09-28 18:30:51','2020-09-28 18:30:51',21,2),(17,58,'2020-09-28',49.95,'834975','images/qrcode/834975.svg',1,1,1,'2020-09-29 21:12:01','2020-09-28 21:12:01','2020-09-28 21:12:01',21,2),(18,1,'2020-09-28',1.00,'567890','',1,1,1,NULL,'2020-09-28 21:33:15','2020-09-28 21:33:15',NULL,NULL),(19,1,'2020-09-28',1.00,'090807','',1,1,1,NULL,'2020-09-28 21:33:48','2020-09-28 21:33:48',NULL,NULL),(20,58,'2020-09-29',9.99,'496758','images/qrcode/496758.svg',1,1,1,'2020-09-30 15:49:39','2020-09-29 15:49:39','2020-09-29 15:49:39',21,2),(22,1,'2020-09-29',59.94,'512948','images/qrcode/512948.svg',1,1,1,'2020-09-30 23:31:37','2020-09-29 23:31:37','2020-09-29 23:31:37',24,3),(23,60,'2020-09-29',19.98,'246918','images/qrcode/246918.svg',1,1,1,'2020-09-30 23:48:14','2020-09-29 23:48:14','2020-09-29 23:48:14',25,4),(25,59,'2020-09-30',69.93,'425316','images/qrcode/425316.svg',1,1,1,'2020-10-01 14:30:07','2020-09-30 14:30:07','2020-09-30 14:30:07',23,5),(26,58,'2020-09-30',19.98,'657314','images/qrcode/657314.svg',1,1,1,'2020-10-01 15:15:47','2020-09-30 15:15:47','2020-09-30 15:15:47',27,6),(28,64,'2020-09-30',29.97,'219435','images/qrcode/219435.svg',1,1,1,'2020-10-01 18:13:04','2020-09-30 18:13:04','2020-09-30 18:13:04',30,8),(29,64,'2020-09-30',29.97,'754613','images/qrcode/754613.svg',1,1,1,'2020-10-01 18:13:08','2020-09-30 18:13:08','2020-09-30 18:13:08',30,8),(30,64,'2020-09-30',29.97,'165783','images/qrcode/165783.svg',1,1,1,'2020-10-01 18:13:16','2020-09-30 18:13:16','2020-09-30 18:13:16',30,8),(31,64,'2020-09-30',29.97,'971263','images/qrcode/971263.svg',1,1,1,'2020-10-01 18:13:20','2020-09-30 18:13:20','2020-09-30 18:13:20',30,8),(32,58,'2020-09-30',9.99,'849613','images/qrcode/849613.svg',1,1,1,'2020-10-01 18:13:57','2020-09-30 18:13:57','2020-09-30 18:13:57',21,6),(33,60,'2020-09-30',29.97,'971842','images/qrcode/971842.svg',1,1,1,'2020-10-01 18:14:01','2020-09-30 18:14:01','2020-09-30 18:14:01',25,4),(34,1,'2020-09-30',19.98,'395421','images/qrcode/395421.svg',1,1,1,'2020-10-01 18:15:03','2020-09-30 18:15:03','2020-09-30 18:15:03',24,3),(35,64,'2020-09-30',29.97,'382649','images/qrcode/382649.svg',1,1,1,'2020-10-01 18:15:50','2020-09-30 18:15:50','2020-09-30 18:15:50',30,8),(44,65,'2020-09-30',41.97,'765948','images/qrcode/765948.svg',1,2,3,'2020-10-01 18:35:25','2020-09-30 18:35:25','2020-10-05 15:28:53',31,9),(45,1,'2020-10-05',1.00,'505050','',1,1,1,NULL,'2020-10-05 14:25:00','2020-10-05 14:25:00',NULL,NULL),(46,1,'2020-10-05',1.00,'272728','',1,1,1,NULL,'2020-10-05 14:26:42','2020-10-05 14:26:42',NULL,NULL),(47,1,'2020-10-05',1.00,'213021','',1,1,1,NULL,'2020-10-05 15:22:45','2020-10-05 15:22:45',NULL,NULL),(48,1,'2020-10-05',1.00,'213021','',1,1,1,NULL,'2020-10-05 15:24:41','2020-10-05 15:24:41',NULL,NULL),(49,1,'2020-10-05',1.00,'223022','',1,1,1,NULL,'2020-10-05 15:48:03','2020-10-05 15:48:03',NULL,NULL),(50,1,'2020-10-05',1.00,'402140','',1,1,1,NULL,'2020-10-05 15:48:48','2020-10-05 15:48:48',NULL,NULL),(51,1,'2020-10-05',1.00,'402140','',1,1,1,NULL,'2020-10-05 15:51:17','2020-10-05 15:51:17',NULL,NULL),(52,1,'2020-10-05',1.00,'412141','',1,1,2,NULL,'2020-10-05 16:20:32','2020-10-05 16:21:28',NULL,NULL),(53,1,'2020-10-05',1.00,'512051','',1,1,2,NULL,'2020-10-05 16:24:12','2020-10-05 16:26:01',NULL,NULL),(54,1,'2020-10-05',1.00,'522152','',1,1,2,NULL,'2020-10-05 16:30:00','2020-10-05 16:33:54',NULL,NULL),(55,1,'2020-10-05',1.00,'997099','',1,1,2,NULL,'2020-10-05 17:12:04','2020-10-05 17:24:26',NULL,NULL),(56,1,'2020-10-05',1.00,'702170','',1,1,2,NULL,'2020-10-05 17:27:22','2020-10-05 17:28:10',NULL,NULL),(57,1,'2020-10-05',1.00,'702170','',1,1,1,NULL,'2020-10-05 17:29:39','2020-10-05 17:29:39',NULL,NULL),(58,1,'2020-10-05',1.00,'018801','',1,1,2,NULL,'2020-10-05 17:31:05','2020-10-05 17:31:41',NULL,NULL),(59,1,'2020-10-05',1.00,'028802','',1,1,2,NULL,'2020-10-05 17:32:28','2020-10-05 17:33:31',NULL,NULL),(60,1,'2020-10-05',1.00,'038803','',1,1,2,NULL,'2020-10-05 17:38:21','2020-10-05 17:40:40',NULL,NULL),(61,1,'2020-10-05',1.00,'048804','',1,1,2,NULL,'2020-10-05 17:42:07','2020-10-05 17:43:00',NULL,NULL),(62,1,'2020-10-05',1.00,'058805','',1,1,2,NULL,'2020-10-05 17:48:31','2020-10-05 18:35:14',NULL,NULL),(63,1,'2020-10-05',1.00,'068806','',1,1,2,NULL,'2020-10-05 18:36:41','2020-10-05 19:27:38',NULL,NULL),(64,1,'2020-10-05',1.00,'078807','',1,1,2,NULL,'2020-10-05 19:33:29','2020-10-05 19:36:21',NULL,NULL),(65,1,'2020-10-05',1.00,'550255','',1,1,1,NULL,'2020-10-05 21:51:35','2020-10-05 21:51:35',NULL,NULL),(66,65,'2020-10-05',109.89,'715249','images/qrcode/715249.svg',1,2,3,'2020-10-06 22:12:48','2020-10-05 22:12:48','2020-10-05 22:13:00',31,9),(67,1,'2020-10-05',1.00,'670167','',1,1,2,NULL,'2020-10-05 22:55:00','2020-10-05 23:00:28',NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('ac@smt.gt','$2y$10$eF8qUwouwhYApzOKjNrscOFd937mrSP73vqGXBUtp7Rv9o94uzcl6','2020-10-05 17:18:36');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Listar usuarios','usuarios','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(2,'Crear usuarios','usuarios','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(3,'Editar usuarios','usuarios','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(4,'Ver usuarios','usuarios','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(5,'Eliminar usuarios','usuarios','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(6,'Listar roles','roles','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(7,'Crear roles','roles','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(8,'Editar roles','roles','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(9,'Ver roles','roles','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(10,'Eliminar roles','roles','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(11,'Listar descuentos','descuentos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(12,'Crear descuentos','descuentos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(13,'Editar descuentos','descuentos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(14,'Ver descuentos','descuentos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(15,'Eliminar descuentos','descuentos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(16,'Listar clientes','clientes','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(17,'Crear clientes','clientes','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(18,'Editar clientes','clientes','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(19,'Ver clientes','clientes','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(20,'Eliminar clientes','clientes','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(21,'Listar publicidad','publicidad','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(22,'Crear publicidad','publicidad','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(23,'Editar publicidad','publicidad','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(24,'Ver publicidad','publicidad','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(25,'Eliminar publicidad','publicidad','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(26,'Listar compras','compras','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(27,'Crear compras','compras','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(28,'Editar compras','compras','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(29,'Ver compras','compras','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(30,'Eliminar compras','compras','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(31,'Listar tiendas','tiendas','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(32,'Crear tiendas','tiendas','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(33,'Editar tiendas','tiendas','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(34,'Ver tiendas','tiendas','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(35,'Eliminar tiendas','tiendas','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(36,'Listar proveedores','proveedores','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(37,'Crear proveedores','proveedores','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(38,'Editar proveedores','proveedores','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(39,'Ver proveedores','proveedores','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(40,'Eliminar proveedores','proveedores','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(41,'Listar productos','productos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(42,'Crear productos','productos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(43,'Editar productos','productos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(44,'Ver productos','productos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(45,'Eliminar productos','productos','web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(46,'Listar incidencias','incidencias','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(47,'Crear incidencias','incidencias','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(48,'Editar incidencias','incidencias','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(49,'Ver incidencias','incidencias','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(50,'Eliminar incidencias','incidencias','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(51,'Listar recetas','recetas','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(52,'Crear recetas','recetas','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(53,'Editar recetas','recetas','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(54,'Ver recetas','recetas','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(55,'Eliminar recetas','recetas','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(56,'Listar kits','kits','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(57,'Crear kits','kits','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(58,'Editar kits','kits','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(59,'Ver kits','kits','web','2020-09-26 21:52:57','2020-09-26 21:52:57'),(60,'Eliminar kits','kits','web','2020-09-26 21:52:57','2020-09-26 21:52:57');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_statuses`
--

DROP TABLE IF EXISTS `pickup_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickup_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_statuses`
--

LOCK TABLES `pickup_statuses` WRITE;
/*!40000 ALTER TABLE `pickup_statuses` DISABLE KEYS */;
INSERT INTO `pickup_statuses` VALUES (1,'Pendiente','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Recolectada','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Cancelada','2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'Caducada','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `pickup_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_recipe`
--

DROP TABLE IF EXISTS `product_recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_recipe` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `recipe_id` bigint(20) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_recipe_product_id_foreign` (`product_id`),
  KEY `product_recipe_recipe_id_foreign` (`recipe_id`),
  CONSTRAINT `product_recipe_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_recipe_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_recipe`
--

LOCK TABLES `product_recipe` WRITE;
/*!40000 ALTER TABLE `product_recipe` DISABLE KEYS */;
INSERT INTO `product_recipe` VALUES (14,18,11,1,NULL,NULL),(15,20,11,1,NULL,NULL),(16,19,11,1,NULL,NULL),(17,21,11,1,NULL,NULL),(22,20,12,1,NULL,NULL),(23,30,12,1,NULL,NULL),(24,33,12,2,NULL,NULL),(25,32,12,2,NULL,NULL);
/*!40000 ALTER TABLE `product_recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_statuses`
--

DROP TABLE IF EXISTS `product_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_statuses`
--

LOCK TABLES `product_statuses` WRITE;
/*!40000 ALTER TABLE `product_statuses` DISABLE KEYS */;
INSERT INTO `product_statuses` VALUES (1,'Pendiente','Pendiente','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Activo','Activo','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Inactivo','Inactivo','2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'Aprobacion','Aprobacion','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `product_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `number_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `product_status_id` bigint(20) unsigned NOT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_number_id_unique` (`number_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_product_status_id_foreign` (`product_status_id`),
  KEY `products_supplier_id_foreign` (`supplier_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_product_status_id_foreign` FOREIGN KEY (`product_status_id`) REFERENCES `product_statuses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,11,NULL,'Frijoles enteros negros Ducal','425gr.','Frijoles en lata',37,9.99,'images/products/9wZoEyt6AnPAb8yvp45g8rXBQlqO55IVm03R7A99.jpeg',1,1,2,1,'2020-09-25 13:46:15','2020-09-30 18:35:25'),(12,12,NULL,'Café Antigua Regional','460 gr.','Bolsa de café en grano',40,9.99,'images/products/BFiKAZxCvUgKGw8Dp6CQsDcW5ReV6K9c0Qc9mTbh.jpeg',1,1,2,1,'2020-09-25 13:48:20','2020-09-30 18:14:01'),(13,13,NULL,'Rice Krispies Treats','5 und.','Barra de cereal original Kellogs',37,9.99,'images/products/jbqaBptTFYrhHz3o7Wg3h9nCJaB876Lv3bhCwKHD.jpeg',1,2,2,1,'2020-09-25 13:50:22','2020-09-30 14:30:07'),(14,14,NULL,'Avena Miel Granola Bars','42 gr.','Nature Valley Granola',41,9.99,'images/products/s4orhZAQ2Q0v9j11S7Aol6uGejInR0oN7o1W67ts.jpeg',1,2,2,1,'2020-09-25 13:53:30','2020-09-30 18:15:03'),(15,15,NULL,'Aceite Johnsons Baby','100ml','Aceite de óleo para bebés',43,9.99,'images/products/OmSTR4Y1ooVTJBSxXpaKg4iYImqxQnGG3Bj6y5Nr.jpeg',2,3,2,2,'2020-09-25 13:56:02','2020-10-05 22:12:48'),(16,16,NULL,'Cepillo Masajeador para Bebés','1 und.','Cepillo Nuby masajeador para bebés',45,9.99,'images/products/UZEo6VYMphX55zMQ0zzMYh3cmrfPehdcHD876NS5.jpeg',2,3,2,1,'2020-09-25 13:58:33','2020-10-05 22:12:48'),(17,17,NULL,'Acondicionador Gotas Brillo','200ml.','Acondicionador Gotas Brillo para bebés Johnsons Baby',43,9.99,'images/products/Gt3hzYEtLbeAw4M9l190EbGlwXUWBjHpdTXWR4KO.jpeg',2,3,2,1,'2020-09-25 14:00:30','2020-10-05 22:12:48'),(18,18,NULL,'Harina Gold Medal','907 gr.','Harina de trigo todo propósito',33,9.99,'images/products/4GJ1EewdHJnWJNvt7Q1qobqQ0mW9OMcil4N2CsMH.jpeg',1,1,2,1,'2020-09-25 14:46:19','2020-10-05 22:12:48'),(19,19,NULL,'Sal Refinada','400gr.','Sal refinada Ya Está',46,9.99,'images/products/6FAkqoo9WXdOrQqt423mRsYW04BL354X3Oz1NcRa.jpeg',1,1,2,1,'2020-09-25 14:51:14','2020-10-05 22:12:48'),(20,20,NULL,'Aceite de Oliva Español','140ml.','Aceite de oliva Sublime',42,9.99,'images/products/iTR8IvlCp444jmktc8zmWFT9W1mKqegGWUZMRylo.jpeg',1,1,2,1,'2020-09-25 14:53:08','2020-10-05 22:12:48'),(21,21,NULL,'Levadura Fermipan','11gr.','Levadura instantánea',38,9.99,'images/products/GYIASR1PGMFzWB5G2AgUiI8MfqGm9Aszms384hdX.jpeg',3,1,2,1,'2020-09-25 14:56:39','2020-10-05 22:12:48'),(22,22,NULL,'Pepsi','1 und.','Doble litro',99,12.00,'images/products/tpwrrwFeNxRb6nx3GbzcJdofNyKbEfmyivITXmC7.jpeg',1,4,2,1,'2020-09-28 23:20:41','2020-09-30 18:35:25'),(23,23,NULL,'7UP','1 und.','Doble litro',100,12.00,'images/products/m8bUNuBbujP3vnCUDGbwNtcSmALouxdAIXHbaONr.jpeg',1,4,2,1,'2020-09-28 23:21:30','2020-09-28 23:21:30'),(24,24,NULL,'Mirinda','1 und.','Doble litro',100,12.00,'images/products/botEy6NsiUS2ywk7ksHxYrpi6wQSnuChEoejcqWy.jpeg',1,1,2,1,'2020-09-28 23:21:50','2020-09-28 23:21:50'),(25,25,NULL,'Avena Mosh','1 unidad','360 gramos',100,19.99,'images/products/zxTNY1uBeIMmVSGc95JIGpZacVJsQtvsIDKAZZKa.jpeg',1,1,2,1,'2020-09-29 20:10:44','2020-09-29 20:10:44'),(26,26,NULL,'Barra de cereal TOSH Arandano','1 caja','6 barras de arándano',100,19.99,'images/products/vTqqBEsz1F9iJA0KCYrmJwNFalkYidg1WaLilkZw.jpeg',1,1,2,1,'2020-09-29 20:18:59','2020-09-29 20:18:59'),(27,27,NULL,'Cinnamon Toast Crunch','1 caja','340 gramos',100,19.99,'images/products/QtXownkQJrjh76IdgrLIyru2d8E79mY6yJ7lpfE4.jpeg',1,1,2,1,'2020-09-29 20:25:55','2020-09-29 20:25:55'),(28,28,NULL,'Oreo','1 paquete','308 gramos',100,19.99,'images/products/ycSK3DE2bA8X8jYovFhsQ0Go0gh3iCqnB6XwTnPA.jpeg',1,2,2,1,'2020-09-29 20:30:15','2020-09-29 21:46:45'),(29,29,NULL,'Stroopwafel','1 bolsa','10 waffles',100,19.99,'images/products/G8sQhzfsEI1iCh7ystR3e3U5UZUCagB2svKO1477.jpeg',1,1,2,1,'2020-09-29 20:32:40','2020-09-29 20:32:40'),(30,30,NULL,'Lasaña','1 caja','400 gramos',100,19.99,'images/products/mEDDYCuHpXCjsISLgpDcLdN8cxH4GgVIuSmRIagx.jpeg',1,1,2,1,'2020-09-29 20:37:35','2020-09-29 20:37:35'),(31,31,NULL,'Quinoa','1 bolsa','450 gramos',100,19.99,'images/products/TAJNCrdAOupg0nhdU4tTh12NJmLLMwmdCByGjNnc.jpeg',1,1,2,1,'2020-09-29 20:40:30','2020-09-29 20:40:30'),(32,32,NULL,'Salsa Natura\'s','1 unidad','106 gramos',100,19.99,'images/products/PUVjgAmpwT9szbtWGts94ufx22Fpvz14rGL4xDu4.jpeg',1,1,2,1,'2020-09-29 20:43:52','2020-09-29 20:43:52'),(33,33,NULL,'Carne Molida','1 unidad','Bandeja de carne molida',100,19.99,'images/products/PtHv9Uplu6Gls7fC3AUUUVv9GXt5X3nxUdf3vVv1.jpeg',1,5,2,1,'2020-09-29 20:52:29','2020-09-29 20:54:39'),(34,34,NULL,'Alas de Pollo','1 libra','1 bandeja',100,19.99,'images/products/pscbgc9BFTMT4QxHQoPZkYn49NgSAvWxvjU4L1ro.jpeg',1,5,2,1,'2020-09-29 21:07:17','2020-09-29 21:07:17'),(35,35,NULL,'Filete de pechugas','1 bandeja','1 libra',100,19.99,'images/products/EnRu2O4hkbOvTP006bacrrpPjtci9unY3UEw059r.jpeg',1,5,2,1,'2020-09-29 21:10:08','2020-09-29 21:10:18'),(36,36,NULL,'Chuleta de cerdo','1 unidad','500 gramos',100,19.99,'images/products/z8WqasXcM3IXO34LXFGrNO6ScDBV8vYWoOXYM8We.jpeg',1,5,2,1,'2020-09-29 21:12:56','2020-09-29 21:12:56'),(37,37,NULL,'Carne de cerdo molida','1 unidad','1 libra',100,19.99,'images/products/AbeLTxUG6SNBMohOioggd1ULKWnUOGqyEyRYEJFq.jpeg',1,5,2,1,'2020-09-29 21:15:07','2020-09-29 21:15:17'),(38,38,NULL,'Filete de tilapia','1 unidad','400 gramos',100,19.99,'images/products/15utD272FNIR54HNW3YVc1c9DtfXsllLz8vyPpxb.jpeg',1,5,2,1,'2020-09-29 21:20:18','2020-09-29 21:25:20'),(39,39,NULL,'Filetes de salmón','1 bolsa','500 gramos',100,19.99,'images/products/zvWlxm73kM2haMhQMlOGVEnVby9oxAPOYPvDfs52.jpeg',1,6,2,1,'2020-09-29 21:23:56','2020-09-29 21:23:56'),(40,40,NULL,'Camarón','1 unidad','1 kg',100,19.99,'images/products/hPH3WoSVKwaeJsUNwB1PACeG8RHdagGU8Y2O0kzl.jpeg',1,6,2,1,'2020-09-29 21:26:35','2020-09-29 21:26:52'),(41,41,NULL,'Mariscada','1 unidad','680 gramos',100,19.99,'images/products/JLJijXFKohV9kZXrx0qB7dxXjSBPCuiBuo5rLRII.jpeg',1,6,2,1,'2020-09-29 21:32:00','2020-09-29 21:32:00'),(42,42,NULL,'Filetes de abadejo','1 unidad','12 oz',100,19.99,'images/products/4VvkRdcCCCmPGxQidlK4BcjaF0arcEiC4b9DcUm8.jpeg',1,6,2,1,'2020-09-29 21:35:15','2020-09-29 21:35:15'),(43,43,NULL,'Eggo Waffles','1 unidad','10 waffles',100,19.99,'images/products/RS5ArrFdytbsDVJHyl0QCKv9UJBMWT7ktLZQm3Jz.jpeg',1,6,2,1,'2020-09-29 21:41:45','2020-09-29 21:41:45'),(44,44,NULL,'Medallones de pollo','1 unidad','50 medallones',100,19.99,'images/products/gTd3o3SZcHl8l3jtxmJ7giyUUMoJ32fFmfaJHnIa.jpeg',1,6,2,1,'2020-09-29 21:45:23','2020-09-29 21:45:23'),(45,45,NULL,'Ariel Revitacolor','1 unidad','750 gramos',100,19.99,'images/products/9mTWmvgA2FmRYSKf297VdxTwDFjAoEz54PsltImQ.jpeg',1,8,2,1,'2020-09-29 21:56:06','2020-09-29 21:56:06'),(46,46,NULL,'Detergente líquido Tide','1 unidad','5.91 litros',100,19.99,'images/products/dXYG03VJjRPX6Tpx5O4juMLbiLVKAxD6lNUwbt5G.jpeg',1,8,2,1,'2020-09-29 21:59:15','2020-09-29 21:59:15'),(47,47,NULL,'Vanish','1 unidad','450 gramos',100,19.99,'images/products/rhbf4FDC0R4pBt7SP2viXgj3bIlkNBJ86HbBAbfc.jpeg',1,8,2,1,'2020-09-29 22:03:07','2020-09-29 22:03:07'),(48,48,NULL,'Suavitel','1 unidad','169 fl. oz.',100,19.99,'images/products/cXloG640boU9tLay065dROfryDC8GIoEbXNodlQK.jpeg',1,8,2,1,'2020-09-29 22:06:24','2020-09-29 22:06:24'),(49,49,NULL,'Magia Blanca','1 unidad','1 galón',100,19.99,'images/products/WhtcE9Tp55CABw4GT4SRXkRgFLxuHTh2n80iLJn8.jpeg',1,8,2,1,'2020-09-29 22:11:57','2020-09-29 22:13:37'),(50,50,NULL,'Desinfectante','1 unidad','1 galón',100,19.99,'images/products/WXK7jvBhdKQStncjrlG4hRXs9ycH1eprkCSiK0jB.jpeg',1,8,2,1,'2020-09-29 22:14:48','2020-09-29 22:14:48'),(51,51,NULL,'Mr Musculo Vidrios y Superficies','1 unidad','750 ml',100,19.99,'images/products/gLPsN3PnMK3jWPgiJVf2askaszDOnHILmBEjCviq.jpeg',1,8,2,1,'2020-09-29 22:17:36','2020-09-29 22:17:36'),(52,52,NULL,'Sobres Whiskas','1 unidad','85 gramos',100,19.99,'images/products/SbaAbAJWctyLF9cylRJUVkHCqdTPdHeztrKW6a4b.jpeg',1,7,2,1,'2020-09-29 22:21:23','2020-09-29 22:21:23'),(53,53,NULL,'Alimento Húmedo Dog Chow','1 unidad','100 gramos',100,19.99,'images/products/7QwA0NIByusF5ujGumpm0z7tnezaxyRmACFFKq4i.jpeg',1,7,2,1,'2020-09-29 22:51:52','2020-09-29 22:51:52'),(54,54,NULL,'Alimiau','1 unidad','3.3 libras',100,19.99,'images/products/MStnFzWoT1b5TsTmvGwUGrPTfHpl6wYcklB0JMR4.jpeg',1,7,2,1,'2020-09-29 22:58:51','2020-09-29 22:58:51'),(55,55,NULL,'Dog Chow','1 unidad','7500 gramos',100,19.99,'images/products/iTs5tig8DyGgSXJF68GftVcPvpZL1mMnDord9MIo.jpeg',1,7,2,1,'2020-09-29 23:03:18','2020-09-29 23:03:18'),(56,56,NULL,'Cama Mascota','1 unidad','Talla M',100,19.99,'images/products/6BRpYRkf9cq0VcrSAjs0yqFXfAMCYta0Ryko7z1j.jpeg',1,7,2,1,'2020-09-29 23:06:33','2020-09-29 23:06:33'),(57,57,NULL,'Papel Higienico Scott','1 unidad','6 rollos',100,19.99,'images/products/EkPcZpkJtnALGGF9DnCQyxN7TY75UGQ1oHUowtRS.jpeg',1,9,2,1,'2020-09-29 23:14:13','2020-09-29 23:14:13'),(58,58,NULL,'Cubiertos','1 unidad','50',100,19.99,'images/products/4I8EnsSfXbtXtFVyZtZMpBlAOnaz8GNSUvjAbX2c.jpeg',1,9,2,1,'2020-09-29 23:20:47','2020-09-29 23:20:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_code` bigint(20) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `store_id` bigint(20) unsigned DEFAULT NULL,
  `total` decimal(8,2) NOT NULL DEFAULT '0.00',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_user_id_foreign` (`user_id`),
  KEY `purchases_store_id_foreign` (`store_id`),
  CONSTRAINT `purchases_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_categories`
--

DROP TABLE IF EXISTS `recipe_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_categories`
--

LOCK TABLES `recipe_categories` WRITE;
/*!40000 ALTER TABLE `recipe_categories` DISABLE KEYS */;
INSERT INTO `recipe_categories` VALUES (1,'Comida Rápida','Comida Rápida','2020-09-26 21:53:02','2020-09-28 23:23:41'),(5,'Italiana','Italiana','2020-10-05 20:24:00','2020-10-05 20:24:00');
/*!40000 ALTER TABLE `recipe_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_statuses`
--

DROP TABLE IF EXISTS `recipe_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_statuses`
--

LOCK TABLES `recipe_statuses` WRITE;
/*!40000 ALTER TABLE `recipe_statuses` DISABLE KEYS */;
INSERT INTO `recipe_statuses` VALUES (1,'Activa','Activa','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Inactiva','Inactiva','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `recipe_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_tag`
--

DROP TABLE IF EXISTS `recipe_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `recipe_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipe_tag_recipe_id_foreign` (`recipe_id`),
  KEY `recipe_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `recipe_tag_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`),
  CONSTRAINT `recipe_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_tag`
--

LOCK TABLES `recipe_tag` WRITE;
/*!40000 ALTER TABLE `recipe_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipe_category_id` bigint(20) unsigned NOT NULL,
  `recipe_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `preparation_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servings` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recipes_recipe_category_id_foreign` (`recipe_category_id`),
  KEY `recipes_recipe_status_id_foreign` (`recipe_status_id`),
  CONSTRAINT `recipes_recipe_category_id_foreign` FOREIGN KEY (`recipe_category_id`) REFERENCES `recipe_categories` (`id`),
  CONSTRAINT `recipes_recipe_status_id_foreign` FOREIGN KEY (`recipe_status_id`) REFERENCES `recipe_statuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (11,'Pizza Casera',1,1,'1 hora 20 minutos','4 pizzas','Receta para hacer masa de pizza casera','<ul>\r\n<li>1 kilogramo de harina</li>\r\n<li>1 cucharadita de sal fina</li>\r\n<li>2.5 tazas de agua tibia</li>\r\n<li>2 cucharadas de aceite de oliva</li>\r\n<li>30 gramos de levadura fresca</li>\r\n</ul>\r\n<ol>\r\n<li>Mezclar en un recipiente el agua tibia y la levadura fresca.</li>\r\n<li>Cuando hayas mezclado la levadura con el agua, agrega el aceite de oliva y mezcla bien para que se integren todos los ingredientes.</li>\r\n<li>Agrega en un bol amplio la harina y la sal. Agrega la mezcla anterior en el centro de la harina.</li>\r\n<li>Amasa bien con las manos hasta que todos los ingredientes est&eacute;n bien integrados y la masa no se pegue en tus manos.</li>\r\n<li>Cuando la masa est&eacute; bien integrada, mold&eacute;ala en forma de c&iacute;rculo y c&oacute;rtala en 4 porciones iguales. Deber&aacute;s tapar las masas con un trapo seco y dejarlas reposar por 45 minutos.</li>\r\n<li>Luego de los 45 minutos, espolvorea harina sobre una mesa y extiende la masa desde el centro hacia los costados. Una vez estirada, puedes a&ntilde;adir la salsa y los ingredientes para pizza que prefieras.</li>\r\n<li>Hornea la masa por 20 minutos a 350 grados.</li>\r\n</ol>','images/recipes/4RLSbTVLP7IA6RPzZx1tj2o6tBDrccTldy0putq7.png',0,NULL,NULL,39.96,'2020-09-28 18:59:05','2020-10-05 16:50:14'),(12,'Lassagna de Carne',5,1,'3 horas 30 minutos','6 raciones','Lassagna de carne molida y salsa roja','<p><strong><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Ingredientes<br /></span></strong><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">1 lb de pasta para lassagna&nbsp;<br />2 lbs de carne molida<br />1 cebolla mediana picada<br />2 dientes de ajo picados<br />1 cucharada de aceite de oliva<br />2 bolsas de salsa de tomate<br />1/2 taza de agua<br />15 onzas de queso crema o ricotta<br />1/2 taza de queso parmesano rallado<br /></span><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">1 taza de queso mozzarella<br />Sal y pimienta al gusto<br /><br /><strong>Procedimiento<br /></strong></span></p>\r\n<ol>\r\n<li><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Pre calentar el horno a 375F.</span></li>\r\n<li><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Hervir agua en una hoya y cocinar la pasta hasta que est&eacute; en su punto.</span></li>\r\n<li><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Sofreir en un sart&eacute;n con aceite de olivda la cebolla y el ajo hasta que la cebolla est&eacute; transparente. Incorporar la carne molida y fre&iacute;r.</span></li>\r\n<li><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Agregar agua, salsa de tomate y sal y pimienta al gusto. Bajarle el fuego y dejar hervir. Cuando est&eacute; hirviendo, retirar del fuego.</span></li>\r\n<li><span class=\"wprm-recipe-ingredient-amount\" style=\"box-sizing: border-box;\">Engrasar un pyrex y agregar la mitad de una bolsa de salsa de tomate para cubrir el fondo del molde. Luego agregar una primera capa de pasta y encima cubrir con la mezcla de carne y una capa de queso parmesano y ricotta. Repetir hasta que terminemos con la pasta.&nbsp;</span></li>\r\n<li>Tapar el pyrex con aluminio y meterlo al horno por treinta minutos.&nbsp;</li>\r\n<li>Sacar del horno y cubrir la lassagna con el queso mozzarella. Volver a meterlo al horno hasta que se derrita el queso de encima.&nbsp;</li>\r\n<li>Sacar del horno y dejar reposar por cinco minutos antes de servir.&nbsp;</li>\r\n</ol>','images/recipes/2IdmrZfGzxUqoZMQjDN2lxy0H8GK7PcnWYt2Z7wT.jpeg',0,NULL,NULL,109.94,'2020-10-05 20:23:07','2020-10-05 20:24:14');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrator',NULL,'web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(2,'supplier',NULL,'web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(3,'client',NULL,'web','2020-09-26 21:52:56','2020-09-26 21:52:56'),(4,'super administrador',NULL,'web','2020-09-26 21:52:56','2020-09-26 21:52:56');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segmentables`
--

DROP TABLE IF EXISTS `segmentables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segmentables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `segment_id` bigint(20) unsigned NOT NULL,
  `segmentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segmentable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `segmentables_segment_id_foreign` (`segment_id`),
  KEY `segmentables_segmentable_type_segmentable_id_index` (`segmentable_type`,`segmentable_id`),
  CONSTRAINT `segmentables_segment_id_foreign` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segmentables`
--

LOCK TABLES `segmentables` WRITE;
/*!40000 ALTER TABLE `segmentables` DISABLE KEYS */;
/*!40000 ALTER TABLE `segmentables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `segments`
--

DROP TABLE IF EXISTS `segments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `segments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `segments_store_id_foreign` (`store_id`),
  CONSTRAINT `segments_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `segments`
--

LOCK TABLES `segments` WRITE;
/*!40000 ALTER TABLE `segments` DISABLE KEYS */;
INSERT INTO `segments` VALUES (1,'store',NULL,1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'store',NULL,2,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'user','Activos mensualmente',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'user','Inactivos por 2 meses',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(5,'user','Cumpleaños del mes',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(6,'user','Usuarios femeninos',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(7,'user','Usuarios masculinos',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `segments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stations_store_id_foreign` (`store_id`),
  CONSTRAINT `stations_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
INSERT INTO `stations` VALUES (1,'Estacion 1 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Estacion 2 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Estacion 3 - Tienda 1',1,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(4,'Estacion 1 - Tienda 2',2,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(5,'Estacion 2 - Tienda 2',2,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(6,'Estacion 3 - Tienda 2',2,'2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_statuses`
--

DROP TABLE IF EXISTS `store_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_statuses`
--

LOCK TABLES `store_statuses` WRITE;
/*!40000 ALTER TABLE `store_statuses` DISABLE KEYS */;
INSERT INTO `store_statuses` VALUES (1,'Activa','Habilitada en aplicacion de ventas','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Deshabilitada','Guardada en el sistema pero no visible en la aplicacion','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Proximamente','Mostrar en aplicacion pero desactivada para la compra de productos','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `store_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday` int(11) NOT NULL DEFAULT '0',
  `monday_start` time DEFAULT NULL,
  `monday_end` time DEFAULT NULL,
  `tuesday` int(11) NOT NULL DEFAULT '0',
  `tuesday_start` time DEFAULT NULL,
  `tuesday_end` time DEFAULT NULL,
  `wednesday` int(11) NOT NULL DEFAULT '0',
  `wednesday_start` time DEFAULT NULL,
  `wednesday_end` time DEFAULT NULL,
  `thursday` int(11) NOT NULL DEFAULT '0',
  `thursday_start` time DEFAULT NULL,
  `thursday_end` time DEFAULT NULL,
  `friday` int(11) NOT NULL DEFAULT '0',
  `friday_start` time DEFAULT NULL,
  `friday_end` time DEFAULT NULL,
  `saturday` int(11) NOT NULL DEFAULT '0',
  `saturday_start` time DEFAULT NULL,
  `saturday_end` time DEFAULT NULL,
  `sunday` int(11) NOT NULL DEFAULT '0',
  `sunday_start` time DEFAULT NULL,
  `sunday_end` time DEFAULT NULL,
  `store_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stores_store_status_id_foreign` (`store_status_id`),
  CONSTRAINT `stores_store_status_id_foreign` FOREIGN KEY (`store_status_id`) REFERENCES `store_statuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'Muxbal','Km 13.8 Antigua Carretera a El Salvador, Oficentro Muxbal, Ofibodega 4',14.564733,-90.479522,'images/stores/H6r2zVJVMWEuomysXPmG69yytK4l5EFj2ySBNWfw.jpeg',1,'06:00:00','22:00:00',1,'06:00:00','22:00:00',1,'07:00:00','22:00:00',1,'06:00:00','22:00:00',1,'07:00:00','22:00:00',1,'09:00:00','20:00:00',1,'09:00:00','20:00:00',1,'2020-09-26 21:53:02','2020-09-28 21:58:43'),(2,'Tienda 2','Km 13 Carretera a El Salvador, C.C. Metroplaza, local 13',14.708330,-90.499443,NULL,1,'06:00:00','22:00:00',1,'06:00:00','22:00:00',1,'07:00:00','22:00:00',1,'06:00:00','22:00:00',1,'07:00:00','22:00:00',1,'09:00:00','20:00:00',1,'09:00:00','20:00:00',2,'2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_statuses`
--

DROP TABLE IF EXISTS `supplier_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_statuses`
--

LOCK TABLES `supplier_statuses` WRITE;
/*!40000 ALTER TABLE `supplier_statuses` DISABLE KEYS */;
INSERT INTO `supplier_statuses` VALUES (1,'Activo','Activo','2020-09-26 21:52:57','2020-09-26 21:52:57'),(2,'Inactivo','Inactivo','2020-09-26 21:52:57','2020-09-26 21:52:57'),(3,'Bloqueado','Bloqueado','2020-09-26 21:52:57','2020-09-26 21:52:57'),(4,'Pendiente','Pendiente','2020-09-26 21:52:57','2020-09-26 21:52:57');
/*!40000 ALTER TABLE `supplier_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sap_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `supplier_status_id` bigint(20) unsigned NOT NULL DEFAULT '4',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `suppliers_user_id_foreign` (`user_id`),
  KEY `suppliers_supplier_status_id_foreign` (`supplier_status_id`),
  CONSTRAINT `suppliers_supplier_status_id_foreign` FOREIGN KEY (`supplier_status_id`) REFERENCES `supplier_statuses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,NULL,'Empresa 1',NULL,2,1,'2020-09-26 21:52:57','2020-09-26 21:52:57'),(2,NULL,'Empresa 2',NULL,3,2,'2020-09-26 21:52:57','2020-09-26 21:52:57');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Tag 1','Tag 1','2020-09-26 21:53:02','2020-09-26 21:53:02'),(2,'Tag 2','Tag 2','2020-09-26 21:53:02','2020-09-26 21:53:02'),(3,'Tag 3','Tag 3','2020-09-26 21:53:02','2020-09-26 21:53:02');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('masculino','femenino') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_user_id_foreign` (`user_id`),
  CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'Testeando','2020-09-22','femenino',1,'2020-09-26 21:52:57','2020-09-27 15:27:06'),(2,'test',NULL,NULL,2,'2020-09-26 21:52:57','2020-09-26 21:52:57'),(3,'test',NULL,NULL,4,'2020-09-26 21:52:57','2020-09-26 21:52:57'),(4,'Freeda Lesch','1954-05-13','masculino',5,NULL,NULL),(5,'Ms. Yolanda Becker','1949-12-27','masculino',6,NULL,NULL),(6,'Arvilla Wyman Sr.','1958-12-16','masculino',7,NULL,NULL),(7,'Constantin Yost','1993-05-26','femenino',8,NULL,NULL),(8,'Collin Crona Jr.','2018-01-08','masculino',9,NULL,NULL),(9,'Devan Bashirian','1959-12-14','femenino',10,NULL,NULL),(10,'Rickie Paucek','2012-12-27','masculino',11,NULL,NULL),(11,'Quincy Weimann III','2011-06-25','masculino',12,NULL,NULL),(12,'Dr. Augusta Willms Sr.','1946-03-01','masculino',13,NULL,NULL),(13,'Dr. Ethan Sipes','1965-12-23','masculino',14,NULL,NULL),(14,'Wilbert Heidenreich','2020-05-10','masculino',15,NULL,NULL),(15,'Mr. Eino Steuber','1992-06-20','masculino',16,NULL,NULL),(16,'Prof. Peter Kub I','2017-08-01','femenino',17,NULL,NULL),(17,'Joesph Torphy','1953-05-01','femenino',18,NULL,NULL),(18,'Prof. Jett Davis','1989-03-22','femenino',19,NULL,NULL),(19,'Mr. Bradley Steuber III','1946-12-04','masculino',20,NULL,NULL),(20,'Dr. Jevon Carroll','1939-12-02','femenino',21,NULL,NULL),(21,'Prof. Vern Reinger Jr.','1921-06-15','femenino',22,NULL,NULL),(22,'Carissa Sipes','1956-04-25','masculino',23,NULL,NULL),(23,'Kamron Schulist','2008-07-26','femenino',24,NULL,NULL),(24,'Candida Jenkins DDS','1983-01-02','femenino',25,NULL,NULL),(25,'Miss Makayla Fisher','1947-09-11','masculino',26,NULL,NULL),(26,'Emma Harris','1974-08-01','femenino',27,NULL,NULL),(27,'Mrs. Sonia Breitenberg V','2013-07-04','masculino',28,NULL,NULL),(28,'Kobe Lockman','2002-03-23','femenino',29,NULL,NULL),(29,'Mr. Kaden Hackett III','1961-03-24','masculino',30,NULL,NULL),(30,'Ms. Lizeth Swaniawski MD','1934-06-05','masculino',31,NULL,NULL),(31,'Daniella Kuhlman','1977-08-29','femenino',32,NULL,NULL),(32,'Hobart Cartwright','1922-09-27','masculino',33,NULL,NULL),(33,'Javonte Zboncak','2020-01-22','masculino',34,NULL,NULL),(34,'Scot Wunsch','1924-12-12','masculino',35,NULL,NULL),(35,'Ms. Nettie Rolfson','2007-04-08','masculino',36,NULL,NULL),(36,'Kay Feil','1925-10-04','femenino',37,NULL,NULL),(37,'Esther Schmeler','2009-01-30','masculino',38,NULL,NULL),(38,'Jailyn Franecki','1999-10-06','femenino',39,NULL,NULL),(39,'Brandyn Flatley Jr.','2000-09-04','femenino',40,NULL,NULL),(40,'Bruce Sipes II','2008-07-06','masculino',41,NULL,NULL),(41,'Makenzie Luettgen','1932-12-02','femenino',42,NULL,NULL),(42,'Prof. Cathryn Schumm','1986-01-27','masculino',43,NULL,NULL),(43,'Zoie Kassulke','1924-03-25','masculino',44,NULL,NULL),(44,'Leonora Murray','1994-05-10','femenino',45,NULL,NULL),(45,'Allen Mills DDS','1928-09-16','masculino',46,NULL,NULL),(46,'Dr. Billy Hyatt PhD','1975-03-02','femenino',47,NULL,NULL),(47,'Grayson Connelly','1969-03-17','femenino',48,NULL,NULL),(48,'Zoie Hackett','1965-01-25','masculino',49,NULL,NULL),(49,'Mrs. Viva Bartoletti V','2006-01-27','masculino',50,NULL,NULL),(50,'General Davis III','1942-08-13','femenino',51,NULL,NULL),(51,'Miss Lea Herman PhD','2004-07-23','femenino',52,NULL,NULL),(52,'Dr. Cleve Hand','2018-02-17','masculino',53,NULL,NULL),(53,'Mr. Ambrose Ziemann II','1940-06-24','masculino',54,NULL,NULL),(54,'test',NULL,NULL,55,'2020-09-26 21:53:02','2020-09-26 21:53:02'),(56,'Enriquez','2020-12-07',NULL,58,'2020-09-27 19:49:23','2020-09-30 15:30:38'),(58,'García 2','1996-09-24',NULL,60,'2020-09-29 15:38:13','2020-09-30 00:08:23'),(59,'Rohrmann','1988-09-30',NULL,61,'2020-09-30 15:49:59','2020-09-30 15:49:59'),(60,'Rohrmann','1972-09-30',NULL,62,'2020-09-30 16:11:22','2020-09-30 16:11:22'),(61,'tian','2020-09-30',NULL,63,'2020-09-30 16:33:29','2020-09-30 16:33:29'),(62,'Lopez','1993-08-11',NULL,64,'2020-09-30 17:54:44','2020-09-30 17:54:44'),(63,'Samayoa','1986-10-02',NULL,65,'2020-09-30 18:21:05','2020-09-30 18:21:05');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_statuses`
--

DROP TABLE IF EXISTS `user_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_statuses`
--

LOCK TABLES `user_statuses` WRITE;
/*!40000 ALTER TABLE `user_statuses` DISABLE KEYS */;
INSERT INTO `user_statuses` VALUES (1,'Activo','Activo','2020-09-26 21:52:57','2020-09-26 21:52:57'),(2,'Inactivo','Inactivo','2020-09-26 21:52:57','2020-09-26 21:52:57'),(3,'Bloqueado','Bloqueado','2020-09-26 21:52:57','2020-09-26 21:52:57');
/*!40000 ALTER TABLE `user_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `user_status_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `supplier_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_user_status_id_foreign` (`user_status_id`),
  KEY `users_supplier_id_foreign` (`supplier_id`),
  CONSTRAINT `users_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `users_user_status_id_foreign` FOREIGN KEY (`user_status_id`) REFERENCES `user_statuses` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','administrador1@mail.com',NULL,'+50241662183',NULL,'$2y$10$jxjkK2ovl01O1ba92A0h6On9LUkO5UMKclWzVSRxd8x4MTPBzV2iu',NULL,'2020-09-26 21:52:57','2020-09-27 15:19:52',NULL,NULL,NULL,'2020-09-17 15:49:40',1,NULL),(2,'Proveedor 1','proveedor1@mail.com',NULL,NULL,NULL,'$2y$10$9opcS5yXrwxNrvE5Snulj.0jM8oxIclGCpUMh7aOhhZsDVv7Ntg1.',NULL,'2020-09-26 21:52:57','2020-09-26 21:52:57',NULL,NULL,NULL,NULL,1,1),(3,'Proveedor 2','proveedor2@mail.com',NULL,NULL,NULL,'$2y$10$xAeCjmc.NleQAIrUXoZLd.eyU/KCG4ohEnfwCnZCCmxfr3r22qI96',NULL,'2020-09-26 21:52:57','2020-09-26 21:52:57',NULL,NULL,NULL,NULL,1,2),(4,'A C','ac@smt.gt',NULL,NULL,NULL,'$2y$10$IayjgQ1E72BJomfQrJbD4u0oHo4ZcAoDsgcJ4MwOGWxWxjSDk0u7G',NULL,'2020-09-26 21:52:57','2020-09-26 21:52:57',NULL,NULL,NULL,NULL,1,1),(5,'Sam','jmcclure@example.net',NULL,'65082106','2020-09-26 21:52:57','$2y$10$0R/1sDy4SrCcUbvao.xN/OeLNVib/dACYPUmIIYcqyCe1YUvOq24y','lvLwuoHcyg','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-02-22 10:32:54',NULL,NULL,1,NULL),(6,'Greg','abernathy.cindy@example.net',NULL,'18687205','2020-09-26 21:52:57','$2y$10$lEaXcys1Rgky34qefgFxA.X2ZkNB33porj40YMZyoJ4rUfEdbY7D6','dJUahlzso4','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-06-14 22:22:04',NULL,NULL,1,NULL),(7,'Stephen','kling.destini@example.org',NULL,'83437696','2020-09-26 21:52:57','$2y$10$P45ore/y5B7R4gUkJp7lUur4NCwSzx5zWPcDjcI3n2iQe7EPw3/0K','Idwwtcq2Gb','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-02-20 20:15:09',NULL,NULL,1,NULL),(8,'Maia','aniya.shanahan@example.com',NULL,'90622573','2020-09-26 21:52:57','$2y$10$Um0NGIwH6C9FJOlncr3KU.FOcGJ8UF.2Zq.poMbR8ZyAoXSWdEBxq','M00eTwNbjM','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-07-12 22:53:57',NULL,NULL,1,NULL),(9,'Isai','btowne@example.net',NULL,'50020277','2020-09-26 21:52:57','$2y$10$6iY5Hdr9K0OoyEBBycwuWumkHc/S0BfyV.quLjqIxnixfi63jL9v2','UswmMvtynh','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-06-25 05:36:44',NULL,NULL,1,NULL),(10,'Polly','lueilwitz.antwon@example.org',NULL,'72498986','2020-09-26 21:52:57','$2y$10$bBH9q5vx9ZMAw.L8wbz5h.yhR.P1cEiGvne1jL5V3LWMm/NXoqv.e','SEZZGNYhzr','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-12-17 09:59:14',NULL,NULL,1,NULL),(11,'Devon','obeer@example.org',NULL,'20120498','2020-09-26 21:52:58','$2y$10$/9d9FgLeq6MGb.QRwJvXlOioQu9RuBpINQxI.pqJ3BKj6gCs4Ro4S','ZuRBvTYOAF','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-04 02:03:33',NULL,NULL,1,NULL),(12,'Antonia','runolfsdottir.agustina@example.com',NULL,'84684534','2020-09-26 21:52:58','$2y$10$jRmNrFsG/BKrxoFd6MeZ/.AjZLqXjVaKIHpxuP7shMN0hC.bdg95W','nfoAlb7gkK','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-13 16:17:08',NULL,NULL,1,NULL),(13,'Candido','czulauf@example.com',NULL,'35363002','2020-09-26 21:52:58','$2y$10$ftfclsw28mnD8c3r2qVi9.BBPAK2z9HulV8xm6.nEwBSfsVLTK156','QPpkAIZH4F','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-07 12:03:07',NULL,NULL,1,NULL),(14,'Annabel','dominique.swift@example.net',NULL,'91493923','2020-09-26 21:52:58','$2y$10$qtqKUfwg2gcnuB80zUHeFuV6KYixq.dkKl50c3hZdOSd6tCYNp4eO','4vv91w8714','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-07 19:12:16',NULL,NULL,1,NULL),(15,'Una','udaniel@example.org',NULL,'13330839','2020-09-26 21:52:58','$2y$10$F1ZzlhZCPks3ZpmK3WRf/eUvoD3uwsOGpfTdwuhoASqOQfXFriSwi','LyVuxGpZE8','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-20 14:09:16',NULL,NULL,1,NULL),(16,'Mossie','elangworth@example.org',NULL,'17637226','2020-09-26 21:52:58','$2y$10$Ih0Kd0PsOWNUIrq7EWflg.Md5QlhIEFNOoz0xvqH1ofleM1GTF9cm','B9sTC38Bhz','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-08-16 06:46:36',NULL,NULL,1,NULL),(17,'Darrick','nora.hand@example.org',NULL,'76585281','2020-09-26 21:52:58','$2y$10$93sJhWV4iTDXimOfcJ.o2.qbLxSIwf4Hghe2b5su9PvRnE8iBrBkG','ZeB0Yt8piM','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-14 17:06:08',NULL,NULL,1,NULL),(18,'Edwardo','brakus.watson@example.com',NULL,'16128419','2020-09-26 21:52:58','$2y$10$0mI0uGwwHQEO.xzlxlFKvOG4yTvzOjArxb.o5.xmNfFmKFH/LpWyG','jtvZoiNaj8','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-17 21:15:18',NULL,NULL,1,NULL),(19,'Kennedy','christelle98@example.com',NULL,'18442449','2020-09-26 21:52:58','$2y$10$g9BRy.yAmlnoU1.82BKKrO2N7ErIcqY/jeTqDu.GorF.4XH8hX6Hy','2KCPUQzNDG','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-16 15:06:54',NULL,NULL,1,NULL),(20,'Anahi','bahringer.theodore@example.net',NULL,'30037166','2020-09-26 21:52:58','$2y$10$qk60QxLKHryrPRg.iHyeke8FyB69Zxg1.ANNzMLUkfTFHiB1FgCZC','j8MJlD9tI0','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-04 09:08:01',NULL,NULL,1,NULL),(21,'Kenyatta','fgaylord@example.org',NULL,'75587847','2020-09-26 21:52:58','$2y$10$iykVQSs/rVhvleMOi0GR4OQqP7jffLCaPQm8PT77CFP.wh3k4uJkK','LkIiVt5H8I','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-03 17:33:15',NULL,NULL,1,NULL),(22,'Amya','jules.kuvalis@example.net',NULL,'55938779','2020-09-26 21:52:58','$2y$10$jF.CWhc.kxIK5oOc7ETo4uTKk.UW/Nl8kuUHr0Qfz7HbRzwsAo0fy','pXlhx5Ybus','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-10-11 11:34:29',NULL,NULL,1,NULL),(23,'Katelynn','novella.rodriguez@example.org',NULL,'82995424','2020-09-26 21:52:59','$2y$10$Xwb/bQCeyGmDgk.kehOG1uGFn0LiIwZEgd8DHdlZ67xtRmcE6nNyu','Y4muRX0mj5','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-06-10 20:17:52',NULL,NULL,1,NULL),(24,'Angelo','laisha.boehm@example.org',NULL,'35939943','2020-09-26 21:52:59','$2y$10$6LboSsuc46PD44C3o6D4YeVgX6/QAPWJEDdP/HC1Gp5l94BtRU4b2','gitWjLVBnQ','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-08-06 19:55:03',NULL,NULL,1,NULL),(25,'Guadalupe','cruz.kulas@example.org',NULL,'59561658','2020-09-26 21:52:59','$2y$10$B7YEdS0SmrTJCB/ctqKXOOkPFB2XjjCLEFho1eKpc7.Mhh82P0MVS','cp5s1lvdMY','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-03-20 15:16:40',NULL,NULL,1,NULL),(26,'Gail','maritza.renner@example.com',NULL,'1674547','2020-09-26 21:52:59','$2y$10$ffKE46ENa6tEMkWehQ0Tpeg5uaNY4A1OqlxpRRQZkdwa7R9uKL1M6','7y7a1tkajf','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-26 18:51:15',NULL,NULL,1,NULL),(27,'Zander','predovic.dannie@example.net',NULL,'15029836','2020-09-26 21:52:59','$2y$10$riENb.yTEbCjr4PzD0w0kO763fjI1Aw8EzTtfG0SnOJMkMUjcDtou','XbaPh02610','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-09-30 16:07:38',NULL,NULL,1,NULL),(28,'Prudence','harmony58@example.org',NULL,'39585653','2020-09-26 21:52:59','$2y$10$2PsAA0AxQXss45jklWKMMOqx8PDcOQgqtTonLrC1Ws/cacm/UE/yG','8m4lojnwi0','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-12-01 10:53:07',NULL,NULL,1,NULL),(29,'Milan','isanford@example.org',NULL,'69606096','2020-09-26 21:52:59','$2y$10$qodoo0VGk7pMcAnxFxJb3eMaqnzVG4YelhD/BQIfd82UcF9J1SmwW','R6qTS0wAUU','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-12-21 14:41:08',NULL,NULL,1,NULL),(30,'Jonathon','keyshawn50@example.com',NULL,'46327236','2020-09-26 21:52:59','$2y$10$zkSc3lD/FFuUTrGXRdZGQ.z3q6RQKnKvfsJkfpuhUDOuTZdKOaWr2','L2QtANi6cS','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-06 00:44:23',NULL,NULL,1,NULL),(31,'Adelia','bartholome71@example.com',NULL,'68032522','2020-09-26 21:52:59','$2y$10$JJMN9LZIOmT23t6n7ULEsuE79nun2.XYH5DID7ka4EsKYDrse3noS','Pm6rMbxcIA','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-24 20:25:21',NULL,NULL,1,NULL),(32,'Ernestina','bauch.roberta@example.com',NULL,'81826817','2020-09-26 21:52:59','$2y$10$4rYeXj8nJBXSBSwgw.2S/.b.96yp0BZ4qXfdd/qyxBx6klU.vZRcq','jajxXwskYu','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-02-25 00:01:30',NULL,NULL,1,NULL),(33,'Breana','devin03@example.org',NULL,'31201762','2020-09-26 21:52:59','$2y$10$FfuIvyCiliziVAgtkyiUYu55blGx7KK5GJnu9QRvap5VcqUkOpS2G','cS92CruLDc','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-08-07 05:49:35',NULL,NULL,1,NULL),(34,'Kelsie','odie.skiles@example.com',NULL,'57928097','2020-09-26 21:53:00','$2y$10$dP2w2AUo8T7jSfOxx8yhP.dUT0EgUavG/XgPZ4EdQJneiqOgaw27.','rslkTTUuLy','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-29 14:50:16',NULL,NULL,1,NULL),(35,'Amelia','wgorczany@example.net',NULL,'79483351','2020-09-26 21:53:00','$2y$10$p7Xq/5qh/69elTIIGiKsxOS1drBAmsmLWLBGz5.9jEwa4SxTOAUzm','dNSVh9CxVF','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-01-24 16:38:56',NULL,NULL,1,NULL),(36,'Hyman','thickle@example.com',NULL,'90311304','2020-09-26 21:53:00','$2y$10$I2RZLoPytIzlv78mr7bLQONe7nFcZCo7Le9P7RLwn1xFQm90OhHSu','CRTZs4Hy41','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-20 00:37:01',NULL,NULL,1,NULL),(37,'Mable','annalise.hoeger@example.com',NULL,'11634453','2020-09-26 21:53:00','$2y$10$8Bim3DFJgE83oIzYFbQsvOFqzhau.mW87Kfb5wUSgx1R7GH.H6LVS','ji2OX0dQMO','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-02-23 14:55:34',NULL,NULL,1,NULL),(38,'Stephania','dickinson.bailey@example.net',NULL,'50123872','2020-09-26 21:53:00','$2y$10$BvO4OgODG1q5yK/9V989YecWbf35BVCyJjkEoMoKcjFVeqnqeBThG','6dZ8RAjnkr','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-10-04 06:42:13',NULL,NULL,1,NULL),(39,'Meredith','lowe.ressie@example.net',NULL,'17948721','2020-09-26 21:53:00','$2y$10$ClM.gT0.ctA5t/Nd8ETh8Ooj6WXHbQl5aB.jDLjm0ra3E4kFmvqC.','nw9IXekdgs','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-17 19:25:12',NULL,NULL,1,NULL),(40,'Stacey','fahey.wallace@example.com',NULL,'89434248','2020-09-26 21:53:00','$2y$10$TTjonOYecKN0abgwjrMVouIG0cLt.kJVqTPFG/20z8aY.6VL0IE1i','ruvRinlT3u','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-18 18:14:13',NULL,NULL,1,NULL),(41,'Dexter','ztromp@example.org',NULL,'37280359','2020-09-26 21:53:00','$2y$10$hBX1tljGqO5ripB9KWfwv.HvkHGZeyTtnVs1sPyDD.frVsTKkXypK','2w6JDerKR4','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-29 18:45:35',NULL,NULL,1,NULL),(42,'Alena','koss.darien@example.net',NULL,'27959991','2020-09-26 21:53:00','$2y$10$X4OXGH0RSLy/cRyztumgLuaJ4uWkUSEyQUaSSjxFA/G4ABvTZHoka','loMXVpWUgg','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-02 20:57:47',NULL,NULL,1,NULL),(43,'Casey','sipes.theodore@example.com',NULL,'10400460','2020-09-26 21:53:00','$2y$10$FxyH9bfk1GC5sr0AbHe/Le7PdGFarNcLBykkUdHXJCT95tzmM1mgi','ZH7HJs5oFI','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-05-20 10:49:02',NULL,NULL,1,NULL),(44,'Mac','virgie.wiegand@example.com',NULL,'20888230','2020-09-26 21:53:00','$2y$10$/YdDLBQtdB0coqSGGit/FuofdX9J8GuLE8kHOeZRxFYLVGvUbn4sC','uXPagny38B','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-16 01:37:53',NULL,NULL,1,NULL),(45,'Sheila','ubernhard@example.org',NULL,'603949','2020-09-26 21:53:00','$2y$10$V1Z6arwgWkVYeWUNKcRVLuk6o2Epsvc.KtNxh0lZ.ps4yGWj8bALK','lR1y4qEX1u','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-13 01:31:13',NULL,NULL,1,NULL),(46,'Edwardo','cschamberger@example.org',NULL,'76770226','2020-09-26 21:53:01','$2y$10$vWWCgOIVeNOPahaFptec7O/856h4rKcIcw9LH4zK59g1qpq39Q2Ha','tsjZV2zg1q','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-09-26 07:58:39',NULL,NULL,1,NULL),(47,'Moriah','tnitzsche@example.net',NULL,'51675556','2020-09-26 21:53:01','$2y$10$jn/pqW6QkN8Wft3sZg1vpe/2mBJ2cgEpT/xUcy2Uh8Uu4RLkTA4bm','HlZRoRm6KL','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-22 23:36:50',NULL,NULL,1,NULL),(48,'Alana','jayden72@example.org',NULL,'11620826','2020-09-26 21:53:01','$2y$10$tzUyL7mLT6SoeHXdSD25eOK6At3u.fzI60BeVZsmJA.V8QVRC50vm','7I3KNJZFtj','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-08-16 03:31:46',NULL,NULL,1,NULL),(49,'Ila','summer09@example.org',NULL,'81747450','2020-09-26 21:53:01','$2y$10$f/YQQ.CveP76kHbsF0D1..GA9FaLF1TdxaWYv1HbbDQ/bBpAOTQey','2K8sVziFGH','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-01-31 01:07:43',NULL,NULL,1,NULL),(50,'Shanny','karina80@example.org',NULL,'68907073','2020-09-26 21:53:01','$2y$10$TjBSeHnqzOzO3Jm6BtqOzOga/R/2CS2LixnKwR8naTs6UPujZg6.q','QvwvXcSsLS','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-13 07:23:00',NULL,NULL,1,NULL),(51,'Pasquale','eliane54@example.com',NULL,'70697751','2020-09-26 21:53:01','$2y$10$UJ43eywZXswTWxDKvpSNveyG1rBO70djZg80C71cjbIuOMpwZHPBi','5qs0FrJB8H','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-01-11 06:41:04',NULL,NULL,1,NULL),(52,'Lucius','ivory.gleason@example.org',NULL,'90443221','2020-09-26 21:53:01','$2y$10$iNe2BWSnHhHjRAP9ezDxoO67wEVvtc3jtzoQi0Lt/r2qijlY4bnOK','BqZoaiH9SV','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2019-11-21 07:48:48',NULL,NULL,1,NULL),(53,'Emanuel','tkeebler@example.net',NULL,'27901159','2020-09-26 21:53:01','$2y$10$5i6SrE1fuBSXF01dmCIBNuSfowEpwfGFchz7uUE7O6QrxZIFnsmfK','aYcUaWNOa0','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-04-19 15:57:56',NULL,NULL,1,NULL),(54,'Kobe','davin65@example.net',NULL,'75024591','2020-09-26 21:53:01','$2y$10$mlpYB2r1tQE1MOKGnrA.tuZNNYJw3KTPWD1xYKclREV9mpaxsiW7W','CvXCWrVSGF','2020-09-26 21:53:01','2020-09-26 21:53:01',NULL,'2020-07-28 06:31:03',NULL,NULL,1,NULL),(55,'Administrador 2','administrador2@mail.com',NULL,NULL,NULL,'$2y$10$nWEA.No6Lmh.L44PkwcK1eUdEvT9ozvNCIUQqg2IHMZ/HaBLLsf1y',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02',NULL,NULL,NULL,NULL,1,NULL),(56,'Raspberry','raspberry@mail.com',NULL,NULL,NULL,'$2y$10$WFtYYRgFv0E4i/D0BvaUne0dr.IUTDXIpu7PDZV0PQMNqu7Jnt/N6',NULL,'2020-09-26 21:53:02','2020-09-26 21:53:02',NULL,NULL,NULL,NULL,1,NULL),(58,'Jeremias','je@smt.gt',NULL,'+50246995821',NULL,'$2y$10$CFQlsfCBcThlyty7EzZ4aOfGWUgIXZqrbKzoXz/2angh/6Omu8r7m',NULL,'2020-09-27 19:49:23','2020-09-27 19:49:50',NULL,NULL,NULL,'2020-09-27 19:49:50',1,NULL),(59,'Giovanni','123434214',NULL,'+2342142134',NULL,'$2y$10$pDsz2Z5pedjz9gjw6Z15su/5CHgXaaS7dl/pZYn3opspEerpIW.jy',NULL,'2020-09-29 15:29:01','2020-09-29 15:29:17',NULL,NULL,NULL,'2020-09-29 15:29:17',1,NULL),(60,'Andrea','ag@smt.gt',NULL,'+50258056320',NULL,'$2y$10$FR0nmOmJKpOtcGe1vJ//yOPZkO.lgsW2ruduB53CHN3lTmRqLQOSK',NULL,'2020-09-29 15:38:13','2020-09-29 15:38:13',NULL,NULL,NULL,NULL,1,NULL),(61,'Juan','5555',NULL,'55555',NULL,'$2y$10$nnknbEjZJSb8wbb8d6UNKulGVTKyL.90UlnX/fNrYV2d4zQAdpl4G',NULL,'2020-09-30 15:49:59','2020-09-30 15:49:59',NULL,NULL,NULL,NULL,1,NULL),(62,'Juan','Jr@smt.gt',NULL,'+50231257409',NULL,'$2y$10$tn3o5iQTHWRL9o/r1fSRiu6a.j8IscLFaByOVJZHi6ZaWjrj2as1a',NULL,'2020-09-30 16:11:22','2020-09-30 16:11:38',NULL,NULL,NULL,'2020-09-30 16:11:38',1,NULL),(63,'sebas','sebas@tian.com',NULL,'+50237230556',NULL,'$2y$10$nt.QXg3C1whf1bhtcPiu8.r/Evx9vms7.6cUDeJS2YKfahA1DOSVi',NULL,'2020-09-30 16:33:29','2020-09-30 16:33:47',NULL,NULL,NULL,'2020-09-30 16:33:47',1,NULL),(64,'Giovanni','gl@somadtech.com',NULL,'+50230056791',NULL,'$2y$10$afECvCc74so3cXIAMWRUoeVz5RsLf4BlZnlI1fEqbp/AHXSRVnbq.',NULL,'2020-09-30 17:54:44','2020-09-30 17:55:26',NULL,NULL,NULL,'2020-09-30 17:55:26',1,NULL),(65,'Pablo','pablosamayoa@gmail.com',NULL,'+50257084368',NULL,'$2y$10$NuVV1WDyTh2svVT8aTPqcuD8cOAa6.pYCZR0i65FKC893qfH1T4I.',NULL,'2020-09-30 18:21:05','2020-09-30 18:21:44',NULL,NULL,NULL,'2020-09-30 18:21:44',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-05 17:24:31
