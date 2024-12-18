-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17-Dez-2024 às 14:34
-- Versão do servidor: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `atomo_lelosport`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `coaches`
--

CREATE TABLE `coaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `coaches`
--

INSERT INTO `coaches` (`id`, `team_id`, `name`, `birth_date`, `age`, `flag_url`, `photo_url`, `matches_played`, `wins`, `draws`, `losses`, `created_at`, `updated_at`) VALUES
(27, 56, 'Bibiana Luanda', '1999-08-01', 44, 'flags/1726934809_flag.png', 'photos/1726934809_photo.jpg', 11, 11, 11, 11, '2024-09-21 15:06:49', '2024-09-21 15:06:49'),
(28, 52, 'Filipe Nzanza Tertez', '1999-08-20', 40, 'flags/1727448295_flag.png', 'photos/1727097833_photo.png', 11, 11, 11, 11, '2024-09-23 12:23:53', '2024-09-27 13:44:55'),
(42, 62, 'Joaquim Finda Mozer', '1999-08-20', 40, 'flags/1727699688_flag.png', 'photos/1727699688_photo.jpg', 2, 2, 2, 2, '2024-09-30 11:34:48', '2024-09-30 11:34:48'),
(43, 70, 'Luena Dudas', '2000-08-08', 44, 'flags/1727864567_flag.png', 'photos/1727864567_photo.jpg', 22, 22, 22, 22, '2024-10-02 09:22:48', '2024-10-02 09:22:48'),
(45, 53, 'Pedro Soares', '1999-08-20', 44, 'flags/1727952884_flag.png', 'photos/1727952884_photo.jpg', 11, 11, 11, 11, '2024-10-03 09:54:44', '2024-10-03 09:54:44'),
(46, 50, 'Valdimiro Domingos', '1981-08-20', 43, 'flags/1727955929_flag.png', 'photos/1727955929_photo.jpg', 2, 2, 2, 2, '2024-10-03 10:45:29', '2024-10-03 10:45:29'),
(47, 50, 'Valdimiro Domingos Tchicuambi', '1991-08-20', 33, 'flags/1732116079_flag.jpg', 'photos/1732116079_photo.jpg', 12, 2, 1, 1, '2024-11-20 14:21:19', '2024-11-20 14:21:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `season` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fixtures`
--

CREATE TABLE `fixtures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `league_id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `opponent_team_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `leagues`
--

CREATE TABLE `leagues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `season` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_team_id` bigint(20) UNSIGNED NOT NULL,
  `away_team_id` bigint(20) UNSIGNED NOT NULL,
  `date` datetime NOT NULL,
  `home_team_score` int(11) DEFAULT NULL,
  `away_team_score` int(11) DEFAULT NULL,
  `stadium` varchar(255) NOT NULL,
  `league_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_14_092425_teams', 2),
