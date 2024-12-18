-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_sc_osoares
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armazems`
--

LOCK TABLES `armazems` WRITE;
/*!40000 ALTER TABLE `armazems` DISABLE KEYS */;
INSERT INTO `armazems` VALUES (1,'0001','Sede','And with that.',1,NULL,NULL),(2,'0002','Camara Serviços de Contabilidade Fiscal',NULL,1,'2023-06-23 12:59:50','2023-06-23 12:59:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (1,'2023-0001','Lona 2.03 Cm x 62 Cm',1,1,1,4,15425,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','1000','Lona 2.03 Cm x 62 Cm',1,'2023-06-15 15:07:22','2023-06-15 16:25:47'),(2,'2023-0002','Lona 4.60 Cm x 62 Cm',1,1,1,4,19160,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','1000','Lona 4.60 Cm x 62 Cm',1,'2023-06-15 15:09:11','2023-06-15 16:26:39'),(3,'2023-0003','Aplicação de Material',2,1,1,4,16000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','1000',NULL,1,'2023-06-15 15:10:06','2023-06-15 16:27:57'),(4,'2023-0004','Vinil',1,1,1,4,7752,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','1000',NULL,1,'2023-06-15 16:29:31','2023-06-15 16:29:31'),(5,'2023-0005','Criação',2,1,1,4,13000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-06-15 17:07:24','2023-06-15 17:07:24'),(6,'2023-0006','Serviços de Contablidade Fiscal',2,1,1,4,30000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-06-16 12:08:07','2023-06-16 12:08:35'),(7,'2023-0007','Cartões de Visitas',2,1,1,4,220,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','10000000',NULL,1,'2023-06-16 12:09:42','2023-06-16 12:37:09'),(8,'2023-0008','Visor iPhone XS',1,1,1,4,38000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-06-19 10:43:18','2023-06-19 10:43:18'),(9,'2023-0009','Serviços de Fecho de Exercício 2022',1,1,1,4,180000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-06-19 12:55:13','2023-06-19 12:55:13'),(10,'2023-0010','Camara Serviços de Contabilidade Fiscal',2,1,1,4,16000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-06-23 13:00:24','2023-06-23 13:01:21'),(11,'2023-0011','Conserto de impressora hp laserjet pro 200 color m251nw',2,1,1,4,30000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-11 08:28:00','2023-07-11 11:06:12'),(12,'2023-0012','Conserto de Impressora hp color laserjet mfp 179fnw',2,1,1,4,41000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-11 08:35:36','2023-07-11 11:12:47'),(13,'2023-0013','Motor de reposicionamento de papel',2,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-11 08:37:03','2023-07-11 08:37:03'),(14,'2023-0014','Deposito de resíduos de Impressora hp color laserjet mfp 179fnw',2,1,1,4,18000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-11 11:05:01','2023-07-11 11:06:48'),(15,'2023-0015','Correia laserjet pro 200 color m251nw',2,1,1,4,16000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-11 11:10:22','2023-07-11 11:13:56'),(16,'2023-0016','Criação de Lona',2,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-13 10:23:33','2023-07-13 10:24:00'),(17,'2023-0017','Criação de Arte',2,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-13 10:32:45','2023-07-13 10:32:45'),(18,'2023-0018','Criação de Vinil Print',2,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-13 10:33:30','2023-07-13 10:33:30'),(19,'2023-0019','Cartões de Visitas (100)',2,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-13 10:34:17','2023-07-13 10:34:17'),(20,'2023-0020','H- Serviços de Contabilidade Fiscal (Outubro)',2,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-07-19 12:16:19','2023-11-06 15:42:44'),(21,'2023-0021','Serviço de Pintura na sala',2,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-01 11:08:45','2023-08-01 11:08:45'),(22,'2023-0022','Fornecimento e montagem de fechaduras',2,1,1,4,30000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-01 11:09:18','2023-08-01 11:09:18'),(23,'2023-0023','Serviço de reparação e construção civil',2,1,1,4,22000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-01 11:09:52','2023-08-01 11:09:52'),(24,'2023-0024','Montagem de quadro',2,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-01 11:10:40','2023-08-01 11:10:40'),(25,'2023-0025','H- Serviços de Contabilidade Fiscal (Julho)',2,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-02 08:56:10','2023-08-02 09:01:57'),(26,'2023-0026','S- Serviços de Contabilidade Fiscal (Setembro)',2,1,1,4,30000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-02 10:19:37','2023-10-05 11:18:22'),(27,'2023-0027','Bandeiras Personalizadas',2,1,1,4,37000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-08-03 08:55:29','2023-08-03 08:55:40'),(28,'2023-0028','SDSD',1,1,1,4,155.44,'null.png','null.png','null.png',NULL,NULL,'11414',0,'0','0',NULL,1,'2023-08-31 10:09:36','2023-08-31 10:09:36'),(29,'2023-0029','Aplicação de Gradeamentos em todas as janelas',1,1,1,4,35000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:56:42','2023-09-01 12:56:42'),(30,'2023-0030','Tubo torneira da cozinha + WC',1,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:57:29','2023-09-01 12:57:29'),(31,'2023-0031','Canhão da fechadura da porta principal com aplicação',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:58:02','2023-09-01 12:58:02'),(32,'2023-0032','Canhão da fechadura porta lateral da cozinha com aplicação',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:58:30','2023-09-01 12:58:30'),(33,'2023-0033','Saneamento básico (desentupimento de fossa)',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:59:05','2023-09-01 12:59:05'),(34,'2023-0033','Saneamento básico (desentupimento de fossa)',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-01 12:59:05','2023-09-01 12:59:05'),(35,'2023-0035','A- Serviços de Contabilidade Fiscal (Agosto)',2,1,1,4,19000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-04 09:27:02','2023-09-04 09:27:02'),(36,'2023-0036','Impressão de Folhas A4',1,1,1,4,125,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-09-06 10:04:20','2023-09-06 10:04:20'),(37,'2023-0037','Lona 1.50 Cm x 2m',2,1,1,4,16500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0','Lona 1.50 Cm x 2m',1,'2023-09-18 12:18:05','2023-09-18 12:18:05'),(38,'2023-0038','Lona 1M  x 1M',2,1,1,4,5500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0','Lona 1M  x 1M',1,'2023-09-18 12:19:14','2023-09-18 12:19:14'),(39,'2023-0039','Scream XDR Super Retina iPhone 13+',1,1,1,4,280000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-03 07:11:46','2023-10-03 08:25:16'),(40,'2023-0040','Taxa de deslocação',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-03 07:13:00','2023-10-03 08:17:55'),(41,'2023-0041','Z-Serviços de Contablidade Fiscal',2,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-06 14:34:04','2024-01-10 11:49:02'),(42,'2023-0042','Tonner',1,1,1,4,125000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-13 12:31:53','2023-10-13 12:31:53'),(43,'2023-0043','T-Shert Personalizada Keya Preta',2,1,1,4,4000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-16 11:26:56','2023-10-19 09:48:17'),(44,'2023-0044','T-Shert Personalizada Mukua',2,1,1,4,5300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-16 11:27:46','2023-10-16 11:27:46'),(45,'2023-0045','T-Shert Personalizada Buk',2,1,1,4,4000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-16 11:28:13','2023-10-16 11:28:13'),(46,'2023-0046','T-Shert Personalizada Mukua	Laranja',2,1,1,4,5300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-17 11:04:53','2023-10-17 11:04:53'),(47,'2023-0047','T-Shert Personalizada Mukua Preta',2,1,1,4,5300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-17 11:05:33','2023-10-17 11:05:49'),(48,'2023-0048','T-Shert Personalizada Keya Laranja',2,1,1,4,4000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-10-19 09:48:45','2023-10-19 09:48:45'),(49,'2023-0049','Serviços de Dj (09/10) 2023',2,1,1,4,150000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-13 14:44:55','2023-11-13 14:44:55'),(50,'2023-0050','Diagnostico de Computador',2,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-14 14:56:13','2023-11-14 14:56:13'),(51,'2023-0051','Reparação Fonte de Alimentação HP',1,1,1,4,35000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-20 19:41:18','2023-11-20 19:41:18'),(52,'2023-0052','Mão de Obra',2,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-21 09:57:08','2023-11-21 09:57:08'),(53,'2023-0053','Impressão de Vinil 182 x 62',1,1,1,4,10920,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-22 14:51:28','2023-11-22 14:51:28'),(54,'2023-0054','Impressão de Vinil 184 x 145',1,1,1,4,16008,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-22 14:52:10','2023-11-22 14:52:10'),(55,'2023-0055','Impressão de Vinil 197 x 222',1,1,1,4,26240,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-22 14:52:42','2023-11-22 14:52:42'),(56,'2023-0056','Criação',1,1,1,4,16000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-22 14:53:26','2023-11-22 14:53:26'),(57,'2023-0057','Aplicação de Vinil',2,1,1,4,35000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-22 14:54:05','2023-11-22 14:54:13'),(58,'2023-0058','Impressão De Vinil 160 x 165 Cm',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-23 11:38:14','2023-11-30 16:26:51'),(59,'2023-0059','Personalização',1,1,1,4,18000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-23 11:41:59','2023-11-23 11:41:59'),(60,'2023-0060','Disco Duro 500GB',1,1,1,4,20000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-30 16:48:51','2023-11-30 16:48:51'),(61,'2023-0061','Instalação de Sistema Mac OS X',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-30 16:50:38','2023-11-30 16:50:49'),(62,'2023-0062','Manutenção/Reparação',1,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-30 16:52:46','2023-11-30 16:52:46'),(63,'2023-0063','Instalação de Softwares Diversos Utilitários',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-11-30 16:54:24','2023-11-30 16:54:24'),(64,'2023-0064','T-Shert Desportiva com impressão (Branca)',1,1,1,4,6000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-05 13:45:49','2023-12-05 13:45:49'),(65,'2023-0065','T-Shert Desportiva com impressão (Preta)',1,1,1,4,6000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-05 13:46:32','2023-12-05 13:46:32'),(66,'2023-0066','Conjunto (Mastro + Bandeirinha de Mesa)',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-08 15:49:45','2023-12-08 15:49:45'),(67,'2023-0067','Vinil para porta',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-08 15:50:30','2023-12-08 15:50:30'),(68,'2023-0068','Convite Digital',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-14 16:49:10','2023-12-14 16:53:36'),(69,'2023-0069','Vinil autocolante',1,1,1,4,27750,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-14 16:51:38','2023-12-14 16:51:38'),(70,'2023-0070','Vinil de Recorte',1,1,1,4,27000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-14 16:52:40','2023-12-14 16:52:40'),(71,'2023-0071','VD-iPhone XS Max',1,1,1,4,55000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-15 07:22:37','2023-12-15 07:22:37'),(72,'2023-0072','Fitas Personalizadas',1,1,1,4,400,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2023-12-21 12:50:45','2023-12-21 12:50:45'),(73,'2024-0073','Crachás',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-04 16:38:34','2024-01-04 16:38:34'),(74,'2024-0074','Bandeira Institucional',1,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-04 16:40:21','2024-01-04 16:40:21'),(75,'2024-0075','Autocolante',1,1,1,4,2650,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-09 09:51:40','2024-04-26 13:16:06'),(76,'2024-0076','Cartões de Visitas Urgente',1,1,1,4,400,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-17 13:36:12','2024-03-11 11:28:24'),(77,'2024-0077','Cartão de Visita',1,1,1,4,300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-17 13:36:44','2024-01-17 13:36:44'),(78,'2024-0078','Passes em PVC',1,1,1,4,4000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-17 13:41:46','2024-01-17 13:41:46'),(79,'2024-0079','Caixa Luminosa (100 CM x 665 CM)',1,1,1,4,1236000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-01-29 15:03:25','2024-02-05 09:30:45'),(80,'2024-0080','SOULEYMANE DOUKOURE CONTABLIDADE',1,1,1,4,24000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-02-07 13:52:58','2024-02-07 13:52:58'),(81,'2024-0081','Impressão de Capas Administrativas',1,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-02-16 08:31:17','2024-02-23 09:27:05'),(82,'2024-0082','Impressão de Capas Administrativas	(AMOSTRAS)',2,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-02-23 08:58:15','2024-02-23 08:58:15'),(83,'2024-0083','Lona 700 cm X 400 cm',1,1,1,4,168000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-02-26 10:06:17','2024-02-26 10:06:17'),(84,'2024-0084','Anéis Porta Guardanapos',1,1,1,4,1350,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-04 10:06:50','2024-03-04 10:06:50'),(85,'2024-0085','Taxa de Urgencia',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-11 11:29:22','2024-03-11 11:29:22'),(86,'2024-0086','Placa PVC 1.20CM x 1.50CM',2,1,1,4,38000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-14 11:51:18','2024-03-14 11:52:19'),(87,'2024-0087','Print de Lona 3.40 Cm  x 1.10 Cm',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-22 14:08:58','2024-03-22 14:10:33'),(88,'2024-0088','Criação de Arte',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-22 14:09:39','2024-03-22 14:09:39'),(89,'2024-0089','Print de Lona 1.50 Cm x 1.50 Cm',1,1,1,4,11000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-02 07:20:13','2024-04-02 07:20:13'),(90,'2024-0090','Taxa de Entrega',1,1,1,4,2000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-02 07:21:05','2024-04-02 07:21:05'),(91,'2024-0091','MAMADOU COULIBALY Serviços de Contablidade e Fiscal',1,1,1,4,19000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-10 14:50:35','2024-04-10 14:50:35'),(92,'2024-0092','Papel Reciclado',1,1,1,4,90,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-11 08:40:28','2024-04-11 08:40:28'),(93,'2024-0093','Prestação de Serviços Administrativos',1,1,1,4,35000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-12 11:02:28','2024-04-12 11:02:28'),(94,'2024-0094','Placa acrílica de 70 Cm x 50 Cm',1,1,1,4,66000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-12 15:53:05','2024-04-12 15:55:16'),(95,'2024-0095','Vinil de 70 Cm x 50 Cm',1,1,1,4,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-12 16:01:19','2024-04-12 16:01:19'),(96,'2024-0096','AMA SARA DJALO - Serviços de Contabilidade e Fiscal',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-17 15:07:03','2024-05-08 11:02:53'),(97,'2024-0097','Constituição DC RH (Folha de Salário, Recibo de Pagamento, Mapa de Ferias, Horário de Trabalho)',1,1,1,4,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:30:37','2024-04-20 10:42:40'),(98,'2024-0098','Tratamento de Publicidade',1,1,1,4,6000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:31:58','2024-04-20 10:31:58'),(99,'2024-0098','Tratamento de Publicidade',1,1,1,4,6000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:31:59','2024-04-20 10:31:59'),(100,'2024-0100','Tratamento Auto dos Bombeiros',1,1,1,4,6000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:36:22','2024-04-20 10:36:22'),(101,'2024-0101','Tratamento de INADEC',1,1,1,4,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:37:24','2024-04-20 10:42:13'),(102,'2024-0102','Tratamento de Contratos de Trabalho',1,1,1,4,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-04-20 10:38:13','2024-04-20 10:41:58'),(103,'2024-0103','S- Serviços de Contabilidade Fiscal',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-05-07 12:04:19','2024-05-07 12:04:19'),(104,'2024-0104','MC-Serviços de Contabilidade Fiscal',1,1,1,4,19000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-05-08 10:50:38','2024-05-08 10:50:38'),(105,'2024-0105','Stand de exposição 36m2 (Reutilizável) Modelagem e projeção Preparação e Fabrico de Moveis Construção e Eletrificação Manutenção ao decorrer da Feira e Desmontagem',1,1,1,4,3000000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-05-15 14:44:29','2024-05-15 14:45:36'),(106,'2024-0106','Mão de Obra',1,1,1,4,1500000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-05-15 14:45:15','2024-05-15 14:45:15'),(107,'2024-0107','T-Shirt Personalizada Marca Keya Azul Claro',2,1,1,4,5200,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-06-05 15:42:53','2024-06-05 15:42:53'),(108,'2024-0108','T-Shirt Personalizada Marca Keya Preta',1,1,1,4,5200,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-06-05 15:43:16','2024-06-05 15:44:21'),(109,'2024-0109','mochila',1,1,1,4,7920792.08,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-06-07 14:15:05','2024-06-07 15:37:29'),(110,'2024-0110','Serviços de DJ',1,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-06-09 06:48:09','2024-07-31 17:01:36'),(111,'2024-0111','iPhone 7 Plus',1,1,1,4,115000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-06-26 07:15:06','2024-06-26 07:15:06'),(112,'2024-0112','Sistema Operativo Win 7',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-02 05:57:46','2024-07-02 06:29:30'),(113,'2024-0113','Microsoft Office (Licença Infinita)',1,1,1,4,12000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-02 06:02:27','2024-07-02 06:02:27'),(114,'2024-0114','Softwares e Utilities Essências Para funcionamento do SO',1,1,1,4,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-02 06:04:20','2024-07-02 06:05:59'),(115,'2024-0115','Manutenção Geral do Hardware',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-02 06:30:14','2024-07-02 06:30:22'),(116,'2024-0116','Chinela',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:21:13','2024-07-11 11:04:01'),(117,'2024-0117','Calça Jeans',1,1,1,4,4900,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:21:51','2024-07-11 11:04:25'),(118,'2024-0118','Lacoste',1,1,1,4,2600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:22:25','2024-07-11 11:09:03'),(119,'2024-0119','Lacoste Polo',1,1,1,4,4100,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:23:05','2024-07-11 11:09:42'),(120,'2024-0120','Tshirts',1,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:24:31','2024-07-05 10:33:40'),(121,'2024-0121','Chinela desportiva',1,1,1,4,2500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:35:33','2024-07-05 10:35:33'),(122,'2024-0122','Manjuco 01',1,1,1,4,6500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:41:17','2024-07-11 11:12:32'),(123,'2024-0123','Calça Jeans',1,1,1,4,3800,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:41:56','2024-07-05 10:41:56'),(124,'2024-0124','Calção de praia',1,1,1,4,1600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:42:25','2024-07-05 10:42:25'),(125,'2024-0125','Calção',1,1,1,4,1100,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:43:13','2024-07-05 10:43:13'),(126,'2024-0126','Lacoste Jeans',1,1,1,4,1250,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:43:53','2024-07-05 10:43:53'),(127,'2024-0127','Casacos de napa',1,1,1,4,7000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,'2024-07-05 10:44:43','2024-07-05 10:44:43'),(128,'2024-0127','Casacos de napa',1,1,1,4,7000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:44:45','2024-07-05 10:44:45'),(129,'2024-0127','Casacos de napa',1,1,1,4,7000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:44:45','2024-07-05 10:44:45'),(130,'2024-0130','Tshirts desportiva',1,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-05 10:45:40','2024-07-05 10:45:40'),(131,'2024-0131','Chinela Havaianas',1,1,1,4,1675,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-10 08:26:16','2024-07-10 08:26:16'),(132,'2024-0132','T-shirt desportiva',1,1,1,4,2010,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-10 08:27:56','2024-07-10 08:27:56'),(133,'2024-0133','Bubu',1,1,1,4,6700,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-10 08:28:30','2024-07-10 08:28:30'),(134,'2024-0134','Chinela Desportiva',1,1,1,4,2600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-10 08:29:38','2024-07-10 08:29:38'),(135,'2024-0135','Camisa Safary',1,1,1,4,5695,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-10 08:30:29','2024-07-10 08:30:29'),(136,'2024-0136','Lacoste .',1,1,1,4,3600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:11:24','2024-07-11 11:11:24'),(137,'2024-0137','Manjuco 2',1,1,1,4,4050,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:13:00','2024-07-11 11:13:00'),(138,'2024-0138','Chinesla',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:19:38','2024-07-11 11:19:38'),(139,'2024-0139','Calça Jeans 01',1,1,1,4,4900,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:20:28','2024-07-11 11:20:28'),(140,'2024-0140','Calça Jeans 02',1,1,1,4,3700,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:21:17','2024-07-11 11:21:17'),(141,'2024-0141','Lacosta 01',1,1,1,4,2600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:21:54','2024-07-11 11:21:54'),(142,'2024-0142','Lacosta 02',1,1,1,4,4100,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:22:56','2024-07-11 11:22:56'),(143,'2024-0143','Lacosta 03',1,1,1,4,3600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:23:58','2024-07-11 11:23:58'),(144,'2024-0144','Calça Manjuco 01',1,1,1,4,4050,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 11:27:44','2024-07-11 12:49:47'),(145,'2024-0145','Calça Manjuco 02',1,1,1,4,6500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-11 12:49:29','2024-07-11 12:49:29'),(146,'2024-0146','Fato de Noivo',1,1,1,4,65000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 08:28:03','2024-07-16 08:28:03'),(147,'2024-0147','Fato Safary',1,1,1,4,50000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 08:28:53','2024-07-16 08:28:53'),(148,'2024-0148','Fato Completo 02',1,1,1,4,54000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 08:30:23','2024-07-16 08:30:23'),(149,'2024-0149','Sapato',1,1,1,4,29500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:39:05','2024-07-16 10:44:31'),(150,'2024-0150','Gravata',1,1,1,4,5500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:39:51','2024-07-16 10:39:51'),(151,'2024-0151','Laços',1,1,1,4,5500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:40:35','2024-07-16 10:40:35'),(152,'2024-0152','Flores',1,1,1,4,3000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:41:27','2024-07-16 10:41:27'),(153,'2024-0153','Camisa',1,1,1,4,4500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:42:17','2024-07-16 10:42:17'),(154,'2024-0154','Cinto',1,1,1,4,6500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:42:53','2024-07-16 10:42:53'),(155,'2024-0155','Fato Completo 01',1,1,1,4,58000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 10:46:32','2024-07-16 10:46:32'),(156,'2024-0156','Corrente',1,1,1,4,2500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,'2024-07-16 11:17:20','2024-07-16 11:17:20'),(157,'2024-0156','Corrente',1,1,1,4,2500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 11:17:22','2024-07-16 11:17:22'),(158,'2024-0158','Pastas',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 11:38:05','2024-07-16 11:38:05'),(159,'2024-0159','Tshirts',1,1,1,4,6500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-16 11:39:11','2024-07-16 11:39:11'),(160,'2024-0160','Chinela',1,1,1,4,3500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:15:45','2024-07-19 08:15:45'),(161,'2024-0161','Calça jeans 01',1,1,1,4,4900,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:18:04','2024-07-19 08:19:21'),(162,'2024-0162','Calça jeans 02',1,1,1,4,5400,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:20:36','2024-07-19 08:20:36'),(163,'2024-0163','Manjuco 01',1,1,1,4,4050,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:21:56','2024-07-19 08:22:23'),(164,'2024-0164','Manjuco 02',1,1,1,4,6500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:22:56','2024-07-19 08:22:56'),(165,'2024-0165','Lacoste 01',1,1,1,4,3600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:23:27','2024-07-19 08:26:01'),(166,'2024-0166','Lacoste 02',1,1,1,4,4100,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:26:55','2024-07-19 08:26:55'),(167,'2024-0167','Lacoste 03',1,1,1,4,2600,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:28:03','2024-07-19 08:28:03'),(168,'2024-0168','Tshirt',1,1,1,4,3650,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:28:44','2024-07-19 08:28:44'),(169,'2024-0169','Calção jeans',1,1,1,4,4000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:29:15','2024-07-19 08:29:15'),(170,'2024-0170','Calção com rosto',1,1,1,4,2300,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:34:30','2024-07-19 08:34:30'),(171,'2024-0171','Calção de praia',1,1,1,4,1350,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:37:18','2024-07-19 08:37:18'),(172,'2024-0172','Casaco de napa',1,1,1,4,6800,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-07-19 08:38:04','2024-07-19 09:10:37'),(173,'2024-0173','K.P Artes Contabilidade e Gestão',1,1,1,4,20000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-03 12:46:56','2024-09-03 12:46:56'),(174,'2024-0174','SSD 256 GB',1,1,1,4,32000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-04 07:34:22','2024-09-04 07:34:22'),(175,'2024-0175','Mão de Obra',1,1,1,4,20000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-04 07:35:04','2024-09-04 07:35:04'),(176,'2024-0176','Memoria Ram 4G',1,1,1,4,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-04 07:35:37','2024-09-04 07:35:37'),(177,'2024-0177','Softwares e Utilities Essências Para funcionamento do SO',1,1,1,4,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-04 07:36:18','2024-09-04 07:36:18'),(178,'2024-0178','Transporte deslocação e Entrega',1,1,1,4,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-04 07:37:28','2024-09-04 07:37:28'),(179,'2024-0179','Serviço de Pintura',1,1,1,4,149000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-09 17:24:56','2024-09-09 17:24:56'),(180,'2024-0180','Serviço de Chaparia',1,1,1,4,66000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-09 17:25:42','2024-09-09 17:25:42'),(181,'2024-0181','Porta_Guardanapos_Acrílico PWC',1,1,1,4,1350,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-09 18:12:25','2024-10-09 18:12:25'),(182,'2024-0182','Porta_Guardanapos_Acrílico AO',1,1,1,4,1350,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-09 18:13:00','2024-10-09 18:13:00'),(183,'2024-0183','T-Shert Personalizada Tamanho (S)',1,1,1,2,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-17 13:16:34','2024-10-17 13:16:34'),(184,'2024-0184','T-Shert Personalizada Tamanho (M)',1,1,1,2,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-17 13:17:05','2024-10-17 13:17:05'),(185,'2024-0185','T-Shert Personalizada Tamanho (L)',1,1,1,2,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-17 13:18:00','2024-10-17 13:18:00'),(186,'2024-0186','T-Shert Personalizada Tamanho (XL)',1,1,1,2,8000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-17 13:18:26','2024-10-17 13:18:26'),(187,'2024-0187','Anéis Acrílico 50 Anos',1,1,1,4,1350,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-21 16:07:15','2024-10-21 16:07:15'),(188,'2024-0188','Serviços de Fecho de Contas IP Industrial 2022 Dado Maria 2022',1,1,1,4,250000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-29 11:35:21','2024-10-29 11:35:21'),(189,'2024-0189','Serviços de Fecho de Contas IP Industrial 2023 Zinab 2023',1,1,1,4,250000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-29 11:35:57','2024-10-29 11:35:57'),(190,'2024-0190','Vinil Perfurado Para Vidro',1,1,1,4,25000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-30 09:12:55','2024-10-30 09:12:55'),(191,'2024-0191','Serviços Fiscais',1,1,1,4,90000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-10-30 13:06:58','2024-10-30 13:06:58'),(192,'2024-0192','Chinela desportista sola seca',1,1,1,4,4500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-11-18 12:39:18','2024-11-19 08:37:10'),(193,'2024-0193','Chinela da Adidas',1,1,1,4,3900,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-11-18 12:39:51','2024-11-19 08:37:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (1,'Banco BIC','174090133.14.001','005100007409013314129',NULL,'2023-06-15 18:25:29','2023-06-15 18:25:29'),(2,'Banco BFA','225128295.30.001','000600002512829530145','BF','2023-06-15 18:27:21','2023-06-15 18:27:21'),(3,'Banco Atlantico','121047891.10.001','005500002104789110130','ATL','2023-06-15 18:28:16','2023-06-15 18:28:16'),(5,'Banco BAI','09997521810001','004000009997521810165','BAISFT','2023-07-11 11:33:17','2023-07-11 11:33:17');
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
INSERT INTO `categorias` VALUES (1,'0001','Diverso','Time as well say,\'.',1,NULL,NULL);
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
  `id_endereco` bigint(20) unsigned DEFAULT NULL,
  `id_contacto` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_id_endereco_foreign` (`id_endereco`),
  KEY `clientes_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `clientes_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `clientes_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'2023-0001','Salão de Beleza & Barbearia 99','2417025590',NULL,NULL,NULL,'null.png',1,2,2,'2023-06-15 15:12:32','2023-06-15 15:27:46'),(2,'2023-0002','SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700',NULL,NULL,NULL,'null.png',1,3,3,'2023-06-16 12:12:03','2023-06-16 12:12:03'),(3,'2023-0003','Dá Vida a Casa','5419010836',NULL,NULL,NULL,'null.png',1,4,4,'2023-06-16 12:16:18','2023-06-16 12:16:18'),(4,'2023-0004','Machai Dos Santos',NULL,NULL,NULL,NULL,'null.png',1,5,5,'2023-06-19 10:43:55','2023-06-19 10:43:55'),(5,'2023-0005','SYLLA OUSMANE','0000097290',NULL,NULL,NULL,'null.png',1,6,6,'2023-06-19 12:53:29','2023-06-19 12:53:29'),(6,'2023-0006','CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001390414',NULL,NULL,NULL,'null.png',1,7,7,'2023-06-23 12:58:57','2023-08-02 09:08:27'),(7,'2023-0007','L M MENDES COMERCIO GERAL LDA','5000700053',NULL,NULL,NULL,'null.png',1,8,8,'2023-07-13 10:40:55','2023-07-13 10:40:55'),(8,'2023-0008','HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215',NULL,NULL,NULL,'null.png',1,9,9,'2023-07-19 12:15:14','2023-07-19 12:15:14'),(9,'2023-0009','XD PEOPLE - COMERCIO E SERVIÇOS, LDA','5001499157',NULL,NULL,NULL,'null.png',1,10,10,'2023-08-01 11:12:17','2023-08-01 18:07:08'),(10,'2023-0010','Apart Hotel Tropicana',NULL,NULL,NULL,NULL,'null.png',1,11,11,'2023-08-03 08:54:28','2023-08-03 08:54:28'),(11,'2023-0011','Rosa',NULL,NULL,NULL,NULL,'null.png',1,12,12,'2023-09-01 12:59:55','2023-09-01 12:59:55'),(12,'2023-0012','ATELIER DIOGO VICTOR GR - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS , (SU),LDA.','5001598244',NULL,NULL,NULL,'null.png',1,13,13,'2023-09-04 09:30:24','2023-09-04 09:30:24'),(13,'2023-0013','EDINE.MASIMO-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001092685',NULL,NULL,NULL,'null.png',1,14,14,'2023-09-04 11:07:06','2023-09-04 11:07:06'),(14,'2023-0014','Associação Gloriosos do D´Agosto',NULL,NULL,NULL,NULL,'null.png',1,15,15,'2023-09-06 10:03:13','2023-09-06 10:03:13'),(15,'2023-0014','Associação Gloriosos do D´Agosto',NULL,NULL,NULL,NULL,'null.png',1,16,16,'2023-09-06 10:03:13','2023-09-06 10:03:13'),(16,'2023-0016','DINUGO PRESTAÇAO DE SERVIÇO','5000615315',NULL,NULL,NULL,'null.png',1,17,17,'2023-09-18 12:16:26','2023-09-18 12:16:26'),(17,'2023-0017','Jocelme',NULL,NULL,NULL,NULL,'null.png',1,18,18,'2023-10-03 07:16:45','2023-10-03 07:16:45'),(18,'2023-0018','Zeferina Campos',NULL,NULL,NULL,NULL,'null.png',1,19,19,'2023-10-06 14:31:44','2023-10-06 14:31:44'),(19,'2023-0019','Administração do Kilamba','999999',NULL,NULL,NULL,'null.png',1,20,20,'2023-10-13 12:32:40','2023-10-13 12:32:40'),(20,'2023-0020','RESTAURANTE & BAR OKILA, LDA','5001156004',NULL,NULL,NULL,'null.png',1,21,21,'2023-11-13 14:43:22','2024-06-11 07:50:21'),(21,'2023-0021','Extrem Event LDA','5484003130',NULL,NULL,NULL,'null.png',1,22,22,'2023-11-14 14:54:41','2023-11-14 14:56:52'),(22,'2023-0022','Lizandra',NULL,NULL,NULL,NULL,'null.png',1,23,23,'2023-12-15 07:25:14','2023-12-15 07:25:14'),(23,'2024-0023','Carrs P. Serviços','5417062847',NULL,NULL,NULL,'null.png',1,24,24,'2024-01-09 11:16:46','2024-01-09 11:16:46'),(24,'2024-0024','Marjoel - Comercio Geral e Prest.Serv. (SU) LDA','5417491187',NULL,NULL,NULL,'null.png',1,25,25,'2024-01-29 15:00:49','2024-01-29 15:00:49'),(25,'2024-0025','SOULEYMANE DOUKOURE - COMERCIO E SERVIÇOS, (SU),LDA','5001760815',NULL,NULL,NULL,'null.png',1,26,26,'2024-02-07 13:51:50','2024-02-07 13:51:50'),(26,'2024-0026','Emanuel Soares Comercio Geral, (SU), LDA','5000944629',NULL,NULL,NULL,'null.png',1,27,27,'2024-02-09 14:13:48','2024-02-09 14:14:10'),(27,'2024-0027','Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769',NULL,NULL,NULL,'null.png',1,28,28,'2024-03-04 10:08:37','2024-03-04 10:08:48'),(28,'2024-0028','MAMADOU COULIBALY','0000089949',NULL,NULL,NULL,'null.png',1,29,29,'2024-04-10 14:40:39','2024-04-10 14:40:39'),(29,'2024-0029','ZEEPACK ANGOLA LDA','5417167622',NULL,NULL,NULL,'null.png',1,30,30,'2024-04-11 08:41:59','2024-04-11 08:44:21'),(30,'2024-0030','Sambou Toure Comércio Geral e Prestação de Serviços (SU), LDA','5001867059',NULL,NULL,NULL,'null.png',1,31,31,'2024-04-12 11:01:21','2024-04-12 11:01:21'),(31,'2024-0031','AMA SARA DJALO - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,NULL,NULL,NULL,'null.png',1,32,32,'2024-04-17 15:06:38','2024-04-17 15:06:38'),(32,'2024-0032','MAMADOU COULIBALY','0000089949',NULL,NULL,NULL,'null.png',1,33,33,'2024-05-08 10:48:22','2024-05-08 10:48:22'),(33,'2024-0033','Tombossy',NULL,NULL,NULL,NULL,'null.png',1,34,34,'2024-05-15 14:46:39','2024-05-15 14:46:39'),(34,'2024-0034','Rafael Manuel João',NULL,NULL,NULL,NULL,'null.png',1,35,35,'2024-06-26 07:18:50','2024-06-26 07:18:50'),(35,'2024-0035','AQUAMUNDIS LDA','5000229105',NULL,NULL,NULL,'null.png',1,36,36,'2024-07-02 06:28:59','2024-07-02 06:28:59'),(36,'2024-0036','Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881',NULL,NULL,NULL,'null.png',1,37,37,'2024-07-10 08:31:33','2024-07-10 08:31:33'),(37,'2024-0037','Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,NULL,NULL,'null.png',1,38,38,'2024-07-16 10:49:04','2024-07-16 10:49:04'),(38,'2024-0038','KAPALO ARTE - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001519670',NULL,NULL,NULL,'null.png',1,39,39,'2024-09-03 12:37:57','2024-09-03 12:37:57'),(39,'2024-0039','Engenheiro. Adelino Pelasio Kaussassili','9999999',NULL,NULL,NULL,'null.png',1,40,40,'2024-09-04 07:40:56','2024-09-04 07:40:56'),(40,'2024-0040','Telmo de Almeida',NULL,NULL,NULL,NULL,'null.png',1,41,41,'2024-09-09 17:27:33','2024-09-09 17:27:33'),(41,'2024-0041','SETIC- SERVIÇOS DE TECNOLOGIA E INFORMAÇÃO E COMUNICAÇÃO DAS FINANÇAS PUBLICAS',NULL,NULL,NULL,NULL,'null.png',1,42,42,'2024-10-17 13:14:49','2024-10-17 13:14:49'),(42,'2024-0042','DOUCOURE DOUMBE','0000148894',NULL,NULL,NULL,'null.png',1,43,43,'2024-10-29 11:33:49','2024-10-29 11:33:49'),(43,'2024-0043','Moussa Magassa','5001794426',NULL,NULL,NULL,'null.png',1,44,44,'2024-10-30 13:06:21','2024-10-30 13:06:21'),(44,'2024-0044','Souleymane Doukuore','5001760815',NULL,NULL,NULL,'null.png',1,45,45,'2024-11-18 12:45:06','2024-11-18 12:45:06'),(45,'2024-0045','DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,NULL,NULL,'null.png',1,46,46,'2024-11-18 12:49:12','2024-11-19 08:02:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'925587755',NULL,NULL,NULL,'oguimar.soares@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'948235904',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'949744028',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'922071411',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'927 999 898',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'+244 947 361 936',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,NULL,'+244 926 754 908',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,NULL,'930106162',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,NULL,'916704400',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,NULL,'926875771',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'932708029',NULL,'932708029',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,NULL,NULL,'947895256',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,NULL,NULL,'925589896',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,NULL,NULL,'923776901',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,NULL,'923669441',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `empresas` VALUES (1,'Original','5000942790','47710','2022-02-01','100000','Olgemar Gomes Soares','003387810LA033',NULL,'1686916784.jpg',1,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Angola','Luanda','Centralidade do Sequele Rua 1 Bloco 2 Predio 20B 002',NULL,NULL),(2,'Angola','Luanda','Vila Alice Rua João de Deus Casa nº: 99',NULL,NULL),(3,'Angola','Luanda','Hoji Yha Henda',NULL,NULL),(4,'Angola','Luanda','Entrada  Principal  do  Lar  do Pat riota Luanda Angola',NULL,NULL),(5,'Angola',NULL,NULL,NULL,NULL),(6,'Angola','Luanda','Cazenga',NULL,NULL),(7,'Angola',NULL,NULL,NULL,NULL),(8,'Angola','Luanda','Mercado dos Congoleses',NULL,NULL),(9,'Angola','Luanda','Hoji Yha Henda',NULL,NULL),(10,'Angola','Luanda','Urbanização Nova Vida, Rua 66 Casa nº 7321, Municipio de Kilamba Kiaxi',NULL,NULL),(11,'Angola','Luanda',NULL,NULL,NULL),(12,'Angola',NULL,NULL,NULL,NULL),(13,'Angola',NULL,NULL,NULL,NULL),(14,'Angola',NULL,'Rua do Merccado dos Congoloses',NULL,NULL),(15,'Angola','LUANDA','BBP EDF CUNENE PORTA',NULL,NULL),(16,'Angola','LUANDA','BBP EDF CUNENE PORTA',NULL,NULL),(17,'Angola',NULL,'Luanda,',NULL,NULL),(18,'Angola',NULL,NULL,NULL,NULL),(19,'Angola',NULL,NULL,NULL,NULL),(20,'Angola',NULL,NULL,NULL,NULL),(21,'Angola','Luanda','RUA LOTE Q-ZB/V3V2, K102, CASA N°22',NULL,NULL),(22,'Angola',NULL,NULL,NULL,NULL),(23,'Angola',NULL,NULL,NULL,NULL),(24,'Angola','Luanda','Cidadela Desportiva 34/44 Ragel',NULL,NULL),(25,'Angola','Luanda',NULL,NULL,NULL),(26,'Angola','LUANDA','Hoji Yha Henda',NULL,NULL),(27,'Angola','LUANDA','Cazenga Loja 54',NULL,NULL),(28,'Angola','LUANDA','Tala Tona Condomínio Horizonte Sul, Casa B14',NULL,NULL),(29,'Angola','Luanda','Hoji Yha Henda /Cazenga',NULL,NULL),(30,'Angola','LUANDA','Polo Industrial de Viana',NULL,NULL),(31,'Angola','LUANDA','Cazenga Rua Porto Moniz',NULL,NULL),(32,'Angola','LUANDA','RUA S/NOME, CASA Nº S/Nº - JUNTO A ESQUADRA DA POLICIA NACIONAL.',NULL,NULL),(33,'Angola','LUANDA','Cazenga',NULL,NULL),(34,'Angola',NULL,NULL,NULL,NULL),(35,'Angola','Luanda',NULL,NULL,NULL),(36,'Angola','Luanda','ESTRADA DO LAR DO PATRIOTA, S/Nº 1º ANDAR C, BENFICA, LUANDA',NULL,NULL),(37,'Angola','LUANDA','Hoji Yha Henda',NULL,NULL),(38,'Angola','Luanda',NULL,NULL,NULL),(39,'Angola','Luanda',NULL,NULL,NULL),(40,'Angola','LUANDA','Viana dos Bombeiros',NULL,NULL),(41,'Angola','Luanda',NULL,NULL,NULL),(42,'Angola','Luanda',NULL,NULL,NULL),(43,'Angola','LUANDA','Maianga',NULL,NULL),(44,'Angola','Luanda','Cazenga',NULL,NULL),(45,'Angola','LUANDA',NULL,NULL,NULL),(46,'Angola','LUANDA',NULL,NULL,NULL);
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
INSERT INTO `fabricantes` VALUES (1,'0001','Diverso','NOT, being.',1,NULL,NULL);
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_recibos_cliente_id_foreign` (`cliente_id`),
  KEY `factura_recibos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `factura_recibos_moeda_id_foreign` (`moeda_id`),
  KEY `factura_recibos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `factura_recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `factura_recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_recibos`
--

LOCK TABLES `factura_recibos` WRITE;
/*!40000 ALTER TABLE `factura_recibos` DISABLE KEYS */;
INSERT INTO `factura_recibos` VALUES (1,'FR 2023/1',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-06-19 00:00:00','2023-06-19 00:00:00',2,1,2,'Olgemar Soares',NULL,66000.00,0.00,0.00,0.00,66000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-19 10:23:33','2023-06-19 10:23:33'),(2,'FR 2023/2',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-07-05 00:00:00','2023-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-07-05 08:34:24','2023-07-05 08:34:24'),(3,'FR 2023/3',7,'L M MENDES COMERCIO GERAL LDA','5000700053','Mercado dos Congoleses','2023-07-13 00:00:00','2023-07-13 00:00:00',2,1,2,'Olgemar Soares',NULL,40000.00,0.00,0.00,0.00,40000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-07-13 10:43:40','2023-07-13 10:43:40'),(4,'FR 2023/4',9,'XD PEOPLE - COMERCIO E SERVIÇOS, LDA','5001499157','Urbanização Nova Vida, Rua 66 Casa nº 7321, Municipio de Kilamba Kiaxi','2023-08-01 00:00:00','2023-08-01 00:00:00',1,1,2,'Olgemar Soares',NULL,165000.00,0.00,0.00,0.00,165000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-01 18:18:07','2023-08-01 18:18:07'),(5,'FR 2023/5',10,'Apart Hotel Tropicana',NULL,NULL,'2023-08-03 00:00:00','2023-08-03 00:00:00',2,1,2,'Olgemar Soares',NULL,185000.00,0.00,0.00,0.00,185000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-03 08:58:01','2023-08-03 08:58:01'),(6,'FR 2023/6',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-08-10 00:00:00','2023-08-10 00:00:00',1,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-10 13:34:41','2023-08-10 13:34:41'),(7,'FR 2023/7',14,'Associação Gloriosos do D´Agosto',NULL,'BBP EDF CUNENE PORTA','2023-09-06 00:00:00','2023-09-06 00:00:00',1,1,2,'Olgemar Soares',NULL,125000.00,0.00,0.00,0.00,125000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-09-06 10:04:45','2023-09-06 10:04:45'),(8,'FR 2023/8',20,'Restaurante e Bar o Killa',NULL,'99999','2023-11-13 00:00:00','2023-11-13 00:00:00',2,1,2,'Olgemar Soares',NULL,150000.00,0.00,0.00,0.00,150000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-13 14:46:43','2023-11-13 14:46:43'),(9,'FR 2023/9',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-11-16 00:00:00','2023-11-16 00:00:00',1,1,2,'Olgemar Soares',NULL,240000.00,0.00,0.00,0.00,240000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-16 12:34:39','2023-11-16 12:34:39'),(10,'FR 2023/10',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-21 00:00:00','2023-12-21 00:00:00',1,1,2,'Olgemar Soares','OBS: Pagamento efetuado em numerário',120176.00,0.00,0.00,0.00,120176.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(11,'FR 2023/11',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-02-26 00:00:00','2024-02-26 00:00:00',1,1,2,'Olgemar Soares','Pagamento em dinheiro',168000.00,0.00,0.00,0.00,168000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-26 10:10:03','2024-02-26 10:10:03'),(12,'FR 2023/12',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,870350.00,0.00,0.00,0.00,870350.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:35:24','2024-07-10 08:35:24'),(13,'FR 2023/13',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,877050.00,0.00,0.00,0.00,877050.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(14,'FR 2023/14',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,911350.00,0.00,0.00,0.00,911350.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(15,'FR 2023/15',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,896500.00,0.00,0.00,0.00,896500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:48:31','2024-07-10 08:48:31'),(16,'FR 2023/16',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,883750.00,0.00,0.00,0.00,883750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:50:17','2024-07-10 08:50:17'),(17,'FR 2023/17',36,'Ibraim Badiaga - Comércio Geral e Prestação de Serviços (SU), LDA','5000229881','Hoji Yha Henda','2024-07-10 00:00:00','2024-07-10 00:00:00',2,1,2,'Olgemar Soares',NULL,779250.00,0.00,0.00,0.00,779250.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-10 08:51:58','2024-07-10 08:51:58'),(18,'FR 2023/18',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,6142000.00,0.00,0.00,0.00,6142000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(19,'FR 2023/19',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,8372000.00,0.00,0.00,0.00,8372000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:37:27','2024-07-16 11:37:27'),(20,'FR 2023/20',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,1177000.00,0.00,0.00,0.00,1177000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:41:54','2024-07-16 11:41:54'),(21,'FR 2023/21',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,605000.00,0.00,0.00,0.00,605000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:43:31','2024-07-16 11:43:31'),(22,'FR 2023/22',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,917500.00,0.00,0.00,0.00,917500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:44:24','2024-07-16 11:44:24'),(23,'FR 2023/23',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,957000.00,0.00,0.00,0.00,957000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(24,'FR 2023/24',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,617500.00,0.00,0.00,0.00,617500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:48:56','2024-07-16 11:48:56'),(25,'FR 2023/25',37,'Tounkara Mousa - Comércio Geral (SU) LDA','5000481629',NULL,'2024-07-16 00:00:00','2024-07-16 00:00:00',1,1,2,'Olgemar Soares',NULL,735000.00,0.00,0.00,0.00,735000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(26,'FR 2023/26',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,969000.00,0.00,0.00,0.00,969000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:38:08','2024-07-19 09:38:08'),(27,'FR 2023/27',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,792000.00,0.00,0.00,0.00,792000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:40:23','2024-07-19 09:40:23'),(28,'FR 2023/28',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,835000.00,0.00,0.00,0.00,835000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:43:02','2024-07-19 09:43:02'),(29,'FR 2023/29',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,812500.00,0.00,0.00,0.00,812500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:44:15','2024-07-19 09:44:15'),(30,'FR 2023/30',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,865000.00,0.00,0.00,0.00,865000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:45:56','2024-07-19 09:45:56'),(31,'FR 2023/31',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,952500.00,0.00,0.00,0.00,952500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(32,'FR 2023/31',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,952500.00,0.00,0.00,0.00,952500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(33,'FR 2023/31',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-19 00:00:00','2024-07-19 00:00:00',1,1,2,'Olgemar Soares',NULL,952500.00,0.00,0.00,0.00,952500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(34,'FR 2024/34',27,'Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769','Tala Tona Condomínio Horizonte Sul, Casa B14','2024-10-15 00:00:00','2024-10-15 00:00:00',2,1,2,'Olgemar Soares',NULL,677700.00,0.00,0.00,0.00,677700.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-10-15 11:47:46','2024-10-15 11:47:46'),(35,'FR 2024/34',27,'Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769','Tala Tona Condomínio Horizonte Sul, Casa B14','2024-10-15 00:00:00','2024-10-15 00:00:00',2,1,2,'Olgemar Soares',NULL,677700.00,0.00,0.00,0.00,677700.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-10-15 11:47:46','2024-10-15 11:47:46'),(36,'FR 2024/36',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',1,1,2,'Olgemar Soares',NULL,344500.00,0.00,0.00,0.00,344500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 12:58:05','2024-11-18 12:58:05'),(37,'FR 2024/37',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',1,1,2,'Olgemar Soares',NULL,341250.00,0.00,0.00,0.00,341250.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 12:58:49','2024-11-18 12:58:49'),(38,'FR 2024/38',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',2,1,2,'Olgemar Soares',NULL,331500.00,0.00,0.00,0.00,331500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 13:02:00','2024-11-18 13:02:00'),(39,'FR 2024/39',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',1,1,2,'Olgemar Soares',NULL,334750.00,0.00,0.00,0.00,334750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 13:02:33','2024-11-18 13:02:33'),(40,'FR 2024/40',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',1,1,2,'Olgemar Soares',NULL,351000.00,0.00,0.00,0.00,351000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 13:04:29','2024-11-18 13:04:29'),(41,'FR 2024/41',44,'Souleymane Doukuore','5001760815',NULL,'2024-11-18 00:00:00','2024-11-18 00:00:00',1,1,2,'Olgemar Soares',NULL,390000.00,0.00,0.00,0.00,390000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-18 13:05:24','2024-11-18 13:05:24'),(42,'FR 2024/42',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,357500.00,0.00,0.00,0.00,357500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:03:48','2024-11-19 08:03:48'),(43,'FR 2024/43',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,393900.00,0.00,0.00,0.00,393900.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:05:20','2024-11-19 08:05:20'),(44,'FR 2024/44',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,331500.00,0.00,0.00,0.00,331500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:05:51','2024-11-19 08:05:51'),(45,'FR 2024/45',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,321750.00,0.00,0.00,0.00,321750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:06:32','2024-11-19 08:06:32'),(46,'FR 2024/46',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,357500.00,0.00,0.00,0.00,357500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:07:02','2024-11-19 08:07:02'),(47,'FR 2024/47',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,429000.00,0.00,0.00,0.00,429000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:07:56','2024-11-19 08:07:56'),(48,'FR 2024/48',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,432000.00,0.00,0.00,0.00,432000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:39:21','2024-11-19 08:39:21'),(49,'FR 2024/49',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,633000.00,0.00,0.00,0.00,633000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:39:51','2024-11-19 08:39:51'),(50,'FR 2024/50',45,'DADO MARIA - COMERCIO E SERVICOS, LDA','5000473952',NULL,'2024-11-19 00:00:00','2024-11-19 00:00:00',1,1,2,'Olgemar Soares',NULL,627000.00,0.00,0.00,0.00,627000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-11-19 08:40:45','2024-11-19 08:40:45');
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
  `is_nota` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facturas_cliente_id_foreign` (`cliente_id`),
  KEY `facturas_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `facturas_moeda_id_foreign` (`moeda_id`),
  KEY `facturas_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `facturas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `facturas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `facturas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'FT 2023/1',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-06-16 00:00:00','2023-06-16 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,6,'PP 2023/6',1,1,'2023-06-16 13:09:58','2023-06-20 21:23:37'),(2,'FT 2023/2',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,NULL,'2023-06-23 00:00:00','2023-06-23 00:00:00',1,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-06-23 13:01:43','2023-06-23 13:01:43'),(3,'FT 2023/3',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-07-12 00:00:00','2023-07-12 00:00:00',2,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,13,'PP 2023/13',1,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(4,'FT 2023/3',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-07-12 00:00:00','2023-07-12 00:00:00',2,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,13,'PP 2023/13',1,1,'2023-07-12 09:28:35','2023-07-12 09:29:22'),(5,'FT 2023/5',8,'HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215','Hoji Yha Henda','2023-07-19 00:00:00','2023-07-19 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-07-19 12:17:56','2023-07-20 20:12:12'),(6,'FT 2023/6',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,NULL,'2023-08-01 00:00:00','2023-08-01 00:00:00',2,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-08-01 10:56:42','2023-08-02 09:05:58'),(7,'FT 2023/7',9,'XD PEOPLE LDA.','51002123B','Rua Faria Guimaraes Nº 829, 1º','2023-08-01 00:00:00','2023-08-01 00:00:00',2,1,2,'Olgemar Soares',NULL,165000.00,0.00,0.00,0.00,165000.00,165000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-08-01 11:14:13','2023-08-01 11:14:13'),(8,'FT 2023/8',11,'Rosa',NULL,NULL,'2023-09-01 00:00:00','2023-09-01 00:00:00',1,1,2,'Olgemar Soares',NULL,51500.00,0.00,0.00,0.00,51500.00,51500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(9,'FT 2023/9',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-09-04 00:00:00','2023-09-04 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-04 09:22:31','2023-09-04 09:22:31'),(10,'FT 2023/10',12,'ATELIER DIOGO VICTOR GR - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS , (SU),LDA.','5001598244',NULL,'2023-09-04 00:00:00','2023-09-04 00:00:00',1,1,2,'Olgemar Soares',NULL,19000.00,0.00,0.00,0.00,19000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-04 09:31:04','2023-09-04 10:49:03'),(11,'FT 2023/11',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001390414',NULL,'2023-09-04 00:00:00','2023-09-04 00:00:00',2,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-04 09:36:48','2023-09-04 09:36:48'),(12,'FT 2023/12',5,'SYLLA OUSMANE','0000097290','Cazenga','2023-09-04 00:00:00','2023-09-04 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-04 10:04:27','2023-09-04 10:04:27'),(13,'FT 2023/13',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-09-18 00:00:00','2023-09-18 00:00:00',2,1,2,'Olgemar Soares',NULL,38500.00,0.00,0.00,0.00,38500.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-09-18 12:20:23','2023-09-22 09:20:34'),(14,'FT 2023/14',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001390414',NULL,'2023-10-03 00:00:00','2023-10-03 00:00:00',2,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-03 10:13:58','2023-10-03 10:13:58'),(15,'FT 2023/15',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-10-06 00:00:00','2023-10-06 00:00:00',1,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-06 08:56:36','2023-10-06 08:56:36'),(16,'FT 2023/16',18,'Zeferina Campos',NULL,NULL,'2023-10-06 00:00:00','2023-10-06 00:00:00',1,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-06 14:32:38','2023-10-06 14:32:38'),(17,'FT 2023/17',18,'Zeferina Campos',NULL,NULL,'2023-10-06 00:00:00','2023-10-06 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-06 14:34:48','2023-10-06 14:34:48'),(18,'FT 2023/18',8,'HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215','Hoji Yha Henda','2023-10-07 00:00:00','2023-10-07 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-07 08:14:57','2023-10-07 08:14:57'),(19,'FT 2023/19',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-19 00:00:00','2023-10-19 00:00:00',2,1,2,'Olgemar Soares',NULL,240000.00,0.00,0.00,0.00,240000.00,240000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-10-19 09:51:11','2023-10-19 09:51:11'),(20,'FT 2023/20',18,'Zeferina Campos',NULL,NULL,'2023-11-08 00:00:00','2023-11-08 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-11-08 09:47:09','2023-11-08 09:47:09'),(21,'FT 2023/21',21,'Extrem Event LDA','5484003130',NULL,'2023-11-14 00:00:00','2023-11-14 00:00:00',2,1,2,'Olgemar Soares',NULL,10000.00,0.00,0.00,0.00,10000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-11-14 14:57:32','2023-11-20 19:47:12'),(22,'FT 2023/22',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-11-30 00:00:00','2023-11-30 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-11-30 16:25:02','2023-11-30 16:25:02'),(23,'FT 2023/23',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-11-30 00:00:00','2023-11-30 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-11-30 16:27:56','2023-11-30 16:27:56'),(24,'FT 2023/24',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-08 00:00:00','2023-12-08 00:00:00',2,1,2,'Olgemar Soares',NULL,120176.00,0.00,0.00,0.00,120176.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,34,'PP 2023/33',1,1,'2023-12-08 08:59:58','2023-12-08 09:01:23'),(25,'FT 2023/25',22,'Lizandra',NULL,NULL,'2023-12-15 00:00:00','2023-12-15 00:00:00',1,1,1,'Administrador',NULL,55000.00,0.00,0.00,0.00,55000.00,55000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2023-12-15 07:26:08','2023-12-15 07:26:08'),(26,'FT 2023/26',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-21 00:00:00','2023-12-21 00:00:00',1,1,2,'Olgemar Soares','OBS: Pagamento em numerário',40000.00,0.00,0.00,0.00,40000.00,40000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,43,'PP 2023/43',1,1,'2023-12-21 12:55:25','2023-12-21 12:55:25'),(27,'FT 2023/27',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-21 00:00:00','2023-12-21 00:00:00',1,1,2,'Olgemar Soares','OBS: Pagamento em numerário',64750.00,0.00,0.00,0.00,64750.00,64750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,42,'PP 2023/42',1,1,'2023-12-21 13:08:41','2023-12-21 13:08:41'),(28,'FT 2023/28',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-21 00:00:00','2023-12-21 00:00:00',1,1,2,'Olgemar Soares','OBS: Pagamento efetuado em numerário',280000.00,0.00,0.00,0.00,280000.00,280000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,41,'PP 2023/41',1,1,'2023-12-21 13:18:37','2023-12-21 13:18:37'),(29,'FT 2023/29',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001390414',NULL,'2024-01-03 00:00:00','2024-01-03 00:00:00',1,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,44,'PP 2023/44',1,1,'2024-01-03 16:37:22','2024-01-03 16:37:22'),(30,'FT 2023/30',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-01-08 00:00:00','2024-01-08 00:00:00',1,1,1,'Administrador','Referente ao mês de Dezembro 2023',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-01-08 17:58:02','2024-01-08 17:58:02'),(31,'FT 2023/31',18,'Zeferina Campos',NULL,NULL,'2024-01-10 00:00:00','2024-01-10 00:00:00',1,1,2,'Olgemar Soares','Referente ao mês de Dezembro',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-01-10 11:49:56','2024-01-10 11:49:56'),(32,'FT 2023/32',25,'SOULEYMANE DOUKOURE - COMERCIO E SERVIÇOS, (SU),LDA','5001760815','Hoji Yha Henda','2024-02-07 00:00:00','2024-02-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Janeiro 2024',24000.00,0.00,0.00,0.00,24000.00,24000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-02-07 13:53:52','2024-02-07 13:53:52'),(33,'FT 2023/33',26,'Emanuel Soares Comercio Geral, (SU), LDA','5000944629','Cazenga Loja 54','2024-02-09 00:00:00','2024-02-09 00:00:00',2,1,2,'Olgemar Soares','Referente mès de janeiro 2024',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-02-09 14:28:17','2024-02-09 14:28:17'),(34,'FT 2023/34',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-02-13 00:00:00','2024-02-13 00:00:00',1,1,2,'Olgemar Soares','Pagamento em numerário',150000.00,0.00,0.00,0.00,150000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,54,'PP 2023/54',1,1,'2024-02-13 15:53:05','2024-02-13 15:53:32'),(35,'FT 2023/35',18,'Zeferina Campos',NULL,NULL,'2024-02-13 00:00:00','2024-02-13 00:00:00',2,1,2,'Olgemar Soares','Referente ao mes de janeiro',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-02-13 15:57:31','2024-02-13 15:57:31'),(36,'FT 2023/36',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-02-23 00:00:00','2024-02-23 00:00:00',2,1,2,'Olgemar Soares',NULL,256000.00,0.00,0.00,0.00,256000.00,256000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-02-23 08:59:04','2024-02-23 08:59:04'),(37,'FT 2023/37',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,1,'Administrador',NULL,62500.00,0.00,0.00,0.00,62500.00,500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,53,'PP 2023/53',1,1,'2024-03-06 17:15:11','2024-03-06 17:16:52'),(38,'FT 2023/38',26,'Emanuel Soares Comercio Geral, (SU), LDA','5000944629','Cazenga Loja 54','2024-03-07 00:00:00','2024-03-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Fevereiro',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-07 10:40:22','2024-03-07 10:40:22'),(39,'FT 2023/39',25,'SOULEYMANE DOUKOURE - COMERCIO E SERVIÇOS, (SU),LDA','5001760815','Hoji Yha Henda','2024-03-07 00:00:00','2024-03-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Faveiro',24000.00,0.00,0.00,0.00,24000.00,24000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-07 10:42:52','2024-03-07 10:42:52'),(40,'FT 2023/40',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-03-11 00:00:00','2024-03-11 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-11 11:31:55','2024-03-11 11:31:55'),(41,'FT 2023/41',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-03-11 00:00:00','2024-03-11 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-11 11:50:29','2024-03-11 11:50:29'),(42,'FT 2023/42',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-03-22 00:00:00','2024-03-22 00:00:00',1,1,2,'Olgemar Soares',NULL,35000.00,0.00,0.00,0.00,35000.00,35000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-22 14:11:36','2024-03-22 14:11:36'),(43,'FT 2023/43',18,'Zeferina Campos',NULL,NULL,'2024-03-22 00:00:00','2024-03-22 00:00:00',1,1,2,'Olgemar Soares','Referente ao mês de Fevereiro',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-22 14:12:29','2024-03-22 14:12:29'),(44,'FT 2023/44',18,'Zeferina Campos',NULL,NULL,'2024-04-03 00:00:00','2024-04-03 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Março  de 2024',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-03 14:41:49','2024-04-03 14:41:49'),(45,'FT 2023/45',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2024-04-08 00:00:00','2024-04-08 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Março. 2024',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-08 14:45:28','2024-04-08 14:45:28'),(46,'FT 2023/46',26,'Emanuel Soares Comercio Geral, (SU), LDA','5000944629','Cazenga Loja 54','2024-04-08 00:00:00','2024-04-08 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Março 2024',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-08 14:46:10','2024-04-08 14:46:10'),(47,'FT 2023/47',28,'MAMADOU COULIBALY','0000089949','Hoji Yha Henda /Cazenga','2024-04-10 00:00:00','2024-04-10 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de fevereiro e março',38000.00,0.00,0.00,0.00,38000.00,37924.04,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-10 14:51:35','2024-04-13 08:56:53'),(48,'FT 2023/48',29,'ZEEPACK ANGOLA LDA','5417167622','Polo Industrial de Viana','2024-04-11 00:00:00','2024-04-11 00:00:00',1,1,2,'Olgemar Soares',NULL,847800.00,0.00,0.00,0.00,847800.00,847800.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-11 08:45:38','2024-04-11 08:45:38'),(49,'FT 2023/49',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-04-12 00:00:00','2024-04-12 00:00:00',1,1,2,'Olgemar Soares',NULL,23000.00,0.00,0.00,0.00,23000.00,23000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,65,'PP 2023/65',1,1,'2024-04-12 10:03:43','2024-04-12 10:03:43'),(50,'FT 2023/50',30,'Sambou Toure Comércio Geral e Prestação de Serviços (SU), LDA','5001867059','Cazenga Rua Porto Moniz','2024-04-12 00:00:00','2024-04-12 00:00:00',2,1,2,'Olgemar Soares',NULL,35000.00,0.00,0.00,0.00,35000.00,35000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-12 11:02:48','2024-04-12 11:02:48'),(51,'FT 2023/50',30,'Sambou Toure Comércio Geral e Prestação de Serviços (SU), LDA','5001867059','Cazenga Rua Porto Moniz','2024-04-12 00:00:00','2024-04-12 00:00:00',2,1,2,'Olgemar Soares',NULL,35000.00,0.00,0.00,0.00,35000.00,35000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-12 11:02:49','2024-04-12 11:02:49'),(52,'FT 2023/52',30,'Sambou Toure Comércio Geral e Prestação de Serviços (SU), LDA','5001867059','Cazenga Rua Porto Moniz','2024-04-20 00:00:00','2024-04-20 00:00:00',2,1,2,'Olgemar Soares','Fatura Referente os serviços prestados a vossa empresa',36000.00,0.00,0.00,0.00,36000.00,36000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(53,'FT 2023/53',30,'Sambou Toure Comércio Geral e Prestação de Serviços (SU), LDA','5001867059','Cazenga Rua Porto Moniz','2024-05-07 00:00:00','2024-05-07 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-05-07 12:05:17','2024-05-07 12:05:17'),(54,'FT 2023/54',32,'MAMADOU COULIBALY','0000089949','Cazenga','2024-05-08 00:00:00','2024-05-08 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Abril',19000.00,0.00,0.00,0.00,19000.00,19000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-05-08 10:51:33','2024-05-08 10:51:33'),(55,'FT 2023/55',31,'AMA SARA DJALO - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,'RUA S/NOME, CASA Nº S/Nº - JUNTO A ESQUADRA DA POLICIA NACIONAL.','2024-05-08 00:00:00','2024-05-08 00:00:00',2,1,2,'Olgemar Soares','Referente',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-05-08 11:33:45','2024-05-08 11:33:45'),(56,'FT 2023/56',26,'Emanuel Soares Comercio Geral, (SU), LDA','5000944629','Cazenga Loja 54','2024-05-14 00:00:00','2024-05-14 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-05-14 12:51:09','2024-05-14 12:51:09'),(57,'FT 2023/57',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-05-15 00:00:00','2024-05-15 00:00:00',1,1,2,'Olgemar Soares','Referente aõ mês de abril 2024',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-05-15 17:19:52','2024-05-15 17:19:52'),(58,'FT 2023/58',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-06-07 00:00:00','2024-06-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Maio 2024',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-06-07 07:44:38','2024-06-07 07:44:38'),(59,'FT 2023/59',25,'SOULEYMANE DOUKOURE - COMERCIO E SERVIÇOS, (SU),LDA','5001760815','Hoji Yha Henda','2024-06-07 00:00:00','2024-06-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de maio de 2024',24000.00,0.00,0.00,0.00,24000.00,24000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-06-07 07:52:14','2024-06-07 07:52:14'),(60,'FT 2023/60',28,'MAMADOU COULIBALY','0000089949','Hoji Yha Henda /Cazenga','2024-06-07 00:00:00','2024-06-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de maio de 2024',19000.00,0.00,0.00,0.00,19000.00,19000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-06-07 07:55:02','2024-06-07 07:55:02'),(61,'FT 2023/61',31,'AMA SARA DJALO - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,'RUA S/NOME, CASA Nº S/Nº - JUNTO A ESQUADRA DA POLICIA NACIONAL.','2024-06-07 00:00:00','2024-06-07 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de maio de 2024',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-06-07 08:05:50','2024-06-07 08:05:50'),(62,'FT 2023/62',20,'Restaurante e Bar o Killa',NULL,'99999','2024-06-10 00:00:00','2024-06-10 00:00:00',1,1,2,'Olgemar Soares',NULL,105000.00,0.00,0.00,0.00,105000.00,105000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-06-10 08:51:23','2024-06-10 08:51:23'),(63,'FT 2023/63',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-06-11 00:00:00','2024-06-11 00:00:00',2,1,2,'Olgemar Soares',NULL,364000.00,0.00,0.00,0.00,364000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,73,'PP 2023/73',0,1,'2024-06-11 09:39:05','2024-06-11 09:39:25'),(64,'FT 2023/64',34,'Rafael Manuel João',NULL,NULL,'2024-06-26 00:00:00','2024-06-26 00:00:00',1,1,2,'Olgemar Soares',NULL,115000.00,0.00,0.00,0.00,115000.00,115000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,75,'PP 2023/75',1,1,'2024-06-26 08:38:52','2024-06-26 08:38:52'),(65,'FT 2023/65',35,'AQUAMUNDIS LDA','5000229105','ESTRADA DO LAR DO PATRIOTA, S/Nº 1º ANDAR C, BENFICA, LUANDA','2024-07-04 00:00:00','2024-07-04 00:00:00',1,1,2,'Olgemar Soares',NULL,62000.00,0.00,0.00,0.00,62000.00,62000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,78,'PP 2023/78',1,1,'2024-07-04 09:27:17','2024-07-04 09:27:17'),(66,'FT 2023/66',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,980000.00,0.00,0.00,0.00,980000.00,980000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,84,'PP 2023/84',1,1,'2024-07-05 12:42:59','2024-07-05 12:42:59'),(67,'FT 2023/67',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,804000.00,0.00,0.00,0.00,804000.00,804000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,83,'PP 2023/83',1,1,'2024-07-05 12:43:22','2024-07-05 12:43:22'),(68,'FT 2023/68',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,805000.00,0.00,0.00,0.00,805000.00,805000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,82,'PP 2023/82',1,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(69,'FT 2023/69',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,997500.00,0.00,0.00,0.00,997500.00,997500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,81,'PP 2023/81',1,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(70,'FT 2023/70',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,995000.00,0.00,0.00,0.00,995000.00,995000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,80,'PP 2023/80',1,1,'2024-07-05 12:44:25','2024-07-05 12:44:25'),(71,'FT 2023/71',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,457500.00,0.00,0.00,0.00,457500.00,457500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,79,'PP 2023/79',1,1,'2024-07-05 12:44:47','2024-07-05 12:44:47'),(72,'FT 2023/72',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-07-11 00:00:00','2024-07-11 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Junho 2024',115000.00,0.00,0.00,0.00,115000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-07-11 08:42:06','2024-09-12 14:26:05'),(73,'FT 2023/73',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-07-11 00:00:00','2024-07-11 00:00:00',1,1,2,'Olgemar Soares','Referente ao mês de Junho 2024',120000.00,0.00,0.00,0.00,120000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-07-11 08:46:37','2024-09-12 14:33:31'),(74,'FT 2023/74',18,'Zeferina Campos',NULL,NULL,'2024-07-11 00:00:00','2024-07-11 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de junho',25000.00,0.00,0.00,0.00,25000.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-07-11 09:09:33','2024-07-11 09:09:33'),(75,'FT 2024/75',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-07-31 00:00:00','2024-07-31 00:00:00',2,1,2,'Olgemar Soares','Fatura referente ao mês de Julho 2024\n\nOBS: Deduzido o valor de 30.000,00 AOA Referente a apreensão da mesa misturado.',90000.00,0.00,0.00,0.00,90000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-07-31 17:07:56','2024-09-12 14:26:55'),(76,'FT 2024/76',26,'Emanuel Soares Comercio Geral, (SU), LDA','5000944629','Cazenga Loja 54','2024-08-12 00:00:00','2024-08-12 00:00:00',2,1,2,'Olgemar Soares','Referente, mês de maio.',30000.00,0.00,0.00,0.00,30000.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-08-12 07:38:57','2024-08-12 07:38:57'),(77,'FT 2024/77',38,'KAPALO ARTE - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001519670',NULL,'2024-09-03 00:00:00','2024-09-03 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Angosto',20000.00,0.00,0.00,0.00,20000.00,20000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-03 12:47:44','2024-09-03 12:47:44'),(78,'FT 2024/78',39,'Engenheiro. Adelino Pelasio Kaussassili','9999999','Viana dos Bombeiros','2024-09-04 00:00:00','2024-09-04 00:00:00',2,1,2,'Olgemar Soares',NULL,119000.00,0.00,0.00,0.00,119000.00,39000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-04 07:42:46','2024-10-16 07:22:24'),(79,'FT 2024/79',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-09-04 00:00:00','2024-09-04 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Agosto 2024',120000.00,0.00,0.00,0.00,120000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-04 09:01:44','2024-10-16 07:20:43'),(80,'FT 2024/80',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-10-03 00:00:00','2024-10-03 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Setembro 2024',120000.00,0.00,0.00,0.00,120000.00,0.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-03 07:48:11','2024-10-09 18:03:47'),(81,'FT 2024/81',27,'Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769','Tala Tona Condomínio Horizonte Sul, Casa B14','2024-10-15 00:00:00','2024-10-15 00:00:00',2,1,2,'Olgemar Soares',NULL,677700.00,0.00,0.00,0.00,677700.00,677700.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,86,'PP 2024/86',1,1,'2024-10-15 11:46:41','2024-10-15 11:46:41'),(82,'FT 2024/82',41,'SETIC- SERVIÇOS DE TECNOLOGIA E INFORMAÇÃO E COMUNICAÇÃO DAS FINANÇAS PUBLICAS',NULL,NULL,'2024-10-17 00:00:00','2024-10-17 00:00:00',1,1,1,'Administrador',NULL,512000.00,0.00,71680.00,0.00,583680.00,583680.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,87,'PP 2024/87',1,1,'2024-10-17 13:37:02','2024-10-17 13:37:02'),(83,'FT 2024/83',42,'DOUCOURE DOUMBE','0000148894','Maianga','2024-10-29 00:00:00','2024-10-29 00:00:00',2,1,2,'Olgemar Soares',NULL,500000.00,0.00,0.00,0.00,500000.00,500000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-29 11:36:23','2024-10-29 11:36:23'),(84,'FT 2024/84',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-11-03 00:00:00','2024-11-03 00:00:00',1,1,2,'Olgemar Soares',NULL,1200000.00,0.00,0.00,0.00,1200000.00,1200000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-03 14:12:23','2024-11-03 14:12:23'),(85,'FT 2024/85',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-11-03 00:00:00','2024-11-03 00:00:00',1,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-03 14:13:10','2024-11-03 14:13:10'),(86,'FT 2024/85',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-11-03 00:00:00','2024-11-03 00:00:00',1,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-03 14:13:11','2024-11-03 14:13:11'),(87,'FT 2024/87',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-12-03 00:00:00','2024-12-03 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Novembro de 2024',120000.00,0.00,0.00,0.00,120000.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-12-03 11:24:18','2024-12-03 11:24:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formas_pagamentos`
