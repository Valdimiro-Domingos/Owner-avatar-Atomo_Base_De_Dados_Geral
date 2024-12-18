-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_sc_pembele
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `produto_servico` varchar(11) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `estado` enum('aprovado','rejeitado','pendente') DEFAULT NULL,
  `qtd` int(11) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(11) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `is_fatura` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agt`
--

DROP TABLE IF EXISTS `agt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(20) DEFAULT NULL,
  `private_key` varchar(50) DEFAULT NULL,
  `tax_acounting_basic` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `product_vision` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `fiscal_year` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `software_validate_number` varchar(50) DEFAULT NULL,
  `valid_number` varchar(80) DEFAULT NULL,
  `last_send` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agt`
--

LOCK TABLES `agt` WRITE;
/*!40000 ALTER TABLE `agt` DISABLE KEYS */;
INSERT INTO `agt` VALUES (1,'5417017841','@12345678@meugenio@cortex','F','AO','AOA','meugenio-sistemacomercial/córtextecnologias','1.0','940510653',NULL,'2020','crm@meugenio.com','cortextecnologias.com','1.1/AGT19','-processado por programa valído nº 0000 / AGT','2022-09-18');
/*!40000 ALTER TABLE `agt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atendimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idservico` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `modo` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendimento`
--

LOCK TABLES `atendimento` WRITE;
/*!40000 ALTER TABLE `atendimento` DISABLE KEYS */;
/*!40000 ALTER TABLE `atendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `ibam` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'BANCO BAI',' ','0040.0000.7530.0250.1018.5'),(2,'BANCO ECONÓMICO',' ','0045.0050.0002.3430.3516.0'),(3,'BANCO ATLANTICO MILÉNIO ',' ','0055.0000.3463.9314.1016.3');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `data2` date DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cambio`
--

DROP TABLE IF EXISTS `cambio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cambio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` int(11) DEFAULT 1,
  `cambio` double DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cambio`
--

LOCK TABLES `cambio` WRITE;
/*!40000 ALTER TABLE `cambio` DISABLE KEYS */;
INSERT INTO `cambio` VALUES (1,1,100,NULL);
/*!40000 ALTER TABLE `cambio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(100) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `iddepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_iddepartamento_idx` (`iddepartamento`),
  CONSTRAINT `fk_iddepartamentocargo` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Fiel De Armazem ','',15),(2,'Serviços Gerais','',15),(3,'Financeiro',NULL,2),(4,'Tec Informático','Engenheiro Informático ',11),(5,'ADM.Finanças','Finanças',2),(6,'Ax.adm E Financeiro','FN',10),(7,'Tesoureira','Tesoureira ',13),(8,'Secretaria Geral E Recursos Humanos','Secretária E Recursos Humanos',14),(9,'Dr. Geral Adjunto','Dr. Geral Adjunto',15),(10,'Domestica','Domestica',16),(11,'Guarda','Guarda',16),(12,'Tesoureira',' ',17),(13,'Jardineiro',' ',16),(14,'Serralheiro',' ',16),(15,'Cozinheiro',' ',16),(17,'Costureiro (a)',' ',16),(18,'Designer ',' ',19),(19,'Printer ',' ',19),(20,'Contabilista',' ',13),(21,'Comercial',' ',17),(22,'Empregada De Limpeza ',' ',2),(23,'Produção ','Produção ',15),(24,'Electricista ','Electricidade ',11);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carteira`
--

DROP TABLE IF EXISTS `carteira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carteira` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_cart_idx` (`idcliente`),
  CONSTRAINT `fk_user_cart` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carteira`
--

LOCK TABLES `carteira` WRITE;
/*!40000 ALTER TABLE `carteira` DISABLE KEYS */;
INSERT INTO `carteira` VALUES (1,37,'2023-01-25 07:01:28'),(2,38,'2023-01-26 06:01:40'),(3,2,'2023-03-29 08:03:46'),(4,3,'2023-03-29 08:03:35'),(5,4,'2023-03-30 06:03:37'),(6,5,'2023-03-30 07:03:30'),(7,6,'2023-04-21 02:04:44'),(8,7,'2023-04-21 02:04:52'),(9,8,'2023-04-21 02:04:32'),(10,9,'2023-04-21 03:04:11'),(11,10,'2023-04-21 03:04:12'),(12,11,'2023-04-21 03:04:10'),(13,12,'2023-04-21 03:04:27'),(14,13,'2023-04-21 03:04:24'),(15,14,'2023-04-21 03:04:49'),(16,15,'2023-04-21 03:04:48'),(17,16,'2023-04-21 03:04:41'),(18,17,'2023-04-21 03:04:41'),(19,18,'2023-04-21 04:04:29'),(20,19,'2023-04-21 04:04:10'),(21,20,'2023-04-21 04:04:12'),(22,21,'2023-04-21 04:04:53'),(23,22,'2023-04-21 04:04:55'),(24,23,'2023-04-21 04:04:59'),(25,24,'2023-04-21 04:04:49'),(26,25,'2023-04-21 04:04:19'),(27,26,'2023-04-21 04:04:45'),(28,27,'2023-04-21 04:04:10'),(29,28,'2023-04-21 04:04:33'),(30,29,'2023-04-21 04:04:12'),(31,30,'2023-04-21 04:04:41'),(32,31,'2023-04-21 04:04:44'),(33,32,'2023-04-21 04:04:52'),(34,33,'2023-04-21 04:04:53'),(35,34,'2023-04-21 04:04:42'),(36,35,'2023-04-21 04:04:33'),(37,36,'2023-04-21 04:04:04'),(38,37,'2023-04-21 04:04:40'),(39,38,'2023-04-21 05:04:44'),(40,39,'2023-04-21 05:04:26'),(41,40,'2023-04-21 05:04:04'),(42,41,'2023-04-21 05:04:33'),(43,42,'2023-04-21 05:04:31'),(44,43,'2023-04-21 05:04:17'),(45,44,'2023-04-21 05:04:53'),(46,45,'2023-04-21 07:04:58'),(47,46,'2023-04-21 07:04:58'),(48,47,'2023-04-21 07:04:52'),(49,48,'2023-04-21 07:04:51'),(50,49,'2023-04-21 07:04:55'),(51,50,'2023-04-21 07:04:19'),(52,51,'2023-04-21 07:04:49'),(53,52,'2023-04-21 07:04:09'),(54,53,'2023-04-21 07:04:16'),(55,54,'2023-04-21 07:04:53'),(56,55,'2023-04-21 07:04:28'),(57,56,'2023-04-21 07:04:10'),(58,57,'2023-04-21 07:04:20'),(59,58,'2023-04-24 01:04:01'),(60,59,'2023-04-24 01:04:50'),(61,60,'2023-04-24 01:04:05'),(62,61,'2023-04-24 01:04:56'),(63,62,'2023-04-24 01:04:25'),(64,63,'2023-04-24 01:04:15'),(65,64,'2023-04-24 01:04:03'),(66,65,'2023-04-24 01:04:19'),(67,66,'2023-04-24 01:04:40'),(68,67,'2023-04-24 01:04:10'),(69,68,'2023-04-24 01:04:27'),(70,69,'2023-04-24 02:04:51'),(71,70,'2023-04-24 02:04:03'),(72,71,'2023-04-24 02:04:28'),(73,72,'2023-04-24 02:04:14'),(74,73,'2023-04-24 02:04:33'),(75,74,'2023-04-24 02:04:39'),(76,75,'2023-04-24 02:04:15'),(77,76,'2023-04-24 02:04:57'),(78,77,'2023-04-24 02:04:27'),(79,78,'2023-04-24 02:04:01'),(80,79,'2023-04-24 02:04:08'),(81,80,'2023-04-24 02:04:14'),(82,81,'2023-04-24 02:04:05'),(83,82,'2023-04-24 02:04:16'),(84,83,'2023-04-24 02:04:41'),(85,84,'2023-04-24 02:04:01'),(86,85,'2023-04-24 02:04:24'),(87,86,'2023-04-24 02:04:16'),(88,87,'2023-04-24 02:04:22'),(89,88,'2023-04-24 02:04:46'),(90,89,'2023-04-24 02:04:00'),(91,90,'2023-04-24 02:04:23'),(92,91,'2023-04-24 02:04:12'),(93,92,'2023-04-24 02:04:06'),(94,93,'2023-04-24 02:04:58'),(95,94,'2023-04-24 02:04:15'),(96,95,'2023-04-24 02:04:18'),(97,96,'2023-04-24 02:04:23'),(98,97,'2023-04-24 02:04:57'),(99,98,'2023-04-24 02:04:19'),(100,99,'2023-04-24 02:04:25'),(101,100,'2023-04-24 02:04:57'),(102,101,'2023-04-24 02:04:02'),(103,102,'2023-04-24 03:04:14'),(104,103,'2023-04-24 03:04:26'),(105,104,'2023-04-24 03:04:12'),(106,105,'2023-04-24 03:04:10'),(107,106,'2023-04-24 03:04:42'),(108,107,'2023-04-24 03:04:33'),(109,108,'2023-04-24 03:04:20'),(110,109,'2023-04-24 03:04:29'),(111,110,'2023-04-24 03:04:47'),(112,111,'2023-04-24 03:04:16'),(113,112,'2023-04-24 03:04:07'),(114,113,'2023-04-24 03:04:00'),(115,114,'2023-04-24 03:04:35'),(116,115,'2023-04-24 03:04:10'),(117,116,'2023-04-24 03:04:16'),(118,117,'2023-04-24 03:04:13'),(119,118,'2023-04-24 03:04:10'),(120,119,'2023-04-24 03:04:00'),(121,120,'2023-04-24 03:04:30'),(122,121,'2023-04-24 03:04:21'),(123,122,'2023-04-24 03:04:34'),(124,123,'2023-04-24 03:04:28'),(125,124,'2023-04-24 03:04:54'),(126,125,'2023-04-24 03:04:17'),(127,126,'2023-04-24 03:04:47'),(128,127,'2023-04-24 03:04:19'),(129,128,'2023-04-24 03:04:39'),(130,129,'2023-04-24 03:04:10'),(131,130,'2023-04-24 03:04:11'),(132,131,'2023-04-24 03:04:41'),(133,132,'2023-04-24 03:04:50'),(134,133,'2023-04-24 03:04:23'),(135,134,'2023-04-24 03:04:07'),(136,135,'2023-04-24 03:04:21'),(137,136,'2023-04-24 03:04:31'),(138,137,'2023-04-24 03:04:55'),(139,138,'2023-04-24 03:04:54'),(140,139,'2023-05-15 03:05:56'),(141,140,'2023-06-22 05:06:41'),(142,141,'2023-08-16 02:08:52'),(143,142,'2023-08-17 02:08:12'),(144,143,'2023-09-04 01:09:11'),(145,144,'2023-09-04 01:09:34'),(146,145,'2023-09-04 01:09:07'),(147,146,'2023-09-04 01:09:19'),(148,147,'2023-09-04 03:09:11'),(149,148,'2023-09-05 14:09:25'),(150,149,'2023-09-07 02:09:16'),(151,150,'2023-09-27 05:09:50'),(152,151,'2023-09-27 09:09:49'),(153,152,'2023-12-26 14:12:02'),(154,153,'2023-12-26 14:12:45'),(155,154,'2023-12-26 15:12:36'),(156,155,'2023-12-27 10:12:18');
/*!40000 ALTER TABLE `carteira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Gestor',''),(2,'Comercial',''),(3,'Auxiliar ',''),(4,' Administrativa ','');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(45) DEFAULT NULL,
  `nome` text DEFAULT NULL,
  `ndi` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `data` date DEFAULT NULL,
  `nif` varchar(45) DEFAULT NULL,
  `nporta` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `endereco1` varchar(45) DEFAULT NULL,
  `endereco2` varchar(155) DEFAULT NULL,
  `endereco3` varchar(45) DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idpais` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `telemovel` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `cpostal` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `indicador` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'1','Diverso',NULL,NULL,NULL,'999999999','','Luanda','Luanda','','1',6452,6452,2,'Admin@admin.com','921 120 407 / 992 234 290','121','','','','VIP',0,1),(2,'1','Ernesto António Lima(1F)',' ','avatar.png','2023-03-29','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ','',' ',' ','NORMAL',0,1),(3,'2','Ludger Ben-Hur Castro Amaro (1F)',' ','avatar.png','2023-04-24','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6470,6470,6,'',' ',' ','','',' ',' ',0,1),(4,'3','Manuel José Samunhongo(1F)',' ','avatar.png','2023-04-24','999999999','','JORGE','SUSSEGO','','JOEGE',6470,6470,6,'',' ',' ',' ',' ',' ',' ',0,1),(5,'4','Estevão Govete(1F)',' ','avatar.png','2023-04-24','999999999','','LUKEMBO','SUSSEGO','','JOEGE',6470,6470,6,'',' ',' ',' ','',' ',' ',0,1),(6,' ','António Fernandes(1F)',' ','avatar.png','2023-04-21','999999999 ','','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ','',' ',' ',' ',0,1),(7,' ','Antena Da Unitel(3F)',' ','avatar.png','2023-04-21','999999999',' ','CHANA','CHANA','CHANA','CHANA',6452,6452,6,'',' ',' ',' ',' ','','NORMAL',0,1),(8,' ','António Lourenço Agostinho(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(9,' ','Alberto Miguel R. De. Figueredo(3F)',' ','avatar.png','2023-04-21','999999999 ','   ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(10,' ','Deolinda C.Da Silva Midosi(1F)',' ','avatar.png','2023-04-21','999999999 ','   ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(11,' ','Azenaida Katumbela(1F)',' ','avatar.png','2023-04-21','999999999 ',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(12,' ','Ana João Da Costa(1F)',' ','avatar.png','2023-04-21','999999999 ','','FÁBRICA','SUSSEGO',' ','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(13,' ','Abelinha Tete Matudidi(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','  ',' ','NORMAL',0,1),(14,' ','António Sancho(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(15,' ','Abel M. Vieira(1F)',' ','avatar.png','2023-04-21','999999999','  ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','','  ','NORMAL',0,1),(16,' ','Brito Mata(1F)',' ','avatar.png','2023-04-21','999999999','  ','FABRICA','SUSSEGO','','FABRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(17,' ','Cruz Benedito Miguel Noy(3F)',' ','avatar.png','2023-04-21','999999999',' ','FABRICA','SUSSEGO','','FABRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(18,'  ','CHISTIAN CHIDINMA(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(19,' ','Dorivaldo Domingos(3F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(20,'  ','Domingos Bumba Sardinha(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'','  ',' ',' ','',' ',' ',0,1),(21,' ','Dumilde Adilson B. Cardoso(3F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(22,' ','Diniz Manuel Júlio(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(23,' ','Ernesto Azevedo(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(24,' ','Francisco Miguel Ganga(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ','  ','',' ','NORMAL',0,1),(25,' ','Francisco Evaristo(3F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(26,'   ','Filip Nzanza(3F)','  ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(27,' ','GEOFFERY CHIMEZIE ONYEYIRI(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(28,' ','Hugo Monteiro Miguel(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(29,' ','Hermenia De.L.O.Dos Santos(1F)',' ','avatar.png','2023-04-21','999999999 ',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(30,' ','Hélio Lissandro Xávier(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(31,' ','Justa T.C.Da Silva(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(32,' ','Lucas Evangelista F. Vunga(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(33,' ','Luísa Ester Inês Camunda (1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','','','NORMAL',0,1),(34,' ','Lucas Martins (3F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(35,' ','Manuel Cassule Ngonga(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(36,' ','Manuel Nogueira Dias(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(37,' ','Miguel Francisco Fontes(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,2,'',' ',' ',' ','',' ','NORMAL',0,1),(38,' ','Mitson E.D. Armando(3F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(39,' ','Marisa Kambuana(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','','','NORMAL',0,1),(40,' ','Mantantu Gomes Lusuki(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(41,' ','Nvunda Lopes(q1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'','  ',' ',' ',' ',' ','NORMAL',0,1),(42,' ','OZO OBJBOMNIA PASCOL(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(43,' ','Paulino António(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ','  ','NORMAL',0,1),(44,' ','Perikles Facata(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','','','NORMAL',0,1),(45,' ','Prudência G.De.L.R. Gomes(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(46,' ','Rosalina Da Silva(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(47,' ','Romam Emerald Mwanneka(1F)','  ','avatar.png','2023-04-21','999999999',' ','FÁBRICA',' ','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(48,' ','Raúl Carmo Mbuiti(1F)',' ','avatar.png','2023-09-14','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(49,' ','Sérgio Sachicuata(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(50,' ','Stefany Cabral Monteiro(1F)',' ','avatar.png','2023-04-21','999999999','  ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(51,' ','Sandra Fernando(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(52,' ','Simão André(1F)',' ','avatar.png','2023-04-21','999999999','  ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(53,' ','Teodoro Vicente(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(54,' ','Virgília Valeria PEIXOTE(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(55,' ','Walter Njinga Pedro(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(56,' ','Yolanda António(1F)',' ','avatar.png','2023-04-21','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(57,' ','Zacarias  Domingos Simão Rufino(1F)',' ','avatar.png','2023-09-18','999999999',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(58,' ','Adélia Flora Paulo Da Silva(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(59,' ','Ana Vanessa Lopes(1F)','  ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(60,' ','Adelino Martinho(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ','','','NORMAL',0,1),(61,' ','Arlindo Da Silva(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(62,' ','Constantino Artur(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(63,' ','Carlos Barbosa(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(64,' ','Domingos Pacheco(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'','  ',' ',' ','',' ','NORMAL',0,1),(65,' ','David Urbano(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(66,' ','Etelvina De Sousa Andrade(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(67,' ','Elísio Manuel Da Conceição(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(68,' ','Evander Carlos Da Silva(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(69,' ','Felizardo Miguel José Armisio(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(70,' ','Filip Manuel Fernando(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(71,'  ','Ferreira Kilay(3F)','  ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(72,' ','Figueira Mundomba Adriano(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(73,' ','Filip Júnior(1F)',' ','avatar.png','2023-04-24','999999999 ',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(74,' ','Francisco Garcia Dos Santos(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(75,' ','Gézma Mariano(3F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(76,' ','Gilson Amado Lipandinga(3F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(77,' ','Graça José Feliciano(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(78,' ','Henrique M. Fernando(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(79,'  ','Igreja A.D.P. Sussego (3F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(80,'   ','Ilidio Neves Do Espirito Santo(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(81,' ','Ivo Cangongue Zangue(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(82,' ','Jamakson Chicote(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(83,' ','João Chinai(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(84,' ','José Adelino (1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(85,' ','Kuzu Tulanda(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(86,' ','Lucas Sumbula((1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(87,' ','Lauriano Vidal(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ','  ',' ','NORMAL',0,1),(88,'  ','Miguel Lucas Paulino (1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(89,'  ','Marisa  Cidade Da Costa Da Silva Leite(1F)',' ','avatar.png','2023-05-05','999999999','  ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' 942414934 ','   ','   ',' ','   ','   ',0,1),(90,' ','Margarida Rosa(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(91,' ','Moisés Joaquim Vunge(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(92,' ','Maura Rosa Cita(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(93,' ','Monteiro Luís José(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(94,' ','Nazaré Eduardo(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(95,' ','Nuno José Sebastião(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(96,' ','Sarina Indira Nuno Leitão(3F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(97,' ','Simão Francisco(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(98,' ','Teresa Avelino(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ','  ',' ','NORMAL',0,1),(99,' ','Vicência A.I. André',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(100,' ','Victória Osório Ginga(3F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','POTENCIAL',0,1),(101,' ','Victória Chaul(1F)',' ','avatar.png','2023-04-24','999999999',' ','CHANA','SUSSEGO','','CHANA',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(102,' ','Albino José Landes (1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(103,' ','Artur Ernesto Paulo(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(104,' ','Baptista Mussomga(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(105,' ','Cláudia Rodrigues(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(106,' ','Comissão Dos Moradores Da Terra Nova(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(107,' ','Carlos Cardoso Viola(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(108,' ','Delfina Domingos(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(109,' ','Diogo Miguel António(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(110,' ','Domingas Paulo Gama(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(111,' ','Ernesto João(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(112,' ','Elvira Miguel(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(113,' ','Feliciana Figueira(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(114,' ','Figueiredo Borges José(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(115,' ','Helena Fernando João(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(116,'  ','Ilda João Cantina(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(117,' ','Inácia Mussomga(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(118,' ','José Sebastião Pinto(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(119,' ','José Manuel Kakonga (1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(120,' ','Judith José Iculo(1F','  ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(121,' ','Luzia António(1F) ',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,2,'',' ',' ',' ','',' ','NORMAL',0,1),(122,' ','Moisés Lourenço Alfredo (1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(123,' ','Maria Kapenda(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(124,' ','Madelena Carlos (1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(125,' ','Marcelina Américo Quimuanga(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(126,' ','Maura José Andrade(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(127,' ','Tiago Ernesto Bilhete(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ','  ',' ',' ','NORMAL',0,1),(128,' ','Zeca Da Costa(1F)',' ','avatar.png','2023-04-24','999999999',' ','JORGE','SUSSEGO','','JORGE',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(129,' ','Ugochukwu Jermaih(3F)','  ','avatar.png','2023-05-12','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'','  ','  ','  ',' ','  ','POTENCIAL',0,1),(130,' ','Sérgio Matos Ribeiro De Almeida(1F)',' ','avatar.png','2023-05-12','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ',' ',0,1),(131,' ','Ciza Celestina Gomes(1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(132,'  ','Correia Vicente Pongolola(1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(133,' ','Francisco Andrade(1F)',' ','avatar.png','2023-04-24','999999999','  ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ','  ',' ','NORMAL',0,0),(134,' ','Flaviano Manuel (1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,0),(135,' ','João Soares(1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ','  ',' ','NORMAL',0,0),(136,' ','Jorge Manuel António(1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,0),(137,' ','Mário Raimundo (1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,0),(138,' ','Manuel Paulo Pontes(1F)',' ','avatar.png','2023-04-24','999999999',' ','LUKEMBO','SUSSEGO','','LUKEMBO',6452,6452,6,'',' ',' ',' ',' ',' ','NORMAL',0,0),(139,' ','João Machel Pires Filipe(1F)','  ','avatar.png','1986-05-25','9999999 99',' ','FÁBRICA','SUSSEGO','','FÁBRICA',6452,6452,6,'',' ','929577711',' ','',' ',' ',0,1),(140,'139','TRANKOSMOS , LDA',' ','avatar.png','2023-07-12','5403105395 ',' ','ZONA VERDE','BELAS','','BELAS',6487,6470,6,'',' ',' ',' ','  ',' ',' ',0,0),(141,' ','Victor António (1F)',' ','avatar.png','2023-08-16','999999999 ','  ','JORGE','SUSSEGO','','JORGE ',6470,6452,6,'',' ',' ','','','','NORMAL',0,1),(142,' ','Alberto António Luís(1F)',' ','avatar.png','2023-08-17','999999999 ','','Sossego','Sossego','',' Sossego',6470,6470,6,'',' ',' ',' ',' ','','NORMAL',0,1),(143,' ','Monteiro Luís(1F)',' ','avatar.png','2023-09-04','999999999','','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6470,6,'Ceciliachilimbo@gmail.com','923250233','923250233',' ','',' ','NORMAL',0,1),(144,' ','Zeca Da Costa(1F)',' ','avatar.png','2023-09-04','999999999','','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6470,6,'',' ',' ',' ','',' ','NORMAL',0,1),(145,' ','Francisca Hugo Andrade',' ','avatar.png','2023-09-04','999999999','','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6452,6,'',' ',' ',' ','',' ','NORMAL',0,1),(146,' ','Igor Marvi Nunes Leitão(3F)',' ','avatar.png','2023-09-04','999999999',' ','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6452,6,'',' ',' ',' ','',' ','POTENCIAL',0,1),(147,' ','Christian CHidimma Novo(1F)',' ','avatar.png','2023-09-04','999999999 ',' ',' ',' ','',' ',6452,6470,6,'',' ',' ',' ','',' ','NORMAL',0,1),(148,' ','Ernesto João (1F)',' ','avatar.png','2023-09-05',' 999999999',' ',' ','Sossego','',' ',6470,6470,6,'',' ',' ',' ',' ',' ','NORMAL',0,1),(149,'123','PADARIA E,M,S LDA',' ','avatar.png','2023-09-07','500085149','','  ',' ','','  ',6452,6452,2,'',' ',' ','','','','NORMAL',0,1),(150,' ','Constantino Tendele(1F)',' ','avatar.png','2023-09-27','999999999',' ','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6470,6,'',' ',' ',' ','',' ','NORMAL',0,1),(151,' ','Pedro Lucumga',' ','avatar.png','2023-09-27','999999999 ','','Cecília Chilimbo','Luanda /Benfica','Luanda /Benfica','Luanda /Benfica',6470,6470,6,'',' ','  ',' ','','','NORMAL',0,1),(152,'1','Junip, Lda','1234','avatar.png','2023-12-26','5417033707','','45','2','','34',6470,6470,6,'Bartolomeukivua@gmail.com','924581487','924581487','','','','NORMAL',0,1),(153,'1','Junip, Lda','1234','avatar.png','2023-12-26','5417033707','56','45','2','','34',6470,6470,6,'K.pembelelda@gmail.com','923778204','923778204','','','','NORMAL',0,1),(154,'1234','JUNIP,LDA','2233','avatar.png','2023-12-26','5417033707','3','Vila Kuditemo ','153','','Bairro Patriota Luanda',6470,6470,6,'','923778204','923778204','1234','123','Bairro Patriota','VIP',0,1),(155,'1234','JUNIP,LDA','5417033707','avatar.png','2023-12-27','5417033707','3','Vila Kuditemo ','Belas Sossego','','Bairro Patriota Luanda',6470,6470,6,'K.pembelelda@gmail.com','923778204','923778204','1234','123','Bairro Patriota','NORMAL',0,1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfacturacompra_idx` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (31,'kafungaplasticocomercial@yahoo.com.br','932288075'),(32,'cortextecnologias@gmail.com','997949910'),(33,'aluno@gmail.com','997949910'),(34,'cortextecnologias@gmail.com','997949910'),(35,'funcionario2@gmail.com','997949910'),(36,'hilquiasgerson@gmail.com','997949910'),(37,'cortextecnologias@gmail.com','997949910'),(38,'suporte@meugenio.com','997949910'),(39,'hilquiasgerson@gmail.com','997949910'),(40,'cortextecnologias@gmail.com','asa'),(41,'cortextecnologias@gmail.com','997949910'),(42,'supersss@gmail.com','997949910'),(43,'hilquiasgerson@gmail.com','997949910'),(44,'recepcao@gmail.com','911222333'),(45,'barulhobonito@gmail.com','33658441'),(46,'','weqw'),(47,'admin@admin.com','12121212'),(48,'claudiaelizabeth523@gmail.com','935138507'),(49,'claudiaelizabeth523@gmail.com','930984146'),(50,'claudiaelizabeth523@gmail.com','923413561'),(51,'oguimar.soares@gmail.com','925587755'),(52,'nevescameia@hotmail.com','923314495'),(53,'','930881812'),(54,'lemoslucamba3@gmail.com','931964088- 992621115'),(55,'joelsondantassoft@gmail','923918461'),(56,'','941569739'),(57,'hugoinglesmonteiro81@hotmail.com','923631698'),(58,'anadacosta349@gmail.com','933989253'),(59,'augustaraul@gmail.com','926225559'),(60,'',' 944179187'),(61,'','944179187'),(62,'albinoaugustoferramenta@gmail.com','925489840'),(63,'','922797955'),(64,'','943981085'),(65,'','936977339'),(66,'carlosdemelo58@gmail.com','935457936'),(67,'','924050447'),(68,'','942760685'),(69,'','0000'),(70,'evaristomanuel@hotmail.com','934515003'),(71,'','924461387'),(72,'','925824233'),(73,'','939429961'),(74,'','931173240'),(75,'machaiamerimni@gmail.com','923674733'),(76,'','945739275'),(77,'','000000'),(78,'suenguetepedero@gmil.com','912919404'),(79,'','000000'),(80,'','000000'),(81,'','000000'),(82,'','923524927'),(83,'','929206456'),(84,'','927717287'),(85,'','945295210'),(86,'','923931109'),(87,'','948468706'),(88,'','929034179'),(89,'','927707159'),(90,'','941405911'),(91,'','945002454'),(92,'','111111111'),(93,'silvanojubino@gmal.com','931 037 540 - 991037540'),(94,'nhangag38@gmail.com','6788'),(95,'mariojeremiassangueve@gmail.com','925438448'),(96,'geral@sirium.ao','929664362'),(97,'geral@sirium.ao','929664362'),(98,'geral@sirium.ao','929883864'),(99,'ingra253@gmail.com','924963505'),(100,'sem@gmail.com','936885321'),(101,'sem@gmail.com','942806502'),(102,'sem@gmail.com','928049377'),(103,'','932288075'),(104,'sem@gmail.com',' '),(105,'sem@gmail.com','933419816'),(106,'sem@gmail.com',' '),(107,'sem@gmail.com',' '),(108,'kafungl@gmail.com','945118853'),(109,'','947907650'),(110,'','940132495'),(111,'','950766141'),(112,'','931145350'),(113,'bartolomeukivua@gmail.com','924581487'),(114,'eduardokiakufernandes01@gmail.com',' 939200440'),(115,'','939527516'),(116,'','1'),(117,'','1'),(118,'','2'),(119,'','2');
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correio`
--

DROP TABLE IF EXISTS `correio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `assunto` varchar(45) DEFAULT NULL,
  `conteudo` varchar(1000) DEFAULT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `tipo` enum('normal','massa','suporte') DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correio`
--

LOCK TABLES `correio` WRITE;
/*!40000 ALTER TABLE `correio` DISABLE KEYS */;
INSERT INTO `correio` VALUES (1,'oguimar.soares@gmail.com','Bandeira','<p>sfsfsfs</p>','6179261f7878b.png','2021-10-27 04:12:47','normal',NULL);
/*!40000 ALTER TABLE `correio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (2,'DIREÇÃO E ADMINISTRAÇÃO',''),(10,'GESTÃO E FINANÇA',''),(11,' TÉCNICA ',''),(13,' SECRETARIA GERAL',''),(14,'COMERCIAL',''),(15,'Administração','DP. Administrativo '),(16,' ',''),(17,'DP.Comercial',''),(19,' ',' ');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisao`
--

DROP TABLE IF EXISTS `divisao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisao`
--

LOCK TABLES `divisao` WRITE;
/*!40000 ALTER TABLE `divisao` DISABLE KEYS */;
INSERT INTO `divisao` VALUES (2,'Secretaria Geral E Recursos Humanos',''),(3,'Administracao',''),(7,'DP- Contabilidade E Financas',''),(8,'DP-Comercial','');
/*!40000 ALTER TABLE `divisao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encomenda`
--

DROP TABLE IF EXISTS `encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `encomenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_encomenda_id` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encomenda`
--

LOCK TABLES `encomenda` WRITE;
/*!40000 ALTER TABLE `encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `casa` text DEFAULT NULL,
  `rua` text DEFAULT NULL,
  `bairro` text DEFAULT NULL,
  `cpostal` varchar(45) DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idmunicipio_idx` (`idmunicipio`),
  CONSTRAINT `fk_idmunicipio` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (32,' ','Rua Da,TSE','BAIRRO SOSSEGO,BLOCO N*1,A 4,Quarteirão 1',' AO22',6470),(33,'11','11','11',NULL,6452),(34,'11','11','11',NULL,6452),(35,'11','11','11',NULL,6452),(36,'11','11','11',NULL,6452),(37,'11','11','11',NULL,6452),(38,'11','11','11',NULL,6491),(39,'11','11','11',NULL,6452),(40,'11','11','11',NULL,6452),(41,'11','11','11',NULL,6452),(42,'11','11','11',NULL,6452),(43,'11','11','11','1111',6452),(44,'11','11','11','1111',6452),(45,'2','1','NOVAVIDA',NULL,6452),(46,'14','15','AV',NULL,6452),(47,'Wqeqw','Weqw','Wqeqw',NULL,6452),(48,'121','121','12',NULL,6452),(49,'0','0','0',NULL,6452),(50,'0','0','0',NULL,6452),(51,'0','0','0',NULL,6452),(52,'002','1','Sequele',NULL,6484),(53,'145','Pedro De Casto VL','Talatona',NULL,6470),(54,'S/N','18','Cazenga',NULL,6470),(55,'05','Pracinha Da Lili,','Municipio Cazenga, DUKK, BºAngolano, ',NULL,6470),(56,'83','Francisco P. Africano','Nelito Soares',NULL,6470),(57,'68','Cond Adisandra','Zango II',NULL,6470),(58,'401','09','Jandin De Rosa',NULL,6470),(59,'.................','.........................','MUNICIPIO MAIANGA, Bº GAMEK A DIRETA',NULL,6470),(60,'31','DA PAIXÃO','MUNICIPIO CAZENGA, Bº CUCA',NULL,6470),(61,'07','Rua 2','Bairro Cazenga, Municipio Cazenga',NULL,6470),(62,'07','07','CAZENGA',NULL,6470),(63,'000','RUA 10','Municipio Vina, Bº GRAFANIL KM 9 A, ',NULL,6470),(64,'000','00000','Municipio Viana, Bº Viana ',NULL,6470),(65,'8LA130','UNIVESSE','MUNICIPIO DO RANGEL, Bº MARSAL, ',NULL,6470),(66,'000','Nº 4','MUNICIPIO MAIANGA, Bº ROCHA PINTO',NULL,6470),(67,'Nº 55','BARNIÁRIOS','MUNICIPIO RANGEL, Bº MARÇAL',NULL,6470),(68,'000','000','MUNICIPIO KILAMBA KIALA, Bº KIMBANGO',NULL,6470),(69,'000','000','MUNICIPIO DO RANGEL, Bº RANGEL',NULL,6470),(70,'Nº 9','RUA 9','MUNICIPIO CAZENGA, Bº CAZENGA',NULL,6470),(71,'Nº 46','DA GABELA','MUNICIPIO LKILAMBA KIAXI, Bº POPULAR',NULL,6470),(72,'000','000','MUNICIPIO DA VIANA, Bº MORO DA AREIA',NULL,6470),(73,'000','000','MUNICIPIO DO KILAMBA KIAXI, Bº POPULAR',NULL,6470),(74,'000','000','MUNICIPIO DA VIANA, Bº 6 CAJUIEROGAMEK A DIRETA',NULL,6470),(75,'000','000','MUNICIPIO VIANA, Bº KM30',NULL,6452),(76,'Nº 55','S03','MUNICIPIO DO TALATONA, Bº TALATONA',NULL,6470),(77,'000','000','MUNICIPIO DO CACUACO, BºAUGUSTO NGANGULA',NULL,6470),(78,'000','000','MUNICIPIO DA SAMBA, Bº TALATONAA DIRETA',NULL,6470),(79,'000','000','MUNICIPIO CAZENGA, Bº TERRA NOVA',NULL,6469),(80,'000','000','MUNICIPIO  DE MALNJE, Bº CALOMBO MARIMBA',NULL,6470),(81,'000','000','MUNICIPIO DO CAZENGA, Bº CAZENGA',NULL,6470),(82,'000','000','MUNICIPIO CAZENGA, Bº CAZENGA',NULL,6470),(83,'N~99','DA PADARIA','MUNICIPIO DA VIANA, Bº EXOVIÁRIO',NULL,6470),(84,'Nº 105','000','MUNICIPIO DA MAIANGA,  Bº MADEIRA',NULL,6470),(85,'000','000','MUNICIPIO DA  MAIANGA, Bº MADEIRA',NULL,6470),(86,'26','000','MUNICIPIO KILAMBA KIAXI, Bº NEVES BENDINHAS',NULL,6470),(87,'000','PARAMAM','MUNICIPIO DO RANGEL, Bº RANGEL',NULL,6470),(88,'000','000','Bº PRENDA, MUNICIPIO DA MAIANGA',NULL,6470),(89,'9','000','Bº MIRÚ, MUNICIPIO DA VIANA',NULL,6470),(90,'000','000','Bº KAÓP, MUNICIPIO DA VIANA',NULL,6470),(91,'000','BUCA VÚ','Bº SAMBIZABGA, MUNICIPIO DE SAMBIZANGA',NULL,6470),(92,'000','000','Bº ROCHA PINTO,MUNICIPIO DA MAIANGA',NULL,6470),(93,'00','Peixe','Vila',NULL,6452),(94,'23','11','CACUACO',NULL,6470),(95,'1','1','Mirú',NULL,6471),(96,'56','Rua 11 De Novem','Luanda Sul-Viana',NULL,6521),(97,'2MA ZONA-14','RANGEL','MARSAL',NULL,6470),(98,'EDIFICIO S18 8ºA APTºB3','CENTRALIDADE DO KILAMBA','CAZENGA',NULL,6470),(99,'72','2 TUNGA NGOL','CAZENGA',NULL,6470),(100,'13','2','Jacinto Chipa',NULL,6470),(101,' ',' ','Sapú',NULL,6479),(102,' ',' ','Benfica ',NULL,6470),(103,' ',' ','Kikunda Anguin',NULL,6516),(104,'43','Das Madres','São Pedro Da Barra',NULL,6470),(105,' ',' TSE','Zona 10 Quissama',NULL,6468),(106,' ',' ',' ',NULL,6452),(107,' ',' ','Kifica Samba',NULL,6454),(108,'1',' ','Camama',NULL,6470),(109,'63','Projecto ','Nova Vida',NULL,6470),(110,'18','                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    18                          ','CAZENGA',NULL,6486),(111,'1','1','SAPU',NULL,6515),(112,'2','2','CALEMBA2',NULL,6479),(113,'9','9 Zona 3','Benfica',NULL,6484),(114,'0','Unitel','Camama',NULL,6470),(115,'003','Unitel','Camama',NULL,6470),(116,'3','Zona Verde 3','Benfica',NULL,6470),(117,'003','Casa Nº41','Golf 2',NULL,6470),(118,'003','Casa Nº41','Simione',NULL,6470),(119,'003','Casa Nº41','Benfica',NULL,6470),(120,'003','Casa Nº2','Cacuaco',NULL,6452);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradasaida`
--

DROP TABLE IF EXISTS `entradasaida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entradasaida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoentradasaida` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `qtd` double DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `motivo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradasaida`
--

LOCK TABLES `entradasaida` WRITE;
/*!40000 ALTER TABLE `entradasaida` DISABLE KEYS */;
INSERT INTO `entradasaida` VALUES (2,1,'2023-04-24 00:00:00',1,8500,8500,NULL),(4,2,'2023-04-24 00:00:00',1,12500,12500,'4500 Material  comprado pelo eletricista Vumbo\r\n4000 Silicone da Produção\r\n4000 Táxi dos Técnicos'),(5,1,'2023-04-27 00:00:00',1,11500,11500,'Alimentação e táxi do Moisés para AGT'),(6,1,'2023-04-27 00:00:00',1,11500,11500,'ESSA SAÍDA FOI DE 26/04/2023 ,POR FALTA DE ENERGIA CADASTREI HOJE. TIVEMOS SAÍDA DE 11500 CONTANDO COM O SENHOR DAVE DOS MATÉRIAS PLÁSTICOS E O INFORMÁTICO'),(7,1,'2023-04-28 00:00:00',1,11500,11500,'11500 KZ CONTANDO COM O TÉCNICO DO AC E O SENHOR DAVID.'),(8,1,'2023-05-02 00:00:00',1,21000,21000,'ESSA DESPESA E REFERENTE AO SÁBADO E SEGUNDA  FEIRA DO FERIADO 12.000KZ DA COMPRA DE CORREIA, NA SEGUNDA FEIRA, 4000 ALIMENTAÇÃO DOS HOMENS DA PRODUÇÃO. SÁBADO 5000 DA ALIMENTAÇÃO DOS HOMENS DA PRODUÇÃO E SEGURANÇA.(29/04/2023) E (01/05/2023).'),(9,1,'2023-05-02 00:00:00',1,12500,12500,''),(10,1,'2023-05-03 00:00:00',1,10500,10500,'COM A PRESENÇA DO SENHOR DAVID'),(11,1,'2023-05-04 00:00:00',1,10500,10500,'Mais 10.000 kz de material dos serralheiro e MOISES ALEXANDRE'),(12,1,'2023-05-05 00:00:00',1,11500,11500,''),(13,1,'2023-05-06 00:00:00',1,9500,9500,''),(14,1,'2023-05-09 00:00:00',1,15000,15000,'RELATÓRIO DE (08/05/2023) CONTANDO COM A SAÍDA  DO MOISÉS PARA AGT.'),(15,1,'2023-05-09 00:00:00',1,14000,14000,'Por orientação do Moisés ao colega Muke de taxi,  PARA AGT'),(16,1,'2023-05-10 00:00:00',1,27500,27500,'27500kz contando com o material da produção,saída do Moisés para fora da impressa, e material do escritório.'),(17,1,'2023-05-12 00:00:00',1,17500,17500,'Despesa  De (11/05/2023) por motivo de rede estar lenta só consegui colocar hoje, e por outra teve essa despesa por material comprado para os armazen rodana');
/*!40000 ALTER TABLE `entradasaida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtipoevento` int(11) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `data2` date DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idtipoevento_idx` (`idtipoevento`),
  CONSTRAINT `fk_idtipoevento` FOREIGN KEY (`idtipoevento`) REFERENCES `tipoevento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fatura`
--

DROP TABLE IF EXISTS `fatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subtotal` double DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `descontolinha` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `troco` double DEFAULT NULL,
  `divida` double DEFAULT NULL,
  `dividarestante` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data1` datetime DEFAULT NULL,
  `data2` datetime DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `necomenda` varchar(45) DEFAULT NULL,
  `nota` varchar(100) DEFAULT NULL,
  `politica` varchar(1000) DEFAULT NULL,
  `metpag` text DEFAULT NULL,
  `idbanco` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `origen` varchar(45) DEFAULT NULL,
  `instituicao` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `nif_empresa` varchar(45) DEFAULT NULL,
  `cliente_nome` varchar(45) DEFAULT NULL,
  `cliente_nif` varchar(45) DEFAULT NULL,
  `idordem` int(11) DEFAULT NULL,
  `idfaturareferencia` int(11) DEFAULT NULL,
  `isfatura` int(11) DEFAULT 1,
  `hash` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatura`
--

LOCK TABLES `fatura` WRITE;
/*!40000 ALTER TABLE `fatura` DISABLE KEYS */;
INSERT INTO `fatura` VALUES (1,25500,0,0,0,25500,0,0,NULL,25500,'2023-03-29','2023-03-29 00:03:00','2023-03-29 00:03:00',3,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'A',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','LUDGER BEN-HUR CASTRO AMARO (1F)','999999999',1,NULL,1,NULL),(2,15000,0,0,0,15000,0,0,NULL,15000,'2023-03-30','2023-03-30 00:03:00','2023-03-30 00:03:00',4,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'A',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','MANUEL JOSÉ SAMUHONGO(1F)','999999999',2,NULL,1,NULL),(3,15000,0,0,0,15000,0,0,NULL,15000,'2023-03-30','2023-03-30 00:03:00','2023-03-30 00:03:00',4,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','MANUEL JOSÉ SAMUHONGO(1F)','999999999',3,NULL,1,NULL),(4,0,0,0,0,5000,5000,0,NULL,0,'2023-03-30','2023-03-30 00:03:00','2023-03-30 00:03:00',5,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','ESTEVAO JOVETI(1F)','999999999',4,NULL,1,NULL),(5,8500,0,0,0,15000,6500,0,NULL,8500,'2023-04-24','2023-04-24 00:04:00','2023-04-24 00:04:00',86,NULL,104,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','Lucas Sumbula((1F)','999999999',5,NULL,1,NULL),(6,25500,0,0,0,25500,0,0,NULL,25500,'2023-04-24','2023-04-24 00:04:00','2023-04-24 00:04:00',66,NULL,104,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'A',NULL,'K.PEMBELE-Indústria Limitada','Luanda','5484025940','Etelvina De Sousa Andrade(1F)','999999999',6,NULL,1,NULL),(7,15000,0,0,0,15000,0,0,NULL,15000,'2023-04-24','2023-04-24 00:04:00','2023-04-24 00:04:00',9,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Alberto Miguel R. De. Figueredo(3F)','999999999 ',7,NULL,1,NULL),(8,10000,0,0,0,10000,0,0,NULL,10000,'2023-04-25','2023-04-25 00:04:00','2023-04-25 00:04:00',118,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','José Sebastião Pinto(1F)','999999999',8,NULL,1,NULL),(9,17000,0,0,0,17000,0,0,NULL,17000,'2023-04-27','2023-04-27 00:04:00','2023-04-27 00:04:00',55,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Walter Njinga Pedro(1F)','999999999',9,NULL,1,NULL),(10,8500,0,0,0,85000,76500,0,NULL,8500,'2023-04-27','2023-04-27 00:04:00','2023-04-27 00:04:00',53,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Teodoro Vicente(1F)','999999999',10,NULL,1,NULL),(11,8500,0,0,0,8500,0,0,NULL,8500,'2023-04-27','2023-04-27 00:04:00','2023-04-27 00:04:00',69,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Felizardo Miguel José Armisio(1F)','999999999',11,NULL,1,NULL),(12,15000,0,0,0,17000,2000,0,NULL,15000,'2023-04-28','2023-04-28 00:04:00','2023-04-28 00:04:00',21,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Dumilde Adilson B. Cardoso(3F)','999999999',12,NULL,1,NULL),(13,8500,0,0,0,8500,0,0,NULL,8500,'2023-04-28','2023-04-28 00:04:00','2023-04-28 00:04:00',32,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Lucas Evangelista F. Vunga(1F)','999999999',13,NULL,1,NULL),(14,16000,0,0,0,16000,0,0,NULL,16000,'2023-05-02','2023-05-02 00:05:00','2023-05-02 00:05:00',116,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ilda João Cantina(1F)','999999999',14,NULL,1,NULL),(15,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-02','2023-05-02 00:05:00','2023-05-02 00:05:00',102,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Albino José Landes (1F)','999999999',15,NULL,1,NULL),(16,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-03','2023-05-03 00:05:00','2023-05-03 00:05:00',121,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Luzia António(1F) ','999999999',16,NULL,1,NULL),(17,10000,0,0,0,10000,0,0,NULL,10000,'2023-05-03','2023-05-03 00:05:00','2023-05-03 00:05:00',123,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Maria Kapenda(1F)','999999999',17,NULL,1,NULL),(18,30000,0,0,0,30000,0,0,NULL,30000,'2023-05-03','2023-05-03 00:05:00','2023-05-03 00:05:00',79,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Igreja A.D.P. Sussego (3F)','999999999',18,NULL,1,NULL),(19,10000,0,0,0,10000,0,0,NULL,10000,'2023-05-03','2023-05-03 00:05:00','2023-05-03 00:05:00',108,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Delfina Domingos(1F)','999999999',19,NULL,1,NULL),(20,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-05','2023-05-05 00:05:00','2023-05-05 00:05:00',124,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Madelena Carlos (1F)','999999999',20,NULL,1,NULL),(21,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-05','2023-05-05 00:05:00','2023-05-05 00:05:00',126,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Maura José Andrade(1F)','999999999',21,NULL,1,NULL),(22,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-05','2023-05-05 00:05:00','2023-05-05 00:05:00',81,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ivo Cangongue Zangue(1F)','999999999',22,NULL,1,NULL),(23,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-05','2023-05-05 00:05:00','2023-05-05 00:05:00',112,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Elvira Miguel(1F)','999999999',23,NULL,1,NULL),(24,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-09','2023-05-09 00:05:00','2023-05-09 00:05:00',110,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Domingas Paulo Gama(1F)','999999999',24,NULL,1,NULL),(25,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-09','2023-05-09 00:05:00','2023-05-09 00:05:00',67,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Elísio Manuel Da Conceição(1F)','999999999',25,NULL,1,NULL),(26,8500,0,0,0,8500,0,0,NULL,8500,'2023-05-10','2023-05-10 00:05:00','2023-05-10 00:05:00',62,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Constantino Artur(1F)','999999999',26,NULL,1,NULL),(27,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-10','2023-05-10 00:05:00','2023-05-10 00:05:00',122,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Moisés Lourenço Alfredo (1F)','999999999',27,NULL,1,NULL),(28,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-10','2023-05-10 00:05:00','2023-05-10 00:05:00',2,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ernesto António Lima(1F)','999999999',28,NULL,1,NULL),(29,34000,0,0,0,34000,0,0,NULL,34000,'2023-05-10','2023-05-10 00:05:00','2023-05-10 00:05:00',77,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Graça José Feliciano(1F)','999999999',29,NULL,1,NULL),(30,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-11','2023-05-11 00:05:00','2023-05-11 00:05:00',91,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Moisés Joaquim Vunge(1F)','999999999',30,NULL,1,NULL),(31,15000,0,0,0,15000,0,0,NULL,15000,'2023-05-12','2023-05-12 00:05:00','2023-05-12 00:05:00',76,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Gilson Amado Lipandinga(3F)','999999999',31,NULL,1,NULL),(32,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-12','2023-05-12 00:05:00','2023-05-12 00:05:00',113,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Feliciana Figueira(1F)','999999999',32,NULL,1,NULL),(33,25500,0,0,0,25500,0,0,NULL,25500,'2023-05-15','2023-05-15 00:05:00','2023-05-15 00:05:00',139,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','João Machel Pires Filipe(1F)','9999999 99',33,NULL,1,NULL),(34,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-15','2023-05-15 00:05:00','2023-05-15 00:05:00',102,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Albino José Landes (1F)','999999999',34,NULL,1,NULL),(35,8500,0,0,0,85000,76500,0,NULL,8500,'2023-05-15','2023-05-15 00:05:00','2023-05-15 00:05:00',88,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Miguel Lucas Paulino (1F)','999999999',35,NULL,1,NULL),(36,8500,0,0,0,8500,0,0,NULL,8500,'2023-05-16','2023-05-16 00:05:00','2023-05-16 00:05:00',15,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Abel M. Vieira(1F)','999999999',36,NULL,1,NULL),(37,25500,0,0,0,25500,0,0,NULL,25500,'2023-05-16','2023-05-16 00:05:00','2023-05-16 00:05:00',61,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Arlindo Da Silva(1F)','999999999',37,NULL,1,NULL),(38,25500,0,0,0,25500,0,0,NULL,25500,'2023-05-16','2023-05-16 00:05:00','2023-05-16 00:05:00',99,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Vicência A.I. André','999999999',38,NULL,1,NULL),(39,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-16','2023-05-16 00:05:00','2023-05-16 00:05:00',49,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Sérgio Sachicuata(1F)','999999999',39,NULL,1,NULL),(40,17000,0,0,0,17000,0,0,NULL,17000,'2023-05-16','2023-05-16 00:05:00','2023-05-16 00:05:00',43,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Paulino António(1F)','999999999',40,NULL,1,NULL),(41,8500,0,0,0,8500,0,0,NULL,8500,'2023-05-18','2023-05-18 00:05:00','2023-05-18 00:05:00',28,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hugo Monteiro Miguel(1F)','999999999',41,NULL,1,NULL),(42,8500,0,0,0,8500,0,0,NULL,8500,'2023-05-18','2023-05-18 00:05:00','2023-05-18 00:05:00',98,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Teresa Avelino(1F)','999999999',42,NULL,1,NULL),(43,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-18','2023-05-18 00:05:00','2023-05-18 00:05:00',112,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Elvira Miguel(1F)','999999999',43,NULL,1,NULL),(44,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-18','2023-05-18 00:05:00','2023-05-18 00:05:00',107,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Carlos Cardoso Viola(1F)','999999999',44,NULL,1,NULL),(45,5000,0,0,0,5000,0,0,NULL,5000,'2023-05-18','2023-05-18 00:05:00','2023-05-18 00:05:00',115,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Helena Fernando João(1F)','999999999',45,NULL,1,NULL),(46,10000,0,0,0,10000,0,0,NULL,10000,'2023-05-24','2023-05-24 00:05:00','2023-05-24 00:05:00',4,NULL,102,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Manuel José Samunhongo(1F)','999999999',46,NULL,1,NULL),(47,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-16','2023-06-16 00:06:00','2023-06-16 00:06:00',107,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Carlos Cardoso Viola(1F)','999999999',47,NULL,1,NULL),(48,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',124,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Madelena Carlos (1F)','999999999',48,NULL,1,NULL),(49,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',105,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Cláudia Rodrigues(1F)','999999999',49,NULL,1,NULL),(50,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',29,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hermenia De.L.O.Dos Santos(1F)','999999999 ',50,NULL,1,NULL),(51,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',115,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Helena Fernando João(1F)','999999999',51,NULL,1,NULL),(52,30000,0,0,0,30000,0,0,NULL,30000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',76,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Gilson Amado Lipandinga(3F)','999999999',52,NULL,1,NULL),(53,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',65,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','David Urbano(1F)','999999999',53,NULL,1,NULL),(54,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',65,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','David Urbano(1F)','999999999',54,NULL,1,NULL),(55,17000,0,0,0,17000,0,0,NULL,17000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',11,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Azenaida Katumbela(1F)','999999999 ',55,NULL,1,NULL),(56,17000,0,0,0,17000,0,0,NULL,17000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',85,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Kuzu Tulanda(1F)','999999999',56,NULL,1,NULL),(57,15000,0,0,0,15000,0,0,NULL,15000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',129,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ugochukwu Jermaih(3F)','999999999',57,NULL,1,NULL),(58,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',123,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Maria Kapenda(1F)','999999999',58,NULL,1,NULL),(59,17000,0,0,0,17000,0,0,NULL,17000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',70,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Filip Manuel Fernando(1F)','999999999',59,NULL,1,NULL),(60,45000,0,0,0,45000,0,0,NULL,45000,'2023-06-19','2023-06-19 00:06:00','2023-06-19 00:06:00',71,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ferreira Kilay(3F)','999999999',60,NULL,1,NULL),(61,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-20','2023-06-20 00:06:00','2023-06-20 00:06:00',84,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','José Adelino (1F)','999999999',61,NULL,1,NULL),(62,1050000,0,0,0,1050000,0,0,NULL,1050000,'2023-06-22','2023-06-22 00:06:00','2023-06-22 00:06:00',140,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395',62,NULL,1,NULL),(63,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-26','2023-06-26 00:06:00','2023-06-26 00:06:00',113,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Feliciana Figueira(1F)','999999999',63,NULL,1,NULL),(64,42500,0,0,0,42500,0,0,NULL,42500,'2023-06-28','2023-06-28 00:06:00','2023-06-28 00:06:00',11,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Azenaida Katumbela(1F)','999999999 ',64,NULL,1,NULL),(65,17000,0,0,0,17000,0,0,NULL,17000,'2023-06-28','2023-06-28 00:06:00','2023-06-28 00:06:00',61,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Arlindo Da Silva(1F)','999999999',65,NULL,1,NULL),(66,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-28','2023-06-28 00:06:00','2023-06-28 00:06:00',122,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Moisés Lourenço Alfredo (1F)','999999999',66,NULL,1,NULL),(67,17000,0,0,0,17000,0,0,NULL,17000,'2023-06-29','2023-06-29 00:06:00','2023-06-29 00:06:00',43,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Paulino António(1F)','999999999',67,NULL,1,NULL),(68,8500,0,0,0,8500,0,0,NULL,8500,'2023-06-29','2023-06-29 00:06:00','2023-06-29 00:06:00',15,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Abel M. Vieira(1F)','999999999',68,NULL,1,NULL),(69,25500,0,0,0,25500,0,0,NULL,25500,'2023-06-29','2023-06-29 00:06:00','2023-06-29 00:06:00',37,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Miguel Francisco Fontes(1F)','999999999',69,NULL,1,NULL),(70,5000,0,0,0,5000,0,0,NULL,5000,'2023-06-30','2023-06-30 00:06:00','2023-06-30 00:06:00',112,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Elvira Miguel(1F)','999999999',70,NULL,1,NULL),(71,0,0,0,0,0,0,0,NULL,0,'2023-07-12','2023-07-12 00:07:00','2023-07-12 00:07:00',140,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395',71,NULL,1,NULL),(72,850000,0,0,0,850000,0,0,NULL,850000,'2023-07-12','2023-07-12 00:07:00','2023-07-12 00:07:00',140,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',72,NULL,1,NULL),(73,85000,0,0,0,NULL,NULL,NULL,NULL,85000,NULL,'2023-07-18 00:07:00','2023-07-18 00:07:00',2,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ernesto António Lima(1F)','999999999',1,NULL,1,NULL),(74,850000,0,0,0,NULL,NULL,NULL,NULL,850000,NULL,'2023-07-18 00:07:00','2023-07-18 00:07:00',140,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',2,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',2,NULL,1,NULL),(75,850000,0,0,0,NULL,NULL,NULL,NULL,850000,NULL,'2023-07-18 00:07:00','2023-07-18 00:07:00',140,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',3,NULL,1,NULL),(76,8500,0,0,0,8500,0,0,NULL,8500,'2023-07-19','2023-07-19 00:07:00','2023-07-19 00:07:00',72,NULL,100,'','Obrigado por sua perferência volte sempre...','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Figueira Mundomba Adriano(1F)','999999999',73,NULL,1,NULL),(77,850000,0,0,0,850000,0,0,NULL,850000,'2023-07-26','2023-07-26 00:07:00','2023-07-26 00:07:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',74,NULL,1,NULL),(78,85000,0,0,0,NULL,NULL,NULL,NULL,85000,NULL,'2023-07-28 00:07:00','2023-07-28 00:07:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',4,NULL,1,NULL),(79,850000,0,0,0,NULL,NULL,NULL,NULL,850000,NULL,'2023-07-28 00:07:00','2023-07-28 00:07:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',2,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',5,NULL,1,NULL),(80,850000,0,0,0,850000,0,0,NULL,850000,'2023-08-01','2023-08-01 00:08:00','2023-08-01 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',75,NULL,1,NULL),(81,4800000,0,0,0,NULL,NULL,NULL,NULL,4800000,NULL,'2023-08-07 00:08:00','2023-08-07 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',6,NULL,1,NULL),(82,1800000,0,0,0,NULL,NULL,NULL,NULL,1800000,NULL,'2023-08-07 00:08:00','2023-08-07 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',7,NULL,1,NULL),(83,1800000,0,0,0,NULL,NULL,NULL,NULL,1800000,NULL,'2023-08-07 00:08:00','2023-08-07 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',8,NULL,1,NULL),(84,1650000,0,0,0,NULL,NULL,NULL,NULL,1650000,NULL,'2023-08-07 00:08:00','2023-08-07 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',9,NULL,1,NULL),(85,1650000,0,0,0,1650000,0,0,NULL,1650000,'2023-08-10','2023-08-10 00:08:00','2023-08-10 00:08:00',140,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',76,NULL,1,NULL),(86,17000,0,0,0,17000,0,0,NULL,17000,'2023-08-17','2023-08-17 00:08:00','2023-08-17 00:08:00',142,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Alberto António Luís(1F)','999999999 ',77,NULL,1,NULL),(87,8500,0,0,0,8500,0,0,NULL,8500,'2023-08-17','2023-08-17 00:08:00','2023-08-17 00:08:00',43,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Paulino António(1F)','999999999',78,NULL,1,NULL),(88,8500,0,0,0,8500,0,0,NULL,8500,'2023-08-18','2023-08-18 00:08:00','2023-08-18 00:08:00',29,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hermenia De.L.O.Dos Santos(1F)','999999999 ',79,NULL,1,NULL),(89,25500,0,0,0,25500,0,0,NULL,25500,'2023-08-18','2023-08-18 00:08:00','2023-08-18 00:08:00',101,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Victória Chaul(1F)','999999999',80,NULL,1,NULL),(90,8500,0,0,0,8500,0,0,NULL,8500,'2023-08-18','2023-08-18 00:08:00','2023-08-18 00:08:00',84,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','José Adelino (1F)','999999999',81,NULL,1,NULL),(91,17000,0,0,0,17000,0,0,NULL,17000,'2023-08-18','2023-08-18 00:08:00','2023-08-18 00:08:00',24,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Francisco Miguel Ganga(1F)','999999999',82,NULL,1,NULL),(92,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-04','2023-09-04 00:09:00','2023-09-04 00:09:00',30,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hélio Lissandro Xávier(1F)','999999999',83,NULL,1,NULL),(93,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-04','2023-09-04 00:09:00','2023-09-04 00:09:00',147,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Christian CHidimma Novo(1F)','999999999 ',84,NULL,1,NULL),(94,34000,0,0,0,34000,0,0,NULL,34000,'2023-09-04','2023-09-04 00:09:00','2023-09-04 00:09:00',18,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','CHISTIAN CHIDINMA(1F)','999999999',85,NULL,1,NULL),(95,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-04','2023-09-04 00:09:00','2023-09-04 00:09:00',34,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Lucas Martins (3F)','999999999',86,NULL,1,NULL),(96,17000,0,0,0,17000,0,0,NULL,17000,'2023-09-04','2023-09-04 00:09:00','2023-09-04 00:09:00',85,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Kuzu Tulanda(1F)','999999999',87,NULL,1,NULL),(97,10000,0,0,0,1000000,990000,0,NULL,10000,'2023-09-05','2023-09-05 00:09:00','2023-09-05 00:09:00',111,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ernesto João(1F)','999999999',88,NULL,1,NULL),(98,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-06','2023-09-06 00:09:00','2023-09-06 00:09:00',91,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Moisés Joaquim Vunge(1F)','999999999',89,NULL,1,NULL),(99,800000,0,0,0,NULL,NULL,NULL,NULL,800000,NULL,'2023-09-07 00:09:00','2023-09-07 00:09:00',149,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','PADARIA E,M,S LDA','500085149',10,NULL,1,NULL),(100,8000000,0,0,0,NULL,NULL,NULL,NULL,8000000,NULL,'2023-09-07 00:09:00','2023-09-07 00:09:00',149,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','PADARIA E,M,S LDA','500085149',11,NULL,1,NULL),(101,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-07','2023-09-07 00:09:00','2023-09-07 00:09:00',89,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Marisa  Cidade Da Costa Da Silva Leite(1F)','999999999',90,NULL,1,NULL),(102,8000000,0,0,0,8000000,0,0,NULL,8000000,'2023-09-07','2023-09-07 00:09:00','2023-09-07 00:09:00',149,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'A',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','PADARIA E,M,S LDA','500085149',91,NULL,1,NULL),(103,8000000,0,0,0,8000000,0,0,NULL,8000000,'2023-09-07','2023-09-07 00:09:00','2023-09-07 00:09:00',149,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'A',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','PADARIA E,M,S LDA','500085149',92,NULL,1,NULL),(104,8000000,0,0,0,8000000,0,0,NULL,8000000,'2023-09-07','2023-09-07 00:09:00','2023-09-07 00:09:00',149,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','PADARIA E,M,S LDA','500085149',93,NULL,1,NULL),(105,10000,0,0,0,10000,0,0,NULL,10000,'2023-09-08','2023-09-08 00:09:00','2023-09-08 00:09:00',113,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Feliciana Figueira(1F)','999999999',94,NULL,1,NULL),(106,5000,0,0,0,5000,0,0,NULL,5000,'2023-09-08','2023-09-08 00:09:00','2023-09-08 00:09:00',121,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Luzia António(1F) ','999999999',95,NULL,1,NULL),(107,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-08','2023-09-08 00:09:00','2023-09-08 00:09:00',52,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Simão André(1F)','999999999',96,NULL,1,NULL),(108,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-11','2023-09-11 00:09:00','2023-09-11 00:09:00',38,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Mitson E.D. Armando(3F)','999999999',97,NULL,1,NULL),(109,10000,0,0,0,10000,0,0,NULL,10000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',141,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Victor António (1F)','999999999 ',98,NULL,1,NULL),(110,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',9,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Alberto Miguel R. De. Figueredo(3F)','999999999 ',99,NULL,1,NULL),(111,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',15,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Abel M. Vieira(1F)','999999999',100,NULL,1,NULL),(112,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',79,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Igreja A.D.P. Sussego (3F)','999999999',101,NULL,1,NULL),(113,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',28,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hugo Monteiro Miguel(1F)','999999999',102,NULL,1,NULL),(114,8000,0,0,0,8000,0,0,NULL,8000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',105,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Cláudia Rodrigues(1F)','999999999',103,NULL,1,NULL),(115,8000,0,0,0,8000,0,0,NULL,8000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',116,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Ilda João Cantina(1F)','999999999',104,NULL,1,NULL),(116,10000,0,0,0,10000,0,0,NULL,10000,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',118,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','José Sebastião Pinto(1F)','999999999',105,NULL,1,NULL),(117,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-12','2023-09-12 00:09:00','2023-09-12 00:09:00',10,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Deolinda C.Da Silva Midosi(1F)','999999999 ',106,NULL,1,NULL),(118,5000,0,0,0,5000,0,0,NULL,5000,'2023-09-13','2023-09-13 00:09:00','2023-09-13 00:09:00',115,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Helena Fernando João(1F)','999999999',107,NULL,1,NULL),(119,8000,0,0,0,8000,0,0,NULL,8000,'2023-09-14','2023-09-14 00:09:00','2023-09-14 00:09:00',48,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Raúl Carmo Mbuiti(3F)','999999999',108,NULL,1,NULL),(120,1020000,0,0,0,NULL,NULL,NULL,NULL,1020000,NULL,'2023-09-14 00:09:00','2023-09-14 00:09:00',140,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','TRANKOSMOS , LDA','5403105395 ',12,NULL,1,NULL),(121,8500,0,0,0,NULL,NULL,NULL,NULL,8500,NULL,'2023-09-14 00:09:00','2023-09-14 00:09:00',98,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,NULL,NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Teresa Avelino(1F)','999999999',13,NULL,1,NULL),(122,17000,0,0,0,17000,0,0,NULL,17000,'2023-09-18','2023-09-18 00:09:00','2023-09-18 00:09:00',57,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Zacarias  Domingos Simão Rufino','999999999',109,NULL,1,NULL),(123,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-18','2023-09-18 00:09:00','2023-09-18 00:09:00',88,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Miguel Lucas Paulino (1F)','999999999',110,NULL,1,NULL),(124,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-19','2023-09-19 00:09:00','2023-09-19 00:09:00',13,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Abelinha Tete Matudidi(1F)','999999999',111,NULL,1,NULL),(125,5000,0,0,0,5000,0,0,NULL,5000,'2023-09-19','2023-09-19 00:09:00','2023-09-19 00:09:00',122,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Moisés Lourenço Alfredo (1F)','999999999',112,NULL,1,NULL),(126,30000,0,0,0,30000,0,0,NULL,30000,'2023-09-26','2023-09-26 00:09:00','2023-09-26 00:09:00',17,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Cruz Benedito Miguel Noy(3F)','999999999',113,NULL,1,NULL),(127,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-26','2023-09-26 00:09:00','2023-09-26 00:09:00',21,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Dumilde Adilson B. Cardoso(3F)','999999999',114,NULL,1,NULL),(128,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',132,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Correia Vicente Pongolola(1F)','999999999',115,NULL,1,NULL),(129,30000,0,0,0,30000,0,0,NULL,30000,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',19,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Dorivaldo Domingos(3F)','999999999',116,NULL,1,NULL),(130,17000,0,0,0,17000,0,0,NULL,17000,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',67,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Elísio Manuel Da Conceição(1F)','999999999',117,NULL,1,NULL),(131,15000,0,0,0,15000,0,0,NULL,15000,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',19,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Dorivaldo Domingos(3F)','999999999',118,NULL,1,NULL),(132,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',150,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','MULTICAIXA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Constantino Tendele(1F)','999999999',119,NULL,1,NULL),(133,1200000,0,0,0,1200000,0,0,NULL,1200000,'2023-09-27','2023-09-27 00:09:00','2023-09-27 00:09:00',151,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',120,NULL,1,NULL),(134,8500,0,0,0,8500,841500,0,NULL,8500,'2023-09-28','2023-09-28 00:09:00','2023-09-28 00:09:00',69,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Felizardo Miguel José Armisio(1F)','999999999',121,NULL,1,NULL),(135,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-28','2023-09-28 00:09:00','2023-09-28 00:09:00',84,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','José Adelino (1F)','999999999',122,NULL,1,NULL),(136,10000,0,0,0,10000,0,0,NULL,10000,'2023-09-28','2023-09-28 00:09:00','2023-09-28 00:09:00',107,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Carlos Cardoso Viola(1F)','999999999',123,NULL,1,NULL),(137,8500,0,0,0,8500,0,0,NULL,8500,'2023-09-28','2023-09-28 00:09:00','2023-09-28 00:09:00',29,NULL,102,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Hermenia De.L.O.Dos Santos(1F)','999999999 ',124,NULL,1,NULL),(138,0,0,0,0,0,0,0,NULL,0,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',125,NULL,1,NULL),(139,0,0,0,0,0,0,0,NULL,0,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',126,NULL,1,NULL),(140,0,0,0,0,0,0,0,NULL,0,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',127,NULL,1,NULL),(141,0,0,0,0,0,0,0,NULL,0,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',128,NULL,1,NULL),(142,0,0,0,0,20720000,20720000,0,NULL,0,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',129,NULL,1,NULL),(143,20720000,0,0,0,20720000,0,0,NULL,20720000,'2023-12-05','2023-12-05 00:12:00','2023-12-05 00:12:00',151,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Pedro Lucumga','999999999 ',130,NULL,1,NULL),(144,0,0,0,0,0,0,0,NULL,0,'2023-12-26','2023-12-26 00:12:00','2023-12-26 00:12:00',152,NULL,100,'1234','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Junip, Lda','5417033707',131,NULL,1,NULL),(145,0,0,0,0,150000,150000,0,NULL,0,'2023-12-26','2023-12-26 00:12:00','2023-12-26 00:12:00',152,NULL,100,'1234','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',2,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','Junip, Lda','5417033707',132,NULL,1,NULL),(146,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',133,NULL,1,NULL),(147,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'1234','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','DINHEIRO',0,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',134,NULL,1,NULL),(148,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'1234','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',135,NULL,1,NULL),(149,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',136,NULL,1,NULL),(150,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'1234','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',137,NULL,1,NULL),(151,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',138,NULL,1,NULL),(152,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',154,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',139,NULL,1,NULL),(153,0,0,0,0,0,0,0,NULL,0,'2023-12-27','2023-12-27 00:12:00','2023-12-27 00:12:00',155,NULL,100,'','BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!','TRANSFERÊNCIA',1,'F',NULL,'K.PEMBELE-INDUSTRIA,  Lda','Luanda','5484025940','JUNIP,LDA','5417033707',140,NULL,1,NULL);
/*!40000 ALTER TABLE `fatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturafatura`
--

DROP TABLE IF EXISTS `faturafatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturafatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_fatura_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_fatura` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturafatura`
--

LOCK TABLES `faturafatura` WRITE;
/*!40000 ALTER TABLE `faturafatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturafatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturafatura_notacredito`
--

DROP TABLE IF EXISTS `faturafatura_notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturafatura_notacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_ffnc_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_ffnc_idx` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturafatura_notacredito`
--

LOCK TABLES `faturafatura_notacredito` WRITE;
/*!40000 ALTER TABLE `faturafatura_notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturafatura_notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturafatura_notadebito`
--

DROP TABLE IF EXISTS `faturafatura_notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturafatura_notadebito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_ffnd_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_ffnd_idx` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturafatura_notadebito`
--

LOCK TABLES `faturafatura_notadebito` WRITE;
/*!40000 ALTER TABLE `faturafatura_notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturafatura_notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaglobal`
--

DROP TABLE IF EXISTS `faturaglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaglobal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_global_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_global` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaglobal`
--

LOCK TABLES `faturaglobal` WRITE;
/*!40000 ALTER TABLE `faturaglobal` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_compra`
--

DROP TABLE IF EXISTS `faturaordem_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_compra` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_compra`
--

LOCK TABLES `faturaordem_compra` WRITE;
/*!40000 ALTER TABLE `faturaordem_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_encomenda`
--

DROP TABLE IF EXISTS `faturaordem_encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_encomenda` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_encomenda`
--

LOCK TABLES `faturaordem_encomenda` WRITE;
/*!40000 ALTER TABLE `faturaordem_encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturafatura`
--

DROP TABLE IF EXISTS `faturaordem_faturafatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturafatura` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturafatura`
--

LOCK TABLES `faturaordem_faturafatura` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturafatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturafatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturafatura_notacredito`
--

DROP TABLE IF EXISTS `faturaordem_faturafatura_notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturafatura_notacredito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturafatura_notacredito`
--

LOCK TABLES `faturaordem_faturafatura_notacredito` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturafatura_notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturafatura_notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturafatura_notadebito`
--

DROP TABLE IF EXISTS `faturaordem_faturafatura_notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturafatura_notadebito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturafatura_notadebito`
--

LOCK TABLES `faturaordem_faturafatura_notadebito` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturafatura_notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturafatura_notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturaglobal`
--

DROP TABLE IF EXISTS `faturaordem_faturaglobal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturaglobal` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturaglobal`
--

LOCK TABLES `faturaordem_faturaglobal` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturaglobal` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturaglobal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturarecibo`
--

DROP TABLE IF EXISTS `faturaordem_faturarecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturarecibo` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturarecibo`
--

LOCK TABLES `faturaordem_faturarecibo` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturarecibo` DISABLE KEYS */;
INSERT INTO `faturaordem_faturarecibo` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,76),(74,77),(75,80),(76,85),(77,86),(78,87),(79,88),(80,89),(81,90),(82,91),(83,92),(84,93),(85,94),(86,95),(87,96),(88,97),(89,98),(90,101),(91,102),(92,103),(93,104),(94,105),(95,106),(96,107),(97,108),(98,109),(99,110),(100,111),(101,112),(102,113),(103,114),(104,115),(105,116),(106,117),(107,118),(108,119),(109,122),(110,123),(111,124),(112,125),(113,126),(114,127),(115,128),(116,129),(117,130),(118,131),(119,132),(120,133),(121,134),(122,135),(123,136),(124,137),(125,138),(126,139),(127,140),(128,141),(129,142),(130,143),(131,144),(132,145),(133,146),(134,147),(135,148),(136,149),(137,150),(138,151),(139,152),(140,153);
/*!40000 ALTER TABLE `faturaordem_faturarecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturarecibo_notacredito`
--

DROP TABLE IF EXISTS `faturaordem_faturarecibo_notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturarecibo_notacredito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturarecibo_notacredito`
--

LOCK TABLES `faturaordem_faturarecibo_notacredito` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturarecibo_notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturarecibo_notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_faturarecibo_notadebito`
--

DROP TABLE IF EXISTS `faturaordem_faturarecibo_notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_faturarecibo_notadebito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_faturarecibo_notadebito`
--

LOCK TABLES `faturaordem_faturarecibo_notadebito` WRITE;
/*!40000 ALTER TABLE `faturaordem_faturarecibo_notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_faturarecibo_notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_guiaremessa`
--

DROP TABLE IF EXISTS `faturaordem_guiaremessa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_guiaremessa` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_guiaremessa`
--

LOCK TABLES `faturaordem_guiaremessa` WRITE;
/*!40000 ALTER TABLE `faturaordem_guiaremessa` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_guiaremessa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_guiatransporte`
--

DROP TABLE IF EXISTS `faturaordem_guiatransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_guiatransporte` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_guiatransporte`
--

LOCK TABLES `faturaordem_guiatransporte` WRITE;
/*!40000 ALTER TABLE `faturaordem_guiatransporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_guiatransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_notacredito`
--

DROP TABLE IF EXISTS `faturaordem_notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_notacredito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_notacredito`
--

LOCK TABLES `faturaordem_notacredito` WRITE;
/*!40000 ALTER TABLE `faturaordem_notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_notadebito`
--

DROP TABLE IF EXISTS `faturaordem_notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_notadebito` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_notadebito`
--

LOCK TABLES `faturaordem_notadebito` WRITE;
/*!40000 ALTER TABLE `faturaordem_notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_orcamento`
--

DROP TABLE IF EXISTS `faturaordem_orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_orcamento` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_orcamento`
--

LOCK TABLES `faturaordem_orcamento` WRITE;
/*!40000 ALTER TABLE `faturaordem_orcamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_proforma`
--

DROP TABLE IF EXISTS `faturaordem_proforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_proforma` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_proforma`
--

LOCK TABLES `faturaordem_proforma` WRITE;
/*!40000 ALTER TABLE `faturaordem_proforma` DISABLE KEYS */;
INSERT INTO `faturaordem_proforma` VALUES (1,73),(2,74),(3,75),(4,78),(5,79),(6,81),(7,82),(8,83),(9,84),(10,99),(11,100),(12,120),(13,121);
/*!40000 ALTER TABLE `faturaordem_proforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaordem_recibo`
--

DROP TABLE IF EXISTS `faturaordem_recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaordem_recibo` (
  `idordem` int(11) NOT NULL AUTO_INCREMENT,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`idordem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaordem_recibo`
--

LOCK TABLES `faturaordem_recibo` WRITE;
/*!40000 ALTER TABLE `faturaordem_recibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturaordem_recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturarecibo`
--

DROP TABLE IF EXISTS `faturarecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturarecibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  `guia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_venda_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_venda` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturarecibo`
--

LOCK TABLES `faturarecibo` WRITE;
/*!40000 ALTER TABLE `faturarecibo` DISABLE KEYS */;
INSERT INTO `faturarecibo` VALUES (1,10,'',8500,1,0,0,8500,1,NULL),(2,6,'',8500,1,0,0,8500,1,NULL),(3,2,'',8500,1,0,0,8500,1,NULL),(4,9,'',5000,1,0,0,5000,2,NULL),(5,5,'',5000,1,0,0,5000,2,NULL),(6,1,'',5000,1,0,0,5000,2,NULL),(7,9,'',5000,1,0,0,5000,3,NULL),(8,5,'',5000,1,0,0,5000,3,NULL),(9,1,'',5000,1,0,0,5000,3,NULL),(10,13,'',8500,1,0,0,8500,5,NULL),(11,13,'',8500,1,0,0,8500,6,NULL),(12,10,'',8500,1,0,0,8500,6,NULL),(13,6,'',8500,1,0,0,8500,6,NULL),(14,12,'',15000,1,0,0,15000,7,NULL),(15,14,'',5000,1,0,0,5000,8,NULL),(16,9,'',5000,1,0,0,5000,8,NULL),(17,13,'',8500,1,0,0,8500,9,NULL),(18,10,'',8500,1,0,0,8500,9,NULL),(19,13,'',8500,1,0,0,8500,10,NULL),(20,10,'',8500,1,0,0,8500,11,NULL),(21,19,'',15000,1,0,0,15000,12,NULL),(22,13,'',8500,1,0,0,8500,13,NULL),(23,16,'',8000,1,0,0,8000,14,NULL),(24,11,'',8000,1,0,0,8000,14,NULL),(25,5,'',5000,1,0,0,5000,15,NULL),(26,9,'',5000,1,0,0,5000,16,NULL),(27,14,'',5000,1,0,0,5000,17,NULL),(28,9,'',5000,1,0,0,5000,17,NULL),(29,15,'',15000,1,0,0,15000,18,NULL),(30,12,'',15000,1,0,0,15000,18,NULL),(31,14,'',5000,1,0,0,5000,19,NULL),(32,9,'',5000,1,0,0,5000,19,NULL),(33,14,'',5000,1,0,0,5000,20,NULL),(34,14,'',5000,1,0,0,5000,21,NULL),(35,13,'',8500,1,0,0,8500,22,NULL),(36,10,'',8500,1,0,0,8500,22,NULL),(37,9,'',5000,1,0,0,5000,23,NULL),(38,18,'',5000,1,0,0,5000,24,NULL),(39,13,'',8500,1,0,0,8500,25,NULL),(40,10,'',8500,1,0,0,8500,25,NULL),(41,10,'',8500,1,0,0,8500,26,NULL),(42,14,'',5000,1,0,0,5000,27,NULL),(43,17,'',8500,1,0,0,8500,28,NULL),(44,13,'',8500,1,0,0,8500,28,NULL),(45,13,'',8500,1,0,0,8500,29,NULL),(46,10,'',8500,1,0,0,8500,29,NULL),(47,6,'',8500,1,0,0,8500,29,NULL),(48,2,'',8500,1,0,0,8500,29,NULL),(49,13,'',8500,1,0,0,8500,30,NULL),(50,10,'',8500,1,0,0,8500,30,NULL),(51,12,'',15000,1,0,0,15000,31,NULL),(52,14,'',5000,1,0,0,5000,32,NULL),(53,31,'',8500,1,0,0,8500,33,NULL),(54,27,'',8500,1,0,0,8500,33,NULL),(55,21,'',8500,1,0,0,8500,33,NULL),(56,9,'',5000,1,0,0,5000,34,NULL),(57,10,'',8500,1,0,0,8500,35,NULL),(58,13,'',8500,1,0,0,8500,36,NULL),(59,13,'',8500,1,0,0,8500,37,NULL),(60,10,'',8500,1,0,0,8500,37,NULL),(61,6,'',8500,1,0,0,8500,37,NULL),(62,13,'',8500,1,0,0,8500,38,NULL),(63,10,'',8500,1,0,0,8500,38,NULL),(64,6,'',8500,1,0,0,8500,38,NULL),(65,13,'',8500,1,0,0,8500,39,NULL),(66,10,'',8500,1,0,0,8500,39,NULL),(67,13,'',8500,1,0,0,8500,40,NULL),(68,10,'',8500,1,0,0,8500,40,NULL),(69,10,'',8500,1,0,0,8500,41,NULL),(70,13,'',8500,1,0,0,8500,42,NULL),(71,14,'',5000,1,0,0,5000,43,NULL),(72,14,'',5000,1,0,0,5000,44,NULL),(73,14,'',5000,1,0,0,5000,45,NULL),(74,18,'',5000,1,0,0,5000,46,NULL),(75,14,'',5000,1,0,0,5000,46,NULL),(76,18,'',5000,1,0,0,5000,47,NULL),(77,18,'',5000,1,0,0,5000,48,NULL),(78,13,'',8500,1,0,0,8500,49,NULL),(79,17,'',8500,1,0,0,8500,50,NULL),(80,18,'',5000,1,0,0,5000,51,NULL),(81,15,'',15000,2,0,0,30000,52,NULL),(82,17,'',8500,1,0,0,8500,53,NULL),(83,13,'',8500,1,0,0,8500,54,NULL),(84,13,'',8500,2,0,0,17000,55,NULL),(85,13,'',8500,2,0,0,17000,56,NULL),(86,19,'',15000,1,0,0,15000,57,NULL),(87,18,'',5000,1,0,0,5000,58,NULL),(88,13,'',8500,2,0,0,17000,59,NULL),(89,12,'',15000,3,0,0,45000,60,NULL),(90,17,'',8500,1,0,0,8500,61,NULL),(91,54,'',70000,15,0,0,1050000,62,NULL),(92,18,'',5000,1,0,0,5000,63,NULL),(93,21,'',8500,5,0,0,42500,64,NULL),(94,17,'',8500,2,0,0,17000,65,NULL),(95,18,'',5000,1,0,0,5000,66,NULL),(96,17,'',8500,2,0,0,17000,67,NULL),(97,17,'',8500,1,0,0,8500,68,NULL),(98,17,'',8500,3,0,0,25500,69,NULL),(99,18,'',5000,1,0,0,5000,70,NULL),(100,54,'',85000,10,0,0,850000,72,NULL),(101,10,'',8500,1,0,0,8500,76,NULL),(102,54,'',85000,10,0,0,850000,77,NULL),(103,54,'',85000,10,0,0,850000,80,NULL),(104,64,'',55000,30,0,0,1650000,85,NULL),(105,31,'',8500,1,0,0,8500,86,NULL),(106,27,'',8500,1,0,0,8500,86,NULL),(107,27,'',8500,1,0,0,8500,87,NULL),(108,27,'',8500,1,0,0,8500,88,NULL),(109,33,'',8500,1,0,0,8500,89,NULL),(110,31,'',8500,1,0,0,8500,89,NULL),(111,27,'',8500,1,0,0,8500,89,NULL),(112,27,'',8500,1,0,0,8500,90,NULL),(113,27,'',8500,1,0,0,8500,91,NULL),(114,21,'',8500,1,0,0,8500,91,NULL),(115,31,'',8500,1,0,0,8500,92,NULL),(116,31,'',8500,1,0,0,8500,93,NULL),(117,46,'',8500,1,0,0,8500,94,NULL),(118,42,'',8500,1,0,0,8500,94,NULL),(119,38,'',8500,1,0,0,8500,94,NULL),(120,33,'',8500,1,0,0,8500,94,NULL),(121,32,'',15000,1,0,0,15000,95,NULL),(122,33,'',8500,1,0,0,8500,96,NULL),(123,31,'',8500,1,0,0,8500,96,NULL),(124,34,'',5000,1,0,0,5000,97,NULL),(125,30,'',5000,1,0,0,5000,97,NULL),(126,31,'',8500,1,0,0,8500,98,NULL),(127,31,'',8500,1,0,0,8500,101,NULL),(128,69,'',4000000,2,0,0,8000000,102,NULL),(129,69,'',4000000,2,0,0,8000000,103,NULL),(130,69,'',4000000,2,0,0,8000000,104,NULL),(131,30,'',5000,1,0,0,5000,105,NULL),(132,26,'',5000,1,0,0,5000,105,NULL),(133,30,'',5000,1,0,0,5000,106,NULL),(134,31,'',8500,1,0,0,8500,107,NULL),(135,32,'',15000,1,0,0,15000,108,NULL),(136,30,'',5000,1,0,0,5000,109,NULL),(137,26,'',5000,1,0,0,5000,109,NULL),(138,28,'',15000,1,0,0,15000,110,NULL),(139,31,'',8500,1,0,0,8500,111,NULL),(140,32,'',15000,1,0,0,15000,112,NULL),(141,27,'',8500,1,0,0,8500,113,NULL),(142,29,'',8000,1,0,0,8000,114,NULL),(143,25,'',8000,1,0,0,8000,115,NULL),(144,30,'',5000,1,0,0,5000,116,NULL),(145,26,'',5000,1,0,0,5000,116,NULL),(146,31,'',8500,1,0,0,8500,117,NULL),(147,30,'',5000,1,0,0,5000,118,NULL),(148,29,'',8000,1,0,0,8000,119,NULL),(149,31,'',8500,1,0,0,8500,122,NULL),(150,27,'',8500,1,0,0,8500,122,NULL),(151,27,'',8500,1,0,0,8500,123,NULL),(152,31,'',8500,1,0,0,8500,124,NULL),(153,30,'',5000,1,0,0,5000,125,NULL),(154,36,'',15000,1,0,0,15000,126,NULL),(155,32,'',15000,1,0,0,15000,126,NULL),(156,36,'',15000,1,0,0,15000,127,NULL),(157,31,'',8500,1,0,0,8500,128,NULL),(158,28,'',15000,1,0,0,15000,129,NULL),(159,24,'',15000,1,0,0,15000,129,NULL),(160,31,'',8500,1,0,0,8500,130,NULL),(161,27,'',8500,1,0,0,8500,130,NULL),(162,32,'',15000,1,0,0,15000,131,NULL),(163,33,'',8500,1,0,0,8500,132,NULL),(164,70,'',1200000,1,0,0,1200000,133,NULL),(165,33,'',8500,1,0,0,8500,134,NULL),(166,31,'',8500,1,0,0,8500,135,NULL),(167,34,'',5000,1,0,0,5000,136,NULL),(168,30,'',5000,1,0,0,5000,136,NULL),(169,31,'',8500,1,0,0,8500,137,NULL),(170,73,'',18500,1120,0,0,20720000,143,NULL);
/*!40000 ALTER TABLE `faturarecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturarecibo_notacredito`
--

DROP TABLE IF EXISTS `faturarecibo_notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturarecibo_notacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_frnc_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_frnc_idx` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturarecibo_notacredito`
--

LOCK TABLES `faturarecibo_notacredito` WRITE;
/*!40000 ALTER TABLE `faturarecibo_notacredito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturarecibo_notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturarecibo_notadebito`
--

DROP TABLE IF EXISTS `faturarecibo_notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturarecibo_notadebito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkidfactura_frnd_idx` (`idfatura`),
  CONSTRAINT `fkidfactura_frnd_idx` FOREIGN KEY (`idfatura`) REFERENCES `fatura` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturarecibo_notadebito`
--

LOCK TABLES `faturarecibo_notadebito` WRITE;
/*!40000 ALTER TABLE `faturarecibo_notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `faturarecibo_notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturaregra`
--

DROP TABLE IF EXISTS `faturaregra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturaregra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` varchar(100) DEFAULT NULL,
  `politica` varchar(1000) DEFAULT NULL,
  `dia_validade` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturaregra`
--

LOCK TABLES `faturaregra` WRITE;
/*!40000 ALTER TABLE `faturaregra` DISABLE KEYS */;
INSERT INTO `faturaregra` VALUES (1,'BANCO BAI  IBAN: 0040.0000.7530.0250.1018.5 BANCO ECONÓMICO  IBAN: 0045.0050.0002.3430.3','Factura irremovível!',10);
/*!40000 ALTER TABLE `faturaregra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feria`
--

DROP TABLE IF EXISTS `feria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` enum('pendente','aprovado','rejeitado') DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `data2` date DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfuncionarioferia_idx` (`idfuncionario`),
  CONSTRAINT `fk_idfuncionarioferia` FOREIGN KEY (`idfuncionario`) REFERENCES `funcionario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feria`
--

LOCK TABLES `feria` WRITE;
/*!40000 ALTER TABLE `feria` DISABLE KEYS */;
INSERT INTO `feria` VALUES (1,'aprovado','','2023-03-28','2024-03-28',104,0);
/*!40000 ALTER TABLE `feria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigoconta` varchar(45) DEFAULT NULL,
  `designacao` varchar(45) DEFAULT NULL,
  `nporta` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `endereco1` varchar(45) DEFAULT NULL,
  `endereco2` varchar(150) DEFAULT NULL,
  `endereco3` varchar(45) DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idpais` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `telemovel` varchar(45) DEFAULT NULL,
  `fax` varchar(45) DEFAULT NULL,
  `cpostal` varchar(45) DEFAULT NULL,
  `site` varchar(45) DEFAULT NULL,
  `indicador` int(11) DEFAULT NULL,
  `nif` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `idcargo` int(11) DEFAULT NULL,
  `iddivisao` int(11) DEFAULT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `data` date DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  `nif` text DEFAULT NULL,
  `ssocial` text DEFAULT NULL,
  KEY `fk_pessoafuncionario_idx` (`id`),
  KEY `fk_cargofuncionario_idx` (`idcargo`),
  CONSTRAINT `fk_cargofuncionario` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pessoafuncionario` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (100,2,8,4,180000,'2023-12-18','Activo',' 0003232247la031',' '),(101,24,3,2,110000,'2023-12-18','Activo',' ',' '),(103,23,8,1,110000,'2023-12-18','Activo',' ',' '),(104,2,3,3,200000,'2023-12-18','Activo',' ',' '),(105,22,3,3,50000,'2023-12-18','Activo',' ',' '),(106,24,3,3,120000,'2023-12-18','Activo',' ',' '),(108,23,3,3,120000,'2023-12-18','Activo',' ',' '),(109,23,3,3,100000,'2023-12-18','Activo',' ',' '),(110,23,3,3,110000,'2023-12-18','Activo','000478722LA040',''),(111,14,3,3,100000,'2023-12-18','Activo','',''),(112,14,3,3,100000,'2023-12-18','Activo','005845482ZE043',''),(113,23,8,3,500000,'2023-12-18','Activo','',''),(114,5,7,4,100000,'2023-12-18','Activo','000559111037',''),(115,21,2,1,200000,'2023-12-18','Activo','003895800038','005716039'),(116,15,3,4,100000,'2023-12-18','Activo','5022342BA042','001375211'),(117,23,8,3,50000,'2023-12-18','Activo','',''),(118,23,8,2,90000,'2023-12-18','Activo','',''),(119,23,8,3,50000,'2023-12-18','Activo','',''),(120,2,8,2,150000,'2023-12-18','Activo','','');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guiaremessa`
--

DROP TABLE IF EXISTS `guiaremessa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guiaremessa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guiaremessa_id` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guiaremessa`
--

LOCK TABLES `guiaremessa` WRITE;
/*!40000 ALTER TABLE `guiaremessa` DISABLE KEYS */;
/*!40000 ALTER TABLE `guiaremessa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guiatransporte`
--

DROP TABLE IF EXISTS `guiatransporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guiatransporte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guiatransporte_id` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guiatransporte`
--

LOCK TABLES `guiatransporte` WRITE;
/*!40000 ALTER TABLE `guiatransporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `guiatransporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idoperador` int(11) DEFAULT NULL,
  `idcarteira` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `operacao` enum('credito','debito') DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imposto`
--

DROP TABLE IF EXISTS `imposto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imposto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `percentagem` varchar(45) DEFAULT NULL,
  `montante` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `estado` enum('activo','inactivo') DEFAULT NULL,
  `registo` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `identificador` varchar(45) DEFAULT NULL,
  `codigoconta` varchar(45) DEFAULT NULL,
  `chave` varchar(45) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `debito` varchar(45) DEFAULT NULL,
  `credito` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imposto`
--

LOCK TABLES `imposto` WRITE;
/*!40000 ALTER TABLE `imposto` DISABLE KEYS */;
/*!40000 ALTER TABLE `imposto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `nif` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `logotipo` varchar(45) DEFAULT NULL,
  `site` text DEFAULT NULL,
  `capital` double DEFAULT NULL,
  `estado` enum('Activo','Desactivo') DEFAULT NULL,
  `registo_comercial` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao`
--

LOCK TABLES `instituicao` WRITE;
/*!40000 ALTER TABLE `instituicao` DISABLE KEYS */;
INSERT INTO `instituicao` VALUES (10,'K.PEMBELE-INDUSTRIA,  Lda','5484025940','2020-05-14','64467708eca8f.jpg',' ',0,'Activo','');
/*!40000 ALTER TABLE `instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao_contacto`
--

DROP TABLE IF EXISTS `instituicao_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicao_contacto` (
  `idinstituicao` int(11) NOT NULL,
  `idcontacto` int(11) NOT NULL,
  KEY `fk_instituicao_idx` (`idinstituicao`),
  KEY `fk_contacto_idx` (`idcontacto`),
  CONSTRAINT `fk_contacto` FOREIGN KEY (`idcontacto`) REFERENCES `contacto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_instituicao` FOREIGN KEY (`idinstituicao`) REFERENCES `instituicao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao_contacto`
--

LOCK TABLES `instituicao_contacto` WRITE;
/*!40000 ALTER TABLE `instituicao_contacto` DISABLE KEYS */;
INSERT INTO `instituicao_contacto` VALUES (10,31);
/*!40000 ALTER TABLE `instituicao_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao_endereco`
--

DROP TABLE IF EXISTS `instituicao_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instituicao_endereco` (
  `idinstituicao` int(11) NOT NULL,
  `idendereco` int(11) NOT NULL,
  KEY `fk_idinstituicao_idx` (`idinstituicao`),
  KEY `fk_idendereco_idx` (`idendereco`),
  CONSTRAINT `fk_idendereco` FOREIGN KEY (`idendereco`) REFERENCES `endereco` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idinstituicao` FOREIGN KEY (`idinstituicao`) REFERENCES `instituicao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao_endereco`
--

LOCK TABLES `instituicao_endereco` WRITE;
/*!40000 ALTER TABLE `instituicao_endereco` DISABLE KEYS */;
INSERT INTO `instituicao_endereco` VALUES (10,32);
/*!40000 ALTER TABLE `instituicao_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenca`
--

DROP TABLE IF EXISTS `licenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licenca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(45) DEFAULT NULL,
  `nif` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `data2` date DEFAULT NULL,
  `codigo` varchar(500) DEFAULT NULL,
  `software` varchar(45) DEFAULT NULL,
  `tipo` enum('Demo','Contrato') DEFAULT NULL,
  `estado` enum('Activo','Inactivo') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenca`
--

LOCK TABLES `licenca` WRITE;
/*!40000 ALTER TABLE `licenca` DISABLE KEYS */;
INSERT INTO `licenca` VALUES (1,' MEUGENIO-COMERCIAL',' 12221111222',' cortextecnologia@gmail.com',' 940 510 653','2019-05-24','2070-03-10','b1d5781111d84f7b3fe45a0852e59758cd7a87e5','Comercial','Contrato','Activo');
/*!40000 ALTER TABLE `licenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livrolink`
--

DROP TABLE IF EXISTS `livrolink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livrolink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idlivro` int(11) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livrolink`
--

LOCK TABLES `livrolink` WRITE;
/*!40000 ALTER TABLE `livrolink` DISABLE KEYS */;
/*!40000 ALTER TABLE `livrolink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem`
--

DROP TABLE IF EXISTS `mensagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) DEFAULT NULL,
  `anexo` varchar(50) DEFAULT NULL,
  `idagente1` int(11) DEFAULT NULL,
  `idagente2` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idpessoaagente1_idx` (`idagente1`),
  KEY `fk_idpessoaagente2_idx` (`idagente2`),
  CONSTRAINT `fk_idpessoaagente1` FOREIGN KEY (`idagente1`) REFERENCES `pessoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idpessoaagente2` FOREIGN KEY (`idagente2`) REFERENCES `pessoa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem`
--

LOCK TABLES `mensagem` WRITE;
/*!40000 ALTER TABLE `mensagem` DISABLE KEYS */;
INSERT INTO `mensagem` VALUES (1,'Q09NTyBFU1TDgVMnPw==',NULL,102,100,'2023-03-30',1),(2,'ZXN0b3UgY29tIHNlZGU=',NULL,100,102,'2023-03-30',1),(3,'Qk9NIERJQQ==',NULL,102,100,'2023-04-21',1),(4,'ZXN0YXMgY29tIHNlZGUg',NULL,100,102,'2023-04-21',1),(5,'ZXN0YXMgY29tIHNlZGUg',NULL,100,102,'2023-04-21',1),(6,'ZXN0YXMgY29tIHNlZGUg',NULL,100,102,'2023-04-21',1),(7,'ZXN0YXMgY29tIHNlZGUg',NULL,100,102,'2023-04-21',1),(8,'Ym9tbW1tbW1tZGlhYWFhYWE=',NULL,100,102,'2023-04-21',1),(9,'TyBtYW5vIG7Do28gdHJvY2UgIG1pbW9z',NULL,102,100,'2023-04-21',0),(10,'Q09NTyBFU1TDgVMnPw==',NULL,102,104,'2023-04-21',0);
/*!40000 ALTER TABLE `mensagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagem_video`
--

DROP TABLE IF EXISTS `mensagem_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagem_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idagente1` int(11) DEFAULT NULL,
  `idagente2` int(11) DEFAULT NULL,
  `chave` varchar(9000) DEFAULT NULL,
  `fasevideochat` int(11) DEFAULT 1,
  `data` date DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  `estado` enum('aprovado','rejeitado','pendente') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagem_video`
--

LOCK TABLES `mensagem_video` WRITE;
/*!40000 ALTER TABLE `mensagem_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensagem_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'JANEIRO'),(2,'FEVEREIRO'),(3,'MARÇO'),(4,'ABRIL'),(5,'MAIO'),(6,'JUNHO'),(7,'JULHO'),(8,'AGOSTO'),(9,'SETEMBRO'),(10,'OUTUBRO'),(11,'NOVEMBRO'),(12,'DEZEMBRO');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo`
--

LOCK TABLES `modulo` WRITE;
/*!40000 ALTER TABLE `modulo` DISABLE KEYS */;
INSERT INTO `modulo` VALUES (1,'PAINEL','PAINEL',1),(2,'CALENDARIO','CALENDARIO',1),(3,'COMERCIAL','COMERCIAL',1),(4,'CONTABILIDADE','CONTABILIDADE',1),(5,'RH','RH',1),(6,'COMUNICACAO','COMUNICACAO',1),(7,'CONFIGURACOES','CONFIGURACOES',1),(8,'FINANÇAS','Gestão das finanças',1),(9,'STOCK','Gestão de Stock',1);
/*!40000 ALTER TABLE `modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `provincia_id` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FE98F5E04E7121AF` (`provincia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (6452,175,'Caxito'),(6453,176,'Benguela'),(6454,176,'Lobito'),(6455,177,'Camacupa'),(6456,177,'Catabola'),(6457,177,'Catumbela'),(6458,177,'Chissamba'),(6459,177,'Kuito'),(6460,178,'Cabinda'),(6461,179,'Ondjiva'),(6462,180,'Caala'),(6463,180,'Catchiungo'),(6464,180,'Huambo'),(6465,180,'Longonjo'),(6466,181,'Caconda'),(6467,181,'Caluquembe'),(6468,181,'Lubango'),(6469,182,'Menongue'),(6470,185,'Luanda'),(6471,188,'Malanje'),(6472,189,'Cazaje'),(6473,189,'Leua'),(6474,189,'Luau'),(6475,189,'Luena'),(6476,189,'Lumeje'),(6477,190,'Namibe'),(6478,191,'Camabatela'),(6479,191,'Uige'),(6480,192,'M\'banza-Kongo'),(6481,192,'N\'zeto'),(6482,192,'Soyo'),(6483,183,'DONDO'),(6484,185,'Cacuaco'),(6485,185,'Cazenga'),(6486,185,'Sambizanga'),(6487,185,'Belas'),(6488,185,'Kilamba Kiaxi'),(6489,185,'Icolo e Bengo'),(6490,185,'Quiçama'),(6491,185,'Viana'),(6492,175,'Nambuangongo'),(6493,175,'Ambriz'),(6494,175,'Bula'),(6495,175,'Atumba'),(6496,175,'Dembos'),(6497,175,'Pango Aluquém'),(6498,175,'Dande'),(6499,191,'Bembe'),(6500,191,'Macocola'),(6501,191,'Milunga'),(6502,191,'Damba'),(6503,191,'Bungo'),(6504,191,'Buengas'),(6505,191,'Ambuila'),(6506,191,'Alto Caual'),(6507,191,'Mucaba'),(6508,191,'Negage'),(6509,191,'Puri'),(6510,191,'Quimbele'),(6511,191,'Quitexe'),(6512,191,'Sanza Pombo'),(6513,191,'Songo'),(6515,191,'Zombo'),(6516,184,'SUMBE'),(6517,185,'PALANCA'),(6518,185,'Maianga'),(6519,185,'SAMBA'),(6520,183,'CAZENGO'),(6521,184,'WACO CUNGO');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_credito`
--

DROP TABLE IF EXISTS `nota_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_credito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clie_nd_idx` (`id_cliente`),
  KEY `fk_nc_fact_idx` (`id_factura`),
  KEY `fk_nc_func_idx` (`id_funcionario`),
  CONSTRAINT `fk_clie_nd` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nc_fact` FOREIGN KEY (`id_factura`) REFERENCES `fatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_nc_funcio` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_credito`
--

LOCK TABLES `nota_credito` WRITE;
/*!40000 ALTER TABLE `nota_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_debito`
--

DROP TABLE IF EXISTS `nota_debito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_debito` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_clie_nc_idx` (`id_cliente`),
  CONSTRAINT `fk_clie_nc` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_debito`
--

LOCK TABLES `nota_debito` WRITE;
/*!40000 ALTER TABLE `nota_debito` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_debito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notacredito`
--

DROP TABLE IF EXISTS `notacredito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notacredito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notacredito_id` (`idfatura`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notacredito`
--

LOCK TABLES `notacredito` WRITE;
/*!40000 ALTER TABLE `notacredito` DISABLE KEYS */;
INSERT INTO `notacredito` VALUES (1,3,'',200000,1,0,0,200000,3);
/*!40000 ALTER TABLE `notacredito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notadebito`
--

DROP TABLE IF EXISTS `notadebito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notadebito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notadebito_id` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notadebito`
--

LOCK TABLES `notadebito` WRITE;
/*!40000 ALTER TABLE `notadebito` DISABLE KEYS */;
/*!40000 ALTER TABLE `notadebito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orcamento`
--

DROP TABLE IF EXISTS `orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orcamento_id` (`idfatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orcamento`
--

LOCK TABLES `orcamento` WRITE;
/*!40000 ALTER TABLE `orcamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `abreviacao` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E5D2EFF54BD530C` (`nome`),
  UNIQUE KEY `UNIQ_7E5D2EFFB9786365` (`abreviacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (2,'Outro','OT'),(6,'Angola','AO'),(7,'Portugal','PT');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(100) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (16,'ADMINISTRADOR','ADMINISTRADOR',1),(17,'DP- FINANÇAS','DEPARTAMENTO FINANCEIRO ',1),(18,'DP- RECURSOS HUMANOS','DEPARTAMENTO DO RECURSOS HUMANOS',1),(19,'DP -LOGISTICA','GESTÃO DE STOCK',1),(20,'DP-COMERCIAL','GESTÃO DA AR.COMERCIAL',1),(21,'GONÇALVES NHANGA ','ADMINISTRADOR',NULL),(22,'GRH/SECRETÁRIA ','',1);
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_modulo`
--

DROP TABLE IF EXISTS `perfil_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil_modulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idperfil` int(11) DEFAULT NULL,
  `idmodulo` int(11) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idperfil_idx` (`idperfil`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_modulo`
--

LOCK TABLES `perfil_modulo` WRITE;
/*!40000 ALTER TABLE `perfil_modulo` DISABLE KEYS */;
INSERT INTO `perfil_modulo` VALUES (23,NULL,15,1),(24,NULL,3,1),(39,10,1,1),(40,10,2,1),(41,10,3,1),(42,10,4,1),(43,10,5,1),(44,10,6,1),(45,10,7,1),(46,10,8,1),(47,10,10,1),(48,10,11,1),(49,10,12,1),(50,10,13,1),(51,10,14,1),(52,10,15,1),(53,10,16,1),(54,10,17,0),(55,11,1,1),(56,11,2,1),(57,11,3,1),(58,11,4,1),(59,11,5,0),(60,11,6,0),(61,11,7,1),(62,12,1,0),(63,12,2,0),(64,12,3,1),(65,12,4,0),(66,12,5,0),(67,12,6,0),(68,12,7,0),(69,13,1,0),(70,13,2,0),(71,13,3,0),(72,13,4,0),(73,13,5,0),(74,13,6,0),(75,13,7,0),(76,14,1,1),(77,14,2,1),(78,14,3,0),(79,14,4,0),(80,14,5,0),(81,14,6,0),(82,14,7,0),(83,15,1,1),(84,15,2,1),(85,15,3,0),(86,15,4,1),(87,15,5,0),(88,15,6,0),(89,15,7,0),(90,15,8,1),(91,15,9,1),(92,16,1,1),(93,16,2,1),(94,16,3,1),(95,16,4,1),(96,16,5,1),(97,16,6,1),(98,16,7,1),(99,16,8,1),(100,16,9,1),(101,17,1,0),(102,17,2,0),(103,17,3,1),(104,17,4,0),(105,17,5,0),(106,17,6,1),(107,17,7,0),(108,17,8,1),(109,17,9,0),(110,18,1,1),(111,18,2,1),(112,18,3,0),(113,18,4,0),(114,18,5,1),(115,18,6,1),(116,18,7,0),(117,18,8,0),(118,18,9,0),(119,19,1,0),(120,19,2,1),(121,19,3,0),(122,19,4,0),(123,19,5,0),(124,19,6,1),(125,19,7,0),(126,19,8,0),(127,19,9,1),(128,20,1,1),(129,20,2,1),(130,20,3,1),(131,20,4,1),(132,20,5,0),(133,20,6,1),(134,20,7,0),(135,20,8,1),(136,20,9,1),(137,21,1,0),(138,21,2,0),(139,21,3,0),(140,21,4,0),(141,21,5,0),(142,21,6,1),(143,21,7,0),(144,21,8,0),(145,21,9,0),(146,21,1,0),(147,21,2,0),(148,21,3,0),(149,21,4,0),(150,21,5,0),(151,21,6,0),(152,21,7,0),(153,21,8,0),(154,21,9,0),(155,22,1,1),(156,22,2,0),(157,22,3,1),(158,22,4,1),(159,22,5,1),(160,22,6,0),(161,22,7,0),(162,22,8,0),(163,22,9,0);
/*!40000 ALTER TABLE `perfil_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `apelido` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `genero` enum('Masculino','Feminino') DEFAULT NULL,
  `ndi` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (34,'ADMINISTRADOR','ADMINISTRADOR','2020-07-26','Masculino','222222222LA221','avatar.png'),(100,'Engrácia Patrícia D. Nunes Da Costa','Engrácia ','2023-12-18','Feminino','0003232247LA031','658009db281f1.jpg'),(101,'Muke Ndombaxi','Muke','2023-12-18','Masculino','004935919UE045','657ff82526e2e.jpg'),(102,'Cecília Severina  Chilimbo','Cecília ','2023-04-20','Feminino','006376310LA040','avatar.png'),(103,'Esmael Benedito Francisco Viegas','Esmael ','2023-12-18','Masculino','006293148KS040','657ff7fb366f9.jpg'),(104,'Moisés Daniel Alexandre ','Moisés ','2023-12-18','Masculino','005164404LA043','avatar.png'),(105,'Dionísia Rodeth','Rodeth','2023-07-18','Masculino','008285536HA044','657ff8623051b.jpg'),(106,'Vumbo Alberto Manuel ','Vumbo','2023-04-21','Masculino',' ','658004fa7952d.jpg'),(107,'Francisco Dinis Azevedo Raul','Francisco ','2023-02-22','Masculino','008192964BO048','avatar.png'),(108,'Osvaldo João Manuel ','Osvaldo ','2023-04-21','Masculino','001211486LA032','658005a6dd379.jpg'),(109,'Augusto  Dos Santos David','Pembele ','2023-04-24','Masculino','12345678UE041','65800615aaa95.jpg'),(110,'ANTONIO MANUEL QUIMBINGA','QUIMBINGA','2023-04-21','Masculino','00493591UE045','6580078d37458.jpg'),(111,'NELSON ANDRÉ','ANDRE','2023-04-24','Masculino','00492932UE041','65800823321a3.jpg'),(112,'MIGUEL FREITAS ','FREITAS','2023-04-24','Masculino','005845482ZE043','65800890ab4bd.jpg'),(113,'ABEL BENJAMIM CHILIMBO','CHILIMBO','2023-05-10','Masculino','006392404LA049','658008f5bf3f1.jpg'),(114,'Francisco Bartolomeu Manuel','Manuel ','2023-12-18','Masculino','000559111LA037','avatar.png'),(115,'Eduardo Kiakumbuta Fernandes','Fernandes','1993-08-01','Masculino','003895800LA038','65800d95d494d.jpg'),(116,'Henriqueta Helena Agostinho Gomes','Gomes','1975-02-14','Feminino','005022342BA042','658014aa4bcef.jpg'),(117,'Guilherme Alexandre Caimessa','Caimessa','1996-08-12','Masculino','006902637LA045','6580169bb1489.jpg'),(118,'Noé Domingos Simão','Simão','2023-12-18','Masculino','002680604ME032','avatar.png'),(119,'Norton Baldaia De Osvaldo Perove','Perove','2002-08-25','Masculino','009302607HO044','658019de2200e.jpg'),(120,'David Próspero Mfumu','Mfumu','1962-03-14','Masculino','001735539UE034','65801b2bb53e6.jpg');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_contacto`
--

DROP TABLE IF EXISTS `pessoa_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_contacto` (
  `idpessoa` int(11) DEFAULT NULL,
  `idcontacto` int(11) DEFAULT NULL,
  KEY `fk_idpessoacontacto_idx` (`idpessoa`),
  KEY `fk_idcontacto_idx` (`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_contacto`
--

LOCK TABLES `pessoa_contacto` WRITE;
/*!40000 ALTER TABLE `pessoa_contacto` DISABLE KEYS */;
INSERT INTO `pessoa_contacto` VALUES (34,38),(47,46),(48,47),(49,48),(50,49),(51,50),(52,51),(53,52),(54,53),(55,54),(56,55),(57,56),(58,57),(59,58),(60,59),(61,60),(62,61),(63,62),(64,63),(65,64),(66,65),(67,66),(68,67),(69,68),(70,69),(71,70),(72,71),(73,72),(74,73),(75,74),(76,75),(77,76),(78,77),(79,78),(80,79),(81,80),(82,81),(83,82),(84,83),(85,84),(86,85),(87,86),(88,87),(89,88),(90,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119);
/*!40000 ALTER TABLE `pessoa_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa_endereco`
--

DROP TABLE IF EXISTS `pessoa_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa_endereco` (
  `idpessoa` int(11) DEFAULT NULL,
  `idendereco` int(11) DEFAULT NULL,
  KEY `fk_endereco_endereco_idx` (`idendereco`),
  KEY `fk_idpessoaendereco` (`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa_endereco`
--

LOCK TABLES `pessoa_endereco` WRITE;
/*!40000 ALTER TABLE `pessoa_endereco` DISABLE KEYS */;
INSERT INTO `pessoa_endereco` VALUES (34,39),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100),(101,101),(102,102),(103,103),(104,104),(105,105),(106,106),(107,107),(108,108),(109,109),(110,110),(111,111),(112,112),(113,113),(114,114),(115,115),(116,116),(117,117),(118,118),(119,119),(120,120);
/*!40000 ALTER TABLE `pessoa_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presenca`
--

DROP TABLE IF EXISTS `presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presenca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` enum('pendente','presente','ausente') DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfuncionariopresenca_idx` (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presenca`
--

LOCK TABLES `presenca` WRITE;
/*!40000 ALTER TABLE `presenca` DISABLE KEYS */;
INSERT INTO `presenca` VALUES (1,'presente','','2023-03-28',100,0),(2,'ausente','Doença','2023-03-28',101,0),(3,'ausente','Mes De Março 4 Faltas Nao Informadas Apareceu','2023-04-21',101,0),(6,'ausente','Esposa Doente','2023-04-24',103,0);
/*!40000 ALTER TABLE `presenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtoservico`
--

DROP TABLE IF EXISTS `produtoservico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtoservico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indicador` varchar(45) DEFAULT NULL,
  `caracterizacao` varchar(45) DEFAULT NULL,
  `codigo` varchar(60) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `designacao` text DEFAULT NULL,
  `preco1` double DEFAULT NULL,
  `preco2` double DEFAULT NULL,
  `imposto` double DEFAULT 0,
  `descricao` varchar(200) DEFAULT NULL,
  `motivoisensao` text DEFAULT NULL,
  `imagem` varchar(45) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  `familia` varchar(45) DEFAULT NULL,
  `tipo` enum('produto','servico') DEFAULT NULL,
  `sigla` varchar(45) DEFAULT NULL,
  `preco3` double DEFAULT NULL,
  `preco4` double DEFAULT NULL,
  `tipo_imposto` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `stockminimo` int(11) DEFAULT NULL,
  `stockmaximo` int(11) DEFAULT NULL,
  `datavalidade` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtoservico`
--

LOCK TABLES `produtoservico` WRITE;
/*!40000 ALTER TABLE `produtoservico` DISABLE KEYS */;
INSERT INTO `produtoservico` VALUES (1,'P','',' ','',' ','JANEIRO 5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-28 00:00:00'),(2,'P','',' ','',' ','JANEIRO 8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-28 00:00:00'),(3,'P','',' ','',' ','JANEIRO 15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-28 00:00:00'),(4,'P','',' ','',' ','JANEIRO 8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-28 00:00:00'),(5,'P','','  ','','  ','FEVEREIRO 5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(6,'P','',' ','',' ','FEVEREIRO 8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(7,'P','',' ','',' ','FEVEREIRO 15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(8,'P','',' ','',' ','FEVEREIRO 8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(9,'P','',' ','',' ','MARÇO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(10,'P','',' ','',' ','MARÇO 8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-29 00:00:00'),(11,'P','',' ','',' ','MARÇO 8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(12,'P','',' ','',' ','MARÇO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(13,'P','',' ','',' ','ABRIL8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(14,'P','',' ','',' ','ABRIL5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(15,'P','',' ','',' ','ABRIL15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(16,'P','',' ','',' ','ABRIL8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(17,'P','',' ','',' ','MAIO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(18,'P','',' ','',' ','MAIO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(19,'P','',' ','',' ','MAIO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(20,'P','',' ','',' ','MAIO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(21,'P','',' ','',' ','JUNHO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(22,'P','',' ','',' ','JUNHO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(23,'P','',' ','',' ','JUNHO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(24,'P','',' ','',' ','JUNHO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(25,'P','',' ','',' ','JULHO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(26,'P','',' ','',' ','JULHO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(27,'P','',' ','',' ','JULHO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(28,'P','',' ','',' ','JULHO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(29,'P','',' ','','   ','AGOSTO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(30,'P','',' ','',' ','AGOSTO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(31,'P','',' ','',' ','AGOSTO8500',0,8500,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(32,'P','',' ','',' ','AGOSTO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(33,'P','',' ','',' ','SETEMBRO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(34,'P','',' ','',' ','SETEMBRO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(35,'P','',' ','',' ','SETEMBRO8000',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(36,'P','',' ','',' ','SETEMBRO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(37,'P','',' ','',' ','OUTUBRO8000',0,8000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(38,'P','',' ','',' ','OUTUBRO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(39,'P','',' ','',' ','OUTUBRO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(40,'P','',' ','',' ','OUTUBRO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(41,'P','',' ','',' ','NOVEMBRO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(42,'P','',' ','',' ','NOVEMBRO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(43,'P','',' ','',' ','NOVEMBRO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(44,'P','',' ','',' ','NOVEMBRO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(45,'P','',' ','',' ','DEZEMBRO8000',0,8000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(46,'P','',' ','',' ','DEZEMBRO8500',0,8500,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(47,'P','',' ','',' ','DEZEMBRO15000',0,15000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(48,'P','',' ','',' ','DEZEMBRO5000',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-03-30 00:00:00'),(49,'P','',' ','',' ','Multa Mensal (1F)',0,3000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-04-24 00:00:00'),(50,'P','',' ','',' ','Multa Mensal (3F)',0,5000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-04-24 00:00:00'),(51,'P','','  ','','  ','Contrato De Energia Geral  (1F)',0,150000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-04-24 00:00:00'),(52,'P','',' ','',' ','Contrato De Energia  Especial (1F)',0,60000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-04-24 00:00:00'),(53,'P','',' ','',' ','Contrato De Energia (3F)',0,250000,0,'','','imagem.png',NULL,'','servico','S',0,0,'NS',1,0,0,'2023-04-24 00:00:00'),(54,'P','',' ','',' ','Mangueira de Canalização 2 polegada',0,85000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-06-22 00:00:00'),(55,'P','','  ','','   ','Mangueira de Canalização 1,5 polegadas',0,55000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,60000000,6000000,'2023-06-22 00:00:00'),(56,'P','','  tudo de canalizacao 2 polegada','','  ','   ',0,75000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-06-22 00:00:00'),(57,'P','',' ','',' ','mangueira de canalizacao  2/5 polegada ',0,100000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-06-22 00:00:00'),(58,'P','',' ','',' ','mangueira dn 3 polegada',0,150000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-06-22 00:00:00'),(59,'P','',' ','',' ','mangueira  4 polegada dn50 metros ',0,150000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,0,0,'2023-06-22 00:00:00'),(60,'P','',' ',' ',' ',' ',75000,75000,0,'Tubo de Canalização de 2 Polegadas','','imagem.png',NULL,'','produto','P',75000,0,'NS',1,10,10,'2023-07-12 00:00:00'),(61,'O','',' ',' ',' ','TUBO DE CANALIZAÇÃO',85000,85000,11900,'TUBO DE CANALIZAÇÃO','','imagem.png',NULL,'','produto','P',85000,85000,'IVA',1,10,10,'2023-07-12 00:00:00'),(62,'P','',' ',' ',' ','Tubo de Canalização 2.P',1000,85000,0,'Tubo de Canalização','','imagem.png',NULL,'','produto','P',85000,0,'NS',1,10000000,10,'2023-07-12 00:00:00'),(63,'P','',' ','',' ',' 1,5P',160000,160000,0,'','','imagem.png',NULL,'mangueira 1,5P','produto','P',0,0,'NS',1,0,300000,'2023-08-07 00:00:00'),(64,'P','',' ',' ',' ','mangueiras 1,5',55000,55000,0,'','','imagem.png',NULL,'','produto','P',0,0,'NS',1,15000000,15000000,'2023-08-10 00:00:00'),(65,'P','',' ','500085149',' ',' ',0,0,0,'','','imagem.png',NULL,'PADARIA E.M.S LDA','produto','P',0,0,'NS',1,30000000,30000000,'2023-09-07 00:00:00'),(66,'P','',' ',' ',' ','  ',0,0,0,'','','imagem.png',NULL,'FORNOS ','produto','P',0,0,'NS',1,500000,500000,'2023-09-07 00:00:00'),(67,'P','','       ','','     ','FORNO DE PADARIA',4,4000000,0,'','','imagem.png',NULL,'FORNOS','produto','P',4000000,0,'NS',1,120000000,2147483647,'2023-09-07 00:00:00'),(68,'P','','  ','  ',' ','forno',4000000,4000000,560000,'','','imagem.png',NULL,' ','servico','S',4000000,0,'IVA',1,2147483647,2147483647,'2023-09-07 00:00:00'),(69,'P','',' ','  ',' ','FORNO',4000000,4000000,0,'','','imagem.png',NULL,'','produto','P',4000000,0,'NS',1,400000000,2147483647,'2023-09-07 00:00:00'),(70,'P','',' ',' ',' ','FORNO E MISTURADOR',1200000,1200000,0,'','','imagem.png',NULL,'FORNO E MISTURADOR','produto','P',1200000,1200000,'NS',1,400000000,2147483647,'2023-09-27 00:00:00'),(71,'P','OLEO DE MOTOR DIESEL',' ',' ','  ',' ',18.85,0,0,'','','imagem.png',NULL,'OL EO DE MOTOR','produto','P',0,0,'IVA',1,500000,600000,'2023-12-05 00:00:00'),(72,'P','OLEO DE MOTOR DIESEL','  ','','  ','  ',18.85,18.85,2.639,'','','imagem.png',NULL,'OL EO DE MOTOR','produto','P',0,0,'IVA',1,500000,600000,'2023-12-05 00:00:00'),(73,'O','OLEO DE MOTOR DIESEL','OLEO DO MOTOR','','1234','OLEO DO MOTOR',18500,18500,0,'','','imagem.png',NULL,'OL EO DE MOTOR','produto','P',0,0,'NS',1,1,1000,'2023-12-05 00:00:00'),(74,'P','','  ','',' ',' ',3000,3000,420,'','','imagem.png',NULL,'PNEUS DIVERSOS','produto','P',0,0,'IVA',1,0,0,'2023-12-05 00:00:00'),(75,'P','','Tubos de Canalização','','1234','2 polegadas',75000,75000,0,'','','imagem.png',NULL,'','produto','P',75000,0,'NS',1,10,1000,'2023-12-27 00:00:00');
/*!40000 ALTER TABLE `produtoservico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proforma`
--

DROP TABLE IF EXISTS `proforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proforma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfacturaorcamento_idx` (`idfatura`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proforma`
--

LOCK TABLES `proforma` WRITE;
/*!40000 ALTER TABLE `proforma` DISABLE KEYS */;
INSERT INTO `proforma` VALUES (1,3,'',200000,1,0,0,200000,4),(2,54,'',85000,1,0,0,85000,73),(3,54,'',85000,10,0,0,850000,74),(4,54,'',85000,10,0,0,850000,75),(5,54,'',85000,1,0,0,85000,78),(6,54,'',85000,10,0,0,850000,79),(7,55,'',160000,30,0,0,4800000,81),(8,55,'',60000,30,0,0,1800000,82),(9,55,'',60000,30,0,0,1800000,83),(10,55,'',55000,30,0,0,1650000,84),(11,67,'',400000,2,0,0,800000,99),(12,67,'',4000000,2,0,0,8000000,100),(13,54,'',85000,12,0,0,1020000,120),(14,31,'',8500,1,0,0,8500,121);
/*!40000 ALTER TABLE `proforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `id` int(11) NOT NULL,
  `pais_id` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `codigo` varchar(2) NOT NULL,
  `abreviacao` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (175,6,'Bengo','','BO'),(176,6,'Benguela','','BA'),(177,6,'Bie','','BE'),(178,6,'Cabinda','','CA'),(179,6,'Cunene','','CE'),(180,6,'Huambo','','HO'),(181,6,'Huila','','HA'),(182,6,'Kuando-Kubango','','KK'),(183,6,'Kwanza Norte','','KN'),(184,6,'Kwanza Sul','','KS'),(185,6,'Luanda','','LA'),(186,6,'Lunda Norte','','LN'),(187,6,'Lunda Sul','','LS'),(188,6,'Malanje','','ME'),(189,6,'Moxico','','MO'),(190,6,'Namibe','','NE'),(191,6,'Uige','','UE'),(192,6,'Zaire','','ZE'),(193,6,'CUANZA NORTE','KN',NULL);
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo`
--

DROP TABLE IF EXISTS `recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `imposto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfacturapagamento_idx` (`idfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo`
--

LOCK TABLES `recibo` WRITE;
/*!40000 ALTER TABLE `recibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representante`
--

DROP TABLE IF EXISTS `representante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `representante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representante`
--

LOCK TABLES `representante` WRITE;
/*!40000 ALTER TABLE `representante` DISABLE KEYS */;
INSERT INTO `representante` VALUES (1,53),(2,52),(3,98);
/*!40000 ALTER TABLE `representante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salario`
--

DROP TABLE IF EXISTS `salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salario` double DEFAULT NULL,
  `irt` double DEFAULT NULL,
  `ssocial` double DEFAULT NULL,
  `ssocial8` double DEFAULT NULL,
  `subcidio` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `iliquido` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `idmes` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `idoperador` int(11) DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfuncionariosalario_idx` (`idfuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario`
--

LOCK TABLES `salario` WRITE;
/*!40000 ALTER TABLE `salario` DISABLE KEYS */;
INSERT INTO `salario` VALUES (6,100000,10300,3000,8000,0,0,0,100000,86700,11,'2023-12-14',100,101),(7,110000,15080,3300,8800,0,0,0,110000,91620,12,'2023-12-18',100,103),(8,110000,15080,3300,8800,0,0,0,110000,91620,12,'2023-12-18',100,101),(9,180000,30760,5400,14400,0,0,0,180000,143840,12,'2023-12-18',100,100),(10,50000,0,1500,4000,0,0,0,50000,48500,12,'2023-12-18',100,105),(11,200000,33960,6000,16000,0,0,0,200000,160040,12,'2023-12-18',100,104),(13,120000,16380,3600,9600,0,0,0,120000,100020,12,'2023-12-18',100,106),(14,120000,16380,3600,9600,0,0,0,120000,100020,12,'2023-12-18',100,108),(15,100000,10300,3000,8000,0,0,0,100000,86700,12,'2023-12-18',100,109),(16,110000,15080,3300,8800,0,0,0,110000,91620,12,'2023-12-18',100,110),(17,100000,10300,3000,8000,0,0,0,100000,86700,12,'2023-12-18',100,111),(18,100000,10300,3000,8000,0,0,0,100000,86700,12,'2023-12-18',100,112),(19,500000,104357.5,15000,40000,0,0,0,500000,380642.5,12,'2023-12-18',100,113),(21,200000,33960,6000,16000,0,0,0,200000,160040,12,'2023-12-18',100,115),(22,100000,10300,3000,8000,0,0,0,100000,86700,12,'2023-12-18',100,116),(23,50000,0,1500,4000,0,0,0,50000,48500,12,'2023-12-18',100,117),(24,50000,0,1500,4000,0,0,0,50000,48500,12,'2023-12-18',100,118),(25,90000,9300,2700,7200,0,0,0,90000,78000,12,'2023-12-18',100,118),(26,50000,0,1500,4000,0,0,0,50000,48500,12,'2023-12-18',100,119),(27,150000,20280,4500,12000,0,0,0,150000,125220,12,'2023-12-18',100,120),(28,350000,75857.5,10500,28000,0,0,0,350000,263642.5,12,'2023-12-18',100,114);
/*!40000 ALTER TABLE `salario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salario_sub_desc`
--

DROP TABLE IF EXISTS `salario_sub_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salario_sub_desc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubdesc` int(11) DEFAULT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `tipo` enum('subcidio','desconto') DEFAULT NULL,
  `idsalario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idsalariosubdesc_idx` (`idsalario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salario_sub_desc`
--

LOCK TABLES `salario_sub_desc` WRITE;
/*!40000 ALTER TABLE `salario_sub_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `salario_sub_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seqfatura`
--

DROP TABLE IF EXISTS `seqfatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seqfatura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_fatura` int(11) DEFAULT NULL,
  `mecanografico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_seq_fac_idx` (`id_fatura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seqfatura`
--

LOCK TABLES `seqfatura` WRITE;
/*!40000 ALTER TABLE `seqfatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `seqfatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indicador` varchar(45) DEFAULT NULL,
  `caracterizacao` varchar(45) DEFAULT NULL,
  `codigo` varchar(60) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `designacao` varchar(100) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `imposto` double DEFAULT 0,
  `imagem` varchar(45) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  `familia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprodutoservico` int(11) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `qtd` int(11) DEFAULT 0,
  `data` datetime DEFAULT NULL,
  `operacao` enum('entrada','saida') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,0,300000,'2023-03-28 05:03:01','entrada'),(2,2,0,300000,'2023-03-28 05:03:37','entrada'),(3,3,0,300000,'2023-03-28 05:03:28','entrada'),(4,4,0,300000,'2023-03-28 05:03:27','entrada'),(5,5,0,300000,'2023-03-29 04:03:35','entrada'),(6,6,0,300000,'2023-03-29 04:03:45','entrada'),(7,7,0,300000,'2023-03-29 04:03:47','entrada'),(8,8,0,300000,'2023-03-29 05:03:18','entrada'),(9,9,0,300000,'2023-03-29 05:03:36','entrada'),(10,10,0,300000,'2023-03-29 08:03:39','entrada'),(11,11,0,300000,'2023-03-30 00:03:06','entrada'),(12,12,0,300000,'2023-03-30 00:03:08','entrada'),(13,13,0,300000,'2023-03-30 01:03:10','entrada'),(14,14,0,300000,'2023-03-30 01:03:10','entrada'),(15,15,0,300000,'2023-03-30 01:03:00','entrada'),(16,16,0,300000,'2023-03-30 01:03:50','entrada'),(17,17,0,300000,'2023-03-30 01:03:43','entrada'),(18,18,0,300000,'2023-03-30 01:03:18','entrada'),(19,19,0,300000,'2023-03-30 01:03:05','entrada'),(20,20,0,300000,'2023-03-30 01:03:53','entrada'),(21,21,0,300000,'2023-03-30 01:03:57','entrada'),(22,22,0,300000,'2023-03-30 01:03:55','entrada'),(23,23,0,300000,'2023-03-30 01:03:51','entrada'),(24,24,0,300000,'2023-03-30 01:03:58','entrada'),(25,25,0,300000,'2023-03-30 01:03:49','entrada'),(26,26,0,300000,'2023-03-30 01:03:59','entrada'),(27,27,0,300000,'2023-03-30 01:03:17','entrada'),(28,28,0,300000,'2023-03-30 01:03:36','entrada'),(29,29,0,300000,'2023-03-30 01:03:56','entrada'),(30,30,0,300000,'2023-03-30 01:03:01','entrada'),(31,31,0,300000,'2023-03-30 01:03:37','entrada'),(32,32,0,300000,'2023-03-30 01:03:39','entrada'),(33,33,0,300000,'2023-03-30 01:03:15','entrada'),(34,34,0,300000,'2023-03-30 01:03:53','entrada'),(35,35,0,300000,'2023-03-30 01:03:30','entrada'),(36,36,0,300000,'2023-03-30 01:03:36','entrada'),(37,37,0,300000,'2023-03-30 01:03:36','entrada'),(38,38,0,300000,'2023-03-30 01:03:26','entrada'),(39,39,0,300000,'2023-03-30 01:03:29','entrada'),(40,40,0,300000,'2023-03-30 01:03:59','entrada'),(41,41,0,300000,'2023-03-30 01:03:09','entrada'),(42,42,0,300000,'2023-03-30 01:03:43','entrada'),(43,43,0,300000,'2023-03-30 01:03:53','entrada'),(44,44,0,300000,'2023-03-30 02:03:00','entrada'),(45,45,0,300000,'2023-03-30 02:03:15','entrada'),(46,46,0,300000,'2023-03-30 02:03:06','entrada'),(47,47,0,300000,'2023-03-30 02:03:09','entrada'),(48,48,0,300000,'2023-03-30 02:03:58','entrada'),(49,49,0,300000,'2023-04-24 04:04:38','entrada'),(50,50,0,300000,'2023-04-24 05:04:40','entrada'),(51,51,0,300000,'2023-04-24 05:04:31','entrada'),(52,52,0,300000,'2023-04-24 05:04:19','entrada'),(53,53,0,300000,'2023-04-24 05:04:15','entrada'),(54,54,0,1000,'2023-06-22 05:06:16','entrada'),(55,55,0,10,'2023-06-22 05:06:34','entrada'),(56,56,0,0,'2023-06-22 08:06:09','entrada'),(57,57,0,0,'2023-06-22 08:06:39','entrada'),(58,58,0,0,'2023-06-22 08:06:44','entrada'),(59,59,0,0,'2023-06-22 08:06:20','entrada'),(60,60,85000,10,'2023-07-12 04:07:10','entrada'),(61,61,85000,10,'2023-07-12 04:07:21','entrada'),(62,62,1000,100,'2023-07-12 04:07:49','entrada'),(63,63,160000,300000,'2023-08-07 06:08:11','entrada'),(64,64,55000,150000000,'2023-08-10 05:08:17','entrada'),(65,65,0,30000000,'2023-09-07 02:09:02','entrada'),(66,66,0,500000,'2023-09-07 02:09:24','entrada'),(67,67,4,100000,'2023-09-07 02:09:23','entrada'),(68,68,4000000,100000000,'2023-09-07 08:09:50','entrada'),(69,69,4000000,2147483647,'2023-09-07 08:09:02','entrada'),(70,70,1200000,2147483647,'2023-09-27 09:09:20','entrada'),(71,71,18.85,10000,'2023-12-05 10:12:33','entrada'),(72,72,18.85,10000,'2023-12-05 10:12:51','entrada'),(73,73,18.85,10000,'2023-12-05 10:12:15','entrada'),(74,73,18850,10000000,'2023-12-05 10:12:20','entrada'),(75,73,18.85,10000000,'2023-12-05 11:12:25','entrada'),(76,74,3000,0,'2023-12-05 11:12:11','entrada'),(77,75,75000,10000,'2023-12-27 10:12:05','entrada');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcidio_desconto`
--

DROP TABLE IF EXISTS `subcidio_desconto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcidio_desconto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `tipo` enum('subcidio','desconto') DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcidio_desconto`
--

LOCK TABLES `subcidio_desconto` WRITE;
/*!40000 ALTER TABLE `subcidio_desconto` DISABLE KEYS */;
INSERT INTO `subcidio_desconto` VALUES (1,'Falta',2000,'desconto','',NULL);
/*!40000 ALTER TABLE `subcidio_desconto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefa`
--

DROP TABLE IF EXISTS `tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `data1` date DEFAULT NULL,
  `data2` date DEFAULT NULL,
  `idfuncionario` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  `modo` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idfuncionariotarefa_idx` (`idfuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefa`
--

LOCK TABLES `tarefa` WRITE;
/*!40000 ALTER TABLE `tarefa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarefa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoentradasaida`
--

DROP TABLE IF EXISTS `tipoentradasaida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoentradasaida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` text DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `tipo` enum('Entrada','Saida') DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoentradasaida`
--

LOCK TABLES `tipoentradasaida` WRITE;
/*!40000 ALTER TABLE `tipoentradasaida` DISABLE KEYS */;
INSERT INTO `tipoentradasaida` VALUES (1,'ALIMENTAÇAO',NULL,'Saida',''),(2,'DIVERSOS',NULL,'Saida','');
/*!40000 ALTER TABLE `tipoentradasaida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoevento`
--

DROP TABLE IF EXISTS `tipoevento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designacao` varchar(50) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoevento`
--

LOCK TABLES `tipoevento` WRITE;
/*!40000 ALTER TABLE `tipoevento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoevento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilizador`
--

DROP TABLE IF EXISTS `utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilizador` (
  `id` int(11) NOT NULL,
  `idperfil` int(11) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `alter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pc_idx` (`idperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilizador`
--

LOCK TABLES `utilizador` WRITE;
/*!40000 ALTER TABLE `utilizador` DISABLE KEYS */;
INSERT INTO `utilizador` VALUES (34,16,'admin.admin','40bd001563085fc35165329ea1ff5c5ecbdbbeef',1,1),(100,22,'nunes','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',1,1),(102,20,'Cecília ','8c8c298d5c63bd928e661f0a6f38e4cf48600995',1,1),(104,20,'Moisés ','abe6729cf4a6bd2d81ef0bcdcbeb18c9f4396b8c',1,1),(109,16,'Pembele ','03ac2bb08fc9ae8ed9775462eb61c1197fb1529e',1,1);
/*!40000 ALTER TABLE `utilizador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 21:55:52
