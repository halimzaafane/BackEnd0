-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: site_voitures
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caractéristiques_techniques`
--

DROP TABLE IF EXISTS `caractéristiques_techniques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caractéristiques_techniques` (
  `ID_Tech` int(11) NOT NULL,
  `Puissance_kW_CH_` varchar(50) DEFAULT NULL,
  `Transmission` varchar(50) DEFAULT NULL,
  `Vitesses` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_Tech`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caractéristiques_techniques`
--

LOCK TABLES `caractéristiques_techniques` WRITE;
/*!40000 ALTER TABLE `caractéristiques_techniques` DISABLE KEYS */;
INSERT INTO `caractéristiques_techniques` VALUES (1,'200','Manuelle',6),(2,'220','Manuelle',5),(3,'125','Automatique',6),(4,'225','Automatique',6),(5,'300','Automatique',6),(6,'100','Manuelle',5),(7,'120','Manuelle',5),(8,'150','Manuelle',5),(9,'200','Manuelle',6),(10,'225','Automatique',6);
/*!40000 ALTER TABLE `caractéristiques_techniques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consommation_en_énergie`
--

DROP TABLE IF EXISTS `consommation_en_énergie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consommation_en_énergie` (
  `ID_Energie` int(11) NOT NULL,
  `Carburant` varchar(50) DEFAULT NULL,
  `Emissions_de_Co2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Energie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consommation_en_énergie`
--

LOCK TABLES `consommation_en_énergie` WRITE;
/*!40000 ALTER TABLE `consommation_en_énergie` DISABLE KEYS */;
INSERT INTO `consommation_en_énergie` VALUES (1,'Diesel','144g/km'),(2,'Diesel','117g/km'),(3,'Essence','131g/km'),(4,'Essence','155g/km'),(5,'Essence','175g/km'),(6,'Diesel','81g/km'),(7,'Electrique','0g/km'),(8,'Diesel','100g/km'),(9,'Essence','140g/km'),(10,'Diesel','155g/km');
/*!40000 ALTER TABLE `consommation_en_énergie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `couleur_garnissage_intérieur`
--

DROP TABLE IF EXISTS `couleur_garnissage_intérieur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `couleur_garnissage_intérieur` (
  `ID_Couleur` int(11) NOT NULL,
  `Couleur_originale` varchar(50) DEFAULT NULL,
  `Couleur_intérieur` varchar(50) DEFAULT NULL,
  `Garniture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Couleur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `couleur_garnissage_intérieur`
--

