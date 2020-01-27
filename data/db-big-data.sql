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
-- Base de données : `db-big-data`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `NO_CLIENT` int NOT NULL,
  `NOM_CLIENT` varchar(255) NOT NULL,
  `VILLE` varchar(255) NOT NULL,
  `CPOSTAL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`NO_CLIENT`, `NOM_CLIENT`, `VILLE`, `CPOSTAL`) VALUES
(1, 'Energym', 'Pontoise', '95000'),
(2, 'La clé des champs', 'Vauréal', '95490'),
(3, 'Formalys', 'Saint Germain', '78000'),
(4, 'Cartoooche', 'Paris', '75011'),
(5, 'Jules', 'Paris', '75008'),
(6, 'Mavick', 'Paris', '75015'),
(7, 'Aqualia', 'Paris', '7512'),
(8, 'Palissade', 'Paris', '75017'),
(9, 'Caroll', 'Paris', '75008'),
(10, 'Atelier Micheline', 'Paris', '75002'),
(11, 'Ciamba', 'Paris', '75006'),
(12, 'Antalia', 'Paris', '75017'),
(13, 'Amaurize', 'Paris', '75017'),
(14, '3 Merveilles', 'Paris', '75006'),
(15, 'Arkano', 'Paris', '75005'),
(16, 'Decathlon', 'Villeneuve', '59650'),
(17, 'Castorama', 'Templemars', '59175'),
(18, 'Fnac', 'Onnaing', '59264'),
(19, 'Dalkia France', 'Saint André les Lille', '59350'),
(20, 'Maes', 'Lille', '59000'),
(21, 'Lunginnov', 'Lille', '59000'),
(22, 'Yarzo', 'Lille', '59000'),
(23, 'Meunier', 'Lille', '59000'),
(24, 'Jules', 'Lille', '59800'),
(25, 'Armelle', 'Lille', '59800');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `NO_COMMANDE` int NOT NULL,
  `NO_CLIENT` int NOT NULL,
  `DATE_COMMANDE` text NOT NULL,
  `CODE_PRODUIT` varchar(255) NOT NULL,
  `QUANTITE_COMMANDE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`NO_COMMANDE`, `NO_CLIENT`, `DATE_COMMANDE`, `CODE_PRODUIT`, `QUANTITE_COMMANDE`) VALUES
