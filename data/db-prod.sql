-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : lun. 27 jan. 2020 à 14:06
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db-prod`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

CREATE TABLE `achat` (
  `NO_ACHAT` decimal(6,0) NOT NULL,
  `NO_FOURNISSEUR` decimal(3,0) NOT NULL,
  `DATE_ACHAT` date DEFAULT NULL,
  `COMMENT_ACHAT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`NO_ACHAT`, `NO_FOURNISSEUR`, `DATE_ACHAT`, `COMMENT_ACHAT`) VALUES
('18101', '16', '2018-01-15', NULL),
('18102', '14', '2018-01-22', NULL),
('18103', '3', '2018-02-02', NULL),
('18104', '2', '2018-03-13', NULL),
('18105', '5', '2018-03-16', NULL),
('18106', '12', '2018-04-15', NULL),
('18107', '8', '2018-04-20', 'Reassort - fêtes'),
('18108', '2', '2018-04-20', 'Reassort - fêtes'),
('18109', '11', '2018-05-14', NULL),
('18110', '15', '2018-05-14', NULL),
('18111', '13', '2018-05-20', NULL),
('18112', '14', '2018-06-03', NULL),
('18113', '5', '2018-06-04', NULL),
('18114', '18', '2018-06-10', NULL),
('18115', '2', '2018-06-10', NULL),
('18116', '19', '2018-06-13', NULL),
('18201', '18', '2018-07-05', NULL),
('18202', '16', '2018-08-10', 'Réassort urgent'),
('18203', '1', '2018-08-25', NULL),
('18204', '5', '2018-09-03', NULL),
('18205', '6', '2018-09-03', NULL),
('18206', '11', '2018-09-15', NULL),
('18207', '6', '2018-09-20', NULL),
('18208', '12', '2018-09-20', NULL),
('18209', '11', '2018-10-04', 'Prévision cdes urgentes'),
('18210', '13', '2018-10-04', NULL),
('18211', '17', '2018-10-04', NULL),
('18212', '18', '2018-10-06', NULL),
('18213', '5', '2018-10-10', NULL),
('18214', '3', '2018-10-10', NULL),
('18215', '18', '2018-10-10', NULL),
('18216', '19', '2018-11-18', 'Préparation Black Friday'),
('18217', '7', '2018-11-18', 'Préparation Black Friday'),
('18218', '10', '2018-11-18', 'Préparation Black Friday'),
('18219', '10', '2018-11-18', 'Préparation Black Friday'),
('18220', '11', '2018-11-22', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `NO_CATEGORIE` decimal(2,0) NOT NULL,
  `CAT_NO_CATEGORIE` decimal(2,0) DEFAULT NULL,
  `NOM_CATEGORIE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`NO_CATEGORIE`, `CAT_NO_CATEGORIE`, `NOM_CATEGORIE`) VALUES
('0', '1', 'Caisse carton à cannelure '),
('1', NULL, 'Caisses carton, caisses américaines'),
('2', NULL, 'Boîtes postales'),
('3', '6', 'Caisse isotherme pour produits dangereux'),
('4', '0', 'Caisse carton à double cannelure'),
('5', NULL, 'Callage et protection'),
('6', NULL, 'Caisses isothermes'),
('7', NULL, 'Palettes'),
('8', '0', 'Caisse carton à simple cannelure'),
('9', '1', 'Caisse carton simple'),
('10', NULL, 'Cerclage et protection'),
('11', '0', ' Caisse carton à triple cannelure'),
('12', NULL, 'Emballage boutiques'),
('13', '9', 'Caisse carton blanche'),
('14', '9', 'Caisse carton Galia'),
('15', '6', 'Caisse isotherme pour aliments'),
('16', '9', 'Caisse carton VPC picking'),
('17', NULL, 'Enveloppes et pochettes'),
('18', '6', 'Caisse isotherme simple'),
('19', NULL, 'Adhésifs'),
('20', NULL, 'Sachets');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `NO_CLIENT` mediumint NOT NULL,
  `NOM_CLIENT` varchar(50) DEFAULT NULL,
  `NORUE` varchar(10) DEFAULT NULL,
  `RUE` varchar(100) DEFAULT NULL,
  `CPOSTAL` decimal(5,0) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `NOTEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `NOM_CONTACT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`NO_CLIENT`, `NOM_CLIENT`, `NORUE`, `RUE`, `CPOSTAL`, `VILLE`, `NOTEL`, `EMAIL`, `NOM_CONTACT`) VALUES
(1, 'Energym', '10', 'Boulevard de Pontoise', '95000', 'Pontoise', '0134205236', 'mservant@energym.fr', 'Mme servant'),
(2, 'La clé des champs', '18', 'Rue des Nouvelles', '95490', 'Vauréal', '0135615879', 'e.fourdan@clé.fr', 'M Fourdan'),
(3, 'Formalys', '145', 'rue des Allouettes', '78000', 'Saint Germain', '0136579321', 'contact@formalys.com', 'M Cresdon'),
(4, 'Cartoooche', '84', 'avenue de la République', '75011', 'Paris', '0135201895', 'a.dun@cartooche.fr', 'M Dun'),
(5, 'Jules', '140', 'rue du faubourg Saint Honoré', '75008', 'Paris', '0135206598', 'contact@jules.com', 'M Corall'),
(6, 'Mavick', '32', 'rue du Général Beuret', '75015', 'Paris', '0136548790', 'dravick@mavick.fr', 'M Dravick'),
(7, 'Aqualia', '26', 'rue Nicolai', '7512', 'Paris', '0135659875', 'contact@aqualia.com', 'M Brilat'),
(8, 'Palissade', '7', 'rue de logelbach', '75017', 'Paris', '0135879632', 'contact@palissade.fr', 'Mme Vandenberck'),
(9, 'Caroll', '51', 'rue Anjou', '75008', 'Paris', '0135647562', 'contact@caroll.fr', 'M Durand'),
(10, 'Atelier Micheline', '135', 'Boulevard de Sebastopol', '75002', 'Paris', '0136546874', 'contact@at-micheline.com', 'M Fractur'),
(11, 'Ciamba', '12', 'rue Dauphine', '75006', 'Paris', '0135213258', 'contact@ciamba.com', 'M Dactibne'),
(12, 'Antalia', '3', 'rue du colonel Moll', '75017', 'Paris', '0134542655', 'contact@antalia.fr', 'M Martin'),
(13, 'Amaurize', '18', 'rue Saint Ferdinand', '75017', 'Paris', '0135213265', 'a.lutin@amaurize.com', 'Mme Lutin'),
(14, '3 Merveilles', '103', 'rue de Rennes', '75006', 'Paris', '0135213658', 'contact@3merveilles.com', 'M Detallis'),
(15, 'Arkano', '27', 'rue de Linne', '75005', 'Paris', '0134206741', 'b.lorginel@arkano.fr', 'Mme Lorginel'),
(16, 'Decathlon', '25', 'Avenue Watrelos', '59650', 'Villeneuve', '0339275236', NULL, 'M Vanderelst'),
(17, 'Castorama', '15', 'Rue des plages', '59175', 'Templemars', '0336215879', 'contact@castorama.fr', 'M Didire'),
(18, 'Fnac', '120', 'rue des Mirails', '59264', 'Onnaing', '0356879321', 'contact@fnac.fr', 'Mme Crespin'),
(19, 'Dalkia France', '45', 'Boulevard Marchand', '59350', 'Saint André les Lille', '0356865871', 'm.dreschler@dalkia.fr', 'Mme Dreschler'),
(20, 'Maes', '36', 'Rue des pyramides', '59000', 'Lille', '0356766821', 'd.despadre@maes.fr', 'M Despadre'),
(21, 'Lunginnov', '36', 'Rue dix bars', '59000', 'Lille', '0355676354', 'contact@lunginnov.fr', 'M Attaf'),
(22, 'Yarzo', '44', 'Avenue Marx Dormoy', '59000', 'Lille', '0356246387', 'y.attof@yarzo.com', 'M Yassin Attof'),
(23, 'Meunier', '15', 'Rue de Tournai', '59000', 'Lille', '0365322522', 'i.meunier@meunier.fr', 'M Meunier'),
(24, 'Jules', '61', 'Avenue du peuple Belge', '59800', 'Lille', '0323543325', 'f.duperche@jules.fr', 'M Duperche'),
(25, 'Armelle', '22', 'Place des Reignaux', '59800', 'Lille', '0331256484', 'contact@armelle.fr', 'M Yakamoz');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `NO_COMMANDE` decimal(6,0) NOT NULL,
  `NO_CLIENT` mediumint NOT NULL,
  `DATE_COMMANDE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`NO_COMMANDE`, `NO_CLIENT`, `DATE_COMMANDE`) VALUES
