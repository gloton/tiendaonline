CREATE DATABASE  IF NOT EXISTS `tiendaonline` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tiendaonline`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 192.168.1.173    Database: tiendaonline
-- ------------------------------------------------------
-- Server version	5.1.58-1ubuntu1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `telefono` int(12) DEFAULT NULL,
  `movil` int(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `direccioncalle` varchar(255) DEFAULT NULL,
  `codigopostal` varchar(255) DEFAULT NULL,
  `poblacion` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `dninif` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Jose Vicente','Carratala','info@josevicentecarratala.com','jocarsa','jocarsa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Juan','Lopez','info@jocarsa.com','juan','lopez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenesproductos`
--

DROP TABLE IF EXISTS `imagenesproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagenesproductos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idproducto` int(100) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenesproductos`
--

LOCK TABLES `imagenesproductos` WRITE;
/*!40000 ALTER TABLE `imagenesproductos` DISABLE KEYS */;
INSERT INTO `imagenesproductos` VALUES (1,1,'lampara1a.png','Título 1','Descripción 1'),(2,1,'lampara1b.png','Título de la segunda imagen','Descripción'),(3,2,'lampara2a.png','Título de la imagen','Descripción'),(4,2,'lampara2b.png','Título','Descripción'),(5,3,'lampara3a.png','Título','Descripción'),(6,3,'lampara3b.png','Título','Descripción');
/*!40000 ALTER TABLE `imagenesproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineaspedido`
--

DROP TABLE IF EXISTS `lineaspedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineaspedido` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idpedido` int(100) DEFAULT NULL,
  `idproducto` int(100) DEFAULT NULL,
  `unidades` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineaspedido`
--

LOCK TABLES `lineaspedido` WRITE;
/*!40000 ALTER TABLE `lineaspedido` DISABLE KEYS */;
INSERT INTO `lineaspedido` VALUES (3,5,1,1),(4,5,2,1),(5,5,3,1),(6,6,1,1),(7,6,2,1),(8,6,3,1),(9,7,1,1),(10,7,2,1),(11,7,3,1),(12,8,1,1),(13,8,2,1),(14,8,3,1),(15,9,1,1),(16,9,2,1),(17,9,3,1),(18,10,1,1),(19,10,2,1),(20,10,3,1),(21,11,1,1),(22,12,1,1),(23,13,1,1),(24,14,1,1),(25,15,1,1),(26,16,1,1),(27,17,1,1),(28,18,1,1),(29,18,2,1),(30,18,3,1),(31,19,1,1),(32,19,2,1),(33,19,3,1),(34,19,2,1),(35,24,1,1),(36,24,2,1),(37,24,3,1),(38,25,1,1),(39,25,2,1),(40,25,3,1),(41,26,1,1),(42,27,1,1),(43,27,2,1),(44,27,3,1),(45,28,1,1),(46,29,1,1),(47,29,2,1),(48,29,3,1);
/*!40000 ALTER TABLE `lineaspedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `idcliente` int(100) DEFAULT NULL,
  `fecha` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (2,1,'1378370611','1'),(3,2,'1378370703','1'),(4,2,'1378371165','2'),(5,1,'1378371384','1'),(6,2,'1378371744','0'),(7,2,'1378371813','0'),(8,1,'1378371829','0'),(9,1,'1378371869','0'),(10,1,'1378372025','1'),(11,1,'1378373074','0'),(12,1,'1378373135','2'),(13,1,'1378373247','0'),(14,1,'1378373329','0'),(15,1,'1378373395','2'),(16,1,'1378373425','0'),(17,1,'1378375518','0'),(18,1,'1378375558','0'),(19,1,'1378391155','0'),(20,1,'1389086250','0'),(21,1,'1389086860','0'),(22,1,'1389087621','0'),(23,1,'1389087755','0'),(24,1,'1389087863','0'),(25,1,'1389088309','0'),(26,1,'1389088678','1'),(27,1,'1389089562','1'),(28,1,'1389089605','0'),(29,1,'1389089646','0');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` decimal(30,2) DEFAULT NULL,
  `peso` int(255) DEFAULT NULL,
  `longitud` int(255) DEFAULT NULL,
  `anchura` int(255) DEFAULT NULL,
  `altura` int(255) DEFAULT NULL,
  `existencias` int(255) DEFAULT NULL,
  `activado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Lámpara Icosaedro','Descripción de la lámpara icosaedro',21.00,1,20,20,20,6,1),(2,'Lámpara cubo','Esta es la descripción de la lámpara cubo',25.00,1,25,25,25,16,1),(3,'Lámpara Estrella','Descripción de la lámpara estrella',18.00,1,20,20,20,12,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-08 16:31:45