(181001, 1, '2018-02-02 00:00:00.0', 'PE30', 3),
(181001, 1, '2018-02-02 00:00:00.0', 'PE40', 3),
(181002, 2, '2018-02-03 00:00:00.0', 'EZLOC16', 2),
(181002, 2, '2018-02-03 00:00:00.0', 'SCEL1', 2),
(181003, 3, '2018-02-03 00:00:00.0', 'A14G', 4),
(181003, 3, '2018-02-03 00:00:00.0', 'A15', 4),
(181003, 3, '2018-02-03 00:00:00.0', 'CAS16', 3),
(181004, 1, '2018-04-10 00:00:00.0', 'COOL02', 50),
(181004, 1, '2018-04-10 00:00:00.0', 'COOL05', 50),
(181004, 1, '2018-04-10 00:00:00.0', 'PE30', 3),
(181005, 4, '2018-04-10 00:00:00.0', 'CAD17', 3),
(181005, 4, '2018-04-10 00:00:00.0', 'CAD22', 5),
(181005, 4, '2018-04-10 00:00:00.0', 'CAD30', 20),
(181006, 5, '2018-04-13 00:00:00.0', 'CAS219', 10),
(181006, 5, '2018-04-13 00:00:00.0', 'CAS58', 10),
(181006, 5, '2018-04-13 00:00:00.0', 'CAS59', 4),
(181006, 5, '2018-04-13 00:00:00.0', 'CAS67', 4),
(181006, 5, '2018-04-13 00:00:00.0', 'CAS67B', 5),
(181007, 6, '2018-04-15 00:00:00.0', 'CAT18', 5),
(181007, 6, '2018-04-15 00:00:00.0', 'CAT23', 10),
(181007, 6, '2018-04-15 00:00:00.0', 'CAT60', 10),
(181007, 6, '2018-04-15 00:00:00.0', 'CAT80', 10),
(181008, 7, '2018-04-15 00:00:00.0', '1005NL', 2),
(181008, 7, '2018-04-15 00:00:00.0', 'CG1B', 10),
(181008, 7, '2018-04-15 00:00:00.0', 'PPB32C', 2),
(181008, 7, '2018-04-15 00:00:00.0', 'SCEL1', 3),
(181009, 8, '2018-04-15 00:00:00.0', 'AD50B', 3),
(181009, 8, '2018-04-15 00:00:00.0', 'ADP23', 3),
(181009, 8, '2018-04-15 00:00:00.0', 'BET26N', 5),
(181009, 8, '2018-04-15 00:00:00.0', 'BFT140', 5),
(181009, 8, '2018-04-15 00:00:00.0', 'BLUR05R', 3),
(181009, 8, '2018-04-15 00:00:00.0', 'MCFGL01', 10),
(181010, 9, '2018-04-16 00:00:00.0', 'ADP23', 6),
(181010, 9, '2018-04-16 00:00:00.0', 'ADP25', 10),
(181010, 9, '2018-04-16 00:00:00.0', 'BFT140', 5),
(181010, 9, '2018-04-16 00:00:00.0', 'PE12', 5),
(181010, 9, '2018-04-16 00:00:00.0', 'PE30', 5),
(181010, 9, '2018-04-16 00:00:00.0', 'PE40', 5),
(181011, 10, '2018-04-16 00:00:00.0', 'PAL3', 20),
(181011, 10, '2018-04-16 00:00:00.0', 'PAL4', 20),
(181011, 10, '2018-04-16 00:00:00.0', 'PAL5', 20),
(181012, 11, '2018-04-18 00:00:00.0', '20019', 50),
(181012, 11, '2018-04-18 00:00:00.0', '20030', 50),
(181013, 9, '2018-06-18 00:00:00.0', 'PE12', 15),
(181013, 9, '2018-06-18 00:00:00.0', 'PE30', 15),
(181013, 9, '2018-06-18 00:00:00.0', 'PE40', 15),
(181014, 11, '2018-06-18 00:00:00.0', '20030', 50),
(181014, 11, '2018-06-18 00:00:00.0', 'CAST57', 10),
(181014, 11, '2018-06-18 00:00:00.0', 'CAST70', 10),
(181015, 10, '2018-06-25 00:00:00.0', 'PAL5', 20),
(181016, 12, '2018-06-25 00:00:00.0', 'CIT05', 8),
(181016, 12, '2018-06-25 00:00:00.0', 'CIT08', 8),
(181016, 12, '2018-06-25 00:00:00.0', 'CIT20', 8),
(181017, 5, '2018-06-25 00:00:00.0', 'ADP25', 5),
(181017, 5, '2018-06-25 00:00:00.0', 'PE12', 10),
(181017, 5, '2018-06-25 00:00:00.0', 'PE19', 10),
(181017, 5, '2018-06-25 00:00:00.0', 'PE30', 10),
(181017, 5, '2018-06-25 00:00:00.0', 'PE40', 10),
(181017, 5, '2018-06-25 00:00:00.0', 'PE55', 10),
(181018, 4, '2018-06-30 00:00:00.0', 'BLUR05R', 4),
(181018, 4, '2018-06-30 00:00:00.0', 'PLAK7', 4),
(181019, 7, '2018-06-30 00:00:00.0', 'BLUR05R', 5),
(181019, 7, '2018-06-30 00:00:00.0', 'MCFGL01', 5),
(182001, 13, '2018-07-02 00:00:00.0', 'COOL02', 10),
(182001, 13, '2018-07-02 00:00:00.0', 'COOL20', 5),
(182001, 13, '2018-07-02 00:00:00.0', 'PAL4', 4),
(182002, 14, '2018-07-02 00:00:00.0', 'A13', 5),
(182002, 14, '2018-07-02 00:00:00.0', 'A14G', 5),
(182002, 14, '2018-07-02 00:00:00.0', 'A15', 5),
(182003, 15, '2018-07-02 00:00:00.0', 'COOL02', 50),
(182003, 15, '2018-07-02 00:00:00.0', 'COOL05', 50),
(182003, 15, '2018-07-02 00:00:00.0', 'PE30', 10),
(182003, 15, '2018-07-02 00:00:00.0', 'PPB32C', 5),
(182004, 16, '2018-07-02 00:00:00.0', 'ADP23', 10),
(182004, 16, '2018-07-02 00:00:00.0', 'CAS15', 10),
(182004, 16, '2018-07-02 00:00:00.0', 'CAS16', 10),
(182004, 16, '2018-07-02 00:00:00.0', 'CFA210', 10),
(182004, 16, '2018-07-02 00:00:00.0', 'CFA280', 10),
(182005, 17, '2018-07-04 00:00:00.0', 'ADP23', 100),
(182005, 17, '2018-07-04 00:00:00.0', 'CAT24', 500),
(182005, 17, '2018-07-04 00:00:00.0', 'CAT40', 200),
(182005, 17, '2018-07-04 00:00:00.0', 'CAT60', 200),
(182005, 17, '2018-07-04 00:00:00.0', 'CAT80', 200),
(182006, 18, '2018-07-05 00:00:00.0', '4DVX18', 100),
(182006, 18, '2018-07-05 00:00:00.0', 'CAT18', 100),
(182006, 18, '2018-07-05 00:00:00.0', 'CAT23', 100),
(182007, 19, '2018-08-02 00:00:00.0', 'ADP23', 200),
(182007, 19, '2018-08-02 00:00:00.0', 'DAP15', 100),
(182007, 19, '2018-08-02 00:00:00.0', 'DAP70', 100),
(182008, 20, '2018-08-15 00:00:00.0', 'CIT05', 10),
(182008, 20, '2018-08-15 00:00:00.0', 'CIT08', 10),
(182008, 20, '2018-08-15 00:00:00.0', 'CIT15', 10),
(182009, 17, '2018-09-23 00:00:00.0', 'ADP23', 100),
(182009, 17, '2018-09-23 00:00:00.0', 'CAT60', 400),
(182009, 17, '2018-09-23 00:00:00.0', 'CAT80', 400),
(182010, 18, '2018-09-24 00:00:00.0', '4DVX18', 50),
(182010, 18, '2018-09-24 00:00:00.0', 'CAT18', 100),
(182011, 15, '2018-10-02 00:00:00.0', 'COOL02', 100),
(182011, 15, '2018-10-02 00:00:00.0', 'COOL05', 100),
(182011, 15, '2018-10-02 00:00:00.0', 'PPB32C', 10),
(182012, 5, '2018-10-02 00:00:00.0', 'ADP25', 20),
(182012, 5, '2018-10-02 00:00:00.0', 'PE30', 20),
(182013, 10, '2018-10-03 00:00:00.0', 'PAL5', 20),
(182013, 10, '2018-10-03 00:00:00.0', 'PE30', 10),
(182014, 9, '2018-10-03 00:00:00.0', 'ADP25', 10),
(182014, 9, '2018-10-03 00:00:00.0', 'PE30', 40),
(182015, 19, '2018-10-04 00:00:00.0', 'A07', 20),
(182015, 19, '2018-10-04 00:00:00.0', 'A09G', 4),
(182015, 19, '2018-10-04 00:00:00.0', 'A15', 4),
(182015, 19, '2018-10-04 00:00:00.0', 'AD50J', 3),
(182015, 19, '2018-10-04 00:00:00.0', 'AD50R', 3),
(182016, 20, '2018-10-04 00:00:00.0', 'A13', 50),
(182016, 20, '2018-10-04 00:00:00.0', 'A15', 50),
(182016, 20, '2018-10-04 00:00:00.0', 'A16', 50),
(182017, 22, '2018-10-07 00:00:00.0', 'AD50B', 10),
(182017, 22, '2018-10-07 00:00:00.0', 'CAD21T', 50),
(182017, 22, '2018-10-07 00:00:00.0', 'CAS202', 50),
(182017, 22, '2018-10-07 00:00:00.0', 'CAS208', 50),
(182018, 21, '2018-10-08 00:00:00.0', 'AD50B', 10),
(182018, 21, '2018-10-08 00:00:00.0', 'CIT20', 50),
(182018, 21, '2018-10-08 00:00:00.0', 'CIT27', 50),
(182019, 23, '2018-10-10 00:00:00.0', 'AD50V', 20),
(182019, 23, '2018-10-10 00:00:00.0', 'CAT24', 100),
(182019, 23, '2018-10-10 00:00:00.0', 'CAT60', 100),
(182020, 24, '2018-10-15 00:00:00.0', 'AD50V', 20),
(182020, 24, '2018-10-15 00:00:00.0', 'CAD28', 20),
(182020, 24, '2018-10-15 00:00:00.0', 'CAS59', 20),
(182020, 24, '2018-10-15 00:00:00.0', 'CAS67', 20),
(182020, 24, '2018-10-15 00:00:00.0', 'CAS67B', 20),
(182020, 24, '2018-10-15 00:00:00.0', 'PPB32C', 20),
(182021, 25, '2018-10-20 00:00:00.0', 'BLUR05R', 6),
(182021, 25, '2018-10-20 00:00:00.0', 'CAD239', 5),
(182021, 25, '2018-10-20 00:00:00.0', 'PLAK7', 4);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