('181001', 1, '2018-02-02'),
('181002', 2, '2018-02-03'),
('181003', 3, '2018-02-03'),
('181004', 1, '2018-04-10'),
('181005', 4, '2018-04-10'),
('181006', 5, '2018-04-13'),
('181007', 6, '2018-04-15'),
('181008', 7, '2018-04-15'),
('181009', 8, '2018-04-15'),
('181010', 9, '2018-04-16'),
('181011', 10, '2018-04-16'),
('181012', 11, '2018-04-18'),
('181013', 9, '2018-06-18'),
('181014', 11, '2018-06-18'),
('181015', 10, '2018-06-25'),
('181016', 12, '2018-06-25'),
('181017', 5, '2018-06-25'),
('181018', 4, '2018-06-30'),
('181019', 7, '2018-06-30'),
('182001', 13, '2018-07-02'),
('182002', 14, '2018-07-02'),
('182003', 15, '2018-07-02'),
('182004', 16, '2018-07-02'),
('182005', 17, '2018-07-04'),
('182006', 18, '2018-07-05'),
('182007', 19, '2018-08-02'),
('182008', 20, '2018-08-15'),
('182009', 17, '2018-09-23'),
('182010', 18, '2018-09-24'),
('182011', 15, '2018-10-02'),
('182012', 5, '2018-10-02'),
('182013', 10, '2018-10-03'),
('182014', 9, '2018-10-03'),
('182015', 19, '2018-10-04'),
('182016', 20, '2018-10-04'),
('182017', 22, '2018-10-07'),
('182018', 21, '2018-10-08'),
('182019', 23, '2018-10-10'),
('182020', 24, '2018-10-15'),
('182021', 25, '2018-10-20');

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_MATIERE` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `composer`
--

INSERT INTO `composer` (`CODE_PRODUIT`, `NO_MATIERE`) VALUES
('A07', '1'),
('A09G', '1'),
('A13', '1'),
('A14G', '1'),
('A15', '1'),
('A16', '1'),
('BET15N', '1'),
('BET26N', '1'),
('BFT140', '1'),
('CAD17', '1'),
('CAD201', '1'),
('CAD21', '1'),
('CAD21A', '1'),
('CAD21B', '1'),
('CAD21S', '1'),
('CAD21T', '1'),
('CAD22', '1'),
('CAD239', '1'),
('CAD28', '1'),
('CAD30', '1'),
('CAS15', '1'),
('CAS15A', '1'),
('CAS16', '1'),
('CAS202', '1'),
('CAS204', '1'),
('CAS208', '1'),
('CAS219', '1'),
('CAS58', '1'),
('CAS59', '1'),
('CAS67', '1'),
('CAS67B', '1'),
('CAST56', '1'),
('CAST57', '1'),
('CAST70', '1'),
('CAT04', '1'),
('CAT18', '1'),
('CAT22', '1'),
('CAT23', '1'),
('CAT24', '1'),
('CAT40', '1'),
('CAT60', '1'),
('CAT80', '1'),
('CFA210', '1'),
('CFA280', '1'),
('CIT05', '1'),
('CIT08', '1'),
('CIT15', '1'),
('CIT20', '1'),
('CIT27', '1'),
('COOL02', '1'),
('COOL05', '1'),
('COOL10', '1'),
('COOL20', '1'),
('DAP15', '1'),
('DAP20', '1'),
('DAP40', '1'),
('DAP70', '1'),
('PAL3', '1'),
('PAL4', '1'),
('PLAK1', '1'),
('PLAK1511', '1'),
('PLAK1919', '1'),
('PLAK3', '1'),
('PLAK7', '1'),
('EZLOC16', '2'),
('1005NL', '3'),
('AD50B', '3'),
('AD50J', '3'),
('AD50N', '3'),
('AD50O', '3'),
('AD50R', '3'),
('AD50V', '3'),
('ADP23', '3'),
('ADP25', '3'),
('ADP26', '3'),
('BLUR05R', '3'),
('CG1B', '3'),
('CG6B', '3'),
('MCFGL01', '3'),
('PPB32C', '3'),
('PPB43C', '3'),
('SCEL1', '3'),
('SCF7000', '3'),
('4DVX114', '4'),
('4DVX18', '4'),
('4DVX245', '4'),
('4DVX37', '4'),
('CLIC40', '4'),
('CLIC60', '4'),
('PAL5', '4'),
('AD50B', '5'),
('AD50J', '5'),
('AD50N', '5'),
('AD50O', '5'),
('AD50R', '5'),
('AD50V', '5'),
('ADP23', '5'),
('ADP25', '5'),
('ADP26', '5'),
('4DVX114', '8'),
('4DVX18', '8'),
('4DVX245', '8'),
('4DVX37', '8'),
('CIT05', '8'),
('CIT08', '8'),
('CIT15', '8'),
('CIT20', '8'),
('CIT27', '8'),
('COOL02', '8'),
('COOL05', '8'),
('COOL10', '8'),
('COOL20', '8'),
('DAP15', '8'),
('DAP20', '8'),
('DAP40', '8'),
('DAP70', '8'),
('20012', '9'),
('20019', '9'),
('20030', '9'),
('20040', '9'),
('20055', '9'),
('PE12', '9'),
('PE19', '9'),
('PE30', '9'),
('PE40', '9'),
('PE55', '9'),
('PRF33', '9'),
('PRF43', '9'),
('PRF63', '9'),
('TOR12', '9'),
('TOR19', '9'),
('TOR30', '9'),
('TOR40', '9'),
('TOR55', '9'),
('PE12', '10'),
('PE19', '10'),
('PE30', '10'),
('PE40', '10'),
('PE55', '10');

-- --------------------------------------------------------

--
-- Structure de la table `detail_achat`
--

CREATE TABLE `detail_achat` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_ACHAT` decimal(6,0) NOT NULL,
  `QUANTITE_ACHAT` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `detail_achat`
--

INSERT INTO `detail_achat` (`CODE_PRODUIT`, `NO_ACHAT`, `QUANTITE_ACHAT`) VALUES
('1005NL', '18101', '3000'),
('1005NL', '18201', '800'),
('20012', '18219', '400'),
('20019', '18219', '400'),
('20030', '18219', '400'),
('20040', '18219', '400'),
('20055', '18219', '400'),
('4DVX114', '18213', '50'),
('4DVX18', '18213', '50'),
('4DVX245', '18213', '100'),
('AD50B', '18115', '50'),
('AD50B', '18215', '50'),
('AD50J', '18115', '50'),
('AD50J', '18215', '50'),
('AD50N', '18115', '50'),
('AD50N', '18215', '50'),
('AD50O', '18115', '50'),
('AD50O', '18215', '50'),
('AD50R', '18115', '50'),
('AD50R', '18215', '50'),
('AD50V', '18115', '50'),
('AD50V', '18215', '50'),
('ADP23', '18115', '100'),
('ADP23', '18215', '100'),
('ADP25', '18116', '100'),
('ADP25', '18216', '100'),
('ADP26', '18116', '100'),
('ADP26', '18216', '100'),
('BET15N', '18217', '200'),
('BET26N', '18217', '200'),
('BFT140', '18217', '200'),
('BFT140', '18218', '100'),
('BLUR05R', '18101', '50'),
('BLUR05R', '18114', '100'),
('BLUR05R', '18201', '50'),
('CAD17', '18103', '60'),
('CAD17', '18205', '60'),
('CAD21', '18103', '40'),
('CAD21A', '18103', '30'),
('CAD21B', '18205', '200'),
('CAD22', '18105', '50'),
('CAD22', '18203', '80'),
('CAD239', '18104', '100'),
('CAD28', '18105', '50'),
('CAD28', '18203', '40'),
('CAD28', '18205', '100'),
('CAD30', '18105', '100'),
('CAD30', '18203', '40'),
('CAS15', '18205', '100'),
('CAS58', '18104', '200'),
('CAS67', '18103', '100'),
('CAS67', '18104', '100'),
('CAS67', '18203', '100'),
('CAS67B', '18104', '100'),
('CAST56', '18108', '200'),
('CAST56', '18208', '300'),
('CAST57', '18108', '100'),
('CAST57', '18208', '100'),
('CAST70', '18108', '200'),
('CAST70', '18208', '300'),
('CAT18', '18105', '100'),
('CAT18', '18205', '200'),
('CAT22', '18205', '150'),
('CAT24', '18105', '50'),
('CAT24', '18205', '100'),
('CAT80', '18105', '30'),
('CFA210', '18205', '100'),
('CFA280', '18205', '60'),
('CG1B', '18107', '50'),
('CG1B', '18207', '50'),
('CG6B', '18107', '20'),
('CG6B', '18207', '20'),
('CIT05', '18113', '50'),
('CIT05', '18213', '50'),
('CIT15', '18113', '50'),
('CIT15', '18213', '50'),
('CIT27', '18113', '100'),
('CIT27', '18213', '100'),
('CLIC40', '18110', '50'),
('CLIC40', '18111', '50'),
('CLIC40', '18210', '50'),
('CLIC40', '18211', '50'),
('CLIC60', '18110', '40'),
('CLIC60', '18210', '40'),
('COOL02', '18204', '100'),
('COOL05', '18204', '100'),
('COOL10', '18204', '200'),
('COOL20', '18204', '100'),
('EZLOC16', '18101', '200'),
('EZLOC16', '18201', '100'),
('MCFGL01', '18101', '100'),
('MCFGL01', '18114', '100'),
('MCFGL01', '18201', '50'),
('PAL3', '18110', '200'),
('PAL3', '18112', '100'),
('PAL3', '18210', '200'),
('PAL3', '18212', '100'),
('PAL4', '18102', '60'),
('PAL4', '18202', '100'),
('PAL5', '18102', '100'),
('PAL5', '18202', '100'),
('PE12', '18218', '400'),
('PE19', '18218', '400'),
('PE30', '18218', '400'),
('PE40', '18218', '400'),
('PE55', '18218', '400'),
('PLAK1', '18116', '200'),
('PLAK1', '18214', '100'),
('PLAK1', '18216', '200'),
('PLAK1511', '18114', '50'),
('PLAK1919', '18116', '200'),
('PLAK1919', '18214', '50'),
('PLAK1919', '18216', '200'),
('PLAK3', '18116', '200'),
('PLAK3', '18214', '100'),
('PLAK3', '18216', '200'),
('PLAK7', '18114', '50'),
('PLAK7', '18214', '50'),
('PPB32C', '18107', '1000'),
('PPB32C', '18206', '1000'),
('PPB32C', '18207', '1000'),
('PPB43C', '18107', '1000'),
('PPB43C', '18206', '500'),
('PPB43C', '18207', '1000'),
('PRF33', '18106', '300'),
('PRF33', '18109', '500'),
('PRF33', '18206', '200'),
('PRF33', '18209', '500'),
('PRF43', '18106', '500'),
('PRF43', '18109', '300'),
('PRF43', '18206', '200'),
('PRF43', '18209', '300'),
('PRF63', '18106', '200'),
('SCF7000', '18101', '200'),
('SCF7000', '18219', '500'),
('TOR12', '18219', '400'),
('TOR19', '18219', '400'),
('TOR30', '18219', '400'),
('TOR40', '18219', '400'),
('TOR55', '18219', '400');

