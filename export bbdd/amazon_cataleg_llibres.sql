CREATE DATABASE  IF NOT EXISTS `amazon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `amazon`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amazon
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cataleg_llibres`
--

DROP TABLE IF EXISTS `cataleg_llibres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cataleg_llibres` (
  `isbn_llibre` int NOT NULL COMMENT 'el id único del llibre',
  `titol_llibre` varchar(45) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'el títol del llibre',
  `unitats_disp` int DEFAULT NULL COMMENT 'quates unitats en queden d''aquest llibre',
  `preu` decimal(10,0) NOT NULL COMMENT 'el preu del llibre',
  `autors_id_autor` int NOT NULL,
  PRIMARY KEY (`isbn_llibre`),
  KEY `títol` (`titol_llibre`),
  KEY `fk_cataleg-llibres_autors_idx` (`autors_id_autor`),
  CONSTRAINT `fk_cataleg-llibres_autors` FOREIGN KEY (`autors_id_autor`) REFERENCES `autors` (`id_autor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cataleg_llibres`
--

LOCK TABLES `cataleg_llibres` WRITE;
/*!40000 ALTER TABLE `cataleg_llibres` DISABLE KEYS */;
INSERT INTO `cataleg_llibres` VALUES (234567812,'El temps de les cireres',3,18,2),(245123658,'Nada',15,13,4),(251364789,'Entre visillos',7,15,3),(254785123,'La plaça del diamant',20,17,1),(1234567891,'El carrer de les camèlies',5,17,1);
/*!40000 ALTER TABLE `cataleg_llibres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 11:42:30
