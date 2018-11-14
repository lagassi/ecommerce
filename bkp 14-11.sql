-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_ecommerce
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.35-MariaDB

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
-- Table structure for table `tb_addresses`
--

DROP TABLE IF EXISTS `tb_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_addresses` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `desaddress` varchar(128) NOT NULL,
  `desnumber` varchar(16) NOT NULL,
  `descomplement` varchar(32) DEFAULT NULL,
  `descity` varchar(32) NOT NULL,
  `desstate` varchar(32) NOT NULL,
  `descountry` varchar(32) NOT NULL,
  `deszipcode` char(8) NOT NULL,
  `desdistrict` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idaddress`),
  KEY `fk_addresses_persons_idx` (`idperson`),
  CONSTRAINT `fk_addresses_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_addresses`
--

LOCK TABLES `tb_addresses` WRITE;
/*!40000 ALTER TABLE `tb_addresses` DISABLE KEYS */;
INSERT INTO `tb_addresses` VALUES (1,1,'Avenida Paulista','500','de 612 a 1510 - lado par','São Paulo','SP','Brasil','01310100','Bela Vista','2018-01-25 00:28:56'),(2,1,'Avenida Paulista','1076','de 612 a 1510 - lado par','São Paulo','SP','Brasil','01310100','Bela Vista','2018-01-29 12:14:03'),(3,1,'Avenida Paulista','1076','de 612 a 1510 - lado par','São Paulo','SP','Brasil','01310100','Bela Vista','2018-01-29 12:24:41'),(4,1,'Avenida Paulista','','de 612 a 1510 - lado par','São Paulo','SP','Brasil','01310100','Bela Vista','2018-01-29 12:49:35'),(5,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-02 20:28:21'),(6,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-02 20:34:15'),(7,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-02 20:34:43'),(8,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-10 16:22:54'),(9,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-10 16:39:09'),(10,1,'AV Presidente Vargas','1076','casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-13 16:25:13'),(11,1,'AV Presidente Vargas','1076','casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-15 00:18:16'),(12,1,'AV Presidente Vargas','1076','casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-15 01:00:46'),(13,1,'AV Presidente Vargas','1076','casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-15 01:03:47'),(14,1,'Av presidente Vargas N° 1076, Cristo Rei','1076','casa','São Miguel do Guaporé','RO','Brasil','76932000','casa','2018-06-16 00:33:40'),(15,1,'Av presidente Vargas N° 1076, Casa','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Casa','2018-06-18 02:07:48'),(16,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-18 02:10:03'),(17,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-18 02:12:05'),(18,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-18 02:14:19'),(19,1,'AV Presidente Vargas','1076','Casa','São Miguel do Guaporé','RO','Brasil','76932000','Cristo Rei','2018-06-20 00:07:20'),(20,1,'Capitão ferreira','326','','Cuiabá','Mato Grosso','Brasil','76932000','dasdsa','2018-07-15 03:24:07');
/*!40000 ALTER TABLE `tb_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_carts`
--

DROP TABLE IF EXISTS `tb_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_carts` (
  `idcart` int(11) NOT NULL AUTO_INCREMENT,
  `dessessionid` varchar(64) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `deszipcode` char(8) DEFAULT NULL,
  `vlfreight` decimal(10,2) DEFAULT NULL,
  `nrdays` int(11) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcart`),
  KEY `fk_carts_users_idx` (`iduser`),
  CONSTRAINT `fk_carts_users` FOREIGN KEY (`iduser`) REFERENCES `tb_users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carts`
--

