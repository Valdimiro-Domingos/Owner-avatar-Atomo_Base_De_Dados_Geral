-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_sc_validacao
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
-- Table structure for table `agts`
--

DROP TABLE IF EXISTS `agts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `private_key` text DEFAULT NULL,
  `public_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agts`
--

LOCK TABLES `agts` WRITE;
/*!40000 ALTER TABLE `agts` DISABLE KEYS */;
INSERT INTO `agts` VALUES (1,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7+SaUCH4D88ZIsE4wrhwnS45OyzHkdzg6pe1CNhKi1Md3pCsDSzuyes0KpW6Gl1WeNWo4gLd0cxd0shLtq6aUPW17RMGq2qqEbfH4THB21/8OrHz+A25AkEA2sZTr+ea759PgO9W24uRx4NwPhfOObYzc4SVwNJlkxMmkUBIgKzTXykKyHRVI5V55mUf2c7Fmrbh7Q7eHMFeXQJBANfYuWkMspfSotDMMewIy6Vu5Z4WTAM3VqVlWU0YwsTOxJtuYbQejStDBz9mBCLGZpmJXlhRG9TYKxLt82cFt6cCQFoqFt+OcpqDa/7VpVSCZyh1EVNl+EZswzO+1wFLNTWyVNjUR41QrSSxA5Kt71DlEAJWdxQLVgF3khFjaUMsprkCQEmNzBkVP6LnH56hhv2VPbiBYvQNSxfperhgIh9Yqb6ha3RAGEFmC9tLOyQKoqwrCfmWSzUzZpWQmJUZy1E3LI8CQAWL67LsimFT8lsq+6RiwOSWHlMHFCtpqDLCbWA0PgDNYBmE5HBjyLHC/Fyv7LtSRAnsKJP71VOwQJJKw2PUbQA=','MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQAB',NULL,NULL);
/*!40000 ALTER TABLE `agts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `armazems`
--

DROP TABLE IF EXISTS `armazems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armazems` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armazems`
--

LOCK TABLES `armazems` WRITE;
/*!40000 ALTER TABLE `armazems` DISABLE KEYS */;
INSERT INTO `armazems` VALUES (1,'0001','Sede','I eat one.',1,NULL,NULL);
/*!40000 ALTER TABLE `armazems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artigos`
--

DROP TABLE IF EXISTS `artigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artigos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo_id` bigint(20) unsigned DEFAULT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `categoria_id` bigint(20) unsigned DEFAULT NULL,
  `imposto_id` bigint(20) unsigned DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `imagem_1` varchar(191) DEFAULT NULL,
  `imagem_2` varchar(191) DEFAULT NULL,
  `imagem_3` varchar(191) DEFAULT NULL,
  `unidade` varchar(191) DEFAULT NULL,
  `fornecedor_id` bigint(20) unsigned DEFAULT NULL,
  `codigo_barra` varchar(191) DEFAULT NULL,
  `is_stock` tinyint(1) DEFAULT NULL,
  `stock_minimo` varchar(191) DEFAULT NULL,
  `stock_maximo` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artigos_tipo_id_foreign` (`tipo_id`),
  KEY `artigos_retencao_id_foreign` (`retencao_id`),
  KEY `artigos_categoria_id_foreign` (`categoria_id`),
  KEY `artigos_imposto_id_foreign` (`imposto_id`),
  KEY `artigos_fornecedor_id_foreign` (`fornecedor_id`),
  CONSTRAINT `artigos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `artigos_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `artigos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `artigos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `artigos_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (1,'2024-0001','ÁGUA GRANDE/BIG WATER',1,1,1,5,1401.87,'null.png','null.png','null.png','1',1,'565678',1,'0','0',NULL,1,1,'2024-02-21 06:54:54','2024-07-01 10:24:42'),(2,'2024-0002','ÁGUA PEQUENA/SMALL WATER',1,1,1,5,934.58,'null.png','null.png','null.png','1',1,'1234567',0,'0','0',NULL,1,1,'2024-02-21 06:57:13','2024-07-01 10:03:52'),(3,'2024-0003','ÁGUA TÓNICA/TONIC WATER',1,1,1,5,1121.49,'null.png','null.png','null.png','1',1,'00',0,'0','0',NULL,1,1,'2024-02-21 07:00:06','2024-05-16 11:14:04'),(4,'2024-0004','SUMO COMPAL/JUICE',1,1,1,5,3271.02,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:02:30','2024-07-01 09:50:35'),(5,'2024-0005','SUMO TUTTI FRUTTI/JUICE',1,1,1,5,2336.44,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 07:08:29','2024-03-06 17:45:04'),(6,'2024-0006','CUCA EM LATA/BEER',1,1,1,5,1401.87,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:10:51','2024-04-10 05:40:03'),(7,'2024-0007','CUCA EM GARRAFA/BEER',1,1,1,5,1214.95,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:11:51','2024-04-07 09:46:02'),(8,'2024-0008','EKA EM GARRAFA/BEER',1,1,1,5,1214.95,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:12:55','2024-06-05 11:22:56'),(9,'2024-0009','EKA EM LATA/BEER',1,1,1,5,1401.87,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 07:13:53','2024-03-06 18:12:29'),(10,'2024-0010','SMIRNOFF PREDA/SMIRNOFF',1,1,1,5,1869.16,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:15:05','2024-04-07 15:01:54'),(11,'2024-0011','BOOSTER EM LATA/BOOSTER',1,1,1,5,1869.16,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 07:18:14','2024-02-27 09:41:25'),(12,'2024-0012','COCA-COLA',1,1,1,5,1121.5,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:19:19','2024-06-18 09:10:19'),(13,'2024-0013','SPRITE',1,1,1,5,1121.5,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:20:13','2024-03-27 12:24:44'),(14,'2024-0014','FANTA',1,1,1,5,1121.5,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 07:22:11','2024-02-27 09:42:52'),(15,'2024-0015','SUMOL',1,1,1,5,1401.86,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:23:43','2024-04-09 10:51:26'),(16,'2024-0016','PÃO DE ALHO/GARLIC BREAD',1,1,1,5,1401.87,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:27:15','2024-03-27 12:24:44'),(17,'2024-0017','AZEITONAS AO ALHO/GARLIC OLIVES',1,1,1,5,934.58,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:29:31','2024-04-10 06:51:24'),(18,'2024-0018','CHOCO FRITO/FRIED SQUIDS',1,1,1,5,7476.64,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:30:54','2024-04-10 06:51:24'),(19,'2024-0019','GAMBAS AO ALHO/GARLIC TIGER SHRIMP',1,1,1,5,11214.95,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:32:10','2024-04-10 06:51:24'),(20,'2024-0020','CHOURIÇO ASSADO/ROAST SAUSAGE',1,1,1,5,3738.32,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:35:26','2024-03-27 12:24:44'),(21,'2024-0021','PICA-PAU',1,1,1,5,6542.06,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:37:01','2024-04-03 15:17:42'),(22,'2024-0022','PATÊ DE FRANGO',1,1,1,5,2803.74,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:38:54','2024-03-08 15:00:02'),(23,'2024-0023','ASINHAS/ HOT WINGS',1,1,1,5,5607.48,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:40:03','2024-04-03 15:17:42'),(24,'2024-0024','ARROZ DO MAR/SEA FOOD RICE',1,1,1,5,20560.75,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:41:37','2024-07-01 09:50:35'),(25,'2024-0025','CHOCO GRELHADO/GRILLED SQUIDS',1,1,1,5,14018.69,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 07:43:06','2024-02-27 16:30:53'),(26,'2024-0026','CARIL DE CAMARÃO/SHRIMP CURRY',1,1,1,5,9345.79,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 07:45:02','2024-02-27 16:30:11'),(27,'2024-0027','CORVINA NA CHAPA/GRILLED CORVINE',1,1,1,5,14018.69,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:47:11','2024-04-07 06:30:05'),(28,'2024-0028','BIFE A DOM PEDRO/DOM PEDRO STEAK',1,1,1,5,12149.53,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:49:38','2024-04-09 14:41:41'),(29,'2024-0029','BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',1,1,1,5,9345.79,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:51:49','2024-04-05 06:46:41'),(30,'2024-0030','BIFE  COM MOLHO DE COGUMELOS/STEAK IN MUSHROOM SAUCE',1,1,1,5,11214.95,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 07:54:24','2024-03-13 19:03:53'),(31,'2024-0031','GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',1,1,1,5,17757.01,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-21 08:00:10','2024-03-22 13:37:39'),(32,'2024-0032','TAGLIETELE Á CARBONARA',1,1,1,5,8411.21,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:01:52','2024-03-06 18:30:58'),(33,'2024-0033','LAGOSTA GRELHADA/GRILLED LOBSTER',1,1,1,5,11214.95,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:03:37','2024-03-06 18:32:08'),(34,'2024-0034','ESPETADA TERRA E MAR/LAND AND SEA KEABAB',1,1,1,5,1635514,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:05:37','2024-03-06 18:56:19'),(35,'2024-0035','PEQUENO ALMOÇO INGLÊS',1,1,1,5,5607.47,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-21 08:08:00','2024-04-07 07:45:44'),(36,'2024-0036','PEQUENO ALMOÇO AMERICANO',1,1,1,5,7010.34,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:09:02','2024-03-06 18:57:24'),(37,'2024-0037','PEQUENO ALMOÇO Á DOM PEDRO',1,1,1,5,11214.95,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:10:41','2024-03-06 19:01:57'),(38,'2024-0038','CHÁ/TEA',1,1,1,5,934.58,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-21 08:12:12','2024-06-18 07:50:01'),(39,'2024-0039','GALÃO/GALLON',1,1,1,5,140187,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:13:38','2024-03-06 19:06:47'),(40,'2024-0040','LEITE/MILK',1,1,1,1,1000,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 08:14:52','2024-02-27 17:09:03'),(41,'2024-0041','CAFÉ',1,1,1,5,934.57,'null.png','null.png','null.png',NULL,1,NULL,0,'0','0',NULL,1,1,'2024-02-21 08:15:40','2024-06-20 10:43:42'),(42,'2024-0042','BATIDO/SHAKE',1,1,1,1,2000,'null.png','null.png','null.png','24',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 08:16:38','2024-02-27 17:12:41'),(43,'2024-0043','BAGUETE DE FRANGO/CHICKEN BANGUETTE',1,1,1,5,5607.48,'null.png','null.png','null.png','00000',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 08:18:56','2024-03-22 13:37:39'),(44,'2024-0044','PREGO NO PÃO',1,1,1,5,6542.06,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 08:20:14','2024-04-04 07:03:02'),(45,'2024-0045','TOSTA DE ATUM/TUNE TOAST',1,1,1,5,4205.61,'null.png','null.png','null.png','24',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 08:22:03','2024-05-20 08:21:41'),(46,'2024-0046','TOSTA MISTA/TSANDWICH',1,1,1,5,2803.74,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-21 08:23:25','2024-03-30 08:35:09'),(47,'2024-0047','CROISSANT MISTO/MIXED CROISSANT',1,1,1,1,3500,'null.png','null.png','null.png','24',1,NULL,0,'0','0',NULL,1,1,'2024-02-21 08:25:03','2024-04-10 06:46:34'),(48,'2024-0048','BITOQUE',1,1,1,5,7943.93,'null.png','null.png','null.png',NULL,1,NULL,1,'0','0',NULL,1,1,'2024-02-21 08:26:07','2024-06-18 09:10:18'),(49,'2024-0049','BATATA DOCE|MANDIOCA/SWEEET POTATO OR CASSAVA',1,1,1,5,1635.51,'null.png','null.png','null.png',NULL,1,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 09:21:13','2024-02-27 16:43:23'),(50,'2024-0050','BATATA COZIDA\\ COOKD POTATO',1,1,1,1,1800,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 09:28:24','2024-02-27 17:13:58'),(51,'2024-0050','BATATA COZIDA\\ COOKD POTATO',1,1,1,5,1682.24,'null.png','null.png','null.png',NULL,NULL,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 09:28:25','2024-02-27 16:42:54'),(52,'2024-0052','ARROZ BRANCO/ BATATA FRITA\\ WHITE RICE',1,1,1,5,1682.24,'null.png','null.png','null.png','23456',NULL,NULL,1,'0','0',NULL,1,1,'2024-02-21 09:32:45','2024-03-28 15:28:37'),(53,'2024-0053','BATATA FRITA\\ FRENCH FRIES',1,1,1,1,1800,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 09:35:39','2024-02-27 17:13:40'),(54,'2024-0054','ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1,1,1,5,1775.7,'null.png','null.png','null.png','6543',NULL,NULL,1,'0','0',NULL,1,1,'2024-02-21 09:46:00','2024-03-07 15:45:32'),(55,'2024-0055','FEIJÃO DE ÓLEO DE PALMA\\ PALM OIL BEANS',1,1,1,5,1775.7,'null.png','null.png','null.png',NULL,NULL,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 10:01:13','2024-02-27 16:44:16'),(56,'2024-0056','FEIJÃO PRETO\\ BLCK BEANS',1,1,1,5,1775.7,'null.png','null.png','null.png',NULL,NULL,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 10:04:30','2024-02-27 16:46:59'),(57,'2024-0057','LEGUMES SALTEADOS\\ SAUTÉED VEGETABLES',1,1,1,5,1775.7,'null.png','null.png','null.png','20',NULL,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 10:07:32','2024-02-27 16:49:54'),(58,'2024-0058','FUNGE DE MILHO OU BOMBO\\ CORN FUNGE\\ CASSAVA',1,1,1,5,1775.7,'null.png','null.png','null.png',NULL,NULL,NULL,1,'0','0',NULL,1,NULL,'2024-02-21 10:10:20','2024-02-27 16:40:02'),(59,'2024-0059','ESPARREGADO OU BRÓCULOS \\ SPAGHETTI \\ BROCCOLI',1,1,1,1,2300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,NULL,'2024-02-21 10:14:03','2024-02-27 17:14:22'),(60,'2024-0060','SUMO DE ANANÁS\\ PINEAPPLE',1,1,1,5,2336.45,'null.png','null.png','null.png',NULL,NULL,NULL,1,'0','0',NULL,1,1,'2024-02-21 10:23:32','2024-06-18 07:50:01'),(61,'2024-0061','SUMO DE LIMÃO/LEMON',1,1,1,5,2336.45,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 12:49:15','2024-06-18 07:50:01'),(62,'2024-0061','SUMO DE LARANJA/ORANGE',1,1,1,5,2336.45,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 12:50:34','2024-06-18 07:50:01'),(63,'2024-0063','SUMO DE MARACUJA/ PASSION FRUIT',1,1,1,5,2336.45,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 12:51:51','2024-06-18 09:10:18'),(64,'2024-0064','SUMO DEV PITAIA/ DRAGON FRUIT',1,1,1,5,2336.45,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 12:56:44','2024-02-27 12:56:44'),(65,'2024-0065','OLD PARR',1,1,1,5,3738.32,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 12:59:16','2024-02-27 12:59:16'),(66,'2024-0066','JAMESON',1,1,1,5,3738.32,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:05:55','2024-02-27 13:05:55'),(67,'2024-0067','BALLANTINES',1,1,1,5,3738.32,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:06:37','2024-02-27 13:06:37'),(68,'2024-0068','MARTINE BRANCO',1,1,1,5,3738.32,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:11:03','2024-02-27 13:11:03'),(69,'2024-0069','MARTINE ROSSO',1,1,1,5,3738.32,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:15:18','2024-02-27 13:15:18'),(70,'2024-0070','TEQUILA OLMEGA',1,1,1,5,3738.32,'null.png','null.png','null.png','2345',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:16:35','2024-02-27 13:16:35'),(71,'2024-0071','AMARULA',1,1,1,5,3738.32,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:17:14','2024-02-27 13:17:14'),(72,'2024-0072','TEQUILA CAMINO',1,1,1,5,3738.32,'null.png','null.png','null.png','0987',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:18:11','2024-02-27 13:18:11'),(73,'2024-0073','GOLDON NORMAL',1,1,1,5,3738.32,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:36:34','2024-02-27 13:36:34'),(74,'2024-0074','GOLDON PINK',1,1,1,5,4672.9,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 13:37:18','2024-02-27 13:37:18'),(75,'2024-0075','BEEFEARTER PINK',1,1,1,5,3738.32,'null.png','null.png','null.png','3456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:41:30','2024-02-27 14:41:30'),(76,'2024-0076','BEEFEARTER NORMAL',1,1,1,5,3738.32,'null.png','null.png','null.png','444',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:42:16','2024-02-27 14:42:16'),(77,'2024-0077','TANQUERAY',1,1,1,5,3738.32,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:42:54','2024-02-27 14:42:54'),(78,'2024-0078','HAVANA CLUB',1,1,1,5,3738.32,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:43:31','2024-02-27 14:43:31'),(79,'2024-0079','RUM CAPTAIN CORTEZ',1,1,1,5,3738.32,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:44:11','2024-02-27 14:44:11'),(80,'2024-0080','BARCELÓ RUM DOMINICANO',1,1,1,5,3738.32,'null.png','null.png','null.png','765',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:44:55','2024-02-27 14:44:55'),(81,'2024-0081','SANGRIA COPO DE FRUTOS VERMELHOS',1,1,1,5,1869.16,'null.png','null.png','null.png','9876',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:45:44','2024-02-27 14:45:44'),(82,'2024-0082','SANGRIA TINTO OU BRANCO/WINE',1,1,1,5,22429.91,'null.png','null.png','null.png','98765',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:46:39','2024-02-27 14:46:39'),(83,'2024-0083','SANGRIA ESPUMANTE/ SPARCLIN',1,1,1,5,24299.07,'null.png','null.png','null.png','98765',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:47:24','2024-02-27 14:47:24'),(84,'2024-0084','SANGRIA ESPUMANTE/COM FRUTOS VERMELHOS',1,1,1,5,26168.22,'null.png','null.png','null.png','653',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:48:29','2024-02-27 14:48:29'),(85,'2024-0085','SILK SPICE',1,1,1,5,20560.75,'null.png','null.png','null.png','987',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:49:13','2024-02-27 14:49:13'),(86,'2024-0086','5 ELEMENTOS',1,1,1,5,11214.95,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:49:52','2024-02-27 14:49:52'),(87,'2024-0087','ESTEVA',1,1,1,5,23364.49,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:50:24','2024-02-27 14:50:24'),(88,'2024-0088','MARQUES DE BORBA',1,1,1,5,20093.46,'null.png','null.png','null.png','2456876',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:51:41','2024-02-27 14:51:41'),(89,'2024-0089','VOUQUINHA',1,1,1,5,7476.64,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:52:43','2024-02-27 14:52:43'),(90,'2024-0090','MARIANA',1,1,1,5,16822.43,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:53:23','2024-02-27 14:53:23'),(91,'2024-0091','MONTES ERMOS',1,1,1,5,28037.38,'null.png','null.png','null.png','654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:53:57','2024-02-27 14:53:57'),(92,'2024-0092','VINEA CARTUXA(COPO)',1,1,1,5,2336.45,'null.png','null.png','null.png','45654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:54:49','2024-02-27 14:54:49'),(93,'2024-0093','ALMA DA VINHA (COPO)',1,1,1,5,2336.45,'null.png','null.png','null.png','123',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 14:55:21','2024-03-23 10:53:14'),(94,'2024-0094','AVELADA VINHO BRANCO',1,1,1,5,11214.95,'null.png','null.png','null.png','112345678',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 14:56:04','2024-02-27 14:56:04'),(95,'2024-0095','MURALHAS VIMHO BRANCO',1,1,1,5,11214.95,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:50:25','2024-02-27 15:50:25'),(96,'2024-0096','CACHO FRESCO VINHO BRANCO',1,1,1,5,9345.79,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:51:15','2024-03-28 07:10:02'),(97,'2024-0097','CACHO FRESCO VINHO TINTO',1,1,1,5,11214.95,'null.png','null.png','null.png','5654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:56:37','2024-02-27 15:56:37'),(98,'2024-0098','MATEUS ROSÉ',1,1,1,5,18691.59,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:58:32','2024-02-27 15:58:32'),(99,'2024-0099','BARON ROMERO',1,1,1,5,7476.64,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:59:20','2024-02-27 15:59:20'),(100,'2024-0100','DOM LUCIANO',1,1,1,5,14018.69,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 15:59:57','2024-02-27 15:59:57'),(101,'2024-0101','BELAIRE ROSÉ',1,1,1,5,65420.56,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:04:05','2024-02-27 16:04:05'),(102,'2024-0102','MOSCATO',1,1,1,5,18691.59,'null.png','null.png','null.png','5678',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:08:08','2024-02-27 16:08:08'),(103,'2024-0103','LAMBRUSCO',1,1,1,5,14953.27,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:09:03','2024-02-27 16:09:03'),(104,'2024-0104','FESTÃO',1,1,1,5,11214.95,'null.png','null.png','null.png','45678',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:09:50','2024-02-27 16:09:50'),(105,'2024-0105','CHANDON',1,1,1,5,42056.07,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:10:33','2024-02-27 16:10:33'),(106,'2024-0106','CAIPIRINHA (LIMA,MARACUJA,MÚCUA,ANANÁS)',1,1,1,5,3738.32,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:11:06','2024-02-27 16:11:06'),(107,'2024-0107','CAIPIRINHA (COM FRUTOS VERMELHOS)',1,1,1,5,4672.9,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:11:47','2024-02-27 16:11:47'),(108,'2024-0108','GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',1,1,1,5,3738.32,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 16:12:16','2024-04-08 07:55:55'),(109,'2024-0109','GIN TÓNICO (COM GIN TANQUERAY)',1,1,1,5,46728.97,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:13:17','2024-02-27 16:13:17'),(110,'2024-0110','CAIPI BLACK',1,1,1,5,3738.32,'null.png','null.png','null.png','34567',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:14:01','2024-02-27 16:14:01'),(111,'2024-0111','PINA COLADA',1,1,1,5,3738.32,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,0,NULL,'2024-02-27 16:14:37','2024-03-06 09:54:44'),(112,'2024-0112','PINA COLADA',1,1,1,5,3738.32,'null.png','null.png','null.png','6543',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:15:12','2024-02-27 16:15:12'),(113,'2024-0113','CUBA LIBRE',1,1,1,5,3738.32,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:15:44','2024-02-27 16:15:44'),(114,'2024-0114','CAMARÃO AO ALHO',1,1,1,5,8411.21,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:52:52','2024-02-27 16:52:52'),(115,'2024-0115','MOUSSE DE CHOCOLATE',1,1,1,5,233645,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:53:30','2024-03-06 10:07:21'),(116,'2024-0116','MOUSSE DE MARACUJA',1,1,1,5,1869.16,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 16:55:27','2024-04-09 12:20:11'),(117,'2024-0117','BOLO DO DIA',1,1,1,5,2500,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:56:21','2024-02-27 16:56:21'),(118,'2024-0118','FRUTA DA ÉPOCA',1,1,1,5,1401.87,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 16:57:06','2024-02-27 16:57:06'),(119,'2024-0119','PETIT GÂTEAU',1,1,1,5,3738.32,'null.png','null.png','null.png','204',1,'12233344443',0,'0','0',NULL,1,NULL,'2024-02-27 16:57:47','2024-02-27 16:57:47'),(120,'2024-0120','ESPARREGADO/ BRÓCULOS',1,1,1,5,2149.53,'null.png','null.png','null.png','23456',1,'92884374',0,'0','0',NULL,1,NULL,'2024-02-27 16:59:43','2024-02-27 16:59:43'),(121,'2024-0121','ANANÁS',1,1,1,5,1495.33,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:00:14','2024-02-27 17:00:14'),(122,'2024-0122','MAMÃO',1,1,1,5,1495.33,'null.png','null.png','null.png','7654',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:00:50','2024-02-27 17:00:50'),(123,'2024-0123','MELÃO',1,1,1,5,1495.33,'null.png','null.png','null.png','23456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:01:33','2024-02-27 17:01:33'),(124,'2024-0124','MELANCIA',1,1,1,5,1495.33,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:02:05','2024-02-27 17:02:05'),(125,'2024-0125','MANGA',1,1,1,5,2336.45,'null.png','null.png','null.png','20',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:02:51','2024-02-27 17:02:51'),(126,'2024-0126','SALADA DE FRUTAS',1,1,1,5,2616.82,'null.png','null.png','null.png','23456',1,'92884374',0,'0','0',NULL,1,NULL,'2024-02-27 17:03:34','2024-02-27 17:03:34'),(127,'2024-0127','SALADA DE ATUM',1,1,1,5,4672.9,'null.png','null.png','null.png','6543',1,'6533419002593',0,'0','0',NULL,1,NULL,'2024-02-27 17:04:07','2024-02-27 17:04:07'),(128,'2024-0128','SALADA MISTA',1,1,1,5,2336.45,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:04:40','2024-02-27 17:04:40'),(129,'2024-0129','SALADA TROPICAL',1,1,1,5,4672.9,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:05:18','2024-02-27 17:05:18'),(130,'2024-0130','SOPA DO DIA',1,1,1,5,2056.07,'null.png','null.png','null.png','204',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 17:05:54','2024-04-02 06:31:16'),(131,'2024-0131','SOPA DE LEGUMES',1,1,1,5,2196.26,'null.png','null.png','null.png','234564567',1,NULL,0,'0','0',NULL,1,1,'2024-02-27 17:06:38','2024-06-18 07:50:01'),(132,'2024-0132','CALDO VERDE',1,1,1,5,2383.18,'null.png','null.png','null.png','23456456789',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:07:12','2024-02-27 17:07:12'),(133,'2024-0133','CALDO DE PEIXE',1,1,1,5,7476.64,'null.png','null.png','null.png','2043456',1,NULL,0,'0','0',NULL,1,NULL,'2024-02-27 17:08:01','2024-02-27 17:08:01'),(134,'2024-0134','REFEIÇÕES',1,1,1,5,14018.69,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-02-29 10:01:47','2024-06-18 09:10:18'),(135,'2024-0135','REFRIGERANTES',1,1,1,5,1121.49,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,1,'2024-03-02 09:19:45','2024-06-18 07:50:01'),(136,'2024-0136','HAMBURGUER SIMPLES',1,1,1,5,3738.31,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-03-03 18:42:11','2024-03-03 18:47:42'),(137,'2024-0137','HAMBURGUER COMPLETO',1,1,1,5,6355.14,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-03-04 08:57:37','2024-04-05 09:31:30'),(138,'2024-0138','Mousse de maracuja',1,1,1,5,1869.16,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-06 10:32:39','2024-03-22 11:16:08'),(139,'2024-0139','COFFE BREAK',2,1,1,5,15293.16,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,0,1,'2024-03-06 10:53:25','2024-05-27 06:01:44'),(140,'2024-0140','FATIA DE BOLO',1,1,1,5,654.2,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,1,'2024-03-06 18:14:59','2024-03-27 17:52:58'),(141,'2024-0141','FEIJOADA',1,1,1,5,4672.9,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,NULL,'2024-03-08 07:55:11','2024-03-08 07:55:11'),(142,'2024-0142','T.bone grande',1,1,1,5,46728.97,'null.png','null.png','null.png','1',1,NULL,1,'0','0',NULL,1,NULL,'2024-03-08 08:54:01','2024-03-08 16:47:20'),(143,'2024-0143','T.bone',1,1,1,5,44879,'null.png','null.png','null.png','1',1,'2024_0001',0,'0','0',NULL,1,NULL,'2024-03-08 09:01:15','2024-03-08 09:05:36'),(144,'2024-0144','PEIXE LIRIO COM LEGUMES SALTIADO E BATATA AO MURRO',1,1,1,5,18691.59,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-08 14:54:12','2024-03-08 15:00:02'),(145,'2024-0145','PRATO DO DIA',1,1,1,5,4672.89,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-08 14:56:56','2024-06-18 09:10:18'),(146,'2024-0146','Picanha com batata frita',1,1,1,5,14018.69,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-08 17:31:27','2024-03-10 10:31:26'),(147,'2024-0147','Fino',1,1,1,5,700.93,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-08 18:07:56','2024-03-09 20:08:22'),(148,'2024-0148','Gin gordon em lata',1,1,1,5,1500,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-03-09 20:06:18','2024-03-09 20:08:22'),(149,'2024-0149','Bife peito de frango',1,1,1,5,13000,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,0,NULL,'2024-03-19 10:06:29','2024-03-19 10:06:55'),(150,'2024-0150','Bife peito de frango',1,1,1,5,13000,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,0,NULL,'2024-03-19 10:12:26','2024-03-19 10:13:04'),(151,'2024-0151','Bife peito de frango',1,1,1,5,13000,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,0,NULL,'2024-03-19 10:17:21','2024-03-19 10:18:19'),(152,'2024-0152','BIFE PEITO DE FRANGO',1,1,1,5,9345.79,'null.png','null.png','null.png','2',1,NULL,0,'0','0',NULL,1,1,'2024-03-19 10:20:44','2024-03-22 13:37:39'),(153,'2024-0153','Tosta mista',1,1,1,5,3000,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,0,NULL,'2024-03-19 10:34:39','2024-03-19 10:35:03'),(154,'2024-0154','Serviço de quarto',1,1,1,5,1401.86,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-03-19 14:56:09','2024-04-07 15:01:54'),(155,'2024-0155','Fino Tulipa',2,1,1,5,1121.49,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,NULL,'2024-03-19 17:50:54','2024-03-19 17:50:54'),(156,'2024-0156','Fino Tulipa',2,1,1,5,1121.49,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-19 17:55:23','2024-03-19 17:55:23'),(157,'2024-0157','prato do dia',2,1,1,5,4672.89,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-03-21 13:56:01','2024-04-09 10:19:37'),(158,'2024-0158','MAÇA',1,1,1,5,747.66,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-22 12:09:51','2024-04-02 05:35:03'),(159,'2024-0159','PEIXE GRELHADO C/ LEGUMES  SALTEADOS BATA AO MURRO',1,1,1,5,14018.69,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-22 12:21:35','2024-03-22 13:37:39'),(160,'2024-0160','ARROZ DE FEIJÃO C/ FILETE',1,1,1,5,14018.69,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-22 12:38:18','2024-03-22 13:37:39'),(161,'2024-0161','Copo de fino',1,1,1,5,934.57,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,0,NULL,'2024-03-24 18:16:24','2024-03-24 18:16:24'),(162,'2024-0162','Lambreta',1,1,1,5,560.74,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-24 18:22:50','2024-03-28 06:54:03'),(163,'2024-0163','Fatia de bolo',2,1,1,5,93457,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-27 17:50:21','2024-03-27 17:54:21'),(164,'2024-0164','Tulipa',2,1,1,5,841.12,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-03-28 06:52:32','2024-04-07 07:05:09'),(165,'2024-0165','Long drink',2,1,1,5,607.47,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 06:55:36','2024-03-28 06:55:36'),(166,'2024-0166','Caneca',2,1,1,5,1401.86,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:07:54','2024-03-28 07:07:54'),(167,'2024-0167','Moela assada ou Guizada',2,1,1,5,3738.31,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:13:33','2024-03-28 07:13:33'),(168,'2024-0168','Ginguba torrada',2,1,1,5,467.28,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:15:18','2024-03-28 07:15:18'),(169,'2024-0169','Carangueijo',2,1,1,5,1401.86,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:16:37','2024-03-28 07:16:37'),(170,'2024-0170','Tabua de queijo',2,1,1,5,14953.27,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:19:28','2024-03-28 07:19:28'),(171,'2024-0171','Queijo curado',2,1,1,5,5607.47,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:23:11','2024-03-28 07:23:11'),(172,'2024-0172','Entrecostes grelhado com arroz de cenoura batata fritas e ovo estrelado',2,1,1,5,11214.95,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:32:24','2024-03-28 07:32:24'),(173,'2024-0173','Batata doce ou mandioca',1,1,1,5,1635.51,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,NULL,'2024-03-28 07:50:11','2024-03-28 07:50:11'),(174,'2024-0174','Sapateira',2,1,1,5,14018.69,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-04-03 09:48:49','2024-04-03 10:19:52'),(175,'2024-0175','Teke we',1,1,1,5,457.28,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-04-03 10:12:17','2024-04-04 09:27:13'),(176,'2024-0176','Funje com carne molho de tomate e verdura',2,1,1,5,9345.79,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,1,'2024-04-07 09:43:04','2024-04-07 09:46:02'),(177,'2024-0177','COFFE BREAK',2,1,1,5,794392.52,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-04-08 08:18:59','2024-05-27 06:06:44'),(178,'2024-0178','NETWORKING',1,1,1,5,1588785.05,'null.png','null.png','null.png','1',1,NULL,0,'0','0',NULL,1,1,'2024-05-21 12:31:07','2024-05-22 06:13:11'),(179,'2024-0179','Fatia De Pudim',1,1,1,5,2336.44,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-06-18 09:03:56','2024-06-18 09:10:19'),(180,'2024-0180','Serviço de Alojamento',2,1,1,5,55800,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,NULL,'2024-07-25 07:52:53','2024-07-25 07:52:53');
/*!40000 ALTER TABLE `artigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bancos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(191) NOT NULL,
  `numero` varchar(191) NOT NULL,
  `iban` varchar(191) NOT NULL,
  `swift` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'Banco Fomento de Angola','22839524830001','000600002839524830193','BFA','2024-01-22 08:33:19','2024-03-01 08:38:14');