CREATE TABLE `emplacement` (
  `NO_EMPLACEMENT` int NOT NULL,
  `HANGAR` int NOT NULL,
  `ALLEE` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`NO_EMPLACEMENT`, `HANGAR`, `ALLEE`) VALUES
(1, 1, 3),
(2, 1, 6),
(3, 2, 3),
(4, 1, 1),
(5, 2, 21),
(6, 2, 1),
(7, 2, 6),
(8, 1, 11),
(9, 1, 4),
(10, 1, 8),
(11, 2, 9),
(12, 1, 10),
(13, 2, 18),
(14, 1, 2),
(15, 1, 7),
(16, 2, 12),
(17, 1, 12),
(18, 1, 9),
(19, 2, 15),
(20, 1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `NO_FOURNISSEUR` int NOT NULL,
  `NOM_FOURNISSEUR` varchar(255) NOT NULL,
  `VILLE` varchar(255) NOT NULL,
  `CPOSTAL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`NO_FOURNISSEUR`, `NOM_FOURNISSEUR`, `VILLE`, `CPOSTAL`) VALUES
(1, 'Carton Nylon Cotton', 'Paris', '75002'),
(2, 'Multi Services Carton', 'Villiers-sur-Marne', '94356'),
(3, 'Boxs', 'Paris', '75014'),
(4, 'Gatine', 'Mantes-la-Ville', '78711'),
(5, 'Cartonnage Turquet Bos', 'Amblainville', '60110'),
(6, 'Carton Service', 'Dourdan', '91410'),
(7, 'AK Sarl Emballages', 'Paris', '75017'),
(8, 'Hirschfeld Emballages', 'Bailly', '78870'),
(9, 'Somater Conditionnements', 'Boulogne-Billancourt', '92100'),
(10, 'Aluplast', 'Houdan', '78550'),
(11, 'Sedic Vitrafix', 'Bobigny', '93017'),
(12, 'Luxenvel', 'Montlignon', '95680'),
(13, 'Feralco', 'Paris', '75019'),
(14, 'Pal consulting', 'Sartrouville', '78500'),
(15, 'PMO Palettes', 'Ris-Orangis', '91130'),
(16, 'Polybel', 'Auxerre', '89000'),
(17, 'Expepack', 'Marq en Baroeul', '59700'),
(18, 'FROMM France', 'Darois', '21121'),
(19, 'GETRA', 'Saint Ame', '88120');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `CODE_PRODUIT` varchar(255) NOT NULL,
  `NO_CATEGORIE` int NOT NULL,
  `DESCRIPTION` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `QUANTITE_STOCK` int NOT NULL,
  `NO_EMPLACEMENT` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`CODE_PRODUIT`, `NO_CATEGORIE`, `DESCRIPTION`, `QUANTITE_STOCK`, `NO_EMPLACEMENT`) VALUES
('PRF63', 17, 'Pochette kraft', 200, 4),
('SCEL1', 10, 'Scellé à tigre crantée', 32, 18),
('SCF7000', 10, 'Scellé feuillard', 25, 18),
('TOR12', 12, 'Sachet craft - poignées torsadées', 50, 15),
('TOR19', 12, 'Sachet craft - poignées torsadées', 150, 15),
('TOR30', 12, 'Sachet craft - poignées torsadées', 75, 15),
('TOR40', 12, 'Sachet craft - poignées torsadées', 50, 15),
('TOR55', 12, 'Sachet craft - poignées torsadées', 25, 15),
('1005NL', 10, 'Lien autobloquant', 20, 18),
('20012', 12, 'Sachet craft - poignées plates', 150, 15),
('20019', 12, 'Sachet craft - poignées plates', 150, 15),
('20030', 12, 'Sachet craft - poignées plates', 50, 15),
('20040', 12, 'Sachet craft - poignées plates', 100, 15),
('20055', 12, 'Sachet craft - poignées plates', 50, 15),
('4DVX114', 3, 'Maximum 70 Kg', 53, 12),
('4DVX18', 3, 'Maximum 10 Kg', 66, 12),
('4DVX245', 3, 'Maximum 120 Kg', 62, 12),
('4DVX37', 3, 'Maximum 20 Kg', 75, 12),
('A07', 14, NULL, 50, 12),
('A09G', 14, 'Maximum 20 Kg', 101, 12),
('A13', 14, NULL, 96, 12),
('A14G', 14, 'Maximum 20 Kg', 28, 12),
('A15', 14, 'Maximum 30 Kg', 87, 12),
('A16', 14, 'Maximum 30 Kg', 30, 12),
('AD50B', 5, 'Adhésif bleu', 50, 1),
('AD50J', 5, 'Adhésif jaune', 50, 1),
('AD50N', 5, 'Adhésif noir', 50, 1),
('AD50O', 5, 'Adhésif orange', 50, 1),
('AD50R', 5, 'Adhésif rouge', 50, 1),
('AD50V', 5, 'Adhésif vert', 50, 1),
('ADP23', 5, 'Adhésif couleur Havane', 184, 1),
('ADP25', 5, 'Adhésif transparant', 205, 1),
('ADP26', 5, 'Adhésif blanc', 154, 1),
('BET15N', 12, 'Boîte cadeau', 70, 15),
('BET26N', 12, 'Boîte cadeau', 150, 15),
('BFT140', 12, 'Boîte cadeau', 100, 15),
('BLUR05R', 5, 'Papier bulle', 42, 1),
('CAD17', 4, 'Maximum 30 Kg', 250, 1),
('CAD201', 13, 'Maximum 30 Kg', 87, 20),
('CAD21', 4, 'Maximum 30 Kg', 250, 4),
('CAD21A', 4, 'Maximum 30 Kg', 250, 18),
('CAD21B', 4, 'Maximum 30 Kg', 250, 18),
('CAD21S', 13, NULL, 87, 2),
('CAD21T', 13, NULL, 87, 8),
('CAD22', 4, 'Maximum 30 Kg', 250, 9),
('CAD239', 13, 'Maximum 40 Kg', 87, 15),
('CAD28', 4, 'Maximum 30 Kg', 250, 4),
('CAD30', 4, 'Maximum 40 Kg', 250, 1),
('CAS15', 8, 'Maximum 10 Kg', 450, 14),
('CAS15A', 8, 'Maximum 10 Kg', 300, 15),
('CAS16', 8, 'Maximum 10 Kg', 500, 12),
('CAS202', 13, 'Maximum 10 Kg', 87, 17),
('CAS204', 13, 'Maximum 10 Kg', 87, 17),
('CAS208', 13, 'Maximum 20 Kg', 87, 8),
('CAS219', 13, 'Maximum 10 Kg', 87, 1),
('CAS58', 8, 'Maximum 20 Kg', 230, 9),
('CAS59', 8, 'Maximum 20 Kg', 299, 17),
('CAS67', 8, 'Maximum 20 Kg', 560, 9),
('CAS67B', 8, 'Maximum 20 Kg', 510, 17),
('CAST56', 16, 'Maximum 30 Kg', 225, 8),
('CAST57', 16, 'Maximum 30 Kg', 135, 8),
('CAST70', 16, 'Maximum 30 Kg', 150, 8),
('CAT04', 11, 'Maximum 240 Kg', 75, 1),
('CAT18', 11, 'Maximum 260 Kg', 25, 4),
('CAT22', 11, 'Maximum 300 Kg', 100, 9),
('CAT23', 11, 'Maximum 330 Kg', 50, 14),
('CAT24', 11, 'Maximum 320 Kg', 50, 20),
('CAT40', 11, 'Maximum 500 Kg', 56, 2),
('CAT60', 11, 'Maximum 500 Kg', 23, 15),
('CAT80', 11, 'Maximum 500 Kg', 87, 10),
('CFA210', 8, 'Maximum 20 Kg', 120, 20),
('CFA280', 8, 'Maximum 20 Kg', 250, 20),
('CG1B', 17, 'Pochette navette à soufflet', 56, 4),
('CG6B', 17, 'Pochette navette à soufflet', 43, 14),
('CIT05', 18, 'Maximum 100 g', 75, 10),
('CIT08', 18, 'Maximum 200 g', 125, 10),
('CIT15', 18, 'Maximum 280 g', 200, 10),
('CIT20', 18, 'Maximum 340 g', 50, 10),
('CIT27', 18, 'Maximum 350 g', 150, 11),
('CLIC40', 7, 'Palette carton clic-clac 6000 Kg', 40, 11),
('CLIC60', 7, 'Palette carton clic-clac 12000 Kg', 30, 11),
('COOL02', 15, 'Maximum 560 g', 220, 2),
('COOL05', 15, 'Maximum 680 g', 325, 2),
('COOL10', 15, 'Maximum 1160 g', 184, 2),
('COOL20', 15, 'Maximum 1700 g', 64, 2),
('DAP15', 3, 'Maximum 4.4 Kg', 87, 12),
('DAP20', 3, 'Maximum 11 Kg', 87, 12),
('DAP40', 3, 'Maximum 30 Kg', 87, 12),
('DAP70', 3, 'Maximum 87 Kg', 87, 12),
('EZLOC16', 10, 'Scellé haute sécurité', 40, 18),
('MCFGL01', 5, 'Bulles polystérène', 60, 1),
('PAL3', 7, 'Palette à claire-voie', 100, 11),
('PAL4', 7, 'Palette à claire-voie', 75, 11),
('PAL5', 7, 'Palette à claire-voie', 120, 11),
('PE12', 12, 'Sachet craft - poignées cordes', 125, 15),
('PE19', 12, 'Sachet craft - poignées cordes', 50, 15),
('PE30', 12, 'Sachet craft - poignées cordes', 75, 15),
('PE40', 12, 'Sachet craft - poignées cordes', 100, 15),
('PE55', 12, 'Sachet craft - poignées cordes', 50, 15),
('PLAK1', 5, 'Plaque carton ondulé', 250, 1),
('PLAK1511', 5, 'Plaque carton ondulé', 150, 1),
('PLAK1919', 5, 'Plaque carton ondulé', 200, 1),
('PLAK3', 5, 'Plaque carton ondulé', 200, 1),
('PLAK7', 5, 'Plaque carton ondulé', 50, 1),
('PPB32C', 17, 'Pochette kraft', 500, 4),
('PPB43C', 17, 'Pochette kraft', 300, 4),
('PRF33', 17, 'Pochette kraft', 400, 4),
('PRF43', 17, 'Pochette kraft', 200, 4),
('PRF63', 17, 'Pochette kraft', 200, 4),
('SCEL1', 10, 'Scellé à tigre crantée', 32, 18),
('SCF7000', 10, 'Scellé feuillard', 25, 18),
('TOR12', 12, 'Sachet craft - poignées torsadées', 50, 15),
('TOR19', 12, 'Sachet craft - poignées torsadées', 150, 15),
('TOR30', 12, 'Sachet craft - poignées torsadées', 75, 15),
('TOR40', 12, 'Sachet craft - poignées torsadées', 50, 15),
('TOR55', 12, 'Sachet craft - poignées torsadées', 25, 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`NO_CLIENT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