LOCK TABLES `tb_carts` WRITE;
/*!40000 ALTER TABLE `tb_carts` DISABLE KEYS */;
INSERT INTO `tb_carts` VALUES (15,'e4j2cdq18iieo24tnv29diqq7n',NULL,'76932000',123.45,9,'2017-12-05 20:27:09'),(16,'hnmtf5vb7dat4dptdibecq4ov5',1,NULL,NULL,NULL,'2017-12-06 12:55:25'),(17,'ndv81hdgvn55snn4ccl6ptpqra',1,NULL,NULL,NULL,'2017-12-09 13:48:51'),(18,'d8gd0j6ukdp3qvo9bsk07760gr',1,'76801054',145.95,7,'2017-12-11 10:55:26'),(19,'osla927dee1tre4knj5qc8nb1n',NULL,NULL,NULL,NULL,'2017-12-11 22:21:00'),(20,'58gad9upf12qpscp0ga671rss6',NULL,NULL,NULL,NULL,'2017-12-12 01:36:10'),(21,'p4d7kr2g941sfnf9jnjfdpmdn6',NULL,'76932000',123.45,9,'2017-12-12 13:38:33'),(22,'ngcri07iq2dblithcps8p9j2mf',NULL,NULL,NULL,NULL,'2017-12-12 14:42:53'),(23,'7ti2dsvhpb1p7lvmvg5v58915v',NULL,'76932000',123.45,9,'2017-12-12 21:28:00'),(24,'jkru8d553ctc3cqgh9t518h0ek',NULL,'01310100',64.85,1,'2018-01-09 17:36:19'),(25,'frbpumsat8067chmrjjqvfvmhn',NULL,'01310100',93.17,1,'2018-01-16 11:39:13'),(26,'7dj7fd7uo9heirb46apo7ns9fm',NULL,NULL,NULL,NULL,'2018-01-16 21:09:14'),(27,'cqq0j2qinfi6ku9plkj30i0ei8',NULL,NULL,NULL,NULL,'2018-01-19 14:16:17'),(28,'vsu7rojhndlp6dh2galqfu1u8c',NULL,NULL,NULL,NULL,'2018-01-22 11:46:32'),(29,'te5otfi0c6gsubqd3dupnsig8p',NULL,'01310100',64.85,1,'2018-01-24 12:37:46'),(30,'cpcluie06r99i4t8v1epado4gn',NULL,NULL,NULL,NULL,'2018-01-24 21:52:53'),(31,'nq5spsanqb60amoigmjad00af4',NULL,NULL,NULL,NULL,'2018-01-26 16:23:52'),(32,'e2q2f1fjanu67g27g6vt6b3itn',NULL,NULL,NULL,NULL,'2018-01-26 21:15:21'),(33,'h8768b3t8cqel4adru087fk5b1',NULL,NULL,NULL,NULL,'2018-01-27 14:38:41'),(34,'11otq2vr0a6bps8ri6rgj6e3s4',NULL,NULL,NULL,NULL,'2018-01-28 14:11:51'),(35,'91bugc4mijjnkt6b9g6g9pq8v4',NULL,'01310100',93.17,1,'2018-01-29 12:13:22'),(36,'i9ahh9j5dbb10r7kd7ua9brssf',NULL,NULL,NULL,NULL,'2018-02-03 16:45:36'),(37,'b8qnf6cddtdu6mm6vi5im8usdv',NULL,NULL,NULL,NULL,'2018-02-06 15:38:44'),(38,'r9ralq2hjjvk8lmv2i9jkg9m3d',NULL,NULL,NULL,NULL,'2018-02-07 10:54:56'),(39,'6vv4c4u64m3f57m2c57lj4jhtl',NULL,NULL,NULL,NULL,'2018-02-09 18:27:04'),(40,'l51jhjoc8gaqj165egcep3v8og',NULL,NULL,NULL,NULL,'2018-02-14 20:51:25'),(41,'ma74rloi243725m2tn5vuk0e07',NULL,NULL,NULL,NULL,'2018-02-18 01:36:38'),(42,'6qug3gqhhclhfrj75fc7s74t5q',NULL,NULL,NULL,NULL,'2018-03-08 19:36:54'),(43,'mlo80rg7kobjuc7neeec0r3ipc',NULL,NULL,NULL,NULL,'2018-05-29 22:54:51'),(44,'6lm24mtl4voq0blgp9iutr224p',NULL,'76932000',120.24,12,'2018-06-02 19:48:51'),(45,'p0ljobahbtrdq1dlccggdfcfoh',NULL,'76932000',102.12,7,'2018-06-10 16:19:08'),(46,'bh5t5g71k9qdteavku7i9rj44h',NULL,'76932000',111.41,7,'2018-06-16 00:32:30'),(47,'qjtp2tvcbkpko2op2cp45pbpb5',NULL,'76932000',109.16,7,'2018-06-18 02:09:15'),(48,'88skeonr6quukadq4jt9ul89p8',NULL,'76932000',109.16,7,'2018-06-20 00:06:16'),(49,'i9dompg7hnh77ttl1l6m4o046n',NULL,NULL,NULL,NULL,'2018-07-04 01:48:42'),(50,'bpfn6aqgpat67oatdkdl9dbf3b',NULL,NULL,NULL,NULL,'2018-07-15 03:23:42'),(51,'9vk95aj904ekpshskk5hn0sita',NULL,NULL,NULL,NULL,'2018-08-15 01:03:32');
/*!40000 ALTER TABLE `tb_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cartsproducts`
--

DROP TABLE IF EXISTS `tb_cartsproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cartsproducts` (
  `idcartproduct` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `dtremoved` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcartproduct`),
  KEY `FK_cartsproducts_carts_idx` (`idcart`),
  KEY `fk_cartsproducts_products_idx` (`idproduct`),
  CONSTRAINT `fk_cartsproducts_carts` FOREIGN KEY (`idcart`) REFERENCES `tb_carts` (`idcart`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cartsproducts_products` FOREIGN KEY (`idproduct`) REFERENCES `tb_products` (`idproduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cartsproducts`
--

LOCK TABLES `tb_cartsproducts` WRITE;
/*!40000 ALTER TABLE `tb_cartsproducts` DISABLE KEYS */;
INSERT INTO `tb_cartsproducts` VALUES (35,15,4,'2017-12-05 17:27:40','2017-12-05 20:27:33'),(36,15,4,NULL,'2017-12-05 20:27:33'),(37,18,10,'2017-12-11 10:58:24','2017-12-11 13:57:26'),(38,18,4,NULL,'2017-12-11 13:58:32'),(39,18,4,NULL,'2017-12-11 14:54:08'),(40,19,4,NULL,'2017-12-11 22:21:01'),(41,20,4,NULL,'2017-12-12 01:36:10'),(42,21,4,NULL,'2017-12-12 13:38:33'),(43,22,4,NULL,'2017-12-12 17:12:27'),(44,23,4,NULL,'2017-12-12 21:28:00'),(45,24,4,NULL,'2018-01-09 17:36:19'),(46,25,4,'2018-01-16 11:36:45','2018-01-16 11:39:21'),(47,25,6,NULL,'2018-01-16 13:38:22'),(48,25,4,'2018-01-16 11:36:50','2018-01-16 14:07:03'),(49,25,4,NULL,'2018-01-16 14:36:06'),(50,29,4,NULL,'2018-01-25 00:26:17'),(51,35,4,NULL,'2018-01-29 12:13:28'),(52,35,6,NULL,'2018-01-29 12:24:25'),(53,44,6,NULL,'2018-06-02 20:24:40'),(54,45,4,'2018-06-10 12:38:04','2018-06-10 16:19:20'),(55,45,4,'2018-06-10 12:38:04','2018-06-10 16:19:42'),(56,45,10,'2018-06-10 12:37:56','2018-06-10 16:37:51'),(57,45,12,'2018-06-10 12:38:16','2018-06-10 16:38:12'),(58,45,11,'2018-06-10 12:38:32','2018-06-10 16:38:21'),(59,45,9,NULL,'2018-06-10 16:38:44'),(60,46,7,NULL,'2018-06-16 00:32:43'),(61,47,8,NULL,'2018-06-18 02:09:24'),(62,48,8,NULL,'2018-06-20 00:06:45');
/*!40000 ALTER TABLE `tb_cartsproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categories`
--

DROP TABLE IF EXISTS `tb_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categories` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `descategory` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categories`
--

LOCK TABLES `tb_categories` WRITE;
/*!40000 ALTER TABLE `tb_categories` DISABLE KEYS */;
INSERT INTO `tb_categories` VALUES (3,'Android','2017-11-01 12:19:46'),(4,'Apple','2017-11-01 12:25:40'),(5,'Motorola','2017-11-01 12:26:05'),(6,'Samsung','2017-11-01 12:26:11');
/*!40000 ALTER TABLE `tb_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_orders`
--

DROP TABLE IF EXISTS `tb_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orders` (
  `idorder` int(11) NOT NULL AUTO_INCREMENT,
  `idcart` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idstatus` int(11) NOT NULL,
  `idaddress` int(11) NOT NULL,
  `vltotal` decimal(10,2) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorder`),
  KEY `FK_orders_users_idx` (`iduser`),
  KEY `fk_orders_ordersstatus_idx` (`idstatus`),
  KEY `fk_orders_carts_idx` (`idcart`),
  KEY `fk_orders_addresses_idx` (`idaddress`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_orders`
--

LOCK TABLES `tb_orders` WRITE;
/*!40000 ALTER TABLE `tb_orders` DISABLE KEYS */;
INSERT INTO `tb_orders` VALUES (1,25,1,3,8,64.85,'2018-01-16 11:43:04'),(2,25,1,4,9,64.85,'2018-01-16 11:52:10'),(3,25,1,4,10,93.17,'2018-01-16 13:38:36'),(5,29,1,1,1,2564.84,'2018-01-25 00:28:57'),(6,35,1,1,2,2564.84,'2018-01-29 12:14:04'),(7,35,1,1,3,4480.94,'2018-01-29 12:24:41'),(8,35,1,1,4,4480.94,'2018-01-29 12:49:36'),(9,44,1,1,5,2008.02,'2018-06-02 20:28:23'),(10,44,1,1,6,2008.02,'2018-06-02 20:34:19'),(11,44,1,1,7,2008.02,'2018-06-02 20:34:44'),(12,45,1,1,8,4999.98,'2018-06-10 16:22:55'),(13,45,1,1,9,782.02,'2018-06-10 16:39:09'),(14,45,1,1,10,782.02,'2018-06-13 16:25:14'),(15,45,1,1,11,782.02,'2018-06-15 00:18:20'),(16,45,1,1,12,782.02,'2018-06-15 01:00:48'),(17,45,1,1,13,782.02,'2018-06-15 01:03:49'),(18,46,1,1,14,1410.41,'2018-06-16 00:33:42'),(19,46,1,1,15,1410.41,'2018-06-18 02:07:48'),(20,47,1,1,16,1258.16,'2018-06-18 02:10:04'),(21,47,1,1,17,1258.16,'2018-06-18 02:12:05'),(22,47,1,1,18,1258.16,'2018-06-18 02:14:20'),(23,48,1,1,19,1258.16,'2018-06-20 00:07:22'),(24,50,1,1,20,0.00,'2018-07-15 03:24:07');
/*!40000 ALTER TABLE `tb_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ordersstatus`
--

DROP TABLE IF EXISTS `tb_ordersstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ordersstatus` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `desstatus` varchar(32) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ordersstatus`
--

LOCK TABLES `tb_ordersstatus` WRITE;
/*!40000 ALTER TABLE `tb_ordersstatus` DISABLE KEYS */;
INSERT INTO `tb_ordersstatus` VALUES (1,'Em Aberto','2017-03-13 03:00:00'),(2,'Aguardando Pagamento','2017-03-13 03:00:00'),(3,'Pago','2017-03-13 03:00:00'),(4,'Entregue','2017-03-13 03:00:00');
/*!40000 ALTER TABLE `tb_ordersstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_persons`
--

DROP TABLE IF EXISTS `tb_persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_persons` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `desperson` varchar(64) NOT NULL,
  `desemail` varchar(128) DEFAULT NULL,
  `nrphone` bigint(20) DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_persons`
--

LOCK TABLES `tb_persons` WRITE;
/*!40000 ALTER TABLE `tb_persons` DISABLE KEYS */;
INSERT INTO `tb_persons` VALUES (1,'WILLIAN CANDIDO LAGASSI','lagassi72@gmail.com',2147483647,'2017-03-01 03:00:00'),(2,'Willian 2','wilhan_cross@hotmail.com',6984534016,'2018-01-24 16:16:06'),(3,'Willian Will','wilhan_cross@hotmail.com',6984534016,'2018-01-24 16:16:57'),(4,'Gabriel','zoin-14@hotmail.com',54586541,'2018-01-24 16:19:21');
/*!40000 ALTER TABLE `tb_persons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_products` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `desproduct` varchar(64) NOT NULL,
  `vlprice` decimal(10,2) NOT NULL,
  `vlwidth` decimal(10,2) NOT NULL,
  `vlheight` decimal(10,2) NOT NULL,
  `vllength` decimal(10,2) NOT NULL,
  `vlweight` decimal(10,2) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (4,'Ipad 32GB Wi-Fi Tela 9,7\" CÃ¢mera 8MP Prata - Apple',2499.99,0.75,16.95,24.50,0.47,'ipad-32gb','2017-11-03 13:51:31'),(5,'Smartphone Motorola Moto G5 Plus',1135.23,15.20,7.40,0.70,0.16,'smartphone-motorola-moto-g5-plus','2017-11-13 11:31:00'),(6,'Smartphone Moto Z Play',1887.78,14.10,0.90,1.16,0.13,'smartphone-moto-z-play','2017-11-13 11:31:00'),(7,'Smartphone Samsung Galaxy J5 Pro',1299.00,14.60,7.10,0.80,0.16,'smartphone-samsung-galaxy-j5','2017-11-13 11:31:00'),(8,'Smartphone Samsung Galaxy J7 Prime',1149.00,15.10,7.50,0.80,0.16,'smartphone-samsung-galaxy-j7','2017-11-13 11:31:00'),(9,'Smartphone Samsung Galaxy J3 Dual',679.90,14.20,7.10,0.70,0.14,'smartphone-samsung-galaxy-j3','2017-11-13 11:31:00'),(10,'Ipad 32GB Wi-Fi Tela 9,7\" CÃ¢mera 8MP Prata - A',21.00,1215.00,1515.00,151.00,151.00,'dasdas','2017-12-07 12:07:49'),(11,'feewewfew',1.50,1.50,1.50,1.50,1.50,'sda','2017-12-11 12:41:44'),(12,'Ipad 32GB Wi-Fi Tela 9,7\" CÃ¢mera 8MP Prata - Afdsf',1.00,1.00,1.00,1.00,1.00,'dsadas','2017-12-20 21:34:12');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productscategories`
--

DROP TABLE IF EXISTS `tb_productscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_productscategories` (
  `idcategory` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  PRIMARY KEY (`idcategory`,`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productscategories`
--

LOCK TABLES `tb_productscategories` WRITE;
/*!40000 ALTER TABLE `tb_productscategories` DISABLE KEYS */;
INSERT INTO `tb_productscategories` VALUES (3,5),(3,6),(3,7),(3,8),(3,9),(5,5),(5,6);
/*!40000 ALTER TABLE `tb_productscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `idperson` int(11) NOT NULL,
  `deslogin` varchar(64) NOT NULL,
  `despassword` varchar(256) NOT NULL,
  `inadmin` tinyint(4) NOT NULL DEFAULT '0',
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`iduser`),
  KEY `fk_users_persons_idx` (`idperson`),
  CONSTRAINT `fk_users_persons` FOREIGN KEY (`idperson`) REFERENCES `tb_persons` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,1,'lagassi72@gmail.com','$2y$12$Hayle4Ew2LVGy.P2/IWcCOkLBNzGjMlADc9C.pDoTSg2QXljSSd.6',1,'2017-03-13 03:00:00'),(2,2,'will2','$2y$12$cMPk64zbZF8/Wy.hjhhF/OCj4d99hVP3CSq9m1A67iA/VW9AXR7ra',0,'2018-01-24 16:16:06'),(3,3,'admin6456','$2y$12$.o79a.020E5eheHPHZGawuOwu45Mtiykl2D.bLSqqNhX9EhnboGpS',0,'2018-01-24 16:16:57'),(4,4,'gabriel','$2y$12$VcMlI13uLcuq5u.JjMq1mu7B6DP.QUFFJ5KPWQX9r.AkKurOtYX72',0,'2018-01-24 16:19:21');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userslogs`
--

DROP TABLE IF EXISTS `tb_userslogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userslogs` (
  `idlog` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `deslog` varchar(128) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `desuseragent` varchar(128) NOT NULL,
  `dessessionid` varchar(64) NOT NULL,
  `desurl` varchar(128) NOT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idlog`),
  KEY `fk_userslogs_users_idx` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userslogs`
--

LOCK TABLES `tb_userslogs` WRITE;
/*!40000 ALTER TABLE `tb_userslogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_userslogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_userspasswordsrecoveries`
--

DROP TABLE IF EXISTS `tb_userspasswordsrecoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_userspasswordsrecoveries` (
  `idrecovery` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `desip` varchar(45) NOT NULL,
  `dtrecovery` datetime DEFAULT NULL,
  `dtregister` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idrecovery`),
  KEY `fk_userspasswordsrecoveries_users_idx` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_userspasswordsrecoveries`
--

LOCK TABLES `tb_userspasswordsrecoveries` WRITE;
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` DISABLE KEYS */;
INSERT INTO `tb_userspasswordsrecoveries` VALUES (12,1,'127.0.0.1','2017-12-05 17:09:32','2017-12-05 20:08:46');
/*!40000 ALTER TABLE `tb_userspasswordsrecoveries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-14 13:47:45
