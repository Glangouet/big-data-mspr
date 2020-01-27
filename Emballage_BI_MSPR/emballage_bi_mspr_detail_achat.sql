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
-- Table structure for table `detail_achat`
--

DROP TABLE IF EXISTS `detail_achat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detail_achat` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_ACHAT` decimal(6,0) NOT NULL,
  `QUANTITE_ACHAT` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`CODE_PRODUIT`,`NO_ACHAT`),
  KEY `FK_DETAIL_A_DETAIL_AC_ACHAT` (`NO_ACHAT`),
  CONSTRAINT `FK_DETAIL_A_DETAIL_AC_ACHAT` FOREIGN KEY (`NO_ACHAT`) REFERENCES `achat` (`no_achat`),
  CONSTRAINT `FK_DETAIL_A_DETAIL_AC_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`code_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_achat`
--

LOCK TABLES `detail_achat` WRITE;
/*!40000 ALTER TABLE `detail_achat` DISABLE KEYS */;
INSERT INTO `detail_achat` VALUES ('1005NL',18101,3000),('1005NL',18201,800),('20012',18219,400),('20019',18219,400),('20030',18219,400),('20040',18219,400),('20055',18219,400),('4DVX114',18213,50),('4DVX18',18213,50),('4DVX245',18213,100),('AD50B',18115,50),('AD50B',18215,50),('AD50J',18115,50),('AD50J',18215,50),('AD50N',18115,50),('AD50N',18215,50),('AD50O',18115,50),('AD50O',18215,50),('AD50R',18115,50),('AD50R',18215,50),('AD50V',18115,50),('AD50V',18215,50),('ADP23',18115,100),('ADP23',18215,100),('ADP25',18116,100),('ADP25',18216,100),('ADP26',18116,100),('ADP26',18216,100),('BET15N',18217,200),('BET26N',18217,200),('BFT140',18217,200),('BFT140',18218,100),('BLUR05R',18101,50),('BLUR05R',18114,100),('BLUR05R',18201,50),('CAD17',18103,60),('CAD17',18205,60),('CAD21',18103,40),('CAD21A',18103,30),('CAD21B',18205,200),('CAD22',18105,50),('CAD22',18203,80),('CAD239',18104,100),('CAD28',18105,50),('CAD28',18203,40),('CAD28',18205,100),('CAD30',18105,100),('CAD30',18203,40),('CAS15',18205,100),('CAS58',18104,200),('CAS67',18103,100),('CAS67',18104,100),('CAS67',18203,100),('CAS67B',18104,100),('CAST56',18108,200),('CAST56',18208,300),('CAST57',18108,100),('CAST57',18208,100),('CAST70',18108,200),('CAST70',18208,300),('CAT18',18105,100),('CAT18',18205,200),('CAT22',18205,150),('CAT24',18105,50),('CAT24',18205,100),('CAT80',18105,30),('CFA210',18205,100),('CFA280',18205,60),('CG1B',18107,50),('CG1B',18207,50),('CG6B',18107,20),('CG6B',18207,20),('CIT05',18113,50),('CIT05',18213,50),('CIT15',18113,50),('CIT15',18213,50),('CIT27',18113,100),('CIT27',18213,100),('CLIC40',18110,50),('CLIC40',18111,50),('CLIC40',18210,50),('CLIC40',18211,50),('CLIC60',18110,40),('CLIC60',18210,40),('COOL02',18204,100),('COOL05',18204,100),('COOL10',18204,200),('COOL20',18204,100),('EZLOC16',18101,200),('EZLOC16',18201,100),('MCFGL01',18101,100),('MCFGL01',18114,100),('MCFGL01',18201,50),('PAL3',18110,200),('PAL3',18112,100),('PAL3',18210,200),('PAL3',18212,100),('PAL4',18102,60),('PAL4',18202,100),('PAL5',18102,100),('PAL5',18202,100),('PE12',18218,400),('PE19',18218,400),('PE30',18218,400),('PE40',18218,400),('PE55',18218,400),('PLAK1',18116,200),('PLAK1',18214,100),('PLAK1',18216,200),('PLAK1511',18114,50),('PLAK1919',18116,200),('PLAK1919',18214,50),('PLAK1919',18216,200),('PLAK3',18116,200),('PLAK3',18214,100),('PLAK3',18216,200),('PLAK7',18114,50),('PLAK7',18214,50),('PPB32C',18107,1000),('PPB32C',18206,1000),('PPB32C',18207,1000),('PPB43C',18107,1000),('PPB43C',18206,500),('PPB43C',18207,1000),('PRF33',18106,300),('PRF33',18109,500),('PRF33',18206,200),('PRF33',18209,500),('PRF43',18106,500),('PRF43',18109,300),('PRF43',18206,200),('PRF43',18209,300),('PRF63',18106,200),('SCF7000',18101,200),('SCF7000',18219,500),('TOR12',18219,400),('TOR19',18219,400),('TOR30',18219,400),('TOR40',18219,400),('TOR55',18219,400);
/*!40000 ALTER TABLE `detail_achat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 12:03:40