--

LOCK TABLES `formas_pagamentos` WRITE;
/*!40000 ALTER TABLE `formas_pagamentos` DISABLE KEYS */;
INSERT INTO `formas_pagamentos` VALUES (1,'0001','Dinheiro','I do hope it\'ll.',1,NULL,NULL),(2,'0002','Transferência','Alice said to.',1,NULL,NULL),(3,'0003',NULL,NULL,1,'2023-06-16 12:19:06','2023-06-16 12:19:06');
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
  `id_endereco` bigint(20) unsigned DEFAULT NULL,
  `id_contacto` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedors_id_endereco_foreign` (`id_endereco`),
  KEY `fornecedors_id_contacto_foreign` (`id_contacto`),
  CONSTRAINT `fornecedors_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fornecedors_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedors`
--

LOCK TABLES `fornecedors` WRITE;
/*!40000 ALTER TABLE `fornecedors` DISABLE KEYS */;
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guia_remessas_cliente_id_foreign` (`cliente_id`),
  KEY `guia_remessas_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `guia_remessas_moeda_id_foreign` (`moeda_id`),
  KEY `guia_remessas_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `guia_remessas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_remessas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `guia_transportes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `guia_transportes_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` decimal(30,2) DEFAULT NULL,
  `subtotal` decimal(30,2) DEFAULT NULL,
  `retencao_designacao` varchar(191) DEFAULT NULL,
  `retencao_taxa` decimal(30,2) DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` decimal(30,2) DEFAULT NULL,
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
  CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_factura_recibos`
