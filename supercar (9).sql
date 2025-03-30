-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le : lun. 10 mars 2025 à 07:12
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE IF NOT EXISTS `blacklist` (
  `id_blacklist` int NOT NULL AUTO_INCREMENT,
  `ip_adresse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_blacklist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idcontact` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telephone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commentaires` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idcontact`, `nom`, `prenom`, `adresse`, `telephone`, `email`, `commentaires`) VALUES
(6, 'DARROUSSI', 'BACAR', '123 rue darne', '5896 6007', 'darou@gmail.com', 'puis je avoir plus de detail sur la Audi A1 ?'),
(7, 'Rachid', 'Mohamed', 'Rue Pontueux', '06254875', 'rachid@gmail.com', 'Bonjour, \r\nJe souhaiterai demander une information concernant la BMW série 1.\r\nCordialement');

-- --------------------------------------------------------

--
-- Structure de la table `demandeessais`
--

DROP TABLE IF EXISTS `demandeessais`;
CREATE TABLE IF NOT EXISTS `demandeessais` (
  `Id_demandeDessai` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `transmission` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `carburant` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dates` date NOT NULL,
  `heure` time NOT NULL,
  `demandeSpecial` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ville` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_demandeDessai`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `demandeessais`
--

INSERT INTO `demandeessais` (`Id_demandeDessai`, `marque`, `model`, `transmission`, `carburant`, `dates`, `heure`, `demandeSpecial`, `nom`, `prenom`, `telephone`, `email`, `ville`, `cp`) VALUES
(1, 'Audi', '', '', '', '2024-06-29', '07:02:00', NULL, 'NAHOUDA', '', '54566007', 'zzad@gmx.fr', '', ''),
(2, 'BMW', '', '', '', '2024-06-28', '06:14:00', NULL, 'Adeldine', '', '56452332', 'adeldine@gmail.com', '', ''),
(3, '', '', '', '', '0000-00-00', '00:00:00', NULL, '2333', '', '0', '', '', ''),
(4, 'Audi', '', '', '', '2024-09-11', '11:10:00', NULL, 'Azad NAHOUDA HANAFFI', '', '58966007', 'zza@gmx.fr', '', ''),
(5, 'Audi', '', '', '', '2024-09-28', '11:30:00', NULL, 'Azad NAHOUDA HANAFFI', '', '58966007', 'hjjn@gmx.fr', '', ''),
(6, '', '', '', '', '0000-00-00', '00:00:00', NULL, '', '', '0', 'nahoudahanaffia@gmx.fr', '', ''),
(7, 'Audi', '', '', '', '0000-00-00', '09:55:00', NULL, 'Azad NAHOUDA HANAFFI', '', '58966007', 'hkn@gmx.fr', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

DROP TABLE IF EXISTS `evenements`;
CREATE TABLE IF NOT EXISTS `evenements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dates` date DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `photo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `nom`, `dates`, `description`, `photo`) VALUES
(11, 'Séminaire automobile ', '2024-09-12', 'Bienvenue dans notre tout premiers séminaire Autom', '1725866234seminaire auto mobile.png'),
(12, 'evenement', '2024-12-06', 'ar', '17333122151710674622tratcto.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `facturation`
--

DROP TABLE IF EXISTS `facturation`;
CREATE TABLE IF NOT EXISTS `facturation` (
  `idFactrure` int DEFAULT NULL,
  `client` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `facturation`
--

INSERT INTO `facturation` (`idFactrure`, `client`, `adresse`) VALUES
(NULL, 'La mairie de Port Louis', 'Port Louis');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `Id_Inscription` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Inscription`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`Id_Inscription`, `nom`, `prenom`, `mail`, `tel`, `username`, `pwd`) VALUES
(1, 'bacar', 'bacar2', 'bacar@gmail.com', '102030', 'bacar35', 'test'),
(2, 'DARROUSSI', 'BACAR', 'darou@gmail.com', '58966007', '31723410', '1234'),
(3, 'DARROUSSI', 'BACAR', 'darou@gmail.com', '58966007', '3', '1234'),
(4, 'HANAFFI', 'Azad', 'gfd@gmx.fr', '58966007', '0140', '0140'),
(5, 'Marie ', 'Antoinette', 'mari@gmail.fr', '06325748', 'AMarie', 'Marie123'),
(6, 'Sitti', 'Binti', 'sitti@gmail.com', '52147896', 'BSitti', 'Sitti123');

-- --------------------------------------------------------

--
-- Structure de la table `journalconnexion`
--

DROP TABLE IF EXISTS `journalconnexion`;
CREATE TABLE IF NOT EXISTS `journalconnexion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `connexionEtablie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `journalconnexion`
--

INSERT INTO `journalconnexion` (`id`, `username`, `date`, `heure`, `connexionEtablie`) VALUES
(1, 'John Doe', '2024-06-11', '13:43:18', 'oui'),
(2, 'John Doe', '2024-09-04', '12:07:02', 'oui'),
(3, 'John Doe', '2024-09-04', '12:07:10', 'oui'),
(4, 'John Doe', '2024-09-04', '12:07:25', 'oui'),
(5, 'John Doe', '2024-09-04', '12:41:25', 'oui');

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
CREATE TABLE IF NOT EXISTS `livraison` (
  `idLivraison` int NOT NULL AUTO_INCREMENT,
  `client` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adresse` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idLivraison`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Id_login` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pwd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`Id_login`, `username`, `pwd`, `nom`) VALUES
(5, '0140', '0140', 'Azad NAHOUDA HANAFFI'),
(6, 'admin', 'admin', 'administrateur'),
(7, 'mathias', '2yd6v6h9Ulc.g', 'Lessage');

-- --------------------------------------------------------

--
-- Structure de la table `logtest`
--

DROP TABLE IF EXISTS `logtest`;
CREATE TABLE IF NOT EXISTS `logtest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `logtest`
--

INSERT INTO `logtest` (`id`, `username`, `pwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `libeleMarque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`libeleMarque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`libeleMarque`) VALUES
('Audi'),
('BMW'),
('Chevrolet'),
('Ford'),
('Honda'),
('Hyundai'),
('Mercedes-Benz'),
('Nissan'),
('Toyota'),
('Volkswagen');

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

