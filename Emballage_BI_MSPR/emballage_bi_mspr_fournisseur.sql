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
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fournisseur` (
  `NO_FOURNISSEUR` decimal(3,0) NOT NULL,
  `NOM_FOURNISSEUR` varchar(50) DEFAULT NULL,
  `NORUE` varchar(10) DEFAULT NULL,
  `RUE` varchar(100) DEFAULT NULL,
  `CPOSTAL` decimal(5,0) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `NOTEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`NO_FOURNISSEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Carton Nylon Cotton','146','Rue Montmartre',75002,'Paris','0148010245','contact@carton-nylon-coton.fr'),(2,'Multi Services Carton','9','Boulevard Georges Méliès',94356,'Villiers-sur-Marne','0963575146','msc@multi-services-carton.com'),(3,'Boxs','25','Rue Saint-Yves',75014,'Paris','0145393681','info@boxs.fr'),(4,'Gatine','5','Rue Jezanne',78711,'Mantes-la-Ville','0130920786','b.gatine@gatine.fr'),(5,'Cartonnage Turquet Bos','17','Rue des Hortensias',60110,'Amblainville','0344521365','devis1@turquet-bos.fr '),(6,'Carton Service','14','Impasse des Moines',91410,'Dourdan','0164593224',NULL),(7,'AK Sarl Emballages','12','Rue Bayen',75017,'Paris','0147646390','info@akemballages.com'),(8,'Hirschfeld Emballages','6','Parc des Fontenelles',78870,'Bailly','0130565548',NULL),(9,'Somater Conditionnements','98','Route de la Reine',92100,'Boulogne-Billancourt','0146056507',NULL),(10,'Aluplast','9','Route de Bu',78550,'Houdan','0134942545','contact@aluplast.fr'),(11,'Sedic Vitrafix','22','Avenue de la Division Leclerc',93017,'Bobigny','0148958919','contact@sedic-vitrafix.com'),(12,'Luxenvel','25','Boulevard Armand Hayem',95680,'Montlignon','0134160582','contact@luxenvel.fr'),(13,'Feralco','18','Rue Goubet',75019,'Paris','0144525570','contact@feralco.fr'),(14,'Pal consulting','14','Rue des Rosiers',78500,'Sartrouville','0185084555',NULL),(15,'PMO Palettes','5','Avenue Ambroise Croizat',91130,'Ris-Orangis','0160155719','contact@pmo-palettes.fr'),(16,'Polybel','60','rue du Moulin du Président',89000,'Auxerre','0386949005','contact@polybel.fr'),(17,'Expepack','176','rue du Buisson',59700,'Marq en Baroeul','0820200745','contact@expepack.fr'),(18,'FROMM France',NULL,'Rue de l\'Aviation',21121,'Darois','0380356767','contact@fromm.fr'),(19,'GETRA','29','Rue de la Gare',88120,'Saint Ame','0329262600','contact@pmo-palettes.fr');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:03:42
