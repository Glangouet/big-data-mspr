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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client` (
  `NO_CLIENT` mediumint(9) NOT NULL AUTO_INCREMENT,
  `NOM_CLIENT` varchar(50) DEFAULT NULL,
  `NORUE` varchar(10) DEFAULT NULL,
  `RUE` varchar(100) DEFAULT NULL,
  `CPOSTAL` decimal(5,0) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `NOTEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `NOM_CONTACT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NO_CLIENT`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Energym','10','Boulevard de Pontoise',95000,'Pontoise','0134205236','mservant@energym.fr','Mme servant'),(2,'La clé des champs','18','Rue des Nouvelles',95490,'Vauréal','0135615879','e.fourdan@clé.fr','M Fourdan'),(3,'Formalys','145','rue des Allouettes',78000,'Saint Germain','0136579321','contact@formalys.com','M Cresdon'),(4,'Cartoooche','84','avenue de la République',75011,'Paris','0135201895','a.dun@cartooche.fr','M Dun'),(5,'Jules','140','rue du faubourg Saint Honoré',75008,'Paris','0135206598','contact@jules.com','M Corall'),(6,'Mavick','32','rue du Général Beuret',75015,'Paris','0136548790','dravick@mavick.fr','M Dravick'),(7,'Aqualia','26','rue Nicolai',7512,'Paris','0135659875','contact@aqualia.com','M Brilat'),(8,'Palissade','7','rue de logelbach',75017,'Paris','0135879632','contact@palissade.fr','Mme Vandenberck'),(9,'Caroll','51','rue Anjou',75008,'Paris','0135647562','contact@caroll.fr','M Durand'),(10,'Atelier Micheline','135','Boulevard de Sebastopol',75002,'Paris','0136546874','contact@at-micheline.com','M Fractur'),(11,'Ciamba','12','rue Dauphine',75006,'Paris','0135213258','contact@ciamba.com','M Dactibne'),(12,'Antalia','3','rue du colonel Moll',75017,'Paris','0134542655','contact@antalia.fr','M Martin'),(13,'Amaurize','18','rue Saint Ferdinand',75017,'Paris','0135213265','a.lutin@amaurize.com','Mme Lutin'),(14,'3 Merveilles','103','rue de Rennes',75006,'Paris','0135213658','contact@3merveilles.com','M Detallis'),(15,'Arkano','27','rue de Linne',75005,'Paris','0134206741','b.lorginel@arkano.fr','Mme Lorginel'),(16,'Decathlon','25','Avenue Watrelos',59650,'Villeneuve','0339275236',NULL,'M Vanderelst'),(17,'Castorama','15','Rue des plages',59175,'Templemars','0336215879','contact@castorama.fr','M Didire'),(18,'Fnac','120','rue des Mirails',59264,'Onnaing','0356879321','contact@fnac.fr','Mme Crespin'),(19,'Dalkia France','45','Boulevard Marchand',59350,'Saint André les Lille','0356865871','m.dreschler@dalkia.fr','Mme Dreschler'),(20,'Maes','36','Rue des pyramides',59000,'Lille','0356766821','d.despadre@maes.fr','M Despadre'),(21,'Lunginnov','36','Rue dix bars',59000,'Lille','0355676354','contact@lunginnov.fr','M Attaf'),(22,'Yarzo','44','Avenue Marx Dormoy',59000,'Lille','0356246387','y.attof@yarzo.com','M Yassin Attof'),(23,'Meunier','15','Rue de Tournai',59000,'Lille','0365322522','i.meunier@meunier.fr','M Meunier'),(24,'Jules','61','Avenue du peuple Belge',59800,'Lille','0323543325','f.duperche@jules.fr','M Duperche'),(25,'Armelle','22','Place des Reignaux',59800,'Lille','0331256484','contact@armelle.fr','M Yakamoz');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:03:44