DROP TABLE IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
  `id` int NOT NULL AUTO_INCREMENT,
  `libeleModel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `libeleMarque` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_voiture` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `libeleMarque` (`libeleMarque`),
  KEY `id_voiture` (`id_voiture`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `model`
--

INSERT INTO `model` (`id`, `libeleModel`, `libeleMarque`, `id_voiture`) VALUES
(33, 'A1', 'Audi', 56),
(35, 'A3vhjfy', 'Audi', 58),
(36, 'A1', 'Audi', 59),
(37, 'M2', 'BMW', 60);

-- --------------------------------------------------------

--
-- Structure de la table `organiser`
--

DROP TABLE IF EXISTS `organiser`;
CREATE TABLE IF NOT EXISTS `organiser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Id_Evenements` int NOT NULL,
  PRIMARY KEY (`id`,`Id_Evenements`),
  KEY `Id_Evenements` (`Id_Evenements`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `visites`
--

DROP TABLE IF EXISTS `visites`;
CREATE TABLE IF NOT EXISTS `visites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `visites`
--

INSERT INTO `visites` (`id`, `count`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1);

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
CREATE TABLE IF NOT EXISTS `voitures` (
  `id` int NOT NULL AUTO_INCREMENT,
  `annee` year DEFAULT NULL,
  `transmission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `motorisation` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `car_photo` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prix` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nbEssai` int DEFAULT NULL,
  `views` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `voitures`
--

INSERT INTO `voitures` (`id`, `annee`, `transmission`, `motorisation`, `car_photo`, `description`, `prix`, `nbEssai`, `views`) VALUES
(56, '2011', 'Manuelle', 'Essence', '17284697581727678382audi1.jpg', 'Audi A1 noir', '29148', 0, 5),
(58, '2012', 'Automatique', 'Essence', '17310470901727680012audi.jpg', 'ghhfyu', '258587', 0, 1),
(59, '2005', 'Automatique', 'Essence', '17333077711727677982audi1.jpg', 'Audi A1 noir', '20547', NULL, 1),
(60, '2022', 'Automatique', 'Diesel', '17333078552022_bmw_m3_sedan_competition_fq_oem_1_600.avif', 'BMW M3', '240 000', NULL, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
