-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: seoinf
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `am`
--

DROP TABLE IF EXISTS `am`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am`
--

LOCK TABLES `am` WRITE;
/*!40000 ALTER TABLE `am` DISABLE KEYS */;
INSERT INTO `am` VALUES (1,'Виталик'),(2,'Александр'),(3,'Алексей'),(4,'Сергей');
/*!40000 ALTER TABLE `am` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Иванов Иван Иванович'),(2,'Петров Петр Петрович'),(3,'Сергеев Сергей Сергеевич'),(4,'Иванов Иван Иванович'),(5,'Иванов Иван Иванович'),(6,'Иванов Иван Иванович'),(7,'Петров Петр Петрович'),(8,'Петров Петр Петрович'),(9,'Иванов Иван Иванович'),(10,'Иванов Иван Иванович'),(11,'Иванов Иван Иванович'),(12,'Иванов Иван Иванович'),(13,'Иванов Иван Иванович'),(14,'Иванов Иван Иванович'),(15,'Сергеев Сергей Сергеевич'),(16,'Сироткин Виталий Дмитриевич'),(17,'Соколов Михаил Иванович'),(18,'Сурнин Димид Константинович'),(19,'Сергеев Сергей Сергеевич'),(20,'Сурнин Димид Константинович');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_client` int(11) DEFAULT NULL,
  `ID_AM` int(11) DEFAULT NULL,
  `Date_order` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_AM_idx` (`ID_AM`),
  KEY `ID_client_idx` (`ID_client`),
  CONSTRAINT `ID_AM` FOREIGN KEY (`ID_AM`) REFERENCES `am` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_client` FOREIGN KEY (`ID_client`) REFERENCES `clients` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,'2015-10-01'),(2,2,1,'2015-10-02'),(3,3,1,'2015-10-03'),(4,1,2,'2015-10-05'),(5,1,1,'2015-11-01'),(9,2,4,'2015-12-21'),(10,2,4,'2015-12-21'),(11,2,4,'2015-12-21'),(12,2,4,'2015-12-21'),(13,2,4,'2015-12-21'),(14,9,4,'2015-12-21'),(20,1,4,'2015-12-21'),(22,4,4,'2015-12-21'),(24,12,4,'2015-12-21'),(25,12,4,'2015-12-21'),(26,12,4,'2015-12-21'),(27,6,4,'2015-12-21'),(28,6,4,'2015-12-21'),(29,6,4,'2015-12-21'),(36,12,4,'2015-12-21'),(37,12,4,'2015-12-21'),(38,12,4,'2015-12-21'),(39,12,4,'2015-12-21'),(40,12,4,'2015-12-21'),(41,6,4,'2015-12-21'),(42,6,4,'2015-12-21'),(43,6,4,'2015-12-21'),(44,6,4,'2015-12-21'),(45,6,4,'2015-12-21'),(46,6,4,'2015-12-21'),(47,6,4,'2015-12-21'),(48,6,4,'2015-12-21'),(49,6,4,'2015-12-21'),(50,6,4,'2015-12-21'),(55,1,4,'2015-12-21'),(58,10,4,'2015-12-21'),(59,10,4,'2015-12-21'),(60,10,4,'2015-12-21'),(61,10,4,'2015-12-21'),(62,10,4,'2015-12-21'),(63,10,4,'2015-12-21'),(64,10,4,'2015-12-21'),(65,10,4,'2015-12-21'),(66,10,4,'2015-12-21'),(67,10,4,'2015-12-21'),(68,10,4,'2015-12-21'),(69,10,4,'2015-12-21'),(70,10,4,'2015-12-21'),(71,10,4,'2015-12-21'),(72,10,4,'2015-12-21'),(73,10,4,'2015-12-21'),(74,10,4,'2015-12-21'),(75,10,4,'2015-12-21'),(76,10,4,'2015-12-21'),(77,10,4,'2015-12-21'),(78,10,4,'2015-12-21'),(79,10,4,'2015-12-21'),(80,10,4,'2015-12-21'),(81,10,4,'2015-12-21'),(82,9,4,'2015-12-21'),(83,9,4,'2015-12-21'),(84,9,4,'2015-12-21'),(85,9,4,'2015-12-21'),(86,1,2,'2015-12-21'),(87,1,2,'2015-12-21'),(88,11,2,'2015-12-21'),(94,11,3,'2015-12-21'),(95,6,2,'2015-12-21'),(96,6,2,'2015-12-21'),(97,6,2,'2015-12-21'),(98,1,3,'2015-12-21'),(101,12,2,'2016-03-12'),(102,11,2,'2016-05-28');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_managers`
--

DROP TABLE IF EXISTS `report_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_managers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Begin_date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `Name_manager` varchar(50) DEFAULT NULL,
  `Cost_of_sales` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_managers`
--

LOCK TABLES `report_managers` WRITE;
/*!40000 ALTER TABLE `report_managers` DISABLE KEYS */;
INSERT INTO `report_managers` VALUES (9,'2015-10-01','2015-10-02','Виталик',10000),(10,'2015-10-01','2015-10-02','Александр',14000),(11,'2015-12-21','2015-12-22','Александр',19500),(12,'2015-12-21','2015-12-22','Сергей',650000),(13,'2015-10-03','2015-12-31','Виталик',14000),(14,'2015-10-03','2015-12-31','Александр',22500),(15,'2015-10-03','2015-12-31','Сергей',650000),(16,'2015-12-03','2015-12-31','Александр',86500),(17,'2015-12-03','2015-12-31','Сергей',650000),(18,'2015-10-02','2015-12-16','Виталик',24000),(19,'2015-10-02','2015-12-16','Александр',3000),(20,'2015-10-01','2015-12-30','Виталик',24000),(21,'2015-10-01','2015-12-30','Александр',129000),(22,'2015-10-01','2015-12-30','Алексей',25500),(23,'2015-10-01','2015-12-30','Сергей',650000),(24,'2015-01-01','2015-12-31','Виталик',24000),(25,'2015-01-01','2015-12-31','Александр',129000),(26,'2015-01-01','2015-12-31','Алексей',52000),(27,'2015-01-01','2015-12-31','Сергей',650000);
/*!40000 ALTER TABLE `report_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servce_num`
--

DROP TABLE IF EXISTS `servce_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servce_num` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servce_num`
--