/*!40000 ALTER TABLE `bancos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` text NOT NULL,
  `status` enum('Pendente','Em Andamento','Resolvido') NOT NULL DEFAULT 'Pendente',
  `criador_id` bigint(20) unsigned NOT NULL,
  `executor_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bugs_criador_id_foreign` (`criador_id`),
  KEY `bugs_executor_id_foreign` (`executor_id`),
  CONSTRAINT `bugs_criador_id_foreign` FOREIGN KEY (`criador_id`) REFERENCES `users` (`id`),
  CONSTRAINT `bugs_executor_id_foreign` FOREIGN KEY (`executor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'0001','Diverso','VERY tired.',1,NULL,NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) unsigned DEFAULT NULL,
  `id_contacto` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_id_endereco_foreign` (`id_endereco`),
  KEY `clientes_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `clientes_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `clientes_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'2024-0001','Consumidor Final','9999999',NULL,NULL,NULL,'null.png',1,1,1,1,NULL,'2024-07-01 09:50:35'),(2,'2024-0002','SINSE','5000306240',NULL,NULL,NULL,'null.png',1,1,2,2,'2024-02-29 10:03:37','2024-07-01 10:03:52'),(3,'2024-0003','Antônia','55500000',NULL,NULL,NULL,'null.png',1,NULL,3,3,'2024-03-05 11:30:17','2024-04-15 13:16:30'),(4,'2024-0004','PROTTEJA SEGUROS','54171666103',NULL,NULL,NULL,'null.png',1,1,4,4,'2024-03-06 10:47:22','2024-07-01 10:24:42'),(5,'2024-0005','Fundação CODESPA','5121042787',NULL,NULL,NULL,'null.png',1,1,5,5,'2024-03-10 05:36:30','2024-03-10 05:37:18'),(6,'2024-0006','GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040',NULL,NULL,NULL,'null.png',1,1,6,6,'2024-03-15 08:16:49','2024-03-22 13:37:39'),(7,'2024-0007','FEDERAÇÃO LUTERANA MUNDIAL - THE LUTHERAN WORLD FEDERATION','5000389382',NULL,NULL,NULL,'null.png',1,1,7,7,'2024-03-25 11:51:10','2024-03-25 11:54:11'),(8,'2024-0008','SANEP - SGPS , S.A','5417626708',NULL,NULL,NULL,'null.png',1,1,8,8,'2024-03-28 12:22:15','2024-05-27 06:06:44'),(9,'2024-0009','AlLVERDE LDA','5402138583',NULL,NULL,NULL,'null.png',1,1,9,9,'2024-03-28 17:39:46','2024-03-28 17:42:10'),(10,'2024-0010','MEGA STOWAGE, LDA','5001614444',NULL,NULL,NULL,'null.png',1,1,10,10,'2024-04-04 09:21:30','2024-04-04 09:25:23'),(11,'2024-0011','salves','3456789',NULL,NULL,NULL,'null.png',1,NULL,16,16,'2024-04-15 09:41:05','2024-04-15 09:41:05'),(12,'2024-0012','salves','234322345',NULL,NULL,NULL,'null.png',1,NULL,17,17,'2024-04-15 09:41:31','2024-04-15 09:41:31'),(13,'2024-0013','AM GRACE INVESTIMENTOS SU','5000136257',NULL,NULL,NULL,'null.png',1,NULL,18,18,'2024-05-28 11:04:52','2024-05-28 11:04:52');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condicoes_pagamentos`
--

DROP TABLE IF EXISTS `condicoes_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condicoes_pagamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condicoes_pagamentos`
--

LOCK TABLES `condicoes_pagamentos` WRITE;
/*!40000 ALTER TABLE `condicoes_pagamentos` DISABLE KEYS */;
INSERT INTO `condicoes_pagamentos` VALUES (1,NULL,'Pronto Pagemento',NULL,NULL,NULL,NULL),(2,NULL,'30 Dias',NULL,NULL,NULL,NULL),(3,NULL,'60 Dias',NULL,NULL,NULL,NULL),(4,NULL,'90 Dias',NULL,NULL,NULL,NULL),(5,NULL,'120 Dias',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `condicoes_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `telemovel` varchar(191) DEFAULT NULL,
  `contacto` varchar(191) DEFAULT NULL,
  `telefone` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `whatsapp` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'944925008','944925008','944925008',NULL,'geral@hoteldompedro.co.ao',NULL,'944925008',NULL,NULL,NULL,'www.hoteldompedro.co.ao',NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'924815729',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'0001','Administração','Administração',1,NULL,NULL),(2,'0001','Gestão','Gestão',1,NULL,NULL),(3,'0001','Vendas','Vendas',1,NULL,NULL);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) NOT NULL,
  `nif` varchar(191) NOT NULL,
  `registo_comercial` varchar(191) DEFAULT NULL,
  `data_fundacao` date NOT NULL,
  `csocial` varchar(191) DEFAULT NULL,
  `representante` varchar(191) NOT NULL,
  `ndi_rep` varchar(191) NOT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) unsigned NOT NULL,
  `id_contacto` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresas_id_endereco_foreign` (`id_endereco`),
  KEY `empresas_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `empresas_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `empresas_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'HOTEL DOM PEDRO','5417270946','5417270946','2021-05-12','10000000','EDWINI GUILHERME','12234',NULL,'1711449001.png',1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(191) DEFAULT NULL,
  `cidade` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Angola','Luanda','Frente ao Aeroporto Doméstico',NULL,NULL),(2,'Angola','Luanda','Maianga – 10 de Dezembro',NULL,NULL),(3,'Angola','Luanda','Aeroporto doméstico',NULL,NULL),(4,'Angola','Luanda','Rua Direita da Estrada da Samba, nª406',NULL,NULL),(5,'Angola','Cunene','Cunene',NULL,NULL),(6,'Angola','LUANDA','Bairro Cassenda - Maianga Rua 8 casa nº 33',NULL,NULL),(7,'Angola','Luanda','Luanda -Talatona',NULL,NULL),(8,'Angola','LUANDA','LUANDA',NULL,NULL),(9,'Angola','Luanda','Luanda -Cazenga',NULL,NULL),(10,'Angola','Luanda','Cassequel',NULL,NULL),(11,'Angola','LUANDA','PATRIOTA-ALCACIOAS',NULL,NULL),(12,'Angola','LUANDA','PATRIOTA-ALCACIOAS',NULL,NULL),(13,'Angola','LUANDA','PATRIOTA-ALCACIOAS',NULL,NULL),(14,'Angola','LUANDA','PATRIOTA-ALCACIOAS',NULL,NULL),(15,'Angola','LUANDA','FTU',NULL,NULL),(16,'Angola','LUANDA','FTU',NULL,NULL),(17,'Angola','LUANDA','FTU',NULL,NULL),(18,'Angola','LUANDA','LUANDA',NULL,NULL);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES (1,'0001','Diverso','THEN--she.',1,NULL,NULL);
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura_recibos`
--

DROP TABLE IF EXISTS `factura_recibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura_recibos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `banco_id` int(11) DEFAULT NULL,
  `total_caixa` decimal(30,0) DEFAULT NULL,
  `total_banco` decimal(30,0) DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_nota` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_recibos_cliente_id_foreign` (`cliente_id`),
  KEY `factura_recibos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `factura_recibos_moeda_id_foreign` (`moeda_id`),
  KEY `factura_recibos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `factura_recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_recibos`
--

LOCK TABLES `factura_recibos` WRITE;
/*!40000 ALTER TABLE `factura_recibos` DISABLE KEYS */;
INSERT INTO `factura_recibos` VALUES (1,'FR 2024/1',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-01 00:00:00','2024-03-04 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,140186.96,0.00,9813.09,0.00,150000.05,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-02 09:30:47','2024-03-02 09:30:47'),(2,'FR 2024/2',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-03 00:00:00','2024-03-03 00:00:00',2,1,10,'Lukenia Coelho',NULL,16355.14,0.00,1144.86,0.00,17500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-03 18:51:45','2024-03-03 19:43:04'),(3,'FR 2024/3',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,11,'Nzumba Paciência',NULL,1869.16,0.00,130.84,0.00,2000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-06 10:14:25','2024-03-06 10:14:25'),(4,'FR 2024/4',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,13,'Bruno Matias',NULL,19626.18,0.00,1373.83,0.00,21000.01,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-06 12:03:52','2024-03-06 12:03:52'),(5,'FR 2024/5',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,13,'Bruno Matias',NULL,934.58,0.00,65.42,0.00,1000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-06 12:09:38','2024-03-06 12:09:38'),(6,'FR 2024/6',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,239720.04,0.00,16780.40,0.00,256500.44,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-06 15:08:29','2024-03-06 15:19:09'),(7,'FR 2024/7',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,213084.48,0.00,14915.91,0.00,228000.39,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-06 15:27:21','2024-03-06 15:38:02'),(8,'FR 2024/8',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,96448.56,0.00,6751.40,0.00,103199.96,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-06 16:00:35','2024-03-06 16:00:35'),(9,'FR 2024/9',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,13,'Bruno Matias',NULL,5233.63,0.00,366.35,0.00,5599.98,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-06 18:42:26','2024-03-06 18:42:26'),(10,'FR 2024/10',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 15:30:07','2024-03-07 00:00:00',1,1,8,'Daniel Chongolola',NULL,13925.24,0.00,974.77,0.00,14900.01,'Ya0oBDBq9MkDXaAfcI/OQQ486oa64IGg4ADc3d9W0duEGmzgsYY+j/CddNbepP34jEO2U7wM6u5yCvU+mNXGk5wGsbfXjtDI54oWt/KZ07jqMno2eEhvnRGZc/PWLB1jDd05ROCQ6138ivVQzBtVayaRKBDjH+iBTt34ZWtNzUs=',1,0,'2024-03-07 13:30:08','2024-03-07 15:42:02'),(11,'FR 2024/10',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 15:30:08','2024-03-07 00:00:00',1,1,8,'Daniel Chongolola',NULL,13925.24,0.00,974.77,0.00,14900.01,'I/nE0CV7Tq3Q6UnNQRR2RDjlwW0zMen1gK8zHHvEex9vMmEZUX+Gg0YaSZL3XiBeen46a2sZohY+lEH+uuSkkHEw4UXA+M7Tz8U+HjiPBpL9ELHhlfiI6cmbxwBBNWM4weJc5YpXj/eOI+aAVEQdiTvX8aST2Lgqf9TVi4MrJoo=',1,0,'2024-03-07 13:30:08','2024-03-07 15:41:02'),(12,'FR 2024/12',4,1,NULL,NULL,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-03-07 17:45:32','2024-03-07 00:00:00',3,1,8,'Daniel Chongolola',NULL,10186.92,0.00,713.08,0.00,10900.00,'QuFtT6IkbciT5uku0n+Vo3AmqVr3aNolsOxMQfQfnJ/jVvcIIboEu5lKcKBeNuy/e4XWGhaQzpbjGMvOxzjZHU2JvdJJcNiJTBaB4hdGUsc44QtMFliv2lL/XE6PL0V9jaRUsTMDsHWnBt3fobkx1ZreuQmDDCg7UakNC8oDhaA=',1,1,'2024-03-07 15:45:32','2024-03-07 15:45:32'),(13,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:21','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'MBUtyxMrIZSUCFVxUrVtK7OZCaSqWD0Na2hSejUpjTVxWXLAFKdF3dxqfTImfyeTp44RDNG1xvUgm1nvGpPudapDBFldBHeojr/NVOOQyHScTKJ1CzOnu89YVtz1B8UC5RTcdDUAAIyUK+CJcRQUWe2Q6WLjgv9hJgF6NdXv/M8=',1,0,'2024-03-07 20:20:22','2024-03-08 09:36:02'),(14,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:21','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'MBUtyxMrIZSUCFVxUrVtK7OZCaSqWD0Na2hSejUpjTVxWXLAFKdF3dxqfTImfyeTp44RDNG1xvUgm1nvGpPudapDBFldBHeojr/NVOOQyHScTKJ1CzOnu89YVtz1B8UC5RTcdDUAAIyUK+CJcRQUWe2Q6WLjgv9hJgF6NdXv/M8=',1,0,'2024-03-07 20:20:22','2024-03-08 09:35:08'),(15,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:22','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'azuDQt1RyusgKRx6WXLLxsKHfe6eij6obn7TyQw7HbwbumxJ+d7iTyGEyPW5/zs7R/S+cDFlyXEPfqdYWe8fvO3H5YdG2nbd8517FUxFPUcQl//F31EPDU8WOoRDHkYfJNacvnR+89PKhtM1NlkOIpFCmxpuWL+GKWR4NJvfX8Q=',1,0,'2024-03-07 20:20:22','2024-03-08 09:33:27'),(16,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:22','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'VfMjRWalnmkWSODu0BtbwJ+opIfjj86RcBORHeh6B8d3XunEFyo9q2/dOW4dEb3NMVACJKrKF409IM350RJ5w0Y8r4cJeF6LSHbdPpwlocFBRWsOZETRzZ9UONeXqabWLuK31xidb6vuFtx9rhC/8btzzCiSmFuMRYKZ0mS5Xmk=',1,0,'2024-03-07 20:20:22','2024-03-08 09:33:11'),(17,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:23','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'DwzyTWF1HRNp+P918Qie9ZhfQMemXGTKM/9ZjSkIC9kIXQj+RiLsSofeZz098/1f/5VoHiPjXeWS8sQy5k4KGcsFLmpzKMvCHhL4i905UtnwCFUTWEvUCd6NtLPDoPrDVbHnBX6iQkYNH8ptEUvPtKu1G4nDAlMC3Ur1MNprhoQ=',1,0,'2024-03-07 20:20:23','2024-03-08 09:32:42'),(18,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:23','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'IO0NxQ2f5hcjxggND6FNJAykiq2kb4MZREJkdTOLyu0kR11l9bMTbbQ0ET1P14/dP4r5hAGO/g+CTHNrDNiJN1zda5aumI0LSmLPddsMMUK1NVLJg44JB7hHgxdEcsLpKj8YMq8fmyTRR0Tz9PUncKAXqJPbr6O7eRjGE/cKrDU=',1,0,'2024-03-07 20:20:23','2024-03-08 09:32:19'),(19,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:23','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'PA/cHb7WkRZgrHjIfwt6jstkoeD0uqvlzfOrhwNXsgZh5ml3m7gutT53dkqbyZiTUgMvdu3+B15+IiT92YLYuaTLLZblWfnxrgFM++slOoh0slnOZ3gO8L2Y2qoyL/ex2gl27erIdfpU4vWispmTCTUnMzKW+D0CaIlJ+Rm9dks=',1,0,'2024-03-07 20:20:23','2024-03-08 09:31:59'),(20,'FR 2024/13',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 22:20:23','2024-03-07 00:00:00',3,1,13,'Bruno Matias',NULL,14953.27,0.00,1046.73,0.00,16000.00,'O3lJkvJvLw1Nlrk1pfBHcilb2F644jA9LV00WdgSUOL+ErlVffOlMB0cs922JuHD5MTaJWW1RyeFgaPz9CdDAQL6g1qm/H33EfW2qtj05/8xQs1TNszeE7JoapRYVgOPp1qeNO9y90WJjvpgB+x1Pr1ci5X3k3xup0qGtG4c2Vg=',1,0,'2024-03-07 20:20:23','2024-03-08 09:31:45'),(21,'FR 2024/21',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 17:00:01','2024-03-08 00:00:00',1,1,11,'Nzumba Paciência',NULL,34028.03,0.00,2171.96,0.00,36199.99,'Mp1V1d74rVxg8QG025dAUHzppJqjru62cYw7otvtarss9pK/NR+hZY4oxECmXxmI7pzAgIihcBkzta6ZvR0hDx/MmdHdmaPVFZqTsHhC008ORLarus1szvND+NnXiFZsDCcHSlKWQqt+2HT8ZSFLqfitxu04FVtfC5yA7TRLAJU=',1,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(22,'FR 2024/22',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 17:16:32','2024-03-08 00:00:00',3,1,11,'Nzumba Paciência',NULL,2336.45,0.00,163.55,0.00,2500.00,'eVE6Iah3kA5XbATF4ZjIgdFtXbKBvyEDMfjN87RDUTfPLi3jmfYy5EdJQObA7kURT84GLEomuCiUfRhtJvB37rr94Mc7HZUXBEWgRqGBhDdRfaXKwlPrEfZkKubuXrPSKdWLsdtAcDUpJKBhnwzEEplmzmb8b+v/Cf8yRLbMu/8=',1,1,'2024-03-08 15:16:32','2024-03-08 15:16:32'),(23,'FR 2024/23',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 21:44:10','2024-03-08 00:00:00',3,1,11,'Nzumba Paciência',NULL,47196.25,0.00,3303.74,0.00,50499.99,'If7X72YMDCHd2to83EOuVenYNf+825YSlCK4sAJPZrvGIdJNqXCTf+NmIL+J24wAFMO4RzLPnpRmzjiJlzS3y94k/1txBAe1nyloI8L+EV84Bsd0UjOGsPluC0iv3lO5uO94rvRhPur9ZWWPM4IMUOHUjGXag4YdR/KpeogoQqs=',1,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(24,'FR 2024/24',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 15:33:07','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,13242.97,0.00,857.01,0.00,14099.98,'DUQCqGApxwuUKp4Rir9qrieb/38AUXBcYOF1yVVkUREW2TitiHsmdbMVPz73BGRo/8GpNJt8E0ywrJGM6DLJ03evOEzQdDB4i0yfcxK57unuyNQEy7rH3/iN3iEoFtMismj4kq0c4ORTSgFSet+vRVDEyg/tZijc5RXkyVrUgF8=',1,1,'2024-03-09 13:33:07','2024-03-09 13:33:07'),(25,'FR 2024/25',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 15:57:29','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,2803.72,0.00,196.26,0.00,2999.98,'UT9d/GfgmPUqQN24iQHKwSNiMhk2cFXNxQtG6A4uLnFeuqXXPBpgiShbbPpKh4cKUVIQqofYojnidfDxZhbv+Vt8qMZW+UVZMnG/3iCUqtVPwSa55tYVhCuj+UItQHiJT9RKJzFZXE/OAi3E7pa4esvBrwBa8VlOI3Ub3NkPgZM=',1,1,'2024-03-09 13:57:30','2024-03-09 13:57:30'),(26,'FR 2024/26',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 16:00:57','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,5794.38,0.00,405.61,0.00,6199.99,'oUPcN4ZbvywkIJUI2y14aQUjLPg/ckOxWtdKMOnJWn1y1JYcJNteG9TITLAdvHQeGDCoWBRTZZ4OSTM57CoAjQPeW+jfKKWDkt66BYYSL40TcGkivZza0UrvkSvk1xBNt7VVy2e81bawvVOAJWFKHQcXOgH09ZL6T7RA3TR17Mo=',1,1,'2024-03-09 14:00:57','2024-03-09 14:00:57'),(27,'FR 2024/26',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 16:00:58','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,5794.38,0.00,405.61,0.00,6199.99,'ZZLt/BJP0XnHQX+91Gt3qxcqpwQs/UEPPpwPpMaIQSRFKBxnt5MN2zxGmkyBCmR2DOyXo4BaLqYcw9i8rzji0kiWhanNeeb7gGUFmcnAxDhy0JBlyaR7mjvANkJ6MzsBiruaBuOp1sILiTHZfSt59yzNTE+ydCsoaQJHfaAgmK0=',1,1,'2024-03-09 14:00:58','2024-03-09 14:00:58'),(28,'FR 2024/26',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 16:01:01','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,5794.38,0.00,405.61,0.00,6199.99,'DbtfbFGk3NqzqhAdob6ZRb76TNra22gTGYfMzZyuWoUWKTDvAaMwE6SQHo4My27q582mV1vyQ5nOh5zKvkjRnFvafWboSW83HnbgH+d+OJ0e17vWqDfwXYWitnIfkGbbNgXGej0ZCzwb5Ozlk1+bYnFf8eqCDtqIkhyvlPR3NaI=',1,0,'2024-03-09 14:01:01','2024-06-05 11:22:56'),(29,'FR 2024/29',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 20:16:32','2024-03-09 00:00:00',3,1,8,'Daniel Chongolola',NULL,4672.89,0.00,327.10,0.00,4999.99,'GqdqTxQjGfTb2vHuwklUrGM7MhOb+ftVsBWpfJXRZ+pDaYEKAra7VkYH6cMj6ou60nFlBmuDTbUeEz5B0/449OKXrLo5BKiNWwzBhdITXJ2ER22gVN1T5MZj4kF+RwCOf+sruVHhI3uRtb/Hfj6YCqucvB2OqRV5Q3+0FX0efLA=',1,1,'2024-03-09 18:16:32','2024-03-09 18:16:32'),(30,'FR 2024/30',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 21:12:43','2024-03-09 00:00:00',1,1,8,'Daniel Chongolola',NULL,13242.97,0.00,857.01,0.00,14099.98,'tFYl+GJv2PZ0R9RdFzO/ndYZqjtI0aaZ8crKVE9ELnP8TF0sD219/xTgWLRu1ozU3lAZ4rGfMj9m+GaJo7LzJEUFfFOxGKj2pLhqHgWBZQERETzhTgyEDqzFopZwaHDTvpN93lGYivjMZDYW0HwmoNpCq1bb0TdWeAYgHd1dVHI=',1,1,'2024-03-09 19:12:44','2024-03-09 19:12:44'),(31,'FR 2024/31',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-09 22:08:22','2024-03-09 00:00:00',1,1,8,'Daniel Chongolola',NULL,2901.86,0.00,203.13,0.00,3104.99,'l2QWstPq8MHhnjD11Uj/zlnnl4wtst+v2BQ3S9jocumUVZKnnMX5XLKbPXkxkiwu58SjX/kYoI2oPKeSX/Wwb33B8QC8lNZUeLAtBrObGssFzEGN1BUyKLCnludKXvC47GsrgGtxqd2qy7SY0bkJiIBvKGwJp6fS321r52PCFno=',1,1,'2024-03-09 20:08:22','2024-03-09 20:08:22'),(32,'FR 2024/32',5,1,NULL,NULL,'Fundação CODESPA','5121042787','Cunene','2024-03-10 07:37:17','2024-03-10 00:00:00',1,1,13,'Bruno Matias',NULL,2803.74,0.00,196.26,0.00,3000.00,'gUBJBVOS40kpgkbHTQABdTecZUGG3mszhRrx7c9uBirQc2qahnJNbOAQUQcPuIh44s7Rfr2DZVVFuTnErGS4B2jEpSJbYgMCW6ZSeWyaaRz+F5ihibKn17zlOz6V1IiwZOtQcYPvpgrvbtQMTwWCpP8tNfI8uQZV3CA93+lwebU=',1,1,'2024-03-10 05:37:18','2024-03-10 05:37:18'),(33,'FR 2024/33',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-10 09:53:28','2024-03-10 00:00:00',1,1,13,'Bruno Matias',NULL,10280.38,0.00,719.63,0.00,11000.01,'QeljxGkePI9+CMINop9meKvoLZ+sfGfOUiW0sr55hcverVrVYsWSiuIWpXIQI24pDw7j8/THjUWj4PSqZWBOqRMjL2xGd8qPbySVndXdX3bHNvO6NWR2rTcMNb8ClsvklDIBGEW9YSCa+37k88f8A9LrAilt0I1WoM73KoBY1Kc=',1,1,'2024-03-10 07:53:29','2024-03-10 07:53:29'),(34,'FR 2024/34',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-13 21:03:52','2024-03-13 00:00:00',3,1,14,'Bruno Agostinho Matias',NULL,26635.50,0.00,1864.49,0.00,28499.99,'VB+ApsfMIXrwoKxWk2W8ehTwRFTzukTVdvMXiwYz/DkuWWMXFtK754cXjsTZVJKRYOosM0phZqj1kohLfoU95TFbagXGav75Y13wdD0/MboZB3E2HS9blwSShUNFV4jkCmA57qUEqyxSjadt79Zf8PBBW7ZRy12Ib1aL5PX8fIo=',1,1,'2024-03-13 19:03:53','2024-03-13 19:03:53'),(35,'FR 2024/35',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-18 12:04:13','2024-03-18 00:00:00',3,1,8,'Daniel Chongolola',NULL,7663.55,0.00,536.45,0.00,8200.00,'ksEmAuW/Y0GOo7DcQvDnQrmbv1shu5T9opKcPK7P3lL7YB1D69RRQ5bnuVby5N7NB740LDHtcJBVSrZobq+Z7XRkrHEDGCaWvKL0vtkcQ5A7AulawvudaKC6eTJbSKLyjLtp/AClkM1jz+63bD2f3gC8n9gNnxUZMkXN6VFMzi8=',1,0,'2024-03-18 10:04:13','2024-03-19 08:55:14'),(36,'FR 2024/36',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-18 12:20:18','2024-03-18 00:00:00',1,1,8,'Daniel Chongolola',NULL,7663.55,0.00,536.45,0.00,8200.00,'LZ7UzQea8qMPrQ0l9Jo0LONuVHqQqIs6JIejOvXj/nb4RG1O55VkZWjQrxeO1bpTCOKG9jz2BsY3SBIIpx/yaV0RdXkUV0Ewp7jjz/L4aNjDRajB/E8G9Wf99QsRFfrI5VWrDFuB4h8AjZvwV7bjaxynVDrqhYtekZ1If7dWlzU=',1,1,'2024-03-18 10:20:18','2024-03-18 10:20:18'),(37,'FR 2024/37',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-19 10:09:46','2024-03-19 00:00:00',1,1,14,'Bruno Agostinho Matias',NULL,6448.61,0.00,451.40,0.00,6900.01,'kUYrLSzkzdwCZVfF7oUxaldBKfVgJo6XIlEjl7oZVPrye+se/xob2AS5KpFpqptgo5nyoHZQKIbNar7/T337h0sFsELswlhi5CehaD9mIsI4AcuQ9+rxSe9HtjT6dapydASvc1/On+hn4MJuT6Vl9IYBl3UMquQdCWrArByEs+M=',1,1,'2024-03-19 08:09:47','2024-03-19 08:09:47'),(38,'FR 2024/38',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-19 13:28:32','2024-03-19 00:00:00',3,1,14,'Bruno Agostinho Matias',NULL,4859.80,0.00,340.19,0.00,5199.99,'WMxMoV5fpAERJO6aZUo7Gn5fqudyeyP15lMMjF+Uahp+GPBBEPEnJEyi92azkgHz9X2U4YYpWSiKNsZFGzANPMm4gyAtib7Dsmt3ZAzaWRsIgajI1oxO/3GcgExpcscxMjBJ7vZbWRD5zCtsLs0Hnqle7dE98wzJgl4Zm7hUUkk=',1,1,'2024-03-19 11:28:32','2024-03-19 11:28:32'),(39,'FR 2024/39',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-19 18:53:34','2024-03-19 00:00:00',1,1,11,'Nzumba Paciência',NULL,14485.98,0.00,1014.02,0.00,15500.00,'g6OPNVQj2HwBxI9Bfl01mm+WgeEjnmudTib24iatEvAyaGF1T9Gc34IQPe26Fgc35VwCap8D2s94eT2T+GzBjULx4cNmGBJyTUPfb95FKhnYgp3YGFs1GSc/8ESLBX4iYoeti8uEAEfnI+bLpoMLl9V7+ycSN3EGzWE2Wg/i6t4=',1,1,'2024-03-19 16:53:34','2024-03-19 16:53:34'),(40,'FR 2024/40',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-19 20:46:44','2024-03-19 00:00:00',1,1,11,'Nzumba Paciência',NULL,1401.87,0.00,98.13,0.00,1500.00,'IqzV0VbwD1zR1jqOCU5nkn371wRw71c8sN8FB8UzwF3KL2Bo8juZuk6x0jev2dL3NnhsINPx3PO2LsYIwcnlEg6JrwrISEiWmAICslw6+VFI7pBd8OzgwBmJ5F7ICvsI1UUhK2D329/qy0NjlvEwolsoTVo04BpdVYGauCCg/l0=',1,1,'2024-03-19 18:46:45','2024-03-19 18:46:45'),(41,'FR 2024/41',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-21 15:57:14','2024-03-21 00:00:00',1,1,8,'Daniel Chongolola',NULL,15084.10,0.00,915.89,0.00,15999.99,'g6mLRD3DxUsNL4RU78IJtjaZWTiEXXMuhRuB6FxX8ipqnh8JeCfC2XN8Ud/FlIEtCpfZAjLnrjpxE5Nh9dCDYgEQRhw+ajXzVKM16VBeLVdqrN5YtRcin5yGbUyISR0JV7WLOah/lWQV4hRWja/s18YW0Jl+22JsbglqH8EuDlg=',1,1,'2024-03-21 13:57:15','2024-03-21 13:57:15'),(42,'FR 2024/42',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-21 16:04:16','2024-03-21 00:00:00',2,1,8,'Daniel Chongolola',NULL,14084.10,0.00,915.89,0.00,14999.99,'Conkx4+C5kIwx7ngw7Ayn0GVWXoMttLH4EO44n07AVQLY1griHlpFCjOeVwySMPP3SGrYAA9eROF3sCfaHaSrALFa1PAzY985INvs6VbAkahxX44y4J7ISkAyVmHRo9Vhg5p9zKKrbRLLV5UBgycQnDMYrXiidtTyXS9p+eZ9KU=',1,1,'2024-03-21 14:04:17','2024-03-21 14:04:17'),(43,'FR 2024/43',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-22 21:48:46','2024-03-22 00:00:00',1,1,11,'Nzumba Paciência',NULL,6542.06,0.00,457.94,0.00,7000.00,'njGlcJzZUKda+JfgoXD4jK/8xY2OWxAlh9Jopoy1JFWq5cPdAmVGGbiAsuf3PrUe+1Zb3l7t7ykHCLXmcupVzkzLpQ0NX+Nr6TQhK/8uiY8Sh6cnzFuXDruIWJvtCLKSU0m9E/wy3PmcZaMaW6ivmquyh2iq62PfOxGe7ZPYrec=',1,1,'2024-03-22 19:48:46','2024-03-22 19:48:46'),(44,'FR 2024/44',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-23 12:46:35','2024-03-23 00:00:00',1,1,11,'Nzumba Paciência',NULL,20841.12,0.00,1458.88,0.00,22300.00,'VnTUjnCO9Da2flhUUFW9TXMkhtps8IEDdZFhf2kiT47YM56yJ2YHewIOud9JL3m53bx90Ies97veWWhnZHRpm5LOaBFf6NYTI1/G33s9KZS5FT5OS8T/66Qv5bc24Pj8nRHNWPTdhrKfM6mrjQDCV/QSIGdeBzbGjAdxgbIRdWA=',1,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(45,'FR 2024/45',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-23 12:53:14','2024-03-23 00:00:00',1,1,11,'Nzumba Paciência',NULL,20841.12,0.00,1458.88,0.00,22300.00,'hhJkE0T8kVoIgOuWEaVFExA3pflQvLCDXAmnNaJo27zszoSvQklFI179FN3aC4Srbhl8zBTAruLxW7B5PjVYvzbdXDK9MOTC/0pPvxvSF/s6SNyCWuT2T+Y1aY5RVmRUBWqs67Ycsa9K1iTFe4qkpN4j0EE7BS16QvoQlw+X9Tg=',1,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(46,'FR 2024/46',7,1,NULL,NULL,'FEDERAÇÃO LUTERANA MUNDIAL - THE LUTHERAN WORLD FEDERATION','5000389382','Luanda -Talatona','2024-03-25 13:54:10','2024-03-25 00:00:00',3,1,8,'Daniel Chongolola',NULL,11214.95,0.00,785.05,0.00,12000.00,'U1aVOPa41uvU4BGOeZW4C6r+/zVya0ETcMQctxxWrikALzNx6/WDyPQGLNfX/IcvGTVxtQSXwUvittHJUiQYLm0ZDdzA/KsVtxLV/T75ijxB1RPRElnoiaO01VL296AD/XeYK37aG9KXqOcDEyIB4QIguuhE/hmCiyUt1D0vSqk=',1,1,'2024-03-25 11:54:11','2024-03-25 11:54:11'),(47,'FR 2024/47',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-27 14:24:44','2024-03-27 00:00:00',3,1,8,'Daniel Chongolola',NULL,25420.56,0.00,1779.44,0.00,27200.00,'XnPSJP5YbfLnAQymTIJ3u7T+MVQNpFikUBYIf0HVAshZKjpP6Wboo94IC/D5aBNsgBCiVwCCL7g9IU11z1O88V2xU35g18AFWUWpZ/tj8/msIRVLIsmJ2ot72zrA5+ZtC3WJ6TCxQ3T0NNXyCovAK57r5hyLm7QKiHrhMLbuQH4=',1,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(48,'FR 2024/48',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-27 19:54:21','2024-03-27 00:00:00',3,1,8,'Daniel Chongolola',NULL,93457.00,0.00,6541.99,0.00,99998.99,'kLYbGbBZBqYakQ5WD0oaSz32VE1tCU/I/6UPGmoP4Im3yotrXPeBUc/AxSKz+SkQnSiwrDV3fTl2OLA4mOPNS1x/7xCFigyPFup59wfgFCOx8XkQbW3s+bfzwv3zWgaBXhgQ45UFIoeXzncdOUH0tbczORhtaGZnbzpxfzIaoSY=',1,1,'2024-03-27 17:54:21','2024-03-27 17:54:21'),(49,'FR 2024/49',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-28 17:28:37','2024-03-28 00:00:00',3,1,21,'Coelho Luís',NULL,8598.13,0.00,601.87,0.00,9200.00,'U3Sf5BbZTzeoyUJgVqN1Eg5y59SGtcoQAWeiQ8AxQLFASsAx4bLoB5CKueCIYBvzjG0XwJ/IeXAeVZ5jooRmWrepAsRL5bOoW+EEJfIlX48PHI6C0kQy/TetUxRwytFjUS3epLoqUR8EADd8mAA8GeLyejUcelUMBzWrguJW2nA=',1,1,'2024-03-28 15:28:37','2024-03-28 15:28:37'),(50,'FR 2024/50',9,1,NULL,NULL,'AlLVERDE LDA','5402138583','Luanda -Cazenga','2024-03-28 19:40:35','2024-03-28 00:00:00',3,1,21,'Coelho Luís',NULL,13551.40,0.00,948.60,0.00,14500.00,'F+TWHBWFfx+WzgK6D+ShuK//8vxB/8esXTgj8fSiW3qsR4nDBqr7fX8oW94Dq/sXnZQURbpM5AgT7YcBxuXjtu7RlNhGuKjWHTWk4piIkkOyR/EY6ohoiYtLVtBz5m/JGBuawYxw65fo3UBUzPD9O/KmUbgsIqTtCSF5yDeeMUo=',1,1,'2024-03-28 17:40:35','2024-03-28 17:40:35'),(51,'FR 2024/51',9,1,NULL,NULL,'AlLVERDE LDA','5402138583','Luanda -Cazenga','2024-03-28 19:42:10','2024-03-28 00:00:00',1,1,21,'Coelho Luís',NULL,1121.50,0.00,78.50,0.00,1200.01,'kZHz7QgJnxo8MerYw3JzkNXP0ak9InAnyiaf/FyMEtBaq7+jumhGCuS3b4RijAn3LoGWqEPZHC/rYz8rPrqxzM0z2Bkh+bEflmsMuL5YFye06T5suhjhTxa7Mz0l3KmVhLunGswuaThzcOj01VGI/c0nbZoF3oyJ/GJW/xUjR8o=',1,1,'2024-03-28 17:42:10','2024-03-28 17:42:10'),(52,'FR 2024/52',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-29 11:43:12','2024-03-29 00:00:00',3,1,21,'Coelho Luís',NULL,7476.64,0.00,523.36,0.00,8000.00,'scDnGR8ihs1SpJIrIB+WAdVD6uRKmVJWc4QV6BdEYLsYGAIq3S6RYEequ2YU9/LtyJHVypg8y6W7EBBfZfHzd0dGXMMHldPwqcncP5ciTNqVb9f+ivxELkej7CbBmFs1EP3foXYiceyQYqi81u2nvc3eAuB6Y1BTKGlk6aNPcJ4=',1,1,'2024-03-29 09:43:12','2024-03-29 09:43:12'),(53,'FR 2024/53',8,1,NULL,NULL,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-03-29 13:02:28','2024-03-30 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,280373.83,0.00,19626.17,0.00,300000.00,'pmWKgp+gq1FdwDiDiovRQIjvbp7zJILInDvvwRcuBRXbrya14C2/PNagm0c6FTZVXsbhsCki69ekFgcQAd/t/j8nX3sRy1i5stU99HBtPuEB3LLNXb5xRpf9K/XyQNsDKlnRv1MsKmZruMKhq3Od2j96v+NaDostrDTdxTJlIo0=',1,0,'2024-03-29 11:02:28','2024-04-01 11:58:01'),(54,'FR 2024/54',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-29 20:53:02','2024-03-29 00:00:00',1,1,8,'Daniel Chongolola',NULL,7476.63,0.00,523.36,0.00,7999.99,'Qhf+osrAd8NrYRnsAnSICgKwj1PF2lQe3JmM6xQQkvmmkUj5FYuNiL79GUZyhnvyXJqPyYLF0UODhZMPdrkkWo1GthcbR27S/5yhnmC4fuHqEfdyeGJSAWHZMhWJxG6O3RzMuUlMS9Flj9qKgTisUBL1rKPakiWFu9nCcgNk3Xc=',1,1,'2024-03-29 18:53:02','2024-03-29 18:53:02'),(55,'FR 2024/55',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-30 10:35:08','2024-03-30 00:00:00',3,1,8,'Daniel Chongolola',NULL,5140.19,0.00,359.81,0.00,5500.00,'ITk28g/K757IuMPiLEN+Z4KTeXHHop6X7/tNT+pBG2W3k2ZN9Sgm2PkTVhkEetdA1gUWBUTGltIFF2YJghT4A9XMVfTMA8KYc/Yhb4DW2mQ7g3+Nh/A8uZiPUbugl0sKm3foUq0aEAEkNWXLhe96sdCikkmParPqtlPKX2Nv1OY=',1,1,'2024-03-30 08:35:09','2024-03-30 08:35:09'),(56,'FR 2024/56',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-30 18:39:50','2024-03-30 00:00:00',1,1,14,'Bruno Agostinho Matias',NULL,1401.87,0.00,98.13,0.00,1500.00,'EQPSTYDqGJlXmheWRwhVPY1m150BItZXlfLePoSFREmjc2TMa4EHfSX9RMWzQisW2pS5XpbDnREpmkcm5kglrD90wCT/UFyvfrbuuAZOWr4UQ2aZO4EZYZTtAYF4nDWwD3QcJvBJPYlG45iyxvgLwe+dGX9y0ZJGsD0hvpzXPjY=',1,1,'2024-03-30 16:39:51','2024-03-30 16:39:51'),(57,'FR 2024/57',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-31 11:43:05','2024-03-31 00:00:00',1,1,8,'Daniel Chongolola',NULL,2336.45,0.00,163.55,0.00,2500.00,'dTnJiYl0ieU0SF0bJq7/VXIVzAxXwSnYvH/pH00LEbUSSMjZSCWr/ySP3ifJKSmgNOK/xZ/rL2u1NNn/kQllODJM2aA9RhS2SLWQw+3Y9KlWwunJQiekcUaqwzWWudZf6iF+OdixJ9yQPyjWXxeCGEyDsdPlMCfgQ87oCQ95YU8=',1,1,'2024-03-31 07:43:06','2024-03-31 07:43:06'),(58,'FR 2024/58',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-01 09:11:50','2024-04-01 00:00:00',1,1,11,'Nzumba Paciência',NULL,2000.00,0.00,0.00,0.00,2000.00,'E+5AbImwKzynV6ajfsWCF0Lt/8PZFUaBMgIJDwwf3tI6/mpRPRfJ57C2lzE2/zHONJjik924wK48LEHqPLix8/3PKgblyIwM9aBEcHUI8m7Y5S4aSZaCi58IJhJ13CL43IqqNEfxpq4HbBqhOWYR3oMRIj4AOLZJzPvij8IPESY=',1,1,'2024-04-01 05:11:50','2024-04-01 05:11:50'),(59,'FR 2024/59',8,1,NULL,NULL,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-04-01 16:52:01','2024-04-01 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,336448.60,0.00,23551.40,0.00,360000.00,'QcvzzwQoZtqX0R/bRc1vRRouBpkpxk0hDIdyL8w7ZV9rq3M3yiWAo3AzjcRbwByxdAn441zJgWW/yOuOeA1ciElb6UrHTVmx0OJi4UfzbgnCwZQav/lYXgAx1TiQqWMABnJNW27DD+IJESJIjZ04dUuAnPC/mFTDt0C+R1kSnyg=',1,1,'2024-04-01 12:52:01','2024-04-01 12:52:01'),(60,'FR 2024/60',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 09:35:02','2024-04-02 00:00:00',1,1,11,'Nzumba Paciência',NULL,2616.82,0.00,183.18,0.00,2800.00,'rX0LgdnuSM5eVRG1DQCr8JCCdzAo4zhx8HDDSBM4wVkSD6NY1V4U6zbRKn86NLbmmG73+5AAYeLISIGA0vMLYmEM/aM6qllzSGBeoBV0xGHp/GWeARGrAH5n20sdoJANe83gq6qZTY42a5AH68lREV/Iv9Y2kwqRS0YyjC8WJD8=',1,1,'2024-04-02 05:35:03','2024-04-02 05:35:03'),(61,'FR 2024/61',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 10:30:37','2024-04-02 00:00:00',1,1,11,'Nzumba Paciência',NULL,3457.94,0.00,242.06,0.00,3700.00,'QNVBpbcLDvaR6+lDArGQL3KlKQP5/JLR5meU8L3LVprGDam8Oz8u7ooeqJRoNKu16cMOLggZCC51Hp56lLh44ypWLHouSq6saJ1KdG328NJUFJqPKrb6NgbLZGTgMT34X0UPJxUO3TCxZ82y5zKllh4WRgIbZpM/N9FLgh08NV8=',1,1,'2024-04-02 06:30:37','2024-04-02 06:30:37'),(62,'FR 2024/62',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 10:31:16','2024-04-02 00:00:00',1,1,11,'Nzumba Paciência',NULL,3457.94,0.00,242.06,0.00,3700.00,'M730Jkx7mmcmZoHscE0/3fIGlr8aWUNN0RMOlgvQjV4VlEy4AhOwZ/VcTYG7JBUQCn346j34z4DriewE7sGUwGPaF2QgubBO+cJStYjdqGuHib8pENg8HYuSnU5ouwv744TpdcXEhkg6aanPcclk6RhUhdtCvcQzV8AZRiPub2s=',1,1,'2024-04-02 06:31:16','2024-04-02 06:31:16'),(63,'FR 2024/63',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 14:13:21','2024-04-02 00:00:00',1,1,11,'Nzumba Paciência',NULL,9999.98,0.00,700.00,0.00,10699.98,'rm3B0kypqyWvOf3tJhmojndOXakmnYsVHSVoCxlyOg7hYiB8x0cJYg5NVZqo/035ccjfioMVMtuMmUYb6TyQNQmqAl2+0ylfQr361PEWyCTPKNUXvJ/DduC/b9gB3tGVEM2+9kgECoyt7yU0yWwN9WzjH6WumbxR89R3PGASBsE=',1,1,'2024-04-02 10:13:22','2024-04-02 10:13:22'),(64,'FR 2024/64',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 16:19:43','2024-04-02 00:00:00',1,1,21,'Coelho Luís',NULL,19439.23,0.00,1360.75,0.00,20799.98,'ljClKyUK8wpiOGhmtWd3V1AHoP6l4WmTU1jTrJrxnOdFnTfUDSl2fYDCC6pFgbrFcsLk4188OxzCiIl2erVMd0+c/6OX5nzgY9Tz88wxcTjQQVXJHIu19Y6V983wvispgkvOoNfCd93vkiu4qfMu+H64u38ep7PiTUgVlsz2E1s=',1,1,'2024-04-02 12:19:44','2024-04-02 12:19:44'),(65,'FR 2024/65',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 16:30:15','2024-04-02 00:00:00',3,1,21,'Coelho Luís',NULL,2243.00,0.00,157.01,0.00,2400.01,'Ds6zhQrkHZ+5//ZDBxfX3qO71GLYCHvIO9pb0v+zocIwed7+usp/u17RnmiPn3a2773vTpLII87Pk33cOsKPJdcxu3fgrr63U0Rp4NqDh1QzXj3XtFUuufJrLxzWStzCqMnYJ27j+MLkfwjLPuxtkPs6OoYY1i7wxfS9fwFijRI=',1,1,'2024-04-02 12:30:15','2024-04-02 12:30:15'),(66,'FR 2024/66',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-02 17:08:37','2024-04-02 00:00:00',1,1,21,'Coelho Luís',NULL,4299.06,0.00,300.93,0.00,4599.99,'YqpbaISGR9jMM7AmmM1JW21+0bew44WgAUwKUrnMlFYGWcxJ9V0k453wvzSmUlcfmZ8eO+eK28o3RbeuM6tKdHqVPQVJ6SFifDuSliUxp7O4hGPFSaTGClaKRswiCfErWS/gzK4eTOYAhFkgbtxzaWN/gyL+D3o8fHYXlYBgcmQ=',1,1,'2024-04-02 13:08:37','2024-04-02 13:08:37'),(67,'FR 2024/67',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 08:16:33','2024-04-03 00:00:00',1,1,11,'Nzumba Paciência',NULL,5607.47,0.00,392.52,0.00,5999.99,'prWO71AymnQV3N1lLEoA6VyYwaFJM+jarN9CA3X7wGqpKapr++ifAXRa78mGp05D0N779IW6if66IUSkX2YyWybpiXYmmyVWGEyhX8yaTGfpvJsrjQwFu1erZaFsGP9us+pgnpNR5dutfW/3nbPJKgJG5aLJEQ1PYOqqWTpfssw=',1,1,'2024-04-03 04:16:33','2024-04-03 04:16:33'),(68,'FR 2024/68',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 08:17:21','2024-04-03 00:00:00',1,1,11,'Nzumba Paciência',NULL,5607.47,0.00,392.52,0.00,5999.99,'sf0jgKcEA4ol4cL8Y+78HBLZIMsbS5sdUzTO3qhmGPBodP+n5+PoAbTBltSVVTKkJSbLofuTV92KGYis2nMYVADDsdkUE8/By/G24SeL1UoDjRHzpizSoJ5iIEZThZAGCDElG9SmxvgJMSnsVGpkGi+LDOvwTOmS2r15Enui7Fc=',1,1,'2024-04-03 04:17:22','2024-04-03 04:17:22'),(69,'FR 2024/69',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 14:17:06','2024-04-03 00:00:00',2,1,8,'Daniel Chongolola',NULL,28951.94,0.00,2026.64,0.00,30978.58,'mRjCp1lS5EEpPt5jwegyl+n1OFtqT1T3mf19zdNKvsbHIvp5fxvvLm3wZjUiRFiF897Qc9yBJzPhfYUHWStHBf/xprC6GIAjCKSptM2wNuTSUdgmJkB/emRCITm74ALASulMzFRqrTiHd/Qv6n5PHMyi0CDXRFkvEWdAcqB1p8I=',1,1,'2024-04-03 10:17:07','2024-04-03 10:17:07'),(70,'FR 2024/70',4,1,NULL,NULL,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-04-03 14:19:52','2024-04-03 00:00:00',2,1,8,'Daniel Chongolola',NULL,28951.94,0.00,2026.64,0.00,30978.58,'tnefznm4muZNd4UrQtQftwa7A8CQ3xvgQt1UfVeiWgefiu/FLs/YWNezs4ng0Ke/xM0acOdmzFHe4IBKA1dK5/D3y1ehCqJNI0gP+87O1c5JRqK123QBCWnqumHBMWbT2FI/fzZM/sSULRiYwaxe01l48coakGgo2mDcUN1TXeY=',1,1,'2024-04-03 10:19:52','2024-04-03 10:19:52'),(71,'FR 2024/71',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 19:17:42','2024-04-03 00:00:00',3,1,8,'Daniel Chongolola',NULL,23738.33,0.00,1661.68,0.00,25400.01,'GAkglkQcOOMcrCPWXguN7SXPUJSL2hiMTYJMXbN/UZ0sjFE0U3E3atJCtleijfyoaA6WorQgHB9G4bSfbMZvwVRS1dmz+TbbYV9nc8qgQs4AWSdBU92uCV/EfyQhuIefsE+a+qa1w0wA3nAz2NsaGovqdRipEM4C9R/aDBaYDtM=',1,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(72,'FR 2024/71',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 19:17:42','2024-04-03 00:00:00',3,1,8,'Daniel Chongolola',NULL,23738.33,0.00,1661.68,0.00,25400.01,'GAkglkQcOOMcrCPWXguN7SXPUJSL2hiMTYJMXbN/UZ0sjFE0U3E3atJCtleijfyoaA6WorQgHB9G4bSfbMZvwVRS1dmz+TbbYV9nc8qgQs4AWSdBU92uCV/EfyQhuIefsE+a+qa1w0wA3nAz2NsaGovqdRipEM4C9R/aDBaYDtM=',1,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(73,'FR 2024/71',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-03 19:17:42','2024-04-03 00:00:00',3,1,8,'Daniel Chongolola',NULL,23738.33,0.00,1661.68,0.00,25400.01,'GAkglkQcOOMcrCPWXguN7SXPUJSL2hiMTYJMXbN/UZ0sjFE0U3E3atJCtleijfyoaA6WorQgHB9G4bSfbMZvwVRS1dmz+TbbYV9nc8qgQs4AWSdBU92uCV/EfyQhuIefsE+a+qa1w0wA3nAz2NsaGovqdRipEM4C9R/aDBaYDtM=',1,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(74,'FR 2024/74',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-04 11:03:02','2024-04-04 00:00:00',1,1,8,'Daniel Chongolola',NULL,7663.55,0.00,536.45,0.00,8200.00,'uF+YKUR/AS3A9qUQoZYqA9eIdLFvEUCJ9TaWR+ydNdD7EvrlxDRPZollLeozVVjPpShoia6LZSkVyIUlCp6d2ZANYkA6bUw2P2S9G9u9p+XP0BvRZv3p24SEV9cIl5IpK6IwxZodbU62JW9EvmIpoGHkGh7FCB5uD4j/QupDabw=',1,1,'2024-04-04 07:03:02','2024-04-04 07:03:02'),(75,'FR 2024/75',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-04 13:12:52','2024-04-04 00:00:00',1,1,8,'Daniel Chongolola',NULL,12596.79,0.00,881.78,0.00,13478.57,'V6lDzexFI8OTeKto4ddylPP7BQV5bM9v0EUn5NExOiCVKv8rtf/pZNwWUndL3mGdMPzs3n1cbgoQrD25C6hVIk3s60PXiSriAi98/X1it+P8lkUfT+hug6SFmOIIae/B2NVBVGiMSBnR3z16tMAr3DUjhFHzzHyRc4KNYEgKV+A=',1,0,'2024-04-04 09:12:52','2024-04-04 09:27:13'),(76,'FR 2024/76',10,1,NULL,NULL,'MEGA STOWAGE, LDA','5001614444','Cassequel','2024-04-04 13:25:23','2024-04-04 00:00:00',1,1,8,'Daniel Chongolola',NULL,12596.79,0.00,881.78,0.00,13478.57,'TJElCJdEsUNJQTuNvyOCTs7KvyFTYGuRJfDHGQEko0sPb/632pEClEUZhHdOmYVttG/M0d4nJJEveWyaKqvYQQEr6zXZlTKu+lTIoNNVcN/PqKfq/MW7aGt6C4Oeauny/hpOENdNZ4njxhtxhEEAiBddRM3oyjnp8zF4i5za9qg=',1,1,'2024-04-04 09:25:23','2024-04-04 09:25:23'),(77,'FR 2024/77',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-05 10:44:49','2024-04-05 00:00:00',1,1,8,'Daniel Chongolola',NULL,10747.65,0.00,752.34,0.00,11499.99,'ei+A4WXgcL/vn9NPkQtDx7zqwar87JhEoTUlMSUuZ6YQI7xNhMdvm8k92uBgRogZl8X6Tk4AULjL5K6s9OrrUYLRygu+PnEPHgviNbn/8QU/VzVPBENzQ6tr2XGKuTbF7bTXVohO+stz8TdAgwZ9/cB7CNwAO067YoxOnztrS+0=',1,1,'2024-04-05 06:44:49','2024-04-05 06:44:49'),(78,'FR 2024/78',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-05 10:46:41','2024-04-05 00:00:00',2,1,8,'Daniel Chongolola',NULL,10747.65,0.00,752.34,0.00,11499.99,'UbpPevQc2+Ru0SXrotHhjcEoTppnoqLA19qMIiJrEHf8qpq/+5R3GgA0kG8md7O5a5UNSUYu/oOYkklPO3NEgZlF3HtncgILwsglspD8ZFEacR8HqMHl1eRbIH3dn62nmFAskorQnkSnh2HFpKvRofOk253BwW0eXUqR5gNKNvQ=',1,1,'2024-04-05 06:46:41','2024-04-05 06:46:41'),(79,'FR 2024/79',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-05 13:31:30','2024-04-05 00:00:00',3,1,8,'Daniel Chongolola',NULL,7476.64,0.00,523.36,0.00,8000.00,'Jn9kXKpI8J3o8BokF3tTNp6o+9PHYYbPOOLv9e2sI3RSWMeiIg7A7AvYj9I9xaxrjkRsgeumrYdl79cHdzOY/1h05hUXWTI06yKcsQct5cFpL4ydl+kvahev6lTi1FJbiCLdDzj8Ep1I6+h4+BZXIkMd65PQiLLoXF7aAj/YHrU=',1,1,'2024-04-05 09:31:30','2024-04-05 09:31:30'),(80,'FR 2024/80',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-05 13:40:58','2024-04-05 00:00:00',1,1,8,'Daniel Chongolola',NULL,1121.50,0.00,78.50,0.00,1200.01,'L1fOtkWsnyU0ZgcBRTCGBJgxINnzmzzbVqtRDupMMqDHvmvc77vDJK9TNf9/ZYZRhyGNXV3KKGXP6igzHN+coDLu2Dsq74Rd7u577IZv21uqQSOWm6vvCmjTxa3SXZA4CrPHIwxnGKoC4bx2qKuQyfw1MIOhh+7lyB0zBFumK20=',1,1,'2024-04-05 09:40:58','2024-04-05 09:40:58'),(81,'FR 2024/81',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-06 08:14:25','2024-04-06 00:00:00',1,1,21,'Coelho Luís',NULL,16822.41,0.00,1177.57,0.00,17999.98,'YyYyWwlDDFsGNjXXL9LaaZG80/vhWgRFUE8YT68f7W/sWWgcrbUEW5qKaZ/FTT3hZx/jy6B2T+BXmAIqdLBKn87uEudJVpDvyO6huY8IcDngS9Y9ZowMBytUVScUkQem7UJZQH4vnqiZSkKHdUXdvBKaP7Nvk11+1ygBjt6xLn4=',1,1,'2024-04-06 04:14:26','2024-04-06 04:14:26'),(82,'FR 2024/82',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-06 09:33:26','2024-04-06 00:00:00',1,1,21,'Coelho Luís',NULL,7238.32,0.00,261.68,0.00,7500.00,'OkfVc225OI3IrpXJZSDYjGR5ke7K9zhcRSv8fhWOfUpiJZBXd5XdBBPc4rez6hl9DAcru2RzxU92bAJmfmbfLDS+LZiz/NhGRCKRzdLdPfLGfB/Cn36mKpcSUNSTMDyZejgh7U6ZcbbvoIruYLCViF4x2alNWkb1cCZ1ynnODEc=',1,1,'2024-04-06 05:33:27','2024-04-06 05:33:27'),(83,'FR 2024/83',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 10:30:04','2024-04-07 00:00:00',4,1,21,'Coelho Luís',NULL,14018.69,0.00,981.31,0.00,15000.00,'c4MmROujlFeVOM2/w1Vi4akuzgL8LX0ysO12mKhrCIUzccpcgniXmWcX4UQHx/eShixHS5KflyfrtEssv9AhMNkpg5WBlvB5RpJIMNnM8fhGDFhhh6zB3fuuPNxaPlaiJ8lsP35wrjeQ+G3lCg9KYFWR/H4saYroJhrUsG9YR04=',1,1,'2024-04-07 06:30:05','2024-04-07 06:30:05'),(84,'FR 2024/84',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 10:48:14','2024-04-07 00:00:00',3,1,21,'Coelho Luís',NULL,7009.33,0.00,490.65,0.00,7499.98,'pZvsNb4Gg+wgWYpH/r4Qja3diQ1iD+LgRfEdpOnTU9/FjECwzVvp2PhdwOM4PZx7Kz7MFmCeJw4rewv2oWai4Q2Qwm03TgxhCxP5X/AY9FBSXz93oG6JP4jxJx4GDHPgRNunJJVJXaOqwAFiJqGtmjxhwcZ/Fp2HM6oj4Xc7mSI=',1,0,'2024-04-07 06:48:14','2024-04-07 07:45:44'),(85,'FR 2024/85',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 11:05:09','2024-04-07 00:00:00',1,1,21,'Coelho Luís',NULL,11775.67,0.00,824.30,0.00,12599.97,'uCZ/By6MZECcvzinpultYxTwYaN4IARLW+hgO38pEowXeScKILy52lkE8mTysvCS8i6v+DGhkS9M5Ef8PX33E7xD1tpkBfGV1ZiCYogD7mslR05zt0j/cTGuqftgClabOG9dcUH+0cWaPCwgp2RxPTXvwqm80xdpM5HER65Oy3E=',1,1,'2024-04-07 07:05:09','2024-04-07 07:05:09'),(86,'FR 2024/86',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 13:46:01','2024-04-07 00:00:00',3,1,21,'Coelho Luís',NULL,11775.69,0.00,824.30,0.00,12599.99,'VFEQYeXI65OR3m0qapj84fOc3TI2FyH5M5/iwY/ymd+AgeS+whHvO9bn67bugiY7vkNysEmkeA2s+jvJzHvy0lSb1URNQRQW5GQzQYJh2RRfjkWU+95WPTIcvkpdJZesJqDbngxV0kHPH7LDL/fJw84x2m6uaTbqNoocSnEgI/Q=',1,1,'2024-04-07 09:46:01','2024-04-07 09:46:01'),(87,'FR 2024/87',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 18:30:07','2024-04-07 00:00:00',1,1,11,'Nzumba Paciência',NULL,1121.50,0.00,78.50,0.00,1200.01,'UvbxiPLW502BMQWO+BWJMkXwfhEaHomOowtzcc+NXfPNuiJJ4IeSUUwVtwepT9wYAFPzekTUP4QNbDGKJv/NhuitaKyirviMQG+amJ+OFdtP7hVwm9X1zz7zt31Y50FE5w7Qi4VfrWuC2sFJ1AGqt3aA48eHfdV1AbBbTCd43lg=',1,1,'2024-04-07 14:30:07','2024-04-07 14:30:07'),(88,'FR 2024/88',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 19:01:54','2024-04-07 00:00:00',1,1,11,'Nzumba Paciência',NULL,12616.82,0.00,883.18,0.00,13500.00,'j8Lzf3z2M0/DwIXYamzVvUYwDCcqSJ5OJfa2Pxcio2NB4WTAi9vXiUTvPxk6GvAHE3Cs3GLlbFXMN58nhuHAEnH3Mlwu99xxjOvqGgCVwRi0lnqr41pgGVsqeVouOk1/4toptTbphn7Y242URVngu7xHNz3M2Y/Sn0qw6eEIep4=',1,1,'2024-04-07 15:01:54','2024-04-07 15:01:54'),(89,'FR 2024/89',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-08 11:55:55','2024-04-08 00:00:00',3,1,21,'Coelho Luís',NULL,25233.66,0.00,1766.36,0.00,27000.02,'C/wXbDrLnRBKqJu6ZhccnghV1kNBxsT75ycC8HQou32KDI52/yWNpNjxkULBj1qUCc1ZUMSoYbXaXtwH6Dnq3gwOi/qt0T0Qm3wubE1S24vqULWBQNcx++t5qge+s3Op5FzE+HqSMT2PkaCXLxv2gHK91XpRn3j0Do8WRrKxjbQ=',1,1,'2024-04-08 07:55:55','2024-04-08 07:55:55'),(90,'FR 2024/90',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-08 14:11:52','2024-04-08 00:00:00',3,1,14,'Bruno Agostinho Matias',NULL,5794.38,0.00,405.61,0.00,6199.99,'qF4jag64d79AIZWNslrc0pDdzx3ATBJspsbWwG5+N+M5aZ6C1UoUC74PLaUu/e/bwnr1+mffNtTPD7S2mWlrJ38aTeiwtb3vwZsWjLzLwTOLUQAqdG1+aCaFtTb9c5tyCcIANyXYRvnKLrqxC07xEBadl7XP5CRQlPMDUQ6pOVk=',1,1,'2024-04-08 10:11:52','2024-04-08 10:11:52'),(91,'FR 2024/91',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-08 17:54:14','2024-04-08 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,2336.45,0.00,163.55,0.00,2500.00,'TNI0hRjZ6BcMCJjqBDukT8mY9TCTUhCP7G6PfCQObuSUT/qGXtsa+l3wS6b3XscEwKbJycXynmhDHyQz5YSd7nJ/tMTi2NZY+5ez1I8dEE9RfvtlYSCEIyJl9hQiY3Xed1SufEkuUaBBUZgi6S/Vwj5TA6DQ7UqqOVVbQ8ibCbc=',1,1,'2024-04-08 13:54:14','2024-04-08 13:54:14'),(92,'FR 2024/92',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 13:21:43','2024-04-09 00:00:00',1,1,11,'Nzumba Paciência',NULL,5794.39,0.00,405.61,0.00,6200.00,'ri3q533QyaCjHg6SS6aFsc13BVIKZxmWxf55pOvOUukIpeH0bElfxccJD83PATptELK74DO0Ihxq1WnymPeZGx4WSUtJ2JX6IvziFsyD9mTTYPtE3MZma0Q9i9bqccK0j/VXfBVC3vIla5NnTWhP/ZF1iUA2sGlQFkku2j7S7/g=',1,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(93,'FR 2024/92',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 13:21:43','2024-04-09 00:00:00',1,1,11,'Nzumba Paciência',NULL,5794.39,0.00,405.61,0.00,6200.00,'ri3q533QyaCjHg6SS6aFsc13BVIKZxmWxf55pOvOUukIpeH0bElfxccJD83PATptELK74DO0Ihxq1WnymPeZGx4WSUtJ2JX6IvziFsyD9mTTYPtE3MZma0Q9i9bqccK0j/VXfBVC3vIla5NnTWhP/ZF1iUA2sGlQFkku2j7S7/g=',1,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(94,'FR 2024/94',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 13:26:35','2024-04-09 00:00:00',1,1,11,'Nzumba Paciência',NULL,2990.66,0.00,209.35,0.00,3200.01,'XpRZ3LnIAL1k4lBOVrTOesDRRkNCxArlcgnenmgU5a0eaz34iW6U07hVfRZhxcF3UypZ0ZtyNFkkIAaBnLL3uKX/p8d249RYJMLPG9v+TqSC1J2vNIJkvCKzTNdkexArEQ6nFzH/AqWm6U4ikYUKszAIxixoRXFOJEE0W+0Awho=',1,1,'2024-04-09 09:26:36','2024-04-09 09:26:36'),(95,'FR 2024/95',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 14:19:37','2024-04-09 00:00:00',1,1,11,'Nzumba Paciência',NULL,14018.68,0.00,981.31,0.00,14999.99,'YZGEvzp2g7x7CtYqIKIPhkNUT42z8UztNJBjvw1vf76mDSK2RtmTWbVb+pJmb8xkOw2cqv9OdCR3z+B1zH4F0IhRBuD0uzx2ZBgnrqwAM1WOXEgdxRITX/8aQXA2jgbXfT36PAiG0l2sKC4862RVZ2ITpJmqgZZLyfPe+JHBuaU=',1,1,'2024-04-09 10:19:37','2024-04-09 10:19:37'),(96,'FR 2024/96',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 14:51:25','2024-04-09 00:00:00',1,1,11,'Nzumba Paciência',NULL,9345.77,0.00,654.20,0.00,9999.97,'KzuEw63DV33l2f1wGHq/TkzDZVZP3+PYmKgI0yaPTZl1ucpk8sl/eUdv0OH9RMgxqUDyXnok4MiNk4CwMkb0uHdiLioJJ66QxOmjH+EFN9H26HkN/xlYdaCTMuiT28ZzWYF7+/JR75HDJf4zwr/XSwrgcLvnYdW+ZuCdHrwkQnU=',1,1,'2024-04-09 10:51:26','2024-04-09 10:51:26'),(97,'FR 2024/97',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 16:20:10','2024-04-09 00:00:00',1,1,21,'Coelho Luís',NULL,4205.61,0.00,294.39,0.00,4500.00,'CY6+V9XUT2Rx9V8bnWDR8RFIe1yAfgO6dmhIhddIB9jk8riVhMA/S76JWT5tnxQ7GrUh99clB4vrwXAMdQWoiE4WT3f+30RdPUlf5YdC/6MIW4NQmxJ+4LCyH64NA+DMWwa3kPrtl3vIiyO/IBMZOhb9Zt4GYjJZg3YfXv2trcw=',1,1,'2024-04-09 12:20:10','2024-04-09 12:20:10'),(98,'FR 2024/98',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-09 18:41:40','2024-04-09 00:00:00',3,1,21,'Coelho Luís',NULL,42990.64,0.00,3009.34,0.00,45999.98,'R1bpRjSkCE7L6SlX96WyNhWqOdYQaGp60hoC2RfJAgZ0TI28/FZoh7qZxThwY78+ArMQM4HpfD1oHAjaLd7h20foxtEwPmYS0NtrZ9cTd35WSe7AtAZt+sLDgYPM0rgbYFmNahkYbtDiPOenWhYm56nKAgIjGb1kn8F7egOJ0OE=',1,1,'2024-04-09 14:41:41','2024-04-09 14:41:41'),(99,'FR 2024/99',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-10 09:30:56','2024-04-10 00:00:00',1,1,11,'Nzumba Paciência',NULL,6771.03,0.00,228.97,0.00,7000.00,'eTVa/oKjT8qABnyJmUbCDJ5mPJeM2JGeGRJB32oHeh+UCCwrDayiaSbdjBVq3cugLIP1wKXfi0gZXJ/dCOc8tfrE9q3wSmDHjlacBY8o5o+iKJneqSkRQ8BhNgHmkVDWZ8YPuYVDEDaMUMwRyWJFp+tFxZ9InCWZWYU9ClPyaJk=',1,1,'2024-04-10 05:30:56','2024-04-10 05:30:56'),(100,'FR 2024/100',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-10 09:40:03','2024-04-10 00:00:00',1,1,11,'Nzumba Paciência',NULL,2803.74,0.00,196.26,0.00,3000.00,'MxJcGZe65YFy6ITTuVezn0oRDHGaWzVQpCKnYALr9jt+PHGMj9KpSYx8b3HRc2XRVNbFDr7dlynNcN6FUiPSv/KFcWDAnXBknC5xDucL5Xa7v2j420iSqH+fgsyMEKYsMCOE717rJcb8Ov8H7N8lOBpBOU5Gl40N/ChNwj97gh0=',1,1,'2024-04-10 05:40:03','2024-04-10 05:40:03'),(101,'FR 2024/101',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-10 10:46:34','2024-04-10 00:00:00',1,1,11,'Nzumba Paciência',NULL,3500.00,0.00,0.00,0.00,3500.00,'gI/ijXoFEBybt+Fr0W27C2syydZ13DQHnO2ghtWuriL2tDYmGVfP+L6IjVYcaM20XgbHI6HoydcpKYddy8SlL1eHLjEQoatxery8+pnn1a1v7P152j9lirNSl5phVVNG9HoErQ+EKDKC2j+xXdhzt46kDjtlHQJjmrXweLtoIkM=',1,1,'2024-04-10 06:46:34','2024-04-10 06:46:34'),(102,'FR 2024/102',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-10 10:51:24','2024-04-10 00:00:00',1,1,11,'Nzumba Paciência',NULL,29345.77,0.00,2054.20,0.00,31399.97,'cKfKc7uJCFLO0GFdQvnQm/9ONydLZC5DdSthsufbpGYoeKsKelLC1VD/G8SwMaLIsJhQPW9KlceJ9tRj3+8bYX6Sq2170rKVGpHlqdC+dMR4rhZmjIiz3qoko7eB3rCbttrsxGFzg+3eBfk2wh/yHJDHnhGfRt4aiKlqvZ8JNjg=',1,1,'2024-04-10 06:51:24','2024-04-10 06:51:24'),(103,'FR 2024/103',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-05-08 13:05:40','2024-05-08 00:00:00',1,1,1,'Administrador',NULL,30586.32,308.92,2141.04,0.00,32418.44,'AEM3JeGCWnljwh01Vj9EMuBYU/BUhwXRdbboZHX1IC4lMKfmRTx6MkA3529PiBT8gbqAhMk/5/aBaWUMen5X6QHAf2Z9zfyXCzezWH7RlKnEToCoNqpOt5aviBkyS0TL1dMBJIngmQZ/9vCGXZ1gjAbVNhBX18GFUNQXUpWEjFI=',1,1,'2024-05-08 11:05:41','2024-05-08 11:05:41'),(104,'FR 2024/104',4,1,1000,10000,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-05-16 13:14:03','2024-05-16 00:00:00',4,1,1,'Administrador',NULL,11214.90,0.00,785.04,0.00,11999.94,'pNRu/IPqs5xsqVu1do//cpolOq3Sq0VXBt2koRIesUZkuxsMGvk3H4Xl8auOtsYN19JE/Peq2xfd/2BCs4N+Kzh+a0gl6WylnJ/GiHbKgqOb/cTyhiOW2ip+SH2dO8ePK/FpfpM4J7lFw+ktP8ewfRq4ECZFZd7VZJXl3gGU4Yw=',1,1,'2024-05-16 11:14:04','2024-05-16 11:14:04'),(105,'FR 2024/105',2,1,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-05-20 10:19:06','2024-05-06 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,5140.19,0.00,359.81,0.00,5500.00,'r42iTIaTeFCMEzePnQ4sYiVgzRji4UE5Jm50dYc43aGU5e1lt9JYzf+CgV+i9WIxCBXIXfBAuwTnI7aqpSUVbBidOLsx57XHb++VihSpdZJZRnguXvAjrNjhifkA3wOKCS+GZfrIldip49DVbGxhi9Ed0b1xbcme/W+HO2G4pTs=',1,0,'2024-05-20 08:19:07','2024-05-20 08:21:41'),(106,'FR 2024/106',8,1,NULL,NULL,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-05-27 08:03:48','2024-05-27 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,794392.52,0.00,55607.48,0.00,850000.00,'V9dvzik6e+fVlxzO5+RwpphrItHa0LCua7Zynzyr5nBYUM0oSnTH46laZIijXlVEqiruMRJuK3mjcRK97y9tnukWwLQZExEwmxWH1pkPz/B22bGH5bqk2fAoYc0WIkWvG6/HoaqgrTqgO0nV7SNwZqlorBO5tvHCR4PFnqGJl4s=',1,0,'2024-05-27 06:03:48','2024-05-27 06:04:57'),(107,'FR 2024/107',2,1,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-06-18 11:10:18','2024-06-01 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,83429.90,0.00,5770.09,0.00,89199.99,'tfmg6e0vIrn279QeQUnk77QsGUlNeYn8euyCmbRBsEGduDJiPodYc0s/4le0fAwFu1JmMVq3QVjPRZKA2L6Sq/R4zdBMPpa7lyWOxSgro0lY2pmuu0JYkjHYAlPKk+njFvoc6DCmTBAC3LoajaU4QHAdVMDmAAEVifz4SwGK1po=',1,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(108,'FR 2024/108',1,1,NULL,NULL,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-07-01 08:50:33','2024-07-01 00:00:00',2,1,1,'Administrador',NULL,1401.87,0.00,98.13,0.00,1500.00,'i2KRsSuEqqkvsxN+q+tGwmLlY7HIbDTv5ReOvBFa7WGZRq4pKNchVikhK++VDTpnnL+IHuRl6HUt9pEZepRukR1txIq5eaYRpbKuwgF2bnuho8JkUgkgnPZMduqBf6TRiHVGPc8Ed/4JzPpPSOUWZfD2d5DTptrNwl+FsLmeDK0=',1,1,'2024-07-01 06:50:33','2024-07-01 06:50:33'),(109,'FR 2024/109',1,1,14000,50000,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-07-01 11:50:35',NULL,4,1,5,'FERNANDO  QUENGO',NULL,59812.99,0.00,4186.91,0.00,63999.90,'qi3ZY2xjI2YVdXyU9iW6XFBuy1n661BJRwT4Jcnmwt0ug1KPVNooBc8edLgsh8pg+wed5t86owz4f6Mo8RWuN+500UX/yps3fGUPIO0GGALeeRvfnmqi85vavh92vhETYI3Jgy9wk4lMzFMCRtj61/HdhieUQuGvHtfZHQSBZt0=',1,1,'2024-07-01 09:50:35','2024-07-01 09:50:35'),(110,'FR 2024/110',4,1,NULL,NULL,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-07-01 12:24:42','2024-07-01 00:00:00',3,1,5,'FERNANDO  QUENGO',NULL,1401.87,0.00,98.13,0.00,1500.00,'F0UXviuhsdIW79MAH9uvgaZDrkxNYC7lURjxOLzFOOMvm2xUCGuN09z8Sxf4oUjrf3fbZe3zelluxN2DpZfxfJyz7CXmFZ8PyyYc1QjXHDnI6nCqe+LrlWWQwd2RBII8JV3hVVNuYGrAmqhIUsCKLSCxp/TyH5+FF9Qc+WQo38o=',1,1,'2024-07-01 10:24:42','2024-07-01 10:24:42');
/*!40000 ALTER TABLE `factura_recibos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `banco_id` int(11) DEFAULT NULL,
  `total_caixa` decimal(30,0) DEFAULT NULL,
  `total_banco` decimal(30,0) DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `total_pendente` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `documento_numero` varchar(191) DEFAULT NULL,
  `is_recibo` tinyint(1) DEFAULT NULL,
  `is_nota` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facturas_cliente_id_foreign` (`cliente_id`),
  KEY `facturas_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `facturas_moeda_id_foreign` (`moeda_id`),
  KEY `facturas_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `facturas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `facturas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `facturas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'FT 2024/1',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-02 00:00:00','2024-03-02 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,105140.22,0.00,7359.82,0.00,112500.04,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,7,'PP 2024/7',1,1,'2024-03-02 08:23:21','2024-03-02 08:34:17'),(2,'FT 2024/2',1,NULL,NULL,NULL,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-05 00:00:00','2024-03-05 00:00:00',1,1,1,'Administrador',NULL,13551.40,0.00,948.60,0.00,14500.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,15,'PP 2024/13',0,1,'2024-03-05 11:37:56','2024-03-05 11:38:29'),(3,'FT 2024/3',4,NULL,NULL,NULL,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-03-06 00:00:00','2024-03-06 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,747664.00,0.00,52336.48,0.00,800000.48,0.48,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-06 11:53:07','2024-03-13 09:26:59'),(4,'FT 2024/4',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-06 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,248130.90,0.00,17369.16,0.00,265500.06,265500.06,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,11,'PP 2024/11',1,0,'2024-03-06 14:52:39','2024-03-08 09:37:59'),(5,'FT 2024/5',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,239720.04,0.00,16780.40,0.00,256500.44,256500.44,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,0,'2024-03-06 15:07:17','2024-03-08 09:34:48'),(6,'FT 2024/6',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-07 16:35:34','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,264672.96,0.00,18527.11,0.00,283200.07,0.00,'tyWAaTmM/QMfAbjk0VN4+U2uXCEz6oPV0zDmbr2r8dmlM8CGKvqtq583GZZ+esWIg2ODdKGEpKvGhREFcRxepY4OVSnQIRYhCdBeO6DrycwTFPcm9LA19gNRpdo1AumOA2ZI10kniVCFXz0UWXNkK1MRxJWZFUTI/9qeRUefmoU=',1,12,'PP 2024/12',0,1,'2024-03-07 14:35:34','2024-03-07 14:38:11'),(7,'FT 2024/7',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-14 16:34:44','2024-03-14 00:00:00',1,1,5,'FERNANDO  QUENGO','SR. ALBANO MUHONGO',181962.55,0.00,12737.38,0.00,194699.93,194699.93,'XPBXuY79hAzdAhtIdz1zMO946zW4jPR52da2FpxKV4sj6Y6Sv1+YqrlzNChKFFE4VNfuOK/EOIzS4fD3lvBQ+JA5tyN372XYrBja8Gix8Y8pap3PlZKwkjNeWrt9L/ImhiE1klO9zOoS1DA2QhMu2sw9ukP1x6zZ3Ktn9ZA0iPo=',1,20,'PP 2024/20',1,1,'2024-03-14 14:34:44','2024-03-14 14:34:44'),(8,'FT 2024/8',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-15 16:29:25','2024-03-15 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,192897.12,0.00,13502.80,0.00,206399.92,0.00,'i2CTDKRAJE79WFwVpOAhuQDL9g7mzCEgyhs8LYonFpYLJqjhIxCwY1XBJLou4NrZXJZQKZwbohuGZ1PcSTdlql4ahmhZZHjNlXZj8nk7N70Ms4mAT+ZmnYxPQSwGjNmNqv0E99Eii/83eZ5+pAhO+VnTCuIQRUYhF7julSxzsuc=',1,18,'PP 2024/18',0,1,'2024-03-15 14:29:26','2024-03-15 14:31:19'),(9,'FT 2024/9',6,1,NULL,NULL,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-22 14:49:16','2024-03-18 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,199439.24,0.00,13960.75,0.00,213399.99,213399.99,'Y9Ze1VNnUlgXQlEQiKGL373G0aA0x1IJw0I9zU6IRpC9si1jelP4Jhk2yjRc4b7/QXVReyHgR/4thlLqNX7Zo7TnR4F64HATL8VdjCek42BdgAU5f+7Eg+qrywN9Ce40qTB0kNfvBuFmsmYcORCqLi3fnTcMd1ncX1O8y9b2gfE=',1,NULL,NULL,1,0,'2024-03-22 12:49:16','2024-03-22 12:50:43'),(10,'FT 2024/10',6,1,NULL,NULL,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-22 15:05:35','2024-03-22 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,228224.30,0.00,15975.70,0.00,244200.00,244200.00,'pcAS5wZlLWpaAPNvQLD16LPAqUs/5v3uoS/yuUNR5DTQOFqhUNbdpRE0qw4eF5poCIiAHZAzxLQhVSdicIJSpowBSFO0P4r6Vfwogxw5taPfuV8HZtl56Gr/RmIMfvTJuWDXFCqKAk5V8web8TECTcZR7x3Dvh2fH06CB/+F5E4=',1,NULL,NULL,1,0,'2024-03-22 13:05:35','2024-03-22 13:32:17'),(11,'FT 2024/11',6,1,NULL,NULL,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-22 15:37:39','2024-03-18 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,270280.37,0.00,18919.63,0.00,289200.00,289200.00,'VlQH1Tjck+8RN0ZWYk4nJVYdE/CJShbAoPGJV4fGUVY94qJ/spCAisP52HNSaMykDqDQQhH340HMg4eC7H2blPBdQ/nJ/NauKdO/N+BRDdeJ3L9xan/s+1iNhgFymOWbNxYqHsc4VZWsASd/zQncswp7jsAG2fZ0zOPtKspRkQY=',1,NULL,NULL,1,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(12,'FT 2024/12',8,1,NULL,NULL,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-04-09 08:48:28','2024-04-09 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,336449.52,0.00,23551.47,0.00,360000.99,0.99,'Uqc/lcqfx1aO+3VD5dGpAP/CtCh8mvnzyd0eJwm8cxqLfc4XkO9R7ZamYwmCAhgQu9BDFACad1v5GC+JqSvcr1+hOl5+IRE3uTzacbdpnrOAM7cVkr6aQfvS0Octy3QWFRytxpVV2aMOde4VYCTCPKGQSuy8VeBkxqQstyhcSHM=',1,NULL,NULL,1,1,'2024-04-09 04:48:28','2024-04-10 04:34:38'),(13,'FT 2024/13',2,1,500,100,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-04-10 12:02:40','2024-04-10 00:00:00',4,1,1,'Administrador',NULL,934.58,0.00,65.42,0.00,1000.00,1000.00,'uHVAOQMNOksbhaRNL43YsCJOku8QAioAW+g1/qlUqIj51iQHxtbm3NqEilYurloVshu5QbE9R2K3QFpyrXl34pqirvnJcCFRefLyLM+YVd96DSuCZM+Z4j7JZmWxuQVjmYt/hNTO1cVSEap+hkdlBAIYoSy21qpodiAG8pyUys4=',1,NULL,NULL,1,1,'2024-04-10 09:02:40','2024-04-10 09:02:40'),(14,'FT 2024/14',4,1,NULL,NULL,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-05-22 08:13:11','2024-05-22 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,1588785.05,0.00,111214.95,0.00,1700000.00,1700000.00,'kNEYG0CkjPRMtrrNrEYykjin3JWoXnLTFv5Dyjg0Raw0X7RgQcDKq8NLdIk0VV+QW8fcB0O9fyWzn7+r72jVxTiuy8soE9SDGL+d8SqHUkg0eJNoD8mEdi2fsmHOup/mm9V9QwoT0/i6FYqBedhcbtXcg1DXRXhSWYZSkP2cLRk=',1,NULL,NULL,1,1,'2024-05-22 06:13:11','2024-05-22 06:13:11'),(15,'FT 2024/15',8,1,NULL,NULL,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-05-27 08:06:44','2024-05-27 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,794392.52,0.00,55607.48,0.00,850000.00,850000.00,'k9eKjNjBQVCAUX4tfvIXWQRWevO8HYxATMTnxLa74vEzY5wPb2uzpZ9GYRMzTp8lxVskIakgKFMUDu+LhuswLfT9QwmzXJM0mKYxXXxudVdi8N38IOqDi0pZHOiKUZhsWrTyNx4NzOZdunMOuarqj42frE9y0mlCpa4F0WKZYCo=',1,NULL,NULL,1,1,'2024-05-27 06:06:44','2024-05-27 06:06:44'),(16,'FT 2024/16',2,NULL,NULL,NULL,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-06-18 09:50:00','2024-06-18 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,505747.55,0.00,35402.33,0.00,541149.88,0.00,'Uhv339xGrPztiUXw8+PlgYDgWWEEkLmSEonOMDFDaAXiTWIs9OaCB83xxkwy+dho4QXmXztzdEqTwDQjyl0zhc4BjU4BUA7U9RbuYf+kn9DPkh4zltcWrdAHvpuJGtq8+6dCdgRAKiW5hNJd4zGVl3QdaIZuSmtENA+7J3AlhVs=',1,35,'PP 2024/35',0,1,'2024-06-18 07:50:00','2024-06-18 07:53:53');
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formas_pagamentos`
--

DROP TABLE IF EXISTS `formas_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formas_pagamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pagamentos`
--

LOCK TABLES `formas_pagamentos` WRITE;
/*!40000 ALTER TABLE `formas_pagamentos` DISABLE KEYS */;
INSERT INTO `formas_pagamentos` VALUES (1,'0001','Dinheiro','I shall ever see.',1,NULL,NULL),(2,'0002','Transferência','Hatter with a pair.',1,NULL,NULL),(3,'0003','TPA',NULL,1,'2024-03-06 11:33:49','2024-03-06 11:33:49'),(4,'0004','Misto',NULL,1,'2024-03-07 11:45:27','2024-03-07 11:45:27');
/*!40000 ALTER TABLE `formas_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedors`
--

DROP TABLE IF EXISTS `fornecedors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) unsigned DEFAULT NULL,
  `id_contacto` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedors_id_endereco_foreign` (`id_endereco`),
  KEY `fornecedors_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `fornecedors_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fornecedors_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedors`