-- --------------------------------------------------------

--
-- Structure de la table `detail_commande`
--

CREATE TABLE `detail_commande` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_COMMANDE` decimal(6,0) NOT NULL,
  `QUANTITE_COMMANDE` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `detail_commande`
--

INSERT INTO `detail_commande` (`CODE_PRODUIT`, `NO_COMMANDE`, `QUANTITE_COMMANDE`) VALUES
('1005NL', '181008', '2'),
('20019', '181012', '50'),
('20030', '181012', '50'),
('20030', '181014', '50'),
('4DVX18', '182006', '100'),
('4DVX18', '182010', '50'),
('A07', '182015', '20'),
('A09G', '182015', '4'),
('A13', '182002', '5'),
('A13', '182016', '50'),
('A14G', '181003', '4'),
('A14G', '182002', '5'),
('A15', '181003', '4'),
('A15', '182002', '5'),
('A15', '182015', '4'),
('A15', '182016', '50'),
('A16', '182016', '50'),
('AD50B', '181009', '3'),
('AD50B', '182017', '10'),
('AD50B', '182018', '10'),
('AD50J', '182015', '3'),
('AD50R', '182015', '3'),
('AD50V', '182019', '20'),
('AD50V', '182020', '20'),
('ADP23', '181009', '3'),
('ADP23', '181010', '6'),
('ADP23', '182004', '10'),
('ADP23', '182005', '100'),
('ADP23', '182007', '200'),
('ADP23', '182009', '100'),
('ADP25', '181010', '10'),
('ADP25', '181017', '5'),
('ADP25', '182012', '20'),
('ADP25', '182014', '10'),
('BET26N', '181009', '5'),
('BFT140', '181009', '5'),
('BFT140', '181010', '5'),
('BLUR05R', '181009', '3'),
('BLUR05R', '181018', '4'),
('BLUR05R', '181019', '5'),
('BLUR05R', '182021', '6'),
('CAD17', '181005', '3'),
('CAD21T', '182017', '50'),
('CAD22', '181005', '5'),
('CAD239', '182021', '5'),
('CAD28', '182020', '20'),
('CAD30', '181005', '20'),
('CAS15', '182004', '10'),
('CAS16', '181003', '3'),
('CAS16', '182004', '10'),
('CAS202', '182017', '50'),
('CAS208', '182017', '50'),
('CAS219', '181006', '10'),
('CAS58', '181006', '10'),
('CAS59', '181006', '4'),
('CAS59', '182020', '20'),
('CAS67', '181006', '4'),
('CAS67', '182020', '20'),
('CAS67B', '181006', '5'),
('CAS67B', '182020', '20'),
('CAST57', '181014', '10'),
('CAST70', '181014', '10'),
('CAT18', '181007', '5'),
('CAT18', '182006', '100'),
('CAT18', '182010', '100'),
('CAT23', '181007', '10'),
('CAT23', '182006', '100'),
('CAT24', '182005', '500'),
('CAT24', '182019', '100'),
('CAT40', '182005', '200'),
('CAT60', '181007', '10'),
('CAT60', '182005', '200'),
('CAT60', '182009', '400'),
('CAT60', '182019', '100'),
('CAT80', '181007', '10'),
('CAT80', '182005', '200'),
('CAT80', '182009', '400'),
('CFA210', '182004', '10'),
('CFA280', '182004', '10'),
('CG1B', '181008', '10'),
('CIT05', '181016', '8'),
('CIT05', '182008', '10'),
('CIT08', '181016', '8'),
('CIT08', '182008', '10'),
('CIT15', '182008', '10'),
('CIT20', '181016', '8'),
('CIT20', '182018', '50'),
('CIT27', '182018', '50'),
('COOL02', '181004', '50'),
('COOL02', '182001', '10'),
('COOL02', '182003', '50'),
('COOL02', '182011', '100'),
('COOL05', '181004', '50'),
('COOL05', '182003', '50'),
('COOL05', '182011', '100'),
('COOL20', '182001', '5'),
('DAP15', '182007', '100'),
('DAP70', '182007', '100'),
('EZLOC16', '181002', '2'),
('MCFGL01', '181009', '10'),
('MCFGL01', '181019', '5'),
('PAL3', '181011', '20'),
('PAL4', '181011', '20'),
('PAL4', '182001', '4'),
('PAL5', '181011', '20'),
('PAL5', '181015', '20'),
('PAL5', '182013', '20'),
('PE12', '181010', '5'),
('PE12', '181013', '15'),
('PE12', '181017', '10'),
('PE19', '181017', '10'),
('PE30', '181001', '3'),
('PE30', '181004', '3'),
('PE30', '181010', '5'),
('PE30', '181013', '15'),
('PE30', '181017', '10'),
('PE30', '182003', '10'),
('PE30', '182012', '20'),
('PE30', '182013', '10'),
('PE30', '182014', '40'),
('PE40', '181001', '3'),
('PE40', '181010', '5'),
('PE40', '181013', '15'),
('PE40', '181017', '10'),
('PE55', '181017', '10'),
('PLAK7', '181018', '4'),
('PLAK7', '182021', '4'),
('PPB32C', '181008', '2'),
('PPB32C', '182003', '5'),
('PPB32C', '182011', '10'),
('PPB32C', '182020', '20'),
('SCEL1', '181002', '2'),
('SCEL1', '181008', '3');

-- --------------------------------------------------------

--
-- Structure de la table `detail_livr_c`
--

CREATE TABLE `detail_livr_c` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_LIVRAISON_C` decimal(6,0) NOT NULL,
  `QUANTITE_LIVR_C` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `detail_livr_f`
--

