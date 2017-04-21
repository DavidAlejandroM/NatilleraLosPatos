-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dbnatillera
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `tbl_socios`
--

DROP TABLE IF EXISTS `tbl_socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_socios` (
  `soc_id` int(11) NOT NULL AUTO_INCREMENT,
  `soc_nombres` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `soc_apellidos` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `soc_identificacion` int(10) NOT NULL,
  `soc_correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `soc_celular` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `soc_tip_socio_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`soc_id`),
  KEY `soc_tip_socio_id_idx` (`soc_tip_socio_id`),
  CONSTRAINT `soc_tip_socio_id` FOREIGN KEY (`soc_tip_socio_id`) REFERENCES `tbl_tipo_socio` (`tip_socio_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_socios`
--

LOCK TABLES `tbl_socios` WRITE;
/*!40000 ALTER TABLE `tbl_socios` DISABLE KEYS */;
INSERT INTO `tbl_socios` VALUES (1,'Juan Fernando','Alzate Giraldo',70289444,'juanfalzate@gmail.com','3218009480',2),(2,'David Alejandro','Marin Alzate',1041325808,'jandro240@gmail.com','3126569723',1);
/*!40000 ALTER TABLE `tbl_socios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20 17:50:00
