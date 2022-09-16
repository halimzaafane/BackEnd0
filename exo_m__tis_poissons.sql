-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 16 sep. 2022 à 09:54
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
(1, '76', 'Gournay-en-Bray', '4 rue Languedoc'),
(2, '60', 'Beauvais', '10 rue des Lillas'),
(3, '59', 'Maubeuge', '5 boulevard de la Paix'),
(4, '06', 'Menton', '6 Impasse des Citrons'),
(5, '75', 'Paris', '8 Boulevard Haussmann'),
(6, '93', 'Saint-Denis', '10 Impasse Le Oinj'),
(7, '76', 'Le Havre', '6 rue du Port'),
(8, '59', 'Lille', '5 rue du Pont de Pierre'),
(9, '06', 'Nice', '9 Boulevard des Anglaises'),
(10, '78', 'Versaille', '11 rue du Chateau');

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
(1, 6, 10),
(2, 9, 20),
(3, 4, 0);

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
(1, 'Jo L\'Indien'),
(2, 'Flash Gordon'),
(3, 'Goldorak'),
(4, 'Boubou'),
(5, 'Snoop'),
(6, 'Ivory'),
(7, 'Malcom'),
(8, 'Clint'),
(9, 'Serge'),
(10, 'Dieudoné Mbalambala');

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
(1, '2022-01-10', 10, 2, 2),
(2, '2022-02-03', 20, 5, 5),
(3, '2022-05-12', 15, 3, 10),
(4, '2022-10-03', 0, 4, 4),
(5, '2022-05-14', 40, 5, 5),
(6, '2022-09-21', 30, 1, 10),
(7, '2022-09-10', 15, 1, 7),
(8, '2022-09-04', 60, 5, 1),
(9, '2022-09-16', 10, 7, 4),
(10, '2022-05-10', 25, 9, 3);

-- --------------------------------------------------------

--
-- Structure de la table `poissons`
--

CREATE TABLE `poissons` (
  `IDEspèces` int(11) NOT NULL,
  `Niveaux` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `poissons`
--

INSERT INTO `poissons` (`IDEspèces`, `Niveaux`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

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
  ADD PRIMARY KEY (`IDEspèces`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