CREATE TABLE `detail_livr_f` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_LIVRAISON_F` decimal(6,0) NOT NULL,
  `QUANTITE_LIVR_F` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `detail_livr_f`
--

INSERT INTO `detail_livr_f` (`CODE_PRODUIT`, `NO_LIVRAISON_F`, `QUANTITE_LIVR_F`) VALUES
('1005NL', '181001', '2800'),
('1005NL', '182001', '700'),
('20012', '182019', '400'),
('20019', '182019', '400'),
('20030', '182019', '400'),
('20040', '182019', '400'),
('20055', '182019', '400'),
('4DVX114', '182013', '50'),
('4DVX18', '182013', '50'),
('4DVX245', '182013', '80'),
('AD50B', '181015', '50'),
('AD50B', '182015', '50'),
('AD50J', '181015', '50'),
('AD50J', '182015', '50'),
('AD50N', '181015', '50'),
('AD50N', '182015', '50'),
('AD50O', '181015', '50'),
('AD50O', '182015', '50'),
('AD50R', '181015', '50'),
('AD50R', '182015', '50'),
('AD50V', '181015', '50'),
('AD50V', '182015', '50'),
('ADP23', '181015', '100'),
('ADP23', '182015', '100'),
('ADP25', '181016', '100'),
('ADP25', '182016', '100'),
('ADP26', '181016', '100'),
('ADP26', '182016', '100'),
('BET15N', '182017', '200'),
('BET26N', '182017', '200'),
('BFT140', '182017', '200'),
('BFT140', '182018', '100'),
('BLUR05R', '181014', '100'),
('CAD17', '181003', '60'),
('CAD17', '182005', '60'),
('CAD21', '181003', '40'),
('CAD21A', '181003', '30'),
('CAD21B', '182005', '200'),
('CAD22', '181005', '50'),
('CAD22', '182003', '80'),
('CAD239', '181004', '100'),
('CAD28', '181005', '50'),
('CAD28', '182003', '40'),
('CAD28', '182005', '100'),
('CAD30', '181005', '100'),
('CAD30', '182003', '40'),
('CAS15', '182005', '100'),
('CAS58', '181004', '200'),
('CAS67', '181003', '100'),
('CAS67', '181004', '100'),
('CAS67', '182003', '100'),
('CAS67B', '181004', '100'),
('CAST56', '181008', '200'),
('CAST56', '182008', '300'),
('CAST57', '181008', '100'),
('CAST57', '182008', '100'),
('CAST70', '181008', '160'),
('CAST70', '182008', '300'),
('CAT18', '181005', '100'),
('CAT18', '182005', '200'),
('CAT22', '182005', '150'),
('CAT24', '181005', '50'),
('CAT24', '182005', '100'),
('CAT80', '181005', '30'),
('CFA210', '182005', '100'),
('CFA280', '182005', '60'),
('CG1B', '181007', '50'),
('CG1B', '182007', '50'),
('CG6B', '181007', '20'),
('CG6B', '182007', '20'),
('CIT05', '181013', '50'),
('CIT05', '182013', '50'),
('CIT15', '181013', '50'),
('CIT15', '182013', '50'),
('CIT27', '181013', '100'),
('CIT27', '182013', '100'),
('CLIC40', '181010', '50'),
('CLIC40', '181011', '50'),
('CLIC40', '182010', '50'),
('CLIC40', '182011', '50'),
('CLIC60', '181010', '40'),
('CLIC60', '182010', '40'),
('COOL02', '182004', '100'),
('COOL05', '182004', '100'),
('COOL10', '182004', '200'),
('COOL20', '182004', '100'),
('EZLOC16', '181001', '200'),
('EZLOC16', '182001', '100'),
('MCFGL01', '181001', '100'),
('MCFGL01', '181014', '100'),
('MCFGL01', '182001', '50'),
('PAL3', '181010', '200'),
('PAL3', '181012', '100'),
('PAL3', '182010', '200'),
('PAL3', '182012', '100'),
('PAL4', '181002', '60'),
('PAL4', '182002', '100'),
('PAL5', '181002', '100'),
('PAL5', '182002', '100'),
('PE12', '182018', '400'),
('PE19', '182018', '250'),
('PE30', '182018', '350'),
('PE40', '182018', '400'),
('PE55', '182018', '400'),
('PLAK1', '181016', '200'),
('PLAK1', '182014', '100'),
('PLAK1', '182016', '200'),
('PLAK1511', '181014', '50'),
('PLAK1919', '181016', '200'),
('PLAK1919', '182014', '50'),
('PLAK1919', '182016', '150'),
('PLAK3', '181016', '200'),
('PLAK3', '182014', '100'),
('PLAK3', '182016', '200'),
('PLAK7', '181014', '50'),
('PLAK7', '182014', '50'),
('PPB32C', '181007', '800'),
('PPB32C', '182006', '850'),
('PPB32C', '182007', '900'),
('PPB43C', '181007', '900'),
('PPB43C', '182006', '500'),
('PPB43C', '182007', '1000'),
('PRF33', '181006', '300'),
('PRF33', '181009', '500'),
('PRF33', '182006', '200'),
('PRF33', '182009', '300'),
('PRF43', '181006', '500'),
('PRF43', '181009', '300'),
('PRF43', '182006', '200'),
('PRF43', '182009', '300'),
('PRF63', '181006', '200'),
('SCF7000', '181001', '200'),
('SCF7000', '182019', '500'),
('TOR12', '182019', '400'),
('TOR19', '182019', '250'),
('TOR30', '182019', '300'),
('TOR40', '182019', '300'),
('TOR55', '182019', '400');

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `NO_EMPLACEMENT` decimal(3,0) NOT NULL,
  `HANGAR` decimal(1,0) DEFAULT NULL,
  `ALLEE` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`NO_EMPLACEMENT`, `HANGAR`, `ALLEE`) VALUES
('1', '1', '3'),
('2', '1', '6'),
('3', '2', '3'),
('4', '1', '1'),
('5', '2', '21'),
('6', '2', '1'),
('7', '2', '6'),
('8', '1', '11'),
('9', '1', '4'),
('10', '1', '8'),
('11', '2', '9'),
('12', '1', '10'),
('13', '2', '18'),
('14', '1', '2'),
('15', '1', '7'),
('16', '2', '12'),
('17', '1', '12'),
('18', '1', '9'),
('19', '2', '15'),
('20', '1', '5');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `NO_FOURNISSEUR` decimal(3,0) NOT NULL,
  `NOM_FOURNISSEUR` varchar(50) DEFAULT NULL,
  `NORUE` varchar(10) DEFAULT NULL,
  `RUE` varchar(100) DEFAULT NULL,
  `CPOSTAL` decimal(5,0) DEFAULT NULL,
  `VILLE` varchar(100) DEFAULT NULL,
  `NOTEL` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`NO_FOURNISSEUR`, `NOM_FOURNISSEUR`, `NORUE`, `RUE`, `CPOSTAL`, `VILLE`, `NOTEL`, `EMAIL`) VALUES
('1', 'Carton Nylon Cotton', '146', 'Rue Montmartre', '75002', 'Paris', '0148010245', 'contact@carton-nylon-coton.fr'),
('2', 'Multi Services Carton', '9', 'Boulevard Georges Méliès', '94356', 'Villiers-sur-Marne', '0963575146', 'msc@multi-services-carton.com'),
('3', 'Boxs', '25', 'Rue Saint-Yves', '75014', 'Paris', '0145393681', 'info@boxs.fr'),
('4', 'Gatine', '5', 'Rue Jezanne', '78711', 'Mantes-la-Ville', '0130920786', 'b.gatine@gatine.fr'),
('5', 'Cartonnage Turquet Bos', '17', 'Rue des Hortensias', '60110', 'Amblainville', '0344521365', 'devis1@turquet-bos.fr '),
('6', 'Carton Service', '14', 'Impasse des Moines', '91410', 'Dourdan', '0164593224', NULL),
('7', 'AK Sarl Emballages', '12', 'Rue Bayen', '75017', 'Paris', '0147646390', 'info@akemballages.com'),
('8', 'Hirschfeld Emballages', '6', 'Parc des Fontenelles', '78870', 'Bailly', '0130565548', NULL),
('9', 'Somater Conditionnements', '98', 'Route de la Reine', '92100', 'Boulogne-Billancourt', '0146056507', NULL),
('10', 'Aluplast', '9', 'Route de Bu', '78550', 'Houdan', '0134942545', 'contact@aluplast.fr'),
('11', 'Sedic Vitrafix', '22', 'Avenue de la Division Leclerc', '93017', 'Bobigny', '0148958919', 'contact@sedic-vitrafix.com'),
('12', 'Luxenvel', '25', 'Boulevard Armand Hayem', '95680', 'Montlignon', '0134160582', 'contact@luxenvel.fr'),
('13', 'Feralco', '18', 'Rue Goubet', '75019', 'Paris', '0144525570', 'contact@feralco.fr'),
('14', 'Pal consulting', '14', 'Rue des Rosiers', '78500', 'Sartrouville', '0185084555', NULL),
('15', 'PMO Palettes', '5', 'Avenue Ambroise Croizat', '91130', 'Ris-Orangis', '0160155719', 'contact@pmo-palettes.fr'),
('16', 'Polybel', '60', 'rue du Moulin du Président', '89000', 'Auxerre', '0386949005', 'contact@polybel.fr'),
('17', 'Expepack', '176', 'rue du Buisson', '59700', 'Marq en Baroeul', '0820200745', 'contact@expepack.fr'),
('18', 'FROMM France', NULL, 'Rue de l\'Aviation', '21121', 'Darois', '0380356767', 'contact@fromm.fr'),
('19', 'GETRA', '29', 'Rue de la Gare', '88120', 'Saint Ame', '0329262600', 'contact@pmo-palettes.fr');

-- --------------------------------------------------------

--
-- Structure de la table `livraison_c`
--

CREATE TABLE `livraison_c` (
  `NO_LIVRAISON_C` decimal(6,0) NOT NULL,
  `NO_COMMANDE` decimal(6,0) NOT NULL,
  `DATE_LIVRAISON_C` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livraison_f`
