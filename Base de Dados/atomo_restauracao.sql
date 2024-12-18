-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_restauracao
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
INSERT INTO `armazems` VALUES (1,'0001','Sede','I may as.',1,NULL,NULL);
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
  `is_qr` tinyint(4) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (1,'2024-0001','Gasosa',1,1,1,1,1000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,1,'2024-03-28 14:56:58','2024-03-29 10:35:18'),(2,'2024-0002','Material de construção',2,1,1,1,300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,1,'2024-03-29 08:25:29','2024-04-01 08:03:19'),(3,'2024-0003','Bancada',2,1,1,1,2220,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,1,'2024-03-29 10:33:14','2024-04-01 07:58:57'),(4,'2024-0004','Material de Eletricidade',2,1,1,1,200,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,NULL,'2024-03-30 07:30:32','2024-03-30 07:30:32'),(5,'2024-0005','Material de Construção',2,1,1,1,200,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,NULL,'2024-03-30 08:06:47','2024-03-30 08:06:47'),(6,'2024-0006','DIverso-Kongo',2,1,1,1,500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,NULL,'2024-03-30 09:38:21','2024-03-30 09:38:21'),(7,'2024-0007','kongo-Banana',2,1,1,1,200,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,NULL,'2024-03-30 09:39:11','2024-03-30 09:39:11'),(8,'2024-0008','Diverso- kongo-Cabrite',2,1,1,1,500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,NULL,'2024-03-30 09:40:26','2024-03-30 09:40:26');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
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
INSERT INTO `categorias` VALUES (1,'0001','Diverso','I suppose.\' So.',1,NULL,NULL);
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
  `nave` varchar(191) DEFAULT NULL,
  `loja` varchar(191) DEFAULT NULL,
  `id_artigo` bigint(20) unsigned DEFAULT NULL,
  `local` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `is_qr` enum('0','1') DEFAULT '0',
  `id_endereco` bigint(20) unsigned DEFAULT NULL,
  `id_contacto` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_id_endereco_foreign` (`id_endereco`),
  KEY `clientes_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `clientes_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `clientes_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'2024-0001','Consumidor Final','Consumidor Final',NULL,'base 12','Bancada',3,'75000',NULL,NULL,'null.png',1,1,'1',1,1,NULL,'2024-04-01 07:08:58'),(2,'2024-0002','ADLYSSAL, LDA','5417426288',NULL,'74','Bancada',3,'90',NULL,NULL,'null.png',1,1,'1',2,2,'2024-03-28 16:24:15','2024-04-01 07:58:57'),(3,'2024-0003','SUCESSO DA VIDA COMERCIO GERAL & PRESTAÇÃO DE SERVIÇOS, LDA','5417426288',NULL,'34567','Gasosa',1,'90',NULL,NULL,'null.png',1,1,'1',3,3,'2024-03-28 16:27:35','2024-03-29 08:42:37'),(4,'2024-0004','hugo dos Santos','123',NULL,'02','Material de construção',2,'78',NULL,NULL,'null.png',1,1,'1',4,4,'2024-03-29 08:58:09','2024-03-29 10:09:33'),(5,'2024-0005','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'001',NULL,NULL,'null.png',1,1,'1',5,5,'2024-03-30 07:32:52','2024-04-01 10:51:28'),(6,'2024-0006','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'002',NULL,NULL,'null.png',1,NULL,'0',6,6,'2024-03-30 07:34:17','2024-03-30 07:34:17'),(7,'2024-0007','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'003',NULL,NULL,'null.png',1,NULL,'0',7,7,'2024-03-30 07:34:46','2024-03-30 07:34:46'),(8,'2024-0008','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'004',NULL,NULL,'null.png',1,NULL,'0',8,8,'2024-03-30 07:35:13','2024-03-30 07:35:13'),(9,'2024-0009','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'005',NULL,NULL,'null.png',1,NULL,'0',9,9,'2024-03-30 07:35:36','2024-03-30 07:35:36'),(10,'2024-0010','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'006',NULL,NULL,'null.png',0,NULL,'0',10,10,'2024-03-30 07:36:06','2024-03-30 07:36:06'),(11,'2024-0010','Teresa Manuel','999',NULL,'02','Material de Eletricidade',4,'006',NULL,NULL,'null.png',1,NULL,'0',11,11,'2024-03-30 07:36:14','2024-03-30 07:36:14'),(12,'2024-0012','Lucia Ebo','999',NULL,'02','Material de Eletricidade',4,'007',NULL,NULL,'null.png',1,NULL,'0',12,12,'2024-03-30 07:37:59','2024-03-30 07:37:59'),(13,'2024-0013','Lucia Ebo','999',NULL,'02','Material de Eletricidade',4,'008',NULL,NULL,'null.png',1,NULL,'0',13,13,'2024-03-30 07:38:36','2024-03-30 07:38:36'),(14,'2024-0014','Filomena Agusto','999',NULL,'02','Material de Eletricidade',4,'009',NULL,NULL,'null.png',1,NULL,'0',14,14,'2024-03-30 07:39:42','2024-03-30 07:39:42'),(15,'2024-0015','Filomena Agusto','999',NULL,'02','Material de Eletricidade',4,'010',NULL,NULL,'null.png',1,NULL,'0',15,15,'2024-03-30 07:40:44','2024-03-30 07:40:44'),(16,'2024-0016','Filomena Agusto','999',NULL,'02','Material de Eletricidade',4,'011',NULL,NULL,'null.png',1,NULL,'0',16,16,'2024-03-30 07:41:17','2024-03-30 07:41:17'),(17,'2024-0017','Fernanda Ribeiro','999',NULL,'02','Material de Eletricidade',4,'012',NULL,NULL,'null.png',1,NULL,'0',17,17,'2024-03-30 07:42:04','2024-03-30 07:42:04'),(18,'2024-0018','Fernanda Ribeiro','999',NULL,'02','Material de Eletricidade',4,'013',NULL,NULL,'null.png',1,NULL,'0',18,18,'2024-03-30 07:42:35','2024-03-30 07:42:35'),(19,'2024-0019','Ana Kissanga','999',NULL,'02','Material de Eletricidade',4,'014',NULL,NULL,'null.png',1,NULL,'0',19,19,'2024-03-30 07:43:19','2024-03-30 07:43:19'),(20,'2024-0020','Ana Kissanga','999',NULL,'02','Material de Eletricidade',4,'015',NULL,NULL,'null.png',1,NULL,'0',20,20,'2024-03-30 07:43:56','2024-03-30 07:43:56'),(21,'2024-0021','Quintinha Banes','999',NULL,'02','Material de Eletricidade',4,'016',NULL,NULL,'null.png',1,NULL,'0',21,21,'2024-03-30 07:45:56','2024-03-30 07:45:56'),(22,'2024-0022','Quintinha Banes','999',NULL,'02','Material de Eletricidade',4,'017',NULL,NULL,'null.png',1,NULL,'0',22,22,'2024-03-30 07:46:27','2024-03-30 07:46:27'),(23,'2024-0023','Bernada Grandão','999',NULL,'02','Material de Eletricidade',4,'018',NULL,NULL,'null.png',1,NULL,'0',23,23,'2024-03-30 07:47:36','2024-03-30 07:47:36'),(24,'2024-0024','Bernada Grandão','999',NULL,'02','Material de Eletricidade',4,'019',NULL,NULL,'null.png',1,NULL,'0',24,24,'2024-03-30 07:48:00','2024-03-30 07:48:00'),(25,'2024-0025','Flora Domingos','999',NULL,'02','Material de Eletricidade',4,'020',NULL,NULL,'null.png',1,NULL,'0',25,25,'2024-03-30 07:48:31','2024-03-30 07:48:31'),(26,'2024-0026','Flora Domingos','999',NULL,'02','Material de Eletricidade',4,'021',NULL,NULL,'null.png',1,NULL,'0',26,26,'2024-03-30 07:50:31','2024-03-30 07:50:31'),(27,'2024-0027','Domingas Kixulo','999',NULL,'02','Material de Eletricidade',4,'021',NULL,NULL,'null.png',1,NULL,'0',27,27,'2024-03-30 07:51:37','2024-03-30 07:51:37'),(28,'2024-0028','Domingas Kixulo','999',NULL,'02','Material de Eletricidade',4,'023',NULL,NULL,'null.png',1,NULL,'0',28,28,'2024-03-30 07:53:56','2024-03-30 07:53:56'),(29,'2024-0029','Domingas Kiximba','999',NULL,'02','Material de Eletricidade',4,'024',NULL,NULL,'null.png',1,NULL,'0',29,29,'2024-03-30 07:54:58','2024-03-30 07:54:58'),(30,'2024-0030','Joana Paulo','999',NULL,'02','Material de Eletricidade',4,'025',NULL,NULL,'null.png',1,NULL,'0',30,30,'2024-03-30 07:56:26','2024-03-30 07:56:26'),(31,'2024-0031','Joana Paulo','999',NULL,'02','Material de Eletricidade',4,'026',NULL,NULL,'null.png',1,NULL,'0',31,31,'2024-03-30 08:00:34','2024-03-30 08:00:34'),(32,'2024-0032','Julia Etosse','999',NULL,'02','Material de Eletricidade',4,'027',NULL,NULL,'null.png',1,NULL,'0',32,32,'2024-03-30 08:02:22','2024-03-30 08:02:22'),(33,'2024-0033','Angelina Francisco','999',NULL,'02','Material de Eletricidade',4,'029',NULL,NULL,'null.png',1,NULL,'0',33,33,'2024-03-30 08:05:20','2024-03-30 08:05:20'),(34,'2024-0034','Angelina Francisco','999',NULL,'02','Material de Eletricidade',4,'031',NULL,NULL,'null.png',1,NULL,'0',34,34,'2024-03-30 08:06:31','2024-03-30 08:06:31'),(35,'2024-0035','Filomena','999',NULL,'02','Material de Eletricidade',4,'032',NULL,NULL,'null.png',1,NULL,'0',35,35,'2024-03-30 08:07:50','2024-03-30 08:07:50'),(36,'2024-0035','Lucia Dala','999',NULL,'02A','Material de construção',2,'001',NULL,NULL,'null.png',1,NULL,'0',36,36,'2024-03-30 08:09:00','2024-03-30 08:09:00'),(37,'2024-0036','Filomena','999',NULL,'02','Material de Eletricidade',4,'033',NULL,NULL,'null.png',1,NULL,'0',37,37,'2024-03-30 08:09:08','2024-03-30 08:09:08'),(38,'2024-0037','Lucia Dala','999',NULL,'02A','Material de construção',2,'002',NULL,NULL,'null.png',1,NULL,'0',38,38,'2024-03-30 08:09:27','2024-03-30 08:09:27'),(39,'2024-0039','Maria Vunge','999',NULL,'02A','Material de construção',2,'003',NULL,NULL,'null.png',1,NULL,'0',39,39,'2024-03-30 08:10:06','2024-03-30 08:10:06'),(40,'2024-0040','Albertina Vunge','999',NULL,'02A','Material de construção',2,'004',NULL,NULL,'null.png',1,NULL,'0',40,40,'2024-03-30 08:10:58','2024-03-30 08:10:58'),(41,'2024-0041','Albertina Vunge','999',NULL,'02A','Material de construção',2,'005',NULL,NULL,'null.png',1,NULL,'0',41,41,'2024-03-30 08:11:20','2024-03-30 08:11:20'),(42,'2024-0038','Domingas Quinamuna','999',NULL,'02','Material de Eletricidade',4,'034',NULL,NULL,'null.png',1,NULL,'0',42,42,'2024-03-30 08:11:23','2024-03-30 08:11:23'),(43,'2024-0043','Albertina Vunge','999',NULL,'02A','Material de construção',2,'006',NULL,NULL,'null.png',1,NULL,'0',43,43,'2024-03-30 08:12:07','2024-03-30 08:12:07'),(44,'2024-0044','Isabel Francisco','999',NULL,'02A','Material de construção',2,'007',NULL,NULL,'null.png',1,NULL,'0',44,44,'2024-03-30 08:12:46','2024-03-30 08:12:46'),(45,'2024-0043','Rita de Oliveira','999',NULL,'02','Material de Eletricidade',4,'035',NULL,NULL,'null.png',1,NULL,'0',45,45,'2024-03-30 08:12:46','2024-03-30 08:12:46'),(46,'2024-0046','Isabel Francisco','999',NULL,'02A','Material de construção',2,'008',NULL,NULL,'null.png',1,NULL,'0',46,46,'2024-03-30 08:13:14','2024-03-30 08:13:14'),(47,'2024-0047','Isabel Francisco','999',NULL,'02A','Material de construção',2,'009',NULL,NULL,'null.png',1,NULL,'0',47,47,'2024-03-30 08:13:46','2024-03-30 08:13:46'),(48,'2024-0046','Rita de Oliveira','999',NULL,'02','Material de Eletricidade',4,'035',NULL,NULL,'null.png',1,NULL,'0',48,48,'2024-03-30 08:14:45','2024-03-30 08:14:45'),(49,'2024-0049','Rita de Oliveira','999',NULL,NULL,'Material de Eletricidade',4,'036',NULL,NULL,'null.png',1,NULL,'0',49,49,'2024-03-30 08:15:37','2024-03-30 08:15:37'),(50,'2024-0049','Maria Mateus','999',NULL,'02A','Material de construção',2,'010',NULL,NULL,'null.png',1,NULL,'0',50,50,'2024-03-30 08:16:01','2024-03-30 08:16:01'),(51,'2024-0051','Maria Mateus','999',NULL,'02A','Material de construção',2,'011',NULL,NULL,'null.png',1,NULL,'0',51,51,'2024-03-30 08:16:28','2024-03-30 08:16:28'),(52,'2024-0052','Soana Celeste','999',NULL,'02A','Material de construção',2,'012',NULL,NULL,'null.png',1,NULL,'0',52,52,'2024-03-30 08:17:03','2024-03-30 08:17:03'),(53,'2024-0050','Maria Gomes','999',NULL,'02','Material de Eletricidade',4,'037',NULL,NULL,'null.png',1,NULL,'0',53,53,'2024-03-30 08:17:46','2024-03-30 08:17:46'),(54,'2024-0053','Angelina Josué','999',NULL,'02A','Material de construção',2,'013',NULL,NULL,'null.png',1,NULL,'0',54,54,'2024-03-30 08:18:59','2024-03-30 08:18:59'),(55,'2024-0054','Maria Gomes','999',NULL,'02','Material de Eletricidade',4,'038',NULL,NULL,'null.png',1,NULL,'0',55,55,'2024-03-30 08:19:01','2024-03-30 08:19:01'),(56,'2024-0056','Angelina Josué','999',NULL,'02A','Material de construção',2,'014',NULL,NULL,'null.png',1,NULL,'0',56,56,'2024-03-30 08:19:27','2024-03-30 08:19:27'),(57,'2024-0057','Helena Lima','999',NULL,'02A','Material de construção',2,'015',NULL,NULL,'null.png',1,NULL,'0',57,57,'2024-03-30 08:20:01','2024-03-30 08:20:01'),(58,'2024-0058','Helena Lima','999',NULL,'02A','Material de construção',2,'016',NULL,NULL,'null.png',1,NULL,'0',58,58,'2024-03-30 08:20:31','2024-03-30 08:20:31'),(59,'2024-0056','Jac Quilina Mazambi','999',NULL,'02','Material de Eletricidade',4,'039',NULL,NULL,'null.png',1,NULL,'0',59,59,'2024-03-30 08:20:58','2024-03-30 08:20:58'),(60,'2024-0059','Mussarina Armindo','999',NULL,'02A','Material de construção',2,'017',NULL,NULL,'null.png',1,NULL,'0',60,60,'2024-03-30 08:21:03','2024-03-30 08:21:03'),(61,'2024-0061','Catia Catenda','999',NULL,'02A','Material de construção',2,'018',NULL,NULL,'null.png',1,NULL,'0',61,61,'2024-03-30 08:21:50','2024-03-30 08:21:50'),(62,'2024-0062','Cristina José','999',NULL,'02A','Material de construção',2,'019',NULL,NULL,'null.png',1,NULL,'0',62,62,'2024-03-30 08:22:36','2024-03-30 08:22:36'),(63,'2024-0060','Jac Quilina Mazambi','999',NULL,'02','Material de Eletricidade',4,'40',NULL,NULL,'null.png',1,NULL,'0',63,63,'2024-03-30 08:22:58','2024-03-30 08:22:58'),(64,'2024-0063','Feliciana Mussoque','999',NULL,'02A','Material de construção',2,'020',NULL,NULL,'null.png',1,NULL,'0',64,64,'2024-03-30 08:23:15','2024-03-30 08:23:15'),(65,'2024-0065','Feliciana Mussoque','999',NULL,'02A','Material de construção',2,'021',NULL,NULL,'null.png',1,NULL,'0',65,65,'2024-03-30 08:23:56','2024-03-30 08:23:56'),(66,'2024-0066','Feliciana Mussoque','999',NULL,'02A','Material de construção',2,'022',NULL,NULL,'null.png',1,NULL,'0',66,66,'2024-03-30 08:24:40','2024-03-30 08:24:40'),(67,'2024-0067','Maria Tutica','999',NULL,'02A','Material de construção',2,'023',NULL,NULL,'null.png',1,NULL,'0',67,67,'2024-03-30 08:25:22','2024-03-30 08:25:22'),(68,'2024-0064','Julia Sedukia','999',NULL,'02','Material de Eletricidade',4,'041',NULL,NULL,'null.png',1,NULL,'0',68,68,'2024-03-30 08:25:35','2024-03-30 08:25:35'),(69,'2024-0068','Maria Tutica','999',NULL,'02A','Material de construção',2,'024',NULL,NULL,'null.png',1,NULL,'0',69,69,'2024-03-30 08:26:04','2024-03-30 08:26:04'),(70,'2024-0069','Julia Sedukia','999',NULL,'02','Material de Eletricidade',4,'042',NULL,NULL,'null.png',1,NULL,'0',70,70,'2024-03-30 08:26:44','2024-03-30 08:26:44'),(71,'2024-0070','Virginia Manuano','999',NULL,'02A','Material de construção',2,'025',NULL,NULL,'null.png',1,NULL,'0',71,71,'2024-03-30 08:27:08','2024-03-30 08:27:08'),(72,'2024-0072','Virginia Manuano','999',NULL,'02A','Material de construção',2,'026',NULL,NULL,'null.png',1,NULL,'0',72,72,'2024-03-30 08:27:49','2024-03-30 08:27:49'),(73,'2024-0071','Mariquinha Vunge','999',NULL,'02','Material de Eletricidade',4,'043',NULL,NULL,'null.png',1,NULL,'0',73,73,'2024-03-30 08:28:06','2024-03-30 08:28:06'),(74,'2024-0073','Antonio Domingos','999',NULL,'02A','Material de construção',2,'027',NULL,NULL,'null.png',1,NULL,'0',74,74,'2024-03-30 08:28:32','2024-03-30 08:28:32'),(75,'2024-0075','Catarina Ginga','999',NULL,'02A','Material de construção',2,'028',NULL,NULL,'null.png',1,NULL,'0',75,75,'2024-03-30 08:29:27','2024-03-30 08:29:27'),(76,'2024-0076','Feliciana Mussoque','999',NULL,'02A','Material de construção',2,'029',NULL,NULL,'null.png',1,NULL,'0',76,76,'2024-03-30 08:30:13','2024-03-30 08:30:13'),(77,'2024-0074','Mariquinha Vunge','999',NULL,'02','Material de Eletricidade',4,'044',NULL,NULL,'null.png',1,NULL,'0',77,77,'2024-03-30 08:30:23','2024-03-30 08:30:23'),(78,'2024-0078','Esperança Mateus','999',NULL,'02A','Material de construção',2,'030',NULL,NULL,'null.png',1,NULL,'0',78,78,'2024-03-30 08:31:10','2024-03-30 08:31:10'),(79,'2024-0078','Joia Bernardo','999',NULL,'02','Material de Eletricidade',4,'045',NULL,NULL,'null.png',1,NULL,'0',79,79,'2024-03-30 08:32:21','2024-03-30 08:32:21'),(80,'2024-0080','Joia Bernardo','999',NULL,'02','Material de Eletricidade',4,'046',NULL,NULL,'null.png',1,NULL,'0',80,80,'2024-03-30 08:33:45','2024-03-30 08:33:45'),(81,'2024-0081','Joia Bernardo','999',NULL,'02','Material de Eletricidade',4,'047',NULL,NULL,'null.png',1,NULL,'0',81,81,'2024-03-30 08:34:32','2024-03-30 08:34:32'),(82,'2024-0082','Eunice Enrique','999',NULL,'02','Material de Eletricidade',4,'048',NULL,NULL,'null.png',1,NULL,'0',82,82,'2024-03-30 08:37:36','2024-03-30 08:37:36'),(83,'2024-0083','Eunice Enrique','999',NULL,'02','Material de Eletricidade',4,'049',NULL,NULL,'null.png',1,NULL,'0',83,83,'2024-03-30 08:39:42','2024-03-30 08:39:42'),(84,'2024-0082','Florinda Xilemena','999',NULL,'02A','Material de construção',2,'033',NULL,NULL,'null.png',1,NULL,'0',84,84,'2024-03-30 08:39:57','2024-03-30 08:39:57'),(85,'2024-0085','Laurinda Kimungo','999',NULL,'02A','Material de construção',2,'034',NULL,NULL,'null.png',1,NULL,'0',85,85,'2024-03-30 08:40:48','2024-03-30 08:40:48'),(86,'2024-0086','Eva Manuel','999',NULL,'02A','Material de construção',2,'035',NULL,NULL,'null.png',1,NULL,'0',86,86,'2024-03-30 08:41:19','2024-03-30 08:41:19'),(87,'2024-0087','Eva Manuel','999',NULL,'02A','Material de construção',2,'036',NULL,NULL,'null.png',1,NULL,'0',87,87,'2024-03-30 08:41:47','2024-03-30 08:41:47'),(88,'2024-0088','Laurinda Kimungo','999',NULL,'02A','Material de construção',2,'039',NULL,NULL,'null.png',1,NULL,'0',88,88,'2024-03-30 08:42:29','2024-03-30 08:42:29'),(89,'2024-0089','Laurinda Kimungo','999',NULL,'02A','Material de construção',2,'040',NULL,NULL,'null.png',1,NULL,'0',89,89,'2024-03-30 08:43:03','2024-03-30 08:43:03'),(90,'2024-0084','Noemia Guimarães','999',NULL,'02','Material de Eletricidade',4,'050',NULL,NULL,'null.png',1,NULL,'0',90,90,'2024-03-30 08:44:42','2024-03-30 08:44:42'),(91,'2024-0090','Fatima Miguel','999',NULL,'02A','Material de construção',2,'041',NULL,NULL,'null.png',1,NULL,'0',91,91,'2024-03-30 08:44:55','2024-03-30 08:44:55'),(92,'2024-0092','Fatima Miguel','999',NULL,'02A','Material de construção',2,'042',NULL,NULL,'null.png',1,NULL,'0',92,92,'2024-03-30 08:45:31','2024-03-30 08:45:31'),(93,'2024-0093','Helena Miguel','999',NULL,'02A','Material de construção',2,'043',NULL,NULL,'null.png',1,NULL,'0',93,93,'2024-03-30 08:46:17','2024-03-30 08:46:17'),(94,'2024-0094','Helena Miguel','999',NULL,'02A','Material de construção',2,'044',NULL,NULL,'null.png',1,NULL,'0',94,94,'2024-03-30 08:46:49','2024-03-30 08:46:49'),(95,'2024-0091','Noemia Guimarães','999',NULL,'02','Material de Eletricidade',4,'051',NULL,NULL,'null.png',1,NULL,'0',95,95,'2024-03-30 08:47:15','2024-03-30 08:47:15'),(96,'2024-0095','Moba Patricio','999',NULL,'02A','Material de construção',2,'045',NULL,NULL,'null.png',1,NULL,'0',96,96,'2024-03-30 08:47:29','2024-03-30 08:47:29'),(97,'2024-0097','Moba Patricio','999',NULL,'02A','Material de construção',2,'046',NULL,NULL,'null.png',1,NULL,'0',97,97,'2024-03-30 08:48:00','2024-03-30 08:48:00'),(98,'2024-0098','Moba Patricio','999',NULL,'02A','Material de construção',2,'047',NULL,NULL,'null.png',1,NULL,'0',98,98,'2024-03-30 08:48:33','2024-03-30 08:48:33'),(99,'2024-0097','Teresa Esteves','999',NULL,'02','Material de Eletricidade',4,'052',NULL,NULL,'null.png',1,NULL,'0',99,99,'2024-03-30 08:48:46','2024-03-30 08:48:46'),(100,'2024-0099','Moba Patricio','999',NULL,'02A','Material de construção',2,'048',NULL,NULL,'null.png',1,NULL,'0',100,100,'2024-03-30 08:49:04','2024-03-30 08:49:04'),(101,'2024-0100','Teresa Esteves','999',NULL,'02','Material de Eletricidade',4,'054',NULL,NULL,'null.png',1,NULL,'0',101,101,'2024-03-30 08:49:42','2024-03-30 08:49:42'),(102,'2024-0101','Agostinho Didi','999',NULL,'02A','Material de construção',2,'049',NULL,NULL,'null.png',1,NULL,'0',102,102,'2024-03-30 08:49:46','2024-03-30 08:49:46'),(103,'2024-0103','Agostinho Didi','999',NULL,'02A','Material de construção',2,'050',NULL,NULL,'null.png',1,NULL,'0',103,103,'2024-03-30 08:50:14','2024-03-30 08:50:14'),(104,'2024-0104','Agostinho Didi','999',NULL,'02A','Material de construção',2,'051',NULL,NULL,'null.png',1,NULL,'0',104,104,'2024-03-30 08:50:48','2024-03-30 08:50:48'),(105,'2024-0103','Teresa Esteves','999',NULL,'02','Material de Eletricidade',4,'054',NULL,NULL,'null.png',1,NULL,'0',105,105,'2024-03-30 08:51:10','2024-03-30 08:51:10'),(106,'2024-0105','Agostinho Didi','999',NULL,'02A','Material de construção',2,'052',NULL,NULL,'null.png',1,NULL,'0',106,106,'2024-03-30 08:51:29','2024-03-30 08:51:29'),(107,'2024-0107','Teresa Familia','999',NULL,'02A','Material de construção',2,'053',NULL,NULL,'null.png',1,NULL,'0',107,107,'2024-03-30 08:52:06','2024-03-30 08:52:06'),(108,'2024-0106','Fernanda Martins','999',NULL,'02','Material de Eletricidade',4,'055',NULL,NULL,'null.png',1,NULL,'0',108,108,'2024-03-30 08:52:13','2024-03-30 08:52:13'),(109,'2024-0108','Teresa Familia','999',NULL,'02A','Material de construção',2,'054',NULL,NULL,'null.png',1,NULL,'0',109,109,'2024-03-30 08:52:35','2024-03-30 08:52:35'),(110,'2024-0109','Fernanda Martins','999',NULL,'02','Material de Eletricidade',4,'056',NULL,NULL,'null.png',1,NULL,'0',110,110,'2024-03-30 08:53:11','2024-03-30 08:53:11'),(111,'2024-0110','Tabita Pedro','999',NULL,'02A','Material de construção',2,'055',NULL,NULL,'null.png',1,NULL,'0',111,111,'2024-03-30 08:53:33','2024-03-30 08:53:33'),(112,'2024-0112','Tabita Pedro','056',NULL,'02A','Material de construção',2,'056',NULL,NULL,'null.png',1,NULL,'0',112,112,'2024-03-30 08:54:18','2024-03-30 08:54:18'),(113,'2024-0112','Tabita Pedro','999',NULL,'02A','Material de construção',2,'056',NULL,NULL,'null.png',1,NULL,'0',113,113,'2024-03-30 08:54:54','2024-03-30 08:54:54'),(114,'2024-0111','Teresa Mokundo','999',NULL,'02','Material de Eletricidade',4,'057',NULL,NULL,'null.png',1,NULL,'0',114,114,'2024-03-30 08:55:01','2024-03-30 08:55:01'),(115,'2024-0115','Patricia Sonia','999',NULL,'02A','Material de construção',2,'057',NULL,NULL,'null.png',1,NULL,'0',115,115,'2024-03-30 08:55:43','2024-03-30 08:55:43'),(116,'2024-0115','Teresa Mokundo','999',NULL,'02','Material de Eletricidade',4,'05058',NULL,NULL,'null.png',1,NULL,'0',116,116,'2024-03-30 08:56:11','2024-03-30 08:56:11'),(117,'2024-0116','Patr','999',NULL,'02A','Material de construção',2,'058',NULL,NULL,'null.png',1,NULL,'0',117,117,'2024-03-30 08:56:29','2024-03-30 08:56:29'),(118,'2024-0117','Teresa Mokundo','999',NULL,'02','Material de Eletricidade',4,'059',NULL,NULL,'null.png',1,NULL,'0',118,118,'2024-03-30 08:57:20','2024-03-30 08:57:20'),(119,'2024-0119','Belita Manuel','999',NULL,'02A','Material de construção',2,'059',NULL,NULL,'null.png',1,NULL,'0',119,119,'2024-03-30 08:58:10','2024-03-30 08:58:10'),(120,'2024-0120','Belita Manuel','999',NULL,'02A','Material de construção',2,'060',NULL,NULL,'null.png',1,NULL,'0',120,120,'2024-03-30 08:58:50','2024-03-30 08:58:50'),(121,'2024-0121','Esperança Pedro','999',NULL,'02A','Material de construção',2,'063',NULL,NULL,'null.png',1,NULL,'0',121,121,'2024-03-30 08:59:36','2024-03-30 08:59:36'),(122,'2024-0122','Esperança Pedro','999',NULL,'02A','Material de construção',2,'064',NULL,NULL,'null.png',1,NULL,'0',122,122,'2024-03-30 09:00:21','2024-03-30 09:00:21'),(123,'2024-0123','Esperança Pedro','999',NULL,'02A','Material de construção',2,'065',NULL,NULL,'null.png',1,NULL,'0',123,123,'2024-03-30 09:01:02','2024-03-30 09:01:02'),(124,'2024-0119','Teresa Mokundo','999',NULL,'02','Material de Eletricidade',4,'059',NULL,NULL,'null.png',1,NULL,'0',124,124,'2024-03-30 09:01:54','2024-03-30 09:01:54'),(125,'2024-0124','Esperança Pedro','999',NULL,'02A','Material de construção',2,'066',NULL,NULL,'null.png',1,NULL,'0',125,125,'2024-03-30 09:01:57','2024-03-30 09:01:57'),(126,'2024-0126','Esperança Pedro','999',NULL,'02A','Material de construção',2,'067',NULL,NULL,'null.png',1,NULL,'0',126,126,'2024-03-30 09:02:32','2024-03-30 09:02:32'),(127,'2024-0126','Teresa Mokundo','999',NULL,'02','Material de Eletricidade',4,'060',NULL,NULL,'null.png',1,NULL,'0',127,127,'2024-03-30 09:03:02','2024-03-30 09:03:02'),(128,'2024-0127','Esperança Pedro','999',NULL,'02A','Material de construção',2,'068',NULL,NULL,'null.png',1,NULL,'0',128,128,'2024-03-30 09:03:12','2024-03-30 09:03:12'),(129,'2024-0129','Luzia Sebatião','999',NULL,'02A','Material de construção',2,'069',NULL,NULL,'null.png',1,NULL,'0',129,129,'2024-03-30 09:03:58','2024-03-30 09:03:58'),(130,'2024-0130','Luzia Sebatião','999',NULL,'02A','Material de construção',2,'070',NULL,NULL,'null.png',1,NULL,'0',130,130,'2024-03-30 09:04:32','2024-03-30 09:04:32'),(131,'2024-0128','Amelia Kassola','999',NULL,'02','Material de Eletricidade',4,'061',NULL,NULL,'null.png',1,NULL,'0',131,131,'2024-03-30 09:05:19','2024-03-30 09:05:19'),(132,'2024-0132','Jorge Antonio','999',NULL,'02A','Material de construção',2,'071',NULL,NULL,'null.png',1,NULL,'0',132,132,'2024-03-30 09:05:59','2024-03-30 09:05:59'),(133,'2024-0132','Amelia Kassola','999',NULL,'02','Material de Eletricidade',4,'062',NULL,NULL,'null.png',1,NULL,'0',133,133,'2024-03-30 09:06:08','2024-03-30 09:06:08'),(134,'2024-0133','Jorge Antonio','999',NULL,'02A','Material de construção',2,'072',NULL,NULL,'null.png',1,NULL,'0',134,134,'2024-03-30 09:06:30','2024-03-30 09:06:30'),(135,'2024-0134','Amelia Kassola','999',NULL,'02','Material de Eletricidade',4,'063',NULL,NULL,'null.png',1,NULL,'0',135,135,'2024-03-30 09:07:05','2024-03-30 09:07:05'),(136,'2024-0135','Lucia Toquessa','999',NULL,'02A','Material de construção',2,'073',NULL,NULL,'null.png',1,NULL,'0',136,136,'2024-03-30 09:07:22','2024-03-30 09:07:22'),(137,'2024-0136','Amelia Kassola','999',NULL,'02','Material de Eletricidade',4,'064',NULL,NULL,'null.png',1,NULL,'0',137,137,'2024-03-30 09:07:41','2024-03-30 09:07:41'),(138,'2024-0137','Lucia Toquessa','999',NULL,'02A','Material de construção',2,'074',NULL,NULL,'null.png',1,NULL,'0',138,138,'2024-03-30 09:08:00','2024-03-30 09:08:00'),(139,'2024-0139','Delfina Viera','999',NULL,'02A','Material de construção',2,'075',NULL,NULL,'null.png',1,NULL,'0',139,139,'2024-03-30 09:09:23','2024-03-30 09:09:23'),(140,'2024-0138','Jose Lourenco','999',NULL,'02','Material de Eletricidade',4,'066',NULL,NULL,'null.png',1,NULL,'0',140,140,'2024-03-30 09:09:58','2024-03-30 09:09:58'),(141,'2024-0140','Delfina Viera','999',NULL,'02A','Material de construção',2,'076',NULL,NULL,'null.png',1,NULL,'0',141,141,'2024-03-30 09:10:00','2024-03-30 09:10:00'),(142,'2024-0142','Laurinda De Almeida','999',NULL,'02A','Material de construção',2,'078',NULL,NULL,'null.png',1,NULL,'0',142,142,'2024-03-30 09:10:34','2024-03-30 09:10:34'),(143,'2024-0142','Fineza Ferraz','999',NULL,'02','Material de Eletricidade',4,'067',NULL,NULL,'null.png',1,NULL,'0',143,143,'2024-03-30 09:10:52','2024-03-30 09:10:52'),(144,'2024-0143','Laurinda De Almeida','999',NULL,'02A','Material de construção',2,'079',NULL,NULL,'null.png',1,NULL,'0',144,144,'2024-03-30 09:11:09','2024-03-30 09:11:09'),(145,'2024-0144','Fineza Ferraz','999',NULL,'02','Material de Eletricidade',4,'068',NULL,NULL,'null.png',1,NULL,'0',145,145,'2024-03-30 09:11:49','2024-03-30 09:11:49'),(146,'2024-0145','Madalena KIssanga','999',NULL,'02A','Material de construção',2,'080',NULL,NULL,'null.png',1,NULL,'0',146,146,'2024-03-30 09:12:06','2024-03-30 09:12:06'),(147,'2024-0146','Fineza Ferraz','999',NULL,'02','Material de Eletricidade',4,'069',NULL,NULL,'null.png',1,NULL,'0',147,147,'2024-03-30 09:12:42','2024-03-30 09:12:42'),(148,'2024-0147','Aida Vunge','999',NULL,'02A','Material de construção',2,'081',NULL,NULL,'null.png',1,NULL,'0',148,148,'2024-03-30 09:12:48','2024-03-30 09:12:48'),(149,'2024-0149','Aida Vunge','999',NULL,'02A','Material de construção',2,'082',NULL,NULL,'null.png',1,NULL,'0',149,149,'2024-03-30 09:13:20','2024-03-30 09:13:20'),(150,'2024-0148','Vania Domingos','999',NULL,'02','Material de Eletricidade',4,'070',NULL,NULL,'null.png',1,NULL,'0',150,150,'2024-03-30 09:13:31','2024-03-30 09:13:31'),(151,'2024-0150','Neusa Nuanda','999',NULL,'02A','Material de construção',2,'083',NULL,NULL,'null.png',1,NULL,'0',151,151,'2024-03-30 09:13:59','2024-03-30 09:13:59'),(152,'2024-0152','Neusa Muanda','999',NULL,'02A','Material de construção',2,'084',NULL,NULL,'null.png',1,NULL,'0',152,152,'2024-03-30 09:14:31','2024-03-30 09:14:31'),(153,'2024-0151','Esperanca Katuca','999',NULL,'02','Material de Eletricidade',4,'071',NULL,NULL,'null.png',1,NULL,'0',153,153,'2024-03-30 09:15:11','2024-03-30 09:15:11'),(154,'2024-0153','Suzana Josué','999',NULL,'02A','Material de construção',2,'082',NULL,NULL,'null.png',1,NULL,'0',154,154,'2024-03-30 09:15:17','2024-03-30 09:15:17'),(155,'2024-0155','Suzana Josué','999',NULL,'02A','Material de construção',2,'086',NULL,NULL,'null.png',1,NULL,'0',155,155,'2024-03-30 09:15:59','2024-03-30 09:15:59'),(156,'2024-0154','Esperanca Katuca','999',NULL,'02','Material de Eletricidade',4,'072',NULL,NULL,'null.png',1,NULL,'0',156,156,'2024-03-30 09:16:10','2024-03-30 09:16:10'),(157,'2024-0156','Domingas de Sousa','999',NULL,'02A','Material de construção',2,'087',NULL,NULL,'null.png',1,NULL,'0',157,157,'2024-03-30 09:16:40','2024-03-30 09:16:40'),(158,'2024-0157','Lidia Teka','999',NULL,'02','Material de Eletricidade',4,'073',NULL,NULL,'null.png',1,NULL,'0',158,158,'2024-03-30 09:17:24','2024-03-30 09:17:24'),(159,'2024-0158','Domingas de Sousa','999',NULL,'02A','Material de construção',2,'088',NULL,NULL,'null.png',1,NULL,'0',159,159,'2024-03-30 09:17:45','2024-03-30 09:17:45'),(160,'2024-0159','Lidia Teka','999',NULL,'02','Material de Eletricidade',4,'074',NULL,NULL,'null.png',1,NULL,'0',160,160,'2024-03-30 09:18:24','2024-03-30 09:18:24'),(161,'2024-0160','Ana Pascoal','999',NULL,'02A','Material de construção',2,'089',NULL,NULL,'null.png',1,NULL,'0',161,161,'2024-03-30 09:18:58','2024-03-30 09:18:58'),(162,'2024-0161','Regina Teka','999',NULL,'02','Material de Eletricidade',4,'075',NULL,NULL,'null.png',1,NULL,'0',162,162,'2024-03-30 09:19:36','2024-03-30 09:19:36'),(163,'2024-0162','Rodrigues Ultimo Mecango','999',NULL,'02A','Material de construção',2,'090',NULL,NULL,'null.png',1,NULL,'0',163,163,'2024-03-30 09:20:05','2024-03-30 09:20:05'),(164,'2024-0164','Rodrigues Ultimo Mecango','999',NULL,'02A','Material de construção',2,'091',NULL,NULL,'null.png',1,NULL,'0',164,164,'2024-03-30 09:20:36','2024-03-30 09:20:36'),(165,'2024-0163','Regina Teka','999',NULL,'02','Material de Eletricidade',4,'075',NULL,NULL,'null.png',1,NULL,'0',165,165,'2024-03-30 09:20:57','2024-03-30 09:20:57'),(166,'2024-0165','Idalina Manuel','999',NULL,'02A','Material de construção',2,'092',NULL,NULL,'null.png',1,NULL,'0',166,166,'2024-03-30 09:21:12','2024-03-30 09:21:12'),(167,'2024-0167','Idalina Manuel','999',NULL,'02A','Material de construção',2,'093',NULL,NULL,'null.png',1,NULL,'0',167,167,'2024-03-30 09:21:57','2024-03-30 09:21:57'),(168,'2024-0166','Regina Teka','999',NULL,'02','Material de Eletricidade',4,'076',NULL,NULL,'null.png',1,NULL,'0',168,168,'2024-03-30 09:22:22','2024-03-30 09:22:22'),(169,'2024-0168','Madalena João','999',NULL,'02A','Material de construção',2,'094',NULL,NULL,'null.png',1,NULL,'0',169,169,'2024-03-30 09:22:57','2024-03-30 09:22:57'),(170,'2024-0170','Elisa Alberto','999',NULL,'02A','Material de construção',2,'095',NULL,NULL,'null.png',1,NULL,'0',170,170,'2024-03-30 09:23:32','2024-03-30 09:23:32'),(171,'2024-0171','Victoria Inacio','999',NULL,'02A','Material de construção',2,'096',NULL,NULL,'null.png',1,NULL,'0',171,171,'2024-03-30 09:24:10','2024-03-30 09:24:10'),(172,'2024-0169','Josefa Andre','999',NULL,'02','Material de Eletricidade',4,'077',NULL,NULL,'null.png',1,NULL,'0',172,172,'2024-03-30 09:24:17','2024-03-30 09:24:17'),(173,'2024-0173','Victoria Inacio','999',NULL,'02A','Material de construção',2,'097',NULL,NULL,'null.png',1,NULL,'0',173,173,'2024-03-30 09:24:43','2024-03-30 09:24:43'),(174,'2024-0173','Josefa Andre','999',NULL,'02','Material de Eletricidade',4,'078',NULL,NULL,'null.png',1,NULL,'0',174,174,'2024-03-30 09:24:54','2024-03-30 09:24:54'),(175,'2024-0174','Joana Jorge','999',NULL,'02A','Material de construção',2,'098',NULL,NULL,'null.png',0,NULL,'0',175,175,'2024-03-30 09:25:34','2024-03-30 09:25:34'),(176,'2024-0174','Joana Jorge','999',NULL,'02A','Material de construção',2,'098',NULL,NULL,'null.png',1,NULL,'0',176,176,'2024-03-30 09:25:45','2024-03-30 09:25:45'),(177,'2024-0175','Maria Mucota','999',NULL,'02','Material de Eletricidade',4,'079',NULL,NULL,'null.png',1,NULL,'0',177,177,'2024-03-30 09:25:54','2024-03-30 09:25:54'),(178,'2024-0177','Conceição Ngunza','999',NULL,'02A','Material de construção',2,'099',NULL,NULL,'null.png',1,NULL,'0',178,178,'2024-03-30 09:26:40','2024-03-30 09:26:40'),(179,'2024-0178','Maria Mucota','999',NULL,'02','Material de Eletricidade',4,'080',NULL,NULL,'null.png',1,NULL,'0',179,179,'2024-03-30 09:27:03','2024-03-30 09:27:03'),(180,'2024-0179','Dorotoi Kimuango','999',NULL,'02A','Material de construção',2,'100',NULL,NULL,'null.png',1,NULL,'0',180,180,'2024-03-30 09:28:04','2024-03-30 09:28:04'),(181,'2024-0180','Maria Mucota','999',NULL,'02','Material de Eletricidade',4,'081',NULL,NULL,'null.png',1,NULL,'0',181,181,'2024-03-30 09:28:18','2024-03-30 09:28:18'),(182,'2024-0181','Dorotoi Kimuango','999',NULL,'02A','Material de construção',2,'101',NULL,NULL,'null.png',1,NULL,'0',182,182,'2024-03-30 09:28:58','2024-03-30 09:28:58'),(183,'2024-0182','Teresa Magalhães','999',NULL,'02','Material de Eletricidade',4,'082',NULL,NULL,'null.png',1,NULL,'0',183,183,'2024-03-30 09:30:03','2024-03-30 09:30:03'),(184,'2024-0183','Antonica Julio','999',NULL,'02A','Material de construção',2,'102',NULL,NULL,'null.png',1,NULL,'0',184,184,'2024-03-30 09:30:32','2024-03-30 09:30:32'),(185,'2024-0184','Teresa Magalhães','999',NULL,'02','Material de Eletricidade',4,'083',NULL,NULL,'null.png',1,NULL,'0',185,185,'2024-03-30 09:31:10','2024-03-30 09:31:10'),(186,'2024-0185','Antonica Julio','999',NULL,'02A','Gasosa',1,'1o3',NULL,NULL,'null.png',1,NULL,'0',186,186,'2024-03-30 09:31:35','2024-03-30 09:31:35'),(187,'2024-0186','Teresa Magalhães','999',NULL,'02','Gasosa',1,'084',NULL,NULL,'null.png',1,NULL,'0',187,187,'2024-03-30 09:31:51','2024-03-30 09:31:51'),(188,'2024-0188','Maura Francisco','999',NULL,'02','Material de Eletricidade',4,'085',NULL,NULL,'null.png',1,NULL,'0',188,188,'2024-03-30 09:33:02','2024-03-30 09:33:02'),(189,'2024-0189','Luisa Pinto','999',NULL,'02','Material de Eletricidade',4,'086',NULL,NULL,'null.png',1,NULL,'0',189,189,'2024-03-30 09:35:23','2024-03-30 09:35:23'),(190,'2024-0190','Antonica Julio','999',NULL,'02A','Material de construção',2,'104',NULL,NULL,'null.png',1,NULL,'0',190,190,'2024-03-30 09:40:07','2024-03-30 09:40:07'),(191,'2024-0191','Domingas Tomas','999',NULL,'02A','Material de construção',2,'105',NULL,NULL,'null.png',1,NULL,'0',191,191,'2024-03-30 09:40:39','2024-03-30 09:40:39'),(192,'2024-0191','Domingas Tomas','999',NULL,'02A','Material de construção',2,'105',NULL,NULL,'null.png',1,NULL,'0',192,192,'2024-03-30 09:40:57','2024-03-30 09:40:57'),(193,'2024-0193','Domingas Tomas','999',NULL,'02A','Material de construção',2,'106',NULL,NULL,'null.png',1,NULL,'0',193,193,'2024-03-30 09:41:35','2024-03-30 09:41:35'),(194,'2024-0194','Adelina Tomás','999',NULL,NULL,'Material de construção',2,'107',NULL,NULL,'null.png',1,NULL,'0',194,194,'2024-03-30 09:42:19','2024-03-30 09:42:19'),(195,'2024-0195','Adelina Tomás','999',NULL,'02A','Material de construção',2,'108',NULL,NULL,'null.png',1,NULL,'0',195,195,'2024-03-30 09:43:00','2024-03-30 09:43:00'),(196,'2024-0193','Cossi Andre','999',NULL,NULL,'Gasosa',1,'002',NULL,NULL,'null.png',1,NULL,'0',196,196,'2024-03-30 09:43:22','2024-03-30 09:43:22'),(197,'2024-0196','Luzia Tomas','999',NULL,'02A','Material de construção',2,'109',NULL,NULL,'null.png',1,NULL,'0',197,197,'2024-03-30 09:43:31','2024-03-30 09:43:31'),(198,'2024-0198','Luzia Tomas','999',NULL,'02A','Material de construção',2,'110',NULL,NULL,'null.png',1,NULL,'0',198,198,'2024-03-30 09:44:11','2024-03-30 09:44:11'),(199,'2024-0199','Felisberta Almeida','999',NULL,'02A','Material de Eletricidade',4,'111',NULL,NULL,'null.png',1,NULL,'0',199,199,'2024-03-30 09:44:57','2024-03-30 09:44:57'),(200,'2024-0197','Mbiavango Kitade','999',NULL,NULL,'Gasosa',1,NULL,NULL,NULL,'null.png',1,NULL,'0',200,200,'2024-03-30 09:45:30','2024-03-30 09:45:30'),(201,'2024-0200','Filisberta Almeida','999',NULL,'02A','Material de construção',2,'112',NULL,NULL,'null.png',1,NULL,'0',201,201,'2024-03-30 09:45:48','2024-03-30 09:45:48'),(202,'2024-0202','Ingracia J. Kingila','999',NULL,'02A','Material de construção',2,'113',NULL,NULL,'null.png',1,NULL,'0',202,202,'2024-03-30 09:46:32','2024-03-30 09:46:32'),(203,'2024-0197','Mbiavango Kitade','999',NULL,NULL,'Gasosa',1,'003',NULL,NULL,'null.png',1,NULL,'0',203,203,'2024-03-30 09:46:34','2024-03-30 09:46:34'),(204,'2024-0204','Ingracia J. Kingila','999',NULL,'02A','Material de construção',2,'114',NULL,NULL,'null.png',1,NULL,'0',204,204,'2024-03-30 09:47:06','2024-03-30 09:47:06'),(205,'2024-0204','Susie Pedro','999',NULL,NULL,'Gasosa',1,'004',NULL,NULL,'null.png',1,NULL,'0',205,205,'2024-03-30 09:47:26','2024-03-30 09:47:26'),(206,'2024-0205','Helena Canda','999',NULL,'02A','Material de construção',2,'115',NULL,NULL,'null.png',1,NULL,'0',206,206,'2024-03-30 09:47:35','2024-03-30 09:47:35'),(207,'2024-0207','Helena Canda','999',NULL,'02A','Material de construção',2,'116',NULL,NULL,'null.png',0,NULL,'0',207,207,'2024-03-30 09:48:25','2024-03-30 09:48:25'),(208,'2024-0207','Helena Canda','999',NULL,'02A','Material de construção',2,'116',NULL,NULL,'null.png',1,NULL,'0',208,208,'2024-03-30 09:48:38','2024-03-30 09:48:38'),(209,'2024-0209','Rosaria Venacio','999',NULL,'02A','Material de construção',2,'117',NULL,NULL,'null.png',1,NULL,'0',209,209,'2024-03-30 09:49:18','2024-03-30 09:49:18'),(210,'2024-0206','NataliaCapitão','999',NULL,NULL,'Gasosa',1,'005',NULL,NULL,'null.png',1,NULL,'0',210,210,'2024-03-30 09:49:32','2024-03-30 09:49:32'),(211,'2024-0210','Rosaria Venacio','999',NULL,'02A','Material de construção',2,'118',NULL,NULL,'null.png',1,NULL,'0',211,211,'2024-03-30 09:50:26','2024-03-30 09:50:26'),(212,'2024-0212','Rosaria Venacio','999',NULL,'02A','Material de construção',2,'119',NULL,NULL,'null.png',1,NULL,'0',212,212,'2024-03-30 09:51:09','2024-03-30 09:51:09'),(213,'2024-0211','Germano Guimarães','999',NULL,NULL,'Gasosa',1,'006',NULL,NULL,'null.png',1,NULL,'0',213,213,'2024-03-30 09:51:12','2024-03-30 09:51:12'),(214,'2024-0214','Rosaria Venacio','999',NULL,'02A','Material de construção',2,'120',NULL,NULL,'null.png',1,NULL,'0',214,214,'2024-03-30 09:51:57','2024-03-30 09:51:57'),(215,'2024-0214','Stela Manuel','999',NULL,NULL,'Gasosa',1,'007',NULL,NULL,'null.png',1,NULL,'0',215,215,'2024-03-30 09:52:25','2024-03-30 09:52:25'),(216,'2024-0216','Oliveira Mangola','999',NULL,NULL,'Gasosa',1,'010',NULL,NULL,'null.png',1,NULL,'0',216,216,'2024-03-30 09:54:08','2024-03-30 09:54:08'),(217,'2024-0216','Isabel Kossi','999',NULL,'02A','Material de construção',2,'121',NULL,NULL,'null.png',1,NULL,'0',217,217,'2024-03-30 09:54:19','2024-03-30 09:54:19'),(218,'2024-0218','Isabel Kossi','999',NULL,'02A','Material de construção',2,'122',NULL,NULL,'null.png',1,NULL,'0',218,218,'2024-03-30 09:55:07','2024-03-30 09:55:07'),(219,'2024-0217','Estela da Conceição','999',NULL,NULL,'Gasosa',1,'0013',NULL,NULL,'null.png',1,NULL,'0',219,219,'2024-03-30 09:56:15','2024-03-30 09:56:15'),(220,'2024-0219','Geremia Antonio','999',NULL,'02A','Material de construção',2,'123',NULL,NULL,'null.png',1,NULL,'0',220,220,'2024-03-30 09:56:31','2024-03-30 09:56:31'),(221,'2024-0221','Geremia Antonio','999',NULL,'02A','Material de construção',2,'124',NULL,NULL,'null.png',1,NULL,'0',221,221,'2024-03-30 09:57:09','2024-03-30 09:57:09'),(222,'2024-0222','Francisca De Fatima','999',NULL,'02A','Material de construção',2,'125',NULL,NULL,'null.png',1,NULL,'0',222,222,'2024-03-30 09:58:15','2024-03-30 09:58:15'),(223,'2024-0223','Francisca De Fatima','999',NULL,'02A','Material de construção',2,'126',NULL,NULL,'null.png',1,NULL,'0',223,223,'2024-03-30 09:59:08','2024-03-30 09:59:08');
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'911222333',NULL,'911222333',NULL,'colin11@wilderman.info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(165,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(171,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(173,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(174,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(179,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(182,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(184,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(185,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(186,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(187,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(188,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(189,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(191,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(192,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(196,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(197,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(198,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(207,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(208,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(211,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(213,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(215,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(216,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(221,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `empresas` VALUES (1,'DEFAULT','DEFAULT','5484084610','1998-11-15','5484084610','DEFAULT','5484084610','','null.png',1,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Angola','Luanda','Tokelau',NULL,NULL),(2,'Angola','Luanda','Viana-Bairro CAMPO D´EURIQUE, Rua DIREITA DA SONANGALP,',NULL,NULL),(3,'Angola','LUANDA','avó kumbi',NULL,NULL),(4,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(5,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(6,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(7,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(8,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(9,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(10,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(11,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(12,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(13,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(14,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(15,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(16,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(17,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(18,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(19,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(20,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(21,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(22,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(23,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(24,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(25,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(26,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(27,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(28,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(29,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(30,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(31,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(32,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(33,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(34,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(35,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(36,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(37,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(38,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(39,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(40,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(41,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(42,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(43,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(44,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(45,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(46,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(47,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(48,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(49,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(50,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(51,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(52,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(53,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(54,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(55,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(56,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(57,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(58,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(59,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(60,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(61,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(62,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(63,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(64,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(65,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(66,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(67,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(68,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(69,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(70,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(71,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(72,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(73,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(74,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(75,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(76,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(77,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(78,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(79,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(80,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(81,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(82,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(83,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(84,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(85,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(86,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(87,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(88,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(89,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(90,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(91,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(92,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(93,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(94,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(95,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(96,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(97,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(98,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(99,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(100,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(101,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(102,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(103,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(104,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(105,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(106,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(107,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(108,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(109,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(110,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(111,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(112,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(113,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(114,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(115,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(116,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(117,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(118,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(119,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(120,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(121,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(122,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(123,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(124,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(125,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(126,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(127,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(128,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(129,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(130,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(131,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(132,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(133,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(134,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(135,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(136,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(137,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(138,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(139,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(140,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(141,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(142,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(143,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(144,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(145,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(146,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(147,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(148,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(149,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(150,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(151,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(152,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(153,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(154,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(155,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(156,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(157,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(158,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(159,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(160,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(161,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(162,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(163,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(164,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(165,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(166,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(167,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(168,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(169,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(170,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(171,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(172,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(173,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(174,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(175,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(176,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(177,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(178,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(179,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(180,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(181,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(182,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(183,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(184,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(185,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(186,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(187,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(188,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(189,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(190,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(191,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(192,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(193,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(194,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(195,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(196,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(197,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(198,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(199,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(200,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(201,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(202,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(203,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(204,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(205,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(206,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(207,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(208,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(209,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(210,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(211,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(212,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(213,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(214,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(215,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(216,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(217,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(218,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(219,'Angola','sapu','11 de mercado Novembro',NULL,NULL),(220,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(221,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(222,'Angola','sapu','11 de mercado de novembro',NULL,NULL),(223,'Angola','sapu','11 de mercado de novembro',NULL,NULL);
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
INSERT INTO `fabricantes` VALUES (1,'0001','Diverso','By the use.',1,NULL,NULL);
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
  `is_qr` int(11) DEFAULT 0,
  `nave` varchar(191) DEFAULT NULL,
  `local` varchar(191) DEFAULT NULL,
  `loja` varchar(191) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_recibos`
--

LOCK TABLES `factura_recibos` WRITE;
/*!40000 ALTER TABLE `factura_recibos` DISABLE KEYS */;
INSERT INTO `factura_recibos` VALUES (1,'FR 2024/1',1,'Consumidor Final','Consumidor Final','Tokelau','2024-04-01 09:08:19','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,300.00,0.00,0.00,0.00,300.00,'eywibz4zWazlWv3Dh7FuqSWXWwJboZucnPP+AW4MOzfgWMVXasiTSbJ+gpKtK7MPMhbG8mOKJEK8DvL+6HMp1TOW6C9gDAyrNxtvd7r2pFru0y2Wk+AkRdgxKz2YiZ/6B2pva6lefFXb+IDCgpYv3lgBFl9ghMYUhXApLkrx5wE=',1,1,1,'base 12','75000','Bancada','2024-04-01 07:08:20','2024-04-01 07:08:20'),(2,'FR 2024/1',1,'Consumidor Final','Consumidor Final','Tokelau','2024-04-01 09:08:58','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,2220.00,0.00,0.00,0.00,2220.00,'A+2b5vaCSNxpKVhjcNMbNbVH/20PpeejmUODfDVv8SlRxYH93Vceoz2Nppt78DVyBtvl9jUdPYOQEEgy3hJiS2y8YQZHQXxvTSqcKxXRUUr7HcQGcbo5PktVu1ElaP6KhdwvYFsF9r9btfIxfyUaP4wfv7wrmPh16t7hkI9AiMM=',1,1,1,'base 12','75000','Bancada','2024-04-01 07:08:58','2024-04-01 07:08:58'),(3,'FR 2024/3',2,'ADLYSSAL, LDA','5417426288','Viana-Bairro CAMPO D´EURIQUE, Rua DIREITA DA SONANGALP,','2024-04-01 09:11:24','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,2220.00,0.00,0.00,0.00,2220.00,'epMZN2CI1cWSTloyrWX4/F7HX9xmdyFot/WGACuV8iKQZSDqSFWulyt1kxx2DjhYZsgWG4PgFVs7dfsUD8rs4HGn5uBRn0NOijpzL3xA94gwUhC0SVTbEjU3Dv5yCPAWwGI1DI31Wm2jLEBzM08sVZ9zPrRdAKMrNj1SXAn6Wpk=',1,1,1,'74','90',NULL,'2024-04-01 07:11:24','2024-04-01 07:11:24'),(4,'FR 2024/4',2,'ADLYSSAL, LDA','5417426288','Viana-Bairro CAMPO D´EURIQUE, Rua DIREITA DA SONANGALP,','2024-04-01 09:54:17','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,2220.00,0.00,0.00,0.00,2220.00,'nafCuOqCtLqCmxXC+umkjzAZ6/CTnAwgpq0ZnFy4aUQMOJV7A6TJ7BSSYPwiz/kmda5iZK+qcH2JhFUS+5ss1BW5ySHBfq/muOE2ct38Ls9lMehjsxhno/mnLNKYXltubV1UKYq1GWe6AdkM/K/3lou7v9UXxViIzGy+UOt+1+M=',1,1,1,'74','90','Bancada','2024-04-01 07:54:17','2024-04-01 07:54:17'),(5,'FR 2024/5',2,'ADLYSSAL, LDA','5417426288','Viana-Bairro CAMPO D´EURIQUE, Rua DIREITA DA SONANGALP,','2024-04-01 09:58:57','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,2220.00,0.00,0.00,0.00,2220.00,'NGpOOYhP+W1s+RkCbU3r4uqfEsqZFis2vVPZe3aSO1VpgMFo9ajzST9meVF+2TNTRxlP0B0WISAGbgDAQHFwix2XtytRTe9R6nKY0se6v7brxik5Qp7fcdvJHjGU+VxkF+Gsqu0UzpXqtDdtgOjugjxRoVhnx/o9VEHY215MOaU=',1,1,1,'74','90','Bancada','2024-04-01 07:58:57','2024-04-01 07:58:57'),(6,'FR 2024/6',5,'Teresa Manuel','999','11 de mercado Novembro','2024-04-01 10:03:19','2024-04-01 00:00:00',1,1,1,'Administrador',NULL,300.00,0.00,0.00,0.00,300.00,'EySChCcu+AILAHzS7CMMHaMTleXrn07yW7ZMXHK4+TvYVY/V1lv9HmDqIJb73/YT7wK1WNDb/MZAYnDfx9v49I3Rv928qHK7R2LbOw9Au7FpbQaQHjTdb7zUeok089ihGWv3b6LvoXcbWf9+3Evjluj083Vq8v6U/VkyHDuVU6I=',1,1,0,'02','001','Material de Eletricidade','2024-04-01 08:03:19','2024-04-01 08:03:19');
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
  `is_qr` int(11) DEFAULT 0,
  `is_nota` tinyint(1) DEFAULT NULL,
  `nave` varchar(191) DEFAULT NULL,
  `local` varchar(191) DEFAULT NULL,
  `loja` varchar(191) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pagamentos`
--

LOCK TABLES `formas_pagamentos` WRITE;
/*!40000 ALTER TABLE `formas_pagamentos` DISABLE KEYS */;
INSERT INTO `formas_pagamentos` VALUES (1,'0001','Dinheiro','The Duchess took.',1,NULL,NULL),(2,'0002','Transferência','Gryphon, and.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impostos`
--

LOCK TABLES `impostos` WRITE;
/*!40000 ALTER TABLE `impostos` DISABLE KEYS */;
INSERT INTO `impostos` VALUES (1,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',1,NULL,NULL),(2,'IVA','','IVA',14,'',1,NULL,NULL),(3,'ISENTO','M02','M02 - Transmissão de bens e serviço não sujeita',0,'Regime Simplificado',1,NULL,NULL),(4,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,NULL,NULL),(5,'ISENTO','M11','M11 - Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(6,'ISENTO','M12','M12 - Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(7,'ISENTO','M13','M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(8,'ISENTO','M14','M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(9,'ISENTO','M15','M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(10,'ISENTO','M16','M16 - Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(11,'ISENTO','M17','M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(12,'ISENTO','M18','M18 - Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(13,'ISENTO','M19','M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(14,'ISENTO','M20','M20 - Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(15,'ISENTO','M21','M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(16,'ISENTO','M22','M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(17,'ISENTO','M23','M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(18,'ISENTO','M24','M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA',0,'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA',1,NULL,NULL),(19,'ISENTO','M80','M80 - Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(20,'ISENTO','M81','M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(21,'ISENTO','M82','M82 - Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(22,'ISENTO','M83','M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(23,'ISENTO','M84','M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA',0,'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA',1,NULL,NULL),(24,'ISENTO','M85','M85 - Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA',0,'Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA',1,NULL,NULL),(25,'ISENTO','M86','M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA',0,'Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA',1,NULL,NULL),(26,'ISENTO','M30','M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA',0,'Isento nos termos da alínea a) do artigo 15.º do CIVA',1,NULL,NULL),(27,'ISENTO','M31','M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA',0,'Isento nos termos da alínea b) do artigo 15.º do CIVA',1,NULL,NULL),(28,'ISENTO','M32','M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA',0,'Isento nos termos da alínea c) do artigo 15.º do CIVA',1,NULL,NULL),(29,'ISENTO','M33','M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA',0,'Isento nos termos da alínea d) do artigo 15.º do CIVA',1,NULL,NULL),(30,'ISENTO','M34','M34 - Isento nos termos da alínea e) do artigo 15.º do CIVA',0,'Isento nos termos da alínea e) do artigo 15.º do CIVA',1,NULL,NULL),(31,'ISENTO','M35','M35 - Isento nos termos da alínea f) do artigo 15.º do CIVA',0,'Isento nos termos da alínea f) do artigo 15.º do CIVA',1,NULL,NULL),(32,'ISENTO','M36','M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA',0,'Isento nos termos da alínea g) do artigo 15.º do CIVA',1,NULL,NULL),(33,'ISENTO','M37','M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA',0,'Isento nos termos da alínea h) do artigo 15.º do CIVA',1,NULL,NULL),(34,'ISENTO','M38','M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA',0,'Isento nos termos da alínea i) do artigo 15.º do CIVA',1,NULL,NULL),(35,'ISENTO','M90','M90 - Isento nos termos da alinea a) do nº1 do artigo 16.º',0,'Isento nos termos da alinea a) do nº1 do artigo 16.º',1,NULL,NULL),(36,'ISENTO','M91','M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º',0,'Isento nos termos da alinea b) do nº1 do artigo 16.º',1,NULL,NULL),(37,'ISENTO','M92','M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º',0,'Isento nos termos da alinea c) do nº1 do artigo 16.º',1,NULL,NULL),(38,'ISENTO','M93','M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º',0,'Isento nos termos da alinea d) do nº1 do artigo 16.º',1,NULL,NULL),(39,'ISENTO','M93','M94 - Isento nos termos da alinea e) do nº1 do artigo 16.º',0,'Isento nos termos da alinea e) do nº1 do artigo 16.º',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_factura_recibos`
--

LOCK TABLES `item_factura_recibos` WRITE;
/*!40000 ALTER TABLE `item_factura_recibos` DISABLE KEYS */;
INSERT INTO `item_factura_recibos` VALUES (1,'Material de construção',300.00,1,0.00,300.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',1,2,1,1,'2024-04-01 07:08:20','2024-04-01 07:08:20'),(2,'Bancada',2220.00,1,0.00,2220.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',2,3,1,1,'2024-04-01 07:08:58','2024-04-01 07:08:58'),(3,'Bancada',2220.00,1,0.00,2220.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',3,3,1,1,'2024-04-01 07:11:24','2024-04-01 07:11:24'),(4,'Bancada',2220.00,1,0.00,2220.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',4,3,1,1,'2024-04-01 07:54:17','2024-04-01 07:54:17'),(5,'Bancada',2220.00,1,0.00,2220.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,3,1,1,'2024-04-01 07:58:57','2024-04-01 07:58:57'),(6,'Material de construção',300.00,1,0.00,300.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,2,1,1,'2024-04-01 08:03:19','2024-04-01 08:03:19');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_creditos`
--

LOCK TABLES `item_nota_creditos` WRITE;
/*!40000 ALTER TABLE `item_nota_creditos` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proformas`
--

LOCK TABLES `item_proformas` WRITE;
/*!40000 ALTER TABLE `item_proformas` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
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
INSERT INTO `migrations` VALUES (1,'2014_10_11_000000_create_departamentos_table',1),(2,'2014_10_12_000000_create_enderecos_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2020_08_10_110404_create_contactos_table',1),(7,'2021_01_06_173930_create_tipos_table',1),(8,'2021_01_06_173931_create_categorias_table',1),(9,'2021_01_06_173932_create_impostos_table',1),(10,'2021_01_06_173933_create_fornecedors_table',1),(11,'2021_01_06_173934_create_retencaos_table',1),(12,'2021_01_06_173952_create_artigos_table',1),(13,'2021_07_19_095646_create_clientes_table',1),(14,'2021_07_19_201615_create_empresas_table',1),(15,'2021_08_13_100920_create_formas_pagamentos_table',1),(16,'2021_08_13_100921_create_moedas_table',1),(17,'2021_08_13_100926_create_facturas_table',1),(18,'2021_08_27_084347_create_modo_pagamentos_table',1),(19,'2021_08_30_183409_create_items_table',1),(20,'2021_09_01_075243_create_proformas_table',1),(21,'2021_09_01_075439_create_item_proformas_table',1),(22,'2021_09_01_075937_create_series_table',1),(23,'2021_09_03_132534_create_armazems_table',1),(24,'2021_09_15_130302_create_stocks_table',1),(25,'2021_09_19_125720_create_item_stocks_table',1),(26,'2021_09_20_082519_create_recibos_table',1),(27,'2021_09_20_082623_create_factura_recibos_table',1),(28,'2021_09_20_082635_create_item_factura_recibos_table',1),(29,'2021_09_28_131912_create_motivo_anulacaos_table',1),(30,'2021_09_28_131912_create_tipo_motivo_anulacaos_table',1),(31,'2021_12_22_125550_create_bugs_table',1),(32,'2022_01_23_103308_create_fabricantes_table',1),(33,'2022_01_23_151610_create_condicoes_pagamentos_table',1),(34,'2022_01_25_091808_bancos',1),(35,'2022_02_09_131420_create_permission_tables',1),(36,'2022_09_08_110345_create_nota_creditos_table',1),(37,'2022_09_08_110451_create_nota_debitos_table',1),(38,'2022_09_08_110636_create_item_nota_creditos_table',1),(39,'2022_09_08_110646_create_item_nota_debitos_table',1),(40,'2022_09_11_162939_create_guia_transportes_table',1),(41,'2022_09_11_162954_create_item_guia_transportes_table',1),(42,'2022_09_11_163007_create_guia_remessas_table',1),(43,'2022_09_11_163023_create_item_guia_remessas_table',1),(44,'2022_09_21_140425_create_agts_table',1),(45,'2023_01_23_155122_create_tax_tables_table',1),(46,'2023_01_23_155225_create_saft_audits_table',1),(47,'2023_03_31_105051_create_pais_table',1),(48,'2023_05_07_190801_create_safts_table',1),(49,'2023_07_19_200600_create_receita_despesas_table',1),(50,'2024_03_27_114807_alter_cliente_table',1);
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
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(1,'App\\User',2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_creditos`
--

LOCK TABLES `nota_creditos` WRITE;
/*!40000 ALTER TABLE `nota_creditos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Angola','AO',1,NULL,NULL),(2,'Portugal','PT',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'pos','web',NULL,NULL),(2,'painel','web',NULL,NULL),(3,'artigo','web',NULL,NULL),(4,'receita_despesa','web',NULL,NULL),(5,'cliente','web',NULL,NULL),(6,'documento','web',NULL,NULL),(7,'relatorio','web',NULL,NULL),(8,'configuracoes','web',NULL,NULL);
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
  `is_qr` int(11) DEFAULT 0,
  `nave` varchar(191) DEFAULT NULL,
  `local` varchar(191) DEFAULT NULL,
  `loja` varchar(191) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proformas`
--

LOCK TABLES `proformas` WRITE;
/*!40000 ALTER TABLE `proformas` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
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
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','web',NULL,NULL),(2,'Gestor','web',NULL,NULL),(3,'Operador','web',NULL,NULL),(4,'Operador POS','web',NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safts`
--

LOCK TABLES `safts` WRITE;
/*!40000 ALTER TABLE `safts` DISABLE KEYS */;
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
INSERT INTO `series` VALUES (1,'0001','PP 2024','proforma','Alice could not.',1,NULL,NULL),(2,'0002','FT 2024','factura','Duchess sneezed.',1,NULL,NULL),(3,'0003','FR 2024','factura-recibo','Alice, \'how.',1,NULL,NULL),(4,'0004','RC 2024','recibo','But do cats eat.',1,NULL,NULL),(5,'0005','NC 2024','nota-credito','Queen. \'I haven\'t.',1,NULL,NULL),(6,'0006','ND 2024','nota-debito','So she tucked.',1,NULL,NULL),(7,'0007','GT 2024','guia-transporte','I\'ll look.',1,NULL,NULL),(8,'0008','GR 2024','guia-remessa','Alice did.',1,NULL,NULL),(9,'0009','RD 2024','receita-despesa','Alice: \'she\'s so.',1,NULL,NULL),(10,'00010','SC 2024','stock','WOULD go.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','admin@admin.com',1,'$2y$10$RSADd2j5MGZuCAaVLrkSle4jk/Z6P1LM2uYrjCVO4JADYOuQPGF76','default.jpg',1,NULL,NULL,NULL,NULL),(2,'Ofélio Capanda','admin1@admin.com',1,'$2y$10$mlsA0vi7Cf0O9yipk6.k9uSeuDmrvuVsTwJ3V2nlKUkolxesX3N0S','default.jpg',1,0,NULL,'2024-03-30 06:53:33','2024-03-30 06:54:08');
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

-- Dump completed on 2024-12-03 21:49:47
