-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ofic_app
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `cpf` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `cep` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `address_number` varchar(191) DEFAULT NULL,
  `complement` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Gonçalves Nhanga','45689765433','92481572978','24498765','PATRIOTA-ALCACIOAS','435','edfgh','LUANDA','AC',NULL,'2024-02-22 08:14:56','2024-02-22 08:16:00'),(2,'Angelina Manuela de Sousa','785444333','24930840944','86564434','luanda','987654434','kkuit6ujyt','Luanda','AC','2024-08-20 12:06:43','2024-08-20 12:05:34','2024-08-20 12:06:32'),(3,'Angelina Manuela de Sousa','234567780','24930840944','87656765','luanda','345446765','54534gfffffffhg','Luanda','AC',NULL,'2024-08-20 12:08:14',NULL),(4,'Angelina de Sousa','34877673600','99999999999','34555554','Benfica-Dona Xepa','02','vip','Luanda','AC',NULL,'2024-08-20 12:12:19',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_queues`
--

DROP TABLE IF EXISTS `cms_email_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(191) DEFAULT NULL,
  `email_from_email` varchar(191) DEFAULT NULL,
  `email_from_name` varchar(191) DEFAULT NULL,
  `email_cc_email` varchar(191) DEFAULT NULL,
  `email_subject` varchar(191) DEFAULT NULL,
  `email_content` text DEFAULT NULL,
  `email_attachments` text DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_queues`
--