--

CREATE TABLE `livraison_f` (
  `NO_LIVRAISON_F` decimal(6,0) NOT NULL,
  `NO_ACHAT` decimal(6,0) NOT NULL,
  `DATE_LIVRAISON_F` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `livraison_f`
--

INSERT INTO `livraison_f` (`NO_LIVRAISON_F`, `NO_ACHAT`, `DATE_LIVRAISON_F`) VALUES
('181001', '18101', '2018-01-21'),
('181002', '18102', '2018-01-28'),
('181003', '18103', '2018-02-08'),
('181004', '18104', '2018-03-19'),
('181005', '18105', '2018-03-22'),
('181006', '18106', '2018-04-21'),
('181007', '18107', '2018-04-26'),
('181008', '18108', '2018-04-26'),
('181009', '18109', '2018-05-20'),
('181010', '18110', '2018-05-20'),
('181011', '18111', '2018-05-26'),
('181012', '18112', '2018-06-09'),
('181013', '18113', '2018-06-10'),
('181014', '18114', '2018-06-16'),
('181015', '18115', '2018-06-16'),
('181016', '18116', '2018-06-19'),
('182001', '18201', '2018-07-11'),
('182002', '18202', '2018-08-16'),
('182003', '18203', '2018-08-31'),
('182004', '18204', '2018-09-09'),
('182005', '18205', '2018-09-09'),
('182006', '18206', '2018-09-21'),
('182007', '18207', '2018-09-26'),
('182008', '18208', '2018-09-26'),
('182009', '18209', '2018-10-10'),
('182010', '18210', '2018-10-10'),
('182011', '18211', '2018-10-10'),
('182012', '18212', '2018-10-12'),
('182013', '18213', '2018-10-16'),
('182014', '18214', '2018-10-16'),
('182015', '18215', '2018-10-16'),
('182016', '18216', '2018-11-11'),
('182017', '18217', '2018-11-11'),
('182018', '18218', '2018-11-11'),
('182019', '18219', '2018-11-11'),
('182020', '18220', '2018-11-28');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `NO_MATIERE` decimal(3,0) NOT NULL,
  `NOM_MATIERE` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`NO_MATIERE`, `NOM_MATIERE`) VALUES
('1', 'Carton'),
('2', 'Métal'),
('3', 'Plastique'),
('4', 'Bois'),
('5', 'Colle'),
('6', 'Encre'),
('7', 'Bulles deprotection'),
('8', 'Polystérène'),
('9', 'Papier craft'),
('10', 'Cordelette');

-- --------------------------------------------------------

--
-- Structure de la table `mouvement_stock`
--

