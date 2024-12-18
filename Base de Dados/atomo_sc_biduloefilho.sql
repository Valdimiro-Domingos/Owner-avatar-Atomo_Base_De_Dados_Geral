-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: atomo_sc_biduloefilho
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
INSERT INTO `armazems` VALUES (1,'0001','Sede','Alice went on.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artigos`
--

LOCK TABLES `artigos` WRITE;
/*!40000 ALTER TABLE `artigos` DISABLE KEYS */;
INSERT INTO `artigos` VALUES (1,'2024-0001','Gestão de Midia Social Mini',2,1,1,1,27270,'null.png','null.png','null.png','20',1,'12',0,'0','0',NULL,1,1,'2024-05-13 15:21:45','2024-05-14 12:18:38'),(2,'2024-0001','Gestão de Midia Social Levi',2,1,1,1,45490,'null.png','null.png','null.png','20',1,'12',0,'0','0',NULL,1,1,'2024-05-13 15:22:31','2024-05-13 15:30:13'),(3,'2024-0001','Gestão de Midia Social Plus',2,1,1,1,52640,'null.png','null.png','null.png','20',1,'12',0,'0','0',NULL,1,1,'2024-05-13 15:23:08','2024-08-20 11:08:42'),(4,'2024-0004','Gestão de Midia Social',2,1,1,1,35000,'null.png','null.png','null.png','1',1,'234',0,'0','0',NULL,1,1,'2024-05-14 12:44:04','2024-08-13 10:22:03'),(5,'2024-0005','Gestão de Midia Social',2,1,1,1,45000,'null.png','null.png','null.png','123',1,'3222222222222',0,'0','0',NULL,1,1,'2024-05-17 09:59:42','2024-08-20 11:08:41'),(6,'2024-0006','Criação de Flyer e Pré convite',2,1,1,1,10000,'null.png','null.png','null.png','123',1,'32',0,'0','0',NULL,1,1,'2024-05-17 12:30:25','2024-08-20 11:08:42'),(7,'2024-0007','Criação de Portofolio',1,1,1,1,1000,'null.png','null.png','null.png','123',1,'3222222222222',0,'0','0',NULL,1,1,'2024-05-31 14:35:55','2024-06-05 10:50:46'),(8,'2024-0008','Criação de Flyer',1,1,1,1,5000,'null.png','null.png','null.png','123',NULL,'32',0,'0','0',NULL,1,1,'2024-08-02 07:09:43','2024-10-31 10:49:29'),(9,'2024-0009','Criação de Flyer',2,1,1,1,1500,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-08-15 16:03:51','2024-08-20 11:08:42'),(10,'2024-0010','Café com Casca 1kg',1,1,1,1,1000,'null.png','null.png','null.png',NULL,1,NULL,0,'0','0',NULL,0,1,'2024-09-03 06:15:31','2024-09-12 15:07:02'),(11,'2024-0010','Café  Descascado a 1kg',1,1,1,1,2500,'null.png','null.png','null.png',NULL,1,NULL,0,'0','0',NULL,0,1,'2024-09-03 06:20:35','2024-09-12 15:07:10'),(12,'2024-0010','Café  Torrado e Moido 1kg',1,1,1,1,4000,'null.png','null.png','null.png',NULL,1,NULL,0,'0','0',NULL,0,1,'2024-09-03 06:21:33','2024-09-12 15:07:15'),(13,'2024-0013','Pagamento Mensal de Web Site',2,1,1,1,35000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,NULL,'2024-09-12 15:08:15','2024-09-12 15:08:15'),(14,'2024-0014','Criação de Logomarca',1,1,1,1,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-09-27 14:20:05','2024-11-27 14:55:18'),(15,'2024-0015','Desenvolvimento de Software de RH',2,1,1,1,150000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,1,'2024-11-01 12:16:37','2024-11-01 13:18:39'),(16,'2024-0016','Lincença Mensal Desenvolvimento de Software de RH',2,1,1,1,150000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,0,1,'2024-11-01 12:54:41','2024-11-01 13:18:49'),(17,'2024-0017','Lincença Mensal(Novembro) Desenvolvimento de Software de RH',1,1,1,1,150000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-01 13:19:55','2024-11-01 13:20:28'),(18,'2024-0018','Taxa de Deslocação',2,1,1,1,10000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-05 14:37:32','2024-11-05 14:39:50'),(19,'2024-0019','Criação de Video',1,1,1,1,15000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-05 14:38:23','2024-11-05 14:39:50'),(20,'2024-0020','Actualização de Flyer ou logo marca',1,1,1,1,5000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-12 09:51:03','2024-11-12 09:51:43'),(21,'2024-0021','Personalização de Redes Sociais',1,1,1,1,20000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-27 14:54:31','2024-11-27 14:55:18'),(22,'2024-0022','Lincença Mensal(Desembro) Desenvolvimento de Software de RH',1,1,1,1,150000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-30 12:11:40','2024-11-30 12:12:33'),(23,'2024-0023','Desenvolvimento de Web Site Com Formulário de Inscrição',1,1,1,1,192000,'null.png','null.png','null.png',NULL,NULL,NULL,0,'0','0',NULL,1,1,'2024-11-30 20:02:07','2024-11-30 20:04:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bancos`
--

LOCK TABLES `bancos` WRITE;
/*!40000 ALTER TABLE `bancos` DISABLE KEYS */;
INSERT INTO `bancos` VALUES (2,'Valdemiro Domingos','.....','AO06 0040.0000.0799.7104.1017.9','sa','2024-09-04 07:06:06','2024-11-01 12:18:35');
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
INSERT INTO `categorias` VALUES (1,'0001','Diverso','I almost.',1,NULL,NULL);
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
INSERT INTO `clientes` VALUES (1,'2024-0001','Consumidor Final','Consumidor Final',NULL,NULL,NULL,'null.png',1,1,1,1,NULL,'2024-08-20 11:08:41'),(2,'2024-0002','AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103',NULL,NULL,NULL,'null.png',1,1,3,3,'2024-05-13 12:31:17','2024-11-01 12:56:04'),(3,'2024-0003','Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032',NULL,NULL,NULL,'null.png',1,1,4,4,'2024-05-13 12:34:44','2024-05-28 15:16:45'),(4,'2024-0004','Genatoni','9999999999',NULL,NULL,NULL,'null.png',1,1,5,5,'2024-05-13 12:36:43','2024-08-13 10:22:03'),(5,'2024-0005','Chitali comercial Lda','5000489522',NULL,NULL,NULL,'null.png',1,1,6,6,'2024-05-17 10:01:02','2024-05-17 10:01:37'),(6,'2024-0006','Ag Ramos','5001870750',NULL,NULL,NULL,'null.png',1,1,7,7,'2024-05-17 12:31:03','2024-11-27 14:55:18'),(7,'2024-0007','DOMINAGEL COMERCIO E PRESTAÇÃO DE SERVIÇOS LDA','5001571109',NULL,NULL,NULL,'null.png',1,1,8,8,'2024-06-05 10:48:54','2024-06-05 10:50:46'),(8,'2024-0008','FBI-Soluções & Comunicação','001057606LA034',NULL,NULL,NULL,'null.png',1,1,9,9,'2024-08-02 07:07:55','2024-08-12 08:46:43'),(9,'2024-0009','CIT_ Clube de Inteligência|Angola','99999999',NULL,NULL,NULL,'null.png',1,1,10,10,'2024-08-15 11:18:20','2024-08-15 16:04:20'),(10,'2024-0010','ALUA Investimentos','5001600397',NULL,NULL,NULL,'null.png',1,1,11,11,'2024-09-03 06:13:20','2024-09-03 09:07:24'),(11,'2024-0011','JOMQ Services Empreeendimentos SU, Lda','5417257230',NULL,NULL,NULL,'null.png',1,1,12,12,'2024-10-10 13:57:23','2024-10-10 13:59:52'),(12,'2024-0012','A Quinta Mágica','5000255459',NULL,NULL,NULL,'null.png',1,1,13,13,'2024-11-01 12:15:25','2024-11-30 20:04:03'),(13,'2024-0013','Menina do Rio','5000829439',NULL,NULL,NULL,'null.png',1,1,14,14,'2024-11-05 14:39:07','2024-11-05 14:39:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'+244 924 815 729','+244 924 815 729','+244 924 815 729',NULL,'nhatchimabusinss@gmail.com','Digital BusinesSalves','924815729',NULL,NULL,'Digital BusinesSalves',NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `empresas` VALUES (1,'NHATCHIMA BUSINESS','006512353ME047','006512353ME047','1997-01-08','150000','Gonçalves Nhanga','006512353ME047',NULL,'1726160613.jpg',1,1,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Angola','Luanda','Benfica-Sonangalp',NULL,NULL),(3,'Angola','MALANJE','Malanje',NULL,NULL),(4,'Angola','LUANDA','PATRIOTA-ALCACIOAS',NULL,NULL),(5,'Angola','LUANDA','Kilamba',NULL,NULL),(6,'Angola','HUAMBO','HUAMBO',NULL,NULL),(7,'Angola','Luanda-Cazenga','Rua Engrácia Alexandre, N° 11',NULL,NULL),(8,'Angola','Luanda','PATRIOTA-ALCACIOAS',NULL,NULL),(9,'Angola','luanda','Luanda',NULL,NULL),(10,'Angola','Benguela','Lobito',NULL,NULL),(11,'Angola','Luanda','Rui 134 Bairro Projecto nova vida,edifício nr. 183 nr.22 município do Kilamba Kiaxi,Luanda , Angola.',NULL,NULL),(12,'Angola','LUANDA','Luanda-Angola',NULL,NULL),(13,'Angola','LUANDA','Boa Vida',NULL,NULL),(14,'Angola','LUANDA','Lar do Patriota',NULL,NULL);
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
INSERT INTO `fabricantes` VALUES (1,'0001','Diverso','Queen to-day?\'.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_recibos`
--

LOCK TABLES `factura_recibos` WRITE;
/*!40000 ALTER TABLE `factura_recibos` DISABLE KEYS */;
INSERT INTO `factura_recibos` VALUES (3,'FR 2024/1',5,'Chitali comercial Lda','5000489522','HUAMBO','2024-05-17 12:01:36','2024-05-17 00:00:00',2,1,1,'Administrador',NULL,45000.00,0.00,0.00,0.00,45000.00,'DTqeADJKizLElPcZSCDCEeJx/A9vL0vQl2RRF1gMIPoqY7Yz4mQ39gtg89zLf7bs++HsOTDH1Kkh8/lOtY8B7/Ih+QWyerrnL1mL7if7IuOadlYOAvpzznL3nHvBU3NIhCVo0qJhHCDEcs44oLZRmdgR4YOgViQpArqGq0CTtfg=',1,1,'2024-05-17 10:01:37','2024-05-17 10:01:37'),(4,'FR 2024/2',6,'Ag Ramos','5001870750','Rua Engrácia Alexandre, N° 11','2024-05-17 14:31:32','2024-05-17 00:00:00',2,1,1,'Administrador',NULL,10000.00,0.00,0.00,0.00,10000.00,'BcKaF2NdJAp04q3c8bIdg7kItBSXsItTipdif/cFAmlIl6irRDaeqCrTXJETkkpmeX3FNbpJftVV0w0b/C0EM5k6sfsfpcC14d2btjoPTC4ckcANb8Dseh9sYacJH9O21IabBIT2yZjpVML372ZY0oG+E6H0rKvZJf79VRfpSKM=',1,1,'2024-05-17 12:31:33','2024-05-17 12:31:33'),(5,'FR 2024/3',1,'Consumidor Final','Consumidor Final','Benfica junto as Bombas da Sonangalph','2024-08-20 13:08:41','2024-08-20 00:00:00',1,1,3,'Jonas Dembi',NULL,109140.00,0.00,0.00,0.00,109140.00,'kE2A4re6tszzsD0BGKEjPNay+7ihNv7yu6rckkCmcNOBFaNCxMEJv11T91AI/SdHnep81vCFS9ECdLBEWXEQxbRBhYXLAj0gBjdPZfLVGiE+Yf5KLTjQ/mJYsNPorj5+vqO2e3xpq4ZhRpTASagg8P2GvB85fbOrG7rJdorW2TM=',1,1,'2024-08-20 11:08:41','2024-08-20 11:08:41'),(6,'FR 2024/4',6,'Ag Ramos','5001870750','Rua Engrácia Alexandre, N° 11','2024-09-28 18:27:30','2024-09-28 00:00:00',2,1,1,'Administrador',NULL,17000.00,0.00,0.00,0.00,17000.00,'jpDilfSAKbWiXvl3VB8Pg0DzEy8i0msJ2HKSDsOMGGUNbbjoJD25pY+yNCwakZ6qeFY9aWSzlpW3exydBQdnLDJQUIwdq4bf+x30Hva+Q7xiQBxygEtuSc5hwUSen9O7h7fkvwJ3Ohf1mBLNSMmZ8KUnvN6nrulWAyfQ1nP9vFQ=',1,1,'2024-09-28 16:27:31','2024-09-28 16:27:31'),(7,'FR 2024/5',11,'JOMQ Services Empreeendimentos SU, Lda','5417257230','Luanda-Angola','2024-10-10 15:59:51','2024-10-10 00:00:00',1,1,1,'Administrador',NULL,5000.00,0.00,0.00,0.00,5000.00,'ogD3Slx7svCJX06wva0JED5EyVOKiFP/kRvIGdUnGedXUrHUvR5bcRL21b1MN6P+yGGgpSQ9PuI8avswpfim8oJiUI3P0hz2+DzCUz3tW9v6/cT2vd9VV+VwOqbQFngdcZvImWnzkY3HX5TY4hWAC59BJjo9HxS/yK0jfS93IhE=',1,1,'2024-10-10 13:59:52','2024-10-10 13:59:52'),(8,'FR 2024/6',6,'Ag Ramos','5001870750','Rua Engrácia Alexandre, N° 11','2024-10-31 11:49:29','2024-10-31 00:00:00',2,1,1,'Administrador',NULL,10000.00,0.00,0.00,0.00,10000.00,'rD0VD8HJ2BEpYzuNy6jMTa9iCW8smqX73KWothzp6DpQtEvEN1ww9KsCbpNrLQQQFQzaSgEwK8V0/pk6OfAnmovE47anPfQ4SLDD6Zdv4GoQCZN2X6Hi8T5aMVq65rJd+x+Bj7jtuaKCSHmKhn8oKkizNFKyphZrojpassFIQhI=',1,1,'2024-10-31 10:49:29','2024-10-31 10:49:29'),(9,'FR 2024/7',6,'Ag Ramos','5001870750','Rua Engrácia Alexandre, N° 11','2024-11-27 15:55:17','2024-11-27 00:00:00',1,1,1,'Administrador',NULL,30000.00,0.00,0.00,0.00,30000.00,'R9YggkMyL5nf7thS2wrq2OkdWsSB12pVC9jhE8mvsJqdwdR0a80BZ2j86dWRK6jlXjxeaYAUSLDZK+AjdCddnFdh7v6mYUDMfIb8AT/V+4ooCLZzt9hR4NbGHm6Q12ErxqEusjOnQQ6/WXt+PQVoiOn+xsH+gocg1X9PYNvhC84=',1,1,'2024-11-27 14:55:18','2024-11-27 14:55:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1,'FT 2024/1',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-05-14 14:18:38','2024-05-14 00:00:00',2,1,1,'Administrador',NULL,27270.00,0.00,0.00,0.00,27270.00,27270.00,'Z7dGINshPfSBTqhye/DLqFdJwsNdUoNrYjUMNOBhCjt3mF2llzoZDR+m+fBi8QdVe4igWMFgRouw+vyuja/jeEjXcX5l8irOGc+a9YCrJqYSKt3R8+9yVPElXf11sEneLv7Di/yGtmrCVhJAUGan2m1TbFsBuWZddhqZPMUBl1w=',1,2,'PP 2024/1',1,1,'2024-05-14 12:18:38','2024-05-14 12:26:55'),(2,'FT 2024/2',3,'Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032','PATRIOTA-ALCACIOAS','2024-05-28 17:16:45','2024-05-28 00:00:00',1,1,1,'Administrador',NULL,52640.00,0.00,0.00,0.00,52640.00,27640.00,'srYFUysP6cMqw0BIfpEMQSqhXcIiYiaGe1uYo+hP9vurWV5TjSZ9JcrGxBRPXutVFRoxjc6wPkuHWQpHf5H0Rp66uE0dzbQFE9KfWzm6Ew7UY55aQA8jDd/jBQksne74I34Pdr3tyBNgXPuUjCpTg0CyO1f2fZRavSQKx8s2TD0=',1,5,'PP 2024/4',1,1,'2024-05-28 15:16:45','2024-05-28 15:17:00'),(3,'FT 2024/3',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-05-31 16:36:21','2024-05-31 00:00:00',2,1,1,'Administrador',NULL,3000.00,0.00,0.00,0.00,3000.00,3000.00,'XKvzF3vFTSvvYC0pSUSEPUJLpJ9ryzln/28ttF6TcNnfpLKW7U1hxpYt00mUNnqvMx12BRuqtCqqKu225/VTrINlEU4FEkl8MCtTC7kupYhIT0KXOZp5FUvAsKyCeuLoNZmL0CimzpHmk9AytTdQs8gXIjKqqGWAnq1BEn/iho8=',1,NULL,NULL,1,1,'2024-05-31 14:36:21','2024-05-31 14:36:21'),(4,'FT 2024/4',7,'DOMINAGEL COMERCIO E PRESTAÇÃO DE SERVIÇOS LDA','5001571109','PATRIOTA-ALCACIOAS','2024-06-05 12:50:46','2024-06-05 00:00:00',2,1,1,'Administrador',NULL,15000.00,0.00,0.00,0.00,15000.00,15000.00,'aKtDjJ1zfVF+8U1gK63t0yB4H4G5ZKpvAAlgsunktaMdzsduKcXV9X+/gGm2BOmEOfSuIUaT3ItqSiNWfbrUk5R0xtYqrdNPkLerATGwJp6CuHlhLE28y40ur3+6dkylgu914kolhhKJbAJKp9yJR09ESCh2dNw++oq28CJmIkE=',1,NULL,NULL,1,1,'2024-06-05 10:50:46','2024-06-05 10:50:46'),(5,'FT 2024/5',8,'FBI-Soluções & Comunicação','001057606LA034','Luanda','2024-08-02 09:11:16','2024-08-02 00:00:00',2,1,1,'Administrador',NULL,10000.00,0.00,0.00,0.00,10000.00,5000.00,'J3NIhYfYKiVWmzU1b8fdAZI0nHZOVezJiK7BriYHSF+mO4mIIK7nC1OeT5r1BrJnatBvN+SPmXtjDu5ZYnm/73YVaMGAJ7Eir3AXR2eyOKA85S+A1j5FxIm9w1eJ5OLi5V3MBhih6Qh+4VATRk9xXAB+EUOfhslFKdYk8qoWsC8=',1,NULL,NULL,1,1,'2024-08-02 07:11:17','2024-08-12 08:44:28'),(6,'FT 2024/6',8,'FBI-Soluções & Comunicação','001057606LA034','Luanda','2024-08-12 10:46:43','2024-08-12 00:00:00',2,1,1,'Administrador',NULL,20000.00,0.00,0.00,0.00,20000.00,20000.00,'SaT9HmQlIy828Hozn3thPQ4vxruqqKomFKnJIggykG5L3Opll8Y8m8U1gtmWr9ziwkG2qerlUDsqqqmNfKwahq7abofrdCnVfdor+DBKWAio43WdiDw1dCn3n60gMxEkcz7quH+r8QkxuquLFfGg05V/R0OSAMjjwmuuwQxPUWI=',1,NULL,NULL,1,1,'2024-08-12 08:46:43','2024-08-12 08:46:43'),(7,'FT 2024/7',4,'Genatoni','9999999999','Kilamba','2024-08-13 12:22:03','2024-08-13 00:00:00',2,1,1,'Administrador',NULL,35000.00,0.00,0.00,0.00,35000.00,0.00,'mG/W92+EB7eYzEjqGdC95uhM/xnsYgCbwy65CmwKbcZis1rRXZtETup2PnSVOiJyOMRQwz4MM0cgGfOCL3OBtLMtFSZqCK5cPLOfatmmg72XVBkV70V7BtyjP7wnZzpYgBzDzI2pAoO0cTxZdHJFcBQTA+O+mUPeragnlTSKjTw=',1,6,'PP 2024/5',0,1,'2024-08-13 10:22:03','2024-08-13 10:22:16'),(8,'FT 2024/8',9,'CIT_ Clube de Inteligência|Angola','99999999','Lobito','2024-08-15 13:21:20','2024-08-15 00:00:00',2,1,1,'Administrador',NULL,30000.00,3500.00,0.00,0.00,26500.00,26500.00,'lN9Cu/xYtVyEQprXJWjf7v5mrBW5h3tvid3Pi82JZYTg2d3cFm/Nc7XuLasznHRwOB8LVBpLRdmHY/HoRSrw9mM3hyjPJh1go2yn636W+PAvdf3mWxZvt+nRwc9Q4ZeNEg/95YVw4tWAKZfrYJNtxxLnUjtWWxdJNfw55LgeUBI=',1,NULL,NULL,1,1,'2024-08-15 11:21:21','2024-08-15 11:21:21'),(9,'FT 2024/9',9,'CIT_ Clube de Inteligência|Angola','99999999','Lobito','2024-08-15 18:04:20','2024-08-15 00:00:00',2,1,1,'Administrador',NULL,9000.00,0.00,0.00,0.00,9000.00,9000.00,'mo5dLoc9lkriiPqc45IZwNQd/4pl5CHkz70/wBNnXTnkuu/iGB1ZCDVyhNLowsq9lCuONRX8MTSEg6k4/o2nZQdamJZUQ7VMLFM9pmPHUADwgh9Vrer0IheQuAm31e41yMKfMzgb9SDQ4wE1EBpdGGDPFUE0eMVAuT5TfCsU10U=',1,NULL,NULL,1,1,'2024-08-15 16:04:20','2024-08-15 16:04:20'),(10,'FT 2024/10',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-01 13:19:13','2024-11-08 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,150000.00,'fXsbLZwkToXoV6jU/ZINcC0pxGjbsWzb8q2NTVweuL7EhubtCUeXPzNOybOA5mAwRlhuvoWmLfkZBybQi4caG+4IMlCSZoC/yhwfzYfXj/WAazMPvyPha5C646IwIQv5uySwOM4XJHYvracfOBhw1Kp4Lt3PVesMg+IKG0/eOYk=',1,NULL,NULL,1,0,'2024-11-01 12:19:14','2024-11-01 12:59:12'),(11,'FT 2024/11',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-11-01 13:55:51','2024-11-01 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,150000.00,'r7s2zJAb10bUsg1RkG3MLLHuo9B/zF0GN73PqA3Y1oMXpoMwgF0PykFnDM4ZKGxSUIvNQNct8K6WVhm8tncTH/b16hqeDU9Ed1p32Nz9KEGqSsfmGTpLlIRWx3ZOatCUp30MgpUwejD5SiAg/XQoR9E0CCrFHrEzxmJPdlJUV/o=',1,NULL,NULL,1,0,'2024-11-01 12:55:51','2024-11-01 12:56:04'),(12,'FT 2024/12',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-01 14:01:01','2024-11-08 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,150000.00,'SRonvpwGRb1gGXRuWEaYGqUdcEAa136toxX5knvKeKLXgl68XCjv2YU1M34RKGOVWGxvh43Ye2Sr3jecvj+v1J7p9ySLY4CsIEd2A9AESPYtyyH3nk0y8zYOStYD8/oOd+qnfeGULITWWvDqXmbgdD0bjU+wan+wlSU0sWdA0bE=',1,NULL,NULL,1,1,'2024-11-01 13:01:01','2024-11-01 13:01:01'),(13,'FT 2024/13',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-01 14:20:28','2024-11-08 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,0.00,'X++ZKofdPz4vlevTlNLRxpfbpIPQ7G23rlH0KxmBdQzVtknaIAPySvbIzlkNAdig50lcLj7UJWAKjUN/YjUMkR+coPRC9zdYvS4n6uwMQoeS/2upg8lFEHhsSMslAzVwrIcUWkhgDfbn9YvznibINPDO7nxY/QC6OrwLyKrO/sw=',1,NULL,NULL,0,1,'2024-11-01 13:20:28','2024-11-06 12:58:13'),(14,'FT 2024/14',13,'Menina do Rio','5000829439','Lar do Patriota','2024-11-05 15:39:49','2024-11-05 00:00:00',2,1,1,'Administrador',NULL,25000.00,0.00,0.00,0.00,25000.00,25000.00,'tUdaX1RykGk/L7SyEt+0c3pN7AmkqotSa3fI8gfmGKJFTZbW6g41tUBilFPxtyFB/5pxJ/wjDa1FRDpTL85G6BzPM2qcJuD8+4YlT/ilQ7saFEi70JdRhkZjQ9QDIn6CCMpxP1FQvsf7CxPQGCOq++yEluc8lAEDhJBnJvYLjKM=',1,NULL,NULL,1,1,'2024-11-05 14:39:50','2024-11-05 14:39:50'),(15,'FT 2024/15',6,'Ag Ramos','5001870750','Rua Engrácia Alexandre, N° 11','2024-11-12 10:51:42','2024-11-12 00:00:00',2,1,1,'Administrador',NULL,5000.00,0.00,0.00,0.00,5000.00,5000.00,'jOnA2nRqBE+IPGC458xrndbJ8TPGgc3AwKwMebU0OZM/MWSp/fyA++XWvcyQ85gi403iDkw3/gI0blPFJIzctZXWx/SPgzD7XOvpHAL9zCnk5ZqQnWJ46Sqmg5G8nLyRtEEOKfuZRgYZSN8McC21zuHfBd10Ms90+0LQqMiptA8=',1,NULL,NULL,1,1,'2024-11-12 09:51:42','2024-11-12 09:51:42'),(16,'FT 2024/16',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-30 13:12:32','2024-11-30 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,0.00,'O/7V1boJKuoysnOY+YDRgg1p12sBqMv4ZEpIavbKfPWaZ47eK8+nCzPzMX36rIWjTprkVUQLk5sxs3P3xl0G3EmoDym9bXDsnvHbHi8qdS1cLW2PbyFT/TT810U4hB+z+N/dUJN+kdOzJwRFXR3g9IzdiaLC3XPnVpbUvHl91hY=',1,NULL,NULL,0,1,'2024-11-30 12:12:33','2024-12-02 15:29:48'),(17,'FT 2024/17',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-30 21:04:03','2024-11-30 00:00:00',2,1,1,'Administrador',NULL,192000.00,0.00,0.00,0.00,192000.00,42000.00,'mRHSnHJfDgWOlkOR369M12wyZxhw6Pvmkx9QS3WRJQEWEXAqzhignH8gDzE+pyO5LmUhTIh9ekG3EPaRE0ACVBsDD4KUq7cuPUNfCpGxWIUJBFeZkzcXMU8KYSZ+WTR5nRIbVdEQ5Og2s0zxqFLJrmxV0dhwv2IBmNfpq7EwVXU=',1,NULL,NULL,1,1,'2024-11-30 20:04:03','2024-12-02 15:23:37');
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
INSERT INTO `formas_pagamentos` VALUES (1,'0001','Dinheiro','YOUR watch tell.',1,NULL,NULL),(2,'0002','Transferência','Alice; \'that\'s.',1,NULL,NULL);
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
  CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_factura_recibos`
--

LOCK TABLES `item_factura_recibos` WRITE;
/*!40000 ALTER TABLE `item_factura_recibos` DISABLE KEYS */;
INSERT INTO `item_factura_recibos` VALUES (12,'Gestão de Midia Social',45000.00,1,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',3,5,1,1,'2024-05-17 10:01:37','2024-05-17 10:01:37'),(13,'Criação de Flyer e Pré convite',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',4,6,1,1,'2024-05-17 12:31:33','2024-05-17 12:31:33'),(14,'Gestão de Midia Social',45000.00,1,0.00,45000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,5,1,1,'2024-08-20 11:08:41','2024-08-20 11:08:41'),(15,'Criação de Flyer',1500.00,1,0.00,1500.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,9,1,1,'2024-08-20 11:08:42','2024-08-20 11:08:42'),(16,'Criação de Flyer e Pré convite',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,6,1,1,'2024-08-20 11:08:42','2024-08-20 11:08:42'),(17,'Gestão de Midia Social Plus',52640.00,1,0.00,52640.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,3,1,1,'2024-08-20 11:08:42','2024-08-20 11:08:42'),(18,'Criação de Flyer',5000.00,2,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,8,1,1,'2024-09-28 16:27:31','2024-09-28 16:27:31'),(19,'Criação de Logomarca',7000.00,1,0.00,7000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,14,1,1,'2024-09-28 16:27:31','2024-09-28 16:27:31'),(20,'Criação de Logomarca',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',7,14,1,1,'2024-10-10 13:59:52','2024-10-10 13:59:52'),(21,'Criação de Flyer',5000.00,2,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',8,8,1,1,'2024-10-31 10:49:29','2024-10-31 10:49:29'),(22,'Criação de Logomarca',5000.00,2,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',9,14,1,1,'2024-11-27 14:55:18','2024-11-27 14:55:18'),(23,'Personalização de Redes Sociais',20000.00,1,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',9,21,1,1,'2024-11-27 14:55:18','2024-11-27 14:55:18');
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
  CONSTRAINT `item_nota_creditos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_nota_creditos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_nota_creditos_nota_credito_id_foreign` FOREIGN KEY (`nota_credito_id`) REFERENCES `nota_creditos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_nota_creditos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_nota_creditos`
--

LOCK TABLES `item_nota_creditos` WRITE;
/*!40000 ALTER TABLE `item_nota_creditos` DISABLE KEYS */;
INSERT INTO `item_nota_creditos` VALUES (24,'Lincença Mensal Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',3,16,1,1,'2024-11-01 12:56:04','2024-11-01 12:56:04'),(25,'Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',4,15,1,1,'2024-11-01 12:59:12','2024-11-01 12:59:12');
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
  CONSTRAINT `item_proformas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_proformas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `item_proformas_proforma_id_foreign` FOREIGN KEY (`proforma_id`) REFERENCES `proformas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_proformas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_proformas`
--

LOCK TABLES `item_proformas` WRITE;
/*!40000 ALTER TABLE `item_proformas` DISABLE KEYS */;
INSERT INTO `item_proformas` VALUES (11,'Gestão de Midia Social Mini',27270.00,1,0.00,27270.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',2,1,1,1,'2024-05-13 15:29:55','2024-05-13 15:29:55'),(12,'Gestão de Midia Social Levi',45490.00,1,0.00,45490.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',3,2,1,1,'2024-05-13 15:30:13','2024-05-13 15:30:13'),(13,'Gestão de Midia Social Mini',27270.00,1,0.00,27270.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',4,1,1,1,'2024-05-13 15:30:38','2024-05-13 15:30:38'),(14,'Gestão de Midia Social Plus',52640.00,1,0.00,52640.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,3,1,1,'2024-05-13 15:30:59','2024-05-13 15:30:59'),(15,'Gestão de Midia Social',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,4,1,1,'2024-05-14 15:50:32','2024-05-14 15:50:32'),(16,'Café  Descascado a 1kg',2500.00,1000,0.00,2500000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',7,11,1,1,'2024-09-03 09:05:52','2024-09-03 09:05:52'),(17,'Café  Torrado e Moido 1kg',4000.00,1000,0.00,4000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',8,12,1,1,'2024-09-03 09:06:33','2024-09-03 09:06:33'),(18,'Café com Casca 1kg',1000.00,1000,0.00,1000000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',9,10,1,1,'2024-09-03 09:07:24','2024-09-03 09:07:24');
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
  CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (26,'Gestão de Midia Social Mini',27270.00,1,0.00,27270.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',1,1,1,1,'2024-05-14 12:18:38','2024-05-14 12:18:38'),(27,'Gestão de Midia Social Plus',52640.00,1,0.00,52640.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',2,3,1,1,'2024-05-28 15:16:45','2024-05-28 15:16:45'),(28,'Criação de Portofolio',1000.00,3,0.00,3000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',3,7,1,1,'2024-05-31 14:36:21','2024-05-31 14:36:21'),(29,'Criação de Portofolio',1000.00,15,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',4,7,1,1,'2024-06-05 10:50:46','2024-06-05 10:50:46'),(30,'Criação de Flyer',5000.00,2,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',5,8,1,1,'2024-08-02 07:11:17','2024-08-02 07:11:17'),(31,'Criação de Flyer',5000.00,4,0.00,20000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',6,8,1,1,'2024-08-12 08:46:43','2024-08-12 08:46:43'),(32,'Gestão de Midia Social',35000.00,1,0.00,35000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',7,4,1,1,'2024-08-13 10:22:03','2024-08-13 10:22:03'),(33,'Criação de Flyer',5000.00,1,70.00,5000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',8,8,1,1,'2024-08-15 11:21:21','2024-08-15 11:21:21'),(34,'Criação de Flyer',5000.00,5,0.00,25000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',8,8,1,1,'2024-08-15 11:21:21','2024-08-15 11:21:21'),(35,'Criação de Flyer',1500.00,6,0.00,9000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',9,9,1,1,'2024-08-15 16:04:20','2024-08-15 16:04:20'),(36,'Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',10,15,1,1,'2024-11-01 12:19:14','2024-11-01 12:19:14'),(37,'Lincença Mensal Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',11,16,1,1,'2024-11-01 12:55:51','2024-11-01 12:55:51'),(38,'Lincença Mensal Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',12,16,1,1,'2024-11-01 13:01:01','2024-11-01 13:01:01'),(39,'Lincença Mensal(Novembro) Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',13,17,1,1,'2024-11-01 13:20:28','2024-11-01 13:20:28'),(40,'Criação de Video',15000.00,1,0.00,15000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',14,19,1,1,'2024-11-05 14:39:50','2024-11-05 14:39:50'),(41,'Taxa de Deslocação',10000.00,1,0.00,10000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',14,18,1,1,'2024-11-05 14:39:50','2024-11-05 14:39:50'),(42,'Actualização de Flyer ou logo marca',5000.00,1,0.00,5000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',15,20,1,1,'2024-11-12 09:51:44','2024-11-12 09:51:44'),(43,'Lincença Mensal(Desembro) Desenvolvimento de Software de RH',150000.00,1,0.00,150000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',16,22,1,1,'2024-11-30 12:12:33','2024-11-30 12:12:33'),(44,'Desenvolvimento de Web Site Com Formulário de Inscrição',192000.00,1,0.00,192000.00,'Sem rentenção na fonte',0,'ISENTO','M00','M00 - Regime Simplificado',0,'Regime Simplificado',17,23,1,1,'2024-11-30 20:04:03','2024-11-30 20:04:03');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_11_000000_create_departamentos_table',1),(2,'2014_10_12_000000_create_enderecos_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2019_08_19_000000_create_failed_jobs_table',1),(6,'2020_08_10_110404_create_contactos_table',1),(7,'2021_01_06_173930_create_tipos_table',1),(8,'2021_01_06_173931_create_categorias_table',1),(9,'2021_01_06_173932_create_impostos_table',1),(10,'2021_01_06_173933_create_fornecedors_table',1),(11,'2021_01_06_173934_create_retencaos_table',1),(12,'2021_01_06_173952_create_artigos_table',1),(13,'2021_07_19_095646_create_clientes_table',1),(14,'2021_07_19_201615_create_empresas_table',1),(15,'2021_08_13_100920_create_formas_pagamentos_table',1),(16,'2021_08_13_100921_create_moedas_table',1),(17,'2021_08_13_100926_create_facturas_table',1),(18,'2021_08_27_084347_create_modo_pagamentos_table',1),(19,'2021_08_30_183409_create_items_table',1),(20,'2021_09_01_075243_create_proformas_table',1),(21,'2021_09_01_075439_create_item_proformas_table',1),(22,'2021_09_01_075937_create_series_table',1),(23,'2021_09_03_132534_create_armazems_table',1),(24,'2021_09_15_130302_create_stocks_table',1),(25,'2021_09_19_125720_create_item_stocks_table',1),(26,'2021_09_20_082519_create_recibos_table',1),(27,'2021_09_20_082623_create_factura_recibos_table',1),(28,'2021_09_20_082635_create_item_factura_recibos_table',1),(29,'2021_09_28_131912_create_motivo_anulacaos_table',1),(30,'2021_09_28_131912_create_tipo_motivo_anulacaos_table',1),(31,'2021_12_22_125550_create_bugs_table',1),(32,'2022_01_23_103308_create_fabricantes_table',1),(33,'2022_01_23_151610_create_condicoes_pagamentos_table',1),(34,'2022_01_25_091808_bancos',1),(35,'2022_02_09_131420_create_permission_tables',1),(36,'2022_09_08_110345_create_nota_creditos_table',1),(37,'2022_09_08_110451_create_nota_debitos_table',1),(38,'2022_09_08_110636_create_item_nota_creditos_table',1),(39,'2022_09_08_110646_create_item_nota_debitos_table',1),(40,'2022_09_11_162939_create_guia_transportes_table',1),(41,'2022_09_11_162954_create_item_guia_transportes_table',1),(42,'2022_09_11_163007_create_guia_remessas_table',1),(43,'2022_09_11_163023_create_item_guia_remessas_table',1),(44,'2022_09_21_140425_create_agts_table',1),(45,'2023_01_23_155122_create_tax_tables_table',1),(46,'2023_01_23_155225_create_saft_audits_table',1),(47,'2023_03_31_105051_create_pais_table',1),(48,'2023_05_07_190801_create_safts_table',1),(49,'2023_07_19_200600_create_receita_despesas_table',1);
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
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_creditos`
--

LOCK TABLES `nota_creditos` WRITE;
/*!40000 ALTER TABLE `nota_creditos` DISABLE KEYS */;
INSERT INTO `nota_creditos` VALUES (3,'NC 2024/1',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-11-01 13:56:04','2024-11-01 00:00:00',1,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,'PA3vyOzPSLzH1rmHAPZ1EcWYJbv93bJytmfI99yQz71c6JlMk1WbaaPudaXgCYxAob87wweV+KHtBh74UAT/7SPYReIMqk6XSxSbpZY9DYywPHNkeE7dqNqAqJsAFrQ1H+ABZIO4M41AfiGoMeVi+TzwVygrU63Dfzoi7n6rpOs=',1,11,'FT 2024/11',2,'Rectificação',1,'Ausência de desconto na fatura','2024-11-01 12:56:04','2024-11-01 12:56:04'),(4,'NC 2024/2',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-01 13:59:12','2024-11-01 00:00:00',1,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,'S+TU7fBvIRcA0VeobqBw8RmEOdIWPgIxrPM4YssBLdzheIenQgU0JutxDy4R4k7McPyE0YOqrnoWdKdkLQQ3MyM0CmKGRdqKaQzlXmDtyYSp3WW6q/yLdYMo1vQrIOz/o6kXbO1rU1pqThhK3fW2X2pY/K1hXKClnEJv0984Elw=',1,10,'FT 2024/10',1,'Anulação',1,'Ausência de desconto na fatura','2024-11-01 12:59:12','2024-11-01 12:59:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proformas`
--

LOCK TABLES `proformas` WRITE;
/*!40000 ALTER TABLE `proformas` DISABLE KEYS */;
INSERT INTO `proformas` VALUES (2,'PP 2024/1',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-05-13 17:29:54','2024-05-13 00:00:00',2,1,1,'Administrador',NULL,27270.00,0.00,0.00,0.00,27270.00,'RBUBmsZh+rtJ7X22u+dqrNcsiaoepWw+P4vMkUVVF+lmng7f/kOvTzJUU3bhCM3dBbg3dtw0/+6Ijn5TKvhhuKOglTZsK4K6HSeiRXlU5eUcdvvgXuXJKjVgm60nAmTM0MUu/WXYSuTCXUcSbkrPRxJk1B7KGzX8t0JgINNQL6Y=',1,0,'2024-05-13 15:29:54','2024-05-14 12:18:38'),(3,'PP 2024/2',3,'Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032','PATRIOTA-ALCACIOAS','2024-05-13 17:30:13','2024-05-13 00:00:00',2,1,1,'Administrador',NULL,45490.00,0.00,0.00,0.00,45490.00,'HsyCwCgUnmNipbCZQauRbR8wBWA/T8MbxopBiY96bLejLNfeXCDJ6qKX5D5xZkfonvR6qG0F6rxnx62o4EuGXYcYxUXBC3gxuo6P23uXkBJkLEaBrgY/01XHFOf17SL19tS8JhHubP799AMSQJZZyuqY+dp1IMmgysbSR8eZz9M=',1,1,'2024-05-13 15:30:13','2024-05-13 15:30:13'),(4,'PP 2024/3',3,'Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032','PATRIOTA-ALCACIOAS','2024-05-13 17:30:38','2024-05-13 00:00:00',2,1,1,'Administrador',NULL,27270.00,0.00,0.00,0.00,27270.00,'SyZV3Q9QS9q0v20zVOnseavYq1sHTe0zfBZUQ21cZxT/wqCisvnTZZ+S0Aze3ZR0SzMiF7VC3X57h8MsoZSf/GxF4Y99VDEURPv/M+fLd3kmyf5udsKuNYY7C26pzX2Tom/sgk/dMcB/wOE3DoiDGwq8l7LOrTzDPkRU4HaGmgU=',1,1,'2024-05-13 15:30:38','2024-05-13 15:30:38'),(5,'PP 2024/4',3,'Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032','PATRIOTA-ALCACIOAS','2024-05-13 17:30:59','2024-05-13 00:00:00',2,1,1,'Administrador',NULL,52640.00,0.00,0.00,0.00,52640.00,'SQmnxTuEgMELOp9gL+YTYeONx/tu4wqULSvVvzGwZGmJN4roAhYYFS2vhsGwNDvg7MVmIscng49NpZIwSaQEs9bXIi+y+4ue8IITNS2HA+7vNAGB6HqK6HMiOHyIxcimNs61Nu9VPHdC6GxUQIXdQqF+eO7Z9ZKV1vRhXljbY8c=',1,0,'2024-05-13 15:30:59','2024-05-28 15:16:45'),(6,'PP 2024/5',4,'Genatoni','9999999999','Kilamba','2024-05-14 17:50:31','2024-05-14 00:00:00',2,1,1,'Administrador',NULL,35000.00,0.00,0.00,0.00,35000.00,'pSCSWns97VduEJBPGPS54Op5KVpQwRfagvstRaynGBs28jljxTxslyYNU4aiHl2QPvgiecTJieHs2qfdhs6a725T744QKYpdP9f5sS+cRViqsKwdVYU7I4aBuxab3emS3XtIBTyoQ/ejnuuMuoCmzn+UDV8Ss16GYQM45ko9zpU=',1,0,'2024-05-14 15:50:31','2024-08-13 10:22:04'),(7,'PP 2024/6',10,'ALUA Investimentos','5001600397','Rui 134 Bairro Projecto nova vida,edifício nr. 183 nr.22 município do Kilamba Kiaxi,Luanda , Angola.','2024-09-03 11:05:52','2024-09-03 00:00:00',2,1,1,'Administrador',NULL,2500000.00,0.00,0.00,0.00,2500000.00,'bptiSBTat7riirAXLPXzrbc6Wz2y0S0GP1cg4AK7VenolebFL3WWTIU8fdt271Puwwolw/JQp/1BnUBULZCIFkPBzCa4m9/yIBO0mas56sGl6Z2D0DstKcwqeML9OPhcAHVZcZT+f2Gwi++qoUGrFjevjzQd7uDrU2gM5hpkug4=',1,1,'2024-09-03 09:05:52','2024-09-03 09:05:52'),(8,'PP 2024/7',10,'ALUA Investimentos','5001600397','Rui 134 Bairro Projecto nova vida,edifício nr. 183 nr.22 município do Kilamba Kiaxi,Luanda , Angola.','2024-09-03 11:06:33','2024-09-03 00:00:00',2,1,1,'Administrador',NULL,4000000.00,0.00,0.00,0.00,4000000.00,'XCuHfgaUjuRhfkKbTNDL805uBcg6HvymdJphFDXGHlMKWdTHnYat0Gp4wUY0Rg5vDJMo9xT1nkxFnXxiOMYms8q0zFXGpBcNky8mE+t8/iCmkQtLFKOyQlL6gdfib0ul/1tSq2FCRfaS6LejvbEaFtZ5KTBoWvWnFpcW6q9XHW0=',1,1,'2024-09-03 09:06:33','2024-09-03 09:06:33'),(9,'PP 2024/8',10,'ALUA Investimentos','5001600397','Rui 134 Bairro Projecto nova vida,edifício nr. 183 nr.22 município do Kilamba Kiaxi,Luanda , Angola.','2024-09-03 11:07:24','2024-09-03 00:00:00',2,1,1,'Administrador',NULL,1000000.00,0.00,0.00,0.00,1000000.00,'h7TXRW6Z1yqshMi+/JMEmRUT9kCAGx3uAEWa3UVm9ESEop4Z5CElTzWR+OOZWN4muDvqqEQeCDoR+Je4kcQ/Q+Otlh1CgLhMYqpRSXUMeo1mDvI+F+JEIGa9mcfani4df12a3y+HoNPIlCHq7up28JqGYBhaqonVFQWuY0fpQ/s=',1,1,'2024-09-03 09:07:24','2024-09-03 09:07:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita_despesas`
--

LOCK TABLES `receita_despesas` WRITE;
/*!40000 ALTER TABLE `receita_despesas` DISABLE KEYS */;
INSERT INTO `receita_despesas` VALUES (1,'0001','Chitali comercial Lda',1,32434.53,'2024-06-21',NULL,'2024-06-21 07:40:54','2024-06-21 07:40:54');
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
  CONSTRAINT `recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (2,'RC 2024/1',2,'AGICRU - AGRO-INDUSTRIA, COMERCIO E PRESTAÇAO DE SERVIÇOS (SU),LDA','5001833103','Malanje','2024-05-14 14:26:55','2024-05-14 00:00:00',2,1,1,'Administrador',NULL,27270.00,0.00,0.00,0.00,27270.00,'ELJh4gmCWlRMS+XtVCN87/cu0uFSIP00dxUvJ12DD6+1b2T9S9SB3fpEqQ3L/twjnrrIy+C7ZB/f8hzNNlsYHxAqYAkXPHPgsPVF0sC6Y2ciDO+t3PNCb8PF7Udtp9FOLBHuJEp3LERZ//nx9gVI4GLDpWpwiBJ9R7flg3YL9U4=',1,'FT 2024/1','2024-05-14 14:18:38',27270.00,0.00,'null.png','2024-05-14 00:00:00',0.00,1,'2024-05-14 12:26:55','2024-05-14 12:26:55'),(3,'RC 2024/2',3,'Arlindo Inglês-Construtura & Prestção de Serviços','003374418LA032','PATRIOTA-ALCACIOAS','2024-05-28 17:17:00','2024-05-28 00:00:00',1,1,1,'Administrador',NULL,52640.00,0.00,0.00,0.00,52640.00,'h+GJ46cCOhS6I/oRuC8pLZNK5Oyldh1DYDDpjoLrs+Y3dqffqX8asF016pvEEtphV5Tvh+RRQBLW4F4wSZMzlsd/OpSdpaNcdJrYUKEhu7IvY8i3nVNdcyMglsbOekDF0BTnWnhVOydw6zK3Wti7+QizkDL7zryeGVxRs8f8qWY=',1,'FT 2024/2','2024-05-28 17:16:45',52640.00,25000.00,'null.png','2024-05-28 00:00:00',0.00,2,'2024-05-28 15:17:00','2024-05-28 15:17:00'),(4,'RC 2024/3',8,'FBI-Soluções & Comunicação','001057606LA034','Luanda','2024-08-12 10:44:28','2024-08-12 00:00:00',2,1,1,'Administrador',NULL,10000.00,0.00,0.00,0.00,10000.00,'iDDM3mv1vtIwrZhiatu7ZghrGWp+PVPMGYMtw112hS6Phh83DqOchN4LhXOpm5JhxyVY4TAoSVrQZ9Mi9pGssLrAhB2ELdrPjxKmKGucQ0CAmyCyyDjnHLMc/yldCJnnxwa4ISfCKoKgiBEj5x6QkJ5z3b7Pr3D7ce4E1r4wZng=',1,'FT 2024/5','2024-08-02 09:11:16',10000.00,5000.00,'null.png','2024-08-12 00:00:00',0.00,5,'2024-08-12 08:44:28','2024-08-12 08:44:28'),(5,'RC 2024/4',4,'Genatoni','9999999999','Kilamba','2024-08-13 12:22:16','2024-08-13 00:00:00',2,1,1,'Administrador',NULL,35000.00,0.00,0.00,0.00,35000.00,'c++4aQtzBMMsTiIYpQW9QcAVYoHJToNC5hLxvHEuHEf62oT5j7TucF5fwbBsmBzLtPvVcIze0YDC1aeaIMOSGcgYxBhNTjdAfGWWwe+5GcfsCzwK6NucV866FXfY1Sp47sqmaSecx9GAXppKDIr0iqgbf2drJZMybwGCVDquwk0=',1,'FT 2024/7','2024-08-13 12:22:03',35000.00,35000.00,'null.png','2024-08-13 00:00:00',0.00,7,'2024-08-13 10:22:16','2024-08-13 10:22:16'),(6,'RC 2024/5',12,'A Quinta Mágica','5000255459','Boa Vida','2024-11-06 13:58:12','2024-11-06 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,'U3EZDecb2LrrwaHeyhfmjcZZlYUFwKFDps0gx7nKSFg/ZUbr7ok0Pno+pMMsJT9PRVaVHlWZIMHw4CBzS4VRvhh+/ZGiM4/ZiJRwY3TLAR23Yc+8SnegbkF9luSMWSgVgbSBZCUVmxsiyQgpOj334JaSXSxkVEPe8cElVgiEGoY=',1,'FT 2024/13','2024-11-01 14:20:28',150000.00,150000.00,'null.png','2024-11-06 00:00:00',0.00,13,'2024-11-06 12:58:13','2024-11-06 12:58:13'),(7,'RC 2024/6',12,'A Quinta Mágica','5000255459','Boa Vida','2024-12-02 16:23:36','2024-12-02 00:00:00',2,1,1,'Administrador',NULL,192000.00,0.00,0.00,0.00,192000.00,'Z3owMZBpBQ5xPtIWr5kCsSJ4ZTdL6ddyk2aLoYrFiYmi9bPYLIjCkxvksXCfLTmcsfs8VL+SDOymMcVG4eeXiRUpPCKKv4AeG09S2kGU2gUEtEiU6IJO3pg6sVmm7plAQ3HGedQqPZIMMGBb13cRiS138nFta3FfRGj2rY1GZfU=',1,'FT 2024/17','2024-11-30 21:04:03',192000.00,150000.00,'null.png','2024-12-02 00:00:00',0.00,17,'2024-12-02 15:23:37','2024-12-02 15:23:37'),(8,'RC 2024/7',12,'A Quinta Mágica','5000255459','Boa Vida','2024-12-02 16:29:48','2024-12-02 00:00:00',2,1,1,'Administrador',NULL,150000.00,0.00,0.00,0.00,150000.00,'PlByEyRcsixmpatZq27fvNo6LYohLRV7j0Ia+ejLdzA8cH5nOSPLPIVBtVdnpPio/kQbXEs+9SrsiOSejr2mhSoJ/5z4wP13QiXhLw4WYbgzR8ZTUzqURte+wYUgD7dQfCnQwCdPJxgRWphiEPNOR8fTkVGHV3HLL4V2yJV4yls=',1,'FT 2024/16','2024-11-30 13:12:32',150000.00,150000.00,'null.png','2024-12-02 00:00:00',0.00,16,'2024-12-02 15:29:48','2024-12-02 15:29:48');
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
INSERT INTO `role_has_permissions` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,1),(2,2),(2,3),(2,5),(3,1),(3,2),(3,3),(3,5),(4,1),(4,2),(4,3),(4,5),(5,1),(5,2),(5,3),(5,5),(6,1),(6,2),(6,3),(6,5),(7,1),(7,2),(7,5),(8,1);
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
INSERT INTO `roles` VALUES (1,'Administrador','web',NULL,NULL),(2,'Gestor','web',NULL,NULL),(3,'Operador','web',NULL,NULL),(4,'Operador POS','web',NULL,NULL),(5,'Gonçalves Nhanga','web','2024-08-20 11:03:44','2024-08-20 11:03:44');
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
INSERT INTO `series` VALUES (1,'0001','PP 2024','proforma','Mock Turtle.',1,NULL,NULL),(2,'0002','FT 2024','factura','ALL RETURNED.',1,NULL,NULL),(3,'0003','FR 2024','factura-recibo','Why, I do it.',1,NULL,NULL),(4,'0004','RC 2024','recibo','She generally gave.',1,NULL,NULL),(5,'0005','NC 2024','nota-credito','Alice had.',1,NULL,NULL),(6,'0006','ND 2024','nota-debito','I want to go and.',1,NULL,NULL),(7,'0007','GT 2024','guia-transporte','Oh, how I wish.',1,NULL,NULL),(8,'0008','GR 2024','guia-remessa','Alice thought.',1,NULL,NULL),(9,'0009','RD 2024','receita-despesa','Queen. \'I.',1,NULL,NULL),(10,'00010','SC 2024','stock','The Cat seemed to.',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrador','goncalves.nhanga@gmail.com',1,'$2y$10$cjHVQu9pcQ7hZFjNzYAwdOd.FasID92Sg.knRt5WZ7drf9yDy/Ngm','default.jpg',1,0,NULL,NULL,'2024-11-30 13:46:58'),(3,'Jonas Dembi','jonas.dembi@hotmail.com',2,'$2y$10$dQn3bOOAa0EKTQ7Vv40azOf0SVCxelAGTDPCKEjHN23G7HrzEjNX.','default.jpg',1,1,NULL,'2024-08-20 11:03:07','2024-11-30 13:42:01');
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

-- Dump completed on 2024-12-03 21:50:29
