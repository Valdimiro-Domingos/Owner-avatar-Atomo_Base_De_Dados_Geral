-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_sc_ndua
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
INSERT INTO `armazems` VALUES (1,'0001','Sede','I\'ve got.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (1,'2024-0001','segurança',2,1,1,4,83334,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-02-14 13:00:50','2024-03-20 04:57:07'),(2,'2024-0002','Fiscalização',2,1,1,4,90000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-19 14:36:44','2024-03-19 14:45:01'),(3,'2024-0003','Prestação de serviços de segurança privada',2,1,1,4,90000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-03-19 14:42:00','2024-03-19 14:42:00'),(4,'2024-0004','Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',2,1,1,1,61007646.08,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',1,'2024-09-12 06:20:58','2024-09-12 09:44:52'),(5,'2024-0005','BELLE ELISA-COMÉRCIO GERAL E PRESTAÇÃO DE SERVIÇOS, LDA.',2,1,1,1,81000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,'2024-09-20 09:54:01','2024-09-20 09:58:54'),(6,'2024-0006','Administração Municipal da Quiçama',2,1,1,1,1533333,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Prestação de Serviço de Vigilância e Proteção as Unidades Sanitárias no Município da  Quiçama.',1,'2024-10-03 06:59:37','2024-11-01 08:31:29'),(7,'2024-0007','Administração Municipal de Viana',2,1,2,1,38985735,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Construção de um posto de Saúde no Distrito Urbano da Estalagem, Sector Km9-B.  Auto nº 3',0,'2024-10-11 08:04:00','2024-10-11 08:50:33'),(8,'2024-0008','Administração Municipal de Viana',2,2,2,4,38985735,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Construção de um Posto de Saúde no Distrito Urbano da Estalagem, sector KM9-B Município de Viana.\r\nAuto nª 3',0,'2024-10-11 08:10:57','2024-10-11 08:40:08'),(9,'2024-0009','Administração Municipal de Viana',2,1,1,1,38985735,'null.png','null.png','null.png','1',1,NULL,0,'0','0','construção  de um Posto de Saúde no Distrito Urbano da Estalagem, Sector Km9-B Munícipio de Viana.\r\nAuto nº3',1,'2024-10-11 08:50:08','2024-10-11 09:04:38'),(10,'2024-0010','Administração Municipal da Quiçama',2,1,1,1,9000000,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Empreitada de construção de um sistema de captação de água na comuna do caboledo -auto1',1,'2024-10-15 09:47:00','2024-10-15 09:47:00'),(11,'2024-0011','Administração Municipal da Quiçama',2,1,2,1,1402500,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0',NULL,1,'2024-10-21 06:50:41','2024-10-21 06:50:41'),(12,'2024-0012','Administração Municipal da Quiçama',2,1,1,1,1533333,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Prestação de serviço de vigilância e segurança as unidades de sanitárias da Quiçama',1,'2024-11-01 06:14:38','2024-11-01 06:14:38'),(13,'2024-0013','Administração Municipal da Quiçama',2,1,1,1,1533333,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Prestação de serviço de vigilância e segurança as unidades de sanitárias da Quiçama',1,'2024-11-01 06:20:14','2024-11-01 06:20:14'),(14,'2024-0014','Administração Municipal da Quiçama',2,1,1,1,1533333,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Prestação de serviço de vigilância e segurança as unidades de sanitárias da Quiçama',1,'2024-11-01 06:31:17','2024-11-01 06:31:17'),(15,'2024-0015','Administração Municipal da Quiçama1',2,1,1,1,1533333,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Prestação de Serviço de Vigilância e Proteção as Unidades Sanitárias no Município da  Quiçama.',1,'2024-11-01 08:27:07','2024-11-01 08:27:07'),(16,'2024-0016','Administração Municipal da Quiçama',2,1,1,1,1533333,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Prestação de Serviço de Vigilância e Proteção as Unidades Sanitárias no Município da  Quiçama.',1,'2024-11-01 08:41:20','2024-11-01 08:41:20'),(17,'2024-0017','Administração Municipal da Quiçama',2,1,1,1,10000000,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Empreitada de Construção de um Sistema de Captação de Água Auto nº2',1,'2024-11-01 09:48:43','2024-11-01 09:48:43'),(18,'2024-0018','Administração Municipal da Quiçama',2,1,1,1,5000000,'null.png','null.png','null.png','1',1,NULL,0,'0','0','Empreitada de Construção de um Sistema de Captação de Água Auto nº2',1,'2024-11-01 09:51:54','2024-11-01 09:51:54'),(19,'2024-0019','Administração Municipal da Quiçama',2,1,1,1,10283000,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Empreitada de construção de um sistema de captação de água na comuna do caboledo Município da Quiçamã -AUTO Nº2',1,'2024-11-01 11:06:06','2024-11-01 11:06:06'),(20,'2024-0020','Administração Municipal da Quiçama',2,1,1,1,10283000,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Empreitada de construção de um sistema de captação de água na comuna do caboledo Município da Quiçamã -AUTO Nº2',1,'2024-11-01 11:10:44','2024-11-01 11:10:44'),(21,'2024-0021','Administração Municipal da Quiçama',2,1,1,1,5400000,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Empreitada de construção de um sistema de captação de água na comuna do caboledo Município da Quiçamã',1,'2024-11-01 11:22:12','2024-11-01 11:22:12'),(22,'2024-0022','Administração Municipal da Quiçama',2,1,1,1,1052510,'null.png','null.png','null.png','1',NULL,NULL,0,'0','0','Empreitada de construção de um sistema de captação de água na comuna do caboledo.',1,'2024-11-04 10:23:48','2024-11-04 10:23:48');
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
INSERT INTO `bancos` VALUES (1,'elias josé queta','174343512','005100007434351210160',NULL,'2024-03-21 09:04:20','2024-09-12 06:49:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'0001','Diverso','I wouldn\'t be.',1,NULL,NULL),(2,'0002','Ndua-construções comercio e prestação de serviço(su),LDA.',NULL,1,'2024-02-14 13:04:12','2024-02-14 13:04:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'2024-0001','Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345',NULL,NULL,NULL,'null.png',1,2,2,'2024-02-14 12:48:52','2024-02-14 12:48:52'),(2,'2024-0002','BELLE ELISA- Comércio Geral e Prestação de Serviços, LDA.','5000409049',NULL,NULL,'serviço de segurança na alfataria','null.png',1,6,6,'2024-03-19 14:22:53','2024-04-19 07:21:12'),(3,'2024-0003','BELLE ELISA- COMÊRCIO GERAL E PRESTAÇÃO DE SERVIÇO,LDA.','5000399345',NULL,NULL,'Serviço de Seguranças','null.png',1,7,7,'2024-04-19 07:17:26','2024-04-19 07:17:26'),(4,'2024-0004','Administração Municipal de Viana','0000000000',NULL,NULL,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição nº 03','null.png',1,8,8,'2024-09-11 10:45:41','2024-09-12 09:53:59'),(5,'2024-0005','Administração Municipal de Viana','000000',NULL,NULL,NULL,'null.png',0,9,9,'2024-09-11 11:23:00','2024-09-12 08:49:42'),(6,'2024-0006','Administração Municipal de Viana','0000000000',NULL,NULL,NULL,'null.png',1,10,10,'2024-09-12 10:02:58','2024-09-12 10:02:58'),(7,'2024-0007','Administração Municipal da Quiçama','0000000000',NULL,NULL,NULL,'null.png',1,11,11,'2024-10-03 06:56:28','2024-10-03 06:56:28');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condicoes_pagamentos`
--

LOCK TABLES `condicoes_pagamentos` WRITE;
/*!40000 ALTER TABLE `condicoes_pagamentos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'923926752','923926752','923926752',NULL,'nduaqueta@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'924012513','923926752',NULL,NULL,'nduaqueta@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,'946883105',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,'946883105',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,'946883105',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,'946883105',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,'946883105',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `departamentos` VALUES (1,'0001','Administração','Administração',1,NULL,'2023-11-14 15:11:56'),(2,'0001','Gestão','Gestão',1,NULL,NULL),(3,'0001','Vendas','Vendas',1,NULL,NULL);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` bigint(20) unsigned NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'Ndua  Construções Comércio e Prestação de Serviços (SU), Lda.','5000399345','5000399345','2024-09-12','100000','Elias José Queta','5001039342',NULL,'1730457902.png',1,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Angola','Luanda','Bairro Alegria,Rua dos carneiros,Zona km12-Viana-Luanda',NULL,NULL),(2,'Angola','Luanda','Bairro Alegria Rua dos Carneiros Zona Km12- Viana',NULL,NULL),(3,'Angola','Luanda','Rua-Rainha Ginga, Bairro Imgobombota Município de Luanda',NULL,NULL),(4,'Angola','Luanda','Rua-Rainha Ginga, Bairro Imgobombota Município de Luanda',NULL,NULL),(5,'Angola','Luanda','Rua-Rainha Ginga, Bairro Imgobombota Município de Luanda',NULL,NULL),(6,'Angola','Luanda','Rua da Alfândega Ingombota ,Municípios de Luanda',NULL,NULL),(7,'Angola','Luanda','Rua da Alfândega Ingombota ,Municípios de Luanda',NULL,NULL),(8,'Angola','Luanda','Luanda',NULL,NULL),(9,'Angola','Luanda','Luanda',NULL,NULL),(10,'Angola','Luanda','Luanda',NULL,NULL),(11,'Angola','Luanda','Muxima',NULL,NULL);
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
INSERT INTO `fabricantes` VALUES (1,'0001','Diverso','Cat, \'if you.',1,NULL,NULL);
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
  `subtotal` double(32,2) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `imposto` double(32,2) DEFAULT NULL,
  `retencao` double(32,2) DEFAULT NULL,
  `total` double(32,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_recibos`
--

LOCK TABLES `factura_recibos` WRITE;
/*!40000 ALTER TABLE `factura_recibos` DISABLE KEYS */;
INSERT INTO `factura_recibos` VALUES (1,'FR 2024/1',3,'BELLE ELISA- COMÊRCIO GERAL E PRESTAÇÃO DE SERVIÇO,LDA.','5000399345','Rua da Alfândega Ingombota ,Municípios de Luanda','2024-04-19 00:00:00','2024-04-20 00:00:00',2,1,2,'Elizabeth Aguiar','Alfaiataria',250002.00,0.00,0.00,0.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,0,'2024-04-19 07:22:43','2024-04-19 07:24:05'),(2,'FR 2024/2',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-03 00:00:00','2024-10-03 00:00:00',2,1,1,'Adm',NULL,7650000.00,0.00,0.00,0.00,7650000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-10-03 07:01:20','2024-10-03 07:01:20');
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
  `subtotal` double(32,2) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `imposto` double(32,2) DEFAULT NULL,
  `retencao` double(32,2) DEFAULT NULL,
  `total` double(32,2) DEFAULT NULL,
  `total_pendente` double(32,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'FT 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-02-15 00:00:00','2024-02-15 00:00:00',2,1,2,'Elizabeth Aguiar',NULL,90000.00,0.00,0.00,0.00,90000.00,90000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-02-15 08:40:39','2024-02-15 08:40:39'),(2,'FT 2024/2',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-03-19 00:00:00','2024-03-19 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada',NULL,270000.00,0.00,0.00,0.00,270000.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-19 15:23:17','2024-03-19 15:23:17'),(3,'FT 2024/3',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-03-19 00:00:00','2024-03-19 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada',NULL,250002.00,0.00,0.00,0.00,250002.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-19 15:30:08','2024-03-19 15:30:08'),(4,'FT 2024/4',2,'BELLE ELISA- Comércio Geral e Prestação de Serviços, LDA.','5000409049','Rua da Alfândega Ingombota ,Municípios de Luanda','2024-03-19 00:00:00','2024-03-19 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada',NULL,250002.00,0.00,0.00,0.00,250002.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-03-19 15:31:14','2024-03-19 15:31:14'),(5,'FT 2024/5',4,'Administração Municipal de Viana','5000399345','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','construção de um posto de  saúde da estalagem, sector km9B-Auto de medição nº3',6100764608.00,0.00,0.00,0.00,6100764608.00,6100764608.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 08:07:49','2024-09-12 08:07:49'),(6,'FT 2024/6',4,'Administração Municipal de Viana','5000399345','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um PPosto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',61007646.08,0.00,0.00,0.00,61007646.08,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 09:10:09','2024-09-12 09:10:09'),(7,'FT 2024/7',4,'Administração Municipal de Viana','0000000000','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',6100764608.00,0.00,0.00,0.00,6100764608.00,6100764608.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 09:42:26','2024-09-12 09:42:26'),(8,'FT 2024/8',4,'Administração Municipal de Viana','0000000000','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',1,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',61007646.08,0.00,0.00,0.00,61007646.08,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 09:46:37','2024-09-12 09:46:37'),(9,'FT 2024/9',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',61007646.08,0.00,0.00,0.00,61007646.08,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 09:52:06','2024-09-12 09:52:06'),(10,'FT 2024/10',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',61007646.08,0.00,0.00,0.00,61007646.08,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 09:55:05','2024-09-12 09:55:05'),(11,'FT 2024/11',4,'Administração Municipal de Viana','0000000000','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,3,'ndua Construções - comércio e prestação de serviços (SU), Lda','Construção de um Posto de  Saúde da Estalagem, Sector KM 9B-Auto de Medição nº3',61007646.08,0.00,0.00,0.00,61007646.08,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-09-12 10:04:30','2024-09-12 10:04:30'),(12,'FT 2024/12',4,'Administração Municipal de Viana','0000000000','Luanda','2024-10-11 00:00:00','2024-10-11 00:00:00',2,1,1,'Adm',NULL,38985735.00,0.00,0.00,0.00,38985735.00,38985735.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-11 09:03:23','2024-10-11 09:03:23'),(13,'FT 2024/13',4,'Administração Municipal de Viana','0000000000','Luanda','2024-10-11 00:00:00','2024-09-30 00:00:00',2,1,1,'Adm','construção  de um Posto de Saúde no Distrito Urbano da Estalagem, Sector Km9-B Munícipio de Viana.\nAuto nº3',38985735.00,0.00,0.00,0.00,38985735.00,38985735.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-11 09:07:43','2024-10-11 09:07:43'),(14,'FT 2024/14',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-11 00:00:00','2024-10-11 00:00:00',2,1,1,'Adm','Empreitada de Construção de um Sistema de Captação de Água- Auto nº 1',10650000.00,0.00,0.00,0.00,10650000.00,10650000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-11 10:19:18','2024-10-11 10:19:18'),(15,'FT 2024/15',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-15 00:00:00','2024-10-15 00:00:00',2,1,1,'Adm',NULL,9000000.00,0.00,0.00,0.00,9000000.00,9000000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-15 09:48:55','2024-10-15 09:48:55'),(16,'FT 2024/16',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-10-15 00:00:00','2024-10-15 00:00:00',2,1,1,'Adm','Empreitada de construção de um sistema de captação de água na comuna do caboledo-Auto nº1',9000000.00,0.00,0.00,0.00,9000000.00,9000000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-15 09:54:10','2024-10-15 09:54:10'),(17,'FT 2024/17',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-16 00:00:00','2024-10-16 00:00:00',2,1,1,'Adm',NULL,9052500.00,0.00,0.00,0.00,9052500.00,9052500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-16 09:05:55','2024-10-16 09:05:55'),(18,'FT 2024/18',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-16 00:00:00','2024-10-16 00:00:00',2,1,1,'Adm','Empreitada de Construção de um Sistema de Captação de água , na Comuna do Caboledo, Munícipio da Quiçama/ Auto nº 01',9052500.00,0.00,0.00,0.00,9052500.00,9052500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-16 09:10:32','2024-10-16 09:10:32'),(19,'FT 2024/19',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-10-21 00:00:00','2024-10-21 00:00:00',2,1,1,'Adm','Empreitada de Construção de um Sistema de Captação de Água - Auto nº 1',1402500.00,0.00,0.00,0.00,1402500.00,1402500.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-10-21 06:55:19','2024-10-21 06:55:19'),(20,'FT 2024/20',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Adm','Prestação de serviço de vigilância e segurança as unidades de sanitárias da Quiçama',1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 06:23:30','2024-11-01 06:23:30'),(21,'FT 2024/21',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 06:34:01','2024-11-01 06:34:01'),(22,'FT 2024/21',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 06:34:02','2024-11-01 06:34:02'),(23,'FT 2024/21',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 06:34:01','2024-11-01 06:34:01'),(24,'FT 2024/21',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 06:34:01','2024-11-01 06:34:01'),(25,'FT 2024/25',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Prestação de Serviço de Vigilância e Proteção as Unidades Sanitárias no Município da  Quiçama.',1533333.00,0.00,0.00,0.00,1533333.00,1533333.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 08:34:47','2024-11-01 08:34:47'),(26,'FT 2024/26',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Empreitada de Construção de um Sistema de Captação de Água Auto nº2',10000000.00,0.00,0.00,0.00,10000000.00,10000000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 09:50:16','2024-11-01 09:50:16'),(27,'FT 2024/27',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Empreitada de Construção de um Sistema de Captação de Água Auto nº2',5000000.00,0.00,0.00,0.00,5000000.00,5000000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 09:52:45','2024-11-01 09:52:45'),(28,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:49','2024-11-01 11:07:49'),(29,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:49','2024-11-01 11:07:49'),(30,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:49','2024-11-01 11:07:49'),(31,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:49','2024-11-01 11:07:49'),(32,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(33,'FT 2024/28',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada',NULL,10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(34,'FT 2024/34',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Empreitada de construção de um sistema de captação de água na comuna do caboledo Município da Quiçamã -AUTO Nº2',10283000.00,0.00,0.00,0.00,10283000.00,10283000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:12:02','2024-11-01 11:12:02'),(35,'FT 2024/35',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-01 00:00:00','2024-11-01 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Empreitada de construção de um sistema de captação de água na comuna do caboledo Município da Quiçamã',5400000.00,0.00,0.00,0.00,5400000.00,5400000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-01 11:23:03','2024-11-01 11:23:03'),(36,'FT 2024/36',7,'Administração Municipal da Quiçama','0000000000','Muxima','2024-11-04 00:00:00','2024-11-04 00:00:00',2,1,1,'Ndua prestação de serviços e segurança privada','Empreitada de construção de um sistema de captação de água na comuna do caboledo.',1052510.00,0.00,0.00,0.00,1052510.00,1052510.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,NULL,NULL,1,1,'2024-11-04 10:25:33','2024-11-04 10:25:33');
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
INSERT INTO `formas_pagamentos` VALUES (1,'0001','Dinheiro','I\'ve got.',1,NULL,NULL),(2,'0002','Transferência','I wouldn\'t.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedors`
--

LOCK TABLES `fornecedors` WRITE;
/*!40000 ALTER TABLE `fornecedors` DISABLE KEYS */;
INSERT INTO `fornecedors` VALUES (1,'2024-0001','Diverso','Diverso',NULL,NULL,NULL,'null.png',1,1,1,NULL,NULL);
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
  `preco` double(32,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `subtotal` double(32,2) DEFAULT NULL,
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
  CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_factura_recibos`
--

LOCK TABLES `item_factura_recibos` WRITE;
/*!40000 ALTER TABLE `item_factura_recibos` DISABLE KEYS */;
INSERT INTO `item_factura_recibos` VALUES (1,'segurança',83334.00,3,0.00,250002.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,1,4,1,'2024-04-19 07:22:43','2024-04-19 07:22:43'),(2,'Administração Municipal da Quiçama',7650000.00,1,0.00,7650000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',2,6,1,1,'2024-10-03 07:01:20','2024-10-03 07:01:20');
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
  `preco` double(32,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `subtotal` double(32,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_creditos`
--

LOCK TABLES `item_nota_creditos` WRITE;
/*!40000 ALTER TABLE `item_nota_creditos` DISABLE KEYS */;
INSERT INTO `item_nota_creditos` VALUES (1,'segurança',83334.00,3,0.00,250002.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,1,4,1,'2024-04-19 07:24:05','2024-04-19 07:24:05');
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
  `preco` double(32,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `subtotal` double(32,2) DEFAULT NULL,
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
  `preco` double(32,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `subtotal` double(32,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proformas`
--

LOCK TABLES `item_proformas` WRITE;
/*!40000 ALTER TABLE `item_proformas` DISABLE KEYS */;
INSERT INTO `item_proformas` VALUES (1,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,1,4,1,'2024-02-14 13:13:40','2024-02-14 13:13:40'),(2,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',2,1,4,1,'2024-02-14 13:13:44','2024-02-14 13:13:44'),(3,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',3,1,4,1,'2024-02-14 13:13:45','2024-02-14 13:13:45'),(4,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,1,4,1,'2024-02-14 13:14:38','2024-02-14 13:14:38'),(5,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',5,1,4,1,'2024-03-19 15:10:56','2024-03-19 15:10:56'),(6,'segurança',83334.00,3,0.00,250002.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',6,1,4,1,'2024-03-20 04:59:11','2024-03-20 04:59:11'),(10,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',11,4,1,1,'2024-09-12 08:53:54','2024-09-12 08:53:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_stocks`
--

LOCK TABLES `item_stocks` WRITE;
/*!40000 ALTER TABLE `item_stocks` DISABLE KEYS */;
INSERT INTO `item_stocks` VALUES (1,'2024-0001','segurança',0,1,1,'2024-03-19 15:05:12','2024-03-19 15:05:12'),(2,'2024-0001','segurança',100,2,1,'2024-03-19 15:07:32','2024-03-19 15:07:32');
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
  `preco` double(32,2) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `subtotal` double(32,2) DEFAULT NULL,
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
  CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'segurança',90000.00,1,0.00,90000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',1,1,4,1,'2024-02-15 08:40:39','2024-02-15 08:40:39'),(2,'segurança',90000.00,3,0.00,270000.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',2,1,4,1,'2024-03-19 15:23:17','2024-03-19 15:23:17'),(3,'segurança',83334.00,3,0.00,250002.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',3,1,4,1,'2024-03-19 15:30:08','2024-03-19 15:30:08'),(4,'segurança',83334.00,3,0.00,250002.00,'Sem rentenção na fonte',0,'ISENTO','M04','M04 - Regime de Exclusão',0,'Regime Simplificado',4,1,4,1,'2024-03-19 15:31:14','2024-03-19 15:31:14'),(5,'construção de um posto de saúde da estalagem, sector km9B-auto de mediçãonº3',6100764608.00,1,0.00,6100764608.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,4,1,1,'2024-09-12 08:07:49','2024-09-12 08:07:49'),(6,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,4,1,1,'2024-09-12 09:10:09','2024-09-12 09:10:09'),(7,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',6100764608.00,1,0.00,6100764608.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',7,4,1,1,'2024-09-12 09:42:26','2024-09-12 09:42:26'),(8,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',8,4,1,1,'2024-09-12 09:46:38','2024-09-12 09:46:38'),(9,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',9,4,1,1,'2024-09-12 09:52:06','2024-09-12 09:52:06'),(10,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',10,4,1,1,'2024-09-12 09:55:05','2024-09-12 09:55:05'),(11,'Construção de um Posto de Saúde da Estalagem, Sector KM 9B-Auto de Medição  nº3',61007646.08,1,0.00,61007646.08,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',11,4,1,1,'2024-09-12 10:04:30','2024-09-12 10:04:30'),(12,'Administração Municipal de Viana',38985735.00,1,0.00,38985735.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',12,9,1,1,'2024-10-11 09:03:23','2024-10-11 09:03:23'),(13,'Administração Municipal de Viana',38985735.00,1,0.00,38985735.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',13,9,1,1,'2024-10-11 09:07:43','2024-10-11 09:07:43'),(14,'Administração Municipal da Quiçama',10650000.00,1,0.00,10650000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',14,6,1,1,'2024-10-11 10:19:18','2024-10-11 10:19:18'),(15,'Administração Municipal da Quiçama',9000000.00,1,0.00,9000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',15,10,1,1,'2024-10-15 09:48:55','2024-10-15 09:48:55'),(16,'Administração Municipal da Quiçama',9000000.00,1,0.00,9000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',16,10,1,1,'2024-10-15 09:54:10','2024-10-15 09:54:10'),(17,'Administração Municipal da Quiçama',9052500.00,1,0.00,9052500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',17,6,1,1,'2024-10-16 09:05:56','2024-10-16 09:05:56'),(18,'Administração Municipal da Quiçama',9052500.00,1,0.00,9052500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',18,6,1,1,'2024-10-16 09:10:32','2024-10-16 09:10:32'),(19,'Administração Municipal da Quiçama',1402500.00,1,0.00,1402500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',19,11,1,1,'2024-10-21 06:55:19','2024-10-21 06:55:19'),(20,'Administração Municipal da Quiçama',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',20,13,1,1,'2024-11-01 06:23:30','2024-11-01 06:23:30'),(21,'Administração Municipal da Quiçama',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',21,14,1,1,'2024-11-01 06:34:02','2024-11-01 06:34:02'),(22,'Administração Municipal da Quiçama',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',23,14,1,1,'2024-11-01 06:34:02','2024-11-01 06:34:02'),(23,'Administração Municipal da Quiçama',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',24,14,1,1,'2024-11-01 06:34:02','2024-11-01 06:34:02'),(24,'Administração Municipal da Quiçama',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',22,14,1,1,'2024-11-01 06:34:02','2024-11-01 06:34:02'),(25,'Administração Municipal da Quiçama1',1533333.00,1,0.00,1533333.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',25,15,1,1,'2024-11-01 08:34:47','2024-11-01 08:34:47'),(26,'Administração Municipal da Quiçama',10000000.00,1,0.00,10000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',26,17,1,1,'2024-11-01 09:50:17','2024-11-01 09:50:17'),(27,'Administração Municipal da Quiçama',5000000.00,1,0.00,5000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',27,18,1,1,'2024-11-01 09:52:45','2024-11-01 09:52:45'),(28,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',29,19,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(29,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',28,19,1,1,'2024-11-01 11:07:49','2024-11-01 11:07:49'),(30,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',31,19,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(31,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',30,19,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(32,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',32,19,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(33,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',33,19,1,1,'2024-11-01 11:07:50','2024-11-01 11:07:50'),(34,'Administração Municipal da Quiçama',10283000.00,1,0.00,10283000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',34,20,1,1,'2024-11-01 11:12:02','2024-11-01 11:12:02'),(35,'Administração Municipal da Quiçama',5400000.00,1,0.00,5400000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',35,21,1,1,'2024-11-01 11:23:03','2024-11-01 11:23:03'),(36,'Administração Municipal da Quiçama',1052510.00,1,0.00,1052510.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',36,22,1,1,'2024-11-04 10:25:33','2024-11-04 10:25:33');
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
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(1,'App\\User',2),(1,'App\\User',3),(1,'App\\User',4),(1,'App\\User',5);
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_creditos`
--

LOCK TABLES `nota_creditos` WRITE;
/*!40000 ALTER TABLE `nota_creditos` DISABLE KEYS */;
INSERT INTO `nota_creditos` VALUES (1,'NC 2024/1',3,'BELLE ELISA- COMÊRCIO GERAL E PRESTAÇÃO DE SERVIÇO,LDA.','5000399345','Rua da Alfândega Ingombota ,Municípios de Luanda','2024-04-19 00:00:00','2024-04-20 00:00:00',2,1,2,'Elizabeth Aguiar','Alfaiataria',250002.00,0.00,0.00,0.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'FR 2024/1',2,'Rectificação',1,'Ausência de desconto na fatura','2024-04-19 07:24:05','2024-04-19 07:24:05');
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
  `subtotal` double(32,2) DEFAULT NULL,
  `desconto` double(32,2) DEFAULT NULL,
  `imposto` double(32,2) DEFAULT NULL,
  `retencao` double(32,2) DEFAULT NULL,
  `total` double(32,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proformas`
--

LOCK TABLES `proformas` WRITE;
/*!40000 ALTER TABLE `proformas` DISABLE KEYS */;
INSERT INTO `proformas` VALUES (1,'PP 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-02-14 00:00:00','2024-02-14 00:00:00',2,1,2,'Elizabeth Aguiar',NULL,270000.00,0.00,0.00,0.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-14 13:13:40','2024-02-14 13:13:40'),(2,'PP 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-02-14 00:00:00','2024-02-14 00:00:00',2,1,2,'Elizabeth Aguiar',NULL,270000.00,0.00,0.00,0.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-14 13:13:44','2024-02-14 13:13:44'),(3,'PP 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-02-14 00:00:00','2024-02-14 00:00:00',2,1,2,'Elizabeth Aguiar',NULL,270000.00,0.00,0.00,0.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-14 13:13:45','2024-02-14 13:13:45'),(4,'PP 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-02-14 00:00:00','2024-02-14 00:00:00',2,1,2,'Elizabeth Aguiar',NULL,270000.00,0.00,0.00,0.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-02-14 13:14:38','2024-02-14 13:14:38'),(5,'PP 2024/5',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-03-19 00:00:00','2024-03-19 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada','a factura  tem duração de 3 dias',270000.00,0.00,0.00,0.00,270000.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-19 15:10:56','2024-03-19 15:10:56'),(6,'PP 2024/6',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-03-20 00:00:00','2024-03-20 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada',NULL,250002.00,0.00,0.00,0.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-03-20 04:59:10','2024-03-20 04:59:10'),(11,'PP 2024/7',4,'Administração Municipal de Viana','5000399345','Luanda','2024-09-12 00:00:00','2024-09-12 00:00:00',2,1,1,'Adm',NULL,61007646.08,0.00,0.00,0.00,61007646.08,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,1,'2024-09-12 08:53:54','2024-09-12 08:53:54');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_despesas`
--

LOCK TABLES `receita_despesas` WRITE;
/*!40000 ALTER TABLE `receita_despesas` DISABLE KEYS */;
INSERT INTO `receita_despesas` VALUES (1,'0001','Almoço',2,50000.00,'2024-03-19 00:00:00','10.000.00 Almoço do  Sr Ageu\r\n8.000.00 almoço da Gizela Kimonha\r\n12.000.00 da Dr ELIZABETH\r\n10.000.00 Marisa\r\n10.000.00 Engenheiro Hermenegildo','2024-03-19 14:54:19','2024-03-19 14:55:07');
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (1,'RC 2024/1',1,'Ndua-construções comercio e prestação de serviço(su),LDA.','5000399345','Bairro Alegria Rua dos Carneiros Zona Km12- Viana','2024-03-19 00:00:00','2024-03-19 00:00:00',1,1,3,'ndua prestação de serviços e segurança privada',NULL,250002.00,0.00,0.00,0.00,250002.00,'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7',1,'FT 2024/3','2024-03-19 00:00:00',250002.00,0.00,'null.png','2024-03-19 00:00:00',0.00,3,'2024-03-19 15:44:03','2024-03-19 15:44:03');
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
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(7,1),(8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saft_audits`
--

LOCK TABLES `saft_audits` WRITE;
/*!40000 ALTER TABLE `saft_audits` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `safts`
--

LOCK TABLES `safts` WRITE;
/*!40000 ALTER TABLE `safts` DISABLE KEYS */;
INSERT INTO `safts` VALUES (1,'SAFT_AO_20240321103149.xml','2024-03-21 09:31:49','2024-03-21 09:31:49');
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
INSERT INTO `series` VALUES (1,'0001','PP 2024','proforma','MINE,\' said the.',1,NULL,NULL),(2,'0002','FT 2024','factura','Alice, \'and.',1,NULL,NULL),(3,'0003','FR 2024','factura-recibo','SOMEBODY ought to.',1,NULL,NULL),(4,'0004','RC 2024','recibo','Alice, that she.',1,NULL,NULL),(5,'0005','NC 2024','nota-credito','But said.',1,NULL,NULL),(6,'0006','ND 2024','nota-debito','Shall I try the.',1,NULL,NULL),(7,'0007','GT 2024','guia-transporte','Alice replied.',1,NULL,NULL),(8,'0008','GR 2024','guia-remessa','CHAPTER X. The.',1,NULL,NULL),(9,'0009','SC 2024','stock','DOTH THE LITTLE.',1,NULL,NULL),(10,'00010','RD 2024','receita-despesa',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (1,'2024-03-19','SC 2024','0001',NULL,'Sede','Diverso',NULL,NULL,1,1,'2024-03-19 15:05:12','2024-03-19 15:05:12'),(2,'2024-03-19','SC 2024','0002',NULL,'Sede','Diverso',NULL,NULL,1,1,'2024-03-19 15:07:32','2024-03-19 15:07:32');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ndua prestação de serviços e segurança privada','nduaqueta@gmail.com',1,'$2y$10$ZOdRG1/aqGJydj1lXpEQUuBTdaZB2Tp9VHoyOZJbBr9lIzumUUtJa','1730453571.jpg',1,0,NULL,NULL,'2024-11-01 08:32:51'),(2,'Elizabeth Aguiar','elizabetemaaneco@gmail.com',1,'$2y$10$z0vy6Mpsl81CEHHIdmae4uGsvJ0ON1tIqb2aGGppjkz1vmd1KRFIi','default.jpg',1,1,NULL,'2024-02-14 12:26:47','2024-11-01 08:13:36'),(3,'ndua Construções - comércio e prestação de serviços (SU), Lda','nduaqueta@gmail.com/923926752',1,'$2y$10$p1x4n3MyZp8A532hcd0zIO/OLI83xeoNFHKWlgptyqPDviDptYCua','1726137047.jpg',1,0,NULL,'2024-02-14 14:56:17','2024-09-12 08:41:37'),(4,'elias josé queta','eliasqueta@gmail.com',1,'$2y$10$wRrQ1rxt7iSdMSx.OUtpDeet0w3RIXtPWMD8joNnmIw99zBuyqjbe','default.jpg',1,0,NULL,'2024-03-21 09:13:51','2024-03-21 09:18:33'),(5,'Administrativo','admin@admin.com',1,'$2y$10$dHCCdhTGzvyCodmFyDhyNel7uuqDxzNPHgPAWv43mTXzQAPEzeFX6','default.jpg',1,1,NULL,'2024-11-01 08:13:22','2024-11-01 08:13:22');
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

-- Dump completed on 2024-12-03 21:55:29