CREATE TABLE `mouvement_stock` (
  `NO_MOUVEMENT` decimal(6,0) NOT NULL,
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `TYPE_MOUVEMENT` char(1) DEFAULT NULL,
  `DATE_MOUVEMENT` date DEFAULT NULL,
  `QUANTITE_MOUVEMENT` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_CATEGORIE` decimal(2,0) NOT NULL,
  `NO_EMPLACEMENT` decimal(3,0) NOT NULL,
  `UTILISATION` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `QUANTITE_STOCK` decimal(4,0) DEFAULT NULL,
  `DATE_STOCK` date DEFAULT NULL,
  `COMMENT_PRODUIT` varchar(100) DEFAULT NULL,
  `LONGEUR` decimal(5,2) DEFAULT NULL,
  `LARGEUR` decimal(5,2) DEFAULT NULL,
  `HAUTEUR` decimal(5,2) DEFAULT NULL,
  `PRIX_PIECE_HT` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`CODE_PRODUIT`, `NO_CATEGORIE`, `NO_EMPLACEMENT`, `UTILISATION`, `DESCRIPTION`, `QUANTITE_STOCK`, `DATE_STOCK`, `COMMENT_PRODUIT`, `LONGEUR`, `LARGEUR`, `HAUTEUR`, `PRIX_PIECE_HT`) VALUES
('1005NL', '10', '18', NULL, 'Lien autobloquant', '20', '2018-12-05', 'vendu par colis de 1000', '100.00', '2.50', NULL, '15.80'),
('20012', '12', '15', NULL, 'Sachet craft - poignées plates', '150', '2018-12-03', 'vendu par colis de 25', '12.00', '16.00', NULL, '18.65'),
('20019', '12', '15', NULL, 'Sachet craft - poignées plates', '150', '2018-12-03', 'vendu par colis de 25', '19.00', '27.00', NULL, '20.75'),
('20030', '12', '15', NULL, 'Sachet craft - poignées plates', '50', '2018-12-03', 'vendu par colis de 25', '30.00', '25.00', NULL, '20.35'),
('20040', '12', '15', NULL, 'Sachet craft - poignées plates', '100', '2018-12-03', 'vendu par colis de 25', '40.00', '32.00', NULL, '28.25'),
('20055', '12', '15', NULL, 'Sachet craft - poignées plates', '50', '2018-12-03', 'vendu par colis de 25', '55.00', '45.00', NULL, '53.90'),
('4DVX114', '3', '12', NULL, 'Maximum 70 Kg', '53', '2018-12-05', 'vendu à l\'unité', '80.00', '60.00', '60.00', '101.00'),
('4DVX18', '3', '12', NULL, 'Maximum 10 Kg', '66', '2018-12-05', 'vendu à l\'unité', '40.00', '30.00', '40.00', '47.90'),
('4DVX245', '3', '12', NULL, 'Maximum 120 Kg', '62', '2018-12-05', 'vendu à l\'unité', '120.00', '80.00', '80.00', '170.00'),
('4DVX37', '3', '12', NULL, 'Maximum 20 Kg', '75', '2018-12-05', 'vendu à l\'unité', '60.00', '40.00', '40.00', '59.90'),
('A07', '14', '12', NULL, NULL, '50', '2018-12-05', 'vendu par 20', '100.00', '40.00', '50.00', '5.38'),
('A09G', '14', '12', NULL, 'Maximum 20 Kg', '101', '2018-12-05', 'vendu par 20', '60.00', '40.00', '30.00', '3.41'),
('A13', '14', '12', NULL, NULL, '96', '2018-12-05', 'vendu par 20', '40.00', '30.00', '20.00', '0.99'),
('A14G', '14', '12', NULL, 'Maximum 20 Kg', '28', '2018-12-05', 'vendu par 20', '37.00', '30.00', '20.00', '1.73'),
('A15', '14', '12', NULL, 'Maximum 30 Kg', '87', '2018-12-05', 'vendu par 20', '30.00', '19.00', '18.00', '0.78'),
('A16', '14', '12', NULL, 'Maximum 30 Kg', '30', '2018-12-05', 'vendu par 20', '29.00', '19.00', '10.50', '0.64'),
('AD50B', '5', '1', NULL, 'Adhésif bleu', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('AD50J', '5', '1', NULL, 'Adhésif jaune', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('AD50N', '5', '1', NULL, 'Adhésif noir', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('AD50O', '5', '1', NULL, 'Adhésif orange', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('AD50R', '5', '1', NULL, 'Adhésif rouge', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('AD50V', '5', '1', NULL, 'Adhésif vert', '50', '2018-12-05', 'vendu par colis de 6', '50.00', '66.00', NULL, '5.56'),
('ADP23', '5', '1', NULL, 'Adhésif couleur Havane', '184', '2018-12-05', 'vendu par colis de 36', '50.00', '66.00', NULL, '1.54'),
('ADP25', '5', '1', NULL, 'Adhésif transparant', '205', '2018-12-05', 'vendu par colis de 36', '50.00', '100.00', NULL, '3.10'),
('ADP26', '5', '1', NULL, 'Adhésif blanc', '154', '2018-12-05', 'vendu par colis de 36', '50.00', '100.00', NULL, '3.07'),
('BET15N', '12', '15', 'pour cosmétique, layette', 'Boîte cadeau', '70', '2018-12-03', 'vendu par colis de 10', '22.00', '22.00', '8.00', '29.90'),
('BET26N', '12', '15', 'pour linge de maison, objets déco', 'Boîte cadeau', '150', '2018-12-03', 'vendu par colis de 10', '27.00', '27.00', '10.00', '39.40'),
('BFT140', '12', '15', 'pour cosmétiques, lingerie', 'Boîte cadeau', '100', '2018-12-03', 'vendu par colis de 25', '14.00', '14.00', '16.50', '42.95'),
('BLUR05R', '5', '1', NULL, 'Papier bulle', '42', '2018-12-05', 'vendu par rouleu 60 cm', '50.00', '100.00', NULL, '28.95'),
('CAD17', '4', '1', NULL, 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 10', '50.00', '31.00', '31.00', '2.07'),
('CAD201', '13', '20', 'pour édition', 'Maximum 30 Kg', '87', '2018-12-05', 'vendu par 15', '25.00', '20.00', '15.00', '1.12'),
('CAD21', '4', '4', NULL, 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 15', '50.00', '40.00', '40.00', '2.61'),
('CAD21A', '4', '18', 'pour UC + écran plat 17', 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 10', '50.00', '50.00', '20.00', '4.14'),
('CAD21B', '4', '18', 'pour imprimante + écran plat 17', 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 10', '50.00', '50.00', '30.00', '4.48'),
('CAD21S', '13', '2', NULL, NULL, '87', '2018-12-05', 'vendu par 20', '48.00', '31.00', '33.00', '3.40'),
('CAD21T', '13', '8', NULL, NULL, '87', '2018-12-05', 'vendu par 20', '46.00', '36.00', '35.00', '3.57'),
('CAD22', '4', '9', NULL, 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 10', '50.00', '50.00', '50.00', '3.68'),
('CAD239', '13', '15', 'textile', 'Maximum 40 Kg', '87', '2018-12-05', 'vendu par 10', '80.00', '50.00', '50.00', '7.38'),
('CAD28', '4', '4', NULL, 'Maximum 30 Kg', '250', '2018-12-02', 'vendu en paquet de 10', '60.00', '40.00', '30.00', '2.68'),
('CAD30', '4', '1', NULL, 'Maximum 40 Kg', '250', '2018-12-02', 'vendu en paquet de 5', '60.00', '60.00', '60.00', '7.07'),
('CAS15', '8', '14', 'format A4 - tablette tactile', 'Maximum 10 Kg', '450', '2018-12-05', 'vendu en paquet de 25', '31.00', '21.50', '10.00', '0.53'),
('CAS15A', '8', '15', 'format A4', 'Maximum 10 Kg', '300', '2018-12-05', 'vendu en paquet de 25', '31.00', '22.00', '15.00', '0.56'),
('CAS16', '8', '12', NULL, 'Maximum 10 Kg', '500', '2018-12-05', 'vendu en paquet de 25', '30.00', '20.00', '17.00', '0.53'),
('CAS202', '13', '17', 'format A6', 'Maximum 10 Kg', '87', '2018-12-05', 'vendu par 25', '16.00', '12.00', '11.00', '0.46'),
('CAS204', '13', '17', '10 Dvd ou B-ray', 'Maximum 10 Kg', '87', '2018-12-05', 'vendu par 25', '20.00', '15.00', '15.00', '0.57'),
('CAS208', '13', '8', 'format A5+', 'Maximum 20 Kg', '87', '2018-12-05', 'vendu par 25', '25.00', '16.50', '30.00', '0.67'),
('CAS219', '13', '1', NULL, 'Maximum 10 Kg', '87', '2018-12-05', 'vendu par 25', '30.00', '30.00', '30.00', '1.74'),
('CAS58', '8', '9', 'chaussures', 'Maximum 20 Kg', '230', '2018-12-05', 'vendu en paquet de 20', '60.00', '40.00', '20.00', '3.53'),
('CAS59', '8', '17', 'textile', 'Maximum 20 Kg', '299', '2018-12-05', 'vendu en paquet de 20', '60.00', '40.00', '30.00', '5.58'),
('CAS67', '8', '9', 'textile', 'Maximum 20 Kg', '560', '2018-12-05', 'vendu en paquet de 20', '80.00', '50.00', '40.00', '1.78'),
('CAS67B', '8', '17', 'textile', 'Maximum 20 Kg', '510', '2018-12-05', 'vendu en paquet de 15', '80.00', '50.00', '50.00', '0.62'),
('CAST56', '16', '8', NULL, 'Maximum 30 Kg', '225', '2018-12-05', 'vendu par 20', '60.00', '30.00', '20.00', '1.78'),
('CAST57', '16', '8', NULL, 'Maximum 30 Kg', '135', '2018-12-05', 'vendu par 20', '60.00', '30.00', '40.00', '2.18'),
('CAST70', '16', '8', NULL, 'Maximum 30 Kg', '150', '2018-12-05', 'vendu par 25', '40.00', '30.00', '20.00', '1.23'),
('CAT04', '11', '1', NULL, 'Maximum 240 Kg', '75', '2018-12-05', 'vendu par 5', '46.00', '26.00', '26.00', '6.78'),
('CAT18', '11', '4', NULL, 'Maximum 260 Kg', '25', '2018-12-05', 'vendu par 10', '47.00', '37.00', '34.00', '7.53'),
('CAT22', '11', '9', NULL, 'Maximum 300 Kg', '100', '2018-12-05', 'vendu par 5', '77.00', '37.00', '37.00', '14.60'),
('CAT23', '11', '14', NULL, 'Maximum 330 Kg', '50', '2018-12-05', 'vendu par 5', '77.00', '57.00', '45.00', '15.65'),
('CAT24', '11', '20', NULL, 'Maximum 320 Kg', '50', '2018-12-05', 'vendu par 5', '77.00', '57.00', '57.00', '21.53'),
('CAT40', '11', '2', NULL, 'Maximum 500 Kg', '56', '2018-12-05', 'vendu par 2', '117.00', '77.00', '65.00', '33.95'),
('CAT60', '11', '15', NULL, 'Maximum 500 Kg', '23', '2018-12-05', 'vendu par 2', '117.00', '77.00', '84.00', '37.93'),
('CAT80', '11', '10', NULL, 'Maximum 500 Kg', '87', '2018-12-05', 'vendu par 2', '117.00', '97.00', '90.00', '49.30'),
('CFA210', '8', '20', NULL, 'Maximum 20 Kg', '120', '2018-12-05', 'vendu en paquet de 20', '20.00', '15.00', '15.00', '2.19'),
('CFA280', '8', '20', NULL, 'Maximum 20 Kg', '250', '2018-12-05', 'vendu en paquet de 20', '39.00', '29.00', '28.00', '1.53'),
('CG1B', '17', '4', NULL, 'Pochette navette à soufflet', '56', '2018-12-05', 'vendu à l\'unité', '38.00', '33.00', NULL, '43.10'),
('CG6B', '17', '14', NULL, 'Pochette navette à soufflet', '43', '2018-12-05', 'vendu à l\'unité', '50.00', '40.00', NULL, '59.10'),
('CIT05', '18', '10', NULL, 'Maximum 100 g', '75', '2018-12-05', 'vendu par 25', '18.00', '18.00', '20.00', '2.91'),
('CIT08', '18', '10', NULL, 'Maximum 200 g', '125', '2018-12-05', 'vendu par 25', '30.00', '20.00', '17.00', '3.90'),
('CIT15', '18', '10', NULL, 'Maximum 280 g', '200', '2018-12-05', 'vendu par 25', '15.00', '40.00', '30.00', '5.81'),
('CIT20', '18', '10', NULL, 'Maximum 340 g', '50', '2018-12-05', 'vendu par 25', '28.00', '28.00', '28.00', '6.60'),
('CIT27', '18', '11', NULL, 'Maximum 350 g', '150', '2018-12-05', 'vendu par 25', '30.00', '30.00', '30.00', '7.87'),
('CLIC40', '7', '11', NULL, 'Palette carton clic-clac 6000 Kg', '40', '2018-12-03', 'vendu à l\'unité', '600.00', '400.00', '120.00', '4.20'),
('CLIC60', '7', '11', NULL, 'Palette carton clic-clac 12000 Kg', '30', '2018-12-03', 'vendu à l\'unité', '800.00', '600.00', '120.00', '5.99'),
('COOL02', '15', '2', NULL, 'Maximum 560 g', '220', '2018-12-05', 'vendu à l\'unité', '20.00', '10.00', '10.00', '34.60'),
('COOL05', '15', '2', NULL, 'Maximum 680 g', '325', '2018-12-05', 'vendu à l\'unité', '30.00', '20.50', '20.50', '39.45'),
('COOL10', '15', '2', NULL, 'Maximum 1160 g', '184', '2018-12-05', 'vendu à l\'unité', '30.00', '18.00', '19.00', '55.70'),
('COOL20', '15', '2', NULL, 'Maximum 1700 g', '64', '2018-12-05', 'vendu à l\'unité', '40.00', '20.00', '25.00', '74.25'),
('DAP15', '3', '12', NULL, 'Maximum 4.4 Kg', '87', '2018-12-05', 'vendu par 5', '15.00', '15.00', '30.00', '5.38'),
('DAP20', '3', '12', NULL, 'Maximum 11 Kg', '87', '2018-12-05', 'vendu par 5', '20.00', '20.00', '30.00', '7.25'),
('DAP40', '3', '12', NULL, 'Maximum 30 Kg', '87', '2018-12-05', 'vendu par 5', '40.00', '30.00', '30.00', '10.25'),
('DAP70', '3', '12', NULL, 'Maximum 87 Kg', '87', '2018-12-05', 'vendu par 5', '70.00', '40.00', '50.00', '23.50'),
('EZLOC16', '10', '18', NULL, 'Scellé haute sécurité', '40', '2018-12-05', 'vendu par colis de 20', '300.00', '16.00', NULL, '40.20'),
('MCFGL01', '5', '1', NULL, 'Bulles polystérène', '60', '2018-12-05', 'vendu par sac', NULL, NULL, NULL, '47.95'),
('PAL3', '7', '11', NULL, 'Palette à claire-voie', '100', '2018-12-03', 'vendu par 5', '800.00', '800.00', '123.00', '15.65'),
('PAL4', '7', '11', NULL, 'Palette à claire-voie', '75', '2018-12-03', 'vendu par 5', '900.00', '900.00', '123.00', '20.95'),
('PAL5', '7', '11', NULL, 'Palette à claire-voie', '120', '2018-12-03', 'vendu par 5', '600.00', '800.00', '140.00', '10.30'),
('PE12', '12', '15', NULL, 'Sachet craft - poignées cordes', '125', '2018-12-03', 'vendu par colis de 25', '12.00', '16.00', NULL, '20.65'),
('PE19', '12', '15', NULL, 'Sachet craft - poignées cordes', '50', '2018-12-03', 'vendu par colis de 25', '19.00', '27.00', NULL, '22.75'),
('PE30', '12', '15', NULL, 'Sachet craft - poignées cordes', '75', '2018-12-03', 'vendu par colis de 25', '30.00', '25.00', NULL, '22.40'),
('PE40', '12', '15', NULL, 'Sachet craft - poignées cordes', '100', '2018-12-03', 'vendu par colis de 25', '40.00', '32.00', NULL, '41.25'),
('PE55', '12', '15', NULL, 'Sachet craft - poignées cordes', '50', '2018-12-03', 'vendu par colis de 25', '55.00', '45.00', NULL, '56.90'),
('PLAK1', '5', '1', NULL, 'Plaque carton ondulé', '250', '2018-12-05', 'vendu par 50', '30.00', '30.00', NULL, '15.95'),
('PLAK1511', '5', '1', NULL, 'Plaque carton ondulé', '150', '2018-12-05', 'vendu par 50', '12.00', '16.00', NULL, '4.99'),
('PLAK1919', '5', '1', NULL, 'Plaque carton ondulé', '200', '2018-12-05', 'vendu par 50', '20.00', '20.00', NULL, '7.80'),
('PLAK3', '5', '1', NULL, 'Plaque carton ondulé', '200', '2018-12-05', 'vendu par 50', '45.00', '45.00', NULL, '20.30'),
('PLAK7', '5', '1', NULL, 'Plaque carton ondulé', '50', '2018-12-05', 'vendu par 25', '77.00', '117.00', NULL, '33.95'),
('PPB32C', '17', '4', NULL, 'Pochette kraft', '500', '2018-12-05', 'vendu par 25', '48.00', '32.00', NULL, '137.00'),
('PPB43C', '17', '4', NULL, 'Pochette kraft', '300', '2018-12-05', 'vendu par 25', '22.00', '32.00', NULL, '154.00'),
('PRF33', '17', '4', NULL, 'Pochette kraft', '400', '2018-12-05', 'vendu par 25', '229.00', '324.00', NULL, '61.70'),
('PRF43', '17', '4', NULL, 'Pochette kraft', '200', '2018-12-05', 'vendu par 25', '260.00', '330.00', NULL, '69.50'),
('PRF63', '17', '4', NULL, 'Pochette kraft', '200', '2018-12-05', 'vendu par 25', '340.00', '465.00', NULL, '172.00'),
('SCEL1', '10', '18', NULL, 'Scellé à tigre crantée', '32', '2018-12-05', 'vendu par colis de 100', '16.00', '0.28', NULL, '23.20'),
('SCF7000', '10', '18', NULL, 'Scellé feuillard', '25', '2018-12-05', 'vendu par colis de 50', NULL, NULL, NULL, '1.75'),
('TOR12', '12', '15', NULL, 'Sachet craft - poignées torsadées', '50', '2018-12-03', 'vendu par colis de 25', '12.00', '16.00', NULL, '19.65'),
('TOR19', '12', '15', NULL, 'Sachet craft - poignées torsadées', '150', '2018-12-03', 'vendu par colis de 25', '19.00', '27.00', NULL, '21.75'),
('TOR30', '12', '15', NULL, 'Sachet craft - poignées torsadées', '75', '2018-12-03', 'vendu par colis de 25', '30.00', '25.00', NULL, '21.35'),
('TOR40', '12', '15', NULL, 'Sachet craft - poignées torsadées', '50', '2018-12-03', 'vendu par colis de 25', '40.00', '32.00', NULL, '29.25'),
('TOR55', '12', '15', NULL, 'Sachet craft - poignées torsadées', '25', '2018-12-03', 'vendu par colis de 25', '55.00', '45.00', NULL, '54.90');

-- --------------------------------------------------------

--
-- Structure de la table `proposer`
--

CREATE TABLE `proposer` (
  `CODE_PRODUIT` varchar(8) NOT NULL,
  `NO_FOURNISSEUR` decimal(3,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `proposer`
--

INSERT INTO `proposer` (`CODE_PRODUIT`, `NO_FOURNISSEUR`) VALUES
('4DVX114', '1'),
('4DVX18', '1'),
('4DVX245', '1'),
('4DVX37', '1'),
('A07', '1'),
('A09G', '1'),
('A13', '1'),
('A14G', '1'),
('A15', '1'),
('A16', '1'),
('BET15N', '1'),
('BET26N', '1'),
('BFT140', '1'),
('CAD17', '1'),
('CAD201', '1'),
('CAD21', '1'),
('CAD21A', '1'),
('CAD21B', '1'),
('CAD21S', '1'),
('CAD21T', '1'),
('CAD22', '1'),
('CAD239', '1'),
('CAD28', '1'),
('CAD30', '1'),
('CAS202', '1'),
('CAS204', '1'),
('CAS208', '1'),
('CAS219', '1'),
('CIT05', '1'),
('CIT15', '1'),
('CIT20', '1'),
('CIT27', '1'),
('CLIC40', '1'),
('CLIC60', '1'),
('DAP15', '1'),
('DAP20', '1'),
('DAP40', '1'),
('DAP70', '1'),
('A07', '2'),
('A09G', '2'),
('A13', '2'),
('A14G', '2'),
('A15', '2'),
('A16', '2'),
('CAD201', '2'),
('CAD21S', '2'),
('CAD21T', '2'),
('CAD239', '2'),
('CAS202', '2'),
('CAS204', '2'),
('CAS208', '2'),
('CAS219', '2'),
('CAT04', '2'),
('CAT18', '2'),
('CAT22', '2'),
('CAT23', '2'),
('CAT24', '2'),
('CAT40', '2'),
('CAT60', '2'),
('CAT80', '2'),
('CIT08', '2'),
('CLIC40', '2'),
('CLIC60', '2'),
('PLAK1', '2'),
('PLAK1511', '2'),
('PLAK1919', '2'),
('PLAK3', '2'),
('PLAK7', '2'),
('A07', '3'),
('A09G', '3'),
('A13', '3'),
('A14G', '3'),
('A15', '3'),
('A16', '3'),
('CAS15', '3'),
('CAS15A', '3'),
('CAS16', '3'),
('CAS58', '3'),
('CAS59', '3'),
('CAS67', '3'),
('CAS67B', '3'),
('CAT40', '3'),
('CAT60', '3'),
('CAT80', '3'),
('CFA210', '3'),
('CFA280', '3'),
('PLAK1', '3'),
('PLAK1511', '3'),
('PLAK1919', '3'),
('PLAK3', '3'),
('PLAK7', '3'),
('CAS15', '4'),
('CAS15A', '4'),
('CAS16', '4'),
('CAS58', '4'),
('CAS59', '4'),
('CAS67', '4'),
('CAS67B', '4'),
('CAST56', '4'),
('CAST57', '4'),
('CAST70', '4'),
('CIT05', '4'),
('CIT08', '4'),
('CIT15', '4'),
('CIT20', '4'),
('CIT27', '4'),
('CLIC40', '4'),
('CLIC60', '4'),
('COOL02', '4'),
('COOL05', '4'),
('COOL10', '4'),
('COOL20', '4'),
('BET15N', '5'),
('BET26N', '5'),
('BFT140', '5'),
('CAD21A', '5'),
('CAD21B', '5'),
('CAST56', '5'),
('CAST57', '5'),
('CAST70', '5'),
('CAT40', '5'),
('CAT60', '5'),
('CAT80', '5'),
('COOL02', '5'),
('COOL05', '5'),
('COOL10', '5'),
('COOL20', '5'),
('CFA210', '6'),
('CFA280', '6'),
('COOL02', '6'),
('COOL05', '6'),
('COOL10', '6'),
('COOL20', '6'),
('CG1B', '11'),
('CG6B', '11'),
('PE12', '11'),
('PE19', '11'),
('PE30', '11'),
('PE40', '11'),
('PE55', '11'),
('PPB32C', '11'),
('PPB43C', '11'),
('PRF33', '11'),
('PRF43', '11'),
('PRF63', '11'),
('20012', '12'),
('20019', '12'),
('20030', '12'),
('20040', '12'),
('20055', '12'),
('CG1B', '12'),
('CG6B', '12'),
('PPB32C', '12'),
('PPB43C', '12'),
('PRF33', '12'),
('PRF43', '12'),
('PRF63', '12'),
('TOR12', '12'),
('TOR19', '12'),
('TOR30', '12'),
('TOR40', '12'),
('TOR55', '12'),
('PAL3', '13'),
('PAL4', '13'),
('PAL5', '13'),
('PAL3', '14'),
('PAL4', '14'),
('PAL5', '14'),
('PAL3', '15'),
('PAL4', '15'),
('PAL5', '15'),
('1005NL', '16'),
('BLUR05R', '16'),
('EZLOC16', '16'),
('MCFGL01', '16'),
('SCEL1', '16'),
('SCF7000', '16'),
('1005NL', '17'),
('AD50B', '17'),
('AD50J', '17'),
('AD50N', '17'),
('AD50O', '17'),
('AD50R', '17'),
('AD50V', '17'),
('ADP23', '17'),
('ADP25', '17'),
('ADP26', '17'),
('BLUR05R', '17'),
('EZLOC16', '17'),
('MCFGL01', '17'),
('SCEL1', '17'),
('SCF7000', '17'),
('AD50B', '18'),
('AD50J', '18'),
('AD50N', '18'),
('AD50O', '18'),
('AD50R', '18'),
('AD50V', '18'),
('ADP23', '18'),
('ADP25', '18'),
('ADP26', '18'),
('BLUR05R', '18'),
('MCFGL01', '18'),
('1005NL', '19'),
('BLUR05R', '19'),
('EZLOC16', '19'),
('MCFGL01', '19'),
('SCEL1', '19'),
('SCF7000', '19');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achat`
--
ALTER TABLE `achat`
  ADD PRIMARY KEY (`NO_ACHAT`),
  ADD KEY `FK_ACHAT_ENVOYER_FOURNISS` (`NO_FOURNISSEUR`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`NO_CATEGORIE`),
  ADD KEY `FK_CATEGORI_EST_CONTE_CATEGORI` (`CAT_NO_CATEGORIE`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`NO_CLIENT`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`NO_COMMANDE`),
  ADD KEY `FK_COMMANDE_PASSER_CLIENT` (`NO_CLIENT`);

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_MATIERE`),
  ADD KEY `FK_COMPOSER_COMPOSER2_MATIERE` (`NO_MATIERE`);

--
-- Index pour la table `detail_achat`
--
ALTER TABLE `detail_achat`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_ACHAT`),
  ADD KEY `FK_DETAIL_A_DETAIL_AC_ACHAT` (`NO_ACHAT`);

