-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: pesca
-- ------------------------------------------------------
-- Server version	5.7.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `espèces`
--

DROP TABLE IF EXISTS `espèces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espèces` (
  `IDespeces` int(11) NOT NULL,
  `Espece` varchar(50) NOT NULL,
  `Poids` varchar(15) NOT NULL,
  `IDniveau` int(11) NOT NULL,
  PRIMARY KEY (`IDespeces`),
  KEY `IDniveau` (`IDniveau`),
  CONSTRAINT `espèces_ibfk_1` FOREIGN KEY (`IDniveau`) REFERENCES `niveautir` (`IDniveau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espèces`
--

LOCK TABLES `espèces` WRITE;
/*!40000 ALTER TABLE `espèces` DISABLE KEYS */;
INSERT INTO `espèces` VALUES (1,'Marlin','25kg',5),(2,'Truite','5kg',1),(3,'Brochet','15kg',4),(4,'Saumon','2,5kg',2),(5,'Perche','10kg',3),(6,'Crevettes','0,5kg',1),(7,'Sardines','1,5kg',1),(8,'Thon','5,5kg',3);
/*!40000 ALTER TABLE `espèces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lieu`
--

DROP TABLE IF EXISTS `lieu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lieu` (
  `IDLieu` int(11) NOT NULL,
  `Lieu` varchar(50) NOT NULL,
  PRIMARY KEY (`IDLieu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lieu`
--

LOCK TABLES `lieu` WRITE;
/*!40000 ALTER TABLE `lieu` DISABLE KEYS */;
INSERT INTO `lieu` VALUES (1,'Le Touquet'),(2,'Tahiti'),(3,'Mexico'),(4,'Hawaï'),(5,'Rio');
/*!40000 ALTER TABLE `lieu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveautir`
--

DROP TABLE IF EXISTS `niveautir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niveautir` (
  `IDniveau` int(11) NOT NULL,
  `NbPoints` varchar(15) NOT NULL,
  PRIMARY KEY (`IDniveau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveautir`
--

LOCK TABLES `niveautir` WRITE;
/*!40000 ALTER TABLE `niveautir` DISABLE KEYS */;
INSERT INTO `niveautir` VALUES (1,'5'),(2,'15'),(3,'25'),(4,'35'),(5,'50');
/*!40000 ALTER TABLE `niveautir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pêche`
--

DROP TABLE IF EXISTS `pêche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pêche` (
  `DatePeche` date NOT NULL,
  `Evènement` varchar(70) NOT NULL,
  `IDLieu` int(11) NOT NULL,
  `IDPecheur` int(11) NOT NULL,
  `Pseudo` varchar(70) NOT NULL,
  PRIMARY KEY (`DatePeche`),
  KEY `IDLieu` (`IDLieu`),
  KEY `IDPecheur` (`IDPecheur`),
  CONSTRAINT `pêche_ibfk_1` FOREIGN KEY (`IDLieu`) REFERENCES `lieu` (`IDLieu`),
  CONSTRAINT `pêche_ibfk_2` FOREIGN KEY (`IDPecheur`) REFERENCES `pêcheur` (`IDPecheur`),
  CONSTRAINT `pêche_ibfk_3` FOREIGN KEY (`IDPecheur`) REFERENCES `pêcheur` (`IDPecheur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pêche`
--

LOCK TABLES `pêche` WRITE;
/*!40000 ALTER TABLE `pêche` DISABLE KEYS */;
INSERT INTO `pêche` VALUES ('2022-01-03','Hiver au Touquet',1,1,'Toto'),('2022-01-10','Hawaï aie aie',4,2,'Picsou'),('2022-01-19','Pêche en hiver',1,13,'Blake'),('2022-02-07','Pêche, nature et tradition',4,12,'Luke'),('2022-02-28','Glagla pêche',1,14,'Mortimer'),('2022-03-01','Mardi gras',2,12,'Luke'),('2022-03-09','Si tu vas à Rio...',5,15,'Astérix'),('2022-03-17','Papeete Event',2,1,'Toto'),('2022-03-21','Pêche au clair de lune',1,13,'Blake'),('2022-04-28','Tournoi printanier',1,10,'Hercule'),('2022-05-02','Youpi la pêche',3,6,'Haddock'),('2022-05-05','Marlin Pêcheur',2,3,'Heidi'),('2022-05-25','Paris Plage',1,7,'Mickey'),('2022-06-10','Fête à noeunoeud',5,4,'Tintin'),('2022-07-08','Tournoi estival',3,8,'Donald'),('2022-07-12','Fishermans friend tournament',2,11,'Lucky'),('2022-07-13','Yukulélé Event',4,2,'Picsou'),('2022-07-29','Pêche aux canards',5,9,'Pif'),('2022-08-01','Coule la pêche !',4,3,'Heidi'),('2022-08-18','Tournoi de pêche',2,10,'Hercule'),('2022-08-19','Vive la pêche',4,8,'Donald'),('2022-08-21','Chasse aux requins',3,15,'Astérix'),('2022-09-01','Automne de pêche',2,4,'Tintin'),('2022-09-04','Anniversaire du club',4,1,'Toto'),('2022-09-10','Stranger fishing',4,5,'Tournesol'),('2022-09-14','Festival de la pleine lune',3,5,'Tournesol');
/*!40000 ALTER TABLE `pêche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pêcher`
--

DROP TABLE IF EXISTS `pêcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pêcher` (
  `IDespeces` int(11) NOT NULL,
  `DatePeche` date NOT NULL,
  `NbPrises` int(11) NOT NULL,
  PRIMARY KEY (`IDespeces`,`DatePeche`),
  KEY `DatePeche` (`DatePeche`),
  CONSTRAINT `pêcher_ibfk_1` FOREIGN KEY (`IDespeces`) REFERENCES `espèces` (`IDespeces`),
  CONSTRAINT `pêcher_ibfk_2` FOREIGN KEY (`DatePeche`) REFERENCES `pêche` (`DatePeche`),
  CONSTRAINT `pêcher_ibfk_3` FOREIGN KEY (`DatePeche`) REFERENCES `pêche` (`DatePeche`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pêcher`
--

LOCK TABLES `pêcher` WRITE;
/*!40000 ALTER TABLE `pêcher` DISABLE KEYS */;
INSERT INTO `pêcher` VALUES (1,'2022-01-10',3),(1,'2022-03-09',7),(1,'2022-05-05',5),(1,'2022-09-04',2),(1,'2022-09-14',5),(2,'2022-03-01',7),(2,'2022-05-02',5),(3,'2022-01-19',5),(3,'2022-07-13',3),(3,'2022-08-21',4),(4,'2022-04-28',2),(4,'2022-07-29',5),(4,'2022-08-01',8),(4,'2022-09-01',4),(5,'2022-02-07',2),(5,'2022-05-25',4),(5,'2022-08-18',2),(5,'2022-09-10',7),(6,'2022-06-10',15),(7,'2022-01-03',12),(7,'2022-03-17',17),(7,'2022-07-12',12),(7,'2022-08-19',8),(8,'2022-02-28',7),(8,'2022-03-21',5),(8,'2022-07-08',7);
/*!40000 ALTER TABLE `pêcher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pêcheur`
--

DROP TABLE IF EXISTS `pêcheur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pêcheur` (
  `IDPecheur` int(11) NOT NULL,
  `Pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`IDPecheur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pêcheur`
--

LOCK TABLES `pêcheur` WRITE;
/*!40000 ALTER TABLE `pêcheur` DISABLE KEYS */;
INSERT INTO `pêcheur` VALUES (1,'Toto'),(2,'Picsou'),(3,'Heidi'),(4,'Tintin'),(5,'Tournesol'),(6,'Haddock'),(7,'Mickey'),(8,'Donald'),(9,'Pif'),(10,'Hercule'),(11,'Lucky'),(12,'Luke'),(13,'Blake'),(14,'Mortimer'),(15,'Astérix');
/*!40000 ALTER TABLE `pêcheur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pesca'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 14:35:23