LOCK TABLES `cms_email_queues` WRITE;
/*!40000 ALTER TABLE `cms_email_queues` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_email_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_email_templates`
--

DROP TABLE IF EXISTS `cms_email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `from_name` varchar(191) DEFAULT NULL,
  `from_email` varchar(191) DEFAULT NULL,
  `cc_email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_email_templates`
--

LOCK TABLES `cms_email_templates` WRITE;
/*!40000 ALTER TABLE `cms_email_templates` DISABLE KEYS */;
INSERT INTO `cms_email_templates` VALUES (1,'Modelo de e-mail Esqueceu a senha?','forgot_password_backend',NULL,'<p>Olá,</p><p>Alguém solicitado esqueceu a senha, aqui está sua nova senha : </p><p>[password]</p><p><br></p><p>--</p><p>Saudação,</p><p>Admin</p>','[password]','System','system@oficina.com',NULL,'2022-01-27 20:53:40',NULL),(2,'Modelo de e-mail Esqueceu a senha?','forgot_password_backend',NULL,'<p>Olá,</p><p>Alguém solicitado esqueceu a senha, aqui está sua nova senha : </p><p>[password]</p><p><br></p><p>--</p><p>Saudação,</p><p>Admin</p>','[password]','System','system@oficina.com',NULL,'2022-01-27 20:58:54',NULL),(3,'Modelo de e-mail Esqueceu a senha?','forgot_password_backend',NULL,'<p>Olá,</p><p>Alguém solicitado esqueceu a senha, aqui está sua nova senha : </p><p>[password]</p><p><br></p><p>--</p><p>Saudação,</p><p>Admin</p>','[password]','System','system@oficina.com',NULL,'2022-01-27 21:04:32',NULL);
/*!40000 ALTER TABLE `cms_email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_logs`
--

DROP TABLE IF EXISTS `cms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) DEFAULT NULL,
  `useragent` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_logs`
--

LOCK TABLES `cms_logs` WRITE;
/*!40000 ALTER TABLE `cms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus`
--

DROP TABLE IF EXISTS `cms_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'url',
  `path` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus`
--

LOCK TABLES `cms_menus` WRITE;
/*!40000 ALTER TABLE `cms_menus` DISABLE KEYS */;
INSERT INTO `cms_menus` VALUES (1,'Clientes','Route','AdminClientsControllerGetIndex','normal','fa fa-users',0,1,0,1,1,'2022-01-27 20:53:40',NULL),(2,'Veiculos','Route','AdminVehiclesControllerGetIndex','normal','fa fa-car',0,1,0,1,2,'2022-01-27 20:53:40','2024-02-14 06:46:28'),(3,'Fornecedores','Route','AdminProvidersControllerGetIndex','normal','fa fa-truck',0,1,0,1,3,'2022-01-27 20:53:40',NULL),(4,'Produtos','Route','AdminProductsControllerGetIndex','normal','fa fa-cubes',0,1,0,1,4,'2022-01-27 20:53:40',NULL),(5,'Serviços','Route','AdminServicesControllerGetIndex','normal','fa fa-sliders',0,1,0,1,5,'2022-01-27 20:53:40',NULL),(6,'Pedidos','Route','AdminOrdersControllerGetIndex','normal','fa fa-shopping-cart',0,1,0,1,6,'2022-01-27 20:53:40',NULL);
/*!40000 ALTER TABLE `cms_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_menus_privileges`
--

DROP TABLE IF EXISTS `cms_menus_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_menus_privileges`
--

LOCK TABLES `cms_menus_privileges` WRITE;
/*!40000 ALTER TABLE `cms_menus_privileges` DISABLE KEYS */;
INSERT INTO `cms_menus_privileges` VALUES (1,1,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,1,1),(9,3,1),(10,4,1),(11,5,1),(12,6,1),(13,1,1),(15,3,1),(16,4,1),(17,5,1),(18,6,1),(20,2,1);
/*!40000 ALTER TABLE `cms_menus_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_moduls`
--

DROP TABLE IF EXISTS `cms_moduls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_moduls`
--

LOCK TABLES `cms_moduls` WRITE;
/*!40000 ALTER TABLE `cms_moduls` DISABLE KEYS */;
INSERT INTO `cms_moduls` VALUES (1,'Clientes','fa fa-user','clients','clients','AdminClientsController',0,1,'2022-01-27 20:53:40',NULL,NULL),(2,'Fornecedores','fa fa-truck','providers','providers','AdminProvidersController',0,1,'2022-01-27 20:53:40',NULL,NULL),(3,'Produtos','fa fa-cubes','products','products','AdminProductsController',0,1,'2022-01-27 20:53:40',NULL,NULL),(4,'Veículos','fa fa-car','vehicles','vehicles','AdminVehiclesController',0,1,'2022-01-27 20:53:40',NULL,NULL),(5,'Serviços','fa fa-sliders','services','services','AdminServicesController',0,1,'2022-01-27 20:53:40',NULL,NULL),(6,'Pedidos','fa fa-shopping-cart','orders','orders','AdminOrdersController',0,1,'2022-01-27 20:53:40',NULL,NULL),(7,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2022-01-27 20:53:40',NULL,NULL),(8,'Privilégios','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2022-01-27 20:53:40',NULL,NULL),(9,'Gestão de funcionários','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2022-01-27 20:53:40',NULL,NULL),(10,'Gestão de menus','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2022-01-27 20:53:40',NULL,NULL),(11,'Configurações','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2022-01-27 20:53:40',NULL,NULL),(12,'Modelos de e-mail','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2022-01-27 20:53:40',NULL,NULL);
/*!40000 ALTER TABLE `cms_moduls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges`
--

DROP TABLE IF EXISTS `cms_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges`
--

LOCK TABLES `cms_privileges` WRITE;
/*!40000 ALTER TABLE `cms_privileges` DISABLE KEYS */;
INSERT INTO `cms_privileges` VALUES (1,'Super Administrator',1,'2022-01-27 20:53:40',NULL),(2,'Gonçalves Nhanga',1,NULL,NULL),(3,'Gonçalves 1',0,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_privileges_roles`
--

DROP TABLE IF EXISTS `cms_privileges_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_privileges_roles`
--

LOCK TABLES `cms_privileges_roles` WRITE;
/*!40000 ALTER TABLE `cms_privileges_roles` DISABLE KEYS */;
INSERT INTO `cms_privileges_roles` VALUES (1,1,1,1,1,1,1,1,'2022-01-27 20:53:40',NULL),(2,1,1,1,1,1,1,2,'2022-01-27 20:53:40',NULL),(3,1,1,1,1,1,1,3,'2022-01-27 20:53:40',NULL),(4,1,1,1,1,1,1,4,'2022-01-27 20:53:40',NULL),(5,1,1,1,1,1,1,5,'2022-01-27 20:53:40',NULL),(6,1,1,1,1,1,1,6,'2022-01-27 20:53:40',NULL),(7,1,1,1,1,1,1,7,'2022-01-27 20:53:40',NULL),(8,0,1,1,1,1,1,8,'2022-01-27 20:53:40',NULL),(9,1,1,1,1,1,1,9,'2022-01-27 20:53:40',NULL),(10,1,1,1,1,1,1,10,'2022-01-27 20:53:40',NULL),(11,1,1,1,1,1,1,11,'2022-01-27 20:53:40',NULL),(12,1,1,1,1,1,1,12,'2022-01-27 20:53:40',NULL),(13,1,0,1,1,1,3,6,NULL,NULL);
/*!40000 ALTER TABLE `cms_privileges_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_input_type` varchar(191) DEFAULT NULL,
  `dataenum` varchar(191) DEFAULT NULL,
  `helper` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(191) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (1,'email_sender','support@oficina.com','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','Rementente'),(2,'smtp_driver','smtp','select','smtp,mail,sendmail',NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','Mail Driver'),(3,'smtp_host','smtp.mailtrap.io','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','SMTP Host'),(4,'smtp_port','2525','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','SMTP Porta'),(5,'smtp_username','','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','SMTP Usuário'),(6,'smtp_password','','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações de E-mail','SMTP Senha'),(7,'appname','Oficina Mecânica Átomo','text',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações do Aplicativo','Nome da Oficina'),(8,'logo','uploads/2024-02/d297330bd0321b316796a8595c32f05a.png','upload_image',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações do Aplicativo','Logo'),(9,'favicon','uploads/2024-02/dd9966638c0f59551fb41f303705c015.png','upload_image',NULL,NULL,'2022-01-27 20:53:40',NULL,'Configurações do Aplicativo','Favicon');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistic_components`
--

DROP TABLE IF EXISTS `cms_statistic_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(191) DEFAULT NULL,
  `component_name` varchar(191) DEFAULT NULL,
  `area_name` varchar(55) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistic_components`
--

LOCK TABLES `cms_statistic_components` WRITE;
/*!40000 ALTER TABLE `cms_statistic_components` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistic_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_statistics`
--

DROP TABLE IF EXISTS `cms_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_statistics`
--

LOCK TABLES `cms_statistics` WRITE;
/*!40000 ALTER TABLE `cms_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cpf` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `cep` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `address_number` varchar(191) DEFAULT NULL,
  `complement` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (1,'Super Admin','uploads/1/2022-01/hitman_agent_hd_wallpaper_preview.jpg','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,'admin@admin.com',NULL,'$2y$10$9QN//lqQpuKKyJBNZIWyseau9yDifeInT67gMiZeWWI/KsMjR1aY.',1,NULL,'2022-01-27 20:53:40','2022-01-27 21:24:54','Active');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_08_07_151210_add_table_cms_logs',1),(2,'2016_08_07_151211_add_details_cms_logs',1),(3,'2016_08_07_152014_add_table_cms_privileges',1),(4,'2016_08_07_152214_add_table_cms_privileges_roles',1),(5,'2016_08_07_152320_add_table_cms_settings',1),(6,'2016_08_07_152421_add_table_cms_users',1),(7,'2016_08_07_154624_add_table_cms_menus_privileges',1),(8,'2016_08_07_154624_add_table_cms_moduls',1),(9,'2016_08_17_225409_add_status_cms_users',1),(10,'2016_09_04_033706_add_table_cms_email_queues',1),(11,'2016_09_16_035347_add_group_setting',1),(12,'2016_09_16_045425_add_label_setting',1),(13,'2016_11_14_141657_create_cms_menus',1),(14,'2016_11_15_132350_create_cms_email_templates',1),(15,'2016_11_15_190410_create_cms_statistics',1),(16,'2016_11_17_102740_create_cms_statistic_components',1),(17,'2017_06_06_164501_add_deleted_at_cms_moduls',1),(18,'2019_11_23_032000_create_table_clients',1),(19,'2019_11_23_033142_create_table_providers',1),(20,'2019_11_23_033201_create_table_services',1),(21,'2019_11_23_033306_create_table_vehicles',1),(22,'2019_11_23_033754_create_table_products',1),(23,'2019_11_23_034943_create_table_orders',1),(24,'2019_11_23_035406_create_table_orders_details',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment` varchar(191) DEFAULT NULL,
  `situation` varchar(191) NOT NULL DEFAULT 'Aberto',
  `observation` text DEFAULT NULL,
  `price_services` decimal(8,2) DEFAULT NULL,
  `total_items` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `services_id` int(10) unsigned DEFAULT NULL,
  `clients_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_services_id_foreign` (`services_id`),
  KEY `orders_clients_id_foreign` (`clients_id`),
  CONSTRAINT `orders_clients_id_foreign` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `orders_services_id_foreign` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Cartão de Crédito','Concretizado',NULL,4500.00,2000.00,6500.00,2,1,NULL,'2024-02-22 08:22:36',NULL),(2,'Cartão de Crédito','Concretizado',NULL,1500.00,24000.00,25500.00,1,1,NULL,'2024-08-21 10:45:07',NULL),(3,'Cartão de Crédito','Concretizado','salves',NULL,2000.00,3500.00,1,1,NULL,'2024-08-21 10:46:45',NULL),(4,'Cartão de Crédito','Concretizado','salves',NULL,2000.00,3500.00,1,1,NULL,'2024-08-21 10:46:45',NULL),(5,'Cartão de Crédito','Concretizado','salves',NULL,2000.00,3500.00,1,1,NULL,'2024-08-21 10:46:46',NULL),(6,'Cartão de Crédito','Concretizado','salves',NULL,2000.00,3500.00,1,1,NULL,'2024-08-21 10:46:46',NULL),(7,'Cartão de Crédito','Concretizado','salves',NULL,2000.00,3500.00,1,1,NULL,'2024-08-21 10:46:46',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_details`
--

DROP TABLE IF EXISTS `orders_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(8,2) NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT 0,
  `subtotal` decimal(8,2) NOT NULL,
  `products_id` int(10) unsigned NOT NULL,
  `orders_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_details_products_id_foreign` (`products_id`),
  KEY `orders_details_orders_id_foreign` (`orders_id`),
  CONSTRAINT `orders_details_orders_id_foreign` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `orders_details_products_id_foreign` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_details`
--

LOCK TABLES `orders_details` WRITE;
/*!40000 ALTER TABLE `orders_details` DISABLE KEYS */;
INSERT INTO `orders_details` VALUES (1,2000.00,1,2000.00,1,1,NULL,NULL),(2,2000.00,12,24000.00,1,2,NULL,NULL),(3,2000.00,1,2000.00,1,3,NULL,NULL),(4,2000.00,1,2000.00,1,4,NULL,NULL),(5,2000.00,1,2000.00,1,5,NULL,NULL),(6,2000.00,1,2000.00,1,6,NULL,NULL),(7,2000.00,1,2000.00,1,7,NULL,NULL);
/*!40000 ALTER TABLE `orders_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `barcode` varchar(191) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `providers_id` int(10) unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_providers_id_foreign` (`providers_id`),
  CONSTRAINT `products_providers_id_foreign` FOREIGN KEY (`providers_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tapetes','salves',2000.00,NULL,NULL,NULL,1,NULL,'2024-02-22 08:20:46',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `cnpj` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `cep` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `address_number` varchar(191) DEFAULT NULL,
  `complement` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `url_site` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'Gonçalves Nhanga','98765467890876','92481572912','24498987','PATRIOTA-ALCACIOAS','4344444','2345432','LUANDA','GO',NULL,NULL,'2024-02-22 08:19:29',NULL);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Reparos Automóveis',NULL,NULL,'2022-01-27 20:53:40',NULL),(2,'Troca de Óleo',NULL,NULL,'2022-01-27 20:53:40',NULL),(3,'Revenda de Produtos',NULL,NULL,'2022-01-27 20:53:40',NULL),(4,'Reparos Automoveis',NULL,NULL,'2022-01-27 20:53:40',NULL),(5,'Alinhamento e Balaceamento',NULL,NULL,'2022-01-27 20:53:40',NULL),(6,'Freios',NULL,NULL,'2022-01-27 20:53:40',NULL),(7,'Suspensão',NULL,NULL,'2022-01-27 20:53:40',NULL),(8,'Injeção Eletrônica',NULL,NULL,'2022-01-27 20:53:40',NULL),(9,'Sistema Elétrico',NULL,NULL,'2022-01-27 20:53:40',NULL);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(191) NOT NULL,
  `brand` varchar(191) NOT NULL,
  `plate` varchar(191) NOT NULL,
  `year` char(4) DEFAULT NULL,
  `km_current` double DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `type_fuel` varchar(191) DEFAULT NULL,
  `clients_id` int(10) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicles_clients_id_foreign` (`clients_id`),
  CONSTRAINT `vehicles_clients_id_foreign` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'12','v8','LDA6789MAE','2024',18002.5,'Prata','Diesel',1,NULL,'2024-02-22 08:17:39',NULL),(2,'BOLINHA','Toyota','LDA4510E2','2002',345634.5,'Vermelho','Diesel',3,NULL,'2024-08-20 13:32:11',NULL);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 21:58:30