--
-- Index pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_COMMANDE`),
  ADD KEY `FK_DETAIL_C_DETAIL_CO_COMMANDE` (`NO_COMMANDE`);

--
-- Index pour la table `detail_livr_c`
--
ALTER TABLE `detail_livr_c`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_LIVRAISON_C`),
  ADD KEY `FK_DETAIL_L_DETAIL_LI_LIVRAISO` (`NO_LIVRAISON_C`);

--
-- Index pour la table `detail_livr_f`
--
ALTER TABLE `detail_livr_f`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_LIVRAISON_F`),
  ADD KEY `FK_DETAIL_L_DETAIL_LI_LIVRAISI` (`NO_LIVRAISON_F`);

--
-- Index pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD PRIMARY KEY (`NO_EMPLACEMENT`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`NO_FOURNISSEUR`);

--
-- Index pour la table `livraison_c`
--
ALTER TABLE `livraison_c`
  ADD PRIMARY KEY (`NO_LIVRAISON_C`),
  ADD KEY `FK_LIVRAISO_TRAITER_COMMANDE` (`NO_COMMANDE`);

--
-- Index pour la table `livraison_f`
--
ALTER TABLE `livraison_f`
  ADD PRIMARY KEY (`NO_LIVRAISON_F`),
  ADD KEY `FK_LIVRAISI_SUIVRE_ACHAT` (`NO_ACHAT`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`NO_MATIERE`);

--
-- Index pour la table `mouvement_stock`
--
ALTER TABLE `mouvement_stock`
  ADD PRIMARY KEY (`NO_MOUVEMENT`),
  ADD KEY `FK_MOUVEMEN_GENERER_PRODUIT` (`CODE_PRODUIT`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`CODE_PRODUIT`),
  ADD KEY `FK_PRODUIT_APPARTENI_CATEGORI` (`NO_CATEGORIE`),
  ADD KEY `FK_PRODUIT_STOCKER_EMPLACEM` (`NO_EMPLACEMENT`);

--
-- Index pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`CODE_PRODUIT`,`NO_FOURNISSEUR`),
  ADD KEY `FK_PROPOSER_PROPOSER2_FOURNISS` (`NO_FOURNISSEUR`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `NO_CLIENT` mediumint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `FK_ACHAT_ENVOYER_FOURNISS` FOREIGN KEY (`NO_FOURNISSEUR`) REFERENCES `fournisseur` (`NO_FOURNISSEUR`);

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_CATEGORI_EST_CONTE_CATEGORI` FOREIGN KEY (`CAT_NO_CATEGORIE`) REFERENCES `categorie` (`NO_CATEGORIE`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_COMMANDE_PASSER_CLIENT` FOREIGN KEY (`NO_CLIENT`) REFERENCES `client` (`NO_CLIENT`);

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `FK_COMPOSER_COMPOSER2_MATIERE` FOREIGN KEY (`NO_MATIERE`) REFERENCES `matiere` (`NO_MATIERE`),
  ADD CONSTRAINT `FK_COMPOSER_COMPOSER_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `detail_achat`
--
ALTER TABLE `detail_achat`
  ADD CONSTRAINT `FK_DETAIL_A_DETAIL_AC_ACHAT` FOREIGN KEY (`NO_ACHAT`) REFERENCES `achat` (`NO_ACHAT`),
  ADD CONSTRAINT `FK_DETAIL_A_DETAIL_AC_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `detail_commande`
--
ALTER TABLE `detail_commande`
  ADD CONSTRAINT `FK_DETAIL_C_DETAIL_CO_COMMANDE` FOREIGN KEY (`NO_COMMANDE`) REFERENCES `commande` (`NO_COMMANDE`),
  ADD CONSTRAINT `FK_DETAIL_C_DETAIL_CO_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `detail_livr_c`
--
ALTER TABLE `detail_livr_c`
  ADD CONSTRAINT `FK_DETAIL_L_DETAIL_LI_LIVRAISO` FOREIGN KEY (`NO_LIVRAISON_C`) REFERENCES `livraison_c` (`NO_LIVRAISON_C`),
  ADD CONSTRAINT `FK_DETAIL_L_DETAIL_LI_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `detail_livr_f`
--
ALTER TABLE `detail_livr_f`
  ADD CONSTRAINT `FK_DETAIL_L_DETAIL_LI_LIVRAISI` FOREIGN KEY (`NO_LIVRAISON_F`) REFERENCES `livraison_f` (`NO_LIVRAISON_F`),
  ADD CONSTRAINT `FK_DETAIL_L_DETAIL_LI_PRODUIT_F` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `livraison_c`
--
ALTER TABLE `livraison_c`
  ADD CONSTRAINT `FK_LIVRAISO_TRAITER_COMMANDE` FOREIGN KEY (`NO_COMMANDE`) REFERENCES `commande` (`NO_COMMANDE`);

--
-- Contraintes pour la table `livraison_f`
--
ALTER TABLE `livraison_f`
  ADD CONSTRAINT `FK_LIVRAISI_SUIVRE_ACHAT` FOREIGN KEY (`NO_ACHAT`) REFERENCES `achat` (`NO_ACHAT`);

--
-- Contraintes pour la table `mouvement_stock`
--
ALTER TABLE `mouvement_stock`
  ADD CONSTRAINT `FK_MOUVEMEN_GENERER_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_PRODUIT_APPARTENI_CATEGORI` FOREIGN KEY (`NO_CATEGORIE`) REFERENCES `categorie` (`NO_CATEGORIE`),
  ADD CONSTRAINT `FK_PRODUIT_STOCKER_EMPLACEM` FOREIGN KEY (`NO_EMPLACEMENT`) REFERENCES `emplacement` (`NO_EMPLACEMENT`);

--
-- Contraintes pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `FK_PROPOSER_PROPOSER2_FOURNISS` FOREIGN KEY (`NO_FOURNISSEUR`) REFERENCES `fournisseur` (`NO_FOURNISSEUR`),
  ADD CONSTRAINT `FK_PROPOSER_PROPOSER_PRODUIT` FOREIGN KEY (`CODE_PRODUIT`) REFERENCES `produit` (`CODE_PRODUIT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
