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
-- Table structure for table `factures`
--

DROP TABLE IF EXISTS `factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factures` (
  `id_factura` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'id de la factura que se va autoincrementant',
  `data` datetime NOT NULL COMMENT 'Data en la qual es genera la factura',
  `usuaris_id_usuari` int NOT NULL,
  `cataleg_llibres_isbn_llibre` int NOT NULL,
  PRIMARY KEY (`id_factura`,`usuaris_id_usuari`,`cataleg_llibres_isbn_llibre`),
  KEY `fk_factures_usuaris1_idx` (`usuaris_id_usuari`),
  KEY `fk_factures_cataleg-llibres1_idx` (`cataleg_llibres_isbn_llibre`),
  CONSTRAINT `fk_factures_cataleg-llibres1` FOREIGN KEY (`cataleg_llibres_isbn_llibre`) REFERENCES `cataleg_llibres` (`isbn_llibre`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_factures_usuaris1` FOREIGN KEY (`usuaris_id_usuari`) REFERENCES `usuaris` (`id_usuari`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factures`
--

LOCK TABLES `factures` WRITE;
/*!40000 ALTER TABLE `factures` DISABLE KEYS */;
INSERT INTO `factures` VALUES (1,'2020-10-21 00:00:00',3,254785123);
/*!40000 ALTER TABLE `factures` ENABLE KEYS */;
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