--

LOCK TABLES `fornecedors` WRITE;
/*!40000 ALTER TABLE `fornecedors` DISABLE KEYS */;
INSERT INTO `fornecedors` VALUES (1,'2024-0001','Diverso','999999999',NULL,NULL,NULL,'null.png',1,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `fornecedors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `funcao` varchar(191) DEFAULT NULL,
  `salario` decimal(30,2) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `telefone` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `departamento_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `funcionarios_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `funcionarios_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_remessas`
--

DROP TABLE IF EXISTS `guia_remessas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_remessas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guia_remessas_cliente_id_foreign` (`cliente_id`),
  KEY `guia_remessas_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `guia_remessas_moeda_id_foreign` (`moeda_id`),
  KEY `guia_remessas_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `guia_remessas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_remessas`
--

LOCK TABLES `guia_remessas` WRITE;
/*!40000 ALTER TABLE `guia_remessas` DISABLE KEYS */;
/*!40000 ALTER TABLE `guia_remessas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guia_transportes`
--

DROP TABLE IF EXISTS `guia_transportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guia_transportes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `local_carga` varchar(191) DEFAULT NULL,
  `local_descarga` varchar(191) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guia_transportes_cliente_id_foreign` (`cliente_id`),
  KEY `guia_transportes_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `guia_transportes_moeda_id_foreign` (`moeda_id`),
  KEY `guia_transportes_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `guia_transportes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guia_transportes`
--

LOCK TABLES `guia_transportes` WRITE;
/*!40000 ALTER TABLE `guia_transportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `guia_transportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impostos`
--

DROP TABLE IF EXISTS `impostos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impostos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(191) DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `taxa` double DEFAULT NULL,
  `motivo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impostos`
--

LOCK TABLES `impostos` WRITE;
/*!40000 ALTER TABLE `impostos` DISABLE KEYS */;
INSERT INTO `impostos` VALUES (1,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',1,NULL,NULL),(2,'IVA','','IVA',14,'',1,NULL,NULL),(3,'ISENTO','M02','M02 - Transmissão de bens e serviço não sujeita',0,'Regime Simplificado',1,NULL,NULL),(4,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,NULL,NULL),(5,'IVA 7','','IVA 7',7,'Regime Geral',1,NULL,NULL),(6,'ISENTO','M12','M12 - Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(7,'ISENTO','M13','M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(8,'ISENTO','M14','M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(9,'ISENTO','M15','M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(10,'ISENTO','M16','M16 - Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(11,'ISENTO','M17','M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(12,'ISENTO','M18','M18 - Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(13,'ISENTO','M19','M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(14,'ISENTO','M20','M20 - Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(15,'ISENTO','M21','M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(16,'ISENTO','M22','M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(17,'ISENTO','M23','M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(18,'ISENTO','M24','M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(19,'ISENTO','M80','M80 - Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(20,'ISENTO','M81','M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(21,'ISENTO','M82','M82 - Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(22,'ISENTO','M83','M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(23,'ISENTO','M84','M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(24,'ISENTO','M85','M85 - Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA',0,'Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA',1,NULL,NULL),(25,'ISENTO','M86','M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA',0,'Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA',1,NULL,NULL),(26,'ISENTO','M30','M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA',0,'Isento nos termos da alínea a) do artigo 15.º do CIVA',1,NULL,NULL),(27,'ISENTO','M31','M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA',0,'Isento nos termos da alínea b) do artigo 15.º do CIVA',1,NULL,NULL),(28,'ISENTO','M32','M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA',0,'Isento nos termos da alínea c) do artigo 15.º do CIVA',1,NULL,NULL),(29,'ISENTO','M33','M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA',0,'Isento nos termos da alínea d) do artigo 15.º do CIVA',1,NULL,NULL),(30,'ISENTO','M34','M34 - Isento nos termos da alínea e) do artigo 15.º do CIVA',0,'Isento nos termos da alínea e) do artigo 15.º do CIVA',1,NULL,NULL),(31,'ISENTO','M35','M35 - Isento nos termos da alínea f) do artigo 15.º do CIVA',0,'Isento nos termos da alínea f) do artigo 15.º do CIVA',1,NULL,NULL),(32,'ISENTO','M36','M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA',0,'Isento nos termos da alínea g) do artigo 15.º do CIVA',1,NULL,NULL),(33,'ISENTO','M37','M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA',0,'Isento nos termos da alínea h) do artigo 15.º do CIVA',1,NULL,NULL),(34,'ISENTO','M38','M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA',0,'Isento nos termos da alínea i) do artigo 15.º do CIVA',1,NULL,NULL),(35,'ISENTO','M90','M90 - Isento nos termos da alinea a) do nº1 do artigo 16.º',0,'Isento nos termos da alinea a) do nº1 do artigo 16.º',1,NULL,NULL),(36,'ISENTO','M91','M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º',0,'Isento nos termos da alinea b) do nº1 do artigo 16.º',1,NULL,NULL),(37,'ISENTO','M92','M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º',0,'Isento nos termos da alinea c) do nº1 do artigo 16.º',1,NULL,NULL),(38,'ISENTO','M93','M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º',0,'Isento nos termos da alinea d) do nº1 do artigo 16.º',1,NULL,NULL),(39,'ISENTO','M93','M94 - Isento nos termos da alinea e) do nº1 do artigo 16.º',0,'Isento nos termos da alinea e) do nº1 do artigo 16.º',1,NULL,NULL),(40,'ISENTO','M11','M11 - Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA',1,NULL,NULL);
/*!40000 ALTER TABLE `impostos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_factura_recibos`
--

DROP TABLE IF EXISTS `item_factura_recibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_factura_recibos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `factura_recibo_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_factura_recibos_factura_recibo_id_foreign` (`factura_recibo_id`),
  KEY `item_factura_recibos_artigo_id_foreign` (`artigo_id`),
  KEY `item_factura_recibos_imposto_id_foreign` (`imposto_id`),
  KEY `item_factura_recibos_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_factura_recibos`
--

LOCK TABLES `item_factura_recibos` WRITE;
/*!40000 ALTER TABLE `item_factura_recibos` DISABLE KEYS */;
INSERT INTO `item_factura_recibos` VALUES (1,'REFEIÇÕES',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,134,5,1,'2024-03-02 09:30:47','2024-03-02 09:30:47'),(2,'ÁGUA GRANDE/GIG WATER',1401.87,8,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,1,5,1,'2024-03-02 09:30:47','2024-03-02 09:30:47'),(3,'REFRIGERANTE',1121.50,8,0.00,8972.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,135,5,1,'2024-03-02 09:30:47','2024-03-02 09:30:47'),(4,'SUMO DEV PITAIA/ DRAGON FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,64,5,1,'2024-03-03 18:51:45','2024-03-03 18:51:45'),(5,'CORVINA NA CHAMA/GRILLED CORVINE',14018.69,1,0.00,14018.69,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,27,5,1,'2024-03-03 18:51:45','2024-03-03 18:51:45'),(6,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,116,5,1,'2024-03-06 10:14:25','2024-03-06 10:14:25'),(7,'PICA-PAU',6542.06,3,0.00,19626.18,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,21,5,1,'2024-03-06 12:03:52','2024-03-06 12:03:52'),(8,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,2,5,1,'2024-03-06 12:09:38','2024-03-06 12:09:38'),(9,'REFEIÇÕES',14018.69,9,0.00,126168.21,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,134,5,1,'2024-03-06 15:08:29','2024-03-06 15:08:29'),(10,'REFRIGERANTES',11215.00,9,0.00,100935.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,135,5,1,'2024-03-06 15:08:29','2024-03-06 15:08:29'),(11,'ÁGUA GRANDE/GIG WATER',1401.87,9,0.00,12616.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,1,5,1,'2024-03-06 15:08:29','2024-03-06 15:08:29'),(12,'ÁGUA GRANDE/GIG WATER',1401.87,8,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,1,5,1,'2024-03-06 15:27:21','2024-03-06 15:27:21'),(13,'REFRIGERANTES',11215.00,8,0.00,89720.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,135,5,1,'2024-03-06 15:27:21','2024-03-06 15:27:21'),(14,'REFEIÇÕES',14018.69,8,0.00,112149.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,134,5,1,'2024-03-06 15:27:21','2024-03-06 15:27:21'),(15,'REFEIÇÕES',14018.69,6,0.00,84112.14,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,134,5,1,'2024-03-06 16:00:35','2024-03-06 16:00:35'),(16,'REFRIGERANTES',1121.49,6,0.00,6728.94,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,135,5,1,'2024-03-06 16:00:35','2024-03-06 16:00:35'),(17,'ÁGUA PEQUENA/SMALL WATER',934.58,6,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,2,5,1,'2024-03-06 16:00:35','2024-03-06 16:00:35'),(18,'FATIA DE BOLO',654.20,1,0.00,654.20,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,140,5,1,'2024-03-06 18:42:26','2024-03-06 18:42:26'),(19,'ÁGUA TÓNICA/TONIC WATER',1121.49,2,0.00,2242.98,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,3,5,1,'2024-03-06 18:42:26','2024-03-06 18:42:26'),(20,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,60,5,1,'2024-03-06 18:42:26','2024-03-06 18:42:26'),(21,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,2,5,1,'2024-03-07 13:30:08','2024-03-07 13:30:08'),(22,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,20,5,1,'2024-03-07 13:30:08','2024-03-07 13:30:08'),(23,'ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1775.70,1,0.00,1775.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,54,5,1,'2024-03-07 13:30:08','2024-03-07 13:30:08'),(24,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,2,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,108,5,1,'2024-03-07 13:30:08','2024-03-07 13:30:08'),(25,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,2,5,1,'2024-03-07 13:30:09','2024-03-07 13:30:09'),(26,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,20,5,1,'2024-03-07 13:30:09','2024-03-07 13:30:09'),(27,'ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1775.70,1,0.00,1775.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,54,5,1,'2024-03-07 13:30:09','2024-03-07 13:30:09'),(28,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,2,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,108,5,1,'2024-03-07 13:30:09','2024-03-07 13:30:09'),(29,'ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1775.70,1,0.00,1775.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,54,5,1,'2024-03-07 15:45:32','2024-03-07 15:45:32'),(30,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,108,5,1,'2024-03-07 15:45:33','2024-03-07 15:45:33'),(31,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,20,5,1,'2024-03-07 15:45:33','2024-03-07 15:45:33'),(32,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,2,5,1,'2024-03-07 15:45:33','2024-03-07 15:45:33'),(33,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,108,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(34,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,108,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(35,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,116,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(36,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,116,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(37,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,29,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(38,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,29,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(39,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,108,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(40,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,116,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(41,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,29,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(42,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,108,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(43,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,116,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(44,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,29,5,1,'2024-03-07 20:20:22','2024-03-07 20:20:22'),(45,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,108,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(46,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,116,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(47,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,29,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(48,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,108,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(49,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,116,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(50,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,29,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(51,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,108,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(52,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,116,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(53,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,108,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(54,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,116,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(55,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,29,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(56,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,29,5,1,'2024-03-07 20:20:23','2024-03-07 20:20:23'),(57,'PATÊ DE FRANGO',2803.74,2,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,22,5,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(58,'CAFÉ',1000.00,3,0.00,3000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',21,41,1,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(59,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,1,5,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(60,'FATIA DE BOLO',654.20,1,0.00,654.20,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,140,5,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(61,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,145,5,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(62,'PEIXE LIRIO COM LEGUMES SALTIADO E BATATA AO MURRO',18691.59,1,0.00,18691.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,144,5,1,'2024-03-08 15:00:02','2024-03-08 15:00:02'),(63,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',22,60,5,1,'2024-03-08 15:16:32','2024-03-08 15:16:32'),(64,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,1,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(65,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,63,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(66,'Fino',700.93,4,0.00,2803.72,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,147,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(67,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,2,0.00,24299.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,28,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(68,'PÃO DE ALHO/GARLIC BREAD',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,16,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(69,'CHOCO FRITO/FRIED SQUIDS',7476.64,2,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,18,5,1,'2024-03-08 19:44:10','2024-03-08 19:44:10'),(70,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,20,5,1,'2024-03-09 13:33:07','2024-03-09 13:33:07'),(71,'CAFÉ',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',24,41,1,1,'2024-03-09 13:33:08','2024-03-09 13:33:08'),(72,'EKA EM GARRAFA/BEER',1214.95,7,0.00,8504.65,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,8,5,1,'2024-03-09 13:33:08','2024-03-09 13:33:08'),(73,'Fino',700.93,4,0.00,2803.72,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,147,5,1,'2024-03-09 13:57:30','2024-03-09 13:57:30'),(74,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',26,38,5,1,'2024-03-09 14:00:57','2024-03-09 14:00:57'),(75,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',26,8,5,1,'2024-03-09 14:00:57','2024-03-09 14:00:57'),(76,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',27,38,5,1,'2024-03-09 14:00:58','2024-03-09 14:00:58'),(77,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',27,8,5,1,'2024-03-09 14:00:58','2024-03-09 14:00:58'),(78,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',28,38,5,1,'2024-03-09 14:01:01','2024-03-09 14:01:01'),(79,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',28,8,5,1,'2024-03-09 14:01:01','2024-03-09 14:01:01'),(80,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',29,145,5,1,'2024-03-09 18:16:32','2024-03-09 18:16:32'),(81,'EKA EM GARRAFA/BEER',1214.95,7,0.00,8504.65,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',30,8,5,1,'2024-03-09 19:12:44','2024-03-09 19:12:44'),(82,'CAFÉ',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',30,41,1,1,'2024-03-09 19:12:44','2024-03-09 19:12:44'),(83,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',30,20,5,1,'2024-03-09 19:12:44','2024-03-09 19:12:44'),(84,'Fino',700.93,2,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',31,147,5,1,'2024-03-09 20:08:22','2024-03-09 20:08:22'),(85,'Gin gordon em lata',1500.00,1,0.00,1500.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',31,148,5,1,'2024-03-09 20:08:22','2024-03-09 20:08:22'),(86,'ÁGUA GRANDE/BIG WATER',1401.87,2,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',32,1,5,1,'2024-03-10 05:37:18','2024-03-10 05:37:18'),(87,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,2,5,1,'2024-03-10 07:53:29','2024-03-10 07:53:29'),(88,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,63,5,1,'2024-03-10 07:53:29','2024-03-10 07:53:29'),(89,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,46,5,1,'2024-03-10 07:53:29','2024-03-10 07:53:29'),(90,'TOSTA DE ATUM/TUNE TOAST',4205.61,1,0.00,4205.61,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,45,5,1,'2024-03-10 07:53:29','2024-03-10 07:53:29'),(91,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',34,145,5,1,'2024-03-13 19:03:53','2024-03-13 19:03:53'),(92,'BIFE  COM MOLHO DE COGUMELOS/STEAK IN MUSHROOM SAUCE',11214.95,1,0.00,11214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',34,30,5,1,'2024-03-13 19:03:53','2024-03-13 19:03:53'),(93,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',34,29,5,1,'2024-03-13 19:03:53','2024-03-13 19:03:53'),(94,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',34,1,5,1,'2024-03-13 19:03:53','2024-03-13 19:03:53'),(95,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,44,5,1,'2024-03-18 10:04:13','2024-03-18 10:04:13'),(96,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,3,5,1,'2024-03-18 10:04:13','2024-03-18 10:04:13'),(97,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',36,44,5,1,'2024-03-18 10:20:18','2024-03-18 10:20:18'),(98,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',36,3,5,1,'2024-03-18 10:20:18','2024-03-18 10:20:18'),(99,'TOSTA DE ATUM/TUNE TOAST',4205.61,1,0.00,4205.61,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',37,45,5,1,'2024-03-19 08:09:47','2024-03-19 08:09:47'),(100,'COCA-COLA',1121.50,2,0.00,2243.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',37,12,5,1,'2024-03-19 08:09:47','2024-03-19 08:09:47'),(101,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',38,8,5,1,'2024-03-19 11:28:33','2024-03-19 11:28:33'),(102,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',39,60,5,1,'2024-03-19 16:53:34','2024-03-19 16:53:34'),(103,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',39,28,5,1,'2024-03-19 16:53:34','2024-03-19 16:53:34'),(104,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',40,1,5,1,'2024-03-19 18:46:45','2024-03-19 18:46:45'),(105,'CAFÉ',1000.00,2,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',41,41,1,1,'2024-03-21 13:57:15','2024-03-21 13:57:15'),(106,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',41,1,5,1,'2024-03-21 13:57:15','2024-03-21 13:57:15'),(107,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',41,60,5,1,'2024-03-21 13:57:15','2024-03-21 13:57:15'),(108,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',41,145,5,1,'2024-03-21 13:57:15','2024-03-21 13:57:15'),(109,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',42,145,5,1,'2024-03-21 14:04:17','2024-03-21 14:04:17'),(110,'CAFÉ',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',42,41,1,1,'2024-03-21 14:04:17','2024-03-21 14:04:17'),(111,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',42,60,5,1,'2024-03-21 14:04:17','2024-03-21 14:04:17'),(112,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',42,1,5,1,'2024-03-21 14:04:17','2024-03-21 14:04:17'),(113,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',43,1,5,1,'2024-03-22 19:48:46','2024-03-22 19:48:46'),(114,'SUMO DE LARANJA/ORANGE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',43,62,5,1,'2024-03-22 19:48:46','2024-03-22 19:48:46'),(115,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',43,46,5,1,'2024-03-22 19:48:47','2024-03-22 19:48:47'),(116,'EKA EM GARRAFA/BEER',1214.95,1,0.00,1214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,8,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(117,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,46,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(118,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,158,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(119,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,12,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(120,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,2,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(121,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,29,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(122,'ALMA DA VINHA (COPO)',2336.45,2,0.00,4672.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',44,93,5,1,'2024-03-23 10:46:36','2024-03-23 10:46:36'),(123,'ALMA DA VINHA (COPO)',2336.45,2,0.00,4672.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,93,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(124,'EKA EM GARRAFA/BEER',1214.95,1,0.00,1214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,8,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(125,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,12,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(126,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,158,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(127,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,2,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(128,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,46,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(129,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',45,29,5,1,'2024-03-23 10:53:14','2024-03-23 10:53:14'),(130,'GAMBAS AO ALHO/GARLIC TIGER SHRIMP',11214.95,1,0.00,11214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',46,19,5,1,'2024-03-25 11:54:11','2024-03-25 11:54:11'),(131,'SPRITE',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,13,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(132,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,1,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(133,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,28,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(134,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,145,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(135,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,20,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(136,'AZEITONAS AO ALHO/GARLIC OLIVES',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,17,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(137,'PÃO DE ALHO/GARLIC BREAD',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',47,16,5,1,'2024-03-27 12:24:44','2024-03-27 12:24:44'),(138,'Fatia de bolo',93457.00,1,0.00,93457.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',48,163,5,1,'2024-03-27 17:54:21','2024-03-27 17:54:21'),(139,'COCA-COLA',1121.50,2,0.00,2243.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',49,12,5,1,'2024-03-28 15:28:37','2024-03-28 15:28:37'),(140,'ARROZ BRANCO/ BATATA FRITA\\ WHITE RICE',1682.24,1,0.00,1682.24,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',49,52,5,1,'2024-03-28 15:28:37','2024-03-28 15:28:37'),(141,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',49,145,5,1,'2024-03-28 15:28:37','2024-03-28 15:28:37'),(142,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',50,28,5,1,'2024-03-28 17:40:35','2024-03-28 17:40:35'),(143,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',50,1,5,1,'2024-03-28 17:40:35','2024-03-28 17:40:35'),(144,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',51,12,5,1,'2024-03-28 17:42:10','2024-03-28 17:42:10'),(145,'CHOCO FRITO/FRIED SQUIDS',7476.64,1,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',52,18,5,1,'2024-03-29 09:43:12','2024-03-29 09:43:12'),(146,'COFFE BREAK',280373.83,1,0.00,280373.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',53,139,5,1,'2024-03-29 11:02:28','2024-03-29 11:02:28'),(147,'Serviço de quarto',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',54,154,5,1,'2024-03-29 18:53:02','2024-03-29 18:53:02'),(148,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',54,63,5,1,'2024-03-29 18:53:02','2024-03-29 18:53:02'),(149,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',54,38,5,1,'2024-03-29 18:53:02','2024-03-29 18:53:02'),(150,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',54,46,5,1,'2024-03-29 18:53:02','2024-03-29 18:53:02'),(151,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',55,63,5,1,'2024-03-30 08:35:09','2024-03-30 08:35:09'),(152,'TOSTA MISTA/TSANDWICH',2803.74,1,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',55,46,5,1,'2024-03-30 08:35:09','2024-03-30 08:35:09'),(153,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',56,1,5,1,'2024-03-30 16:39:51','2024-03-30 16:39:51'),(154,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',57,63,5,1,'2024-03-31 07:43:06','2024-03-31 07:43:06'),(155,'CAFÉ',1000.00,2,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',58,41,1,1,'2024-04-01 05:11:50','2024-04-01 05:11:50'),(156,'COFFE BREAK',336448.60,1,0.00,336448.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',59,139,5,1,'2024-04-01 12:52:01','2024-04-01 12:52:01'),(157,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',60,158,5,1,'2024-04-02 05:35:03','2024-04-02 05:35:03'),(158,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',60,38,5,1,'2024-04-02 05:35:03','2024-04-02 05:35:03'),(159,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',60,2,5,1,'2024-04-02 05:35:03','2024-04-02 05:35:03'),(160,'SOPA DO DIA',2056.07,1,0.00,2056.07,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',61,130,5,1,'2024-04-02 06:30:38','2024-04-02 06:30:38'),(161,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',61,1,5,1,'2024-04-02 06:30:38','2024-04-02 06:30:38'),(162,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',62,1,5,1,'2024-04-02 06:31:16','2024-04-02 06:31:16'),(163,'SOPA DO DIA',2056.07,1,0.00,2056.07,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',62,130,5,1,'2024-04-02 06:31:16','2024-04-02 06:31:16'),(164,'Serviço de quarto',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',63,154,5,1,'2024-04-02 10:13:22','2024-04-02 10:13:22'),(165,'SMIRNOFF PREDA/SMIRNOFF',1869.16,2,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',63,10,5,1,'2024-04-02 10:13:22','2024-04-02 10:13:22'),(166,'CUCA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',63,7,5,1,'2024-04-02 10:13:22','2024-04-02 10:13:22'),(167,'SUMOL',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',64,15,5,1,'2024-04-02 12:19:44','2024-04-02 12:19:44'),(168,'EKA EM GARRAFA/BEER',1214.95,1,0.00,1214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',64,8,5,1,'2024-04-02 12:19:44','2024-04-02 12:19:44'),(169,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',64,28,5,1,'2024-04-02 12:19:44','2024-04-02 12:19:44'),(170,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',64,145,5,1,'2024-04-02 12:19:44','2024-04-02 12:19:44'),(171,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',65,12,5,1,'2024-04-02 12:30:15','2024-04-02 12:30:15'),(172,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',65,12,5,1,'2024-04-02 12:30:15','2024-04-02 12:30:15'),(173,'EKA EM GARRAFA/BEER',1214.95,2,0.00,2429.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',66,8,5,1,'2024-04-02 13:08:37','2024-04-02 13:08:37'),(174,'ÁGUA PEQUENA/SMALL WATER',934.58,2,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',66,2,5,1,'2024-04-02 13:08:37','2024-04-02 13:08:37'),(175,'PEQUENO ALMOÇO INGLÊS',5607.47,1,0.00,5607.47,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',67,35,5,1,'2024-04-03 04:16:33','2024-04-03 04:16:33'),(176,'PEQUENO ALMOÇO INGLÊS',5607.47,1,0.00,5607.47,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',68,35,5,1,'2024-04-03 04:17:22','2024-04-03 04:17:22'),(177,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',69,175,5,1,'2024-04-03 10:17:07','2024-04-03 10:17:07'),(178,'Sapateira',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',69,174,5,1,'2024-04-03 10:17:07','2024-04-03 10:17:07'),(179,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',70,175,5,1,'2024-04-03 10:19:52','2024-04-03 10:19:52'),(180,'Sapateira',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',70,174,5,1,'2024-04-03 10:19:52','2024-04-03 10:19:52'),(181,'SMIRNOFF PREDA/SMIRNOFF',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,10,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(182,'SMIRNOFF PREDA/SMIRNOFF',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,10,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(183,'SMIRNOFF PREDA/SMIRNOFF',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,10,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(184,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,3,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(185,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,3,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(186,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,3,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(187,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,12,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(188,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,12,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(189,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,12,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(190,'PICA-PAU',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,21,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(191,'PICA-PAU',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,21,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(192,'ASINHAS/ HOT WINGS',5607.48,1,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,23,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(193,'ASINHAS/ HOT WINGS',5607.48,1,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,23,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(194,'PICA-PAU',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,21,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(195,'CHOCO FRITO/FRIED SQUIDS',7476.64,1,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',72,18,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(196,'CHOCO FRITO/FRIED SQUIDS',7476.64,1,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',73,18,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(197,'ASINHAS/ HOT WINGS',5607.48,1,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,23,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(198,'CHOCO FRITO/FRIED SQUIDS',7476.64,1,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',71,18,5,1,'2024-04-03 15:17:42','2024-04-03 15:17:42'),(199,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',74,3,5,1,'2024-04-04 07:03:02','2024-04-04 07:03:02'),(200,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',74,44,5,1,'2024-04-04 07:03:02','2024-04-04 07:03:02'),(201,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',75,2,5,1,'2024-04-04 09:12:52','2024-04-04 09:12:52'),(202,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',75,175,5,1,'2024-04-04 09:12:52','2024-04-04 09:12:52'),(203,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',75,145,5,1,'2024-04-04 09:12:52','2024-04-04 09:12:52'),(204,'CUCA EM LATA/BEER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',75,6,5,1,'2024-04-04 09:12:52','2024-04-04 09:12:52'),(205,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',76,175,5,1,'2024-04-04 09:25:23','2024-04-04 09:25:23'),(206,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',76,145,5,1,'2024-04-04 09:25:23','2024-04-04 09:25:23'),(207,'CUCA EM LATA/BEER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',76,6,5,1,'2024-04-04 09:25:23','2024-04-04 09:25:23'),(208,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',76,2,5,1,'2024-04-04 09:25:23','2024-04-04 09:25:23'),(209,'Serviço de quarto',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',77,154,5,1,'2024-04-05 06:44:49','2024-04-05 06:44:49'),(210,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',77,29,5,1,'2024-04-05 06:44:50','2024-04-05 06:44:50'),(211,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',78,29,5,1,'2024-04-05 06:46:41','2024-04-05 06:46:41'),(212,'Serviço de quarto',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',78,154,5,1,'2024-04-05 06:46:41','2024-04-05 06:46:41'),(213,'HAMBURGUER COMPLETO',6355.14,1,0.00,6355.14,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',79,137,5,1,'2024-04-05 09:31:30','2024-04-05 09:31:30'),(214,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',79,12,5,1,'2024-04-05 09:31:31','2024-04-05 09:31:31'),(215,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',80,12,5,1,'2024-04-05 09:40:58','2024-04-05 09:40:58'),(216,'PEQUENO ALMOÇO INGLÊS',5607.47,3,0.00,16822.41,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',81,35,5,1,'2024-04-06 04:14:26','2024-04-06 04:14:26'),(217,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',82,116,5,1,'2024-04-06 05:33:27','2024-04-06 05:33:27'),(218,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',82,38,5,1,'2024-04-06 05:33:27','2024-04-06 05:33:27'),(219,'CROISSANT MISTO/MIXED CROISSANT',3500.00,1,0.00,3500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',82,47,1,1,'2024-04-06 05:33:27','2024-04-06 05:33:27'),(220,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',82,2,5,1,'2024-04-06 05:33:27','2024-04-06 05:33:27'),(221,'CORVINA NA CHAPA/GRILLED CORVINE',14018.69,1,0.00,14018.69,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',83,27,5,1,'2024-04-07 06:30:05','2024-04-07 06:30:05'),(222,'PEQUENO ALMOÇO INGLÊS',5607.47,1,0.00,5607.47,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',84,35,5,1,'2024-04-07 06:48:14','2024-04-07 06:48:14'),(223,'SUMOL',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',84,15,5,1,'2024-04-07 06:48:14','2024-04-07 06:48:14'),(224,'Tulipa',841.12,4,0.00,3364.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',85,164,5,1,'2024-04-07 07:05:09','2024-04-07 07:05:09'),(225,'SUMOL',1401.86,2,0.00,2803.72,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',85,15,5,1,'2024-04-07 07:05:09','2024-04-07 07:05:09'),(226,'PEQUENO ALMOÇO INGLÊS',5607.47,1,0.00,5607.47,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',85,35,5,1,'2024-04-07 07:05:09','2024-04-07 07:05:09'),(227,'CUCA EM GARRAFA/BEER',1214.95,2,0.00,2429.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',86,7,5,1,'2024-04-07 09:46:02','2024-04-07 09:46:02'),(228,'Funje com carne molho de tomate e verdura',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',86,176,5,1,'2024-04-07 09:46:02','2024-04-07 09:46:02'),(229,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',87,12,5,1,'2024-04-07 14:30:07','2024-04-07 14:30:07'),(230,'Serviço de quarto',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',88,154,5,1,'2024-04-07 15:01:54','2024-04-07 15:01:54'),(231,'SMIRNOFF PREDA/SMIRNOFF',1869.16,6,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',88,10,5,1,'2024-04-07 15:01:54','2024-04-07 15:01:54'),(232,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,3,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',89,108,5,1,'2024-04-08 07:55:55','2024-04-08 07:55:55'),(233,'CUCA EM LATA/BEER',1401.87,10,0.00,14018.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',89,6,5,1,'2024-04-08 07:55:55','2024-04-08 07:55:55'),(234,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',90,3,5,1,'2024-04-08 10:11:52','2024-04-08 10:11:52'),(235,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',90,145,5,1,'2024-04-08 10:11:52','2024-04-08 10:11:52'),(236,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',91,60,5,1,'2024-04-08 13:54:15','2024-04-08 13:54:15'),(237,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',93,12,5,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(238,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',92,12,5,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(239,'prato do dia',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',92,157,5,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(240,'prato do dia',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',93,157,5,1,'2024-04-09 09:21:43','2024-04-09 09:21:43'),(241,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',94,12,5,1,'2024-04-09 09:26:36','2024-04-09 09:26:36'),(242,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',94,116,5,1,'2024-04-09 09:26:36','2024-04-09 09:26:36'),(243,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,2,0.00,4672.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',95,63,5,1,'2024-04-09 10:19:37','2024-04-09 10:19:37'),(244,'prato do dia',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',95,157,5,1,'2024-04-09 10:19:38','2024-04-09 10:19:38'),(245,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',96,116,5,1,'2024-04-09 10:51:26','2024-04-09 10:51:26'),(246,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',96,145,5,1,'2024-04-09 10:51:26','2024-04-09 10:51:26'),(247,'SUMOL',1401.86,2,0.00,2803.72,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',96,15,5,1,'2024-04-09 10:51:26','2024-04-09 10:51:26'),(248,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',97,60,5,1,'2024-04-09 12:20:11','2024-04-09 12:20:11'),(249,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',97,116,5,1,'2024-04-09 12:20:11','2024-04-09 12:20:11'),(250,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,4,0.00,9345.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',98,60,5,1,'2024-04-09 14:41:41','2024-04-09 14:41:41'),(251,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',98,145,5,1,'2024-04-09 14:41:41','2024-04-09 14:41:41'),(252,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,2,0.00,24299.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',98,28,5,1,'2024-04-09 14:41:41','2024-04-09 14:41:41'),(253,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',99,38,5,1,'2024-04-10 05:30:56','2024-04-10 05:30:56'),(254,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',99,60,5,1,'2024-04-10 05:30:56','2024-04-10 05:30:56'),(255,'CROISSANT MISTO/MIXED CROISSANT',3500.00,1,0.00,3500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',99,47,1,1,'2024-04-10 05:30:56','2024-04-10 05:30:56'),(256,'CUCA EM LATA/BEER',1401.87,2,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',100,6,5,1,'2024-04-10 05:40:03','2024-04-10 05:40:03'),(257,'CROISSANT MISTO/MIXED CROISSANT',3500.00,1,0.00,3500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',101,47,1,1,'2024-04-10 06:46:34','2024-04-10 06:46:34'),(258,'EKA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',102,8,5,1,'2024-04-10 06:51:24','2024-04-10 06:51:24'),(259,'AZEITONAS AO ALHO/GARLIC OLIVES',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',102,17,5,1,'2024-04-10 06:51:24','2024-04-10 06:51:24'),(260,'CHOCO FRITO/FRIED SQUIDS',7476.64,1,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',102,18,5,1,'2024-04-10 06:51:24','2024-04-10 06:51:24'),(261,'GAMBAS AO ALHO/GARLIC TIGER SHRIMP',11214.95,1,0.00,11214.95,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',102,19,5,1,'2024-04-10 06:51:24','2024-04-10 06:51:24'),(262,'COFFE BREAK',15293.16,1,2.02,15293.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',103,139,5,1,'2024-05-08 11:05:41','2024-05-08 11:05:41'),(263,'COFFE BREAK',15293.16,1,0.00,15293.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',103,139,5,1,'2024-05-08 11:05:41','2024-05-08 11:05:41'),(264,'ÁGUA TÓNICA/TONIC WATER',1121.49,10,0.00,11214.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',104,3,5,1,'2024-05-16 11:14:04','2024-05-16 11:14:04'),(265,'TOSTA DE ATUM/TUNE TOAST',4205.61,1,0.00,4205.61,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',105,45,5,1,'2024-05-20 08:19:07','2024-05-20 08:19:07'),(266,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',105,2,5,1,'2024-05-20 08:19:07','2024-05-20 08:19:07'),(267,'COFFE BREAK',794392.52,1,0.00,794392.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',106,177,5,1,'2024-05-27 06:03:48','2024-05-27 06:03:48'),(268,'REFEIÇÕES',14018.69,4,0.00,56074.76,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,134,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(269,'BITOQUE',7943.93,1,0.00,7943.93,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,48,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(270,'PRATO DO DIA',4672.89,1,0.00,4672.89,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,145,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(271,'ÁGUA GRANDE/BIG WATER',1401.87,2,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,1,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(272,'ÁGUA PEQUENA/SMALL WATER',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,2,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(273,'SUMO DE MARACUJA/ PASSION FRUIT',2336.45,2,0.00,4672.90,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,63,5,1,'2024-06-18 09:10:18','2024-06-18 09:10:18'),(274,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,12,5,1,'2024-06-18 09:10:19','2024-06-18 09:10:19'),(275,'Fatia De Pudim',2336.44,1,0.00,2336.44,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',107,179,5,1,'2024-06-18 09:10:19','2024-06-18 09:10:19'),(276,'CAFÉ',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',107,41,1,1,'2024-06-18 09:10:19','2024-06-18 09:10:19'),(277,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',108,1,5,1,'2024-07-01 06:50:33','2024-07-01 06:50:33'),(278,'ARROZ DO MAR/SEA FOOD RICE',20560.75,1,0.00,20560.75,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',109,24,5,1,'2024-07-01 09:50:35','2024-07-01 09:50:35'),(279,'SUMO COMPAL/JUICE',3271.02,12,0.00,39252.24,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',109,4,5,1,'2024-07-01 09:50:35','2024-07-01 09:50:35'),(280,'ÁGUA GRANDE/BIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',110,1,5,1,'2024-07-01 10:24:42','2024-07-01 10:24:42');
/*!40000 ALTER TABLE `item_factura_recibos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guia_remessas`
--

DROP TABLE IF EXISTS `item_guia_remessas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_guia_remessas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `guia_remessa_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_guia_remessas_guia_remessa_id_foreign` (`guia_remessa_id`),
  KEY `item_guia_remessas_artigo_id_foreign` (`artigo_id`),
  KEY `item_guia_remessas_imposto_id_foreign` (`imposto_id`),
  KEY `item_guia_remessas_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_guia_remessas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_guia_remessas_guia_remessa_id_foreign` FOREIGN KEY (`guia_remessa_id`) REFERENCES `guia_remessas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_guia_remessas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_guia_remessas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guia_remessas`
--

LOCK TABLES `item_guia_remessas` WRITE;
/*!40000 ALTER TABLE `item_guia_remessas` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guia_remessas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_guia_transportes`
--

DROP TABLE IF EXISTS `item_guia_transportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_guia_transportes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `guia_transporte_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_guia_transportes_guia_transporte_id_foreign` (`guia_transporte_id`),
  KEY `item_guia_transportes_artigo_id_foreign` (`artigo_id`),
  KEY `item_guia_transportes_imposto_id_foreign` (`imposto_id`),
  KEY `item_guia_transportes_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_guia_transportes_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_guia_transportes_guia_transporte_id_foreign` FOREIGN KEY (`guia_transporte_id`) REFERENCES `guia_transportes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_guia_transportes_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_guia_transportes_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_guia_transportes`
--

LOCK TABLES `item_guia_transportes` WRITE;
/*!40000 ALTER TABLE `item_guia_transportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_guia_transportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_nota_creditos`
--

DROP TABLE IF EXISTS `item_nota_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_nota_creditos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `nota_credito_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_nota_creditos_nota_credito_id_foreign` (`nota_credito_id`),
  KEY `item_nota_creditos_artigo_id_foreign` (`artigo_id`),
  KEY `item_nota_creditos_imposto_id_foreign` (`imposto_id`),
  KEY `item_nota_creditos_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_nota_creditos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_nota_creditos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_nota_creditos_nota_credito_id_foreign` FOREIGN KEY (`nota_credito_id`) REFERENCES `nota_creditos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_nota_creditos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_creditos`
--

LOCK TABLES `item_nota_creditos` WRITE;
/*!40000 ALTER TABLE `item_nota_creditos` DISABLE KEYS */;
INSERT INTO `item_nota_creditos` VALUES (1,'SUMO DEV PITAIA/ DRAGON FRUIT',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,64,5,1,'2024-03-03 19:43:04','2024-03-03 19:43:04'),(2,'CORVINA NA CHAMA/GRILLED CORVINE',14018.69,1,0.00,14018.69,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,27,5,1,'2024-03-03 19:43:04','2024-03-03 19:43:04'),(3,'REFEIÇÕES',14018.69,9,0.00,126168.21,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,134,5,1,'2024-03-06 15:19:09','2024-03-06 15:19:09'),(4,'REFRIGERANTES',11215.00,9,0.00,100935.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,135,5,1,'2024-03-06 15:19:09','2024-03-06 15:19:09'),(5,'ÁGUA GRANDE/GIG WATER',1401.87,9,0.00,12616.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,1,5,1,'2024-03-06 15:19:09','2024-03-06 15:19:09'),(6,'ÁGUA GRANDE/GIG WATER',1401.87,8,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,1,5,1,'2024-03-06 15:38:02','2024-03-06 15:38:02'),(7,'REFRIGERANTES',11215.00,8,0.00,89720.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,135,5,1,'2024-03-06 15:38:02','2024-03-06 15:38:02'),(8,'REFEIÇÕES',14018.69,8,0.00,112149.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,134,5,1,'2024-03-06 15:38:02','2024-03-06 15:38:02'),(9,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,2,5,1,'2024-03-07 15:41:01','2024-03-07 15:41:01'),(10,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,20,5,1,'2024-03-07 15:41:01','2024-03-07 15:41:01'),(11,'ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1775.70,1,0.00,1775.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,54,5,1,'2024-03-07 15:41:02','2024-03-07 15:41:02'),(12,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,2,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,108,5,1,'2024-03-07 15:41:02','2024-03-07 15:41:02'),(13,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,2,5,1,'2024-03-07 15:42:02','2024-03-07 15:42:02'),(14,'CHOURIÇO ASSADO/ROAST SAUSAGE',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,20,5,1,'2024-03-07 15:42:02','2024-03-07 15:42:02'),(15,'ARROZ DE FEIJÃO ENCARNADO\\ RED BEAN RICE',1775.70,1,0.00,1775.70,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,54,5,1,'2024-03-07 15:42:02','2024-03-07 15:42:02'),(16,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,2,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,108,5,1,'2024-03-07 15:42:02','2024-03-07 15:42:02'),(17,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,108,5,1,'2024-03-08 09:31:45','2024-03-08 09:31:45'),(18,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,116,5,1,'2024-03-08 09:31:45','2024-03-08 09:31:45'),(19,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,29,5,1,'2024-03-08 09:31:45','2024-03-08 09:31:45'),(20,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,108,5,1,'2024-03-08 09:31:59','2024-03-08 09:31:59'),(21,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,116,5,1,'2024-03-08 09:31:59','2024-03-08 09:31:59'),(22,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,29,5,1,'2024-03-08 09:31:59','2024-03-08 09:31:59'),(23,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,108,5,1,'2024-03-08 09:32:19','2024-03-08 09:32:19'),(24,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,116,5,1,'2024-03-08 09:32:19','2024-03-08 09:32:19'),(25,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,29,5,1,'2024-03-08 09:32:19','2024-03-08 09:32:19'),(26,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,108,5,1,'2024-03-08 09:32:42','2024-03-08 09:32:42'),(27,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,116,5,1,'2024-03-08 09:32:42','2024-03-08 09:32:42'),(28,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,29,5,1,'2024-03-08 09:32:42','2024-03-08 09:32:42'),(29,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,108,5,1,'2024-03-08 09:33:11','2024-03-08 09:33:11'),(30,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,116,5,1,'2024-03-08 09:33:11','2024-03-08 09:33:11'),(31,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,29,5,1,'2024-03-08 09:33:11','2024-03-08 09:33:11'),(32,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,108,5,1,'2024-03-08 09:33:27','2024-03-08 09:33:27'),(33,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,116,5,1,'2024-03-08 09:33:27','2024-03-08 09:33:27'),(34,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,29,5,1,'2024-03-08 09:33:27','2024-03-08 09:33:27'),(35,'REFEIÇÕES',14018.69,9,0.00,126168.21,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,134,5,1,'2024-03-08 09:34:48','2024-03-08 09:34:48'),(36,'REFRIGERANTES',11215.00,9,0.00,100935.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,135,5,1,'2024-03-08 09:34:48','2024-03-08 09:34:48'),(37,'ÁGUA GRANDE/GIG WATER',1401.87,9,0.00,12616.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,1,5,1,'2024-03-08 09:34:48','2024-03-08 09:34:48'),(38,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,108,5,1,'2024-03-08 09:35:08','2024-03-08 09:35:08'),(39,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,116,5,1,'2024-03-08 09:35:08','2024-03-08 09:35:08'),(40,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,29,5,1,'2024-03-08 09:35:08','2024-03-08 09:35:08'),(41,'GIN TÓNICO ( COM GIN GORDON OU BEEFEATER)',3738.32,1,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,108,5,1,'2024-03-08 09:36:02','2024-03-08 09:36:02'),(42,'MOUSSE DE MARACUJA',1869.16,1,0.00,1869.16,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,116,5,1,'2024-03-08 09:36:02','2024-03-08 09:36:02'),(43,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,1,0.00,9345.79,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,29,5,1,'2024-03-08 09:36:02','2024-03-08 09:36:02'),(44,'REFEIÇÕES',14018.69,15,0.00,210280.35,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,134,5,1,'2024-03-08 09:37:59','2024-03-08 09:37:59'),(45,'REFRIGERANTE',1121.50,15,0.00,16822.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,135,5,1,'2024-03-08 09:37:59','2024-03-08 09:37:59'),(46,'ÁGUA GRANDE/GIG WATER',1401.87,15,0.00,21028.05,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,1,5,1,'2024-03-08 09:37:59','2024-03-08 09:37:59'),(47,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,44,5,1,'2024-03-19 08:55:14','2024-03-19 08:55:14'),(48,'ÁGUA TÓNICA/TONIC WATER',1121.49,1,0.00,1121.49,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,3,5,1,'2024-03-19 08:55:14','2024-03-19 08:55:14'),(49,'MOUSSE DE MARACUJA',1869.16,4,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,116,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(50,'ARROZ DE FEIJÃO C/ FILETE',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,160,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(51,'GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',17757.01,4,0.00,71028.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,31,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(52,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,3,0.00,28037.37,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,29,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(53,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,3,0.00,36448.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,28,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(54,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,8,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(55,'CUCA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,7,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(56,'CHÁ/TEA',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,38,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(57,'SPRITE',1121.50,3,0.00,3364.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,13,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(58,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,12,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(59,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,2,5,1,'2024-03-22 12:50:43','2024-03-22 12:50:43'),(60,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,44,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(61,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,158,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(62,'ARROZ DE FEIJÃO C/ FILETE',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,160,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(63,'BAGUETE DE FRANGO/CHICKEN BANGUETTE',5607.48,2,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,43,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(64,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,3,0.00,28037.37,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,29,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(65,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,3,0.00,36448.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,28,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(66,'GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',17757.01,4,0.00,71028.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,31,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(67,'MOUSSE DE MARACUJA',1869.16,4,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,116,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(68,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,8,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(69,'CUCA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,7,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(70,'CHÁ/TEA',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,38,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(71,'SPRITE',1121.50,3,0.00,3364.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,13,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(72,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,12,5,1,'2024-03-22 13:32:16','2024-03-22 13:32:16'),(73,'ÁGUA PEQUENA/SMALL WATER',934.58,12,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,2,5,1,'2024-03-22 13:32:17','2024-03-22 13:32:17'),(74,'COFFE BREAK',280373.83,1,0.00,280373.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,139,5,1,'2024-04-01 11:58:01','2024-04-01 11:58:01'),(75,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,2,5,1,'2024-04-04 09:27:11','2024-04-04 09:27:11'),(76,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,175,5,1,'2024-04-04 09:27:11','2024-04-04 09:27:11'),(77,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,145,5,1,'2024-04-04 09:27:11','2024-04-04 09:27:11'),(78,'CUCA EM LATA/BEER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,6,5,1,'2024-04-04 09:27:11','2024-04-04 09:27:11'),(79,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,2,5,1,'2024-04-04 09:27:13','2024-04-04 09:27:13'),(80,'Teke we',457.28,2,0.00,914.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,175,5,1,'2024-04-04 09:27:13','2024-04-04 09:27:13'),(81,'PRATO DO DIA',4672.89,2,0.00,9345.78,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,145,5,1,'2024-04-04 09:27:13','2024-04-04 09:27:13'),(82,'CUCA EM LATA/BEER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,6,5,1,'2024-04-04 09:27:13','2024-04-04 09:27:13'),(83,'PEQUENO ALMOÇO INGLÊS',5607.47,1,0.00,5607.47,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',22,35,5,1,'2024-04-07 07:45:44','2024-04-07 07:45:44'),(84,'SUMOL',1401.86,1,0.00,1401.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',22,15,5,1,'2024-04-07 07:45:44','2024-04-07 07:45:44'),(85,'TOSTA DE ATUM/TUNE TOAST',4205.61,1,0.00,4205.61,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,45,5,1,'2024-05-20 08:21:41','2024-05-20 08:21:41'),(86,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,2,5,1,'2024-05-20 08:21:41','2024-05-20 08:21:41'),(87,'COFFE BREAK',794392.52,1,0.00,794392.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,177,5,1,'2024-05-27 06:04:57','2024-05-27 06:04:57'),(88,'CHÁ/TEA',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,38,5,1,'2024-06-05 11:22:56','2024-06-05 11:22:56'),(89,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,8,5,1,'2024-06-05 11:22:56','2024-06-05 11:22:56');
/*!40000 ALTER TABLE `item_nota_creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_nota_debitos`
--

DROP TABLE IF EXISTS `item_nota_debitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_nota_debitos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `nota_debito_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_nota_debitos_nota_debito_id_foreign` (`nota_debito_id`),
  KEY `item_nota_debitos_artigo_id_foreign` (`artigo_id`),
  KEY `item_nota_debitos_imposto_id_foreign` (`imposto_id`),
  KEY `item_nota_debitos_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_nota_debitos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_nota_debitos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_nota_debitos_nota_debito_id_foreign` FOREIGN KEY (`nota_debito_id`) REFERENCES `nota_debitos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_nota_debitos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_debitos`
--

LOCK TABLES `item_nota_debitos` WRITE;
/*!40000 ALTER TABLE `item_nota_debitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_nota_debitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedidos`
--

DROP TABLE IF EXISTS `item_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_pedidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `pedido_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_pedidos_pedido_id_foreign` (`pedido_id`),
  KEY `item_pedidos_artigo_id_foreign` (`artigo_id`),
  KEY `item_pedidos_imposto_id_foreign` (`imposto_id`),
  KEY `item_pedidos_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_pedidos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_pedidos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_pedidos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_pedidos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedidos`
--

LOCK TABLES `item_pedidos` WRITE;
/*!40000 ALTER TABLE `item_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_proformas`
--

DROP TABLE IF EXISTS `item_proformas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_proformas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `proforma_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_proformas_proforma_id_foreign` (`proforma_id`),
  KEY `item_proformas_artigo_id_foreign` (`artigo_id`),
  KEY `item_proformas_imposto_id_foreign` (`imposto_id`),
  KEY `item_proformas_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `item_proformas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `item_proformas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `item_proformas_proforma_id_foreign` FOREIGN KEY (`proforma_id`) REFERENCES `proformas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_proformas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proformas`
--

LOCK TABLES `item_proformas` WRITE;
/*!40000 ALTER TABLE `item_proformas` DISABLE KEYS */;
INSERT INTO `item_proformas` VALUES (1,'ÁGUA PEQUENA/SMALL WATER',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,2,5,1,'2024-02-23 12:28:04','2024-02-23 12:28:04'),(2,'ÁGUA PEQUENA/SMALL WATER',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,2,5,1,'2024-02-23 12:28:05','2024-02-23 12:28:05'),(3,'ÁGUA PEQUENA/SMALL WATER',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,2,5,1,'2024-02-23 12:28:05','2024-02-23 12:28:05'),(4,'ÁGUA PEQUENA/SMALL WATER',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,2,5,1,'2024-02-23 12:28:12','2024-02-23 12:28:12'),(5,'ÁGUA PEQUENA/SMALL WATER',1000.00,1,0.00,1000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,2,5,1,'2024-02-23 12:28:15','2024-02-23 12:28:15'),(6,'ÁGUA GRANDE/GIG WATER',1401.87,6,0.00,8411.22,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,1,5,1,'2024-02-29 10:06:22','2024-02-29 10:06:22'),(7,'REFEIÇÕES',15000.00,6,0.00,90000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,134,5,1,'2024-02-29 10:06:22','2024-02-29 10:06:22'),(8,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,12,5,1,'2024-02-29 10:11:02','2024-02-29 10:11:02'),(9,'REFEIÇÕES',15000.00,6,0.00,90000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,134,5,1,'2024-02-29 10:11:02','2024-02-29 10:11:02'),(10,'ÁGUA GRANDE/GIG WATER',1401.87,6,0.00,8411.22,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,1,5,1,'2024-02-29 10:11:02','2024-02-29 10:11:02'),(11,'COCA-COLA',1121.50,8,0.00,8972.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,12,5,1,'2024-03-01 08:28:37','2024-03-01 08:28:37'),(12,'ÁGUA GRANDE/GIG WATER',1401.87,8,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,1,5,1,'2024-03-01 08:28:37','2024-03-01 08:28:37'),(13,'REFEIÇÕES',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,134,5,1,'2024-03-01 08:28:37','2024-03-01 08:28:37'),(14,'BOLO DO DIA',2500.00,15,0.00,37500.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,117,5,1,'2024-03-04 09:01:05','2024-03-04 09:01:05'),(15,'REFRIGERANTE',1121.50,2,0.00,2243.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,135,5,1,'2024-03-04 09:01:05','2024-03-04 09:01:05'),(16,'HAMBURGUER COMPLETO',6355.14,1,0.00,6355.14,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,137,5,1,'2024-03-04 09:01:05','2024-03-04 09:01:05'),(17,'REFRIGERANTE',1121.50,11,0.00,12336.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,135,5,1,'2024-03-04 14:23:04','2024-03-04 14:23:04'),(18,'ÁGUA GRANDE/GIG WATER',1401.87,11,0.00,15420.57,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,1,5,1,'2024-03-04 14:23:04','2024-03-04 14:23:04'),(19,'REFEIÇÕES',14018.69,11,0.00,154205.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,134,5,1,'2024-03-04 14:23:04','2024-03-04 14:23:04'),(20,'REFEIÇÕES',14018.69,15,0.00,210280.35,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,134,5,1,'2024-03-05 08:37:26','2024-03-05 08:37:26'),(21,'REFRIGERANTE',1121.50,15,0.00,16822.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,135,5,1,'2024-03-05 08:37:26','2024-03-05 08:37:26'),(22,'ÁGUA GRANDE/GIG WATER',1401.87,15,0.00,21028.05,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,1,5,1,'2024-03-05 08:37:26','2024-03-05 08:37:26'),(23,'ÁGUA GRANDE/GIG WATER',1401.87,16,0.00,22429.92,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,1,5,1,'2024-03-05 10:19:46','2024-03-05 10:19:46'),(24,'REFRIGERANTE',1121.50,16,0.00,17944.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,135,5,1,'2024-03-05 10:19:46','2024-03-05 10:19:46'),(25,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,134,5,1,'2024-03-05 10:19:46','2024-03-05 10:19:46'),(26,'ÁGUA GRANDE/GIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,1,5,1,'2024-03-05 11:37:18','2024-03-05 11:37:18'),(27,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,28,5,1,'2024-03-05 11:37:18','2024-03-05 11:37:18'),(28,'ÁGUA GRANDE/GIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,1,5,1,'2024-03-05 11:37:19','2024-03-05 11:37:19'),(29,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,28,5,1,'2024-03-05 11:37:19','2024-03-05 11:37:19'),(30,'ÁGUA GRANDE/GIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,1,5,1,'2024-03-05 11:37:19','2024-03-05 11:37:19'),(31,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,28,5,1,'2024-03-05 11:37:19','2024-03-05 11:37:19'),(32,'ÁGUA GRANDE/BIG WATER',1401.87,2,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,1,5,1,'2024-03-11 07:53:50','2024-03-11 07:53:50'),(33,'REFRIGERANTES',1121.49,2,0.00,2242.98,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,135,5,1,'2024-03-11 07:53:50','2024-03-11 07:53:50'),(34,'REFEIÇÕES',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,134,5,1,'2024-03-11 07:53:50','2024-03-11 07:53:50'),(35,'REFEIÇÕES',14018.69,12,0.00,168224.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,134,5,1,'2024-03-11 08:02:37','2024-03-11 08:02:37'),(36,'REFRIGERANTES',1121.49,7,0.00,7850.43,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,135,5,1,'2024-03-11 08:02:37','2024-03-11 08:02:37'),(37,'ÁGUA PEQUENA/SMALL WATER',934.58,7,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',17,2,5,1,'2024-03-11 08:02:37','2024-03-11 08:02:37'),(38,'REFRIGERANTES',1121.49,12,0.00,13457.88,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,135,5,1,'2024-03-13 13:24:11','2024-03-13 13:24:11'),(39,'REFEIÇÕES',14018.69,12,0.00,168224.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,134,5,1,'2024-03-13 13:24:11','2024-03-13 13:24:11'),(40,'ÁGUA PEQUENA/SMALL WATER',934.58,12,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',18,2,5,1,'2024-03-13 13:24:11','2024-03-13 13:24:11'),(41,'ÁGUA GRANDE/BIG WATER',1401.87,11,0.00,15420.57,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,1,5,1,'2024-03-14 14:23:49','2024-03-14 14:23:49'),(42,'REFRIGERANTES',1121.49,11,0.00,12336.39,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,135,5,1,'2024-03-14 14:23:50','2024-03-14 14:23:50'),(43,'REFEIÇÕES',14018.69,11,0.00,154205.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',19,134,5,1,'2024-03-14 14:23:50','2024-03-14 14:23:50'),(44,'REFRIGERANTES',1121.49,11,0.00,12336.39,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,135,5,1,'2024-03-14 14:30:51','2024-03-14 14:30:51'),(45,'ÁGUA GRANDE/BIG WATER',1401.87,11,0.00,15420.57,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,1,5,1,'2024-03-14 14:30:51','2024-03-14 14:30:51'),(46,'REFEIÇÕES',14018.69,11,0.00,154205.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',20,134,5,1,'2024-03-14 14:30:51','2024-03-14 14:30:51'),(47,'ÁGUA GRANDE/BIG WATER',1401.87,24,0.00,33644.88,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,1,5,1,'2024-03-15 08:26:24','2024-03-15 08:26:24'),(48,'REFRIGERANTES',1121.49,24,0.00,26915.76,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,135,5,1,'2024-03-15 08:26:24','2024-03-15 08:26:24'),(49,'REFEIÇÕES',14018.69,24,0.00,336448.56,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',21,134,5,1,'2024-03-15 08:26:24','2024-03-15 08:26:24'),(50,'Mousse de maracuja',1869.16,2,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',22,138,5,1,'2024-03-22 11:16:08','2024-03-22 11:16:08'),(51,'COCA-COLA',1121.50,1,0.00,1121.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',22,12,5,1,'2024-03-22 11:16:08','2024-03-22 11:16:08'),(52,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,2,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(53,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,135,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(54,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',23,134,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(55,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,2,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(56,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,135,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(57,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',24,134,5,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(58,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,2,5,1,'2024-03-25 09:17:41','2024-03-25 09:17:41'),(59,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,135,5,1,'2024-03-25 09:17:41','2024-03-25 09:17:41'),(60,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',25,134,5,1,'2024-03-25 09:17:41','2024-03-25 09:17:41'),(61,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',26,2,5,1,'2024-03-25 09:17:49','2024-03-25 09:17:49'),(62,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',26,135,5,1,'2024-03-25 09:17:49','2024-03-25 09:17:49'),(63,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',26,134,5,1,'2024-03-25 09:17:49','2024-03-25 09:17:49'),(64,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',27,2,5,1,'2024-03-25 09:17:50','2024-03-25 09:17:50'),(65,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',27,135,5,1,'2024-03-25 09:17:50','2024-03-25 09:17:50'),(66,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',27,134,5,1,'2024-03-25 09:17:50','2024-03-25 09:17:50'),(67,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',28,2,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(68,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',28,135,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(69,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',28,134,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(70,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',29,2,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(71,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',29,135,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(72,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',29,134,5,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(73,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',30,2,5,1,'2024-03-25 09:17:58','2024-03-25 09:17:58'),(74,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',30,135,5,1,'2024-03-25 09:17:58','2024-03-25 09:17:58'),(75,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',30,134,5,1,'2024-03-25 09:17:58','2024-03-25 09:17:58'),(76,'ÁGUA PEQUENA/SMALL WATER',934.58,16,0.00,14953.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',31,2,5,1,'2024-03-25 09:17:59','2024-03-25 09:17:59'),(77,'REFRIGERANTES',1121.49,16,0.00,17943.84,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',31,135,5,1,'2024-03-25 09:17:59','2024-03-25 09:17:59'),(78,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',31,134,5,1,'2024-03-25 09:17:59','2024-03-25 09:17:59'),(79,'ÁGUA PEQUENA/SMALL WATER',934.58,18,0.00,16822.44,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',32,2,5,1,'2024-03-26 08:33:26','2024-03-26 08:33:26'),(80,'REFRIGERANTES',1121.49,18,0.00,20186.82,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',32,135,5,1,'2024-03-26 08:33:26','2024-03-26 08:33:26'),(81,'REFEIÇÕES',14018.69,18,0.00,252336.42,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',32,134,5,1,'2024-03-26 08:33:26','2024-03-26 08:33:26'),(82,'ÁGUA PEQUENA/SMALL WATER',934.58,4,0.00,3738.32,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,2,5,1,'2024-04-01 04:52:40','2024-04-01 04:52:40'),(83,'REFRIGERANTES',1121.49,4,0.00,4485.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,135,5,1,'2024-04-01 04:52:40','2024-04-01 04:52:40'),(84,'REFEIÇÕES',14018.69,4,0.00,56074.76,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',33,134,5,1,'2024-04-01 04:52:40','2024-04-01 04:52:40'),(85,'COFFE BREAK',12744.36,22,0.00,280375.92,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',34,177,5,1,'2024-04-08 09:31:31','2024-04-08 09:31:31'),(86,'REFEIÇÕES',14018.69,33,0.00,462616.77,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,134,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(87,'REFRIGERANTES',1121.49,14,0.00,15700.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,135,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(88,'ÁGUA GRANDE/BIG WATER',1401.87,5,0.00,7009.35,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,1,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(89,'ÁGUA PEQUENA/SMALL WATER',934.58,6,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,2,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(90,'SOPA DE LEGUMES',2196.26,1,0.00,2196.26,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,131,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(91,'SUMO DE LIMÃO/LEMON',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,61,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(92,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,60,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(93,'SUMO DE LARANJA/ORANGE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,62,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(94,'CHÁ/TEA',934.58,6,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',35,38,5,1,'2024-06-11 14:44:20','2024-06-11 14:44:20'),(95,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',36,2,5,1,'2024-07-01 10:03:52','2024-07-01 10:03:52');
/*!40000 ALTER TABLE `item_proformas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_stocks`
--

DROP TABLE IF EXISTS `item_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `stock_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_stocks_stock_id_foreign` (`stock_id`),
  KEY `item_stocks_artigo_id_foreign` (`artigo_id`),
  CONSTRAINT `item_stocks_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stocks_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stocks`
--

LOCK TABLES `item_stocks` WRITE;
/*!40000 ALTER TABLE `item_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `preco` decimal(30,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` double DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` double DEFAULT NULL,
  `imposto_motivo` varchar(191) DEFAULT NULL,
  `factura_id` bigint(20) unsigned NOT NULL,
  `artigo_id` bigint(20) unsigned NOT NULL,
  `imposto_id` bigint(20) unsigned NOT NULL,
  `retencao_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_factura_id_foreign` (`factura_id`),
  KEY `items_artigo_id_foreign` (`artigo_id`),
  KEY `items_imposto_id_foreign` (`imposto_id`),
  KEY `items_retencao_id_foreign` (`retencao_id`),
  CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,12,5,1,'2024-03-02 08:23:21','2024-03-02 08:23:21'),(2,'REFEIÇÕES',15000.00,6,0.00,90000.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,134,5,1,'2024-03-02 08:23:21','2024-03-02 08:23:21'),(3,'ÁGUA GRANDE/GIG WATER',1401.87,6,0.00,8411.22,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',1,1,5,1,'2024-03-02 08:23:22','2024-03-02 08:23:22'),(4,'ÁGUA GRANDE/GIG WATER',1401.87,1,0.00,1401.87,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,1,5,1,'2024-03-05 11:37:56','2024-03-05 11:37:56'),(5,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,1,0.00,12149.53,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',2,28,5,1,'2024-03-05 11:37:56','2024-03-05 11:37:56'),(6,'COFFE BREAK',14953.28,50,0.00,747664.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',3,139,5,1,'2024-03-06 11:53:07','2024-03-06 11:53:07'),(7,'REFEIÇÕES',14018.69,15,0.00,210280.35,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,134,5,1,'2024-03-06 14:52:39','2024-03-06 14:52:39'),(8,'REFRIGERANTE',1121.50,15,0.00,16822.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,135,5,1,'2024-03-06 14:52:39','2024-03-06 14:52:39'),(9,'ÁGUA GRANDE/GIG WATER',1401.87,15,0.00,21028.05,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',4,1,5,1,'2024-03-06 14:52:39','2024-03-06 14:52:39'),(10,'REFEIÇÕES',14018.69,9,0.00,126168.21,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,134,5,1,'2024-03-06 15:07:17','2024-03-06 15:07:17'),(11,'REFRIGERANTES',11215.00,9,0.00,100935.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,135,5,1,'2024-03-06 15:07:17','2024-03-06 15:07:17'),(12,'ÁGUA GRANDE/GIG WATER',1401.87,9,0.00,12616.83,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',5,1,5,1,'2024-03-06 15:07:17','2024-03-06 15:07:17'),(13,'ÁGUA GRANDE/GIG WATER',1401.87,16,0.00,22429.92,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,1,5,1,'2024-03-07 14:35:34','2024-03-07 14:35:34'),(14,'REFRIGERANTE',1121.50,16,0.00,17944.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,135,5,1,'2024-03-07 14:35:34','2024-03-07 14:35:34'),(15,'REFEIÇÕES',14018.69,16,0.00,224299.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',6,134,5,1,'2024-03-07 14:35:35','2024-03-07 14:35:35'),(16,'REFRIGERANTES',1121.49,11,0.00,12336.39,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,135,5,1,'2024-03-14 14:34:45','2024-03-14 14:34:45'),(17,'ÁGUA GRANDE/BIG WATER',1401.87,11,0.00,15420.57,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,1,5,1,'2024-03-14 14:34:45','2024-03-14 14:34:45'),(18,'REFEIÇÕES',14018.69,11,0.00,154205.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',7,134,5,1,'2024-03-14 14:34:45','2024-03-14 14:34:45'),(19,'REFRIGERANTES',1121.49,12,0.00,13457.88,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,135,5,1,'2024-03-15 14:29:26','2024-03-15 14:29:26'),(20,'REFEIÇÕES',14018.69,12,0.00,168224.28,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,134,5,1,'2024-03-15 14:29:26','2024-03-15 14:29:26'),(21,'ÁGUA PEQUENA/SMALL WATER',934.58,12,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',8,2,5,1,'2024-03-15 14:29:26','2024-03-15 14:29:26'),(22,'MOUSSE DE MARACUJA',1869.16,4,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,116,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(23,'ARROZ DE FEIJÃO C/ FILETE',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,160,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(24,'GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',17757.01,4,0.00,71028.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,31,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(25,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,3,0.00,28037.37,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,29,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(26,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,3,0.00,36448.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,28,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(27,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,8,5,1,'2024-03-22 12:49:16','2024-03-22 12:49:16'),(28,'CUCA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,7,5,1,'2024-03-22 12:49:17','2024-03-22 12:49:17'),(29,'CHÁ/TEA',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,38,5,1,'2024-03-22 12:49:17','2024-03-22 12:49:17'),(30,'SPRITE',1121.50,3,0.00,3364.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,13,5,1,'2024-03-22 12:49:17','2024-03-22 12:49:17'),(31,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,12,5,1,'2024-03-22 12:49:17','2024-03-22 12:49:17'),(32,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',9,2,5,1,'2024-03-22 12:49:17','2024-03-22 12:49:17'),(33,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,44,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(34,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,158,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(35,'ARROZ DE FEIJÃO C/ FILETE',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,160,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(36,'BAGUETE DE FRANGO/CHICKEN BANGUETTE',5607.48,2,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,43,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(37,'BIFE DE FRANGO GRELHADO/GRILLED CHICKEN',9345.79,3,0.00,28037.37,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,29,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(38,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,3,0.00,36448.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,28,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(39,'GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',17757.01,4,0.00,71028.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,31,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(40,'MOUSSE DE MARACUJA',1869.16,4,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,116,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(41,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,8,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(42,'CUCA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,7,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(43,'CHÁ/TEA',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,38,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(44,'SPRITE',1121.50,3,0.00,3364.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,13,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(45,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,12,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(46,'ÁGUA PEQUENA/SMALL WATER',934.58,12,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',10,2,5,1,'2024-03-22 13:05:35','2024-03-22 13:05:35'),(47,'CHÁ/TEA',934.58,3,0.00,2803.74,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,38,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(48,'PREGO NO PÃO',6542.06,1,0.00,6542.06,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,44,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(49,'CUCA EM GARRAFA/BEER',1214.95,8,0.00,9719.60,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,7,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(50,'EKA EM GARRAFA/BEER',1214.95,4,0.00,4859.80,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,8,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(51,'SPRITE',1121.50,3,0.00,3364.50,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,13,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(52,'COCA-COLA',1121.50,6,0.00,6729.00,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,12,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(53,'ÁGUA PEQUENA/SMALL WATER',934.58,12,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,2,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(54,'MAÇA',747.66,1,0.00,747.66,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,158,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(55,'MOUSSE DE MARACUJA',1869.16,4,0.00,7476.64,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,116,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(56,'BAGUETE DE FRANGO/CHICKEN BANGUETTE',5607.48,2,0.00,11214.96,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,43,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(57,'PEIXE GRELHADO C/ LEGUMES  SALTEADOS BATA AO MURRO',14018.69,3,0.00,42056.07,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,159,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(58,'BIFE A DOM PEDRO/DOM PEDRO STEAK',12149.53,3,0.00,36448.59,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,28,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(59,'BIFE PEITO DE FRANGO',9345.79,3,0.00,28037.37,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,152,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(60,'GRELHADO MISTA DE CARNE/BIFE MIXED MEAT',17757.01,4,0.00,71028.04,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,31,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(61,'ARROZ DE FEIJÃO C/ FILETE',14018.69,2,0.00,28037.38,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',11,160,5,1,'2024-03-22 13:37:39','2024-03-22 13:37:39'),(62,'COFFE BREAK',15293.16,22,0.00,336449.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',12,177,5,1,'2024-04-09 04:48:28','2024-04-09 04:48:28'),(63,'ÁGUA PEQUENA/SMALL WATER',934.58,1,0.00,934.58,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',13,2,5,1,'2024-04-10 09:02:40','2024-04-10 09:02:40'),(64,'NETWORKING',1588785.05,1,0.00,1588785.05,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',14,178,5,1,'2024-05-22 06:13:11','2024-05-22 06:13:11'),(65,'COFFE BREAK',794392.52,1,0.00,794392.52,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',15,177,5,1,'2024-05-27 06:06:44','2024-05-27 06:06:44'),(66,'REFEIÇÕES',14018.69,33,0.00,462616.77,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,134,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(67,'REFRIGERANTES',1121.49,14,0.00,15700.86,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,135,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(68,'ÁGUA GRANDE/BIG WATER',1401.87,5,0.00,7009.35,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,1,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(69,'ÁGUA PEQUENA/SMALL WATER',934.58,6,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,2,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(70,'SOPA DE LEGUMES',2196.26,1,0.00,2196.26,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,131,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(71,'SUMO DE LIMÃO/LEMON',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,61,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(72,'SUMO DE ANANÁS\\ PINEAPPLE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,60,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(73,'SUMO DE LARANJA/ORANGE',2336.45,1,0.00,2336.45,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,62,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01'),(74,'CHÁ/TEA',934.58,6,0.00,5607.48,'Sem rentenção na fonte',0,'IVA 7',NULL,'IVA 7',7,'Regime Geral',16,38,5,1,'2024-06-18 07:50:01','2024-06-18 07:50:01');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_11_000000_create_departamentos_table',1),(2,'2014_10_12_000000_create_enderecos_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2020_08_10_110404_create_contactos_table',1),(7,'2021_01_06_173930_create_tipos_table',1),(8,'2021_01_06_173931_create_categorias_table',1),(9,'2021_01_06_173932_create_impostos_table',1),(10,'2021_01_06_173933_create_fornecedors_table',1),(11,'2021_01_06_173934_create_retencaos_table',1),(12,'2021_01_06_173952_create_artigos_table',1),(13,'2021_07_19_095646_create_clientes_table',1),(14,'2021_07_19_201615_create_empresas_table',1),(15,'2021_08_13_100920_create_formas_pagamentos_table',1),(16,'2021_08_13_100921_create_moedas_table',1),(17,'2021_08_13_100926_create_facturas_table',1),(18,'2021_08_27_084347_create_modo_pagamentos_table',1),(19,'2021_08_30_183409_create_items_table',1),(20,'2021_09_01_075243_create_proformas_table',1),(21,'2021_09_01_075439_create_item_proformas_table',1),(22,'2021_09_01_075937_create_series_table',1),(23,'2021_09_03_132534_create_armazems_table',1),(24,'2021_09_15_130302_create_stocks_table',1),(25,'2021_09_19_125720_create_item_stocks_table',1),(26,'2021_09_20_082519_create_recibos_table',1),(27,'2021_09_20_082623_create_factura_recibos_table',1),(28,'2021_09_20_082635_create_item_factura_recibos_table',1),(29,'2021_09_28_131912_create_motivo_anulacaos_table',1),(30,'2021_09_28_131912_create_tipo_motivo_anulacaos_table',1),(31,'2021_12_22_125550_create_bugs_table',1),(32,'2022_01_23_103308_create_fabricantes_table',1),(33,'2022_01_23_151610_create_condicoes_pagamentos_table',1),(34,'2022_01_25_091808_bancos',1),(35,'2022_02_09_131420_create_permission_tables',1),(36,'2022_09_08_110345_create_nota_creditos_table',1),(37,'2022_09_08_110451_create_nota_debitos_table',1),(38,'2022_09_08_110636_create_item_nota_creditos_table',1),(39,'2022_09_08_110646_create_item_nota_debitos_table',1),(40,'2022_09_11_162939_create_guia_transportes_table',1),(41,'2022_09_11_162954_create_item_guia_transportes_table',1),(42,'2022_09_11_163007_create_guia_remessas_table',1),(43,'2022_09_11_163023_create_item_guia_remessas_table',1),(44,'2022_09_21_140425_create_agts_table',1),(45,'2023_01_23_155122_create_tax_tables_table',1),(46,'2023_01_23_155225_create_saft_audits_table',1),(47,'2023_03_31_105051_create_pais_table',1),(48,'2023_05_07_190801_create_safts_table',1),(49,'2023_07_19_200600_create_receita_despesas_table',1),(50,'2024_04_13_074425_create_pedido_item_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(1,'App\\User',5),(1,'App\\User',8),(3,'App\\User',11),(3,'App\\User',21),(3,'App\\User',23),(7,'App\\User',14);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modo_pagamentos`
--

DROP TABLE IF EXISTS `modo_pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modo_pagamentos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modo_pagamentos`
--

LOCK TABLES `modo_pagamentos` WRITE;
/*!40000 ALTER TABLE `modo_pagamentos` DISABLE KEYS */;
INSERT INTO `modo_pagamentos` VALUES (1,'Cheque',NULL,NULL),(2,'Numerário',NULL,NULL),(3,'Transferência Bancária',NULL,NULL);
/*!40000 ALTER TABLE `modo_pagamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moedas`
--

DROP TABLE IF EXISTS `moedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moedas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moedas`
--

LOCK TABLES `moedas` WRITE;
/*!40000 ALTER TABLE `moedas` DISABLE KEYS */;
INSERT INTO `moedas` VALUES (1,'Kwanza',NULL,NULL),(2,'Dollar',NULL,NULL);
/*!40000 ALTER TABLE `moedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo_anulacaos`
--

DROP TABLE IF EXISTS `motivo_anulacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivo_anulacaos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo_anulacaos`
--

LOCK TABLES `motivo_anulacaos` WRITE;
/*!40000 ALTER TABLE `motivo_anulacaos` DISABLE KEYS */;
INSERT INTO `motivo_anulacaos` VALUES (1,'0001','Anulação','',1,NULL,NULL),(2,'0002','Rectificação','',1,NULL,NULL);
/*!40000 ALTER TABLE `motivo_anulacaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_creditos`
--

DROP TABLE IF EXISTS `nota_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_creditos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `documento_numero` varchar(191) DEFAULT NULL,
  `motivo_anulacao_id` bigint(20) unsigned DEFAULT NULL,
  `motivo_anulacao_designacao` varchar(191) DEFAULT NULL,
  `tipo_motivo_anulacao_id` bigint(20) unsigned DEFAULT NULL,
  `tipo_motivo_anulacao_designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nota_creditos_motivo_anulacao_id_foreign` (`motivo_anulacao_id`),
  KEY `nota_creditos_tipo_motivo_anulacao_id_foreign` (`tipo_motivo_anulacao_id`),
  KEY `nota_creditos_cliente_id_foreign` (`cliente_id`),
  KEY `nota_creditos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `nota_creditos_moeda_id_foreign` (`moeda_id`),
  KEY `nota_creditos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `nota_creditos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_motivo_anulacao_id_foreign` FOREIGN KEY (`motivo_anulacao_id`) REFERENCES `motivo_anulacaos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_tipo_motivo_anulacao_id_foreign` FOREIGN KEY (`tipo_motivo_anulacao_id`) REFERENCES `tipo_motivo_anulacaos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_creditos`
--

LOCK TABLES `nota_creditos` WRITE;
/*!40000 ALTER TABLE `nota_creditos` DISABLE KEYS */;
INSERT INTO `nota_creditos` VALUES (1,'NC 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-03 00:00:00','2024-03-03 00:00:00',1,1,10,'Lukenia Coelho',NULL,16355.14,0.00,1144.86,0.00,17500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,2,'FR 2024/2',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-03 19:43:04','2024-03-03 19:43:04'),(2,'NC 2024/2',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,239720.04,0.00,16780.40,0.00,256500.44,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,6,'FR 2024/6',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-06 15:19:09','2024-03-06 15:19:09'),(3,'NC 2024/3',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,213084.48,0.00,14915.91,0.00,228000.39,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,7,'FR 2024/7',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-06 15:38:02','2024-03-06 15:38:02'),(4,'NC 2024/4',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 17:41:01','2024-03-07 00:00:00',1,1,8,'Daniel Chongolola',NULL,13925.24,0.00,974.77,0.00,14900.01,'kXHx0tAhjrpu140t8lJn0GfGdQ3RfUna3HMrZjdyrLhLo36sVP5OKaszLUx+7VTrZwXRdwGuzmZu1yELxAbURhi9/vyQiymYZJBOk4a/O8eUi9+sbcW/ysAQrugjhVEhaYgayL7yP8HgDFYAZDa4wyI9DoWs+x90hKlGEhEUy3k=',1,11,'FR 2024/10',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-07 15:41:01','2024-03-07 15:41:01'),(5,'NC 2024/5',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-07 17:42:02','2024-03-07 00:00:00',1,1,8,'Daniel Chongolola',NULL,13925.24,0.00,974.77,0.00,14900.01,'moru74rOOvK0uEQ7eqZ+qPNIe7HyCmHOxvS3FG78yvKr1hA9c6kORI0FpKbqGnERe/3IkHDb/Aipzujty6/DBrnV/OQ8AgErJR+eAWoe2wnFocgUuKKbWo+I/TqQ3plVFK5FIGRShW/QPyyc7N7Gb4ZuTknEm+2jfVWsJE+BeqA=',1,10,'FR 2024/10',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-07 15:42:02','2024-03-07 15:42:02'),(6,'NC 2024/6',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:31:44','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'ONPV7gJ1QZcBQoXzCTxhUfgS0lgWGc+HY8Ky2t4m6oQruZGVHnQqUIWZukfkz0iSGLBBGJWcomgrHTKQlTG4c2zn9nFC7UmWS2kD/OrRZaxWqWbe4M0jwGoeWW+6QMq2g08wfmcl4f6hbGJvOHa475IqUzA5TC/fS+3RWeZPSqo=',1,20,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:31:45','2024-03-08 09:31:45'),(7,'NC 2024/7',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:31:59','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'sdAXtV7vCiVkftDxXZ0T0eFzYLcH43DE2Zl11iYtpNx4r1cRHWxovSe/FHLiGQX7k1VKnlIsp6oXiXy0aiurJ243FGiLg/ciDvYeUaUNcc3Z2c74Nzyp4gom3Y5MkZA1goVwwbJHKOoW1hldsqwmuWvBFjqznQiAzzM3TD1l6+U=',1,19,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:31:59','2024-03-08 09:31:59'),(8,'NC 2024/8',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:32:19','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'LDNqTe7sJjBETtqAY74FipkGnfB8lk7+E0ncVGTjkDeCd5elbrXNHaU/8T6qBPyWsjtvrcRnpkBN+FSwhDPR3/c+a1CATlGU/rMMWdtHCN3polx6a8nefKf9ft8Hi7wSUTEN/jve2YTadikb4Q3zQcn4SyAsFGLNHgnkAlJAlaE=',1,18,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:32:19','2024-03-08 09:32:19'),(9,'NC 2024/9',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:32:42','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'T/SUJOcQDn3A/YG5kxbKHMNkEK7v6jxwAXGsh3vUhVXU3GSwrAXJ9D/JkI1X/84W/wEsUAxAuai1CLvQ+CDcSlkh/ykJJZxvMTghjQXqA6LJTn/xv0q+woKzHxm7ORZ4qMePFM2m2sGXO/oDYpTgRWeYSwOPFZka+iH0kT2Pbic=',1,17,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:32:42','2024-03-08 09:32:42'),(10,'NC 2024/10',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:33:11','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'R5q7wTqs9k21aCinfW1LQ5XecNLeHM+dT+TIxKdKrMgeLCTbZFDCYTMFNcCyR+TmzOweZ+GlrRclawifXeHCZX8Krt6ugFtipqlyOISjtcMiDnOi3i+PaVQJm/e9nqrL/roa9UaZkyMZyXViwEbsb3qXWKFLLGMrkGgZScmj83w=',1,16,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:33:11','2024-03-08 09:33:11'),(11,'NC 2024/11',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:33:27','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'U677id5FpBwlHgKUkL9YAVQohEULd4WH7fq0gX/tdpsaiCevMR9q0f3a3ecvcPygUyuDx74C4dXUtX1grHxQnl72xOpmbW7ZtsJjLienVkEfveTzWPmTYgP5HB374/tuVe33jyeJy3tf+wYZhs9XcN1b4JTF2BcH0J2zUEMbS1Y=',1,15,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:33:27','2024-03-08 09:33:27'),(12,'NC 2024/12',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-08 11:34:48','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,239720.04,0.00,16780.40,0.00,256500.44,'O38BxcB4dbif96VqVPSY0CwkqzaidoleaEvmYz7vqiwtuQ95DbfMmqVBOAk/oNnNKKoCNo7ilToqjir1lEYQ7fT6moeBPJDt7DAjB5WDdhOZr0oVaLf1K8+T/zB2qEc58gLTDxUK3V5qIhLIEpno7ovlp52tgMGbVBktk10OqnY=',1,5,'FT 2024/5',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:34:48','2024-03-08 09:34:48'),(13,'NC 2024/13',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:35:08','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'jMmx3GJSH6RDePW+IRDJgPbKizH4wKkTBHtvKgDfJGcd3mdaENgNCRo5v3fZDUCTMvOaaO4EkT397JQepomM6H4xq3GClZg1WZ7CuriTtNH9Nn5DjR0GP7DokDPp2p3rxNctHQmD5gMHmwZ9bL6296rbAjxrwd3P2IWNygLb8dw=',1,14,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:35:08','2024-03-08 09:35:08'),(14,'NC 2024/14',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-08 11:36:02','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,14953.27,0.00,1046.73,0.00,16000.00,'KqKac0EbB/QZ7igNHMCHQDcIcKVEBb1C58bWTfAgy7vujzceVrj0Lr8/wrwU85Y86fgTjXZn6+UHRL+5FA2PdRYINbTAIVfhb74ZF/WmA37BRh/tcZQAqlrJz3WMCg0XF21oGMzVsnwnijlkKXiTlQSnipDhQ8xzEoHiuoDlTds=',1,13,'FR 2024/13',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:36:02','2024-03-08 09:36:02'),(15,'NC 2024/15',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-08 11:37:59','2024-03-08 00:00:00',1,1,8,'Daniel Chongolola',NULL,248130.90,0.00,17369.16,0.00,265500.06,'c2WoWTlZYGNMpLHLMOCscvTyGaW9mjfrhfUQ4DBseh3vn11coAEL/RC03aLIgR1bPrdLDcaaKEs/O2SrL9cRVURo43I53GfYtB8EVUNexFpPfzCj2MUYVS/7M+RRKOJyfEMorMd17LHlj7ztTDOxtq0XYy5T4YnNE5TJhBKPSjo=',1,4,'FT 2024/4',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-08 09:37:59','2024-03-08 09:37:59'),(16,'NC 2024/16',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-03-19 10:55:13','2024-03-19 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,7663.55,0.00,536.45,0.00,8200.00,'Pz8xzJ0f4IVj8Puf5MaHbyY4Wg0zTHBPYUyv8kJxhCxuc1R/B0AE/PFORfbJdDXEpRtGtg+H36lFnjSDICxPuSWfc9QGlGKHS+9qisdOrXCRPq18AyAJv6igPDFfb9P4RyEs+LhKoA4xwdg/samDRS/P5NjhGhOm4kQ45YKQaq0=',1,35,'FR 2024/35',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-19 08:55:14','2024-03-19 08:55:14'),(17,'NC 2024/17',6,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-22 14:50:43','2024-03-22 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,199439.24,0.00,13960.75,0.00,213399.99,'n32oMpU4mvpFUGiGg+1DJbnj7mn+XzooYQsAvaSaGOcVI0yTQEZuZkUtUECKpMmp5pmy2VK1vywaWI80SqXexejGwP3bY0rnFyF7btWkCKe5QIH3kERcjRihOtPIHYx9C72VqrgCAcyPWFIdT9xjQfsBUFaCoO6jUuoBoOe6K4E=',1,9,'FT 2024/9',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-22 12:50:43','2024-03-22 12:50:43'),(18,'NC 2024/18',6,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-22 15:32:15','2024-03-22 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,228224.30,0.00,15975.70,0.00,244200.00,'NGM8CsqkBH7/GOQ9iEcVFjzhnvsMcjUd9gokQ7edyl+HoHumJigZXOh3hGiza9DRZU2bpw8ogXPckS3K/bekldNaWalRTyLaQrtpncg773iAqXDgbUgOJfyNS/55X1ZU1gniuah2wJ6asKonfMgQiAy2NC7uadwNYuODiNLvEkA=',1,10,'FT 2024/10',1,'Anulação',1,'Ausência de desconto na fatura','2024-03-22 13:32:16','2024-03-22 13:32:16'),(19,'NC 2024/19',8,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-04-01 15:58:00','2024-04-01 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,280373.83,0.00,19626.17,0.00,300000.00,'LcKdrfPj4FwObL1npHTt45MFtw0gkQTFSWulUVoZzZi7yx6/bxs0VTrO4/y5juh4r1oalldJCivH+HGWdXHR///PXG1tmJqgGQJ0nobba8iaS2mPIj2p85nWJVVwvbgG7q/sLxudXC2pphRy3Tzb3r+Bf2ua3xc7VjDYrIdQswM=',1,53,'FR 2024/53',1,'Anulação',1,'Ausência de desconto na fatura','2024-04-01 11:58:01','2024-04-01 11:58:01'),(20,'NC 2024/20',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-04 13:27:11','2024-04-04 00:00:00',1,1,8,'Daniel Chongolola',NULL,12596.79,0.00,881.78,0.00,13478.57,'Shg3YMKtzDz8qcSxOS5RFfgLaO0H4J/QiarLUKlM5nsS6SNBF9bLnNpLmGxvy/S5Ujx4bzTfKJIaHzZmyAllbjlMbubOjIfsDXL5NVV2PZZdGCE3NSKorppi3tK/GyEvjE6AmObm8QhIz/oAmhFn8DO60yS+lysXPlpfOFKEYow=',1,75,'FR 2024/75',1,'Anulação',1,'Ausência de desconto na fatura','2024-04-04 09:27:11','2024-04-04 09:27:11'),(21,'NC 2024/20',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-04 13:27:13','2024-04-04 00:00:00',1,1,8,'Daniel Chongolola',NULL,12596.79,0.00,881.78,0.00,13478.57,'gbfkRvRP7tLCrCzUoid68PhTAbCKo7SP3LJMyexBEnBpi1rYqVozEyIc9e8CD4cSLvvNKXC9eekmeDtbPhZmgn3kT3Z7badAz2sif86mSOb1Ph0SAafBHJWV8tmiS+ByOANMgDj5uMVAPg5cLy6z8LdjpGoLV22csqDdnjWohFQ=',1,75,'FR 2024/75',1,'Anulação',1,'Ausência de desconto na fatura','2024-04-04 09:27:13','2024-04-04 09:27:13'),(22,'NC 2024/22',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-04-07 11:45:43','2024-04-07 00:00:00',1,1,21,'Coelho Luís',NULL,7009.33,0.00,490.65,0.00,7499.98,'Wirrp2wHLSqz+dZ/TgFkBEMzPXz0wTNirb7tvZt5DOdVQH+jdHrcycOODST19ua2cZyq7kILAQK1uXqLiPxl8eVyuzdIMB/wISDyghOe/OZNZjyD4+yhfdffNWGeuWvOhJSEJ9VlAXQFpA/MSNCyTWa8l+JVfePh0ZTpcYKxVQ0=',1,84,'FR 2024/84',1,'Anulação',1,'Ausência de desconto na fatura','2024-04-07 07:45:44','2024-04-07 07:45:44'),(23,'NC 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-05-20 10:21:41','2024-05-20 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,5140.19,0.00,359.81,0.00,5500.00,'iGv7y87JTXUEjjj1PBEY0xysO2VLYp8nAwIc/obn7wtB2W82TJL3FgHSPfu5BI9W8nZoXBc7WJBqRYUwO7zJlPUvawS+qoY6tknPCrL0YtH1eAqj5+zmetYd/k+c7H0qETQiy1lRpEoEdfG9H22bFUe9OAKcsWl6LKHq8W5qOY4=',1,105,'FR 2024/105',1,'Anulação',1,'Ausência de desconto na fatura','2024-05-20 08:21:41','2024-05-20 08:21:41'),(24,'NC 2024/24',8,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-05-27 08:04:57','2024-05-27 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,794392.52,0.00,55607.48,0.00,850000.00,'SpkMtGdb4OYTcIMCWnmbJh4EyDzQrL8JjAi/kHaMXBzkVoWi/8zoxYWg7/Vp/ZZQqN8pAeXXnG7v2S7sIvjLyx2Qs9M9JJxmTBI8xvgKbFY9JKJmJuIDl+YhHtTRsczSNAxdDfLMxMoys0MY9CvhM3gS9b77k6/Vd5kN0qpkmGg=',1,106,'FR 2024/106',1,'Anulação',3,'Erro na entidade','2024-05-27 06:04:57','2024-05-27 06:04:57'),(25,'NC 2024/25',1,'Consumidor Final','9999999','Frente ao Aeroporto Doméstico','2024-06-05 13:22:55','2024-06-05 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,5794.38,0.00,405.61,0.00,6199.99,'SFdA/dOGUMN2hjSY/ZIwW1jok5e2FCTsIi+rbDiJzSQcl1DczRhR9CK/APbCw0g0HG8jPWhddFSKSFWH9eP2nVV++Lh4JRMZe/a33dqqimfudbDXaHdaob9yYNSAyzm4L3FLTQXvfvCkvy1HW+58819LskJyEL69g+dsyEiTfLE=',1,28,'FR 2024/26',1,'Anulação',1,'Ausência de desconto na fatura','2024-06-05 11:22:56','2024-06-05 11:22:56');
/*!40000 ALTER TABLE `nota_creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_debitos`
--

DROP TABLE IF EXISTS `nota_debitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota_debitos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nota_debitos_cliente_id_foreign` (`cliente_id`),
  KEY `nota_debitos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `nota_debitos_moeda_id_foreign` (`moeda_id`),
  KEY `nota_debitos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `nota_debitos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_debitos`
--

LOCK TABLES `nota_debitos` WRITE;
/*!40000 ALTER TABLE `nota_debitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_debitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `sigla` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Angola','AO',1,NULL,NULL),(2,'Portugal','PT',1,NULL,NULL),(3,'Brasil','BR',1,'2024-04-10 09:50:31','2024-04-10 09:50:31'),(4,'Moçambique','MOZ',1,'2024-04-15 08:48:54','2024-04-15 08:48:54'),(5,'Guiné','GN',1,'2024-04-15 08:50:58','2024-04-15 08:50:58');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `mesa` varchar(191) DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_cliente_id_foreign` (`cliente_id`),
  KEY `pedidos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `pedidos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pedidos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,9,'AlLVERDE LDA','1',1,'2024-04-15 06:29:09','2024-04-15 06:29:09'),(2,9,'AlLVERDE LDA','1',1,'2024-04-15 07:07:28','2024-04-15 07:07:28'),(3,5,'Fundação CODESPA','1',1,'2024-04-15 09:40:17','2024-04-15 09:40:17');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'pos','web',NULL,NULL),(2,'painel','web',NULL,NULL),(3,'artigo','web',NULL,NULL),(4,'receita_despesa','web',NULL,NULL),(5,'cliente','web',NULL,NULL),(6,'documento','web',NULL,NULL),(7,'relatorio','web',NULL,NULL),(8,'configuracoes','web',NULL,NULL),(9,'rh','web','2024-01-23 19:12:14','2024-01-23 19:12:14');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proformas`
--

DROP TABLE IF EXISTS `proformas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proformas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_factura` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proformas_cliente_id_foreign` (`cliente_id`),
  KEY `proformas_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `proformas_moeda_id_foreign` (`moeda_id`),
  KEY `proformas_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `proformas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `proformas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `proformas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `proformas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proformas`
--

LOCK TABLES `proformas` WRITE;
/*!40000 ALTER TABLE `proformas` DISABLE KEYS */;
INSERT INTO `proformas` VALUES (1,'PP 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-02-23 00:00:00','2024-02-23 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,1000.00,0.00,70.00,0.00,1070.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 12:28:04','2024-02-23 12:28:04'),(2,'PP 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-02-23 00:00:00','2024-02-23 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,1000.00,0.00,70.00,0.00,1070.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 12:28:05','2024-02-23 12:28:05'),(3,'PP 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-02-23 00:00:00','2024-02-23 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,1000.00,0.00,70.00,0.00,1070.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 12:28:05','2024-02-23 12:28:05'),(4,'PP 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-02-23 00:00:00','2024-02-23 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,1000.00,0.00,70.00,0.00,1070.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 12:28:12','2024-02-23 12:28:12'),(5,'PP 2024/1',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-02-23 00:00:00','2024-02-23 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,1000.00,0.00,70.00,0.00,1070.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 12:28:15','2024-02-23 12:28:15'),(6,'PP 2024/6',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-02-29 00:00:00','2024-02-29 00:00:00',2,1,5,'FERNANDO ESCOVALO QUENGO','Refrigerantes diversos.',98411.22,0.00,6888.79,0.00,105300.01,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-29 10:06:22','2024-02-29 10:06:22'),(7,'PP 2024/7',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-02-29 00:00:00','2024-02-29 00:00:00',2,1,5,'FERNANDO ESCOVALO QUENGO','Refrigerantes Diversos.',105140.22,0.00,7359.82,0.00,112500.04,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-02-29 10:11:02','2024-03-02 08:23:22'),(8,'PP 2024/8',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-01 00:00:00','2024-03-05 00:00:00',2,1,5,'FERNANDO ESCOVALO QUENGO','Coca cola (Refrigerante Diversos)',140186.96,0.00,9813.09,0.00,150000.05,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-01 08:28:37','2024-03-01 08:28:37'),(9,'PP 2024/9',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-04 00:00:00','2024-03-04 00:00:00',1,1,11,'Nzumba Paciência',NULL,46098.14,0.00,3226.87,0.00,49325.01,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-04 09:01:05','2024-03-04 09:01:05'),(10,'PP 2024/10',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-04 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,181962.66,0.00,12737.39,0.00,194700.05,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-04 14:23:04','2024-03-04 14:23:04'),(11,'PP 2024/11',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,248130.90,0.00,17369.16,0.00,265500.06,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-05 08:37:26','2024-03-06 14:52:39'),(12,'PP 2024/12',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-05 00:00:00','2024-03-10 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,264672.96,0.00,18527.11,0.00,283200.07,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-05 10:19:46','2024-03-07 14:35:35'),(13,'PP 2024/13',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-05 00:00:00','2024-03-05 00:00:00',1,1,1,'Administrador',NULL,13551.40,0.00,948.60,0.00,14500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-05 11:37:18','2024-03-05 11:37:18'),(14,'PP 2024/13',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-05 00:00:00','2024-03-05 00:00:00',1,1,1,'Administrador',NULL,13551.40,0.00,948.60,0.00,14500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-05 11:37:19','2024-03-05 11:37:19'),(15,'PP 2024/13',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-05 00:00:00','2024-03-05 00:00:00',1,1,1,'Administrador',NULL,13551.40,0.00,948.60,0.00,14500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-03-05 11:37:19','2024-03-05 11:37:56'),(16,'PP 2024/16',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-11 09:53:50','2024-03-11 00:00:00',1,1,5,'FERNANDO  QUENGO','Jantar do Sr. Henriques e do Sr. Nascimento consumido no dia 07-03-2024',33084.10,0.00,2315.89,0.00,35399.99,'p0Xx97ydCEyjJKyVZGaEs932bG6x95IPZNZVF+sOs0wAoxmDyV00X71VnjufR9eOz7g9DE/06tE5tZhmbNwsZqFDajwCweGfUJ1L3f6zofyHdgKi6xexRNG41Qd55CTDidGL6KUa/Nxc3D3Rgf7qpvzJTAqfe+JZlqWBWlOaDiA=',1,1,'2024-03-11 07:53:50','2024-03-11 07:53:50'),(17,'PP 2024/17',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-11 10:02:37','2024-03-12 00:00:00',1,1,5,'FERNANDO  QUENGO','sr. Albano Muhongo',182616.77,0.00,12783.17,0.00,195399.94,'P2P6DYdXatioRPmI8Cuh+7DQ4GuQAl0Hq6ENATNVyTPICeZAqg1LcjfHLMu0jQ5s+6dg3wPA+3snIOtvCowWI5zRIZNey34cKVMVqWIpc7FL6UxBQVQHSz/HKemcR0DkWpjkVFl5MElZQCA4PJOuumoKYhlE2ELmqdQ0e1z6Nl0=',1,1,'2024-03-11 08:02:37','2024-03-11 08:02:37'),(18,'PP 2024/18',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-13 15:24:10','2024-03-16 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,192897.12,0.00,13502.80,0.00,206399.92,'TULlwmRwkkzx2EXtW03yR+FedAL12VBSK1KlrMH0yeVP3Z2g7I0WVUYzoQZcvEwW+JMAQpS7tp7c8olQZJpFBQ+7DJOltqZAQfZLiIyF/V1rRSvbR82B/Xb1LCfh7BpMUBMWEJSNhKMHqylOMw6KbIOG2Dh2AgGJ05ygnLiyVdk=',1,0,'2024-03-13 13:24:11','2024-03-15 14:29:26'),(19,'PP 2024/19',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-14 16:23:49','2024-03-14 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,181962.55,0.00,12737.38,0.00,194699.93,'h/pzEl/HijR/gkOVDsabRgpEZqXEYUJ1TxzwUpfxWcM6IBr2M5tOwQhtDsb26VfGFRJM3liVGIYYe3cwp4PQTuyrkt2uKHL4Czzbx6p4J08UzJ0JrGHUU63yY2zX4ZUTNzIzl62GKajXzxD1b/9NLPiqszbLRN1el6F75DskXLo=',1,1,'2024-03-14 14:23:49','2024-03-14 14:23:49'),(20,'PP 2024/20',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-14 16:30:51','2024-03-14 00:00:00',1,1,5,'FERNANDO  QUENGO','SR. ALBANO MUHONGO',181962.55,0.00,12737.38,0.00,194699.93,'qiamI010s9Wf+DIkEuCwHp/8p/c5TG+gu4O8vstvusUEoRDYzghzss6akGd0sMTZKRnVE0mkfXbwuobM7WWm1QmTwEg97CZVOOP/4MEG9KbFauWKix/mjP7eAbkfQplpwNKcOlIEUTJCCAlQYJINuyP4+wGzRZVslK0KDYATdMM=',1,0,'2024-03-14 14:30:51','2024-03-14 14:34:45'),(21,'PP 2024/21',6,'GELCIA DOMINGAS JOSÉ FUNETE','005783213LA040','Bairro Cassenda - Maianga Rua 8 casa nº 33','2024-03-15 10:26:24','2024-03-18 00:00:00',3,1,5,'FERNANDO  QUENGO',NULL,397009.20,0.00,27790.64,0.00,424799.84,'Kq/s/6gL59v9bR+fBzX9e80RC4ucxlWCLPuiP6UVWQW5Z2pfgoCHqJgPciFZfIEPvuoMb6RNLPexSQkvqr/p/dJ6G7bkTy+qxmli4R5ka7l6eEyTuoXQPXI1OHKPVfTSbIKEHqgkYKRaliP7dDhoe3ko0krJmd2q4tkwoopPvvs=',1,1,'2024-03-15 08:26:24','2024-03-15 08:26:24'),(22,'PP 2024/22',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-22 13:16:07','2024-03-15 00:00:00',1,1,8,'Daniel Chongolola',NULL,4859.82,0.00,340.19,0.00,5200.01,'gKzqHFlVaTMQzvO2k9BpUI0F/poeSwk8dW25eRC/F0hSbG9Uc2VmjNExWb2MpZ4KvsnUSqXbSoxBhVPHskI6cU9egH9ggMCk/1uBh73nlEtqbm/eaMyfI1fPfpfkTjwus5EKU25J4hEW4saA3bLdFbIuaBCvCobvxg9JY8e282Q=',1,1,'2024-03-22 11:16:08','2024-03-22 11:16:08'),(23,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:36','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'GLj6WGyF00biTlP21uLducfK6lk8e2ms3/VIAYWxhXrEuA++CyJiVIKBBlAkVatXVkQ7pCbjpXtIKMYI7XBOljZLXUzxV9c3+3Q8k+O3e59GgQ7JWI1k0uAmrHhDnqI+QRM902b1GHNW1Aie9iahZ2wzLvJjshO7imX4G5AQq4w=',1,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(24,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:37','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'XLOlbfRkGwqYG48OiET/0TzPfGB2olCTMooiDKfzzzfyj0vAXVeME97Zb/J2Ql5scBXdXzNZ0HYMaz2YKKnYm/Nt5WNsBLmrBNLt1GBKL3Vq44T+J+o1OvxmvzaY1bnKNEiowB4DWqqvSiOGidy+T6gypifN7HrWPweIKucJF5o=',1,1,'2024-03-25 09:17:37','2024-03-25 09:17:37'),(25,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:41','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'NlaNKgDZi8kgF9dnmKIBu21WI5GE8DmXUesp/49B+PJROPS4go7hdMVZsGB/p+9H8cjHVw371rZrV5U28JRkzEoxnnt3yFa42mIJIX/Na9SN31j7HyZyRrIhEe+36uviTSTKxkGjanbQFaxn86onSpVHoB+83ID/hme90apYTpk=',1,1,'2024-03-25 09:17:41','2024-03-25 09:17:41'),(26,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:49','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'EDEoqDIgdXI5Rkp/b1l/4Dk07QQLzTUcQMEQTfLqM4u2daFGxyOKVRH4Yz0Obf9ITIZy0KGWShBJ5j5wIZqgUTlVB0BpZkrIhEaZxnA9//1fYJN2Uum97TR2hYnH2g1b3n8pUKO3HPQHg6iBcWDX6xKY/0JR95SXCxrtD4a9WaM=',1,1,'2024-03-25 09:17:49','2024-03-25 09:17:49'),(27,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:50','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'X16cgM/fn/oFMmUT+6Vdev9ICO1xanrvGMb2jI2oaGn/EtOiKogAokyLaCkfhitfcwcKn0njkbTnFfXmxoPBrRI5lRYu3zxjU53SNlFCiFxyUCuU/RyXTl+xpOuY0xilXraD/sN3qhf9yWOyasvDbH/g5FL1ASd6pB26bFg8D1k=',1,1,'2024-03-25 09:17:50','2024-03-25 09:17:50'),(28,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:51','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'AYNq8RNHSyAlBrUFVIsJBv41Ynrzh+lq6cf0S6aqiXh8pZjShjFQ7s4DpYyluNJpC+AUN/Dg1l4h98EkmqIXdaGRI10ect7WT03oq2x2zPSP79I7RS2Lenc7WDchJ0aIKQwyz+mDyNzkkGjgBKOrfWWIdTLQWN3iqzZZ70Nflr8=',1,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(29,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:51','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'sqx18u+emdtb4cjynY1a0TYu3C4bXosmMXfu3l8BERe32marN0CcdTwDQB7elxbGzUJ+LMqq2sqNzUu1MwzOg8UM13w655ufusi5Y25jopatFYK+r/eJsmxHqOlG1ox4JJLGyiY6PxkC3NBQWW2AEQVDJjjib1wWFKTYsNBVowI=',1,1,'2024-03-25 09:17:51','2024-03-25 09:17:51'),(30,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:58','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'DvOwpI8UkOnCB6JTAm7z9MIXFA5viI53XhVEzQUfKtyw/22AkK53vroW7cAAlE97qHzzdqwADbJneVujrLEk6YXgN8skbu4Qz1mZ9I7rPery6XqeoPP3g1nbFdmXuXL/3X0rre3OKitqgJIqo+GQjGqrzxEImc+WPaxfwE82anw=',1,1,'2024-03-25 09:17:58','2024-03-25 09:17:58'),(31,'PP 2024/23',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-25 11:17:59','2024-03-25 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,257196.16,0.00,18003.73,0.00,275199.89,'SPEl4h+nx3V3uMlnJ/T2dRVKvJ80TXkfbd8VUwmW9GyYESxQFAK3qQxuY0kJrkWg2zLshfFgotj2Azxysm/Nell2RVkSuVPGquNfkP/GD9x7iUVpaUtfHSXHXWGmxG2pR/O0DlVJMaw6FlYP5G9IYmo0H+ug6XdPIhCh2TGoF+U=',1,1,'2024-03-25 09:17:59','2024-03-25 09:17:59'),(32,'PP 2024/32',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-26 10:33:26','2024-03-26 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,289345.68,0.00,20254.20,0.00,309599.88,'jmwPPvl7B+946z6JnDAEIeXSHd400MT+tkf8WgZYtWhDLTz5rBn68Tq0MvN6nO6JClWqd0JtV5ULdbge8Ov2LwGhF5+DDzkpwxUNk0hXV75y69zMpE89pF/gehlPXZN/A/A8Bi9XHFC8eOoVCWPPXIprAcKsew2h2Ne2TT6ESN0=',1,1,'2024-03-26 08:33:26','2024-03-26 08:33:26'),(33,'PP 2024/33',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-04-01 08:52:40','2024-04-02 00:00:00',1,1,5,'FERNANDO  QUENGO','proforma dos Hospedes que estiveram alojados no Hotel de 18 Á 21 de Março.',64299.04,0.00,4500.93,0.00,68799.97,'NeGX6n+LJKkd/eDE6a2zZsj+xL/bkcb6Epbsu8vBAREeg3z0nN+XrH+9YG5p3z/k3jNR/10dCaTGb5tMLj9CkY11UT7GfpoIEaFS9Ls+yzS2q5kHQFlolrOuisYDJwdJs/vcUHhtDFi9A8+v/2aipG0KbD+SYOXtRImRr+gcb90=',1,1,'2024-04-01 04:52:40','2024-04-01 04:52:40'),(34,'PP 2024/34',8,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-04-08 13:31:30','2024-04-08 00:00:00',1,1,21,'Coelho Luís',NULL,280375.92,0.00,19626.31,0.00,300002.23,'WX7IyyTtg9jklGCydTfgQAXwk5eChuLE+KftQvNLWYwEO5MGYTUNWcaXBlpM31BS3kKMrFZFmcOAv/etU0CyRaofbhgIvv6HZ9MUm3NiFVOWTUdd+LyDQcg5rgzcNW5MGDo4fVgAzbo2gRL0ljg5iP93jcgMhMqWih0YBvVOrAw=',1,1,'2024-04-08 09:31:30','2024-04-08 09:31:30'),(35,'PP 2024/35',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-06-11 16:44:19','2024-05-31 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,505747.55,0.00,35402.33,0.00,541149.88,'myPTg+7F5g4v8tdHKeVKSS2R8OSvU7HZDloosCKSx4P5iOSNEvLFUI0vkGCJhfx1pw4hg8fWb3aK49DRTpXRX4hcD7BwW79IutODf9IB4Hyisw39W7sDLMrk3hqrV50Uo9lapy/r3KutsZ2F62hxtZI0EvKEoL41atJtWq2Hg3Q=',1,0,'2024-06-11 14:44:20','2024-06-18 07:50:01'),(36,'PP 2024/36',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-07-01 12:03:52','2024-06-30 00:00:00',3,2,5,'FERNANDO  QUENGO',NULL,934.58,0.00,65.42,0.00,1000.00,'NKk3h7P734xRIu3r0jEhUw+sUYDcL+cV9v11ZEnN3Du9pQ1c8g1ZR393ajrEEchcxUVzkTUmoE50Nfb2f+3eOiD1fyHKGbCejHxC7qNq0Rch3o8HXuNa+X3uM+nLiyvkC0RZxEmzuLWDBdIiZKLmwv94WVNtPstqxc1iJq1wliY=',1,1,'2024-07-01 10:03:52','2024-07-01 10:03:52');
/*!40000 ALTER TABLE `proformas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita_despesas`
--

DROP TABLE IF EXISTS `receita_despesas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receita_despesas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_despesas`
--

LOCK TABLES `receita_despesas` WRITE;
/*!40000 ALTER TABLE `receita_despesas` DISABLE KEYS */;
/*!40000 ALTER TABLE `receita_despesas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibos`
--

DROP TABLE IF EXISTS `recibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) unsigned DEFAULT NULL,
  `moeda_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_id` bigint(20) unsigned DEFAULT NULL,
  `utilizador_nome` varchar(191) DEFAULT NULL,
  `observacao` text DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `imposto` decimal(30,2) DEFAULT NULL,
  `retencao` decimal(30,2) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `numero_documento` varchar(191) DEFAULT NULL,
  `data_documento` datetime DEFAULT NULL,
  `total_pendente` decimal(30,2) DEFAULT NULL,
  `valor_pago` decimal(30,2) DEFAULT NULL,
  `ficheiro` varchar(191) DEFAULT NULL,
  `data_ficheiro` datetime DEFAULT NULL,
  `retencao_taxa` decimal(30,2) DEFAULT NULL,
  `factura_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recibos_factura_id_foreign` (`factura_id`),
  KEY `recibos_cliente_id_foreign` (`cliente_id`),
  KEY `recibos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `recibos_moeda_id_foreign` (`moeda_id`),
  KEY `recibos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (1,'RC 2024/1',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-02 00:00:00','2024-03-02 00:00:00',1,1,5,'FERNANDO ESCOVALO QUENGO',NULL,105140.22,0.00,7359.82,0.00,112500.04,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/1','2024-03-02 00:00:00',112500.04,112500.04,'null.png','2024-03-02 00:00:00',0.00,1,'2024-03-02 08:34:17','2024-03-02 08:34:17'),(2,'RC 2024/2',1,'Consumidor Final','Consumidor Final','Frente ao Aeroporto Doméstico','2024-03-05 00:00:00','2024-03-05 00:00:00',1,1,1,'Administrador',NULL,13551.40,0.00,948.60,0.00,14500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/2','2024-03-05 00:00:00',14500.00,15000.00,'null.png','2024-03-05 00:00:00',0.00,2,'2024-03-05 11:38:29','2024-03-05 11:38:29'),(3,'RC 2024/3',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-07 16:38:11','2024-03-07 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,264672.96,0.00,18527.11,0.00,283200.07,'ifKDQo8PK2Bwu3npqcCXhZUEkUtAsXrJCl01rVJk1jaPcTJgNpDPqHGCs1hI+5U21Pav2Kdk/ns1fe5wsEpVoRKr89tTvieBHG4RivwEFITYOI5g0XwAJMiLHoSsxhP0nwfr3iJg0u2YUCkZRv7Qty3S6kDIhatFU7ZwtdqDnfc=',1,'FT 2024/6','2024-03-07 16:35:34',283200.07,283200.07,'null.png','2024-03-07 00:00:00',0.00,6,'2024-03-07 14:38:11','2024-03-07 14:38:11'),(4,'RC 2024/4',4,'PROTTEJA SEGUROS','54171666103','Rua Direita da Estrada da Samba, nª406','2024-03-13 11:26:59','2024-03-13 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,747664.00,0.00,52336.48,0.00,800000.48,'K8+0+NluMIrKtSIjSsNl52AGcCLP1SyYRrG6aK7KwA1GB8cJxgW3umwekstE8JQP7w/J0FCt+77r0iW5MkBWQVHWxenKDSVvYFIlHqHlg0vALEKDHc9jLULJgbUdIxY9oO++H26kp2fDLjOtuCy4sqKlz9vV9gnvVr2FCMsXA7M=',1,'FT 2024/3','2024-03-06 00:00:00',800000.48,800000.00,'null.png','2024-03-11 00:00:00',0.00,3,'2024-03-13 09:26:59','2024-03-13 09:26:59'),(5,'RC 2024/5',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-03-15 16:31:19','2024-03-15 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,192897.12,0.00,13502.80,0.00,206399.92,'dlzArzuYmgAg8oE7SUK/ZJ5EqTw7LD1UyenZFMSic22RU+iMBbaevh3WtaHnT0sMlEK+O8L8y+uwNKWR6/Vl4xFTj9LtC+zBESgX6VOqSLNUSeaNDLYZh+MoMKDbNlgx18BBSB612gKjReGpKSOBqWKmy8MPgOlwCmNKvoRlxi4=',1,'FT 2024/8','2024-03-15 16:29:25',206399.92,206399.92,'null.png','2024-03-15 00:00:00',0.00,8,'2024-03-15 14:31:19','2024-03-15 14:31:19'),(6,'RC 2024/6',8,'SANEP - SGPS , S.A','5417626708','LUANDA','2024-04-10 08:34:38','2024-04-10 00:00:00',2,1,5,'FERNANDO  QUENGO',NULL,336449.52,0.00,23551.47,0.00,360000.99,'cQe4K0A/zyRVg3juGhZ1J8Xp6HgTKHx8d0ReCvcdgttuJNlSqNqyX7e/maFHOB1fgJAAcX7W6smI8Cb+4fJRTvnvMZ+rv8LY807KnOOd65BHshs667xt+I93m46vF8PmIKejHClI/vxHqRZq2b4urO1jR+rHyhEx+sdCjDC2dSs=',1,'FT 2024/12','2024-04-09 08:48:28',360000.99,360000.00,'null.png','2024-04-09 00:00:00',0.00,12,'2024-04-10 04:34:38','2024-04-10 04:34:38'),(7,'RC 2024/7',2,'SINSE','5000306240','Maianga – 10 de Dezembro','2024-06-18 09:53:53','2024-06-18 00:00:00',1,1,5,'FERNANDO  QUENGO',NULL,505747.55,0.00,35402.33,0.00,541149.88,'inPDt4X1qyO3uLu9exH/Ishib+Zu58wV4KrhEIazk5Boq/c4IKDmwECMOrbBqqzcVw91QG+c8jmEsDHfE/NQGOxr4o52okL4TRSwtq9hlo+uUCM6ZwB9U7GbA54OKAn6JXLDlV6Pi1c4kDwktyIcXmziAfjk14YYvDR4qXGOT0k=',1,'FT 2024/16','2024-06-18 09:50:00',541149.88,541149.88,'null.png','2024-05-31 00:00:00',0.00,16,'2024-06-18 07:53:53','2024-06-18 07:53:53');
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retencaos`
--

DROP TABLE IF EXISTS `retencaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retencaos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designacao` varchar(191) DEFAULT NULL,
  `taxa` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retencaos`
--

LOCK TABLES `retencaos` WRITE;
/*!40000 ALTER TABLE `retencaos` DISABLE KEYS */;
INSERT INTO `retencaos` VALUES (1,'Sem rentenção na fonte','0',1,NULL,NULL),(2,'Rentenção na fonte 6.5%','6.5',1,NULL,NULL);
/*!40000 ALTER TABLE `retencaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(1,6),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(3,6),(4,1),(4,2),(4,3),(4,6),(5,1),(5,2),(5,3),(5,6),(6,1),(6,2),(6,3),(6,6),(7,1),(7,2),(8,1),(8,5),(9,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','web',NULL,NULL),(2,'Gestor','web',NULL,NULL),(3,'Operador','web',NULL,NULL),(4,'Operador POS','web',NULL,NULL),(5,'Adm','web','2024-01-22 05:35:49','2024-01-22 05:35:49'),(6,'Caxa Restaurante','web','2024-02-21 06:15:18','2024-02-21 06:15:18'),(7,'Super Administrador','web','2024-03-03 17:21:14','2024-03-03 17:21:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saft_audits`
--

DROP TABLE IF EXISTS `saft_audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saft_audits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `audit_file_version` varchar(191) DEFAULT NULL,
  `company_id` varchar(191) DEFAULT NULL,
  `tax_registration_number` varchar(191) DEFAULT NULL,
  `tax_accounting_basis` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saft_audits`
--

LOCK TABLES `saft_audits` WRITE;
/*!40000 ALTER TABLE `saft_audits` DISABLE KEYS */;
INSERT INTO `saft_audits` VALUES (1,'1.01_01','000000000','5000213438','F',NULL,NULL);
/*!40000 ALTER TABLE `saft_audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `safts`
--

DROP TABLE IF EXISTS `safts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `safts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safts`
--

LOCK TABLES `safts` WRITE;
/*!40000 ALTER TABLE `safts` DISABLE KEYS */;
INSERT INTO `safts` VALUES (1,'SAFT_AO_20240410095004.xml','2024-04-10 05:50:04','2024-04-10 05:50:04'),(2,'SAFT_AO_20240410121827.xml','2024-04-10 09:18:27','2024-04-10 09:18:27'),(3,'SAFT_AO_20240701131537.xml','2024-07-01 11:15:37','2024-07-01 11:15:37');
/*!40000 ALTER TABLE `safts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'0001','PP 2024','proforma','Duchess\'s knee.',1,NULL,NULL),(2,'0002','FT 2024','factura','Queen. \'It proves.',1,NULL,NULL),(3,'0003','FR 2024','factura-recibo','Mouse was.',1,NULL,NULL),(4,'0004','RC 2024','recibo','Dinah\'ll.',1,NULL,NULL),(5,'0005','NC 2024','nota-credito','I ever was at.',1,NULL,NULL),(6,'0006','ND 2024','nota-debito','CHAPTER III. A.',1,NULL,NULL),(7,'0007','GT 2024','guia-transporte','Dinah, and saying.',1,NULL,NULL),(8,'0008','GR 2024','guia-remessa','While the Owl.',1,NULL,NULL),(9,'0009','RD 2024','receita-despesa','He trusts to.',1,NULL,NULL),(10,'00010','SC 2024','stock','I can\'t put it.',1,NULL,NULL);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `serie` varchar(191) DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `ref_doc` varchar(191) DEFAULT NULL,
  `armazem` varchar(191) DEFAULT NULL,
  `fornecedor_nome` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fornecedor_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stocks_fornecedor_id_foreign` (`fornecedor_id`),
  CONSTRAINT `stocks_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_tables`
--

DROP TABLE IF EXISTS `tax_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_type` varchar(191) DEFAULT NULL,
  `tax_code` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tax_percentage` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_tables`
--

LOCK TABLES `tax_tables` WRITE;
/*!40000 ALTER TABLE `tax_tables` DISABLE KEYS */;
INSERT INTO `tax_tables` VALUES (1,'IVA','ISE','IVA - Isento','0.00',NULL,NULL);
/*!40000 ALTER TABLE `tax_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_motivo_anulacaos`
--

DROP TABLE IF EXISTS `tipo_motivo_anulacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_motivo_anulacaos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_motivo_anulacaos`
--

LOCK TABLES `tipo_motivo_anulacaos` WRITE;
/*!40000 ALTER TABLE `tipo_motivo_anulacaos` DISABLE KEYS */;
INSERT INTO `tipo_motivo_anulacaos` VALUES (1,'0001','Ausência de desconto na fatura','',1,NULL,NULL),(2,'0002','Devolução dos artigos','',1,NULL,NULL),(3,'0003','Erro na entidade','',1,NULL,NULL),(4,'0004','Erros nas quantidades / preços','',1,NULL,NULL),(5,'0005','Erro no (s) preço (s)','',1,NULL,NULL),(6,'0006','Produto / serviço rejeitado','',1,NULL,NULL),(7,'0007','Rutura de stock','',1,NULL,NULL);
/*!40000 ALTER TABLE `tipo_motivo_anulacaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos`
--

DROP TABLE IF EXISTS `tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos`
--

LOCK TABLES `tipos` WRITE;
/*!40000 ALTER TABLE `tipos` DISABLE KEYS */;
INSERT INTO `tipos` VALUES (1,'P','Produto','Produtos',1,NULL,NULL),(2,'S','Serviços','Serviços',1,NULL,NULL);
/*!40000 ALTER TABLE `tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `departamento_id` bigint(20) unsigned DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `reset_password` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `users_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','admin@admin.com',1,'$2y$10$XFYXJ3JPNVCHWfFnrisJ2.sefQJ7Fu7vojjSPEgsmSZCT8fO5/DwS','1708511621.jpg',1,NULL,NULL,NULL,'2024-02-21 08:33:41'),(5,'FERNANDO  QUENGO','fernandoquengo100@gmail.com',1,'$2y$10$ugetTSFscuyvMh2U3iG/IeYvDpunVERM9r9d5VekzvRuohvQukS4q','default.jpg',1,0,NULL,'2024-02-21 06:19:36','2024-03-03 17:25:47'),(8,'Daniel Chongolola','chongololadaniel@gmail.com',3,'$2y$10$wCV2F2vBED9fnqMPlBbfSeYFpgyUujJs3HD40qoagrQfkCSEObkom','default.jpg',1,0,NULL,'2024-03-02 14:37:44','2024-03-02 14:38:45'),(10,'Lukenia Coelho','luqueniacoelho@gmail.com',3,'$2y$10$XLbJh2.lreMvI5ZohZH70upsWMFVPqcnjzDfxraXEn.euAPUM1Xgi','default.jpg',1,1,NULL,'2024-03-03 17:36:04','2024-03-25 10:31:06'),(11,'Nzumba Paciência','nzumbapaciencia@gmail.com',3,'$2y$10$zVL9OECUCXAMgcZn5LSX3Ocioyccl.4KlVBDr0H/2.pLvbd5T5Bg.','default.jpg',1,0,NULL,'2024-03-04 08:41:45','2024-03-30 04:51:57'),(13,'Lukenia','luqueniacolho@gmail.com',3,'$2y$10$aN3iBt9uLrJH1OTKEoZrMOuCj83idS.usAXelwQT782rU0jPaHaUW','default.jpg',1,1,NULL,'2024-03-06 11:53:22','2024-03-14 08:46:05'),(14,'Bruno Agostinho Matias','brunomatias@gmail.com',3,'$2y$10$wEDb6nEpnVcMrS.knG8QD.95nDHkQz5M41Xvl/6jrL3utriKFmg3q','default.jpg',1,0,NULL,'2024-03-13 17:31:01','2024-03-13 17:32:15'),(21,'Coelho Luís','Lukeniacoelho@gmail.com',3,'$2y$10$twTjHl57nUs4sTq6n4eWdOwMUt7sJUWnqQ8nDNu4Ak0PZJ8hP97YO','default.jpg',1,0,NULL,'2024-03-28 12:42:08','2024-03-28 12:44:16'),(23,'António Lopes','antoniolopes@gmail.com',3,'$2y$10$MuV5CJIdoeqByP8mzF.dMOt0iM2nR8kvFQYh8cWDm7PIWMSYn2dRu','default.jpg',1,0,NULL,'2024-04-09 04:39:26','2024-04-09 04:40:43');
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

-- Dump completed on 2024-12-03 21:56:34
