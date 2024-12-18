-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: demo_lelu
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
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coaches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(11) NOT NULL,
  `flag_url` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `matches_played` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `draws` int(11) NOT NULL,
  `losses` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (27,56,'Bibiana Luanda','1999-08-01',44,'flags/1726934809_flag.png','photos/1726934809_photo.jpg',11,11,11,11,'2024-09-21 15:06:49','2024-09-21 15:06:49'),(28,52,'Filipe Nzanza Tertez','1999-08-20',40,'flags/1727448295_flag.png','photos/1727097833_photo.png',11,11,11,11,'2024-09-23 12:23:53','2024-09-27 13:44:55'),(42,62,'Joaquim Finda Mozer','1999-08-20',40,'flags/1727699688_flag.png','photos/1727699688_photo.jpg',2,2,2,2,'2024-09-30 11:34:48','2024-09-30 11:34:48'),(43,70,'Luena Dudas','2000-08-08',44,'flags/1727864567_flag.png','photos/1727864567_photo.jpg',22,22,22,22,'2024-10-02 09:22:48','2024-10-02 09:22:48'),(45,53,'Pedro Soares','1999-08-20',44,'flags/1727952884_flag.png','photos/1727952884_photo.jpg',11,11,11,11,'2024-10-03 09:54:44','2024-10-03 09:54:44'),(46,50,'Valdimiro Domingos','1981-08-20',43,'flags/1727955929_flag.png','photos/1727955929_photo.jpg',2,2,2,2,'2024-10-03 10:45:29','2024-10-03 10:45:29');
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competitions`
--

DROP TABLE IF EXISTS `competitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competitions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competitions`
--

LOCK TABLES `competitions` WRITE;
/*!40000 ALTER TABLE `competitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `competitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `fixtures`
--

DROP TABLE IF EXISTS `fixtures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fixtures` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `league_id` bigint(20) unsigned NOT NULL,
  `team_id` bigint(20) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `opponent_team_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fixtures_league_id_foreign` (`league_id`),
  KEY `fixtures_team_id_foreign` (`team_id`),
  KEY `fixtures_opponent_team_id_foreign` (`opponent_team_id`),
  CONSTRAINT `fixtures_league_id_foreign` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fixtures_opponent_team_id_foreign` FOREIGN KEY (`opponent_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fixtures_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixtures`
--

LOCK TABLES `fixtures` WRITE;
/*!40000 ALTER TABLE `fixtures` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixtures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leagues`
--

DROP TABLE IF EXISTS `leagues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leagues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `season` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leagues`
--

LOCK TABLES `leagues` WRITE;
/*!40000 ALTER TABLE `leagues` DISABLE KEYS */;
/*!40000 ALTER TABLE `leagues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `home_team_id` bigint(20) unsigned NOT NULL,
  `away_team_id` bigint(20) unsigned NOT NULL,
  `date` datetime NOT NULL,
  `home_team_score` int(11) DEFAULT NULL,
  `away_team_score` int(11) DEFAULT NULL,
  `stadium` varchar(255) NOT NULL,
  `league_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matches_home_team_id_foreign` (`home_team_id`),
  KEY `matches_away_team_id_foreign` (`away_team_id`),
  KEY `matches_league_id_foreign` (`league_id`),
  CONSTRAINT `matches_away_team_id_foreign` FOREIGN KEY (`away_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matches_home_team_id_foreign` FOREIGN KEY (`home_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `matches_league_id_foreign` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_08_14_092425_teams',2),(6,'2024_08_14_092459_players',3),(7,'2024_08_14_092542_leagues',3),(8,'2024_08_14_092724_competitions',3),(9,'2024_08_14_094106_matches',3),(10,'2024_08_14_094144_player_statistics',3),(11,'2024_08_14_094200_team_statistics',3),(12,'2024_08_14_094224_fixtures',3),(13,'2024_08_14_094243_transfers',3),(14,'2024_08_14_094320_contracts',3),(15,'2024_08_14_095311_drop_matches_table',3),(16,'2024_08_14_105650_change_founded_year_type_in_teams_table',3),(17,'2024_08_29_151134_create_player_characteristics_table',3),(18,'2024_09_03_115723_add_role_to_users_table',3),(19,'2024_09_04_135927_create_coaches_table',4),(20,'2024_09_13_161424_add_type_to_users_table',5),(21,'2024_09_13_161454_add_role_to_users_table',5),(22,'2024_09_30_182457_create_tactics_table',5),(23,'2024_09_30_192154_add_team_id_to_tactics_table',6),(24,'2024_09_30_195459_make_image_nullable_in_tactics_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_characteristics`
--

DROP TABLE IF EXISTS `player_characteristics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_characteristics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `number_games` varchar(255) NOT NULL DEFAULT '0',
  `goals` varchar(255) DEFAULT '0',
  `assists` varchar(255) DEFAULT NULL,
  `yellow_cards` varchar(255) DEFAULT '0',
  `red_cards` varchar(255) DEFAULT '0',
  `pass_accuracy` varchar(5) DEFAULT '0',
  `tackles` varchar(255) DEFAULT '0',
  `current_club` varchar(255) DEFAULT NULL,
  `previous_club` varchar(255) DEFAULT NULL,
  `transfer_date` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_characteristics`
--

LOCK TABLES `player_characteristics` WRITE;
/*!40000 ALTER TABLE `player_characteristics` DISABLE KEYS */;
INSERT INTO `player_characteristics` VALUES (1,1,'2','5','2','0','1','10','1','2','1','2010/10/20','2024-08-29 14:45:16','2024-08-29 14:45:16');
/*!40000 ALTER TABLE `player_characteristics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_statistics`
--

DROP TABLE IF EXISTS `player_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_statistics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `match_id` bigint(20) unsigned NOT NULL,
  `goals` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `minutes_played` int(11) NOT NULL DEFAULT 0,
  `yellow_cards` int(11) NOT NULL DEFAULT 0,
  `red_cards` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `player_statistics_player_id_foreign` (`player_id`),
  KEY `player_statistics_match_id_foreign` (`match_id`),
  CONSTRAINT `player_statistics_match_id_foreign` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `player_statistics_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_statistics`
--

LOCK TABLES `player_statistics` WRITE;
/*!40000 ALTER TABLE `player_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_birth` date NOT NULL,
  `position` varchar(50) NOT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `image_position` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `players_team_id_foreign` (`team_id`),
  CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (28,50,'J.','Toro','1999-08-19','Defesa','65','1.60','Portugal','flags/1726835344_flag.png','photos/1726835344_photo.jpg','2024-09-20 11:29:04','2024-09-20 11:29:04'),(30,50,'Ediie','Murph','1988-08-08','Defesa','76','1.60','Portugal','flags/1726835567_flag.png','photos/1726835567_photo.jpg','2024-09-20 11:32:47','2024-09-20 11:32:47'),(31,50,'H.','Marques2','1990-08-08','Goleiro','65','1','Angola','flags/1726837422_flag.png','photos/1726835609_photo.jpg','2024-09-20 11:33:29','2024-09-20 12:10:24'),(34,50,'Mario','Domingos','1999-08-20','Atacante','65','1.7','Angola','flags/1726840145_flag.png','photos/1726840145_photo.jpg','2024-09-20 12:49:05','2024-09-20 12:49:05'),(35,50,'Eddie','styfler','2000-09-02','Atacante','76','1','Angola','flags/1727784878_flag.png','photos/1726841245_photo.jpg','2024-09-20 13:07:25','2024-10-02 10:39:32'),(42,52,'Bobo','Ugenda','1999-09-20','Defesa','60','1.60','Angola','flags/1727446196_flag.png','photos/1727446196_photo.jpg','2024-09-27 13:09:56','2024-09-27 13:09:56'),(44,52,'Venicios','Domingos','1999-02-20','atacante','11','11','Angola','flags/1727451418_flag.png','photos/1727694637_photo.jpg','2024-09-27 14:36:40','2024-09-30 10:10:37'),(45,62,'Mário','Dario','2000-08-08','Goleiro','75','1.70','Angola','flags/1727699923_flag.png','photos/1727699923_photo.jpg','2024-09-30 11:38:43','2024-09-30 11:38:43'),(46,62,'Djos','Mpeko','1999-08-20','Defesa','70','2.70','Angola','flags/1727700208_flag.png','photos/1727700208_photo.jpg','2024-09-30 11:43:28','2024-09-30 11:43:28'),(47,62,'T.','Mputu','1999-02-02','Atacante','70','1.60','Angola','flags/1727700282_flag.png','photos/1727700282_photo.jpg','2024-09-30 11:44:42','2024-09-30 11:44:42'),(48,62,'Hugo','Firmino','2002-08-08','Atacante','70','1.60','Angola','flags/1727700494_flag.png','photos/1727700494_photo.jpg','2024-09-30 11:48:14','2024-09-30 11:48:14'),(49,70,'Vivian','Murph','1000-08-20','Atacante','11','11','Angola','flags/1727864689_flag.png','photos/1727864689_photo.jpg','2024-10-02 09:24:49','2024-10-02 09:24:49'),(50,70,'Gonçalves','Nhanga','2020-08-20','Defesa','70','1.60','Angola','flags/1727864788_flag.png','photos/1727864788_photo.jpg','2024-10-02 09:26:28','2024-10-02 09:26:28'),(54,50,'Miguel','Pedro','1999-08-20','Atacante','70','1.60','Angola','flags/1727952172_flag.png','photos/1727952172_photo.jpg','2024-10-03 09:42:52','2024-10-03 09:42:52'),(56,53,'Benson','Manuel','1999-08-20','Atacante','70','1.70','Portugal','flags/1727952733_flag.png','photos/1727952733_photo.jpg','2024-10-03 09:52:13','2024-10-03 09:52:13'),(57,53,'Gelson','Dala','1999-08-20','Atacante','69','1.60','Angola','flags/1727953006_flag.png','photos/1727953006_photo.jpg','2024-10-03 09:56:46','2024-10-03 09:56:46');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tactics`
--

DROP TABLE IF EXISTS `tactics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tactics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `tactic_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tactics_team_id_foreign` (`team_id`),
  CONSTRAINT `tactics_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tactics`
--

LOCK TABLES `tactics` WRITE;
/*!40000 ALTER TABLE `tactics` DISABLE KEYS */;
INSERT INTO `tactics` VALUES (1,NULL,'Estratégia Ofensiva','media/13086385-escalacoes-de-jogadores-de-futebol-formacao-4-2-3-1-meio-estadio-de-futebol-vetor.jpg','Pressão Lateral','5-4-1','2024-09-30 18:55:51','2024-09-30 18:55:51'),(2,NULL,'Estratégia Defensiva',NULL,'Pressão Lateral-1','5-4-1-2','2024-09-30 19:21:02','2024-09-30 19:21:02'),(3,NULL,'Estratégia Defensiva',NULL,'Pressão Lateral-1','4-3-2-1','2024-09-30 19:23:02','2024-09-30 19:23:02'),(4,NULL,'Estratégia Ofensiva',NULL,'Pressão Lateral','4-3-2-1','2024-09-30 19:40:31','2024-09-30 19:40:31');
/*!40000 ALTER TABLE `tactics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_statistics`
--

DROP TABLE IF EXISTS `team_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_statistics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `match_id` bigint(20) unsigned NOT NULL,
  `goals_scored` int(11) NOT NULL DEFAULT 0,
  `goals_conceded` int(11) NOT NULL DEFAULT 0,
  `possession` double(8,2) NOT NULL DEFAULT 0.00,
  `shots` int(11) NOT NULL DEFAULT 0,
  `shots_on_target` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_statistics_team_id_foreign` (`team_id`),
  KEY `team_statistics_match_id_foreign` (`match_id`),
  CONSTRAINT `team_statistics_match_id_foreign` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `team_statistics_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_statistics`
--

LOCK TABLES `team_statistics` WRITE;
/*!40000 ALTER TABLE `team_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `short_name` varchar(50) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `founded_year` date DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (50,NULL,'Petro de Luanda','Petro','1726241758.png','2222-02-22','11 de Novembro','Angola','2024-09-13 14:35:58','2024-09-13 14:35:58'),(52,NULL,'Primeiro De Agosto','PRI','1726241818.png','2222-02-22','11 de Novembro','Angola','2024-09-13 14:36:58','2024-09-13 14:36:58'),(53,NULL,'Angola','ANG','1726241860.png','1965-08-01','11 de Novembro','Angola','2024-09-13 14:37:39','2024-09-13 14:37:40'),(54,NULL,'Sagrada esperança','Se','1726241904.png','1985-08-20','11 de Novembro','Angola','2024-09-13 14:38:24','2024-09-13 14:38:24'),(55,NULL,'Interclube','inter','1726687523.png','1999-08-20','1º De Maio','Angola','2024-09-18 18:25:11','2024-09-18 18:25:23'),(56,NULL,'CD Lunda Sul','CD','1726687575.png','1111-11-11','Lubango','Angola','2024-09-18 18:26:15','2024-09-18 18:26:15'),(62,NULL,'Kabuscorp Palanca','Kabuscorp','1725887748.png','2222-02-22','11 de Novembro','Angola','2024-09-19 13:15:44','2024-09-19 13:15:44'),(63,NULL,'Cambondo','Cb','1725646488.png','1999-08-20','11 de Novembro','Angola','2024-09-20 12:44:29','2024-09-20 12:44:29'),(70,NULL,'Academica do Lobito','AL','1727779802.png','2222-02-22','11 de Novembro','Angola','2024-10-01 09:50:02','2024-10-01 09:50:02'),(71,NULL,'Inimigos do fum','Bif','1728402403.jpeg','2023-04-08','Mix center','Angola','2024-10-08 13:46:43','2024-10-08 13:46:44'),(72,NULL,'Inimigos do fim','Bif','1728402474.jpeg','2024-10-08','Mix center','Angola','2024-10-08 13:47:54','2024-10-08 13:47:54'),(73,NULL,'Academica do Lobito','AAAA','1728465184.jpg','2222-02-22','AAAAAAA','Angola','2024-10-09 07:13:04','2024-10-09 07:13:04'),(74,NULL,'Sedalima, Lda','Ulima2','1729252287.png','2024-10-17','Ulima','Angola','2024-10-18 09:51:27','2024-10-18 09:51:27');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` bigint(20) unsigned NOT NULL,
  `from_team_id` bigint(20) unsigned NOT NULL,
  `to_team_id` bigint(20) unsigned NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_fee` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transfers_player_id_foreign` (`player_id`),
  KEY `transfers_from_team_id_foreign` (`from_team_id`),
  KEY `transfers_to_team_id_foreign` (`to_team_id`),
  CONSTRAINT `transfers_from_team_id_foreign` FOREIGN KEY (`from_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transfers_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transfers_to_team_id_foreign` FOREIGN KEY (`to_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfers`
--

LOCK TABLES `transfers` WRITE;
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('team','user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'ANGELINA DE SOUSA','angelina@gmail.com',NULL,'$2y$12$7Wwa9Z6N8heCwzzuwEU2wuJLnfmmI4G25eE87V2JyeoQS361i7jxS',NULL,'team','2024-09-16 15:35:55','2024-09-16 15:35:55'),(13,'Antonio Tomás','antonio@gmail.com',NULL,'$2y$12$Vi7aHRpY80UKMVPYHxQaROuvrZgSq.VqhJ7/GRmBzYhqIEOL9Emgm',NULL,'team','2024-09-25 14:52:35','2024-09-25 14:52:35'),(14,'Gonçalvesm Nhanga','salves@gmail.com',NULL,'$2y$12$sW0fmeIjkVs54/TsWEJZVeJY/wNcIs0DelFVi55FOOqiCSJhdtnwC',NULL,'team','2024-10-01 08:53:19','2024-10-01 08:53:19'),(16,'Valdimiro Domingos','valdieldstyfler@gmail.com',NULL,'$2y$12$NBTcWhI7SjiMM3O6UIhqve.9awBjqR/hoP8pFroG.s.OFwAWcMkf6',NULL,'team','2024-10-03 09:21:20','2024-10-03 09:21:20'),(17,'Constantino Ulima','cotaulima97@gmail.com',NULL,'$2y$12$2ssQ2U5pnJMad3OXFbv5guaueHcgnh/w8z6RW3SPvTrF.32tCRy1G',NULL,'team','2024-10-07 16:57:59','2024-10-07 16:57:59'),(18,'Gonçalves Nhanga','goncalves.nhanga09@gmail.com',NULL,'$2y$12$NYSx2rJAWtt7loEskNl.iu3n93vZRI5vByjG1kKrPGVtt/tU1Iwfy',NULL,'team','2024-10-07 17:12:06','2024-10-07 17:12:06'),(19,'Carlos','beboking19@hotmail.com',NULL,'$2y$12$OClKcCZg.rZegmTr/yEUGOgYwWyHWO5XRp2vgGNWJLc4RNE0MyeMa',NULL,'team','2024-10-08 09:28:09','2024-10-08 09:28:09'),(20,'Carlos','beboking19@gmail.com',NULL,'$2y$12$4xOY7s7XjQli59ctn28cdOjbnOTJ785TOybjicZ7/saLxCO1x0UYi',NULL,'team','2024-10-08 13:38:10','2024-10-08 13:38:10'),(21,'Lukenia Alexandra 💕','lukeniazua@gmail.com',NULL,'$2y$12$uBbEGFVeHyYoxioYsvcvd.Qm51YV/Ums25ntxtnfQCor1PObLQ4oW',NULL,'team','2024-10-08 13:47:01','2024-10-08 13:47:01'),(22,'Ricardo','barbantericardo21@gmail.com',NULL,'$2y$12$KEXtFS03t2sELlGlbnC0JukKjMOIkMqMuFsSfD.JAGN.3/.lai6qu',NULL,'team','2024-10-09 06:59:25','2024-10-09 06:59:25'),(23,'Angelina Manuela de Sousa','sousamanuela186@gmail.com',NULL,'$2y$12$x24yuGrTAo8wIA8evlaAJexfi2.G1RhppKvakoipfAJqrgGvPbTyS',NULL,'team','2024-10-09 08:46:46','2024-10-09 08:46:46'),(24,'Gerôncio','geroncio.queta@atomo.co.ao',NULL,'$2y$12$RF/6//ixA4I.1/Evf9vUEe2H/NIFSbUjpPhZBQeTVXpCKaxzewVUm',NULL,'team','2024-10-16 12:33:55','2024-10-16 12:33:55'),(25,'Constantino  Camdumbo Ulima','costaulima97@gmail.com',NULL,'$2y$12$NcTnQX6RAnLlnAtJNWJXCenzEh8e8dgCfpbm2whmsXV9PQI30rBRy',NULL,'team','2024-10-18 09:41:02','2024-10-18 09:41:02');
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

-- Dump completed on 2024-12-03 21:57:33