(6, '2024_08_14_092459_players', 3),
(7, '2024_08_14_092542_leagues', 3),
(8, '2024_08_14_092724_competitions', 3),
(9, '2024_08_14_094106_matches', 3),
(10, '2024_08_14_094144_player_statistics', 3),
(11, '2024_08_14_094200_team_statistics', 3),
(12, '2024_08_14_094224_fixtures', 3),
(13, '2024_08_14_094243_transfers', 3),
(14, '2024_08_14_094320_contracts', 3),
(15, '2024_08_14_095311_drop_matches_table', 3),
(16, '2024_08_14_105650_change_founded_year_type_in_teams_table', 3),
(17, '2024_08_29_151134_create_player_characteristics_table', 3),
(18, '2024_09_03_115723_add_role_to_users_table', 3),
(19, '2024_09_04_135927_create_coaches_table', 4),
(20, '2024_09_13_161424_add_type_to_users_table', 5),
(21, '2024_09_13_161454_add_role_to_users_table', 5),
(22, '2024_09_30_182457_create_tactics_table', 5),
(23, '2024_09_30_192154_add_team_id_to_tactics_table', 6),
(24, '2024_09_30_195459_make_image_nullable_in_tactics_table', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `players`
--

INSERT INTO `players` (`id`, `team_id`, `first_name`, `last_name`, `date_birth`, `position`, `weight`, `height`, `nationality`, `image_position`, `image`, `created_at`, `updated_at`) VALUES
(28, 50, 'J.', 'Toro', '1999-08-19', 'Defesa', '65', '1.60', 'Portugal', 'flags/1726835344_flag.png', 'photos/1726835344_photo.jpg', '2024-09-20 11:29:04', '2024-09-20 11:29:04'),
(30, 50, 'Ediie', 'Murph', '1988-08-08', 'Defesa', '76', '1.60', 'Portugal', 'flags/1726835567_flag.png', 'photos/1726835567_photo.jpg', '2024-09-20 11:32:47', '2024-09-20 11:32:47'),
(31, 50, 'H.', 'Marques2', '1990-08-08', 'Goleiro', '65', '1', 'Angola', 'flags/1726837422_flag.png', 'photos/1726835609_photo.jpg', '2024-09-20 11:33:29', '2024-09-20 12:10:24'),
(34, 50, 'Mario', 'Domingos', '1999-08-20', 'Atacante', '65', '1.7', 'Angola', 'flags/1726840145_flag.png', 'photos/1726840145_photo.jpg', '2024-09-20 12:49:05', '2024-09-20 12:49:05'),
(35, 50, 'Eddie', 'styfler', '2000-09-02', 'Atacante', '76', '1', 'Angola', 'flags/1727784878_flag.png', 'photos/1726841245_photo.jpg', '2024-09-20 13:07:25', '2024-10-02 10:39:32'),
(42, 52, 'Bobo', 'Ugenda', '1999-09-20', 'Defesa', '60', '1.60', 'Angola', 'flags/1727446196_flag.png', 'photos/1727446196_photo.jpg', '2024-09-27 13:09:56', '2024-09-27 13:09:56'),
(44, 52, 'Venicios', 'Domingos', '1999-02-20', 'atacante', '11', '11', 'Angola', 'flags/1727451418_flag.png', 'photos/1727694637_photo.jpg', '2024-09-27 14:36:40', '2024-09-30 10:10:37'),
(45, 62, 'Mário', 'Dario', '2000-08-08', 'Goleiro', '75', '1.70', 'Angola', 'flags/1727699923_flag.png', 'photos/1727699923_photo.jpg', '2024-09-30 11:38:43', '2024-09-30 11:38:43'),
(46, 62, 'Djos', 'Mpeko', '1999-08-20', 'Defesa', '70', '2.70', 'Angola', 'flags/1727700208_flag.png', 'photos/1727700208_photo.jpg', '2024-09-30 11:43:28', '2024-09-30 11:43:28'),
(47, 62, 'T.', 'Mputu', '1999-02-02', 'Atacante', '70', '1.60', 'Angola', 'flags/1727700282_flag.png', 'photos/1727700282_photo.jpg', '2024-09-30 11:44:42', '2024-09-30 11:44:42'),
(48, 62, 'Hugo', 'Firmino', '2002-08-08', 'Atacante', '70', '1.60', 'Angola', 'flags/1727700494_flag.png', 'photos/1727700494_photo.jpg', '2024-09-30 11:48:14', '2024-09-30 11:48:14'),
(49, 70, 'Vivian', 'Murph', '1000-08-20', 'Atacante', '11', '11', 'Angola', 'flags/1727864689_flag.png', 'photos/1727864689_photo.jpg', '2024-10-02 09:24:49', '2024-10-02 09:24:49'),
(50, 70, 'Gonçalves', 'Nhanga', '2020-08-20', 'Defesa', '70', '1.60', 'Angola', 'flags/1727864788_flag.png', 'photos/1727864788_photo.jpg', '2024-10-02 09:26:28', '2024-10-02 09:26:28'),
(54, 50, 'Miguel', 'Pedro', '1999-08-20', 'Atacante', '70', '1.60', 'Angola', 'flags/1727952172_flag.png', 'photos/1727952172_photo.jpg', '2024-10-03 09:42:52', '2024-10-03 09:42:52'),
(56, 53, 'Benson', 'Manuel', '1999-08-20', 'Atacante', '70', '1.70', 'Portugal', 'flags/1727952733_flag.png', 'photos/1727952733_photo.jpg', '2024-10-03 09:52:13', '2024-10-03 09:52:13'),
(57, 53, 'Gelson', 'Dala', '1999-08-20', 'Atacante', '69', '1.60', 'Angola', 'flags/1727953006_flag.png', 'photos/1727953006_photo.jpg', '2024-10-03 09:56:46', '2024-10-03 09:56:46'),
(59, 52, 'Manuel', 'Pedro', '2000-08-20', 'Atacante', '3.6', '2.2', 'Portugal', 'flags/1732116504_flag.jpg', 'photos/1732116504_photo.jpg', '2024-11-20 14:28:24', '2024-11-20 14:28:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_characteristics`
--

CREATE TABLE `player_characteristics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `player_characteristics`
--

INSERT INTO `player_characteristics` (`id`, `player_id`, `number_games`, `goals`, `assists`, `yellow_cards`, `red_cards`, `pass_accuracy`, `tackles`, `current_club`, `previous_club`, `transfer_date`, `created_at`, `updated_at`) VALUES
(1, 1, '2', '5', '2', '0', '1', '10', '1', '2', '1', '2010/10/20', '2024-08-29 14:45:16', '2024-08-29 14:45:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `player_statistics`
--

CREATE TABLE `player_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `match_id` bigint(20) UNSIGNED NOT NULL,
  `goals` int(11) NOT NULL DEFAULT 0,
  `assists` int(11) NOT NULL DEFAULT 0,
  `minutes_played` int(11) NOT NULL DEFAULT 0,
  `yellow_cards` int(11) NOT NULL DEFAULT 0,
  `red_cards` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tactics`
--

CREATE TABLE `tactics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `tactic_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tactics`
--

INSERT INTO `tactics` (`id`, `team_id`, `category`, `image`, `designation`, `tactic_type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Estratégia Ofensiva', 'media/13086385-escalacoes-de-jogadores-de-futebol-formacao-4-2-3-1-meio-estadio-de-futebol-vetor.jpg', 'Pressão Lateral', '5-4-1', '2024-09-30 18:55:51', '2024-09-30 18:55:51'),
(2, NULL, 'Estratégia Defensiva', NULL, 'Pressão Lateral-1', '5-4-1-2', '2024-09-30 19:21:02', '2024-09-30 19:21:02'),
(3, NULL, 'Estratégia Defensiva', NULL, 'Pressão Lateral-1', '4-3-2-1', '2024-09-30 19:23:02', '2024-09-30 19:23:02'),
(4, NULL, 'Estratégia Ofensiva', NULL, 'Pressão Lateral', '4-3-2-1', '2024-09-30 19:40:31', '2024-09-30 19:40:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `designation` varchar(255) NOT NULL,
  `short_name` varchar(50) NOT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `founded_year` date DEFAULT NULL,
  `stadium` varchar(255) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `designation`, `short_name`, `logo_url`, `founded_year`, `stadium`, `country`, `created_at`, `updated_at`) VALUES
(50, NULL, 'Petro de Luanda', 'Petro', '1726241758.png', '2222-02-22', '11 de Novembro', 'Angola', '2024-09-13 14:35:58', '2024-09-13 14:35:58'),
(52, NULL, 'Primeiro De Agosto', 'PRI', '1726241818.png', '2222-02-22', '11 de Novembro', 'Angola', '2024-09-13 14:36:58', '2024-09-13 14:36:58'),
(53, NULL, 'Angola', 'ANG', '1726241860.png', '1965-08-01', '11 de Novembro', 'Angola', '2024-09-13 14:37:39', '2024-09-13 14:37:40'),
(54, NULL, 'Sagrada esperança', 'Se', '1726241904.png', '1985-08-20', '11 de Novembro', 'Angola', '2024-09-13 14:38:24', '2024-09-13 14:38:24'),
(55, NULL, 'Interclube', 'inter', '1726687523.png', '1999-08-20', '1º De Maio', 'Angola', '2024-09-18 18:25:11', '2024-09-18 18:25:23'),
(56, NULL, 'CD Lunda Sul', 'CD', '1726687575.png', '1111-11-11', 'Lubango', 'Angola', '2024-09-18 18:26:15', '2024-09-18 18:26:15'),
(62, NULL, 'Kabuscorp Palanca', 'Kabuscorp', '1725887748.png', '2222-02-22', '11 de Novembro', 'Angola', '2024-09-19 13:15:44', '2024-09-19 13:15:44'),
(63, NULL, 'Cambondo', 'Cb', '1725646488.png', '1999-08-20', '11 de Novembro', 'Angola', '2024-09-20 12:44:29', '2024-09-20 12:44:29'),
(70, NULL, 'Academica do Lobito', 'AL', '1727779802.png', '2222-02-22', '11 de Novembro', 'Angola', '2024-10-01 09:50:02', '2024-10-01 09:50:02'),
(71, NULL, 'Academica do Lobito', 'ALA', '1728465540.jpg', '2222-02-22', '11 de Novembro', 'Angola', '2024-10-09 08:19:00', '2024-10-09 08:19:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `team_statistics`
--

CREATE TABLE `team_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `match_id` bigint(20) UNSIGNED NOT NULL,
  `goals_scored` int(11) NOT NULL DEFAULT 0,
  `goals_conceded` int(11) NOT NULL DEFAULT 0,
  `possession` double(8,2) NOT NULL DEFAULT 0.00,
  `shots` int(11) NOT NULL DEFAULT 0,
  `shots_on_target` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` bigint(20) UNSIGNED NOT NULL,
  `from_team_id` bigint(20) UNSIGNED NOT NULL,
  `to_team_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_date` date NOT NULL,
  `transfer_fee` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('team','user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(3, 'ANGELINA DE SOUSA', 'angelina@gmail.com', NULL, '$2y$12$7Wwa9Z6N8heCwzzuwEU2wuJLnfmmI4G25eE87V2JyeoQS361i7jxS', NULL, 'team', '2024-09-16 15:35:55', '2024-09-16 15:35:55'),
(13, 'Antonio Tomás', 'antonio@gmail.com', NULL, '$2y$12$Vi7aHRpY80UKMVPYHxQaROuvrZgSq.VqhJ7/GRmBzYhqIEOL9Emgm', NULL, 'team', '2024-09-25 14:52:35', '2024-09-25 14:52:35'),
(14, 'Gonçalvesm Nhanga', 'salves@gmail.com', NULL, '$2y$12$sW0fmeIjkVs54/TsWEJZVeJY/wNcIs0DelFVi55FOOqiCSJhdtnwC', NULL, 'team', '2024-10-01 08:53:19', '2024-10-01 08:53:19'),
(16, 'Valdimiro Domingos', 'valdieldstyfler@gmail.com', NULL, '$2y$12$NBTcWhI7SjiMM3O6UIhqve.9awBjqR/hoP8pFroG.s.OFwAWcMkf6', NULL, 'team', '2024-10-03 09:21:20', '2024-10-03 09:21:20'),
(17, 'Angelina Manuela de Sousa', 'valdieldstyfler2@gmail.com', NULL, '$2y$12$kqsHsPf5wYYgHXhKLj1gRufrLTgaWy9Jt2wKZ6Aan1ONKvw5lVchG', NULL, 'team', '2024-12-10 14:07:32', '2024-12-10 14:07:32'),
(18, 'Gonçalves Nhanga', 'nhanga@gmail.com', NULL, '$2y$12$dSu3kf41lYYu2N4dwSNU4.FlLh89Hql8BQkrzdm94yOwDzmdhCex2', NULL, 'team', '2024-12-10 14:08:30', '2024-12-10 14:08:30'),
(19, 'Teste', 'teste@mailinator.com', NULL, '$2y$12$DQNOjwclbnPRBWZjUcZq..nOoln787/Tt6bAKrv4FcbQpoWRpyxN6', NULL, 'team', '2024-12-10 14:37:02', '2024-12-10 14:37:02');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `fixtures`
--
ALTER TABLE `fixtures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fixtures_league_id_foreign` (`league_id`),
  ADD KEY `fixtures_team_id_foreign` (`team_id`),
  ADD KEY `fixtures_opponent_team_id_foreign` (`opponent_team_id`);

--
-- Índices para tabela `leagues`
--
ALTER TABLE `leagues`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matches_home_team_id_foreign` (`home_team_id`),
  ADD KEY `matches_away_team_id_foreign` (`away_team_id`),
  ADD KEY `matches_league_id_foreign` (`league_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_team_id_foreign` (`team_id`);

--
-- Índices para tabela `player_characteristics`
--
ALTER TABLE `player_characteristics`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `player_statistics`
--
ALTER TABLE `player_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_statistics_player_id_foreign` (`player_id`),
  ADD KEY `player_statistics_match_id_foreign` (`match_id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices para tabela `tactics`
--
ALTER TABLE `tactics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tactics_team_id_foreign` (`team_id`);

--
-- Índices para tabela `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `team_statistics`
--
ALTER TABLE `team_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_statistics_team_id_foreign` (`team_id`),
  ADD KEY `team_statistics_match_id_foreign` (`match_id`);

--
-- Índices para tabela `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_player_id_foreign` (`player_id`),
  ADD KEY `transfers_from_team_id_foreign` (`from_team_id`),
  ADD KEY `transfers_to_team_id_foreign` (`to_team_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fixtures`
--
ALTER TABLE `fixtures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `leagues`
--
ALTER TABLE `leagues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `player_characteristics`
--
ALTER TABLE `player_characteristics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `player_statistics`
--
ALTER TABLE `player_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tactics`
--
ALTER TABLE `tactics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de tabela `team_statistics`
--
ALTER TABLE `team_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `fixtures`
--
ALTER TABLE `fixtures`
  ADD CONSTRAINT `fixtures_league_id_foreign` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fixtures_opponent_team_id_foreign` FOREIGN KEY (`opponent_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fixtures_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_away_team_id_foreign` FOREIGN KEY (`away_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matches_home_team_id_foreign` FOREIGN KEY (`home_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matches_league_id_foreign` FOREIGN KEY (`league_id`) REFERENCES `leagues` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `player_statistics`
--
ALTER TABLE `player_statistics`
  ADD CONSTRAINT `player_statistics_match_id_foreign` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_statistics_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tactics`
--
ALTER TABLE `tactics`
  ADD CONSTRAINT `tactics_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `team_statistics`
--
ALTER TABLE `team_statistics`
  ADD CONSTRAINT `team_statistics_match_id_foreign` FOREIGN KEY (`match_id`) REFERENCES `matches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_statistics_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_from_team_id_foreign` FOREIGN KEY (`from_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_player_id_foreign` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_to_team_id_foreign` FOREIGN KEY (`to_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