--

LOCK TABLES `item_factura_recibos` WRITE;
/*!40000 ALTER TABLE `item_factura_recibos` DISABLE KEYS */;
INSERT INTO `item_factura_recibos` VALUES (1,'Cartões de Visitas',220.00,300,0.00,66000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',1,7,4,1,'2023-06-19 10:23:33','2023-06-19 10:23:33'),(2,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',2,6,4,1,'2023-07-05 08:34:24','2023-07-05 08:34:24'),(3,'Cartões de Visitas (100)',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,19,4,1,'2023-07-13 10:43:40','2023-07-13 10:43:40'),(4,'Criação de Lona',10000.00,2,0.00,20000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,16,4,1,'2023-07-13 10:43:40','2023-07-13 10:43:40'),(5,'Criação de Vinil Print',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,18,4,1,'2023-07-13 10:43:40','2023-07-13 10:43:40'),(6,'Serviço de Pintura na sala',25000.00,2,0.00,50000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,21,4,1,'2023-08-01 18:18:07','2023-08-01 18:18:07'),(7,'Fornecimento e montagem de fechaduras',30000.00,3,0.00,90000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,22,4,1,'2023-08-01 18:18:07','2023-08-01 18:18:07'),(8,'Montagem de quadro',3000.00,1,0.00,3000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,24,4,1,'2023-08-01 18:18:07','2023-08-01 18:18:07'),(9,'Serviço de reparação e construção civil',22000.00,1,0.00,22000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,23,4,1,'2023-08-01 18:18:07','2023-08-01 18:18:07'),(10,'Bandeiras Personalizadas',37000.00,5,0.00,185000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',5,27,4,1,'2023-08-03 08:58:01','2023-08-03 08:58:01'),(11,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',6,6,4,1,'2023-08-10 13:34:41','2023-08-10 13:34:41'),(12,'Impressão de Folhas A4',125.00,1000,0.00,125000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',7,36,4,1,'2023-09-06 10:04:45','2023-09-06 10:04:45'),(13,'Serviços de Dj (09/10) 2023',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,49,4,1,'2023-11-13 14:46:43','2023-11-13 14:46:43'),(14,'T-Shert Personalizada Keya Preta',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',9,43,4,1,'2023-11-16 12:34:40','2023-11-16 12:34:40'),(15,'T-Shert Personalizada Keya Laranja',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',9,48,4,1,'2023-11-16 12:34:40','2023-11-16 12:34:40'),(16,'Criação',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,56,4,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(17,'Aplicação de Vinil',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,57,4,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(18,'Impressão de Vinil 197 x 222',26240.00,1,0.00,26240.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,55,4,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(19,'Impressão de Vinil 184 x 145',16008.00,2,0.00,32016.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,54,4,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(20,'Impressão de Vinil 182 x 62',10920.00,1,0.00,10920.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,53,4,1,'2023-12-21 13:14:43','2023-12-21 13:14:43'),(21,'Lona 700 cm X 400 cm',168000.00,1,0.00,168000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',11,83,4,1,'2024-02-26 10:10:03','2024-02-26 10:10:03'),(22,'Camisa Safary',5695.00,30,0.00,170850.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,135,4,1,'2024-07-10 08:35:24','2024-07-10 08:35:24'),(23,'Chinela Desportiva',2600.00,50,0.00,130000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,134,4,1,'2024-07-10 08:35:25','2024-07-10 08:35:25'),(24,'Bubu',6700.00,30,0.00,201000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,133,4,1,'2024-07-10 08:35:25','2024-07-10 08:35:25'),(25,'T-shirt desportiva',2010.00,100,0.00,201000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,132,4,1,'2024-07-10 08:35:25','2024-07-10 08:35:25'),(26,'Chinela Havaianas',1675.00,100,0.00,167500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,131,4,1,'2024-07-10 08:35:25','2024-07-10 08:35:25'),(27,'Camisa Safary',5695.00,40,0.00,227800.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,135,4,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(28,'Chinela Desportiva',2600.00,50,0.00,130000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,134,4,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(29,'Bubu',6700.00,50,0.00,335000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,133,4,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(30,'T-shirt desportiva',2010.00,50,0.00,100500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,132,4,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(31,'Chinela Havaianas',1675.00,50,0.00,83750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,131,4,1,'2024-07-10 08:37:13','2024-07-10 08:37:13'),(32,'Chinela Havaianas',1675.00,10,0.00,16750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,131,4,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(33,'T-shirt desportiva',2010.00,10,0.00,20100.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,132,4,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(34,'Bubu',6700.00,30,0.00,201000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,133,4,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(35,'Chinela Desportiva',2600.00,40,0.00,104000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,134,4,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(36,'Camisa Safary',5695.00,100,0.00,569500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,135,4,1,'2024-07-10 08:39:00','2024-07-10 08:39:00'),(37,'Chinela Desportiva',2600.00,100,0.00,260000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',15,134,4,1,'2024-07-10 08:48:31','2024-07-10 08:48:31'),(38,'Bubu',6700.00,40,0.00,268000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',15,133,4,1,'2024-07-10 08:48:31','2024-07-10 08:48:31'),(39,'T-shirt desportiva',2010.00,100,0.00,201000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',15,132,4,1,'2024-07-10 08:48:32','2024-07-10 08:48:32'),(40,'Chinela Havaianas',1675.00,100,0.00,167500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',15,131,4,1,'2024-07-10 08:48:32','2024-07-10 08:48:32'),(41,'Chinela Havaianas',1675.00,50,0.00,83750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',16,131,4,1,'2024-07-10 08:50:17','2024-07-10 08:50:17'),(42,'T-shirt desportiva',2010.00,50,0.00,100500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',16,132,4,1,'2024-07-10 08:50:17','2024-07-10 08:50:17'),(43,'Chinela Desportiva',2600.00,50,0.00,130000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',16,134,4,1,'2024-07-10 08:50:17','2024-07-10 08:50:17'),(44,'Camisa Safary',5695.00,100,0.00,569500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',16,135,4,1,'2024-07-10 08:50:17','2024-07-10 08:50:17'),(45,'Chinela Havaianas',1675.00,10,0.00,16750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',17,131,4,1,'2024-07-10 08:51:58','2024-07-10 08:51:58'),(46,'T-shirt desportiva',2010.00,150,0.00,301500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',17,132,4,1,'2024-07-10 08:51:58','2024-07-10 08:51:58'),(47,'Chinela Desportiva',2600.00,100,0.00,260000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',17,134,4,1,'2024-07-10 08:51:58','2024-07-10 08:51:58'),(48,'Bubu',6700.00,30,0.00,201000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',17,133,4,1,'2024-07-10 08:51:58','2024-07-10 08:51:58'),(49,'Gravata',5500.00,50,0.00,275000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,150,4,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(50,'Sapato',29500.00,66,0.00,1947000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,149,4,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(51,'Fato Completo 02',54000.00,30,0.00,1620000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,148,4,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(52,'Fato Safary',50000.00,20,0.00,1000000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,147,4,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(53,'Fato de Noivo',65000.00,20,0.00,1300000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,146,4,1,'2024-07-16 11:34:20','2024-07-16 11:34:20'),(54,'Fato Safary',50000.00,50,0.00,2500000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,147,4,1,'2024-07-16 11:37:27','2024-07-16 11:37:27'),(55,'Fato Completo 02',54000.00,60,0.00,3240000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,148,4,1,'2024-07-16 11:37:27','2024-07-16 11:37:27'),(56,'Camisa',4500.00,15,0.00,67500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,153,4,1,'2024-07-16 11:37:28','2024-07-16 11:37:28'),(57,'Cinto',6500.00,28,0.00,182000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,154,4,1,'2024-07-16 11:37:28','2024-07-16 11:37:28'),(58,'Fato Completo 01',58000.00,40,0.00,2320000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,155,4,1,'2024-07-16 11:37:28','2024-07-16 11:37:28'),(59,'Corrente',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,157,4,1,'2024-07-16 11:37:28','2024-07-16 11:37:28'),(60,'Fato Completo 02',54000.00,13,0.00,702000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',20,148,4,1,'2024-07-16 11:41:54','2024-07-16 11:41:54'),(61,'Fato Safary',50000.00,3,0.00,150000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',20,147,4,1,'2024-07-16 11:41:54','2024-07-16 11:41:54'),(62,'Fato de Noivo',65000.00,5,0.00,325000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',20,146,4,1,'2024-07-16 11:41:54','2024-07-16 11:41:54'),(63,'Flores',3000.00,30,0.00,90000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',21,152,4,1,'2024-07-16 11:43:31','2024-07-16 11:43:31'),(64,'Laços',5500.00,20,0.00,110000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',21,151,4,1,'2024-07-16 11:43:31','2024-07-16 11:43:31'),(65,'Gravata',5500.00,20,0.00,110000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',21,150,4,1,'2024-07-16 11:43:31','2024-07-16 11:43:31'),(66,'Sapato',29500.00,10,0.00,295000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',21,149,4,1,'2024-07-16 11:43:31','2024-07-16 11:43:31'),(67,'Corrente',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',22,157,4,1,'2024-07-16 11:44:24','2024-07-16 11:44:24'),(68,'Fato Completo 01',58000.00,10,0.00,580000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',22,155,4,1,'2024-07-16 11:44:24','2024-07-16 11:44:24'),(69,'Cinto',6500.00,25,0.00,162500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',22,154,4,1,'2024-07-16 11:44:24','2024-07-16 11:44:24'),(70,'Camisa',4500.00,25,0.00,112500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',22,153,4,1,'2024-07-16 11:44:24','2024-07-16 11:44:24'),(71,'Fato Completo 02',54000.00,3,0.00,162000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,148,4,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(72,'Fato Safary',50000.00,3,0.00,150000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,147,4,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(73,'Fato de Noivo',65000.00,3,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,146,4,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(74,'Tshirts',6500.00,50,0.00,325000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,159,4,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(75,'Pastas',5000.00,25,0.00,125000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,158,4,1,'2024-07-16 11:47:20','2024-07-16 11:47:20'),(76,'Fato de Noivo',65000.00,3,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,146,4,1,'2024-07-16 11:48:57','2024-07-16 11:48:57'),(77,'Gravata',5500.00,15,0.00,82500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,150,4,1,'2024-07-16 11:48:57','2024-07-16 11:48:57'),(78,'Sapato',29500.00,10,0.00,295000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,149,4,1,'2024-07-16 11:48:57','2024-07-16 11:48:57'),(79,'Camisa',4500.00,10,0.00,45000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,153,4,1,'2024-07-16 11:48:57','2024-07-16 11:48:57'),(80,'Corrente',2500.00,10,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,157,4,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(81,'Camisa',4500.00,10,0.00,45000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,153,4,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(82,'Flores',3000.00,10,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,152,4,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(83,'Laços',5500.00,10,0.00,55000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,151,4,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(84,'Fato Completo 01',58000.00,10,0.00,580000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,155,4,1,'2024-07-16 11:49:58','2024-07-16 11:49:58'),(85,'Calça jeans 02',5400.00,55,0.00,297000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',26,162,4,1,'2024-07-19 09:38:08','2024-07-19 09:38:08'),(86,'Calça jeans 01',4900.00,80,0.00,392000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',26,161,4,1,'2024-07-19 09:38:08','2024-07-19 09:38:08'),(87,'Chinela',3500.00,80,0.00,280000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',26,160,4,1,'2024-07-19 09:38:08','2024-07-19 09:38:08'),(88,'Chinela',3500.00,10,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,160,4,1,'2024-07-19 09:40:23','2024-07-19 09:40:23'),(89,'Lacoste 01',3600.00,30,0.00,108000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,165,4,1,'2024-07-19 09:40:23','2024-07-19 09:40:23'),(90,'Manjuco 02',6500.00,50,0.00,325000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,164,4,1,'2024-07-19 09:40:23','2024-07-19 09:40:23'),(91,'Manjuco 01',4050.00,80,0.00,324000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,163,4,1,'2024-07-19 09:40:23','2024-07-19 09:40:23'),(92,'Calção jeans',4000.00,20,0.00,80000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,169,4,1,'2024-07-19 09:43:02','2024-07-19 09:43:02'),(93,'Tshirt',3650.00,100,0.00,365000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,168,4,1,'2024-07-19 09:43:02','2024-07-19 09:43:02'),(94,'Lacoste 03',2600.00,150,0.00,390000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,167,4,1,'2024-07-19 09:43:02','2024-07-19 09:43:02'),(95,'Casaco de napa',6800.00,50,0.00,340000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',29,172,4,1,'2024-07-19 09:44:15','2024-07-19 09:44:15'),(96,'Calção de praia',1350.00,150,0.00,202500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',29,171,4,1,'2024-07-19 09:44:15','2024-07-19 09:44:15'),(97,'Calção com rosto',2300.00,100,0.00,230000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',29,170,4,1,'2024-07-19 09:44:15','2024-07-19 09:44:15'),(98,'Calção jeans',4000.00,10,0.00,40000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',29,169,4,1,'2024-07-19 09:44:15','2024-07-19 09:44:15'),(99,'Calça jeans 02',5400.00,50,0.00,270000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',30,162,4,1,'2024-07-19 09:45:56','2024-07-19 09:45:56'),(100,'Calça jeans 01',4900.00,50,0.00,245000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',30,161,4,1,'2024-07-19 09:45:57','2024-07-19 09:45:57'),(101,'Chinela',3500.00,100,0.00,350000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',30,160,4,1,'2024-07-19 09:45:57','2024-07-19 09:45:57'),(102,'Tshirt',3650.00,50,0.00,182500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',31,168,4,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(103,'Lacoste 02',4100.00,100,0.00,410000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',31,166,4,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(104,'Lacoste 01',3600.00,100,0.00,360000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',31,165,4,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(105,'Tshirt',3650.00,50,0.00,182500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',32,168,4,1,'2024-07-19 09:48:04','2024-07-19 09:48:04'),(106,'Lacoste 02',4100.00,100,0.00,410000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',32,166,4,1,'2024-07-19 09:48:05','2024-07-19 09:48:05'),(107,'Tshirt',3650.00,50,0.00,182500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',33,168,4,1,'2024-07-19 09:48:05','2024-07-19 09:48:05'),(108,'Lacoste 02',4100.00,100,0.00,410000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',33,166,4,1,'2024-07-19 09:48:05','2024-07-19 09:48:05'),(109,'Lacoste 01',3600.00,100,0.00,360000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',32,165,4,1,'2024-07-19 09:48:05','2024-07-19 09:48:05'),(110,'Lacoste 01',3600.00,100,0.00,360000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',33,165,4,1,'2024-07-19 09:48:05','2024-07-19 09:48:05'),(111,'Porta_Guardanapos_Acrílico AO',1350.00,332,0.00,448200.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',34,182,4,1,'2024-10-15 11:47:47','2024-10-15 11:47:47'),(112,'Porta_Guardanapos_Acrílico PWC',1350.00,170,0.00,229500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',34,181,4,1,'2024-10-15 11:47:47','2024-10-15 11:47:47'),(113,'Porta_Guardanapos_Acrílico AO',1350.00,332,0.00,448200.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',35,182,4,1,'2024-10-15 11:47:47','2024-10-15 11:47:47'),(114,'Porta_Guardanapos_Acrílico PWC',1350.00,170,0.00,229500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',35,181,4,1,'2024-10-15 11:47:47','2024-10-15 11:47:47'),(115,'Chinela da Adidas',3250.00,40,0.00,130000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',36,193,4,1,'2024-11-18 12:58:05','2024-11-18 12:58:05'),(116,'Chinela desportista sola seca',3900.00,55,0.00,214500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',36,192,4,1,'2024-11-18 12:58:06','2024-11-18 12:58:06'),(117,'Chinela da Adidas',3250.00,57,0.00,185250.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',37,193,4,1,'2024-11-18 12:58:49','2024-11-18 12:58:49'),(118,'Chinela desportista sola seca',3900.00,40,0.00,156000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',37,192,4,1,'2024-11-18 12:58:49','2024-11-18 12:58:49'),(119,'Chinela da Adidas',3250.00,30,0.00,97500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',38,193,4,1,'2024-11-18 13:02:00','2024-11-18 13:02:00'),(120,'Chinela desportista sola seca',3900.00,60,0.00,234000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',38,192,4,1,'2024-11-18 13:02:00','2024-11-18 13:02:00'),(121,'Chinela da Adidas',3250.00,55,0.00,178750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',39,193,4,1,'2024-11-18 13:02:33','2024-11-18 13:02:33'),(122,'Chinela desportista sola seca',3900.00,40,0.00,156000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',39,192,4,1,'2024-11-18 13:02:33','2024-11-18 13:02:33'),(123,'Chinela da Adidas',3250.00,60,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',40,193,4,1,'2024-11-18 13:04:29','2024-11-18 13:04:29'),(124,'Chinela desportista sola seca',3900.00,40,0.00,156000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',40,192,4,1,'2024-11-18 13:04:29','2024-11-18 13:04:29'),(125,'Chinela desportista sola seca',3900.00,50,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',41,192,4,1,'2024-11-18 13:05:24','2024-11-18 13:05:24'),(126,'Chinela da Adidas',3250.00,60,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',41,193,4,1,'2024-11-18 13:05:24','2024-11-18 13:05:24'),(127,'Chinela da Adidas',3250.00,50,0.00,162500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',42,193,4,1,'2024-11-19 08:03:48','2024-11-19 08:03:48'),(128,'Chinela desportista sola seca',3900.00,50,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',42,192,4,1,'2024-11-19 08:03:48','2024-11-19 08:03:48'),(129,'Chinela desportista sola seca',3900.00,66,0.00,257400.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',43,192,4,1,'2024-11-19 08:05:20','2024-11-19 08:05:20'),(130,'Chinela da Adidas',3250.00,42,0.00,136500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',43,193,4,1,'2024-11-19 08:05:20','2024-11-19 08:05:20'),(131,'Chinela da Adidas',3250.00,30,0.00,97500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',44,193,4,1,'2024-11-19 08:05:51','2024-11-19 08:05:51'),(132,'Chinela desportista sola seca',3900.00,60,0.00,234000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',44,192,4,1,'2024-11-19 08:05:51','2024-11-19 08:05:51'),(133,'Chinela da Adidas',3250.00,45,0.00,146250.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',45,193,4,1,'2024-11-19 08:06:32','2024-11-19 08:06:32'),(134,'Chinela desportista sola seca',3900.00,45,0.00,175500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',45,192,4,1,'2024-11-19 08:06:32','2024-11-19 08:06:32'),(135,'Chinela da Adidas',3250.00,50,0.00,162500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',46,193,4,1,'2024-11-19 08:07:02','2024-11-19 08:07:02'),(136,'Chinela desportista sola seca',3900.00,50,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',46,192,4,1,'2024-11-19 08:07:02','2024-11-19 08:07:02'),(137,'Chinela da Adidas',3250.00,60,0.00,195000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',47,193,4,1,'2024-11-19 08:07:56','2024-11-19 08:07:56'),(138,'Chinela desportista sola seca',3900.00,60,0.00,234000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',47,192,4,1,'2024-11-19 08:07:56','2024-11-19 08:07:56'),(139,'Chinela da Adidas',3900.00,30,0.00,117000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',48,193,4,1,'2024-11-19 08:39:21','2024-11-19 08:39:21'),(140,'Chinela desportista sola seca',4500.00,70,0.00,315000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',48,192,4,1,'2024-11-19 08:39:21','2024-11-19 08:39:21'),(141,'Chinela da Adidas',3900.00,70,0.00,273000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',49,193,4,1,'2024-11-19 08:39:51','2024-11-19 08:39:51'),(142,'Chinela desportista sola seca',4500.00,80,0.00,360000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',49,192,4,1,'2024-11-19 08:39:52','2024-11-19 08:39:52'),(143,'Chinela desportista sola seca',4500.00,70,0.00,315000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',50,192,4,1,'2024-11-19 08:40:45','2024-11-19 08:40:45'),(144,'Chinela da Adidas',3900.00,80,0.00,312000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',50,193,4,1,'2024-11-19 08:40:45','2024-11-19 08:40:45');
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `item_guia_remessas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_guia_remessas_guia_remessa_id_foreign` FOREIGN KEY (`guia_remessa_id`) REFERENCES `guia_remessas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_guia_remessas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `item_guia_transportes_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_guia_transportes_guia_transporte_id_foreign` FOREIGN KEY (`guia_transporte_id`) REFERENCES `guia_transportes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_guia_transportes_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `item_nota_creditos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_nota_creditos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `item_nota_debitos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_nota_debitos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
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
  `preco` double(8,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `subtotal` double(8,2) DEFAULT NULL,
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
  CONSTRAINT `item_proformas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_proformas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_proformas_proforma_id_foreign` FOREIGN KEY (`proforma_id`) REFERENCES `proformas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_proformas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proformas`
--

LOCK TABLES `item_proformas` WRITE;
/*!40000 ALTER TABLE `item_proformas` DISABLE KEYS */;
INSERT INTO `item_proformas` VALUES (1,'Aplicação de Material',13000.00,1,0.00,13000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,3,4,1,'2023-06-15 15:30:14','2023-06-15 15:30:14'),(2,'Lona 4.60 Cm x 62 Cm',22660.00,1,0.00,22660.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,2,4,1,'2023-06-15 15:30:14','2023-06-15 15:30:14'),(3,'Lona 2.03 Cm x 62 Cm',18925.00,2,0.00,37850.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,1,4,1,'2023-06-15 15:30:14','2023-06-15 15:30:14'),(4,'Aplicação de Material',13000.00,1,0.00,13000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',2,3,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(5,'Lona 4.60 Cm x 62 Cm',22660.00,1,0.00,22660.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',2,2,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(6,'Lona 2.03 Cm x 62 Cm',18925.00,2,0.00,37850.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',2,1,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(7,'Aplicação de Material',13000.00,1,0.00,13000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',3,3,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(8,'Lona 4.60 Cm x 62 Cm',22660.00,1,0.00,22660.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',3,2,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(9,'Lona 2.03 Cm x 62 Cm',18925.00,2,0.00,37850.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',3,1,4,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(10,'Aplicação de Material',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,3,4,1,'2023-06-15 16:37:56','2023-06-15 16:37:56'),(11,'Vinil',7752.00,1,0.00,7752.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,4,4,1,'2023-06-15 16:37:56','2023-06-15 16:37:56'),(12,'Lona 4.60 Cm x 62 Cm',19160.00,1,0.00,19160.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,2,4,1,'2023-06-15 16:37:56','2023-06-15 16:37:56'),(13,'Lona 2.03 Cm x 62 Cm',15425.00,2,0.00,30850.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,1,4,1,'2023-06-15 16:37:56','2023-06-15 16:37:56'),(14,'Criação',13000.00,1,0.00,13000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,5,4,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(15,'Vinil',7752.00,1,0.00,7752.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,4,4,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(16,'Aplicação de Material',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,3,4,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(17,'Lona 4.60 Cm x 62 Cm',19160.00,1,0.00,19160.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,2,4,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(18,'Lona 2.03 Cm x 62 Cm',15425.00,2,0.00,30850.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,1,4,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(19,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',6,6,4,1,'2023-06-16 12:23:15','2023-06-16 12:23:15'),(20,'Cartões de Visitas',250.00,500,0.00,125000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',7,7,4,1,'2023-06-16 12:24:00','2023-06-16 12:24:00'),(21,'Cartões de Visitas',220.00,500,0.00,110000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',8,7,4,1,'2023-06-16 12:38:31','2023-06-16 12:38:31'),(22,'Cartões de Visitas',220.00,500,0.00,110000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',9,7,4,1,'2023-06-16 12:39:57','2023-06-16 12:39:57'),(23,'Visor iPhone XS',38000.00,1,0.00,38000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',10,8,4,1,'2023-06-19 10:45:18','2023-06-19 10:45:18'),(24,'Serviços de Fecho de Exercício 2022',180000.00,1,0.00,180000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',11,9,4,1,'2023-06-19 12:56:44','2023-06-19 12:56:44'),(25,'Conserto de Impressora hp color laserjet mfp 179fnw',45000.00,1,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',12,12,4,1,'2023-07-11 08:41:02','2023-07-11 08:41:02'),(26,'Conserto de impressora hp laserjet pro 200 color m251nw',60000.00,1,0.00,60000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',12,11,4,1,'2023-07-11 08:41:02','2023-07-11 08:41:02'),(27,'Motor de reposicionamento de papel',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',12,13,4,1,'2023-07-11 08:41:02','2023-07-11 08:41:02'),(28,'Correia laserjet pro 200 color m251nw',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',13,15,4,1,'2023-07-11 11:18:34','2023-07-11 11:18:34'),(29,'Deposito de resíduos de Impressora hp color laserjet mfp 179fnw',18000.00,1,0.00,18000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',13,14,4,1,'2023-07-11 11:18:34','2023-07-11 11:18:34'),(30,'Motor de reposicionamento de papel',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',13,13,4,1,'2023-07-11 11:18:34','2023-07-11 11:18:34'),(31,'Conserto de Impressora hp color laserjet mfp 179fnw',41000.00,1,0.00,41000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',13,12,4,1,'2023-07-11 11:18:34','2023-07-11 11:18:34'),(32,'Conserto de impressora hp laserjet pro 200 color m251nw',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',13,11,4,1,'2023-07-11 11:18:34','2023-07-11 11:18:34'),(33,'H- Serviços de Contabilidade Fiscal (Julho)',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',14,25,4,1,'2023-08-02 09:02:38','2023-08-02 09:02:38'),(34,'S- Serviços de Contabilidade Fiscal (Julho)',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',15,26,4,1,'2023-08-02 10:21:18','2023-08-02 10:21:18'),(35,'SDSD',155.44,1,0.00,155.44,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',16,28,4,1,'2023-08-31 10:10:19','2023-08-31 10:10:19'),(36,'Taxa de deslocação',3000.00,1,0.00,3000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',17,40,4,1,'2023-10-03 07:17:52','2023-10-03 07:17:52'),(37,'Scream XDR Super Retina iPhone 13+',280000.00,1,0.00,280000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',17,39,4,1,'2023-10-03 07:17:52','2023-10-03 07:17:52'),(38,'Taxa de deslocação',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',18,40,4,1,'2023-10-03 08:26:03','2023-10-03 08:26:03'),(39,'Scream XDR Super Retina iPhone 13+',280000.00,1,0.00,280000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',18,39,4,1,'2023-10-03 08:26:03','2023-10-03 08:26:03'),(40,'S- Serviços de Contabilidade Fiscal (Setembro)',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',19,26,4,1,'2023-10-05 11:18:40','2023-10-05 11:18:40'),(41,'Tonner',125000.00,4,0.00,500000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',20,42,4,1,'2023-10-13 12:33:07','2023-10-13 12:33:07'),(42,'Tonner',125000.00,4,0.00,500000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',21,42,4,1,'2023-10-13 12:33:07','2023-10-13 12:33:07'),(43,'Tonner',125000.00,4,0.00,500000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',22,42,4,1,'2023-10-13 12:37:18','2023-10-13 12:37:18'),(44,'T-Shert Personalizada Keya',4400.00,40,0.00,176000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',23,43,4,1,'2023-10-16 11:28:56','2023-10-16 11:28:56'),(45,'T-Shert Personalizada Mukua',5300.00,40,0.00,212000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',24,44,4,1,'2023-10-16 11:29:24','2023-10-16 11:29:24'),(46,'T-Shert Personalizada Buk',4000.00,40,0.00,160000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',25,45,4,1,'2023-10-16 11:29:53','2023-10-16 11:29:53'),(47,'T-Shert Personalizada Mukua',5300.00,40,0.00,212000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',26,44,4,1,'2023-10-16 11:30:29','2023-10-16 11:30:29'),(48,'T-Shert Personalizada Keya',4400.00,40,0.00,176000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',26,43,4,1,'2023-10-16 11:30:29','2023-10-16 11:30:29'),(49,'T-Shert Personalizada Buk',4000.00,40,0.00,160000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',26,45,4,1,'2023-10-16 11:30:29','2023-10-16 11:30:29'),(50,'Tonner',125000.00,1,0.00,125000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',27,42,4,1,'2023-10-16 12:02:26','2023-10-16 12:02:26'),(51,'T-Shert Personalizada Buk',4000.00,60,0.00,240000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',28,45,4,1,'2023-10-17 10:54:53','2023-10-17 10:54:53'),(52,'T-Shert Personalizada Keya',4400.00,60,0.00,264000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',28,43,4,1,'2023-10-17 10:54:53','2023-10-17 10:54:53'),(53,'T-Shert Personalizada Mukua',5300.00,60,0.00,318000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',28,44,4,1,'2023-10-17 10:54:53','2023-10-17 10:54:53'),(54,'T-Shert Personalizada Mukua Preta',5300.00,30,0.00,159000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',29,47,4,1,'2023-10-17 11:06:26','2023-10-17 11:06:26'),(55,'T-Shert Personalizada Mukua	Laranja',5300.00,30,0.00,159000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',29,46,4,1,'2023-10-17 11:06:26','2023-10-17 11:06:26'),(56,'H- Serviços de Contabilidade Fiscal (Outubro)',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',30,20,4,1,'2023-11-06 15:43:24','2023-11-06 15:43:24'),(57,'Reparação Fonte de Alimentação HP',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',31,51,4,1,'2023-11-20 19:42:49','2023-11-20 19:42:49'),(58,'Mão de Obra',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',32,52,4,1,'2023-11-21 09:58:10','2023-11-21 09:58:10'),(59,'Reparação Fonte de Alimentação HP',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',32,51,4,1,'2023-11-21 09:58:10','2023-11-21 09:58:10'),(60,'Criação',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',33,56,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(61,'Aplicação de Vinil',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',33,57,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(62,'Criação',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',34,56,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(63,'Impressão de Vinil 197 x 222',26240.00,1,0.00,26240.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',33,55,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(64,'Aplicação de Vinil',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',34,57,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(65,'Impressão de Vinil 184 x 145',16008.00,2,0.00,32016.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',33,54,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(66,'Impressão de Vinil 197 x 222',26240.00,1,0.00,26240.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',34,55,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(67,'Impressão de Vinil 184 x 145',16008.00,2,0.00,32016.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',34,54,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(68,'Impressão de Vinil 182 x 62',10920.00,1,0.00,10920.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',33,53,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(69,'Impressão de Vinil 182 x 62',10920.00,1,0.00,10920.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',34,53,4,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(70,'Personalização',18000.00,1,0.00,18000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',35,59,4,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(71,'Impressão De Vinil Perfurado',23500.00,12,0.00,282000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',35,58,4,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(72,'Personalização',18000.00,1,0.00,18000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',36,59,4,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(73,'Impressão De Vinil Perfurado',23500.00,12,0.00,282000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',36,58,4,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(74,'Impressão De Vinil Perfurado',20555.00,12,0.00,246660.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',37,58,4,1,'2023-11-24 13:03:55','2023-11-24 13:03:55'),(75,'Instalação de Softwares Diversos Utilitários',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',38,63,4,1,'2023-11-30 17:46:06','2023-11-30 17:46:06'),(76,'Instalação de Sistema Mac OS X',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',38,61,4,1,'2023-11-30 17:46:06','2023-11-30 17:46:06'),(77,'Manutenção/Reparação',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',38,62,4,1,'2023-11-30 17:46:06','2023-11-30 17:46:06'),(78,'Disco Duro 500GB',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',38,60,4,1,'2023-11-30 17:46:06','2023-11-30 17:46:06'),(79,'T-Shert Desportiva com impressão (Branca)',6000.00,20,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',39,64,4,1,'2023-12-05 13:50:21','2023-12-05 13:50:21'),(80,'T-Shert Desportiva com impressão (Preta)',6000.00,20,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',39,65,4,1,'2023-12-05 13:50:21','2023-12-05 13:50:21'),(81,'T-Shert Personalizada Keya Laranja',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',40,48,4,1,'2023-12-08 08:48:49','2023-12-08 08:48:49'),(82,'T-Shert Personalizada Keya Preta',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',40,43,4,1,'2023-12-08 08:48:49','2023-12-08 08:48:49'),(83,'Vinil para porta',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',41,67,4,1,'2023-12-08 15:52:12','2023-12-08 15:52:12'),(84,'Conjunto (Mastro + Bandeirinha de Mesa)',10000.00,3,0.00,30000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',41,66,4,1,'2023-12-08 15:52:12','2023-12-08 15:52:12'),(85,'T-Shert Personalizada Keya Preta',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',41,43,4,1,'2023-12-08 15:52:12','2023-12-08 15:52:12'),(86,'T-Shert Personalizada Keya Laranja',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',41,48,4,1,'2023-12-08 15:52:12','2023-12-08 15:52:12'),(87,'Convite Digital',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',42,68,4,1,'2023-12-14 16:55:47','2023-12-14 16:55:47'),(88,'Vinil autocolante',27750.00,1,0.00,27750.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',42,69,4,1,'2023-12-14 16:55:47','2023-12-14 16:55:47'),(89,'Vinil de Recorte',27000.00,1,0.00,27000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',42,70,4,1,'2023-12-14 16:55:47','2023-12-14 16:55:47'),(90,'Fitas Personalizadas',400.00,100,0.00,40000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',43,72,4,1,'2023-12-21 12:51:14','2023-12-21 12:51:14'),(91,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',44,10,4,1,'2024-01-03 16:37:09','2024-01-03 16:37:09'),(92,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',48,73,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(93,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',47,73,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(94,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',49,73,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(95,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',46,73,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(96,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',45,73,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(97,'Bandeira Institucional',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',47,74,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(98,'Bandeira Institucional',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',45,74,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(99,'Bandeira Institucional',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',49,74,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(100,'Bandeira Institucional',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',48,74,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(101,'Bandeira Institucional',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',46,74,4,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(102,'Vinil autocolante',27750.00,1,0.00,27750.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',50,69,4,1,'2024-01-08 11:27:42','2024-01-08 11:27:42'),(103,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',50,73,4,1,'2024-01-08 11:27:42','2024-01-08 11:27:42'),(104,'Bandeira Institucional',15000.00,3,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',50,74,4,1,'2024-01-08 11:27:42','2024-01-08 11:27:42'),(105,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',51,73,4,1,'2024-01-09 09:54:19','2024-01-09 09:54:19'),(106,'Autocolante',2500.00,8,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',51,75,4,1,'2024-01-09 09:54:19','2024-01-09 09:54:19'),(107,'Bandeira Institucional',15000.00,3,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',51,74,4,1,'2024-01-09 09:54:19','2024-01-09 09:54:19'),(108,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',52,73,4,1,'2024-01-09 10:07:44','2024-01-09 10:07:44'),(109,'Autocolante',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',52,75,4,1,'2024-01-09 10:07:44','2024-01-09 10:07:44'),(110,'Bandeira Institucional',15000.00,3,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',52,74,4,1,'2024-01-09 10:07:44','2024-01-09 10:07:44'),(111,'Autocolante',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',53,75,4,1,'2024-01-09 11:17:32','2024-01-09 11:17:32'),(112,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',54,73,4,1,'2024-01-09 11:18:11','2024-01-09 11:18:11'),(113,'Bandeira Institucional',15000.00,3,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',54,74,4,1,'2024-01-09 11:18:11','2024-01-09 11:18:11'),(114,'Cartões de Visitas',250.00,300,0.00,75000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',55,76,4,1,'2024-01-17 13:39:20','2024-01-17 13:39:20'),(115,'Cartão de Visita',300.00,150,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',56,77,4,1,'2024-01-17 13:39:57','2024-01-17 13:39:57'),(116,'Passes em PVC',4000.00,20,0.00,80000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',57,78,4,1,'2024-01-17 13:42:17','2024-01-17 13:42:17'),(117,'Autocolante',2500.00,1,0.00,2500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',58,75,4,1,'2024-01-29 15:05:58','2024-01-29 15:05:58'),(118,'Impressão de Capas Administrativas',3300.00,100,0.00,330000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',59,81,4,1,'2024-02-16 08:32:20','2024-02-16 08:32:20'),(119,'Impressão de Capas Administrativas',2500.00,100,0.00,250000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',60,81,4,1,'2024-02-16 08:46:18','2024-02-16 08:46:18'),(120,'Impressão de Capas Administrativas',2500.00,100,0.00,250000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',61,81,4,1,'2024-02-23 09:21:46','2024-02-23 09:21:46'),(121,'Impressão de Capas Administrativas	(AMOSTRAS)',3000.00,3,0.00,9000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',61,82,4,1,'2024-02-23 09:21:46','2024-02-23 09:21:46'),(122,'Impressão de Capas Administrativas',3000.00,100,0.00,300000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',62,81,4,1,'2024-02-23 09:29:58','2024-02-23 09:29:58'),(123,'Impressão de Capas Administrativas	(AMOSTRAS)',3000.00,2,0.00,6000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',62,82,4,1,'2024-02-23 09:29:58','2024-02-23 09:29:58'),(124,'Anéis Porta Guardanapos',1350.00,260,0.00,351000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',63,84,4,1,'2024-03-04 10:09:37','2024-03-04 10:09:37'),(125,'Placa PVC 1.20CM x 1.50CM',38000.00,2,0.00,76000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',64,86,4,1,'2024-03-14 11:52:48','2024-03-14 11:52:48'),(126,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',65,90,4,1,'2024-04-02 07:23:10','2024-04-02 07:23:10'),(127,'Criação de Arte',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',65,88,4,1,'2024-04-02 07:23:10','2024-04-02 07:23:10'),(128,'Print de Lona 1.50 Cm x 1.50 Cm',11000.00,1,0.00,11000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',65,89,4,1,'2024-04-02 07:23:10','2024-04-02 07:23:10'),(129,'Vinil de 70 Cm x 50 Cm',8000.00,2,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',66,95,4,1,'2024-04-12 16:02:55','2024-04-12 16:02:55'),(130,'Placa acrílica de 70 Cm x 50 Cm',66000.00,2,0.00,132000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',66,94,4,1,'2024-04-12 16:02:55','2024-04-12 16:02:55'),(131,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',67,90,4,1,'2024-04-12 22:39:27','2024-04-12 22:39:27'),(132,'Vinil de 70 Cm x 50 Cm',8000.00,2,0.00,16000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',67,95,4,1,'2024-04-12 22:39:27','2024-04-12 22:39:27'),(133,'Placa acrílica de 70 Cm x 50 Cm',66000.00,2,0.00,132000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',67,94,4,1,'2024-04-12 22:39:27','2024-04-12 22:39:27'),(134,'AMA SARA DJALO - Serviços de Contabilidade e Fiscal',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',68,96,4,1,'2024-04-17 15:07:36','2024-04-17 15:07:36'),(135,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',69,90,4,1,'2024-04-26 12:57:26','2024-04-26 12:57:26'),(136,'Autocolante',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',69,75,4,1,'2024-04-26 12:57:26','2024-04-26 12:57:26'),(137,'Taxa de Entrega',2000.00,2,0.00,4000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',70,90,4,1,'2024-04-26 13:18:28','2024-04-26 13:18:28'),(138,'Autocolante',2650.00,26,0.00,68900.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',70,75,4,1,'2024-04-26 13:18:28','2024-04-26 13:18:28'),(139,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',71,90,4,1,'2024-04-26 13:27:08','2024-04-26 13:27:08'),(140,'Autocolante',2650.00,25,0.00,66250.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',71,75,4,1,'2024-04-26 13:27:08','2024-04-26 13:27:08'),(141,'Constituição DC RH (Folha de Salário, Recibo de Pagamento, Mapa de Ferias, Horário de Trabalho)',8000.00,1,0.00,8000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',72,97,4,1,'2024-05-15 16:31:33','2024-05-15 16:31:33'),(142,'T-Shirt Personalizada Marca Keya Preta',5200.00,35,0.00,182000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',73,108,4,1,'2024-06-05 15:45:53','2024-06-05 15:45:53'),(143,'T-Shirt Personalizada Marca Keya Azul Claro',5200.00,35,0.00,182000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',73,107,4,1,'2024-06-05 15:45:53','2024-06-05 15:45:53'),(144,'Serviços de DJ',120000.00,1,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',74,110,4,1,'2024-06-09 06:49:34','2024-06-09 06:49:34'),(145,'iPhone 7 Plus',115000.00,1,0.00,115000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',75,111,4,1,'2024-06-26 07:20:25','2024-06-26 07:20:25'),(146,'Sistema Operativo Win 10',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',76,112,4,1,'2024-07-02 06:09:22','2024-07-02 06:09:22'),(147,'Microsoft Office (Licença Infinita)',12000.00,1,0.00,12000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',76,113,4,1,'2024-07-02 06:09:22','2024-07-02 06:09:22'),(148,'Softwares e Utilities Essências Para funcionamento do SO',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',76,114,4,1,'2024-07-02 06:09:22','2024-07-02 06:09:22'),(149,'Sistema Operativo Win 7',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',77,112,4,1,'2024-07-02 06:19:45','2024-07-02 06:19:45'),(150,'Microsoft Office (Licença Infinita)',12000.00,1,0.00,12000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',77,113,4,1,'2024-07-02 06:19:45','2024-07-02 06:19:45'),(151,'Softwares e Utilities Essências Para funcionamento do SO',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',77,114,4,1,'2024-07-02 06:19:45','2024-07-02 06:19:45'),(152,'Sistema Operativo Win 7',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',78,112,4,1,'2024-07-02 06:31:03','2024-07-02 06:31:03'),(153,'Manutenção Geral do Hardware',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',78,115,4,1,'2024-07-02 06:31:03','2024-07-02 06:31:03'),(154,'Microsoft Office (Licença Infinita)',12000.00,1,0.00,12000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',78,113,4,1,'2024-07-02 06:31:03','2024-07-02 06:31:03'),(155,'Softwares e Utilities Essências Para funcionamento do SO',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',78,114,4,1,'2024-07-02 06:31:03','2024-07-02 06:31:03'),(156,'Lacoste Jeans',1250.00,150,0.00,187500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',79,126,4,1,'2024-07-05 12:19:24','2024-07-05 12:19:24'),(157,'Calção',1100.00,100,0.00,110000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',79,125,4,1,'2024-07-05 12:19:24','2024-07-05 12:19:24'),(158,'Calção de praia',1600.00,100,0.00,160000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',79,124,4,1,'2024-07-05 12:19:24','2024-07-05 12:19:24'),(159,'Tshirts desportiva',3000.00,60,0.00,180000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',80,130,4,1,'2024-07-05 12:27:11','2024-07-05 12:27:11'),(160,'Chinela',2250.00,40,0.00,90000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',80,116,4,1,'2024-07-05 12:27:11','2024-07-05 12:27:11'),(161,'Casacos de napa',7000.00,50,0.00,350000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',80,128,4,1,'2024-07-05 12:27:11','2024-07-05 12:27:11'),(162,'Manjuco',7500.00,50,0.00,375000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',80,122,4,1,'2024-07-05 12:27:11','2024-07-05 12:27:11'),(163,'Tshirts',3000.00,40,0.00,120000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',81,120,4,1,'2024-07-05 12:35:07','2024-07-05 12:35:07'),(164,'Lacoste Polo',3500.00,100,0.00,350000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',81,119,4,1,'2024-07-05 12:35:07','2024-07-05 12:35:07'),(165,'Lacoste',2500.00,5,0.00,12500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',81,118,4,1,'2024-07-05 12:35:07','2024-07-05 12:35:07'),(166,'Calça Jeans',5800.00,50,0.00,290000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',81,117,4,1,'2024-07-05 12:35:07','2024-07-05 12:35:07'),(167,'Chinela',2250.00,100,0.00,225000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',81,116,4,1,'2024-07-05 12:35:07','2024-07-05 12:35:07'),(168,'Calça Jeans',5800.00,50,0.00,290000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',82,117,4,1,'2024-07-05 12:37:24','2024-07-05 12:37:24'),(169,'Manjuco',7500.00,5,0.00,37500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',82,122,4,1,'2024-07-05 12:37:24','2024-07-05 12:37:24'),(170,'Calça Jeans',3800.00,50,0.00,190000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',82,123,4,1,'2024-07-05 12:37:24','2024-07-05 12:37:24'),(171,'Chinela',2250.00,50,0.00,112500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',82,116,4,1,'2024-07-05 12:37:24','2024-07-05 12:37:24'),(172,'Chinela desportiva',2500.00,70,0.00,175000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',82,121,4,1,'2024-07-05 12:37:24','2024-07-05 12:37:24'),(173,'Casacos de napa',7000.00,10,0.00,70000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',83,129,4,1,'2024-07-05 12:39:36','2024-07-05 12:39:36'),(174,'Calça Jeans',3800.00,10,0.00,38000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',83,123,4,1,'2024-07-05 12:39:36','2024-07-05 12:39:36'),(175,'Calça Jeans',5800.00,120,0.00,696000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',83,117,4,1,'2024-07-05 12:39:36','2024-07-05 12:39:36'),(176,'Tshirts',3000.00,150,0.00,450000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',84,120,4,1,'2024-07-05 12:42:35','2024-07-05 12:42:35'),(177,'Calção',1100.00,300,0.00,330000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',84,125,4,1,'2024-07-05 12:42:35','2024-07-05 12:42:35'),(178,'Lacoste',2500.00,80,0.00,200000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',84,118,4,1,'2024-07-05 12:42:35','2024-07-05 12:42:35'),(179,'Serviço de Pintura',149000.00,1,0.00,149000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',85,179,4,1,'2024-09-09 17:28:30','2024-09-09 17:28:30'),(180,'Serviço de Chaparia',66000.00,1,0.00,66000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',85,180,4,1,'2024-09-09 17:28:30','2024-09-09 17:28:30'),(181,'Porta_Guardanapos_Acrílico AO',1350.00,332,0.00,448200.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',86,182,4,1,'2024-10-09 18:13:52','2024-10-09 18:13:52'),(182,'Porta_Guardanapos_Acrílico PWC',1350.00,170,0.00,229500.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',86,181,4,1,'2024-10-09 18:13:52','2024-10-09 18:13:52'),(183,'T-Shert Personalizada Tamanho (XL)',8000.00,10,0.00,80000.00,'Sem rentenção na fonte',0,'IVA',NULL,'IVA',14,NULL,87,186,2,1,'2024-10-17 13:21:14','2024-10-17 13:21:14'),(184,'T-Shert Personalizada Tamanho (L)',8000.00,14,0.00,112000.00,'Sem rentenção na fonte',0,'IVA',NULL,'IVA',14,NULL,87,185,2,1,'2024-10-17 13:21:14','2024-10-17 13:21:14'),(185,'T-Shert Personalizada Tamanho (M)',8000.00,20,0.00,160000.00,'Sem rentenção na fonte',0,'IVA',NULL,'IVA',14,NULL,87,184,2,1,'2024-10-17 13:21:14','2024-10-17 13:21:14'),(186,'T-Shert Personalizada Tamanho (S)',8000.00,20,0.00,160000.00,'Sem rentenção na fonte',0,'IVA',NULL,'IVA',14,NULL,87,183,2,1,'2024-10-17 13:21:14','2024-10-17 13:21:14'),(187,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',88,90,4,1,'2024-10-30 09:13:39','2024-10-30 09:13:39'),(188,'Vinil Perfurado Para Vidro',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',88,190,4,1,'2024-10-30 09:13:39','2024-10-30 09:13:39'),(189,'Serviços Fiscais',90000.00,1,0.00,90000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',89,191,4,1,'2024-10-30 13:08:22','2024-10-30 13:08:22');
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
  `retencao_taxa` decimal(30,2) DEFAULT NULL,
  `imposto_tipo` varchar(191) DEFAULT NULL,
  `imposto_codigo` varchar(191) DEFAULT NULL,
  `imposto_designacao` varchar(191) DEFAULT NULL,
  `imposto_taxa` decimal(30,2) DEFAULT NULL,
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
  CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',1,6,4,1,'2023-06-16 13:09:58','2023-06-16 13:09:58'),(2,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',2,10,4,1,'2023-06-23 13:01:43','2023-06-23 13:01:43'),(3,'Correia laserjet pro 200 color m251nw',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,15,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(4,'Correia laserjet pro 200 color m251nw',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,15,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(5,'Deposito de resíduos de Impressora hp color laserjet mfp 179fnw',18000.00,1,0.00,18000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,14,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(6,'Deposito de resíduos de Impressora hp color laserjet mfp 179fnw',18000.00,1,0.00,18000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,14,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(7,'Motor de reposicionamento de papel',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,13,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(8,'Motor de reposicionamento de papel',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,13,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(9,'Conserto de Impressora hp color laserjet mfp 179fnw',41000.00,1,0.00,41000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,12,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(10,'Conserto de Impressora hp color laserjet mfp 179fnw',41000.00,1,0.00,41000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,12,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(11,'Conserto de impressora hp laserjet pro 200 color m251nw',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',4,11,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(12,'Conserto de impressora hp laserjet pro 200 color m251nw',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',3,11,4,1,'2023-07-12 09:28:35','2023-07-12 09:28:35'),(13,'H- Serviços de Contabilidade Fiscal (Junho)',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',5,20,4,1,'2023-07-19 12:17:56','2023-07-19 12:17:56'),(14,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',6,10,4,1,'2023-08-01 10:56:42','2023-08-01 10:56:42'),(15,'Serviço de Pintura na sala',25000.00,2,0.00,50000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',7,21,4,1,'2023-08-01 11:14:13','2023-08-01 11:14:13'),(16,'Fornecimento e montagem de fechaduras',30000.00,3,0.00,90000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',7,22,4,1,'2023-08-01 11:14:13','2023-08-01 11:14:13'),(17,'Montagem de quadro',3000.00,1,0.00,3000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',7,24,4,1,'2023-08-01 11:14:13','2023-08-01 11:14:13'),(18,'Serviço de reparação e construção civil',22000.00,1,0.00,22000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',7,23,4,1,'2023-08-01 11:14:13','2023-08-01 11:14:13'),(19,'Saneamento básico (desentupimento de fossa)',3500.00,1,0.00,3500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,33,4,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(20,'Canhão da fechadura porta lateral da cozinha com aplicação',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,32,4,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(21,'Canhão da fechadura da porta principal com aplicação',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,31,4,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(22,'Tubo torneira da cozinha + WC',3000.00,1,0.00,3000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,30,4,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(23,'Aplicação de Gradeamentos em todas as janelas',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',8,29,4,1,'2023-09-01 13:01:37','2023-09-01 13:01:37'),(24,'S- Serviços de Contabilidade Fiscal (Agosto)',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',9,26,4,1,'2023-09-04 09:22:31','2023-09-04 09:22:31'),(25,'A- Serviços de Contabilidade Fiscal (Agosto)',19000.00,1,0.00,19000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',10,35,4,1,'2023-09-04 09:31:04','2023-09-04 09:31:04'),(26,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',11,10,4,1,'2023-09-04 09:36:48','2023-09-04 09:36:48'),(27,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',12,6,4,1,'2023-09-04 10:04:27','2023-09-04 10:04:27'),(28,'Lona 1M  x 1M',5500.00,1,0.00,5500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,38,4,1,'2023-09-18 12:20:23','2023-09-18 12:20:23'),(29,'Lona 1.50 Cm x 2m',16500.00,2,0.00,33000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',13,37,4,1,'2023-09-18 12:20:23','2023-09-18 12:20:23'),(30,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',14,10,4,1,'2023-10-03 10:13:58','2023-10-03 10:13:58'),(31,'S- Serviços de Contabilidade Fiscal (Setembro)',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',15,26,4,1,'2023-10-06 08:56:36','2023-10-06 08:56:36'),(32,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',16,6,4,1,'2023-10-06 14:32:38','2023-10-06 14:32:38'),(33,'Z-Serviços de Contablidade Fiscal (Setembro)',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',17,41,4,1,'2023-10-06 14:34:48','2023-10-06 14:34:48'),(34,'H- Serviços de Contabilidade Fiscal (Setembro )',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',18,20,4,1,'2023-10-07 08:14:57','2023-10-07 08:14:57'),(35,'T-Shert Personalizada Keya Preta',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,43,4,1,'2023-10-19 09:51:11','2023-10-19 09:51:11'),(36,'T-Shert Personalizada Keya Laranja',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',19,48,4,1,'2023-10-19 09:51:11','2023-10-19 09:51:11'),(37,'Z-Serviços de Contablidade Fiscal (Outubro)',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',20,41,4,1,'2023-11-08 09:47:09','2023-11-08 09:47:09'),(38,'Diagnostico de Computador',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',21,50,4,1,'2023-11-14 14:57:32','2023-11-14 14:57:32'),(39,'Impressão De Vinil Perfurado 160 x 165 Cm',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',22,58,4,1,'2023-11-30 16:25:02','2023-11-30 16:25:02'),(40,'Impressão De Vinil 160 x 165 Cm',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',23,58,4,1,'2023-11-30 16:27:56','2023-11-30 16:27:56'),(41,'Criação',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,56,4,1,'2023-12-08 08:59:58','2023-12-08 08:59:58'),(42,'Aplicação de Vinil',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,57,4,1,'2023-12-08 08:59:58','2023-12-08 08:59:58'),(43,'Impressão de Vinil 197 x 222',26240.00,1,0.00,26240.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,55,4,1,'2023-12-08 08:59:58','2023-12-08 08:59:58'),(44,'Impressão de Vinil 184 x 145',16008.00,2,0.00,32016.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,54,4,1,'2023-12-08 08:59:58','2023-12-08 08:59:58'),(45,'Impressão de Vinil 182 x 62',10920.00,1,0.00,10920.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',24,53,4,1,'2023-12-08 08:59:58','2023-12-08 08:59:58'),(46,'VD-iPhone XS Max',55000.00,1,0.00,55000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',25,71,4,1,'2023-12-15 07:26:08','2023-12-15 07:26:08'),(47,'Fitas Personalizadas',400.00,100,0.00,40000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',26,72,4,1,'2023-12-21 12:55:25','2023-12-21 12:55:25'),(48,'Convite Digital',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,68,4,1,'2023-12-21 13:08:41','2023-12-21 13:08:41'),(49,'Vinil autocolante',27750.00,1,0.00,27750.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,69,4,1,'2023-12-21 13:08:41','2023-12-21 13:08:41'),(50,'Vinil de Recorte',27000.00,1,0.00,27000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',27,70,4,1,'2023-12-21 13:08:41','2023-12-21 13:08:41'),(51,'Vinil para porta',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,67,4,1,'2023-12-21 13:18:37','2023-12-21 13:18:37'),(52,'Conjunto (Mastro + Bandeirinha de Mesa)',10000.00,3,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,66,4,1,'2023-12-21 13:18:37','2023-12-21 13:18:37'),(53,'T-Shert Personalizada Keya Preta',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,43,4,1,'2023-12-21 13:18:37','2023-12-21 13:18:37'),(54,'T-Shert Personalizada Keya Laranja',4000.00,30,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',28,48,4,1,'2023-12-21 13:18:37','2023-12-21 13:18:37'),(55,'Camara Serviços de Contabilidade Fiscal',16000.00,1,0.00,16000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',29,10,4,1,'2024-01-03 16:37:22','2024-01-03 16:37:22'),(56,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',30,6,4,1,'2024-01-08 17:58:02','2024-01-08 17:58:02'),(57,'Z-Serviços de Contablidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',31,41,4,1,'2024-01-10 11:49:56','2024-01-10 11:49:56'),(58,'SOULEYMANE DOUKOURE CONTABLIDADE',24000.00,1,0.00,24000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',32,80,4,1,'2024-02-07 13:53:52','2024-02-07 13:53:52'),(59,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',33,6,4,1,'2024-02-09 14:28:17','2024-02-09 14:28:17'),(60,'Crachás',3500.00,30,0.00,105000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',34,73,4,1,'2024-02-13 15:53:05','2024-02-13 15:53:05'),(61,'Bandeira Institucional',15000.00,3,0.00,45000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',34,74,4,1,'2024-02-13 15:53:05','2024-02-13 15:53:05'),(62,'Z-Serviços de Contablidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',35,41,4,1,'2024-02-13 15:57:31','2024-02-13 15:57:31'),(63,'Impressão de Capas Administrativas',2500.00,100,0.00,250000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',36,81,4,1,'2024-02-23 08:59:04','2024-02-23 08:59:04'),(64,'Impressão de Capas Administrativas	(AMOSTRAS)',3000.00,2,0.00,6000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',36,82,4,1,'2024-02-23 08:59:04','2024-02-23 08:59:04'),(65,'Autocolante',2500.00,25,0.00,62500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',37,75,4,1,'2024-03-06 17:15:11','2024-03-06 17:15:11'),(66,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',38,6,4,1,'2024-03-07 10:40:22','2024-03-07 10:40:22'),(67,'SOULEYMANE DOUKOURE CONTABLIDADE',24000.00,1,0.00,24000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',39,80,4,1,'2024-03-07 10:42:52','2024-03-07 10:42:52'),(68,'Taxa de Urgencia',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',40,85,4,1,'2024-03-11 11:31:55','2024-03-11 11:31:55'),(69,'Cartões de Visitas Urgente',400.00,50,0.00,20000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',40,76,4,1,'2024-03-11 11:31:55','2024-03-11 11:31:55'),(70,'Taxa de Urgencia',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',41,85,4,1,'2024-03-11 11:50:29','2024-03-11 11:50:29'),(71,'Cartões de Visitas Urgente',400.00,50,0.00,20000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',41,76,4,1,'2024-03-11 11:50:29','2024-03-11 11:50:29'),(72,'Print de Lona 3.40 Cm  x 1.10 Cm',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',42,87,4,1,'2024-03-22 14:11:36','2024-03-22 14:11:36'),(73,'Criação de Arte',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',42,88,4,1,'2024-03-22 14:11:36','2024-03-22 14:11:36'),(74,'Z-Serviços de Contablidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',43,41,4,1,'2024-03-22 14:12:29','2024-03-22 14:12:29'),(75,'Z-Serviços de Contablidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',44,41,4,1,'2024-04-03 14:41:49','2024-04-03 14:41:49'),(76,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',45,6,4,1,'2024-04-08 14:45:28','2024-04-08 14:45:28'),(77,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',46,6,4,1,'2024-04-08 14:46:10','2024-04-08 14:46:10'),(78,'MAMADOU COULIBALY Serviços de Contablidade e Fiscal',19000.00,2,0.00,38000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',47,91,4,1,'2024-04-10 14:51:35','2024-04-10 14:51:35'),(79,'Papel Reciclado',90.00,9420,0.00,847800.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',48,92,4,1,'2024-04-11 08:45:38','2024-04-11 08:45:38'),(80,'Taxa de Entrega',2000.00,1,0.00,2000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',49,90,4,1,'2024-04-12 10:03:43','2024-04-12 10:03:43'),(81,'Criação de Arte',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',49,88,4,1,'2024-04-12 10:03:43','2024-04-12 10:03:43'),(82,'Print de Lona 1.50 Cm x 1.50 Cm',11000.00,1,0.00,11000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',49,89,4,1,'2024-04-12 10:03:43','2024-04-12 10:03:43'),(83,'Prestação de Serviços Administrativos',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',50,93,4,1,'2024-04-12 11:02:49','2024-04-12 11:02:49'),(84,'Prestação de Serviços Administrativos',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',51,93,4,1,'2024-04-12 11:02:49','2024-04-12 11:02:49'),(85,'Tratamento de Contratos de Trabalho',8000.00,1,0.00,8000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',52,102,4,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(86,'Tratamento de INADEC',8000.00,1,0.00,8000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',52,101,4,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(87,'Tratamento Auto dos Bombeiros',6000.00,1,0.00,6000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',52,100,4,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(88,'Tratamento de Publicidade',6000.00,1,0.00,6000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',52,98,4,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(89,'Constituição DC RH (Folha de Salário, Recibo de Pagamento, Mapa de Ferias, Horário de Trabalho)',8000.00,1,0.00,8000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',52,97,4,1,'2024-04-20 10:45:05','2024-04-20 10:45:05'),(90,'S- Serviços de Contabilidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',53,103,4,1,'2024-05-07 12:05:17','2024-05-07 12:05:17'),(91,'MC-Serviços de Contabilidade Fiscal',19000.00,1,0.00,19000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',54,104,4,1,'2024-05-08 10:51:33','2024-05-08 10:51:33'),(92,'AMA SARA DJALO - Serviços de Contabilidade e Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',55,96,4,1,'2024-05-08 11:33:45','2024-05-08 11:33:45'),(93,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',56,6,4,1,'2024-05-14 12:51:09','2024-05-14 12:51:09'),(94,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',57,6,4,1,'2024-05-15 17:19:52','2024-05-15 17:19:52'),(95,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',58,6,4,1,'2024-06-07 07:44:38','2024-06-07 07:44:38'),(96,'SOULEYMANE DOUKOURE CONTABLIDADE',24000.00,1,0.00,24000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',59,80,4,1,'2024-06-07 07:52:14','2024-06-07 07:52:14'),(97,'MAMADOU COULIBALY Serviços de Contablidade e Fiscal',19000.00,1,0.00,19000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',60,91,4,1,'2024-06-07 07:55:02','2024-06-07 07:55:02'),(98,'AMA SARA DJALO - Serviços de Contabilidade e Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',61,96,4,1,'2024-06-07 08:05:50','2024-06-07 08:05:50'),(99,'Serviços de DJ',105000.00,1,0.00,105000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',62,110,4,1,'2024-06-10 08:51:23','2024-06-10 08:51:23'),(100,'T-Shirt Personalizada Marca Keya Preta',5200.00,35,0.00,182000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',63,108,4,1,'2024-06-11 09:39:05','2024-06-11 09:39:05'),(101,'T-Shirt Personalizada Marca Keya Azul Claro',5200.00,35,0.00,182000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',63,107,4,1,'2024-06-11 09:39:05','2024-06-11 09:39:05'),(102,'iPhone 7 Plus',115000.00,1,0.00,115000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',64,111,4,1,'2024-06-26 08:38:52','2024-06-26 08:38:52'),(103,'Sistema Operativo Win 7',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',65,112,4,1,'2024-07-04 09:27:17','2024-07-04 09:27:17'),(104,'Manutenção Geral do Hardware',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',65,115,4,1,'2024-07-04 09:27:17','2024-07-04 09:27:17'),(105,'Microsoft Office (Licença Infinita)',12000.00,1,0.00,12000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',65,113,4,1,'2024-07-04 09:27:17','2024-07-04 09:27:17'),(106,'Softwares e Utilities Essências Para funcionamento do SO',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',65,114,4,1,'2024-07-04 09:27:17','2024-07-04 09:27:17'),(107,'Tshirts',3000.00,150,0.00,450000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',66,120,4,1,'2024-07-05 12:42:59','2024-07-05 12:42:59'),(108,'Calção',1100.00,300,0.00,330000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',66,125,4,1,'2024-07-05 12:42:59','2024-07-05 12:42:59'),(109,'Lacoste',2500.00,80,0.00,200000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',66,118,4,1,'2024-07-05 12:42:59','2024-07-05 12:42:59'),(110,'Casacos de napa',7000.00,10,0.00,70000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',67,129,4,1,'2024-07-05 12:43:22','2024-07-05 12:43:22'),(111,'Calça Jeans',3800.00,10,0.00,38000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',67,123,4,1,'2024-07-05 12:43:22','2024-07-05 12:43:22'),(112,'Calça Jeans',5800.00,120,0.00,696000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',67,117,4,1,'2024-07-05 12:43:22','2024-07-05 12:43:22'),(113,'Calça Jeans',5800.00,50,0.00,290000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',68,117,4,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(114,'Manjuco',7500.00,5,0.00,37500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',68,122,4,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(115,'Calça Jeans',3800.00,50,0.00,190000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',68,123,4,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(116,'Chinela',2250.00,50,0.00,112500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',68,116,4,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(117,'Chinela desportiva',2500.00,70,0.00,175000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',68,121,4,1,'2024-07-05 12:43:42','2024-07-05 12:43:42'),(118,'Tshirts',3000.00,40,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',69,120,4,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(119,'Lacoste Polo',3500.00,100,0.00,350000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',69,119,4,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(120,'Lacoste',2500.00,5,0.00,12500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',69,118,4,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(121,'Calça Jeans',5800.00,50,0.00,290000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',69,117,4,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(122,'Chinela',2250.00,100,0.00,225000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',69,116,4,1,'2024-07-05 12:43:55','2024-07-05 12:43:55'),(123,'Tshirts desportiva',3000.00,60,0.00,180000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',70,130,4,1,'2024-07-05 12:44:25','2024-07-05 12:44:25'),(124,'Chinela',2250.00,40,0.00,90000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',70,116,4,1,'2024-07-05 12:44:25','2024-07-05 12:44:25'),(125,'Casacos de napa',7000.00,50,0.00,350000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',70,128,4,1,'2024-07-05 12:44:25','2024-07-05 12:44:25'),(126,'Manjuco',7500.00,50,0.00,375000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',70,122,4,1,'2024-07-05 12:44:25','2024-07-05 12:44:25'),(127,'Lacoste Jeans',1250.00,150,0.00,187500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',71,126,4,1,'2024-07-05 12:44:47','2024-07-05 12:44:47'),(128,'Calção',1100.00,100,0.00,110000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',71,125,4,1,'2024-07-05 12:44:47','2024-07-05 12:44:47'),(129,'Calção de praia',1600.00,100,0.00,160000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',71,124,4,1,'2024-07-05 12:44:47','2024-07-05 12:44:47'),(130,'Serviços de DJ',115000.00,1,0.00,115000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',72,110,4,1,'2024-07-11 08:42:06','2024-07-11 08:42:06'),(131,'Serviços de DJ',120000.00,1,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',73,110,4,1,'2024-07-11 08:46:37','2024-07-11 08:46:37'),(132,'Z-Serviços de Contablidade Fiscal',25000.00,1,0.00,25000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',74,41,4,1,'2024-07-11 09:09:33','2024-07-11 09:09:33'),(133,'Serviços de DJ',15000.00,6,0.00,90000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',75,110,4,1,'2024-07-31 17:07:56','2024-07-31 17:07:56'),(134,'Serviços de Contablidade Fiscal',30000.00,1,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',76,6,4,1,'2024-08-12 07:38:58','2024-08-12 07:38:58'),(135,'K.P Artes Contabilidade e Gestão',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',77,173,4,1,'2024-09-03 12:47:44','2024-09-03 12:47:44'),(136,'SSD 256 GB',32000.00,1,0.00,32000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',78,174,4,1,'2024-09-04 07:42:46','2024-09-04 07:42:46'),(137,'Mão de Obra',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',78,175,4,1,'2024-09-04 07:42:46','2024-09-04 07:42:46'),(138,'Memoria Ram 4G',10000.00,3,0.00,30000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',78,176,4,1,'2024-09-04 07:42:46','2024-09-04 07:42:46'),(139,'Transporte deslocação e Entrega',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',78,178,4,1,'2024-09-04 07:42:46','2024-09-04 07:42:46'),(140,'Softwares e Utilities Essências Para funcionamento do SO',8000.00,4,0.00,32000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',78,177,4,1,'2024-09-04 07:42:46','2024-09-04 07:42:46'),(141,'Serviços de DJ',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',79,110,4,1,'2024-09-04 09:01:44','2024-09-04 09:01:44'),(142,'Serviços de DJ',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',80,110,4,1,'2024-10-03 07:48:11','2024-10-03 07:48:11'),(143,'Porta_Guardanapos_Acrílico AO',1350.00,332,0.00,448200.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',81,182,4,1,'2024-10-15 11:46:41','2024-10-15 11:46:41'),(144,'Porta_Guardanapos_Acrílico PWC',1350.00,170,0.00,229500.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',81,181,4,1,'2024-10-15 11:46:41','2024-10-15 11:46:41'),(145,'T-Shert Personalizada Tamanho (XL)',8000.00,10,0.00,80000.00,'Sem rentenção na fonte',0.00,'IVA',NULL,'IVA',14.00,NULL,82,186,2,1,'2024-10-17 13:37:03','2024-10-17 13:37:03'),(146,'T-Shert Personalizada Tamanho (L)',8000.00,14,0.00,112000.00,'Sem rentenção na fonte',0.00,'IVA',NULL,'IVA',14.00,NULL,82,185,2,1,'2024-10-17 13:37:03','2024-10-17 13:37:03'),(147,'T-Shert Personalizada Tamanho (M)',8000.00,20,0.00,160000.00,'Sem rentenção na fonte',0.00,'IVA',NULL,'IVA',14.00,NULL,82,184,2,1,'2024-10-17 13:37:03','2024-10-17 13:37:03'),(148,'T-Shert Personalizada Tamanho (S)',8000.00,20,0.00,160000.00,'Sem rentenção na fonte',0.00,'IVA',NULL,'IVA',14.00,NULL,82,183,2,1,'2024-10-17 13:37:03','2024-10-17 13:37:03'),(149,'Serviços de Fecho de Contas IP Industrial 2023 Zinab 2023',250000.00,1,0.00,250000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',83,189,4,1,'2024-10-29 11:36:23','2024-10-29 11:36:23'),(150,'Serviços de Fecho de Contas IP Industrial 2022 Dado Maria 2022',250000.00,1,0.00,250000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',83,188,4,1,'2024-10-29 11:36:23','2024-10-29 11:36:23'),(151,'Serviços de Dj (09/10) 2023',150000.00,8,0.00,1200000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',84,49,4,1,'2024-11-03 14:12:24','2024-11-03 14:12:24'),(152,'Serviços de DJ',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',85,110,4,1,'2024-11-03 14:13:11','2024-11-03 14:13:11'),(153,'Serviços de DJ',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',86,110,4,1,'2024-11-03 14:13:11','2024-11-03 14:13:11'),(154,'Serviços de DJ',15000.00,8,0.00,120000.00,'Sem rentenção na fonte',0.00,'ISENTO','M04','M04 - Regime de Exclusão',0.00,'Regime Simplificado',87,110,4,1,'2024-12-03 11:24:19','2024-12-03 11:24:19');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_11_000000_create_departamentos_table',1),(2,'2014_10_12_000000_create_enderecos_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2020_08_10_110404_create_contactos_table',1),(7,'2021_01_06_173930_create_tipos_table',1),(8,'2021_01_06_173931_create_categorias_table',1),(9,'2021_01_06_173932_create_impostos_table',1),(10,'2021_01_06_173933_create_fornecedors_table',1),(11,'2021_01_06_173934_create_retencaos_table',1),(12,'2021_01_06_173952_create_artigos_table',1),(13,'2021_07_19_095646_create_clientes_table',1),(14,'2021_07_19_201615_create_empresas_table',1),(15,'2021_08_13_100920_create_formas_pagamentos_table',1),(16,'2021_08_13_100921_create_moedas_table',1),(17,'2021_08_13_100926_create_facturas_table',1),(18,'2021_08_27_084347_create_modo_pagamentos_table',1),(19,'2021_08_30_183409_create_items_table',1),(20,'2021_09_01_075243_create_proformas_table',1),(21,'2021_09_01_075439_create_item_proformas_table',1),(22,'2021_09_01_075937_create_series_table',1),(23,'2021_09_03_132534_create_armazems_table',1),(24,'2021_09_15_130302_create_stocks_table',1),(25,'2021_09_19_125720_create_item_stocks_table',1),(26,'2021_09_20_082519_create_recibos_table',1),(27,'2021_09_20_082623_create_factura_recibos_table',1),(28,'2021_09_20_082635_create_item_factura_recibos_table',1),(29,'2021_09_28_131912_create_motivo_anulacaos_table',1),(30,'2021_09_28_131912_create_tipo_motivo_anulacaos_table',1),(31,'2021_12_22_125550_create_bugs_table',1),(32,'2022_01_23_103308_create_fabricantes_table',1),(33,'2022_01_23_151610_create_condicoes_pagamentos_table',1),(34,'2022_01_25_091808_bancos',1),(35,'2022_02_09_131420_create_permission_tables',1),(36,'2022_09_08_110345_create_nota_creditos_table',1),(37,'2022_09_08_110451_create_nota_debitos_table',1),(38,'2022_09_08_110636_create_item_nota_creditos_table',1),(39,'2022_09_08_110646_create_item_nota_debitos_table',1),(40,'2022_09_11_162939_create_guia_transportes_table',1),(41,'2022_09_11_162954_create_item_guia_transportes_table',1),(42,'2022_09_11_163007_create_guia_remessas_table',1),(43,'2022_09_11_163023_create_item_guia_remessas_table',1),(44,'2022_09_21_140425_create_agts_table',1),(45,'2023_01_23_155122_create_tax_tables_table',1),(46,'2023_01_23_155225_create_saft_audits_table',1),(47,'2023_03_31_105051_create_pais_table',1),(48,'2023_05_07_190801_create_safts_table',1);
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
  CONSTRAINT `nota_creditos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_motivo_anulacao_id_foreign` FOREIGN KEY (`motivo_anulacao_id`) REFERENCES `motivo_anulacaos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_tipo_motivo_anulacao_id_foreign` FOREIGN KEY (`tipo_motivo_anulacao_id`) REFERENCES `tipo_motivo_anulacaos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_creditos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nota_debitos_cliente_id_foreign` (`cliente_id`),
  KEY `nota_debitos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `nota_debitos_moeda_id_foreign` (`moeda_id`),
  KEY `nota_debitos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `nota_debitos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `nota_debitos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
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
INSERT INTO `permissions` VALUES (1,'pos','web',NULL,NULL),(2,'painel','web',NULL,NULL),(3,'artigo','web',NULL,NULL),(4,'cliente','web',NULL,NULL),(5,'documento','web',NULL,NULL),(6,'relatorio','web',NULL,NULL),(7,'configuracoes','web',NULL,NULL),(8,'receita_despesa','web','2023-07-20 00:11:47','2023-07-20 00:11:47');
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
  CONSTRAINT `proformas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `proformas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `proformas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `proformas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proformas`
--

LOCK TABLES `proformas` WRITE;
/*!40000 ALTER TABLE `proformas` DISABLE KEYS */;
INSERT INTO `proformas` VALUES (1,'PP 2023/1',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-15 00:00:00','2023-06-15 00:00:00',1,1,2,'Olgemar Soares',NULL,73510.00,0.00,0.00,0.00,73510.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-15 15:30:14','2023-06-15 15:30:14'),(2,'PP 2023/2',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-15 00:00:00','2023-06-15 00:00:00',1,1,2,'Olgemar Soares',NULL,73510.00,0.00,0.00,0.00,73510.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(3,'PP 2023/2',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-15 00:00:00','2023-06-15 00:00:00',1,1,2,'Olgemar Soares',NULL,73510.00,0.00,0.00,0.00,73510.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-15 15:56:40','2023-06-15 15:56:40'),(4,'PP 2023/4',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-15 00:00:00','2023-06-15 00:00:00',1,1,2,'Olgemar Soares',NULL,73762.00,0.00,0.00,0.00,73762.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-15 16:37:56','2023-06-15 16:37:56'),(5,'PP 2023/5',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-15 00:00:00','2023-06-15 00:00:00',1,1,2,'Olgemar Soares',NULL,86762.00,0.00,0.00,0.00,86762.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-15 18:14:13','2023-06-15 18:14:13'),(6,'PP 2023/6',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-06-16 00:00:00','2023-06-16 00:00:00',3,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-06-16 12:23:15','2023-06-16 13:09:58'),(7,'PP 2023/7',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-06-16 00:00:00','2023-06-16 00:00:00',3,1,2,'Olgemar Soares',NULL,125000.00,0.00,0.00,0.00,125000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-16 12:24:00','2023-06-16 12:24:00'),(8,'PP 2023/8',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-06-16 00:00:00','2023-06-16 00:00:00',1,1,2,'Olgemar Soares',NULL,110000.00,0.00,0.00,0.00,110000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-16 12:38:31','2023-06-16 12:38:31'),(9,'PP 2023/9',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-06-16 00:00:00','2023-06-16 00:00:00',1,1,2,'Olgemar Soares',NULL,110000.00,0.00,0.00,0.00,110000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-16 12:39:57','2023-06-16 12:39:57'),(10,'PP 2023/10',4,'Machai Dos Santos',NULL,NULL,'2023-06-19 00:00:00','2023-06-19 00:00:00',1,1,2,'Olgemar Soares',NULL,38000.00,0.00,0.00,0.00,38000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-19 10:45:18','2023-06-19 10:45:18'),(11,'PP 2023/11',5,'SYLLA OUSMANE','0000097290','Cazenga','2023-06-19 00:00:00','2023-06-19 00:00:00',2,1,2,'Olgemar Soares',NULL,180000.00,0.00,0.00,0.00,180000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-06-19 12:56:44','2023-06-19 12:56:44'),(12,'PP 2023/12',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-07-11 00:00:00','2023-07-11 00:00:00',2,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-07-11 08:41:02','2023-07-11 08:41:02'),(13,'PP 2023/13',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-07-11 00:00:00','2023-07-11 00:00:00',2,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-07-11 11:18:34','2023-07-12 09:28:35'),(14,'PP 2023/14',8,'HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215','Hoji Yha Henda','2023-08-02 00:00:00','2023-08-02 00:00:00',1,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-02 09:02:38','2023-08-02 09:02:38'),(15,'PP 2023/15',5,'SYLLA OUSMANE','0000097290','Cazenga','2023-08-02 00:00:00','2023-08-02 00:00:00',1,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-02 10:21:18','2023-08-02 10:21:18'),(16,'PP 2023/16',1,'Salão de Beleza & Barbearia 99','2417025590','Vila Alice Rua João de Deus Casa nº: 99','2023-08-31 00:00:00','2023-08-31 00:00:00',1,1,2,'Olgemar Soares',NULL,155.44,0.00,0.00,0.00,155.44,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-08-31 10:10:19','2023-08-31 10:10:19'),(17,'PP 2023/17',17,'Jocelme',NULL,NULL,'2023-10-03 00:00:00','2023-10-03 00:00:00',1,1,2,'Olgemar Soares',NULL,283000.00,0.00,0.00,0.00,283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-03 07:17:52','2023-10-03 07:17:52'),(18,'PP 2023/18',17,'Jocelme',NULL,NULL,'2023-10-03 00:00:00','2023-10-03 00:00:00',1,1,2,'Olgemar Soares',NULL,290000.00,0.00,0.00,0.00,290000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-03 08:26:03','2023-10-03 08:26:03'),(19,'PP 2023/19',5,'SYLLA OUSMANE','0000097290','Cazenga','2023-10-05 00:00:00','2023-10-05 00:00:00',1,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-05 11:18:40','2023-10-05 11:18:40'),(20,'PP 2023/20',19,'Administração do Kilamba','999999',NULL,'2023-10-13 00:00:00','2023-10-13 00:00:00',1,1,2,'Olgemar Soares',NULL,500000.00,0.00,0.00,0.00,500000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-13 12:33:07','2023-10-13 12:33:07'),(21,'PP 2023/20',19,'Administração do Kilamba','999999',NULL,'2023-10-13 00:00:00','2023-10-13 00:00:00',1,1,2,'Olgemar Soares',NULL,500000.00,0.00,0.00,0.00,500000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-13 12:33:07','2023-10-13 12:33:07'),(22,'PP 2023/22',19,'Administração do Kilamba','999999',NULL,'2023-10-13 00:00:00','2023-10-13 00:00:00',1,1,2,'Olgemar Soares',NULL,500000.00,0.00,0.00,0.00,500000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-13 12:37:18','2023-10-13 12:37:18'),(23,'PP 2023/23',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-16 00:00:00','2023-10-16 00:00:00',1,1,2,'Olgemar Soares',NULL,176000.00,0.00,0.00,0.00,176000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-16 11:28:56','2023-10-16 11:28:56'),(24,'PP 2023/24',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-16 00:00:00','2023-10-16 00:00:00',1,1,2,'Olgemar Soares',NULL,212000.00,0.00,0.00,0.00,212000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-16 11:29:24','2023-10-16 11:29:24'),(25,'PP 2023/25',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-16 00:00:00','2023-10-16 00:00:00',1,1,2,'Olgemar Soares',NULL,160000.00,0.00,0.00,0.00,160000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-16 11:29:53','2023-10-16 11:29:53'),(26,'PP 2023/26',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-16 00:00:00','2023-10-16 00:00:00',1,1,2,'Olgemar Soares',NULL,548000.00,0.00,0.00,0.00,548000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-16 11:30:29','2023-10-16 11:30:29'),(27,'PP 2023/27',19,'Administração do Kilamba','999999',NULL,'2023-10-16 00:00:00','2023-10-16 00:00:00',2,1,2,'Olgemar Soares',NULL,125000.00,0.00,0.00,0.00,125000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-16 12:02:26','2023-10-16 12:02:26'),(28,'PP 2023/28',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-17 00:00:00','2023-10-17 00:00:00',1,1,2,'Olgemar Soares',NULL,822000.00,0.00,0.00,0.00,822000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-17 10:54:53','2023-10-17 10:54:53'),(29,'PP 2023/29',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-10-17 00:00:00','2023-10-17 00:00:00',1,1,2,'Olgemar Soares',NULL,318000.00,0.00,0.00,0.00,318000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-10-17 11:06:26','2023-10-17 11:06:26'),(30,'PP 2023/30',8,'HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215','Hoji Yha Henda','2023-11-06 00:00:00','2023-11-06 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-06 15:43:24','2023-11-06 15:43:24'),(31,'PP 2023/31',21,'Extrem Event LDA','5484003130',NULL,'2023-11-20 00:00:00','2023-11-20 00:00:00',1,1,2,'Olgemar Soares',NULL,35000.00,0.00,0.00,0.00,35000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-20 19:42:49','2023-11-20 19:42:49'),(32,'PP 2023/32',21,'Extrem Event LDA','5484003130',NULL,'2023-11-21 00:00:00','2023-11-21 00:00:00',1,1,2,'Olgemar Soares',NULL,45000.00,0.00,0.00,0.00,45000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-21 09:58:10','2023-11-21 09:58:10'),(33,'PP 2023/33',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-11-22 00:00:00','2023-11-22 00:00:00',2,1,2,'Olgemar Soares',NULL,120176.00,0.00,0.00,0.00,120176.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-22 14:57:23','2023-11-22 14:57:23'),(34,'PP 2023/33',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-11-22 00:00:00','2023-11-22 00:00:00',2,1,2,'Olgemar Soares',NULL,120176.00,0.00,0.00,0.00,120176.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-11-22 14:57:23','2023-12-08 08:59:58'),(35,'PP 2023/35',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-11-23 00:00:00','2023-11-23 00:00:00',1,1,2,'Olgemar Soares',NULL,300000.00,0.00,0.00,0.00,300000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(36,'PP 2023/35',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-11-23 00:00:00','2023-11-23 00:00:00',1,1,2,'Olgemar Soares',NULL,300000.00,0.00,0.00,0.00,300000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-23 11:43:05','2023-11-23 11:43:05'),(37,'PP 2023/37',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-11-24 00:00:00','2023-11-24 00:00:00',1,1,2,'Olgemar Soares',NULL,246660.00,0.00,0.00,0.00,246660.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-24 13:03:55','2023-11-24 13:03:55'),(38,'PP 2023/38',21,'Extrem Event LDA','5484003130',NULL,'2023-11-30 00:00:00','2023-11-30 00:00:00',1,1,2,'Olgemar Soares',NULL,50000.00,0.00,0.00,0.00,50000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-11-30 17:46:06','2023-11-30 17:46:06'),(39,'PP 2023/39',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-12-05 00:00:00','2023-12-05 00:00:00',1,1,2,'Olgemar Soares',NULL,240000.00,0.00,0.00,0.00,240000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-12-05 13:50:21','2023-12-05 13:50:21'),(40,'PP 2023/40',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-08 00:00:00','2023-12-08 00:00:00',1,1,2,'Olgemar Soares',NULL,240000.00,0.00,0.00,0.00,240000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2023-12-08 08:48:49','2023-12-08 08:48:49'),(41,'PP 2023/41',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-08 00:00:00','2023-12-08 00:00:00',1,1,2,'Olgemar Soares',NULL,280000.00,0.00,0.00,0.00,280000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-12-08 15:52:12','2023-12-21 13:18:37'),(42,'PP 2023/42',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-14 00:00:00','2023-12-14 00:00:00',1,1,1,'Administrador',NULL,64750.00,0.00,0.00,0.00,64750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-12-14 16:55:47','2023-12-21 13:08:41'),(43,'PP 2023/43',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-21 00:00:00','2023-12-21 00:00:00',1,1,2,'Olgemar Soares',NULL,40000.00,0.00,0.00,0.00,40000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2023-12-21 12:51:14','2023-12-21 12:55:25'),(44,'PP 2023/44',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA','5001390414',NULL,'2024-01-03 00:00:00','2024-01-03 00:00:00',2,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-01-03 16:37:09','2024-01-03 16:37:22'),(45,'PP 2023/45',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-04 00:00:00','2024-01-04 00:00:00',2,1,1,'Administrador',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(46,'PP 2023/45',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-04 00:00:00','2024-01-04 00:00:00',2,1,1,'Administrador',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(47,'PP 2023/45',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-04 00:00:00','2024-01-04 00:00:00',2,1,1,'Administrador',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(48,'PP 2023/45',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-04 00:00:00','2024-01-04 00:00:00',2,1,1,'Administrador',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(49,'PP 2023/45',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-04 00:00:00','2024-01-04 00:00:00',2,1,1,'Administrador',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-04 16:45:34','2024-01-04 16:45:34'),(50,'PP 2023/50',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-08 00:00:00','2024-01-08 00:00:00',1,1,2,'Olgemar Soares',NULL,177750.00,0.00,0.00,0.00,177750.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-08 11:27:42','2024-01-08 11:27:42'),(51,'PP 2023/51',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-09 00:00:00','2024-01-09 00:00:00',1,1,2,'Olgemar Soares',NULL,170000.00,0.00,0.00,0.00,170000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-09 09:54:19','2024-01-09 09:54:19'),(52,'PP 2023/52',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-09 00:00:00','2024-01-09 00:00:00',1,1,2,'Olgemar Soares',NULL,212500.00,0.00,0.00,0.00,212500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-09 10:07:44','2024-01-09 10:07:44'),(53,'PP 2023/53',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-01-09 00:00:00','2024-01-09 00:00:00',2,1,2,'Olgemar Soares',NULL,62500.00,0.00,0.00,0.00,62500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-01-09 11:17:32','2024-03-06 17:15:11'),(54,'PP 2023/54',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-01-09 00:00:00','2024-01-09 00:00:00',2,1,2,'Olgemar Soares',NULL,150000.00,0.00,0.00,0.00,150000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-01-09 11:18:11','2024-02-13 15:53:06'),(55,'PP 2023/55',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-01-17 00:00:00','2024-01-17 00:00:00',1,1,2,'Olgemar Soares',NULL,75000.00,0.00,0.00,0.00,75000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-17 13:39:20','2024-01-17 13:39:20'),(56,'PP 2023/56',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-01-17 00:00:00','2024-01-17 00:00:00',1,1,2,'Olgemar Soares',NULL,45000.00,0.00,0.00,0.00,45000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-17 13:39:57','2024-01-17 13:39:57'),(57,'PP 2023/57',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-01-17 00:00:00','2024-01-17 00:00:00',1,1,2,'Olgemar Soares',NULL,80000.00,0.00,0.00,0.00,80000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-17 13:42:17','2024-01-17 13:42:17'),(58,'PP 2023/58',24,'Marjoel - Comercio Geral e Prest.Serv. (SU) LDA','5417491187',NULL,'2024-01-29 00:00:00','2024-01-29 00:00:00',1,1,2,'Olgemar Soares',NULL,2500.00,0.00,0.00,0.00,2500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-01-29 15:05:58','2024-01-29 15:05:58'),(59,'PP 2023/59',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-02-16 00:00:00','2024-02-16 00:00:00',2,1,2,'Olgemar Soares',NULL,330000.00,0.00,0.00,0.00,330000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-16 08:32:20','2024-02-16 08:32:20'),(60,'PP 2023/60',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-02-16 00:00:00','2024-02-16 00:00:00',2,1,2,'Olgemar Soares',NULL,250000.00,0.00,0.00,0.00,250000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-16 08:46:18','2024-02-16 08:46:18'),(61,'PP 2023/61',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-02-23 00:00:00','2024-02-23 00:00:00',2,1,2,'Olgemar Soares',NULL,259000.00,0.00,0.00,0.00,259000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 09:21:46','2024-02-23 09:21:46'),(62,'PP 2023/62',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-02-23 00:00:00','2024-02-23 00:00:00',2,1,2,'Olgemar Soares',NULL,306000.00,0.00,0.00,0.00,306000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-23 09:29:58','2024-02-23 09:29:58'),(63,'PP 2023/63',27,'Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769','Tala Tona Condomínio Horizonte Sul, Casa B14','2024-03-04 00:00:00','2024-03-04 00:00:00',2,1,2,'Olgemar Soares',NULL,351000.00,0.00,0.00,0.00,351000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-04 10:09:37','2024-03-04 10:09:37'),(64,'PP 2023/64',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-03-14 00:00:00','2024-03-14 00:00:00',1,1,2,'Olgemar Soares',NULL,76000.00,0.00,0.00,0.00,76000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-14 11:52:48','2024-03-14 11:52:48'),(65,'PP 2023/65',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-04-02 00:00:00','2024-04-02 00:00:00',2,1,1,'Administrador',NULL,23000.00,0.00,0.00,0.00,23000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-04-02 07:23:10','2024-04-12 10:03:43'),(66,'PP 2023/66',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-04-12 00:00:00','2024-04-12 00:00:00',1,1,1,'Administrador',NULL,148000.00,0.00,0.00,0.00,148000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-12 16:02:55','2024-04-12 16:02:55'),(67,'PP 2023/67',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-04-12 00:00:00','2024-04-12 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-12 22:39:27','2024-04-12 22:39:27'),(68,'PP 2023/68',31,'AMA SARA DJALO - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,'RUA S/NOME, CASA Nº S/Nº - JUNTO A ESQUADRA DA POLICIA NACIONAL.','2024-04-17 00:00:00','2024-04-17 00:00:00',2,1,2,'Olgemar Soares','Referente aos últimos 3 meses do ano de 2024',20000.00,0.00,0.00,0.00,20000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-17 15:07:36','2024-04-17 15:07:36'),(69,'PP 2023/69',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-04-26 00:00:00','2024-04-26 00:00:00',2,1,2,'Olgemar Soares',NULL,64500.00,0.00,0.00,0.00,64500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-26 12:57:26','2024-04-26 12:57:26'),(70,'PP 2023/70',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-04-26 00:00:00','2024-04-26 00:00:00',2,1,2,'Olgemar Soares',NULL,72900.00,0.00,0.00,0.00,72900.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-26 13:18:28','2024-04-26 13:18:28'),(71,'PP 2023/71',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-04-26 00:00:00','2024-04-26 00:00:00',2,1,2,'Olgemar Soares',NULL,68250.00,0.00,0.00,0.00,68250.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-04-26 13:27:08','2024-04-26 13:27:08'),(72,'PP 2023/72',33,'Tombossy',NULL,NULL,'2024-05-15 00:00:00','2024-05-15 00:00:00',2,1,2,'Olgemar Soares',NULL,8000.00,0.00,0.00,0.00,8000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-05-15 16:31:33','2024-05-15 16:31:33'),(73,'PP 2023/73',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-06-05 00:00:00','2024-06-05 00:00:00',2,1,2,'Olgemar Soares',NULL,364000.00,0.00,0.00,0.00,364000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-06-05 15:45:52','2024-06-11 09:39:05'),(74,'PP 2023/74',20,'Restaurante e Bar o Killa',NULL,'99999','2024-06-09 00:00:00','2024-06-09 00:00:00',2,1,2,'Olgemar Soares','04-05\n10-05\n11-05\n17-05\n18-05 divida\n24-05\n25-05\n31-05\n_____________________\nOito dias no mês, cada 15,000 = 120,000\nReferente ao mês de maio',120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-06-09 06:49:34','2024-06-09 06:49:34'),(75,'PP 2023/75',34,'Rafael Manuel João',NULL,NULL,'2024-06-26 00:00:00','2024-06-26 00:00:00',2,1,2,'Olgemar Soares',NULL,115000.00,0.00,0.00,0.00,115000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-06-26 07:20:25','2024-06-26 08:38:52'),(76,'PP 2023/76',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-07-02 00:00:00','2024-07-02 00:00:00',2,1,2,'Olgemar Soares','Campanha promocional.',47000.00,0.00,0.00,0.00,47000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-02 06:09:22','2024-07-02 06:09:22'),(77,'PP 2023/77',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2024-07-02 00:00:00','2024-07-02 00:00:00',2,1,2,'Olgemar Soares',NULL,47000.00,0.00,0.00,0.00,47000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-07-02 06:19:45','2024-07-02 06:19:45'),(78,'PP 2023/78',35,'AQUAMUNDIS LDA','5000229105','ESTRADA DO LAR DO PATRIOTA, S/Nº 1º ANDAR C, BENFICA, LUANDA','2024-07-02 00:00:00','2024-07-02 00:00:00',2,1,2,'Olgemar Soares',NULL,62000.00,0.00,0.00,0.00,62000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-02 06:31:03','2024-07-04 09:27:17'),(79,'PP 2023/79',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,457500.00,0.00,0.00,0.00,457500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:19:24','2024-07-05 12:44:47'),(80,'PP 2023/80',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,995000.00,0.00,0.00,0.00,995000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:27:11','2024-07-05 12:44:25'),(81,'PP 2023/81',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,997500.00,0.00,0.00,0.00,997500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:35:07','2024-07-05 12:43:55'),(82,'PP 2023/82',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',1,1,2,'Olgemar Soares',NULL,805000.00,0.00,0.00,0.00,805000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:37:24','2024-07-05 12:43:42'),(83,'PP 2023/83',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,804000.00,0.00,0.00,0.00,804000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:39:36','2024-07-05 12:43:22'),(84,'PP 2023/84',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2024-07-05 00:00:00','2024-07-05 00:00:00',2,1,2,'Olgemar Soares',NULL,980000.00,0.00,0.00,0.00,980000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-07-05 12:42:35','2024-07-05 12:42:59'),(85,'PP 2024/85',40,'Telmo de Almeida',NULL,NULL,'2024-09-09 00:00:00','2024-09-09 00:00:00',3,1,2,'Olgemar Soares',NULL,215000.00,0.00,0.00,0.00,215000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-09-09 17:28:30','2024-09-09 17:28:30'),(86,'PP 2024/86',27,'Momentos Para Sempre Prestação de Serviços e Comércio Geral LDA','5000197769','Tala Tona Condomínio Horizonte Sul, Casa B14','2024-10-09 00:00:00','2024-10-09 00:00:00',2,1,2,'Olgemar Soares',NULL,677700.00,0.00,0.00,0.00,677700.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-10-09 18:13:51','2024-10-15 11:46:41'),(87,'PP 2024/87',41,'SETIC- SERVIÇOS DE TECNOLOGIA E INFORMAÇÃO E COMUNICAÇÃO DAS FINANÇAS PUBLICAS',NULL,NULL,'2024-10-17 00:00:00','2024-10-17 00:00:00',2,1,1,'Administrador',NULL,512000.00,0.00,71680.00,0.00,583680.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-10-17 13:21:14','2024-10-17 13:37:03'),(88,'PP 2024/88',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-10-30 00:00:00','2024-10-30 00:00:00',2,1,2,'Olgemar Soares',NULL,27000.00,0.00,0.00,0.00,27000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-10-30 09:13:39','2024-10-30 09:13:39'),(89,'PP 2024/89',43,'Moussa Magassa','5001794426','Cazenga','2024-10-30 00:00:00','2024-10-30 00:00:00',2,1,2,'Olgemar Soares',NULL,90000.00,0.00,0.00,0.00,90000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-10-30 13:08:22','2024-10-30 13:08:22');
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
  `total` double(8,2) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
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
  `total_pendente` double(8,2) DEFAULT NULL,
  `valor_pago` double(8,2) DEFAULT NULL,
  `ficheiro` varchar(191) DEFAULT NULL,
  `data_ficheiro` datetime DEFAULT NULL,
  `retencao_taxa` double(8,2) DEFAULT NULL,
  `factura_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `recibos_factura_id_foreign` (`factura_id`),
  KEY `recibos_cliente_id_foreign` (`cliente_id`),
  KEY `recibos_formapagamento_id_foreign` (`formapagamento_id`),
  KEY `recibos_moeda_id_foreign` (`moeda_id`),
  KEY `recibos_utilizador_id_foreign` (`utilizador_id`),
  CONSTRAINT `recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (1,'RC 2023/1',2,'SAMABALY KANDIOURA COMERCIO A RETALHO SU LDA','5417481700','Hoji Yha Henda','2023-06-20 00:00:00','2023-06-20 00:00:00',2,1,2,'Olgemar Soares',NULL,30000.00,0.00,0.00,0.00,30000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/1','2023-06-16 00:00:00',30000.00,30000.00,'null.png','2023-06-20 00:00:00',0.00,1,'2023-06-20 21:23:37','2023-06-20 21:23:37'),(2,'RC 2023/2',3,'Dá Vida a Casa','5419010836','Entrada  Principal  do  Lar  do Pat riota Luanda Angola','2023-07-12 00:00:00','2023-07-12 00:00:00',2,1,2,'Olgemar Soares',NULL,120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/3','2023-07-12 00:00:00',120000.00,120000.00,'null.png','2023-07-12 00:00:00',6.50,4,'2023-07-12 09:29:22','2023-07-12 09:29:22'),(3,'RC 2023/3',8,'HAMADOU COULIBALY - COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS','5001261215','Hoji Yha Henda','2023-07-20 00:00:00','2023-07-20 00:00:00',2,1,2,'Olgemar Soares',NULL,25000.00,0.00,0.00,0.00,25000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/5','2023-07-19 00:00:00',25000.00,25000.00,'1689883932.png','2023-07-20 00:00:00',0.00,5,'2023-07-20 20:12:12','2023-07-20 20:12:12'),(4,'RC 2023/4',9,'XD PEOPLE LDA.','51002123B','Rua Faria Guimaraes Nº 829, 1º','2023-08-01 00:00:00','2023-08-01 00:00:00',2,1,2,'Olgemar Soares',NULL,165000.00,0.00,0.00,0.00,165000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/7','2023-08-01 00:00:00',165000.00,0.00,'null.png','2023-08-01 00:00:00',0.00,7,'2023-08-01 18:08:27','2023-08-01 18:08:27'),(5,'RC 2023/5',6,'CAMARA-COMERCIO GERAL E PRESTAÇAO DE SERVIÇOS, (SU), LDA',NULL,NULL,'2023-08-02 00:00:00','2023-08-02 00:00:00',2,1,2,'Olgemar Soares',NULL,16000.00,0.00,0.00,0.00,16000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/6','2023-08-01 00:00:00',16000.00,16000.00,'null.png','2023-08-02 00:00:00',0.00,6,'2023-08-02 09:05:58','2023-08-02 09:05:58'),(6,'RC 2023/6',12,'ATELIER DIOGO VICTOR GR - COMERCIO GERAL & PRESTAÇAO DE SERVIÇOS , (SU),LDA.','5001598244',NULL,'2023-09-04 00:00:00','2023-09-04 00:00:00',1,1,2,'Olgemar Soares',NULL,19000.00,0.00,0.00,0.00,19000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/10','2023-09-04 00:00:00',19000.00,19000.00,'null.png','2023-09-04 00:00:00',0.00,10,'2023-09-04 10:49:03','2023-09-04 10:49:03'),(7,'RC 2023/7',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-09-22 00:00:00','2023-09-22 00:00:00',2,1,2,'Olgemar Soares',NULL,38500.00,0.00,0.00,0.00,38500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/13','2023-09-18 00:00:00',38500.00,38500.00,'null.png','2023-09-22 00:00:00',0.00,13,'2023-09-22 09:20:33','2023-09-22 09:20:33'),(8,'RC 2023/8',21,'Extrem Event LDA','5484003130',NULL,'2023-11-20 00:00:00','2023-11-20 00:00:00',2,1,2,'Olgemar Soares',NULL,10000.00,0.00,0.00,0.00,10000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/21','2023-11-14 00:00:00',10000.00,10000.00,'1700509632.jpg','2023-11-20 00:00:00',0.00,21,'2023-11-20 19:47:12','2023-11-20 19:47:12'),(9,'RC 2023/9',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2023-12-08 00:00:00','2023-12-08 00:00:00',2,1,2,'Olgemar Soares',NULL,120176.00,0.00,0.00,0.00,120176.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/24','2023-12-08 00:00:00',120176.00,120176.00,'1702026083.png','2023-12-08 00:00:00',0.00,24,'2023-12-08 09:01:23','2023-12-08 09:01:23'),(10,'RC 2023/10',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-02-13 00:00:00','2024-02-13 00:00:00',1,1,2,'Olgemar Soares','Pagamento em numerário',150000.00,0.00,0.00,0.00,150000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/34','2024-02-13 00:00:00',150000.00,150000.00,'null.png','2024-02-13 00:00:00',0.00,34,'2024-02-13 15:53:32','2024-02-13 15:53:32'),(11,'RC 2023/11',23,'Carrs P. Serviços','5417062847','Cidadela Desportiva 34/44 Ragel','2024-03-06 00:00:00','2024-03-06 00:00:00',1,1,1,'Administrador',NULL,62500.00,0.00,0.00,0.00,62500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/37','2024-03-06 00:00:00',62500.00,62000.00,'1709745412.jpg','2024-03-06 00:00:00',0.00,37,'2024-03-06 17:16:52','2024-03-06 17:16:52'),(12,'RC 2023/12',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-04-12 00:00:00','2024-04-12 00:00:00',1,1,2,'Olgemar Soares',NULL,23000.00,0.00,0.00,0.00,23000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/49','2024-04-12 00:00:00',23000.00,0.00,'null.png','2024-04-12 00:00:00',0.00,49,'2024-04-12 10:03:50','2024-04-12 10:03:50'),(13,'RC 2023/13',28,'MAMADOU COULIBALY','0000089949','Hoji Yha Henda /Cazenga','2024-04-13 00:00:00','2024-04-13 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de fevereiro e março',38000.00,0.00,0.00,0.00,38000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/47','2024-04-10 00:00:00',38000.00,38.00,'null.png','2024-04-13 00:00:00',0.00,47,'2024-04-13 08:56:19','2024-04-13 08:56:19'),(14,'RC 2023/14',28,'MAMADOU COULIBALY','0000089949','Hoji Yha Henda /Cazenga','2024-04-13 00:00:00','2024-04-13 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de fevereiro e março',38000.00,0.00,0.00,0.00,38000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/47','2024-04-10 00:00:00',37962.00,37.96,'null.png','2024-04-13 00:00:00',0.00,47,'2024-04-13 08:56:53','2024-04-13 08:56:53'),(15,'RC 2023/15',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-06-11 00:00:00','2024-06-11 00:00:00',2,1,2,'Olgemar Soares',NULL,364000.00,0.00,0.00,0.00,364000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/63','2024-06-11 00:00:00',364000.00,364000.00,'null.png','2024-06-11 00:00:00',0.00,63,'2024-06-11 09:39:25','2024-06-11 09:39:25'),(16,'RC 2023/16',16,'DINUGO PRESTAÇAO DE SERVIÇO','5000615315','Luanda,','2024-06-11 00:00:00','2024-06-11 00:00:00',2,1,2,'Olgemar Soares',NULL,364000.00,0.00,0.00,0.00,364000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/63','2024-06-11 00:00:00',0.00,364000.00,'null.png','2024-06-11 00:00:00',0.00,63,'2024-06-11 09:39:25','2024-06-11 09:39:25'),(17,'RC 2024/17',39,'Engenheiro. Adelino Pelasio Kaussassili','9999999','Viana dos Bombeiros','2024-09-04 00:00:00','2024-09-04 00:00:00',2,1,2,'Olgemar Soares',NULL,119000.00,0.00,0.00,0.00,119000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/78','2024-09-04 00:00:00',119000.00,55000.00,'null.png','2024-09-04 00:00:00',0.00,78,'2024-09-04 07:43:15','2024-09-04 07:43:15'),(18,'RC 2024/18',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Junho 2024',115000.00,0.00,0.00,0.00,115000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/72','2024-07-11 00:00:00',115000.00,115000.00,'null.png','2024-09-12 00:00:00',0.00,72,'2024-09-12 14:26:05','2024-09-12 14:26:05'),(19,'RC 2024/19',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,2,'Olgemar Soares','Fatura referente ao mês de Julho 2024\n\nOBS: Deduzido o valor de 30.000,00 AOA Referente a apreensão da mesa misturado.',90000.00,0.00,0.00,0.00,90000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/75','2024-07-31 00:00:00',90000.00,90000.00,'null.png','2024-09-12 00:00:00',0.00,75,'2024-09-12 14:26:55','2024-09-12 14:26:55'),(20,'RC 2024/20',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Agosto 2024',120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/79','2024-09-04 00:00:00',120000.00,120000.00,'null.png','2024-09-12 00:00:00',0.00,79,'2024-09-12 14:27:14','2024-09-12 14:27:14'),(21,'RC 2024/21',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-09-12 00:00:00','2024-09-12 00:00:00',1,1,2,'Olgemar Soares','Referente ao mês de Junho 2024',120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2023/73','2024-07-11 00:00:00',120000.00,120000.00,'null.png','2024-09-12 00:00:00',0.00,73,'2024-09-12 14:33:31','2024-09-12 14:33:31'),(22,'RC 2024/22',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-10-09 00:00:00','2024-10-09 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Setembro 2024',120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/80','2024-10-03 00:00:00',120000.00,120000.00,'null.png','2024-10-09 00:00:00',0.00,80,'2024-10-09 18:03:47','2024-10-09 18:03:47'),(23,'RC 2024/23',20,'RESTAURANTE & BAR OKILA, LDA','5001156004','RUA LOTE Q-ZB/V3V2, K102, CASA N°22','2024-10-16 00:00:00','2024-10-16 00:00:00',2,1,2,'Olgemar Soares','Referente ao mês de Agosto 2024',120000.00,0.00,0.00,0.00,120000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/79','2024-09-04 00:00:00',0.00,0.00,'null.png','2024-10-16 00:00:00',0.00,79,'2024-10-16 07:20:42','2024-10-16 07:20:42'),(24,'RC 2024/24',39,'Engenheiro. Adelino Pelasio Kaussassili','9999999','Viana dos Bombeiros','2024-10-16 00:00:00','2024-10-16 00:00:00',2,1,2,'Olgemar Soares',NULL,119000.00,0.00,0.00,0.00,119000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/78','2024-09-04 00:00:00',64000.00,25000.00,'null.png','2024-10-16 00:00:00',0.00,78,'2024-10-16 07:22:23','2024-10-16 07:22:23');
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
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(7,1);
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
INSERT INTO `series` VALUES (1,'0001','PP 2024','proforma','Alice said.',1,NULL,NULL),(2,'0002','FT 2024','factura','Miss, this.',1,NULL,NULL),(3,'0003','FR 2024','factura-recibo','Be off, or.',1,NULL,NULL),(4,'0004','RC 2024','recibo','The Gryphon sat.',1,NULL,NULL),(5,'0005','NC 2024','nota-credito','She was walking.',1,NULL,NULL),(6,'0006','ND 2024','nota-debito','Alice and.',1,NULL,NULL),(7,'0007','GT 2024','guia-transporte','WOULD go with.',1,NULL,NULL),(8,'0008','GR 2024','guia-remessa','NOT, being made.',1,NULL,NULL),(9,'0009','SC 2024','stock','And I declare.',1,NULL,NULL),(10,'00010','RD','receita-despesa',NULL,NULL,NULL,NULL);
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
  CONSTRAINT `stocks_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE NO ACTION
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
INSERT INTO `users` VALUES (1,'Administrador','admin@admin.com',1,'$2y$10$aCWm79dP9u06kiUnpJly8uyv29ClaAlrzOliwL2UTa.jj4IFa5EsS','default.jpg',1,NULL,NULL,NULL,NULL),(2,'Olgemar Soares','oguimar.soares@gmail.com',1,'$2y$10$ZMjDef8gT6blVyaWT0x0ZetYIJ1jjmUVxnSY7Pbh8CYM4Q74GInDS','1686757030.jpg',1,0,NULL,'2023-06-14 15:31:30','2023-06-14 15:37:10');
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

-- Dump completed on 2024-12-03 21:55:38