LOCK TABLES `servce_num` WRITE;
/*!40000 ALTER TABLE `servce_num` DISABLE KEYS */;
INSERT INTO `servce_num` VALUES (1,'Создание сайта-визитки',10000),(2,'Реклама в Яндекс директ',3000),(3,'Реклама в Google Adsense',4000),(4,'Наполнение сайта',1500),(5,'Создание landing page',5000);
/*!40000 ALTER TABLE `servce_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  `ID_order` int(11) DEFAULT NULL,
  `ID_service` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_service_idx` (`ID_service`),
  KEY `ID_order_idx` (`ID_order`),
  CONSTRAINT `ID_order` FOREIGN KEY (`ID_order`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ID_service` FOREIGN KEY (`ID_service`) REFERENCES `servce_num` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'В отделе разработки','Сайт-визитка для Васи',10000,1,1),(2,'Готово','Реклама для Васи',4000,1,3),(3,'В отделе разработки','Сайт-визитка для Валеры',10000,2,1),(4,'В отделе разработки','Сайт-визитка для Сереги',10000,3,1),(5,'Готово','Реклама для Валеры',3000,4,2),(6,'Готово','Реклама для Васи',4000,5,3),(42,'Новый','Создание сайта-визитки',10000,11,1),(44,'Новый','Создание сайта-визитки',10000,13,1),(45,'Новый','Реклама в Яндекс директ',3000,14,2),(46,'Новый','Создание сайта-визитки',10000,14,1),(47,'Новый','Создание сайта-визитки	в количестве:	2',10000,14,1),(48,'Новый','Реклама в Яндекс директ	в количестве:	4',3000,14,2),(49,'Новый','Создание сайта-визитки 	 в количестве:	2',10000,14,1),(50,'Новый','Создание сайта-визитки	 в количестве:	2',10000,14,1),(51,'Новый','Создание сайта-визитки	 в количестве:	2',10000,14,1),(52,'Новый','Создание landing page	 в количестве:	13',5000,20,5),(53,'Новый','Реклама в Google Adsense	 в количестве:	7',4000,20,3),(54,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,20,2),(55,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,20,3),(56,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,22,3),(57,'Новый','Реклама в Яндекс директ	 в количестве:	5',3000,22,2),(58,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,24,3),(59,'Новый','Наполнение сайта	 в количестве:	1',1500,24,4),(60,'Новый','Реклама в Google Adsense	 в количестве:	3',4000,25,3),(61,'Новый','Создание сайта-визитки	 в количестве:	1',10000,26,1),(63,'Новый','Реклама в Google Adsense	 в количестве:	3',4000,27,3),(64,'Новый','Наполнение сайта	 в количестве:	4',1500,28,4),(65,'Новый','Создание landing page	 в количестве:	6',5000,28,5),(66,'Новый','Создание сайта-визитки	 в количестве:	5',10000,29,1),(67,'Новый','Наполнение сайта	 в количестве:	6',1500,29,4),(70,'Новый','Реклама в Яндекс директ	 в количестве:	5',3000,29,2),(71,'Новый','Создание сайта-визитки	 в количестве:	4',10000,29,1),(72,'Новый','Реклама в Яндекс директ	 в количестве:	2',3000,29,2),(73,'Новый','Наполнение сайта	 в количестве:	5',1500,29,4),(75,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,37,2),(77,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,39,2),(80,'Новый','Реклама в Google Adsense	 в количестве:	4',4000,42,3),(81,'Новый','Реклама в Яндекс директ	 в количестве:	2',3000,42,2),(82,'Новый','Создание сайта-визитки	 в количестве:	6',10000,43,1),(84,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,44,2),(85,'Новый','Наполнение сайта	 в количестве:	4',1500,44,4),(86,'Новый','Создание сайта-визитки	 в количестве:	5',10000,44,1),(87,'Новый','Реклама в Яндекс директ	 в количестве:	2',3000,45,2),(88,'Новый','Создание landing page	 в количестве:	1',5000,45,5),(89,'Новый','Наполнение сайта	 в количестве:	3',1500,45,4),(91,'Новый','Наполнение сайта	 в количестве:	1',1500,46,4),(92,'Новый','Создание сайта-визитки	 в количестве:	2',10000,47,1),(93,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,47,2),(95,'Новый','Создание сайта-визитки	 в количестве:	3',10000,48,1),(96,'Новый','Реклама в Яндекс директ	 в количестве:	3',3000,48,2),(97,'Новый','Реклама в Google Adsense	 в количестве:	2',4000,48,3),(98,'Новый','Создание сайта-визитки	 в количестве:	1',10000,49,1),(100,'Новый','Создание сайта-визитки	 в количестве:	1',10000,50,1),(102,'Новый','Создание сайта-визитки	 в количестве:	1',10000,50,1),(104,'Новый','Создание сайта-визитки	 в количестве:	1',10000,50,1),(106,'Новый','Создание сайта-визитки	 в количестве:	2',10000,50,1),(107,'Новый','Реклама в Яндекс директ	 в количестве:	2',3000,50,2),(108,'Новый','Реклама в Google Adsense	 в количестве:	8',4000,50,3),(109,'Новый','Создание сайта-визитки	 в количестве:	3',10000,50,1),(110,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,50,2),(111,'Новый','Создание сайта-визитки	 в количестве:	1',10000,55,1),(112,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,55,2),(113,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,55,3),(114,'Новый','Создание сайта-визитки	 в количестве:	1',10000,55,1),(116,'Новый','Создание сайта-визитки	 в количестве:	1',10000,55,1),(117,'Новый','Создание сайта-визитки	 в количестве:	2',10000,58,1),(119,'Новый','Реклама в Google Adsense	 в количестве:	12',4000,58,3),(121,'Новый','Создание сайта-визитки	 в количестве:	2',10000,60,1),(123,'Новый','Реклама в Google Adsense	 в количестве:	12',4000,60,3),(124,'Новый','Создание сайта-визитки	 в количестве:	3',10000,61,1),(125,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,61,2),(126,'Новый','Создание сайта-визитки	 в количестве:	3',10000,62,1),(127,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,62,2),(129,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,63,3),(131,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,64,3),(132,'Новый','Создание сайта-визитки	 в количестве:	1',10000,65,1),(134,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,65,3),(135,'Новый','Создание сайта-визитки	 в количестве:	1',10000,66,1),(137,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,66,3),(138,'Новый','Создание сайта-визитки	 в количестве:	1',10000,67,1),(141,'Новый','Создание сайта-визитки	 в количестве:	4',10000,68,1),(144,'Новый','Создание сайта-визитки	 в количестве:	2',10000,69,1),(146,'Новый','Наполнение сайта	 в количестве:	4',1500,69,4),(147,'Новый','Создание сайта-визитки	 в количестве:	2',10000,70,1),(149,'Новый','Наполнение сайта	 в количестве:	4',1500,70,4),(150,'Новый','Создание сайта-визитки	 в количестве:	4',10000,71,1),(151,'Новый','Реклама в Яндекс директ	 в количестве:	6',3000,71,2),(152,'Новый','Создание сайта-визитки	 в количестве:	3',10000,72,1),(154,'Новый','Создание landing page	 в количестве:	5',5000,72,5),(155,'Новый','Создание сайта-визитки	 в количестве:	3',10000,73,1),(157,'Новый','Создание landing page	 в количестве:	5',5000,73,5),(158,'Новый','Создание сайта-визитки	 в количестве:	3',10000,74,1),(159,'Новый','Создание landing page	 в количестве:	5',5000,74,5),(160,'Новый','Создание сайта-визитки	 в количестве:	6',10000,75,1),(161,'Новый','Реклама в Google Adsense	 в количестве:	11',4000,75,3),(162,'Новый','Реклама в Яндекс директ	 в количестве:	5',3000,76,2),(163,'Новый','Создание landing page	 в количестве:	2',5000,77,5),(164,'Новый','Наполнение сайта	 в количестве:	2',1500,77,4),(165,'Новый','Реклама в Яндекс директ	 в количестве:	4',3000,77,2),(166,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,78,3),(167,'Новый','Наполнение сайта	 в количестве:	7',1500,78,4),(168,'Новый','Создание landing page	 в количестве:	8',5000,78,5),(169,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,79,3),(170,'Новый','Наполнение сайта	 в количестве:	7',1500,79,4),(171,'Новый','Создание landing page	 в количестве:	8',5000,79,5),(172,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,80,3),(173,'Новый','Наполнение сайта	 в количестве:	7',1500,80,4),(175,'Новый','Реклама в Google Adsense	 в количестве:	5',4000,81,3),(176,'Новый','Наполнение сайта	 в количестве:	7',1500,81,4),(178,'Новый','Создание сайта-визитки	 в количестве:	2',10000,82,1),(179,'Новый','Реклама в Google Adsense	 в количестве:	3',4000,83,3),(180,'Новый','Создание сайта-визитки	 в количестве:	3',10000,83,1),(181,'Новый','Создание сайта-визитки	 в количестве:	5',10000,84,1),(182,'Новый','Создание landing page	 в количестве:	12',5000,84,5),(183,'Новый','Наполнение сайта	 в количестве:	11',1500,84,4),(184,'Новый','Создание сайта-визитки	 в количестве:	5',10000,85,1),(185,'Новый','Создание landing page	 в количестве:	12',5000,85,5),(186,'Новый','Наполнение сайта	 в количестве:	11',1500,85,4),(187,'Новый','Создание сайта-визитки	 в количестве:	5',10000,86,1),(188,'Новый','Реклама в Яндекс директ	 в количестве:	8',3000,86,2),(189,'Новый','Наполнение сайта	 в количестве:	4',1500,87,4),(190,'Новый','Создание landing page	 в количестве:	7',5000,87,5),(191,'Новый','Создание сайта-визитки	 в количестве:	6',10000,88,1),(192,'Новый','Реклама в Яндекс директ	 в количестве:	3',3000,88,2),(193,'Новый','Реклама в Google Adsense	 в количестве:	1',4000,88,3),(194,'Новый','Создание сайта-визитки	 в количестве:	1',10000,88,1),(195,'Новый','Создание сайта-визитки	 в количестве:	1',10000,88,1),(196,'Новый','Создание сайта-визитки	 в количестве:	1',10000,88,1),(197,'Новый','Создание сайта-визитки	 в количестве:	1',10000,88,1),(198,'Новый','Создание сайта-визитки	 в количестве:	1',10000,88,1),(199,'Новый','Создание сайта-визитки	 в количестве:	3',10000,94,1),(200,'Новый','Наполнение сайта	 в количестве:	5',1500,94,4),(201,'Новый','Реклама в Яндекс директ	 в количестве:	5',3000,95,2),(202,'Новый','Реклама в Яндекс директ	 в количестве:	2',3000,96,2),(203,'Новый','Создание сайта-визитки	 в количестве:	1',10000,97,1),(204,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,97,2),(205,'Новый','Создание landing page	 в количестве:	1',5000,97,5),(206,'Новый','Наполнение сайта	 в количестве:	1',1500,97,4),(207,'Новый','Создание сайта-визитки	 в количестве:	2',10000,98,1),(208,'Новый','Реклама в Google Adsense	 в количестве:	2',4000,98,3),(209,'Новый','Создание landing page	 в количестве:	6',5000,98,5),(210,'Новый','Реклама в Google Adsense	 в количестве:	7',4000,98,3),(211,'Новый','Наполнение сайта	 в количестве:	1',1500,98,4),(212,'Новый','Создание сайта-визитки	 в количестве:	5',10000,98,1),(213,'Новый','Реклама в Яндекс директ	 в количестве:	7',3000,98,2),(214,'Новый','Реклама в Яндекс директ	 в количестве:	5',3000,98,2),(215,'Новый','Создание landing page	 в количестве:	3',5000,101,5),(216,'Новый','Создание сайта-визитки	 в количестве:	4',10000,101,1),(217,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,102,2),(218,'Новый','Реклама в Яндекс директ	 в количестве:	1',3000,102,2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Group` varchar(45) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Login_UNIQUE` (`Login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Виталик','M','vit','MTIz'),(2,'Владимир','U','vova','MTIz'),(3,'Александр','M','manager','YWJDZDEyMw=='),(4,'Алексей','JM','junior','cTV3RTE=');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-19  0:54:34
