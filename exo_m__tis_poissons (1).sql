-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 19 sep. 2022 à 08:00
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exo_métis_poissons`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `IDAdresse` int(11) NOT NULL,
  `Départements` varchar(50) DEFAULT NULL,
  `Communes` varchar(50) DEFAULT NULL,
  `Rue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`IDAdresse`, `Départements`, `Communes`, `Rue`) VALUES
(1, ' Rhône-Alpes', 'VOIRON', '28 Rue Bonnet'),
(2, 'Île-de-France(IL)', 'CHAMPIGNY-SUR-MARNE', '28 place Maurice-Charretier'),
(3, 'Midi-Pyrénées(MP)', 'MILLAU', '20 rue Bonneterie'),
(4, 'Aquitaine(AQ)', 'SAINT-MÉDARD-EN-JALLES', '73 rue des Dunes'),
(5, 'Picardie(PI)', 'SAINT-QUENTIN', '67 rue de la Hulotais'),
(6, 'Île-de-France(IL)', 'DRANCY', '7 rue Cazade'),
(7, 'Haute-Normandie(HN)', 'SOTTEVILLE-LÈS-ROUEN', '84 Boulevard de Normandie'),
(8, 'Nord-Pas-de-Calais(NP)', 'GRANDE-SYNTHE', '33 avenue Ferdinand de Lesseps');

-- --------------------------------------------------------

--
-- Structure de la table `chasser`
--

CREATE TABLE `chasser` (
  `IDEspèces` int(11) NOT NULL,
  `IDParties2chasses` int(11) NOT NULL,
  `Nbr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chasser`
--

INSERT INTO `chasser` (`IDEspèces`, `IDParties2chasses`, `Nbr`) VALUES
(1, 8, 8),
(2, 4, 3),
(3, 10, 30),
(4, 9, 12),
(5, 3, 2),
(6, 5, 11),
(7, 6, 20),
(8, 1, 5),
(9, 2, 10),
(10, 7, 6);

-- --------------------------------------------------------

--
-- Structure de la table `chasseurs`
--

CREATE TABLE `chasseurs` (
  `IDChasseurs` int(11) NOT NULL,
  `Pseudo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chasseurs`
--

INSERT INTO `chasseurs` (`IDChasseurs`, `Pseudo`) VALUES
(1, 'Halim'),
(2, 'Fred'),
(3, 'Karim'),
(4, 'Greg'),
(5, 'Steph'),
(6, 'Jimmy'),
(7, 'Camille'),
(8, 'Théo'),
(9, 'Cédric'),
(10, 'Bennoit');

-- --------------------------------------------------------

--
-- Structure de la table `parties_chasses`
--

CREATE TABLE `parties_chasses` (
  `IDParties2chasses` int(11) NOT NULL,
  `dateP` date DEFAULT NULL,
  `Points` int(11) DEFAULT NULL,
  `IDChasseurs` int(11) NOT NULL,
  `IDAdresse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `parties_chasses`
--

INSERT INTO `parties_chasses` (`IDParties2chasses`, `dateP`, `Points`, `IDChasseurs`, `IDAdresse`) VALUES
(1, '2022-01-16', 50, 8, 8),
(2, '2022-01-21', 20, 3, 7),
(3, '2022-02-11', 30, 10, 6),
(4, '2022-04-01', 100, 6, 5),
(5, '2022-05-02', 70, 9, 5),
(6, '2022-05-03', 0, 7, 4),
(7, '2022-06-06', 50, 5, 3),
(8, '2022-06-08', 110, 4, 2),
(9, '2022-07-03', 80, 2, 6),
(10, '2022-09-16', 10, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `poissons`
--

CREATE TABLE `poissons` (
  `IDEspèces` int(11) NOT NULL,
  `Niveaux` int(11) DEFAULT NULL,
  `IDChasseurs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `poissons`
--

INSERT INTO `poissons` (`IDEspèces`, `Niveaux`, `IDChasseurs`) VALUES
(1, 5, 8),
(2, 2, 3),
(3, 9, 6),
(4, 10, 10),
(5, 4, 2),
(6, 1, 1),
(7, 6, 8),
(8, 3, 6),
(9, 8, 4),
(10, 7, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`IDAdresse`);

--
-- Index pour la table `chasser`
--
ALTER TABLE `chasser`
  ADD PRIMARY KEY (`IDEspèces`,`IDParties2chasses`),
  ADD KEY `IDParties2chasses` (`IDParties2chasses`);

--
-- Index pour la table `chasseurs`
--
ALTER TABLE `chasseurs`
  ADD PRIMARY KEY (`IDChasseurs`);

--
-- Index pour la table `parties_chasses`
--
ALTER TABLE `parties_chasses`
  ADD PRIMARY KEY (`IDParties2chasses`),
  ADD KEY `IDChasseurs` (`IDChasseurs`),
  ADD KEY `IDAdresse` (`IDAdresse`);

--
-- Index pour la table `poissons`
--
ALTER TABLE `poissons`
  ADD PRIMARY KEY (`IDEspèces`),
  ADD KEY `IDChasseurs` (`IDChasseurs`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chasser`
--
ALTER TABLE `chasser`
  ADD CONSTRAINT `chasser_ibfk_1` FOREIGN KEY (`IDEspèces`) REFERENCES `poissons` (`IDEspèces`),
  ADD CONSTRAINT `chasser_ibfk_2` FOREIGN KEY (`IDParties2chasses`) REFERENCES `parties_chasses` (`IDParties2chasses`);

--
-- Contraintes pour la table `parties_chasses`
--
ALTER TABLE `parties_chasses`
  ADD CONSTRAINT `parties_chasses_ibfk_1` FOREIGN KEY (`IDChasseurs`) REFERENCES `chasseurs` (`IDChasseurs`),
  ADD CONSTRAINT `parties_chasses_ibfk_2` FOREIGN KEY (`IDAdresse`) REFERENCES `adresse` (`IDAdresse`);

--
-- Contraintes pour la table `poissons`
--
ALTER TABLE `poissons`
  ADD CONSTRAINT `poissons_ibfk_1` FOREIGN KEY (`IDChasseurs`) REFERENCES `chasseurs` (`IDChasseurs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
