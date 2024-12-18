-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_documental
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
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `usuario_nome` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `data` datetime NOT NULL,
  `url` tinytext NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (45,3,'GONÇALVES NHANGA','2024-04-02 12:48:01','https://atomo.co.ao/app/documental/index.php/documento'),(46,3,'GONÇALVES NHANGA','2024-04-02 12:56:35','https://atomo.co.ao/app/documental/index.php/documento/index'),(47,3,'GONÇALVES NHANGA','2024-04-02 16:20:24','https://atomo.co.ao/app/documental/index.php/documento/index'),(48,3,'GONÇALVES NHANGA','2024-04-02 16:20:47','https://atomo.co.ao/app/documental/index.php/documento/view/4'),(49,3,'GONÇALVES NHANGA','2024-04-02 16:20:50','https://atomo.co.ao/app/documental/index.php/documento/index'),(52,4,'NICOLAU ABEL','2024-04-02 16:36:05','https://atomo.co.ao/app/documental/index.php/documento/view/4'),(53,4,'NICOLAU ABEL','2024-04-02 16:38:01','https://atomo.co.ao/app/documental/index.php/documento/index'),(54,4,'NICOLAU ABEL','2024-04-02 16:38:13','https://atomo.co.ao/app/documental/index.php/documento/index/sall'),(55,4,'NICOLAU ABEL','2024-04-02 16:44:12','https://atomo.co.ao/app/documental/index.php/documento/index'),(59,4,'NICOLAU ABEL','2024-04-02 17:00:50','https://atomo.co.ao/app/documental/index.php/documento/index/s6'),(60,4,'NICOLAU ABEL','2024-04-02 17:00:56','https://atomo.co.ao/app/documental/index.php/documento/index/s3'),(61,4,'NICOLAU ABEL','2024-04-02 17:01:49','https://atomo.co.ao/app/documental/index.php/documento/index/s2'),(62,4,'NICOLAU ABEL','2024-04-02 17:01:54','https://atomo.co.ao/app/documental/index.php/documento/index/s3'),(70,4,'NICOLAU ABEL','2024-04-02 17:02:56','https://atomo.co.ao/app/documental/index.php/documento/index'),(79,4,'NICOLAU ABEL','2024-04-02 17:03:12','https://atomo.co.ao/app/documental/index.php/documento/index/sall'),(82,4,'NICOLAU ABEL','2024-04-02 17:05:30','https://atomo.co.ao/app/documental/index.php/documento/view/3'),(83,4,'NICOLAU ABEL','2024-04-02 17:05:37','https://atomo.co.ao/app/documental/index.php/documento/index/sall'),(87,4,'NICOLAU ABEL','2024-04-02 17:08:41','https://atomo.co.ao/app/documental/index.php/documento/index/s6'),(93,4,'NICOLAU ABEL','2024-04-02 17:26:33','https://atomo.co.ao/app/documental/index.php/documento/index'),(94,3,'GONÇALVES NHANGA','2024-04-02 17:26:36','https://atomo.co.ao/app/documental/index.php/documento'),(96,3,'GONÇALVES NHANGA','2024-04-02 17:28:04','https://atomo.co.ao/app/documental/index.php/documento/index'),(98,3,'GONÇALVES NHANGA','2024-04-03 14:18:00','https://atomo.co.ao/app/documental/index.php/documento'),(99,3,'GONÇALVES NHANGA','2024-04-03 14:21:41','https://atomo.co.ao/app/documental/index.php/documento/index'),(100,3,'GONÇALVES NHANGA','2024-04-03 14:34:05','https://atomo.co.ao/app/documental/index.php/documento/add'),(101,3,'GONÇALVES NHANGA','2024-04-03 14:34:07','https://atomo.co.ao/app/documental/index.php/documento/view/10'),(102,3,'GONÇALVES NHANGA','2024-04-03 14:37:27','https://atomo.co.ao/app/documental/index.php/documento/index'),(103,3,'GONÇALVES NHANGA','2024-04-03 14:45:51','https://atomo.co.ao/app/documental/index.php/documento/view/10'),(104,3,'GONÇALVES NHANGA','2024-04-03 14:50:56','https://atomo.co.ao/app/documental/index.php/documento/index'),(105,3,'GONÇALVES NHANGA','2024-04-03 14:51:28','https://atomo.co.ao/app/documental/index.php/documento/view/10'),(106,3,'GONÇALVES NHANGA','2024-04-03 14:51:46','https://atomo.co.ao/app/documental/index.php/documento/update_negado/10'),(107,3,'GONÇALVES NHANGA','2024-04-03 14:51:55','https://atomo.co.ao/app/documental/index.php/documento/view/10'),(108,3,'GONÇALVES NHANGA','2024-04-03 15:00:55','https://atomo.co.ao/app/documental/index.php/documento/index'),(109,3,'GONÇALVES NHANGA','2024-04-03 15:03:34','https://atomo.co.ao/app/documental/index.php/documento/add'),(110,3,'GONÇALVES NHANGA','2024-04-03 15:03:36','https://atomo.co.ao/app/documental/index.php/documento/view/11'),(111,3,'GONÇALVES NHANGA','2024-04-03 15:38:05','https://atomo.co.ao/app/documental/index.php/documento/index'),(112,3,'GONÇALVES NHANGA','2024-04-03 15:53:29','https://atomo.co.ao/app/documental/index.php/documento/add'),(113,3,'GONÇALVES NHANGA','2024-04-03 15:53:31','https://atomo.co.ao/app/documental/index.php/documento/view/12'),(114,4,'NICOLAU ABEL','2024-04-03 15:55:12','https://atomo.co.ao/app/documental/index.php/documento/index'),(115,4,'NICOLAU ABEL','2024-04-03 15:55:39','https://atomo.co.ao/app/documental/index.php/documento/view/12'),(116,4,'NICOLAU ABEL','2024-04-03 15:56:43','https://atomo.co.ao/app/documental/index.php/documento/index'),(117,3,'GONÇALVES NHANGA','2024-04-03 15:57:20','https://atomo.co.ao/app/documental/index.php/documento/index'),(118,4,'NICOLAU ABEL','2024-04-03 16:00:38','https://atomo.co.ao/app/documental/index.php/documento'),(121,4,'NICOLAU ABEL','2024-04-03 16:01:21','https://atomo.co.ao/app/documental/index.php/documento/index'),(123,4,'NICOLAU ABEL','2024-04-03 16:03:37','https://atomo.co.ao/app/documental/index.php/documento/view/12'),(127,4,'NICOLAU ABEL','2024-04-03 16:05:21','https://atomo.co.ao/app/documental/index.php/documento/index'),(128,4,'NICOLAU ABEL','2024-04-03 16:05:24','https://atomo.co.ao/app/documental/index.php/documento/view/12'),(129,4,'NICOLAU ABEL','2024-04-03 16:05:34','https://atomo.co.ao/app/documental/index.php/documento'),(130,4,'NICOLAU ABEL','2024-04-03 16:05:37','https://atomo.co.ao/app/documental/index.php/documento/view/12'),(133,3,'GONÇALVES NHANGA','2024-04-03 16:07:56','https://atomo.co.ao/app/documental/index.php/documento'),(135,3,'GONÇALVES NHANGA','2024-04-05 17:19:40','https://atomo.co.ao/app/documental/index.php/documento'),(136,3,'GONÇALVES NHANGA','2024-04-05 17:20:30','https://atomo.co.ao/app/documental/index.php/documento/index'),(137,3,'GONÇALVES NHANGA','2024-04-05 17:20:41','https://atomo.co.ao/app/documental/index.php/documento/hide/11'),(138,3,'GONÇALVES NHANGA','2024-04-05 17:20:41','https://atomo.co.ao/app/documental/index.php/documento/index'),(139,3,'GONÇALVES NHANGA','2024-04-05 17:20:44','https://atomo.co.ao/app/documental/index.php/documento/hide/12'),(140,3,'GONÇALVES NHANGA','2024-04-05 17:20:44','https://atomo.co.ao/app/documental/index.php/documento/index'),(141,3,'GONÇALVES NHANGA','2024-04-05 17:20:49','https://atomo.co.ao/app/documental/index.php/documento/hide/10'),(142,3,'GONÇALVES NHANGA','2024-04-05 17:20:50','https://atomo.co.ao/app/documental/index.php/documento/index'),(143,3,'GONÇALVES NHANGA','2024-04-05 17:26:17','https://atomo.co.ao/app/documental/index.php/documento/add'),(144,3,'GONÇALVES NHANGA','2024-04-05 17:26:20','https://atomo.co.ao/app/documental/index.php/documento/view/13'),(145,3,'GONÇALVES NHANGA','2024-04-05 17:27:00','https://atomo.co.ao/app/documental/index.php/documento/index'),(175,1,'ADMINISTRADOR','2024-05-22 10:12:49','https://atomo.co.ao/appp/documental/index.php/documento/add'),(176,1,'ADMINISTRADOR','2024-05-22 10:12:51','https://atomo.co.ao/appp/documental/index.php/documento/view/18'),(177,1,'ADMINISTRADOR','2024-05-22 10:13:24','https://atomo.co.ao/appp/documental/index.php/documento/update/18'),(178,1,'ADMINISTRADOR','2024-05-22 10:13:26','https://atomo.co.ao/appp/documental/index.php/documento/view/18'),(179,1,'ADMINISTRADOR','2024-05-22 10:17:19','https://atomo.co.ao/appp/documental/index.php/documento/add'),(180,1,'ADMINISTRADOR','2024-05-22 10:17:21','https://atomo.co.ao/appp/documental/index.php/documento/view/19'),(181,5,'CONSTANTINO ULIMA','2024-05-22 10:32:11','https://atomo.co.ao/appp/documental/index.php/documento'),(182,5,'CONSTANTINO ULIMA','2024-05-22 10:32:17','https://atomo.co.ao/appp/documental/index.php/documento/index'),(183,5,'CONSTANTINO ULIMA','2024-05-22 10:34:56','https://atomo.co.ao/appp/documental/index.php/documento/add'),(184,5,'CONSTANTINO ULIMA','2024-05-22 10:34:58','https://atomo.co.ao/appp/documental/index.php/documento/view/20'),(185,5,'CONSTANTINO ULIMA','2024-05-22 10:35:51','https://atomo.co.ao/appp/documental/index.php/documento/index'),(186,1,'ADMINISTRADOR','2024-05-22 11:03:08','https://atomo.co.ao/appp/documental/index.php/documento'),(187,1,'ADMINISTRADOR','2024-05-22 11:08:33','https://atomo.co.ao/appp/documental/index.php/documento/add'),(188,1,'ADMINISTRADOR','2024-05-22 11:08:35','https://atomo.co.ao/appp/documental/index.php/documento/view/21'),(189,1,'ADMINISTRADOR','2024-05-22 11:10:16','https://atomo.co.ao/appp/documental/index.php/documento/index'),(190,5,'CONSTANTINO ULIMA','2024-05-22 11:10:38','https://atomo.co.ao/appp/documental/index.php/documento'),(191,5,'CONSTANTINO ULIMA','2024-05-22 11:11:19','https://atomo.co.ao/appp/documental/index.php/documento/index'),(192,1,'ADMINISTRADOR','2024-05-22 11:24:38','https://atomo.co.ao/appp/documental/index.php/documento'),(193,1,'ADMINISTRADOR','2024-05-27 13:28:22','https://atomo.co.ao/appp/documental/index.php/documento/index'),(194,1,'ADMINISTRADOR','2024-05-27 13:30:53','https://atomo.co.ao/appp/documental/index.php/documento/add'),(195,1,'ADMINISTRADOR','2024-05-27 13:30:55','https://atomo.co.ao/appp/documental/index.php/documento/view/22'),(196,1,'ADMINISTRADOR','2024-05-27 13:31:35','https://atomo.co.ao/appp/documental/index.php/documento/index'),(197,1,'ADMINISTRADOR','2024-06-13 10:50:57','https://atomo.co.ao/appp/documental/index.php/documento/index'),(198,1,'ADMINISTRADOR','2024-06-17 10:02:27','https://atomo.co.ao/appp/documental/index.php/documento/index'),(199,1,'ADMINISTRADOR','2024-06-17 10:05:15','https://atomo.co.ao/appp/documental/index.php/documento/add'),(200,1,'ADMINISTRADOR','2024-06-17 10:05:18','https://atomo.co.ao/appp/documental/index.php/documento/view/23'),(201,1,'ADMINISTRADOR','2024-06-17 10:07:42','https://atomo.co.ao/appp/documental/index.php/documento/index'),(202,1,'ADMINISTRADOR','2024-06-18 10:54:21','https://atomo.co.ao/appp/documental/index.php/documento/index'),(203,1,'ADMINISTRADOR','2024-06-18 10:55:39','https://atomo.co.ao/appp/documental/index.php/documento/add'),(204,1,'ADMINISTRADOR','2024-06-18 10:55:41','https://atomo.co.ao/appp/documental/index.php/documento/view/24'),(205,1,'ADMINISTRADOR','2024-07-15 09:59:17','https://atomo.co.ao/appp/documental/index.php/documento/index'),(206,1,'ADMINISTRADOR','2024-07-15 10:01:32','https://atomo.co.ao/appp/documental/index.php/documento/add'),(207,1,'ADMINISTRADOR','2024-07-15 10:01:34','https://atomo.co.ao/appp/documental/index.php/documento/view/25'),(208,1,'ADMINISTRADOR','2024-07-15 10:02:03','https://atomo.co.ao/appp/documental/index.php/documento/index'),(209,1,'ADMINISTRADOR','2024-07-15 10:07:58','https://atomo.co.ao/appp/documental/index.php/documento/hide/22'),(210,1,'ADMINISTRADOR','2024-07-15 10:07:59','https://atomo.co.ao/appp/documental/index.php/documento/index'),(211,1,'ADMINISTRADOR','2024-07-15 10:08:20','https://atomo.co.ao/appp/documental/index.php/documento/show/22'),(212,1,'ADMINISTRADOR','2024-07-15 10:08:20','https://atomo.co.ao/appp/documental/index.php/documento/index'),(213,1,'ADMINISTRADOR','2024-07-15 10:08:22','https://atomo.co.ao/appp/documental/index.php/documento/show/4'),(214,1,'ADMINISTRADOR','2024-07-15 10:08:23','https://atomo.co.ao/appp/documental/index.php/documento/index'),(215,1,'ADMINISTRADOR','2024-07-15 10:08:25','https://atomo.co.ao/appp/documental/index.php/documento/show/1'),(216,1,'ADMINISTRADOR','2024-07-15 10:08:26','https://atomo.co.ao/appp/documental/index.php/documento/index');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'DIRETOR'),(2,'COMANDANTE'),(3,'SECRETÁRIO'),(4,'COORDENADOR'),(5,'ASSESSOR');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(45) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 10,
  `user_data` text DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('000c7827346e8b5c16b324c6af4edcb9','35.171.144.152','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1729431045,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('005f162bb4de05b2c5055e7ffd48c0a7','198.235.24.168','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730774296,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('01a8ff5dc112c49c7e8d84e54148db2a','3.249.8.83','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)',1730520204,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('02ae412fa6e4b2749c95f6eb984d7a5b','45.135.232.70','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36',1729688985,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('03ddc278b779b93e331ee21e8f710b0c','3.235.141.3','python-httpx/0.27.2',1727884366,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('043a1386daa8fb3802cc89f8bef88c33','147.185.132.31','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730813837,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('0db032b81df1139470df3b58f28a186f','206.168.34.207','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730149947,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('16df90349349f3174b58973da764e5c8','167.94.145.101','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730679325,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('1d26b9a9254131e9087a193899f9e302','134.209.80.189','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1730114050,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('22d73b7f4b20cd3512214df787cdc0da','205.210.31.22','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1729345844,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('2319cde34657eb47de66e4936cc89a88','167.94.146.57','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1731840723,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('23b754b786a92117e37f1766db8a62f7','35.171.144.152','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1731023333,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('250189233cccc835400dbec0144b92e6','54.88.179.33','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1732094410,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('27541eed72746d1e7532a03374976c60','198.235.24.145','',1728277043,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('2916e0ae4d7089949a3f1f0a51a1ced6','199.45.155.64','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729715770,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('2d21d25ab1cf1cdeadcd5b9fab3acb4b','118.194.249.254','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1728527467,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('2d7760adf2acfe1e3599368fd2b23689','198.235.24.176','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1729017658,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('3452b017859f666ba07239f85084f31b','54.88.179.33','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1728180159,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('3e85a6138ba4b18ebfae8e9911f1ba34','87.236.176.46','Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)',1730144415,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('403508f8e3b47ad9ffe569e1ad5f9f15','35.207.194.91','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrom',1729180452,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('46ac0b0b7f6ad0d30cd08fcf4c1f7095','162.142.125.47','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729871982,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('4816f0e74271895a9f37ecd4faa03ec8','198.235.24.31','',1728838461,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('482527f3a45b8ba823ddbe7db6394b31','104.166.80.226','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1727744573,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('4e79b5fcb5d6a4fccc21e58f281f2d7a','159.223.25.75','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',1731314106,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('51251b1b20aa9767ed16323e6c6ec78b','165.154.104.103','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1727919666,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('55d431b7ae6132b562b5fbdbd50764af','64.227.33.191','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1727746929,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('586d840c1a0b1ddb605c6200cbfcfb68','118.194.249.8','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1727919286,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('5a8c0c0d27f6f00f40dcee3e47930f31','205.169.39.11','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36',1729123219,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('5b8a692e61fec96e0efba89ee862cbc3','147.185.132.109','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1728389603,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('5f885c3d5a64abceb186ab9d07f0e09a','104.166.80.211','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1729909035,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('6315e546bc53e7ee45f0db84ec460030','118.194.249.254','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1728527373,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('6f76d5e2b832398e0e68719711960eb3','87.236.176.72','Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)',1730105207,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('723ef26a6f25778e6f46d01c3154f012','205.210.31.205','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1728659409,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('7379a3ea945ea5a140e33e46a2b1bfa8','35.91.52.126','Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Mobile Saf',1727841833,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('74c0394e3db2ce4642492b933d7871c5','35.238.244.11','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36',1728996756,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('795e03fed672bc34734afec15431a005','64.227.33.191','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1727746928,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('7b3dc707fd15708c6699c1655c2fa1e2','162.142.125.221','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730736819,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('7de121dd7471399ca15a09ef4b417de2','199.45.154.153','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1731349432,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('7edf60eb77fae5fe35e01ef74ee530a5','35.171.144.152','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1731023332,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('87488910f2cb6b602a72e6295adab102','54.88.179.33','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1732094411,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('889245a3cfe4fd8cdaa06394c2ec3bca','199.45.154.138','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729448949,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('88db19235077c37f366f44b1239c471f','199.45.155.70','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730676911,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('89d605afef6a6bd9dd4a2c5524b7329e','205.210.31.211','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1728651708,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('8de8f0c5af8fca59aaf417e3e365330a','104.166.80.68','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1728524783,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('8e9273253ad738ec26391f63f511bb0d','118.194.249.8','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1727919332,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('92889bda097292a81c5d797aae21a976','206.168.34.32','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730739380,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('9297ca5b32278b194e4af895838cacff','167.94.146.61','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729871259,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('93831578f11205e7941378f6aad718eb','104.166.80.141','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1728178175,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('93ea38b366b9cf128ac7d046a3ded169','205.210.31.180','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1728372521,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('94291e06f214cff689a72d1c0ed7036e','198.235.24.59','',1729321285,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('9523d3502891cc4cc3fc56f6e2ab41e2','165.154.104.103','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1727919668,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('95eff72490a4c35dc79c16e16fe77381','159.223.25.75','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',1731314106,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('967678572f28df9b61413c298ed1a44b','35.171.144.152','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1728180159,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('9734e96b087f39a8fc6fd597c13f02d2','34.245.64.127','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)',1730867514,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('97e1bcfe149b0f6e336b601554953b06','3.253.194.75','Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)',1728290946,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('9ff5caf8e4de84e20568b2a01b3af7a9','147.185.132.111','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730544775,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('a4274d5a3c1b7f6af7f2d7b8eb2298e0','159.203.10.76','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1727691661,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('a699f9d44df983fcfd9b84960797327a','91.92.248.147','Mozilla/5.0 (Linux; U; Android 4.1.2; en-us; LG-P870/P87020d Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Versio',1727734677,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('aa247b22f37f0b422633df2a8eefc91f','134.209.43.6','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1728884800,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('abc64118ef5785e745e2568cbe98b823','35.171.144.152','Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.3',1729431046,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('ad93c475617f1d50e02d18ab2a83ddb5','104.166.80.113','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1727918551,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('b19e83475f5be76772607bcde56a180e','198.235.24.244','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1729331444,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('b498455cc22bd72e5c7b54bfeaadb020','167.94.146.48','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1728073657,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('b852cfd39225e6aaef51f26712054ae1','147.185.132.70','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730415103,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('ba5740ecd30d5d86d2b953604687ad90','147.185.132.40','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730245271,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('bf807ee03d9ba43d014320ee6f7afa2f','205.210.31.42','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1730211457,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('c2bd2d3989a14bbab7eaa742ed87b339','45.139.104.148','Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0',1727871492,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('c7f24c6a580f81263a52aaad1d5d5972','199.45.154.158','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730741831,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('c9c860c74b4c52fc115b1494db8ac486','198.235.24.51','',1729442961,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('cd077f18be7c9cb5f910d26bc603c4c1','198.235.24.31','',1728173862,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('cfbab603882f20f2664c0c690ced1dae','205.210.31.137','',1730604133,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('d371cd1ff9a8f0a763309057d4f8871b','134.209.80.189','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1730114050,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('d53aeb9c90f65f65ea010581ca04e02d','206.168.34.119','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1730149013,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('d6baefcd6fed7720c3889a35fd9e5a4e','206.168.34.37','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1731348462,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('d74ff17ac79834e893f442de9196d34e','35.207.194.91','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrom',1729180459,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('da9616affdfa1286e4ca1f44412c1559','118.26.105.52','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1730200057,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('e37c62f29180135ca635c0dc2730f70c','101.36.107.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1731909113,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('e4650cfdc2eed2269beb33406e774696','135.148.100.196','',1730022823,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('e77c38d4173e0ed6111a0bc9cd6b3071','147.185.132.42','Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customer',1729023009,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('e938cfc80b8064ddb013732510de6b05','205.210.31.143','',1728739976,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('e9acb20631cac6b7d583139d564381d2','104.166.80.8','Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0',1727832867,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('eb6cc42d417398f2f2e478bd053706be','118.26.105.52','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1730200097,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('ed98f90c974883056c289cd8f4df5100','34.46.239.174','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36',1731788299,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('f334014014f106adca73d58f5a15c154','167.94.145.106','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729962192,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('f692c285479a0f04d968bc3d92c5de76','134.209.43.6','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1728884798,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('f8050329d741aee92fa6a5531038ca6a','101.36.107.243','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Ed',1731909124,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('f856d38713bb85c0467c974677e6a489','198.235.24.178','',1730529618,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('fae6b0ea9e96aebf3cd1bf871ff8cb9c','159.203.10.76','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36',1727691659,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('fb56fd00688d1f2ac0de64ca92b570b2','45.139.104.148','Mozilla/5.0 (Linux; U; Android 4.4.2; en-US; HM NOTE 1W Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0',1727871493,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('fe154bd52c181ebfcb805a7d216d32f1','167.94.145.105','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1729448949,'a:1:{s:9:\"user_data\";s:0:\"\";}'),('fed238699b25296e54ae8a179f4c0ad5','199.45.154.126','Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)',1731817209,'a:1:{s:9:\"user_data\";s:0:\"\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `texto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,18,1,'2024-05-22 10:14:09','aaaaaaaaaaaaaa');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `sexo` varchar(10) NOT NULL DEFAULT 'M',
  `cargo` int(11) NOT NULL DEFAULT 1,
  `setor` int(11) NOT NULL DEFAULT 1,
  `fone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `mail1` varchar(60) DEFAULT NULL,
  `mail2` varchar(60) DEFAULT NULL,
  `assinatura` text NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,'RAIMUNDO SILVA','M',1,2,'(85)3100.0000','','','RAIMUNDO.SILVA@TESTE.COM.BR','','<strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL','A'),(2,'FRANCISCO SOUSA','M',4,3,'(85)0000.0000','','','FRANCISCO.SOUSA@TESTE.COM.BR','','FRANCISCO SOUSA<br />COORDENADOR FINANCEIRO','A'),(3,'ANA MARIA','M',5,4,'(85)0000.0000','','','ANA.MARIA@TESTE.COM.BR','','ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA','A'),(4,'GONÇALVES NHANGA','M',1,2,'(22)2222.2222','(24)9248.1572','(22)2222.2222','GONCALVES.NHANGA@ATOMO.co.ao','goncalves.nhanga09@gmail.com','<span style=\"text-decoration: underline;\"><em><strong>Gon&ccedil;alves Nhanga Canguia</strong></em></span>','A'),(5,'NICOLAU ABEL','M',3,6,'(33)3456.6543','(24)9248.1572','(22)2222.2222','nicolau.abel@atomo.co.ao','nicolauabel.consult@gmail.com','Nicolau Abel','A'),(6,'SALVES NHANGA','M',1,2,'(22)2222.2222','(24)9248.1572','(22)2222.2222','digitalbusinessalves@gmail.com','digitalbusinessalves@gmail.com','Dom Salves&nbsp;','A'),(7,'CONSTANTINO ULIMA','M',1,2,'(11)1111.1111','','','geral@atomo.co.ao','geral@atomo.co.ao','Ulima','A');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `despacho_head`
--

DROP TABLE IF EXISTS `despacho_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `despacho_head` (
  `despacho_id` int(11) NOT NULL,
  `num_processo` varchar(100) NOT NULL,
  `interessado` varchar(100) NOT NULL,
  `de` varchar(100) NOT NULL,
  `para` varchar(200) NOT NULL,
  PRIMARY KEY (`despacho_id`),
  KEY `despacho_id_idx` (`despacho_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `despacho_head`
--

LOCK TABLES `despacho_head` WRITE;
/*!40000 ALTER TABLE `despacho_head` DISABLE KEYS */;
INSERT INTO `despacho_head` VALUES (2,'0','0','0','ASSJUR'),(8,'0','0','0','comunique a todos&nbsp;'),(11,'0','0','0','Nicolau Abel'),(12,'0','0','0','Nicolau Abel'),(18,'0','0','0','ddd'),(20,'0','0','0','aaaa'),(21,'0','0','0','sssssssssssss');
/*!40000 ALTER TABLE `despacho_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT 1,
  `setor` int(11) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `data_criacao` date DEFAULT NULL,
  `destinatario` int(11) DEFAULT NULL,
  `assunto` varchar(200) DEFAULT NULL,
  `anexos` varchar(200) DEFAULT NULL,
  `referencia` varchar(200) DEFAULT NULL,
  `redacao` longtext DEFAULT NULL,
  `remetente` int(11) DEFAULT NULL,
  `para` varchar(300) NOT NULL,
  `dono` varchar(100) NOT NULL,
  `dono_cpf` varchar(11) NOT NULL,
  `cadeado` char(1) NOT NULL DEFAULT 'S',
  `oculto` char(1) NOT NULL DEFAULT 'N',
  `cancelado` char(1) NOT NULL DEFAULT 'N',
  `carimbo` char(1) DEFAULT 'N',
  `carimbo_confidencial` char(1) DEFAULT NULL,
  `carimbo_urgente` char(1) DEFAULT NULL,
  `carimbo_via` char(1) DEFAULT NULL,
  `objetivo` text DEFAULT NULL,
  `documentacao` text DEFAULT NULL,
  `conclusao` text DEFAULT NULL,
  `processo` varchar(100) DEFAULT NULL,
  `interessado` varchar(100) DEFAULT NULL,
  `analise` text DEFAULT NULL,
  `atomoadm` text DEFAULT NULL,
  `nicolau` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,2,1,2,NULL,'2016-09-14','2016-09-14',NULL,'Exemplo de Comunicação Interna',NULL,'Outro documento qualquer','<p>Prezado Sr.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien arcu. Aliquam erat volutpat. Nullam mi justo, rutrum vitae aliquam a, tempus faucibus purus.</p>\n\n<p>Nullam molestie purus ex, id commodo nisi aliquet vitae. Nam lacinia est quis libero euismod varius. Praesent ullamcorper mi et porta tempus.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>',1,'Ao Sr.<br />\n<strong>Francisco Sousa</strong><br />\nCoordenador Financeiro<br />\n&nbsp;','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',''),(2,3,1,2,NULL,'2016-09-14','2016-09-14',NULL,'Exemplo de Despacho',NULL,'0','<p>&nbsp;</p>\n\n<p>1. Recebi hoje;</p>\n\n<p>2. Trata o presesente processo da solicita&ccedil;&atilde; do Sr. Jos&eacute; da Silva;</p>\n\n<p>3. Encaminhe-se &agrave; Assessoria Jur&iacute;dica para elabora&ccedil;&atilde;o de parecer.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>',1,'ASSJUR','REDATOR ','22222222222','S','N','N','0',NULL,'S',NULL,'0','0','0','01234567/2013','José da Silva','0','',''),(3,1,1,2,NULL,'2016-09-14','2016-09-14',NULL,'Exemplo de Ofício',NULL,'Despacho Nº 1 - DIR/ORG','<p>Prezado Jos&eacute; da Silva,</p>\n\n<p>Etiam hendrerit, nibh non tincidunt malesuada, elit tortor luctus tellus, sed tempus tellus nibh sit amet nulla. Vestibulum quis velit molestie, sodales mi id, elementum turpis.</p>\n\n<p>Donec ullamcorper ornare urna, quis efficitur ipsum vestibulum vel. Nullam et eros vitae lectus cursus placerat sed vel odio. Suspendisse fringilla ac tellus vitae ultrices. Integer commodo nisi non velit egestas mattis. Aliquam erat volutpat.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>',1,'Ao Sr.<br />\nJos&eacute; da Silva','REDATOR ','22222222222','S','N','N','0',NULL,NULL,NULL,'0','0','0','0','0','0','',''),(4,2,1,2,NULL,'2024-03-22','2024-03-22',NULL,'abc',NULL,'123','<p>jhjkhbhgih</p>',1,'fgfkhgnlyhhoohn','ADMINISTRADOR ','11111111111','S','N','N','0','N','N','S',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(5,1,1,4,NULL,'2024-03-22','2024-03-22',NULL,'abc',NULL,'123khg','<p>gjhubgkgh</p>',3,'hjvgkgkjbh','ADMINISTRADOR ','11111111111','S','S','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',''),(6,2,1,4,NULL,'2024-03-22','2024-03-22',NULL,'abc',',2,','kkk','<p>jhbvjkhkljo&ccedil;j&ccedil;,ljjk</p>',3,'bmjkhnmnjn','ADMINISTRADOR ','11111111111','S','S','N','S','S','S','S',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(7,2,2,4,NULL,'2024-03-22','2024-03-22',NULL,'Greve dos funciónarios',',2,','123khg','<p>fghdjgjkdfjvbkjmnkcjn</p>',3,'Ana Maria','ADMINISTRADOR ','11111111111','S','S','N','S','S','S','S',NULL,NULL,NULL,NULL,NULL,NULL,'',''),(8,3,1,4,NULL,'2024-04-02','2024-04-02',NULL,'campanha de venda',',2,',NULL,'<p>esta campanha ser&aacute; de porta em&nbsp;<span style=\"font-size:20px\">porta</span></p>',3,'comunique a todos&nbsp;','ADMINISTRADOR ','11111111111','S','S','N','S','S','S',NULL,NULL,NULL,NULL,'1','Anaa Maria',NULL,'',''),(9,1,1,3,NULL,'2024-04-02','2024-04-02',NULL,'campanha de venda',',5,','n-1','<p>Equipe comercial</p>',2,'Ana Maria','ADMINISTRADOR ','11111111111','S','S','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',''),(10,2,1,6,NULL,'2024-04-03','2024-04-03',NULL,'Despacho de Salário',',10,','1','<p>Despacha o sal&aacute;rio do pessoal. mas no Gon&ccedil;alves desconte as faltas.</p>',5,'Nicolau Abel','GONÇALVES NHANGA ','55555555555','S','S','N','0','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,1,6,NULL,'2024-04-03','2024-04-03',NULL,'Sobre a paz',',12,',NULL,'<p>A paz deve ser um estado de harmonia, equil&iacute;brio e tranquilidade, tanto a n&iacute;vel individual quanto coletivo. Deve promover o respeito m&uacute;tuo, a compreens&atilde;o, a coopera&ccedil;&atilde;o e a resolu&ccedil;&atilde;o pac&iacute;fica de conflitos. Al&eacute;m disso, a paz deve ser inclusiva, abrangendo todas as pessoas, independentemente de sua origem, ra&ccedil;a, religi&atilde;o ou cren&ccedil;as, e deve promover a justi&ccedil;a social, a igualdade e os direitos humanos. Em resumo, a paz deve ser um objetivo universal que busca criar um mundo mais seguro, justo e sustent&aacute;vel para todos.</p>',5,'Nicolau Abel','GONÇALVES NHANGA ','55555555555','S','S','N','0',NULL,NULL,NULL,NULL,NULL,NULL,'1','Gonçalves Nhanga',NULL,NULL,NULL),(12,3,2,6,NULL,'2024-04-03','2024-04-03',NULL,'aviso',NULL,NULL,'<p>A paz deve ser um estado de harmonia, equil&iacute;brio e tranquilidade, tanto a n&iacute;vel individual quanto coletivo. Deve promover o respeito m&uacute;tuo, a compreens&atilde;o, a coopera&ccedil;&atilde;o e a resolu&ccedil;&atilde;o pac&iacute;fica de conflitos. Al&eacute;m disso, a paz deve ser inclusiva, abrangendo todas as pessoas, independentemente de sua origem, ra&ccedil;a, religi&atilde;o ou cren&ccedil;as, e deve promover a justi&ccedil;a social, a igualdade e os direitos humanos. Em resumo, a paz deve ser um objetivo universal que busca criar um mundo mais seguro, justo e sustent&aacute;vel para todos.</p>',5,'Nicolau Abel','GONÇALVES NHANGA ','55555555555','S','S','N','0',NULL,'S',NULL,NULL,NULL,'4','3','Gonçalves Nhanga',NULL,NULL,NULL),(13,4,1,6,NULL,'2024-04-05','2024-04-05',NULL,'7634trey78u34e',',10,14,12,','0009','<p>dghxnm,</p>',5,'Nicolau Abel','GONÇALVES NHANGA ','55555555555','S','N','N','0','S',NULL,NULL,'<p>hdbsj,m</p>','<p>gijsdk</p>','<p>veio</p>','55','Nicolau Abel','<p>bvnm,</p>','<p>aomo</p>',NULL),(14,1,2,4,NULL,'2024-04-08','2024-04-08',NULL,'abc',',7,','123','<p>kggbjkgggggggggggggggggggggggggg</p>',3,'1235666','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,'0','0','0','0','0','0','0','0'),(15,1,3,4,NULL,'2024-04-08','2024-04-08',NULL,'Greve dos funciónarios',NULL,'123','<p>9ju9ji</p>',3,'gholnghghyh','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,1,4,4,NULL,'2024-04-08','2024-04-08',NULL,'SOLICITAÇÃO',',2,','1010','<p>.........</p>',3,'GON&Ccedil;ALVES','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,1,5,4,NULL,'2024-04-08','2024-04-08',NULL,'Oficio',',2,','123','<p>coropo da carta</p>',3,'Antonio','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,'S','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,3,2,4,NULL,'2024-05-22','2024-05-22',NULL,'abc',',2,','0','<p>rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr</p>',3,'ddd','ADMINISTRADOR ','11111111111','S','N','N','N',NULL,'S','S','0','0','0','090','Ulima','0','0','0'),(19,1,6,4,NULL,'2024-05-22','2024-05-22',NULL,'SOLICITAÇÃO',',5,','1010','<p>eeeeeeeeeeeeeee</p>',3,'aaaaaaaaaaaaaaaaaaaa','ADMINISTRADOR ','11111111111','S','N','N','0','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,3,3,4,NULL,'2024-05-22','2024-05-22',NULL,'SOLICITAÇÃO',',2,',NULL,'<p>bbbbbbbbbbb</p>',3,'aaaa','CONSTANTINO ULIMA ','12458663589','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,'090','Ulima',NULL,NULL,NULL),(21,3,1,2,NULL,'2024-05-22','2024-05-22',NULL,'abc',',2,',NULL,'<p>aaaaaaaaaaaaaaa</p>',7,'sssssssssssss','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,'011','Ulima',NULL,NULL,NULL),(22,1,1,2,NULL,'2024-05-27','2024-05-27',NULL,'Reclagem',NULL,'123','<p>hfdjygkhljli</p>',7,'fjgfkgkh','ADMINISTRADOR ','11111111111','S','N','N','0','S','S','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,1,7,4,NULL,'2024-06-17','2024-06-17',NULL,'Oficio',',2,','12345','<p>hjkjhjkkjkk</p>',3,'hkdjfjf','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,'S','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,8,4,NULL,'2024-06-18','2024-06-18',NULL,'Oficio',',2,','123344','<p>gfdghfjhfdfdg</p>',3,'dfdhghgfgjfjjjj','ADMINISTRADOR ','11111111111','S','N','N','0','S','S','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,9,4,NULL,'2024-07-15','2024-07-15',NULL,'Parceria',NULL,'564','<p>saves</p>',3,'Este documento &eacute; para a empresa executivo','ADMINISTRADOR ','11111111111','S','N','N','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) NOT NULL,
  `data` datetime DEFAULT NULL,
  `texto` longtext DEFAULT NULL,
  PRIMARY KEY (`id_historico`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
INSERT INTO `historico` VALUES (1,1,'2016-09-14 09:17:33','<div>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>1/2016 - DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 14 de setembro de 2016.</div>\n<div>Ao Sr.<br />\n<strong>Francisco Sousa</strong><br />\nCoordenador Financeiro<br />\n&nbsp;</div>\n<div><strong>Assunto:</strong> Exemplo de Comunicação Interna</div>\n<div>Outro documento qualquer</div>\n<div></div>\n<div style=\"text-align: justify;\"><br /><p>Prezado Sr.</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nec sapien arcu. Aliquam erat volutpat. Nullam mi justo, rutrum vitae aliquam a, tempus faucibus purus.</p>\n\n<p>Nullam molestie purus ex, id commodo nisi aliquet vitae. Nam lacinia est quis libero euismod varius. Praesent ullamcorper mi et porta tempus.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p></div>\n<div style=\"text-align: center;\"><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(2,2,'2016-09-14 09:20:48','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2016 - DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 01234567/2013</td>\n<td><strong>De:</strong> DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> José da Silva</td>\n<td><strong>Para:</strong> ASSJUR</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> Exemplo de Despacho</td>\n<td><strong>Data:</strong> 14 de setembro de 2016</td>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>1. Recebi hoje;</p>\n\n<p>2. Trata o presesente processo da solicita&ccedil;&atilde; do Sr. Jos&eacute; da Silva;</p>\n\n<p>3. Encaminhe-se &agrave; Assessoria Jur&iacute;dica para elabora&ccedil;&atilde;o de parecer.</p>\n\n<p>&nbsp;</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>\n</div>'),(3,2,'2016-09-14 09:21:01','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2016 - DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 01234567/2013</td>\n<td><strong>De:</strong> DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> José da Silva</td>\n<td><strong>Para:</strong> ASSJUR</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> Exemplo de Despacho</td>\n<td><strong>Data:</strong> 14 de setembro de 2016</td>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>&nbsp;</p>\n\n<p>1. Recebi hoje;</p>\n\n<p>2. Trata o presesente processo da solicita&ccedil;&atilde; do Sr. Jos&eacute; da Silva;</p>\n\n<p>3. Encaminhe-se &agrave; Assessoria Jur&iacute;dica para elabora&ccedil;&atilde;o de parecer.</p>\n\n<p>&nbsp;</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>\n</div>'),(4,2,'2016-09-14 09:21:16','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2016 - DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 01234567/2013</td>\n<td><strong>De:</strong> DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> José da Silva</td>\n<td><strong>Para:</strong> ASSJUR</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> Exemplo de Despacho</td>\n<td><strong>Data:</strong> 14 de setembro de 2016</td>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>&nbsp;</p>\n\n<p>1. Recebi hoje;</p>\n\n<p>2. Trata o presesente processo da solicita&ccedil;&atilde; do Sr. Jos&eacute; da Silva;</p>\n\n<p>3. Encaminhe-se &agrave; Assessoria Jur&iacute;dica para elabora&ccedil;&atilde;o de parecer.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>\n</div>'),(5,3,'2016-09-14 09:23:55','<div>Of&iacute;cio N&ordm; <strong>1/2016-DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 14 de setembro de 2016.</div>\n<div>Ao Sr.<br />\nJos&eacute; da Silva</div>\n<div><strong>Assunto:</strong> Solicitação</div>\n<div><strong>Refer&ecirc;ncia:</strong> Despacho Nº 1 - DIR/ORG</div>\n<div style=\"text-align: justify;\"><br /><p>Prezado senhor,</p>\n\n<p>Etiam hendrerit, nibh non tincidunt malesuada, elit tortor luctus tellus, sed tempus tellus nibh sit amet nulla. Vestibulum quis velit molestie, sodales mi id, elementum turpis.</p>\n\n<p>Donec ullamcorper ornare urna, quis efficitur ipsum vestibulum vel. Nullam et eros vitae lectus cursus placerat sed vel odio. Suspendisse fringilla ac tellus vitae ultrices. Integer commodo nisi non velit egestas mattis. Aliquam erat volutpat.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(6,3,'2016-09-14 09:24:12','<div>Of&iacute;cio N&ordm; <strong>1/2016-DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 14 de setembro de 2016.</div>\n<div>Ao Sr.<br />\nJos&eacute; da Silva</div>\n<div><strong>Assunto:</strong> Solicitação</div>\n<div><strong>Refer&ecirc;ncia:</strong> Despacho Nº 1 - DIR/ORG</div>\n<div style=\"text-align: justify;\"><br /><p>Prezado senhor,</p>\n\n<p>Etiam hendrerit, nibh non tincidunt malesuada, elit tortor luctus tellus, sed tempus tellus nibh sit amet nulla. Vestibulum quis velit molestie, sodales mi id, elementum turpis.</p>\n\n<p>Donec ullamcorper ornare urna, quis efficitur ipsum vestibulum vel. Nullam et eros vitae lectus cursus placerat sed vel odio. Suspendisse fringilla ac tellus vitae ultrices. Integer commodo nisi non velit egestas mattis. Aliquam erat volutpat.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(7,3,'2016-09-14 09:24:32','<div>Of&iacute;cio N&ordm; <strong>1/2016-DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 14 de setembro de 2016.</div>\n<div>Ao Sr.<br />\nJos&eacute; da Silva</div>\n<div><strong>Assunto:</strong> Exemplo de Ofício</div>\n<div><strong>Refer&ecirc;ncia:</strong> Despacho Nº 1 - DIR/ORG</div>\n<div style=\"text-align: justify;\"><br /><p>Prezado senhor,</p>\n\n<p>Etiam hendrerit, nibh non tincidunt malesuada, elit tortor luctus tellus, sed tempus tellus nibh sit amet nulla. Vestibulum quis velit molestie, sodales mi id, elementum turpis.</p>\n\n<p>Donec ullamcorper ornare urna, quis efficitur ipsum vestibulum vel. Nullam et eros vitae lectus cursus placerat sed vel odio. Suspendisse fringilla ac tellus vitae ultrices. Integer commodo nisi non velit egestas mattis. Aliquam erat volutpat.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(8,3,'2016-09-14 09:24:51','<div>Of&iacute;cio N&ordm; <strong>1/2016-DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 14 de setembro de 2016.</div>\n<div>Ao Sr.<br />\nJos&eacute; da Silva</div>\n<div><strong>Assunto:</strong> Exemplo de Ofício</div>\n<div><strong>Refer&ecirc;ncia:</strong> Despacho Nº 1 - DIR/ORG</div>\n<div style=\"text-align: justify;\"><br /><p>Prezado Jos&eacute; da Silva,</p>\n\n<p>Etiam hendrerit, nibh non tincidunt malesuada, elit tortor luctus tellus, sed tempus tellus nibh sit amet nulla. Vestibulum quis velit molestie, sodales mi id, elementum turpis.</p>\n\n<p>Donec ullamcorper ornare urna, quis efficitur ipsum vestibulum vel. Nullam et eros vitae lectus cursus placerat sed vel odio. Suspendisse fringilla ac tellus vitae ultrices. Integer commodo nisi non velit egestas mattis. Aliquam erat volutpat.</p>\n\n<p>Atenciosamente,</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(9,4,'2024-03-22 11:30:46','<div>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>1/2024 - DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 22 de março de 2024.</div>\n<div>fgfkhgnlyhhoohn</div>\n<div><strong>Assunto:</strong> abc</div>\n<div>123</div>\n<div></div>\n<div style=\"text-align: justify;\"><br /><p>jhjkhbhgih</p></div>\n<div style=\"text-align: center;\"><div style=\"line-height: 125%;\"><strong>RAIMUNDO SILVA</strong><br />DIRETOR GERAL</div></div>'),(10,5,'2024-03-22 11:34:09','<div>Of&iacute;cio N&ordm; <strong>1/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 22 de março de 2024.</div>\n<div>hjvgkgkjbh</div>\n<div><strong>Assunto:</strong> abc</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123khg</div>\n<div style=\"text-align: justify;\"><br /><p>gjhubgkgh</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(11,6,'2024-03-22 11:37:22','<div>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>1/2024 - ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 22 de março de 2024.</div>\n<div>bmjkhnmnjn</div>\n<div><strong>Assunto:</strong> abc</div>\n<div>kkk</div>\n<div>CARTA</div>\n<div style=\"text-align: justify;\"><br /><p>jhbvjkhkljo&ccedil;j&ccedil;,ljjk</p></div>\n<div style=\"text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(12,7,'2024-03-22 12:28:15','<div>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>2/2024 - ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 22 de março de 2024.</div>\n<div>Ana Maria</div>\n<div><strong>Assunto:</strong> Greve dos funciónarios</div>\n<div>123khg</div>\n<div>CARTA</div>\n<div style=\"text-align: justify;\"><br /><p>fghdjgjkdfjvbkjmnkcjn</p></div>\n<div style=\"text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(13,8,'2024-04-02 08:31:42','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2024 - ASSJUR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 1</td>\n<td><strong>De:</strong> ASSJUR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Anaa Maria</td>\n<td><strong>Para:</strong> comunique a todos&nbsp;</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> campanha de venda</td>\n<td><strong>Data:</strong> 02 de abril de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\">CARTA</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>esta campanha ser&aacute; de porta em&nbsp;<span style=\"font-size:20px\">porta</span></p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>\n</div>'),(14,9,'2024-04-02 08:57:36','<div>Of&iacute;cio N&ordm; <strong>1/2024-COFIN/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 02 de abril de 2024.</div>\n<div>Ana Maria</div>\n<div><strong>Assunto:</strong> campanha de venda</div>\n<div><strong>Refer&ecirc;ncia:</strong> n-1</div>\n<div style=\"text-align: justify;\"><br /><p>Equipe comercial</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">FRANCISCO SOUSA<br />COORDENADOR FINANCEIRO</div></div>'),(15,10,'2024-04-03 14:34:05','<div>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>1/2024 - N/G/DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 03 de abril de 2024.</div>\n<div>Nicolau Abel</div>\n<div><strong>Assunto:</strong> Despacho de Salário</div>\n<div>1</div>\n<div>CARTA DE DESPACHO DE SALÁRIO</div>\n<div style=\"text-align: justify;\"><br /><p>Despacha o sal&aacute;rio do pessoal. mas no Gon&ccedil;alves desconte as faltas.</p></div>\n<div style=\"text-align: center;\"><div style=\"line-height: 125%;\">Nicolau Abel</div></div>'),(16,11,'2024-04-03 15:03:34','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2024 - N/G/DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 1</td>\n<td><strong>De:</strong> N/G/DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Gonçalves Nhanga</td>\n<td><strong>Para:</strong> Nicolau Abel</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> Sobre a paz</td>\n<td><strong>Data:</strong> 03 de abril de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\">LISTA DO PESSOAL</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>A paz deve ser um estado de harmonia, equil&iacute;brio e tranquilidade, tanto a n&iacute;vel individual quanto coletivo. Deve promover o respeito m&uacute;tuo, a compreens&atilde;o, a coopera&ccedil;&atilde;o e a resolu&ccedil;&atilde;o pac&iacute;fica de conflitos. Al&eacute;m disso, a paz deve ser inclusiva, abrangendo todas as pessoas, independentemente de sua origem, ra&ccedil;a, religi&atilde;o ou cren&ccedil;as, e deve promover a justi&ccedil;a social, a igualdade e os direitos humanos. Em resumo, a paz deve ser um objetivo universal que busca criar um mundo mais seguro, justo e sustent&aacute;vel para todos.</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">Nicolau Abel</div></div>\n</div>'),(17,12,'2024-04-03 15:53:29','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 2/2024 - N/G/DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 3</td>\n<td><strong>De:</strong> N/G/DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Gonçalves Nhanga</td>\n<td><strong>Para:</strong> Nicolau Abel</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> aviso</td>\n<td><strong>Data:</strong> 03 de abril de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>A paz deve ser um estado de harmonia, equil&iacute;brio e tranquilidade, tanto a n&iacute;vel individual quanto coletivo. Deve promover o respeito m&uacute;tuo, a compreens&atilde;o, a coopera&ccedil;&atilde;o e a resolu&ccedil;&atilde;o pac&iacute;fica de conflitos. Al&eacute;m disso, a paz deve ser inclusiva, abrangendo todas as pessoas, independentemente de sua origem, ra&ccedil;a, religi&atilde;o ou cren&ccedil;as, e deve promover a justi&ccedil;a social, a igualdade e os direitos humanos. Em resumo, a paz deve ser um objetivo universal que busca criar um mundo mais seguro, justo e sustent&aacute;vel para todos.</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">Nicolau Abel</div></div>\n</div>'),(18,13,'2024-04-05 17:26:17','<div>7634trey78u34e</div>'),(19,14,'2024-04-08 10:48:49','<div>Of&iacute;cio N&ordm; <strong>2/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 08 de abril de 2024.</div>\n<div>1235666</div>\n<div><strong>Assunto:</strong> abc</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123</div>\n<div style=\"text-align: justify;\"><br /><p>kggbjkgggggggggggggggggggggggggg</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(20,14,'2024-04-08 10:50:47','<div>Of&iacute;cio N&ordm; <strong>2/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 08 de abril de 2024.</div>\n<div>1235666</div>\n<div><strong>Assunto:</strong> abc</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123</div>\n<div style=\"text-align: justify;\"><br /><p>kggbjkgggggggggggggggggggggggggg</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(21,15,'2024-04-08 12:06:35','<div>Of&iacute;cio N&ordm; <strong>3/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 08 de abril de 2024.</div>\n<div>gholnghghyh</div>\n<div><strong>Assunto:</strong> Greve dos funciónarios</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123</div>\n<div style=\"text-align: justify;\"><br /><p>9ju9ji</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(22,16,'2024-04-08 13:40:23','<div>Of&iacute;cio N&ordm; <strong>4/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 08 de abril de 2024.</div>\n<div>GON&Ccedil;ALVES</div>\n<div><strong>Assunto:</strong> SOLICITAÇÃO</div>\n<div><strong>Refer&ecirc;ncia:</strong> 1010</div>\n<div style=\"text-align: justify;\"><br /><p>.........</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(23,17,'2024-04-08 13:52:32','<div>Of&iacute;cio N&ordm; <strong>5/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 08 de abril de 2024.</div>\n<div>Antonio</div>\n<div><strong>Assunto:</strong> Oficio</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123</div>\n<div style=\"text-align: justify;\"><br /><p>coropo da carta</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(24,18,'2024-05-22 10:12:49','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 2/2024 - ASSJUR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 090</td>\n<td><strong>De:</strong> ASSJUR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Ulima</td>\n<td><strong>Para:</strong> ddd</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> abc</td>\n<td><strong>Data:</strong> 22 de maio de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\"></td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>\n</div>'),(25,18,'2024-05-22 10:13:24','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 2/2024 - ASSJUR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 090</td>\n<td><strong>De:</strong> ASSJUR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Ulima</td>\n<td><strong>Para:</strong> ddd</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> abc</td>\n<td><strong>Data:</strong> 22 de maio de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\">CARTA</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>\n</div>'),(26,19,'2024-05-22 10:17:19','<div>Of&iacute;cio N&ordm; <strong>6/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 22 de maio de 2024.</div>\n<div>aaaaaaaaaaaaaaaaaaaa</div>\n<div><strong>Assunto:</strong> SOLICITAÇÃO</div>\n<div><strong>Refer&ecirc;ncia:</strong> 1010</div>\n<div style=\"text-align: justify;\"><br /><p>eeeeeeeeeeeeeee</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(27,20,'2024-05-22 10:34:56','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 3/2024 - ASSJUR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 090</td>\n<td><strong>De:</strong> ASSJUR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Ulima</td>\n<td><strong>Para:</strong> aaaa</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> SOLICITAÇÃO</td>\n<td><strong>Data:</strong> 22 de maio de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\">CARTA</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>bbbbbbbbbbb</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>\n</div>'),(28,21,'2024-05-22 11:08:33','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>Despacho N&ordm; 1/2024 - DIR/ORG</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> 011</td>\n<td><strong>De:</strong> DIR/ORG</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> Ulima</td>\n<td><strong>Para:</strong> sssssssssssss</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> abc</td>\n<td><strong>Data:</strong> 22 de maio de 2024</td>\n</tr>\n<tr>\n<td colspan=\"2\">CARTA</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\"><p>aaaaaaaaaaaaaaa</p>\n<div style=\"margin-top: 37px; text-align: center;\"><div style=\"line-height: 125%;\">Ulima</div></div>\n</div>'),(29,22,'2024-05-27 13:30:53','<div>Of&iacute;cio N&ordm; <strong>1/2024-DIR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 27 de maio de 2024.</div>\n<div>fjgfkgkh</div>\n<div><strong>Assunto:</strong> Reclagem</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123</div>\n<div style=\"text-align: justify;\"><br /><p>hfdjygkhljli</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">Ulima</div></div>'),(30,23,'2024-06-17 10:05:15','<div>Of&iacute;cio N&ordm; <strong>7/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 17 de junho de 2024.</div>\n<div>hkdjfjf</div>\n<div><strong>Assunto:</strong> Oficio</div>\n<div><strong>Refer&ecirc;ncia:</strong> 12345</div>\n<div style=\"text-align: justify;\"><br /><p>hjkjhjkkjkk</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(31,24,'2024-06-18 10:55:39','<div>Of&iacute;cio N&ordm; <strong>8/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 18 de junho de 2024.</div>\n<div>dfdhghgfgjfjjjj</div>\n<div><strong>Assunto:</strong> Oficio</div>\n<div><strong>Refer&ecirc;ncia:</strong> 123344</div>\n<div style=\"text-align: justify;\"><br /><p>gfdghfjhfdfdg</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>'),(32,25,'2024-07-15 10:01:31','<div>Of&iacute;cio N&ordm; <strong>9/2024-ASSJUR/ORG</strong></div>\n<div style=\"text-align: right;\">Fortaleza, 15 de julho de 2024.</div>\n<div>Este documento &eacute; para a empresa executivo</div>\n<div><strong>Assunto:</strong> Parceria</div>\n<div><strong>Refer&ecirc;ncia:</strong> 564</div>\n<div style=\"text-align: justify;\"><br /><p>saves</p></div>\n<div style=\"text-align: center;\"><br /><div style=\"line-height: 125%;\">ANA MARIA<br />ASSEOSSORA JUR&Iacute;DICA</div></div>');
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orgao`
--

DROP TABLE IF EXISTS `orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `sigla` varchar(20) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orgao`
--

LOCK TABLES `orgao` WRITE;
/*!40000 ALTER TABLE `orgao` DISABLE KEYS */;
INSERT INTO `orgao` VALUES (1,'ÓRGÃO','ORG','.'),(2,'ATOMO ADM','AT','VIDA');
/*!40000 ALTER TABLE `orgao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_comentario_usuario`
--

DROP TABLE IF EXISTS `rel_comentario_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_comentario_usuario` (
  `id_rel` int(11) NOT NULL AUTO_INCREMENT,
  `id_comentario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_rel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_comentario_usuario`
--

LOCK TABLES `rel_comentario_usuario` WRITE;
/*!40000 ALTER TABLE `rel_comentario_usuario` DISABLE KEYS */;
INSERT INTO `rel_comentario_usuario` VALUES (1,1,1);
/*!40000 ALTER TABLE `rel_comentario_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositorio`
--

DROP TABLE IF EXISTS `repositorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_setor` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_pasta` int(11) NOT NULL,
  `arquivo` varchar(200) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `data_criacao` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositorio`
--

LOCK TABLES `repositorio` WRITE;
/*!40000 ALTER TABLE `repositorio` DISABLE KEYS */;
INSERT INTO `repositorio` VALUES (1,2,1,0,'./files/2/PORTFOLIO','PORTFOLIO','E\n','2024-03-22 11:31:24'),(2,2,1,0,'./files/2/CartaClinicaIsabelFanony.docx','CARTA','JKNKOJN','2024-03-22 11:32:53'),(3,2,1,0,'./files/2/CartaCLINICAMAZIBEL.pdf','EDVANIA','ED','2024-03-22 11:35:59'),(4,2,1,0,'./files/2/ATOMO_ADM','ATOMO_ADM','FINANÇAS','2024-04-02 08:35:41'),(5,2,1,0,'./files/2/ListadeClientesC.Ulima_.pdf','ATOMO ADM','F','2024-04-02 08:38:23'),(6,2,1,0,'./files/2/DonaTeresaFatura.pdf','SALVES','NHANGA','2024-04-02 08:59:09'),(7,2,5,0,'./files/2/DonaTeresa.pdf','CARTA DE TRABALHO','234','2024-04-02 09:17:27'),(8,2,1,0,'./files/2/ListadeClientesC.Ulima_1.pdf','CARTA DE TRABALHO','MEU\n','2024-04-02 12:44:22'),(9,2,1,0,'./files/2/NICOLAU','NICOLAU','DIRECTO GERAL\n','2024-04-02 17:10:10'),(10,6,3,0,'./files/6/ContratodePrestaodeServios.docx','CARTA DE DESPACHO DE SALÁRIO','ABRIL','2024-04-03 14:25:44'),(11,6,3,0,'./files/6/RECURSOS_HUMANOS','RECURSOS_HUMANOS','RH','2024-04-03 14:38:11'),(12,6,3,11,'./files/6/RECURSOS_HUMANOS/listadosclientesGonalvesNhanga2.pdf','LISTA DO PESSOAL','PESSOAL','2024-04-03 14:41:14'),(13,6,3,11,'./files/6/RECURSOS_HUMANOS/PRESENÇA','PRESENÇA','EFECTIVIDADE','2024-04-03 14:41:53'),(14,6,3,13,'./files/6/RECURSOS_HUMANOS/PRESENÇA/apostilacomplementar1656154866.pdf','LISTA','MAPA','2024-04-03 14:42:31'),(15,2,1,0,'./files/2/TESTE_ARQUIVO_','TESTE_ARQUIVO_','TESTE ARQUIVO ','2024-04-17 09:45:07'),(16,2,1,4,'./files/2/ATOMO_ADM/CoordenadasBancrias.pdf','COORDE','DDDDDDDDDDD','2024-05-22 10:15:50'),(17,2,1,0,'./files/2/ÁTOMO','ÁTOMO',' CARTAS\n','2024-05-27 13:28:49');
/*!40000 ALTER TABLE `repositorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `orgao` int(11) DEFAULT 1,
  `setorPai` int(11) DEFAULT 1,
  `sigla` varchar(20) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `artigo` varchar(1) DEFAULT NULL,
  `dono` int(11) DEFAULT NULL,
  `funcionarios` text DEFAULT NULL,
  `restricao` varchar(1) DEFAULT NULL,
  `repositorio` varchar(100) NOT NULL DEFAULT '104857600',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
INSERT INTO `setor` VALUES (1,'NOME DO ÓRGÃO',1,1,'ORG','','A',1,NULL,'N','104857600'),(2,'DIREÇÃO',1,1,'DIR','','A',1,NULL,'N','104857600'),(3,'COORDENADOR DE FINANÇAS',1,1,'COFIN','','A',1,NULL,'N','104857600'),(4,'ASSESSORIA JURÍDICA',1,1,'ASSJUR','','A',1,NULL,'N','104857600'),(5,'CÉLULA DE TECNOLOGIA',1,1,'CTI','','A',1,NULL,'N','104857600'),(6,'NICOLAU ABEL',1,2,'N/G','','A',4,NULL,'S','104857600');
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor_func_per`
--

DROP TABLE IF EXISTS `setor_func_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setor_func_per` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setor` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor_func_per`
--

LOCK TABLES `setor_func_per` WRITE;
/*!40000 ALTER TABLE `setor_func_per` DISABLE KEYS */;
INSERT INTO `setor_func_per` VALUES (1,6,3,3);
/*!40000 ALTER TABLE `setor_func_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `abreviacao` varchar(45) DEFAULT NULL,
  `inicio` int(11) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `publicado` char(1) NOT NULL DEFAULT 'N',
  `tem_para` char(1) DEFAULT 'S',
  `cabecalho` text DEFAULT NULL,
  `rodape` text DEFAULT NULL,
  `layout` text DEFAULT NULL,
  `referencia` varchar(50) NOT NULL DEFAULT 'N;N',
  `para` varchar(50) NOT NULL DEFAULT 'N;N',
  `redacao` varchar(50) NOT NULL DEFAULT 'N;N',
  `objetivo` varchar(50) NOT NULL DEFAULT 'N;N',
  `documentacao` varchar(50) NOT NULL DEFAULT 'N;N',
  `conclusao` varchar(50) NOT NULL DEFAULT 'N;N',
  `processo` varchar(50) NOT NULL DEFAULT 'N;N',
  `interessado` varchar(50) NOT NULL DEFAULT 'N;N',
  `analise` varchar(50) NOT NULL DEFAULT 'N;N',
  `atomoadm` varchar(50) NOT NULL DEFAULT 'N;N',
  `nicolau` varchar(50) NOT NULL DEFAULT 'N;N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'OFÍCIO','OF',NULL,NULL,'S','S','','','<p>Of&iacute;cio N&ordm; <strong>[numero]/[ano_doc]-[setor_doc]</strong></p>\n<p style=\"text-align: right;\">Fortaleza, [data].</p>\n<p>[para]</p>\n<p><strong>Assunto:</strong> [assunto]</p>\n<p><strong>Refer&ecirc;ncia:</strong> [referencia]</p>\n<p style=\"text-align: justify;\"><br />[redacao]</p>\n<p style=\"text-align: center;\"><br />[remetente_assinatura]</p>','S;S;Referência;0','S;S;Destinatário;0','S;S;Redação;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N','N;N'),(2,'COMUNICAÇÃO INTERNA','CI',NULL,NULL,'S','S','','','<p>Comunica&ccedil;&atilde;o Interna N&ordm; <strong>[numero]/[ano_doc] - [setor_doc]</strong></p>\n<p style=\"text-align: right;\">Fortaleza, [data].</p>\n<p>[para]</p>\n<p><strong>Assunto:</strong> [assunto]</p>\n<p>[referencia]</p>\n<p>[anexos]</p>\n<p style=\"text-align: justify;\"><br />[redacao]</p>\n<p style=\"text-align: center;\">[remetente_assinatura]</p>','S;S;Referência;0','S;S;Para;0','S;S;Redação;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N;;0','N;N','N;N'),(3,'DESPACHO','DESP',NULL,NULL,'S','S','','','<table style=\"border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td align=\"center\"><strong>[tipo_doc] N&ordm; [numero]/[ano_doc] - [setor_doc]</strong></td>\n</tr>\n</tbody>\n</table>\n<table style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; border-collapse: collapse;\" width=\"100%\">\n<tbody>\n<tr>\n<td width=\"50%\"><strong> N&ordm;. do processo:</strong> [processo]</td>\n<td><strong>De:</strong> [setor_doc]</td>\n</tr>\n<tr>\n<td><strong>Interessado:</strong> [interessado]</td>\n<td><strong>Para:</strong> [para]</td>\n</tr>\n<tr>\n<td><strong>Assunto:</strong> [assunto]</td>\n<td><strong>Data:</strong> [data]</td>\n</tr>\n<tr>\n<td colspan=\"2\">[anexos]</td>\n</tr>\n</tbody>\n</table>\n<div style=\"margin-top: 15px; border: solid 1px black; background-color: #fff; color: black; height: 600px; width: 100%; padding-left: 10px; padding-right: 10px; text-align: justify; line-height: 140%; display: table;\">[redacao]\n<div style=\"margin-top: 37px; text-align: center;\">[remetente_assinatura]</div>\n</div>','N;N;;0','S;S;Para;0','S;S;Redação;4','N;N;;0','N;N;;0','N;N;;0','N;N;Processo;1','S;S;Interessado;2','N;N;;0','N;N;;','N;N;;'),(4,'CARTA DE TRABALHO','CARTA OFICIAL',NULL,NULL,'S','S','','','<p>[assunto]</p>','S;S;;0','S;S;;0','N;N;;0','S;S;;0','S;N;;0','S;S;;0','N;N;;0','N;N;;0','S;S;salves;12','S;S;;0','N;N;;');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_ano`
--

DROP TABLE IF EXISTS `tipo_ano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_ano` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` int(11) NOT NULL,
  `ano` int(4) NOT NULL,
  `inicio` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_ano`
--

LOCK TABLES `tipo_ano` WRITE;
/*!40000 ALTER TABLE `tipo_ano` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_ano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `confsenha` varchar(45) DEFAULT NULL,
  `setor` int(11) DEFAULT 1,
  `setores` varchar(200) DEFAULT NULL,
  `nivel` int(11) DEFAULT 2,
  `email` varchar(200) DEFAULT NULL,
  `upload` varchar(10) DEFAULT '2048',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'11111111111','ADMINISTRADOR','Administrador','21232f297a57a5a743894a0e4a801fc3','21232f297a57a5a743894a0e4a801fc3',1,'2',1,'admin@admin.com','2048'),(2,'22222222222','REDATOR',NULL,'eab9e1f8e8c7421c149be0fd8cae0114',NULL,0,'2',2,'redator@geradoc.com.br','2048'),(3,'55555555555','GONÇALVES NHANGA',NULL,'670b14728ad9902aecba32e22fa4f6bd',NULL,0,'6',1,'goncalves.nhanga09@gmail.com','2048'),(4,'66958347658','NICOLAU ABEL',NULL,'e10adc3949ba59abbe56e057f20f883e',NULL,0,'4',1,'nicolauabel.consult@gmail.com','2048'),(5,'12458663589','CONSTANTINO ULIMA',NULL,'25d55ad283aa400af464c76d713c07ad',NULL,0,'2',2,'costaulima@gmail.com','2048');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id_workflow` int(11) NOT NULL AUTO_INCREMENT,
  `id_documento` int(11) NOT NULL,
  `id_setor_destino` int(11) NOT NULL,
  `id_remetente` int(11) NOT NULL,
  `id_recebedor` int(11) DEFAULT NULL,
  `data_envio` datetime NOT NULL,
  `data_recebimento` datetime DEFAULT NULL,
  `data_recusa` datetime DEFAULT NULL,
  PRIMARY KEY (`id_workflow`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflow`
--

LOCK TABLES `workflow` WRITE;
/*!40000 ALTER TABLE `workflow` DISABLE KEYS */;
INSERT INTO `workflow` VALUES (1,1,3,1,NULL,'2016-09-14 09:18:11',NULL,NULL),(2,10,4,3,NULL,'2024-04-03 14:37:16',NULL,NULL),(3,12,2,3,5,'2024-04-03 15:54:22','2024-05-22 11:05:06',NULL),(4,13,4,3,NULL,'2024-04-05 17:26:42',NULL,NULL);
/*!40000 ALTER TABLE `workflow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 21:49:01