LOCK TABLES `couleur_garnissage_intérieur` WRITE;
/*!40000 ALTER TABLE `couleur_garnissage_intérieur` DISABLE KEYS */;
INSERT INTO `couleur_garnissage_intérieur` VALUES (1,'Rouge','Noire','Tissus'),(2,'Noire','Noire','Cuire'),(3,'Blanche','Marron','Tissus'),(4,'Gris','Noire','Tissus'),(5,'Bleu','Noire','Tissus'),(6,'Blanche','Creme','Cuire'),(7,'Jaune','Beige','Cuire'),(8,'Rouge','Noire','Tissus'),(9,'Noire','Noire','Tissus'),(10,'Noire','Blanc','Cuire');
/*!40000 ALTER TABLE `couleur_garnissage_intérieur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `données_de_bases`
--

DROP TABLE IF EXISTS `données_de_bases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `données_de_bases` (
  `ID_Données2Bases` int(11) NOT NULL,
  `Carrosserie` varchar(50) DEFAULT NULL,
  `Etat` varchar(50) DEFAULT NULL,
  `Sièges` int(11) DEFAULT NULL,
  `Portes` int(11) DEFAULT NULL,
  `N_d_annonce` varchar(50) DEFAULT NULL,
  `Garantie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Données2Bases`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `données_de_bases`
--

LOCK TABLES `données_de_bases` WRITE;
/*!40000 ALTER TABLE `données_de_bases` DISABLE KEYS */;
INSERT INTO `données_de_bases` VALUES (1,'Utilitaire','Occasion',3,3,'50000192460',NULL),(2,'Berline','Occasion',5,5,'60000192460',NULL),(3,'Berline','Neuf',5,5,'70000192460',NULL),(4,'Coupé-sport','Occasion',3,4,'80000192460',NULL),(5,'Break','Occasion',7,5,'90000192460',NULL),(6,'Berline','Occasion',5,5,'100000192460',NULL),(7,'Coupé-sport','Neuf',5,5,'110000192460',NULL),(8,'Citadine','Occasion',5,3,'120000192460',NULL),(9,'Citadine','Neuf',5,3,'130000192460',NULL),(10,'Citadine','Neuf',5,3,'140000192460',NULL);
/*!40000 ALTER TABLE `données_de_bases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historique_vehicules`
--

DROP TABLE IF EXISTS `historique_vehicules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historique_vehicules` (
  `ID_historique` int(11) NOT NULL,
  `Kilometrage` int(11) DEFAULT NULL,
  `Année` date DEFAULT NULL,
  PRIMARY KEY (`ID_historique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historique_vehicules`
--

LOCK TABLES `historique_vehicules` WRITE;
/*!40000 ALTER TABLE `historique_vehicules` DISABLE KEYS */;
INSERT INTO `historique_vehicules` VALUES (1,150000,'2021-01-16'),(2,0,'2022-09-16'),(3,200000,'2016-05-06'),(4,0,'2022-09-25'),(5,110000,'2018-11-15'),(6,300000,'2010-04-15'),(7,10000,'2021-06-02'),(8,0,'2022-01-02'),(9,0,'2022-02-20'),(10,170000,'2015-10-26');
/*!40000 ALTER TABLE `historique_vehicules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `ID_images` int(11) NOT NULL AUTO_INCREMENT,
  `src` text DEFAULT NULL,
  `nom_img` varchar(250) DEFAULT NULL,
  `dat_pub` datetime DEFAULT current_timestamp(),
  `ID_Voitures` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_images`),
  KEY `ID_Voitures` (`ID_Voitures`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`ID_Voitures`) REFERENCES `voitures` (`ID_Voitures`),
  CONSTRAINT `images_ibfk_2` FOREIGN KEY (`ID_Voitures`) REFERENCES `voitures` (`ID_Voitures`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'https://www.auto-data.net/images/f61/Volkswagen-Golf-VIII_1.jpg','Golf 2.0 TSI','2022-10-07 10:29:17',1),(2,'https://assets.largus.fr/mixad/h/renault/master-fg-utilitaire-3-f3500-l3h2-2-3-dci-145ch-energy-grand-confort-euro6/B3LMMdvQlAEV0biezGggblkoTyXDOWKOOhViLvOYERc9YvnD9WJ6IwtYix9my0JT0Bw4rzwjEO6-yrvw-DqoilV7lKYEy2-JHOOQGy3wD_WVD9c1wCCAvQLEQGQfgKyW.jpg?w=800&h=600&fit=fill','Renault master grand confort l3h2','2022-10-07 10:30:38',2),(3,'https://images.caradisiac.com/logos-ref/modele/modele--peugeot-208-gti/S0-modele--peugeot-208-gti.jpg','208 1.6 THP 200 GTi','2022-10-07 10:37:34',3),(4,'https://www.auto-infos.fr/mediatheque/7/7/1/000236177_600x400_c.jpg','C5 Aircross 1.5 Business','2022-10-07 10:37:34',4),(5,'https://images.caradisiac.com/logos-ref/modele/modele--volkswagen-t-roc-r/S6-modele--volkswagen-t-roc-r.jpg','T-Roc R 2.0 TSI','2022-10-07 10:37:34',5),(6,'https://www.largus.fr/images/photos/rsi/_G_JPG/Voitures/FORD/Focus/III/Ph1/Berline_5_portes/troisquartavant2.jpg','Focus 2.0 SCTi EcoBoost','2022-10-07 10:44:58',6),(7,'https://www.autokoo.com/assets/images/jato_400/BMW/X3/2018/5OD_225.JPG','X3 20D XDRIVE BUSINESS BVA','2022-10-07 10:44:58',7),(8,'https://hellobiz.fr/wp-content/uploads/2020/09/2020-07-25_Image_20C0404-076.jpg','Class-S Classe Hybrid','2022-10-07 10:44:58',8),(9,'https://medias.auto-selection.com/fiche-technique/audi-a4-id-NoxBYC6+1Kj2MlJKRz1SWJ12sNNYc5rz0bjdzA==.jpeg?w=800&h=600','A4 3.2 FSI Ambition Quattro Tiptronic','2022-10-07 10:44:58',9),(10,'https://www.largus.fr/images/images/opel-astra-2015-01_4.jpg','Astra K 1.4 Jahre Start/Stop','2022-10-07 10:44:58',10),(11,'https://cdn.motor1.com/images/mgl/vkPZq/s1/volkswagen-golf-gti-8.jpg','Golf 2.0 TSI','2022-10-12 10:09:52',1),(12,'https://www.edenauto.com/uploads/media/vehicle_media/0029/81/thumb_2880711_vehicle_media_big.jpeg','Renault master grand confort l3h2','2022-10-12 10:09:52',2),(13,'https://www.larevueautomobile.com/images/articles/Peugeot/208-GTI-2013/Exterieur/Peugeot_208_GTI_2013_004.jpg','208 1.6 THP 200 GTi','2022-10-12 10:09:52',3),(14,'https://images.netdirector.co.uk/gforces-auto/image/upload/w_1150,h_647,q_auto,c_fill,f_auto,fl_lossy/auto-client/63ac0ebd98cb6b70156cb8fcbb0520c1/citroen_c5_aircross_2022_7_.jpg','C5 Aircross 1.5 Business','2022-10-12 10:09:52',4),(15,'https://www.turbo.fr/sites/default/files/styles/article_690x405/public/migration/car_card/field_image/000000008803242.jpg.webp?itok=hlnYIBzb','T-Roc R 2.0 TSI','2022-10-12 10:09:52',5),(16,'https://picolio.auto123.com/art-images/134611/Ford-Focus-Titanium-2012_028.jpg?scale=792x528','Focus 2.0 SCTi EcoBoost','2022-10-12 10:09:52',6),(17,'https://imgservprod.bymycar.fr/image/?apikey=437fe90bfc2e7879f0953434890aa246&url=https://feassets.bymycar.fr/vo/27/183885/0/bmw-x3-xdrive20d-190ch-bva8-occasion-2019-noisy-le-sec.jpg&output=webp&q=50&ext=.jpg','X3 20D XDRIVE BUSINESS BVA','2022-10-12 10:09:52',7),(18,'https://static.moniteurautomobile.be/imgcontrol/images_tmp/clients/moniteur/c680-d465/content/medias/images/test_drives/10000/300/80/mercedes-s500-4matic-2021-1.jpg','Class-S Classe Hybrid','2022-10-12 10:09:52',8),(19,'https://www.stallion-motors.fr/wp-content/uploads/2020/03/21-5-11.jpeg','A4 3.2 FSI Ambition Quattro Tiptronic','2022-10-12 10:09:52',9),(20,'https://mediarepository-wired-prod-1-euw1.wrd-aws.com/uci/vehicles/67d8afbe-070c-f998-379b-cbaa2d8e1c94/25000000261vo22030302_large.jpg','Astra K 1.4 Jahre Start/Stop','2022-10-12 10:09:52',10);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marques`
--

DROP TABLE IF EXISTS `marques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marques` (
  `ID_Marques` int(11) NOT NULL,
  `Marque` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Marques`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marques`
--

LOCK TABLES `marques` WRITE;
/*!40000 ALTER TABLE `marques` DISABLE KEYS */;
INSERT INTO `marques` VALUES (1,'Renault'),(2,'Peugeot'),(3,'Citroën'),(4,'Volskwagen'),(5,'Ford'),(6,'Opel'),(7,'Mercedes'),(8,'BMW'),(9,'Fiat'),(10,'Alfa-Roméo'),(11,'Audi');
/*!40000 ALTER TABLE `marques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prix`
--

DROP TABLE IF EXISTS `prix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prix` (
  `ID_Prix` int(11) NOT NULL,
  `Prix` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_Prix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prix`
--

LOCK TABLES `prix` WRITE;
/*!40000 ALTER TABLE `prix` DISABLE KEYS */;
INSERT INTO `prix` VALUES (1,25000.00),(2,20000.00),(3,23000.00),(4,16000.00),(5,6000.00),(6,10000.00),(7,15000.00),(8,5000.00),(9,25000.00),(10,28000.00);
/*!40000 ALTER TABLE `prix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `ID_Types` int(11) NOT NULL,
  `Types` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Types`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'A4'),(2,'T-Roc'),(3,'Master'),(4,'C5 Aircross'),(5,'Golf'),(6,'Focus'),(7,'X3'),(8,'208'),(9,'Class-S'),(10,'Astra');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendeur`
--

DROP TABLE IF EXISTS `vendeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendeur` (
  `ID_Vendeurs` int(11) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Adresses` varchar(50) DEFAULT NULL,
  `Vendeurs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Vendeurs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendeur`
--

LOCK TABLES `vendeur` WRITE;
/*!40000 ALTER TABLE `vendeur` DISABLE KEYS */;
INSERT INTO `vendeur` VALUES (1,'Pro','15 rue des lillas','Bernard DUFOUR'),(2,'Pro','14 rue des Oignons','Yves DUPOND'),(3,'Particulier','2 rue des Courgette','Sarah Tatouille'),(4,'Particulier','10 rue des Saucissons','Jean NAIMAR Ducode'),(5,'Particulier','12 rue des Tulipes','Mahmoud TAHAR'),(6,'Pro','11 rue des Acacias','Yasmine ZIZOU'),(7,'Pro','2 rue des Orthences','Sté VROOM-VROOM'),(8,'Pro','4 rue des Jonquilles','Sté TuTuTTe'),(9,'Particulier','20 rue des Pissenlits','Jean BOMBEUR'),(10,'Pro','6 rue des Aubergines','Cie SKROS');
/*!40000 ALTER TABLE `vendeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voitures` (
  `ID_Voitures` int(11) NOT NULL,
  `Modele` varchar(50) DEFAULT NULL,
  `ID_historique` int(11) NOT NULL,
  `ID_Vendeurs` int(11) NOT NULL,
  `ID_Couleur` int(11) NOT NULL,
  `ID_Energie` int(11) NOT NULL,
  `ID_Tech` int(11) NOT NULL,
  `ID_Données2Bases` int(11) NOT NULL,
  `ID_Prix` int(11) NOT NULL,
  `ID_Types` int(11) NOT NULL,
  `ID_Marques` int(11) NOT NULL,
  PRIMARY KEY (`ID_Voitures`),
  KEY `ID_historique` (`ID_historique`),
  KEY `ID_Vendeurs` (`ID_Vendeurs`),
  KEY `ID_Couleur` (`ID_Couleur`),
  KEY `ID_Energie` (`ID_Energie`),
  KEY `ID_Tech` (`ID_Tech`),
  KEY `ID_Données2Bases` (`ID_Données2Bases`),
  KEY `ID_Prix` (`ID_Prix`),
  KEY `ID_Types` (`ID_Types`),
  KEY `ID_Marques` (`ID_Marques`),
  CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`ID_historique`) REFERENCES `historique_vehicules` (`ID_historique`),
  CONSTRAINT `voitures_ibfk_2` FOREIGN KEY (`ID_Vendeurs`) REFERENCES `vendeur` (`ID_Vendeurs`),
  CONSTRAINT `voitures_ibfk_3` FOREIGN KEY (`ID_Couleur`) REFERENCES `couleur_garnissage_intérieur` (`ID_Couleur`),
  CONSTRAINT `voitures_ibfk_4` FOREIGN KEY (`ID_Energie`) REFERENCES `consommation_en_énergie` (`ID_Energie`),
  CONSTRAINT `voitures_ibfk_5` FOREIGN KEY (`ID_Tech`) REFERENCES `caractéristiques_techniques` (`ID_Tech`),
  CONSTRAINT `voitures_ibfk_6` FOREIGN KEY (`ID_Données2Bases`) REFERENCES `données_de_bases` (`ID_Données2Bases`),
  CONSTRAINT `voitures_ibfk_7` FOREIGN KEY (`ID_Prix`) REFERENCES `prix` (`ID_Prix`),
  CONSTRAINT `voitures_ibfk_8` FOREIGN KEY (`ID_Types`) REFERENCES `types` (`ID_Types`),
  CONSTRAINT `voitures_ibfk_9` FOREIGN KEY (`ID_Marques`) REFERENCES `marques` (`ID_Marques`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'2.0 TSI',2,1,1,3,5,7,10,5,4),(2,'l3h2 grand confort',1,2,2,5,2,1,4,3,1),(3,'1.6 THP 200 GTi',4,3,3,9,9,4,2,8,2),(4,'1.5 Business',5,4,4,7,6,5,3,4,3),(5,'R 2.0 TSI',3,5,5,3,5,5,4,2,4),(6,'2.0 SCTi EcoBoost',6,6,6,5,9,8,5,6,5),(7,'20D XDRIVE BUSINESS BVA',8,7,7,5,7,8,8,7,8),(8,'Classe Hybrid',8,9,9,7,5,6,9,9,7),(9,'3.2 FSI Ambition Quattro Tiptronic',10,10,10,3,4,2,8,1,11),(10,'K 1.4 Jahre Start/Stop',7,10,5,3,4,2,8,10,6);
/*!40000 ALTER TABLE `voitures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'site_voitures'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-07 15:46:30
