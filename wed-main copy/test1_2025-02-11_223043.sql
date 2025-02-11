-- MySQL dump 10.13  Distrib 9.2.0, for macos15.2 (arm64)
--
-- Host: 103.132.3.27    Database: test1
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('d2853dfc-c662-48b8-abcc-3a17954e3431','1e349abf1d5bfda9fa752a646784d6d86f9ffd1bc051497f16c7fa92beb01e5d','2025-02-10 05:24:20.419','20250210052400_',NULL,NULL,'2025-02-10 05:24:15.725',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `object` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (2,'แกงเขียนหวาน','1. 500 มล., 2. เนื้อไก่ 200 กรัม, 3. พริกแกงเขียวหวาน 50 กรัม, 4. มะเขือเปราะ 100 กรัม, 5. ใบโหระพา 10 กรัม, 6. น้ำปลา 2 ช้อนโต๊ะ, 7. น้ำตาลปี๊บ 1 ช้อนโต๊ะ','1. ผัดพริกแกงเขียวหวานกับกะทิ 2.ใส่เนื้อไก่รอจนสุก 3.เติมผักและเครื่องปรุง 4.รอให้สุกแล้วเสิร์ฟ'),(3,'แกงป่า','1. ต้มเครื่องแกงกับน้ำให้เดือด 2.ใส่เนื้อสัตว์และผักต่างๆ 3.ปรุงรสตามชอบ 4.ต้มจนสุก','1. เนื้อไก่ 200 กรัม, 2. พริกแกงป่า 50 กรัม, 3. น้ำ 500 มล., 4. มะเขือเปราะ 100 กรัม, 5. ถั่วฝักยาว 50 กรัม, 6. กระชายซอย 30 กรัม, 7. น้ำปลา 2 ช้อนโต๊ะ');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

--
-- Dumping routines for database 'test1'
--
