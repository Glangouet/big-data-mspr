-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: emballage_bi_mspr
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorie` (
  `NO_CATEGORIE` decimal(2,0) NOT NULL,
  `CAT_NO_CATEGORIE` decimal(2,0) DEFAULT NULL,
  `NOM_CATEGORIE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NO_CATEGORIE`),
  KEY `FK_CATEGORI_EST_CONTE_CATEGORI` (`CAT_NO_CATEGORIE`),
  CONSTRAINT `FK_CATEGORI_EST_CONTE_CATEGORI` FOREIGN KEY (`CAT_NO_CATEGORIE`) REFERENCES `categorie` (`no_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES (0,1,'Caisse carton à cannelure '),(1,NULL,'Caisses carton, caisses américaines'),(2,NULL,'Boîtes postales'),(3,6,'Caisse isotherme pour produits dangereux'),(4,0,'Caisse carton à double cannelure'),(5,NULL,'Callage et protection'),(6,NULL,'Caisses isothermes'),(7,NULL,'Palettes'),(8,0,'Caisse carton à simple cannelure'),(9,1,'Caisse carton simple'),(10,NULL,'Cerclage et protection'),(11,0,' Caisse carton à triple cannelure'),(12,NULL,'Emballage boutiques'),(13,9,'Caisse carton blanche'),(14,9,'Caisse carton Galia'),(15,6,'Caisse isotherme pour aliments'),(16,9,'Caisse carton VPC picking'),(17,NULL,'Enveloppes et pochettes'),(18,6,'Caisse isotherme simple'),(19,NULL,'Adhésifs'),(20,NULL,'Sachets');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:03:38
