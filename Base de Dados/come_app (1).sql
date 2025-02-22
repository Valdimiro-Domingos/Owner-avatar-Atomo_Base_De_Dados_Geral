-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17-Dez-2024 às 14:49
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
-- Banco de dados: `come_app`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agts`
--

CREATE TABLE `agts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `private_key` text DEFAULT NULL,
  `public_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `agts`
--

INSERT INTO `agts` (`id`, `private_key`, `public_key`, `created_at`, `updated_at`) VALUES
(1, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7+SaUCH4D88ZIsE4wrhwnS45OyzHkdzg6pe1CNhKi1Md3pCsDSzuyes0KpW6Gl1WeNWo4gLd0cxd0shLtq6aUPW17RMGq2qqEbfH4THB21/8OrHz+A25AkEA2sZTr+ea759PgO9W24uRx4NwPhfOObYzc4SVwNJlkxMmkUBIgKzTXykKyHRVI5V55mUf2c7Fmrbh7Q7eHMFeXQJBANfYuWkMspfSotDMMewIy6Vu5Z4WTAM3VqVlWU0YwsTOxJtuYbQejStDBz9mBCLGZpmJXlhRG9TYKxLt82cFt6cCQFoqFt+OcpqDa/7VpVSCZyh1EVNl+EZswzO+1wFLNTWyVNjUR41QrSSxA5Kt71DlEAJWdxQLVgF3khFjaUMsprkCQEmNzBkVP6LnH56hhv2VPbiBYvQNSxfperhgIh9Yqb6ha3RAGEFmC9tLOyQKoqwrCfmWSzUzZpWQmJUZy1E3LI8CQAWL67LsimFT8lsq+6RiwOSWHlMHFCtpqDLCbWA0PgDNYBmE5HBjyLHC/Fyv7LtSRAnsKJP71VOwQJJKw2PUbQA=', 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQAB', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `armazems`
--

CREATE TABLE `armazems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `armazems`
--

INSERT INTO `armazems` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Sede', 'And she\'s.', 1, NULL, NULL),
(2, 2, '0001', 'Sede', 'I shall fall right.', 1, NULL, NULL),
(3, 3, '0001', 'Sede', 'It was as much.', 1, NULL, NULL),
(4, 4, '0001', 'Sede', 'Alice had been.', 1, NULL, NULL),
(5, 5, '0001', 'Sede', 'VERY good.', 1, NULL, NULL),
(6, 6, '0001', 'Sede', 'I look like.', 1, NULL, NULL),
(7, 7, '0001', 'Sede', 'Please, Ma\'am.', 1, NULL, NULL),
(8, 8, '0001', 'Sede', 'So Alice got up.', 1, NULL, NULL),
(9, 9, '0001', 'Sede', 'Alice did not.', 1, NULL, NULL),
(10, 10, '0001', 'Sede', 'However, she.', 1, NULL, NULL),
(11, 11, '0001', 'Sede', 'IT. It\'s HIM.\'.', 1, NULL, NULL),
(12, 12, '0001', 'Sede', 'Shakespeare.', 1, NULL, NULL),
(13, 13, '0001', 'Sede', 'Alice did not.', 1, NULL, NULL),
(14, 14, '0001', 'Sede', 'The baby grunted.', 1, NULL, NULL),
(15, 15, '0001', 'Sede', 'The Hatter\'s.', 1, NULL, NULL),
(16, 16, '0001', 'Sede', 'I dare say.', 1, NULL, NULL),
(17, 17, '0001', 'Sede', 'When the.', 1, NULL, NULL),
(18, 18, '0001', 'Sede', 'THE KING.', 1, NULL, NULL),
(19, 19, '0001', 'Sede', 'Caterpillar.', 1, NULL, NULL),
(20, 20, '0001', 'Sede', 'Duchess to play.', 1, NULL, NULL),
(21, 21, '0001', 'Sede', 'Seven looked up.', 1, NULL, NULL),
(22, 22, '0001', 'Sede', 'When the.', 1, NULL, NULL),
(23, 23, '0001', 'Sede', 'March Hare said in.', 1, NULL, NULL),
(24, 24, '0001', 'Sede', 'Mock Turtle in.', 1, NULL, NULL),
(25, 25, '0001', 'Sede', 'The table.', 1, NULL, NULL),
(26, 26, '0001', 'Sede', 'She soon got.', 1, NULL, NULL),
(27, 27, '0001', 'Sede', 'I am very.', 1, NULL, NULL),
(28, 28, '0001', 'Sede', 'Duchess\'s.', 1, NULL, NULL),
(29, 29, '0001', 'Sede', 'I shall have to.', 1, NULL, NULL),
(30, 30, '0001', 'Sede', 'Hatter. \'I told.', 1, NULL, NULL),
(31, 31, '0001', 'Sede', 'London is.', 1, NULL, NULL),
(32, 32, '0001', 'Sede', 'I can remember.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categoria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `imposto_id` bigint(20) UNSIGNED DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `imagem_1` varchar(191) DEFAULT NULL,
  `imagem_2` varchar(191) DEFAULT NULL,
  `imagem_3` varchar(191) DEFAULT NULL,
  `unidade` varchar(191) DEFAULT NULL,
  `fornecedor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo_barra` varchar(191) DEFAULT NULL,
  `is_stock` tinyint(1) DEFAULT NULL,
  `stock_minimo` varchar(191) DEFAULT NULL,
  `stock_maximo` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`id`, `empresa_id`, `codigo`, `designacao`, `tipo_id`, `retencao_id`, `categoria_id`, `imposto_id`, `preco`, `imagem_1`, `imagem_2`, `imagem_3`, `unidade`, `fornecedor_id`, `codigo_barra`, `is_stock`, `stock_minimo`, `stock_maximo`, `observacao`, `status`, `is_used`, `created_at`, `updated_at`) VALUES
(1, 2, '2024-0001', 'Tinteiro HP 650', 3, 3, 2, 41, 11094, 'null.png', 'null.png', 'null.png', '1', 2, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-14 12:47:52', '2024-08-22 08:51:12'),
(2, 2, '2024-0002', 'Tinteiro hp 932 colour', 3, 3, 2, 41, 14900, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 1, '1', '0', NULL, 1, 1, '2024-08-15 10:29:49', '2024-08-22 08:52:30'),
(3, 2, '2024-0003', 'MiraScreen TV Smart', 3, 3, 2, 41, 7000, 'null.png', 'null.png', 'null.png', '1', NULL, '6970515921883', 1, '1', '1', 'Um dispositivo inovador para os amantes de tecnologias', 1, NULL, '2024-08-15 19:49:19', '2024-08-22 08:52:49'),
(4, 2, '2024-0004', 'Tinteiro hp 951 XL', 3, 3, 2, 41, 13500, 'null.png', 'null.png', 'null.png', '1', NULL, '886111748983', 1, '1', '1', NULL, 1, NULL, '2024-08-15 19:53:12', '2024-08-22 08:54:00'),
(5, 2, '2024-0005', 'Tinteiro hp 122 black', 3, 3, 2, 41, 15000, 'null.png', 'null.png', 'null.png', '1', NULL, '884962894583', 1, '2', '2', NULL, 1, NULL, '2024-08-15 19:54:59', '2024-08-22 08:53:36'),
(6, 2, '2024-0006', 'Tinteiro hp 122 colour', 3, 3, 2, 41, 15900, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 1, '2', '2', NULL, 1, NULL, '2024-08-15 19:57:40', '2024-08-22 08:53:17'),
(7, 5, '2024-0001', 'Temaki', 9, 9, 5, 157, 6500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-23 12:34:08', '2024-08-23 12:38:44'),
(8, 1, '2024-0001', 'LICENÇA DE MAIO', 1, 1, 1, 1, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-08-23 13:14:19', '2024-08-23 13:14:19'),
(9, 7, '2024-0001', 'Mariscos', 13, 13, 7, 235, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-26 09:41:25', '2024-08-26 09:45:10'),
(10, 9, '2024-0001', 'base', 17, 17, 9, 313, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, NULL, '2024-08-27 12:05:50', '2024-08-27 12:06:00'),
(11, 1, '2024-0002', 'Software de faturação-Atomo', 2, 1, 1, 1, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-28 08:12:08', '2024-08-29 09:37:28'),
(12, 7, '2024-0002', 'Lagosta', 13, 13, 7, 238, 13000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-30 09:13:15', '2024-08-30 10:47:35'),
(13, 7, '2024-0003', 'Gamba', 13, 13, 7, 238, 13500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-30 09:14:25', '2024-08-30 10:47:35'),
(14, 7, '2024-0004', 'Choco', 13, 13, 7, 238, 4000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-08-30 09:15:36', '2024-08-30 10:47:35'),
(15, 14, '2024-0001', 'lençol', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', 14, '001', 1, '1', '33', NULL, 1, 1, '2024-09-02 10:11:58', '2024-11-04 14:20:34'),
(16, 14, '2024-0001', 'Lençol', 27, 27, 14, 508, 35000, 'null.png', 'null.png', 'null.png', '35', 14, NULL, 0, '0', '0', NULL, 0, 1, '2024-09-02 10:12:56', '2024-11-05 12:52:36'),
(17, 14, '2024-0002', 'lençol', 27, 27, 14, 508, 26000, 'null.png', 'null.png', 'null.png', '1', 14, '222', 0, '0', '0', NULL, 0, NULL, '2024-09-02 10:13:39', '2024-11-05 12:53:00'),
(18, 14, '2024-0004', 'calça', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', '1', 14, '111', 0, '0', '0', NULL, 1, 1, '2024-09-02 10:17:14', '2024-10-08 09:23:05'),
(19, 14, '2024-0005', 'Tenís', 27, 27, 14, 508, 20000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-09-02 10:53:44', '2024-11-05 12:51:22'),
(20, 14, '2024-0006', 'Pasta', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '333', 14, '111', 1, '1', '1111', NULL, 1, 1, '2024-09-02 11:55:31', '2024-09-04 07:30:32'),
(21, 14, '2024-0007', 'pano', 27, 27, 14, 508, 2500, 'null.png', 'null.png', 'null.png', '1', NULL, '111', 1, '0', '0', NULL, 1, 1, '2024-09-02 11:56:09', '2024-10-23 06:23:22'),
(22, 14, '2024-0008', 'colchão', 27, 27, 14, 508, 40000, 'null.png', 'null.png', 'null.png', '1', 14, '111', 0, '0', '0', NULL, 1, 1, '2024-09-02 12:18:41', '2024-09-02 12:19:47'),
(23, 14, '2024-0009', 'pasta', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', NULL, '555', 0, '0', '0', NULL, 0, 1, '2024-09-02 13:27:11', '2024-11-05 12:52:11'),
(24, 14, '2024-0010', 'saco de tenis', 27, 27, 14, 508, 10000, 'null.png', 'null.png', 'null.png', '1', NULL, '666', 0, '0', '0', NULL, 1, 1, '2024-09-02 13:47:36', '2024-10-16 13:04:50'),
(25, 14, '2024-0011', 'saco de tenis', 27, 27, 14, 508, 25000, 'null.png', 'null.png', 'null.png', '51', 14, '02', 0, '0', '0', NULL, 0, 1, '2024-09-03 11:50:54', '2024-11-05 12:51:51'),
(26, 14, '2024-0012', 'Tenís', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', NULL, NULL, '010', 0, '0', '0', NULL, 1, 1, '2024-09-04 08:07:12', '2024-10-22 13:37:57'),
(27, 14, '2024-0013', 'Calça', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '1', 14, '011', 0, '0', '0', NULL, 1, 1, '2024-09-04 08:28:31', '2024-09-04 10:23:35'),
(28, 14, '2024-0014', 'Meia', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '33', 14, '012', 0, '0', '0', NULL, 1, 1, '2024-09-04 08:31:57', '2024-09-04 08:35:35'),
(29, 14, '2024-0015', 'pasta', 27, 27, 14, 508, 2500, 'null.png', 'null.png', 'null.png', '1', NULL, '001', 0, '0', '0', NULL, 1, 1, '2024-09-04 08:53:01', '2024-10-18 06:51:47'),
(30, 14, '2024-0016', 'chuteira', 27, 27, 14, 508, 8000, 'null.png', 'null.png', 'null.png', '1', NULL, '001', 0, '0', '0', NULL, 1, 1, '2024-09-04 09:22:15', '2024-09-04 09:22:45'),
(31, 14, '2024-0017', 'Calça', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-04 10:13:03', '2024-09-04 10:23:35'),
(32, 14, '2024-0018', 'pano', 27, 27, 14, 511, 2500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-04 10:26:16', '2024-09-26 13:00:42'),
(33, 14, '2024-0019', 'compra', 27, 27, 14, 508, 6000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-04 13:12:33', '2024-09-04 13:13:12'),
(34, 14, '2024-0020', 'meia DE TENIS', 27, 27, 14, 508, 7500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-09-04 13:45:54', '2024-09-04 13:45:54'),
(35, 14, '2024-0021', 'balaoooooooooooooooooooooooooooooooooo', 27, 27, 14, 508, 40000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 0, NULL, '2024-09-05 07:47:10', '2024-09-05 07:47:10'),
(36, 14, '2024-0022', 'balao coberta', 27, 27, 14, 508, 40000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 0, NULL, '2024-09-05 07:48:24', '2024-09-05 07:48:24'),
(37, 14, '2024-0023', 'curtina', 27, 27, 14, 508, 28000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 0, NULL, '2024-09-05 07:53:59', '2024-09-05 07:53:59'),
(38, 14, '2024-0024', 'curtina', 27, 27, 14, 508, 28000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 0, NULL, '2024-09-05 07:58:12', '2024-09-05 07:58:12'),
(39, 14, '2024-0025', 'curtina', 27, 27, 14, 508, 28000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 1, 1, '2024-09-05 08:46:09', '2024-09-05 08:47:45'),
(40, 14, '2024-0026', 'fogão', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-05 09:37:33', '2024-09-05 09:37:58'),
(41, 14, '2024-0027', 'tenis', 27, 27, 14, 508, 2500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-05 13:36:37', '2024-09-05 13:40:42'),
(42, 14, '2024-0028', 'meia de lencol', 27, 27, 14, 508, 10000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 1, 1, '2024-09-13 07:37:02', '2024-09-20 10:46:11'),
(43, 14, '2024-0029', 'vestido', 27, 27, 14, 508, 5000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 1, 1, '2024-09-13 07:45:14', '2024-09-13 07:47:02'),
(44, 14, '2024-0030', 'um saco e meio de tenis', 27, 27, 14, 508, 22500, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 1, 1, '2024-09-13 10:14:39', '2024-11-01 11:45:13'),
(45, 14, '2024-0031', 'ticherty', 27, 27, 14, 508, 25000, 'null.png', 'null.png', 'null.png', '1', 14, '02', 0, '0', '0', NULL, 1, 1, '2024-09-13 10:15:48', '2024-09-13 10:17:56'),
(46, 14, '2024-0032', 'SANDALIA', 27, 27, 14, 508, 9000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-13 12:16:13', '2024-09-13 12:16:49'),
(47, 14, '2024-0033', 'roupa mista', 27, 27, 14, 508, 45000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-09-20 09:15:17', '2024-09-20 09:15:17'),
(48, 14, '2024-0034', 'roupa mista', 27, 27, 14, 508, 20000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-20 09:22:57', '2024-09-20 10:47:02'),
(49, 14, '2024-0035', 'curtina', 27, 27, 14, 508, 24000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-24 13:30:23', '2024-09-24 13:31:10'),
(50, 14, '2024-0036', 'tenis', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-25 08:12:37', '2024-11-04 14:21:47'),
(51, 14, '2024-0037', 'colchão', 27, 27, 14, 508, 55000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-25 08:54:14', '2024-09-26 13:12:26'),
(52, 14, '2024-0038', 'compras', 27, 27, 14, 508, 6500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-25 09:34:50', '2024-09-25 09:35:42'),
(53, 14, '2024-0039', 'cinto', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-26 12:06:32', '2024-10-31 13:34:40'),
(54, 14, '2024-0040', 'compras', 27, 27, 14, 508, 7000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-26 12:25:07', '2024-09-26 12:25:29'),
(55, 14, '2024-0041', 'curtina', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-27 11:56:25', '2024-09-27 11:57:06'),
(56, 14, '2024-0042', 'aparelho de som', 27, 27, 14, 508, 20000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-27 12:08:51', '2024-10-23 13:21:14'),
(57, 14, '2024-0043', 'colchão', 27, 27, 14, 508, 50000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-30 10:34:27', '2024-09-30 10:35:10'),
(58, 14, '2024-0044', 'chinela', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-30 12:59:34', '2024-09-30 13:30:23'),
(59, 14, '2024-0045', 'tecido', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-09-30 13:24:31', '2024-09-30 13:25:14'),
(60, 14, '2024-0046', 'mini saia', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-01 11:01:28', '2024-10-01 11:02:27'),
(61, 14, '2024-0047', 'tenis', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-01 11:39:41', '2024-10-01 13:19:49'),
(62, 14, '2024-0048', 'mochila', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-01 12:30:59', '2024-10-09 09:41:33'),
(63, 14, '2024-0049', 'tapete', 27, 27, 14, 508, 10000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-01 12:44:16', '2024-10-01 12:45:42'),
(64, 14, '2024-0050', 'cadeirão', 27, 27, 14, 508, 100000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-01 12:48:08', '2024-10-01 12:48:33'),
(65, 14, '2024-0051', 'manta', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-03 07:14:27', '2024-10-03 07:16:31'),
(66, 14, '2024-0052', 'manta', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, NULL, '2024-10-03 07:15:25', '2024-10-03 07:15:25'),
(67, 19, '2024-0001', 'Cartão de visita', 37, 37, 19, 706, 150, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-03 07:37:37', '2024-10-03 07:45:07'),
(68, 19, '2024-0002', 'CARTÃO DE ESTUDANTE COM IMPRESSÃO A COR', 37, 37, 19, 703, 450, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-10-03 08:07:25', '2024-10-25 10:39:09'),
(69, 14, '2024-0053', 'compras', 27, 27, 14, 508, 6000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-10-03 12:27:31', '2024-10-03 12:27:31'),
(70, 14, '2024-0054', 'tapete', 27, 27, 14, 508, 10000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-04 11:48:56', '2024-10-04 11:50:21'),
(71, 14, '2024-0055', 'chinela', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-04 11:49:26', '2024-10-18 09:20:46'),
(72, 14, '2024-0056', 'compras', 27, 27, 14, 508, 4500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-04 11:53:11', '2024-10-04 11:55:25'),
(73, 14, '2024-0057', 'poleve', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-08 08:34:43', '2024-10-08 08:43:48'),
(74, 14, '2024-0058', 'sandalha', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-08 08:37:44', '2024-10-08 08:38:20'),
(75, 14, '2024-0059', 'tenis', 27, 27, 14, 508, 100, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, NULL, '2024-10-08 08:40:51', '2024-10-08 08:40:51'),
(76, 14, '2024-0060', 'calsa', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, NULL, '2024-10-08 08:42:04', '2024-10-08 08:42:04'),
(77, 14, '2024-0061', 'mesa de engomar', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-08 08:50:34', '2024-10-09 12:43:31'),
(78, 14, '2024-0062', 'calsa', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-08 09:24:31', '2024-10-08 09:25:08'),
(79, 14, '2024-0063', 'compras', 27, 27, 14, 508, 10000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, NULL, '2024-10-08 13:21:50', '2024-10-08 13:21:50'),
(80, 14, '2024-0064', 'colchao', 27, 27, 14, 508, 50000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-09 07:47:59', '2024-10-17 06:42:45'),
(81, 14, '2024-0065', 'toalha de mesa', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, NULL, '2024-10-09 09:39:38', '2024-10-09 09:39:38'),
(82, 14, '2024-0066', 'pasta', 27, 27, 14, 508, 7000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-09 11:06:37', '2024-10-09 11:07:04'),
(83, 14, '2024-0067', 'tenis', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-09 12:44:22', '2024-10-09 12:45:34'),
(84, 14, '2024-0068', 'compras', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-10 12:24:00', '2024-10-10 12:24:31'),
(85, 23, '2024-0001', 'bolacha', 45, 45, 23, 859, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-11 10:41:53', '2024-10-11 11:41:50'),
(86, 23, '2024-0002', 'Yougurte', 45, 45, 23, 859, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-10-11 11:36:51', '2024-10-11 11:37:15'),
(87, 14, '2024-0069', 'ficha', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-15 12:21:06', '2024-10-15 12:22:59'),
(88, 14, '2024-0070', 'ficha', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-16 11:19:31', '2024-10-16 11:24:40'),
(89, 14, '2024-0071', 'pano', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-16 11:23:52', '2024-10-16 11:25:31'),
(90, 14, '2024-0072', 'calça', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-16 12:17:58', '2024-10-16 12:20:19'),
(91, 24, '2024-0001', 'Patrocinador e Expositor no Cero 24', 48, 47, 24, 901, 1500000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 0, NULL, '2024-10-16 12:23:41', '2024-10-16 12:23:41'),
(92, 24, '2024-0002', 'Expositor no Cero 24', 48, 48, 24, 901, 500000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-16 12:24:25', '2024-10-16 12:26:42'),
(93, 14, '2024-0073', 'colchão', 27, 27, 14, 508, 55000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-16 13:00:22', '2024-10-16 13:06:11'),
(94, 14, '2024-0074', 'compra', 27, 27, 14, 508, 50000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-10-16 13:18:05', '2024-10-16 13:18:31'),
(95, 25, '2024-0001', 'Mancozan  100gr', 49, 49, 28, 940, 1600, 'null.png', 'null.png', 'null.png', 'Gr', 25, NULL, 0, '0', '0', NULL, 0, NULL, '2024-10-16 17:06:36', '2024-10-16 17:06:36'),
(96, 14, '2024-0075', 'sapatos', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-17 09:06:01', '2024-10-17 09:09:02'),
(97, 14, '2024-0076', 'manta', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-10-18 09:23:22', '2024-10-18 09:24:49'),
(98, 26, '2024-0001', 'Janelas UPVC', 52, 51, 29, 977, 274400, 'null.png', 'null.png', 'null.png', '3', 26, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-23 08:46:30', '2024-10-23 10:26:36'),
(99, 26, '2024-0002', 'Portas', 52, 51, 29, 977, 600000, 'null.png', 'null.png', 'null.png', '1', 26, NULL, 0, '0', '0', NULL, 0, NULL, '2024-10-23 08:57:09', '2024-10-23 09:41:13'),
(100, 26, '2024-0003', 'Janelas UPVC', 52, 51, 29, 977, 352800, 'null.png', 'null.png', 'null.png', NULL, 26, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-23 09:46:03', '2024-10-23 10:26:36'),
(101, 26, '2024-0004', 'Janelas UPVC', 52, 51, 29, 977, 431200, 'null.png', 'null.png', 'null.png', '1', 26, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-23 09:48:21', '2024-10-23 10:26:36'),
(102, 26, '2024-0005', 'Janelas UPVC', 52, 51, 29, 977, 140000, 'null.png', 'null.png', 'null.png', '2', 26, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-23 09:49:27', '2024-10-23 10:26:36'),
(103, 19, '2024-0003', 'Impressão, folhas de prova ft.A3 frente e verso', 38, 37, 19, 706, 3500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-25 10:38:52', '2024-10-25 10:43:21'),
(104, 14, '2024-0077', 'mochila', 27, 27, 14, 508, 5000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-25 10:46:25', '2024-10-25 10:47:02'),
(105, 14, '2024-0078', 'compra', 27, 27, 14, 508, 6000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-25 11:15:13', '2024-10-25 11:15:37'),
(106, 14, '2024-0079', 'camisa', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-25 11:17:30', '2024-10-25 11:20:14'),
(107, 14, '2024-0080', 'colchão', 27, 27, 14, 508, 45000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-10-25 11:19:30', '2024-10-25 11:19:30'),
(108, 14, '2024-0081', 'sandalias', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-10-25 12:17:56', '2024-10-25 12:20:01'),
(109, 19, '2024-0004', 'Impressão na riso frente e verso', 37, 37, 19, 706, 4000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-10-28 13:49:11', '2024-10-28 13:49:11'),
(110, 14, '2024-0082', 'botas', 27, 27, 14, 508, 2000, 'null.png', 'null.png', 'null.png', NULL, 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 07:49:40', '2024-11-01 07:50:49'),
(111, 14, '2024-0083', 'tenis', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 08:33:02', '2024-11-01 09:14:20'),
(112, 14, '2024-0084', 'COLCHAO', 27, 27, 14, 508, 8000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, NULL, '2024-11-01 09:30:57', '2024-11-01 09:30:57'),
(113, 14, '2024-0085', 'COLCHAO', 27, 27, 14, 508, 30000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 09:32:19', '2024-11-01 09:33:37'),
(114, 14, '2024-0086', 'COMPRA', 27, 27, 14, 508, 8000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 09:42:17', '2024-11-01 09:43:09'),
(115, 14, '2024-0087', 'CHINELAS DE HOMEM', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 11:16:16', '2024-11-01 11:16:46'),
(116, 14, '2024-0088', 'chapeu', 27, 27, 14, 508, 500, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 11:17:56', '2024-11-01 11:18:26'),
(117, 14, '2024-0089', 'culuna soni', 27, 27, 14, 508, 12000, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-01 11:52:40', '2024-11-01 11:53:10'),
(118, 28, '2024-0001', 'câmeras', 55, 55, 31, 1057, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:05:18', '2024-11-01 13:30:01'),
(119, 28, '2024-0002', 'vídeo balum', 55, 55, 31, 1057, 3000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:10:19', '2024-11-01 13:30:01'),
(120, 28, '2024-0003', 'Acréscimo para o DVR de 16 câmeras', 55, 55, 31, 1057, 68000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:17:17', '2024-11-01 13:30:01'),
(121, 28, '2024-0004', 'Acréscimo para a fonte de alimentação', 55, 55, 31, 1057, 15000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:18:06', '2024-11-01 13:30:01'),
(122, 28, '2024-0005', 'Adição de cabo', 55, 55, 31, 1057, 52000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:19:02', '2024-11-01 13:30:00'),
(123, 28, '2024-0006', 'Tubo de 40/60', 55, 55, 31, 1057, 8000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:19:52', '2024-11-01 13:30:00'),
(124, 28, '2024-0007', 'criação das estruturas', 55, 55, 31, 1057, 6000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:20:36', '2024-11-01 13:30:00'),
(125, 28, '2024-0008', 'A aplicação das estruturas (serralheiro)', 56, 55, 31, 1057, 14000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 13:21:31', '2024-11-01 13:30:00'),
(126, 14, '2024-0090', 'sandalia', 27, 27, 14, 508, 4000, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 14:13:34', '2024-11-01 14:14:41'),
(127, 28, '2024-0009', 'Astes', 55, 55, 31, 1057, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:16:04', '2024-11-01 15:37:15'),
(128, 28, '2024-0010', 'Cornes Force', 55, 55, 31, 1057, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:17:39', '2024-11-01 15:37:15'),
(129, 28, '2024-0011', 'Rolo de fio galvanizado 1.000m', 55, 55, 31, 1057, 41000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:18:30', '2024-11-01 15:37:15'),
(130, 28, '2024-0012', 'Ferrul', 55, 55, 31, 1057, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:19:19', '2024-11-01 15:37:15'),
(131, 28, '2024-0013', '20m de cabo HT', 55, 55, 31, 1057, 22000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:21:41', '2024-11-01 15:37:15'),
(132, 28, '2024-0014', 'placas de advertência', 55, 55, 31, 1057, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:22:28', '2024-11-01 15:37:14'),
(133, 28, '2024-0015', 'Central de choque', 55, 55, 31, 1057, 170000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:23:16', '2024-11-01 15:37:14'),
(134, 28, '2024-0016', 'sirene', 55, 55, 31, 1057, 12000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:23:58', '2024-11-01 15:37:14'),
(135, 28, '2024-0017', 'Estrobo light', 55, 55, 31, 1057, 15000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:25:00', '2024-11-01 15:37:14'),
(136, 28, '2024-0018', 'vara de aterramento', 55, 55, 31, 1057, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:26:07', '2024-11-01 15:37:14'),
(137, 28, '2024-0019', 'assistência técnica', 56, 55, 31, 1057, 150000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 15:27:21', '2024-11-01 15:37:14'),
(138, 28, '2024-0020', 'câmeras', 55, 55, 31, 1057, 27000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:38:19', '2024-11-01 20:52:47'),
(139, 28, '2024-0021', 'conectores DC', 55, 55, 31, 1057, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:40:31', '2024-11-01 20:52:47'),
(140, 28, '2024-0022', 'caixas de derivação', 55, 55, 31, 1057, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:41:24', '2024-11-01 20:52:47'),
(141, 28, '2024-0023', 'Caixas de cabo', 55, 55, 31, 1057, 55000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:42:02', '2024-11-01 20:52:47'),
(142, 28, '2024-0024', 'A fonte de alimentação', 55, 55, 31, 1057, 26000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:42:48', '2024-11-01 20:52:47'),
(143, 28, '2024-0025', 'Atado de tubo PVC e seus acessórios', 55, 55, 31, 1057, 57000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:43:25', '2024-11-01 20:52:47'),
(144, 28, '2024-0026', 'DVR', 55, 55, 31, 1057, 108000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:44:10', '2024-11-01 20:52:47'),
(145, 28, '2024-0027', 'disco rígido 1T', 55, 55, 31, 1057, 75000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:44:49', '2024-11-01 20:52:47'),
(146, 28, '2024-0028', 'assistencia técnica', 55, 55, 31, 1057, 141000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:45:31', '2024-11-01 20:52:47'),
(147, 28, '2024-0029', 'vídeo balum', 55, 55, 31, 1057, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:49:23', '2024-11-01 20:52:47'),
(148, 28, '2024-0030', 'câmeras', 55, 55, 31, 1057, 18000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:55:48', '2024-11-01 21:06:29'),
(149, 28, '2024-0031', 'video balum', 55, 55, 31, 1057, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:56:29', '2024-11-01 21:06:29'),
(150, 28, '2024-0032', 'conectores DC', 55, 55, 31, 1057, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, NULL, '2024-11-01 20:57:11', '2024-11-01 20:57:11'),
(151, 28, '2024-0033', 'Caixas de cabo', 55, 55, 31, 1057, 48000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:57:56', '2024-11-01 21:06:29'),
(152, 28, '2024-0034', 'A fonte de alimentação', 55, 55, 31, 1057, 21000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:58:33', '2024-11-01 21:06:29'),
(153, 28, '2024-0035', 'Atado de tubo PVC e seus acessórios', 55, 55, 31, 1057, 57000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:59:13', '2024-11-01 21:06:29'),
(154, 28, '2024-0036', 'DVR', 55, 55, 31, 1057, 98000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 20:59:55', '2024-11-01 21:06:29'),
(155, 28, '2024-0037', 'disco rígido 1T', 55, 55, 31, 1057, 75000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:00:33', '2024-11-01 21:06:29'),
(156, 28, '2024-0038', 'Assistência técnica', 55, 55, 31, 1057, 131000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:01:19', '2024-11-01 21:06:29'),
(157, 28, '2024-0039', 'câmeras IP internas', 56, 55, 31, 1057, 75000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:25:38', '2024-11-01 21:40:58'),
(158, 28, '2024-0040', 'câmeras Ip externas', 55, 55, 31, 1057, 84000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:26:34', '2024-11-01 21:40:58'),
(159, 28, '2024-0041', 'câmeras IP Externas robustas', 55, 55, 31, 1057, 115000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:27:12', '2024-11-01 21:40:58'),
(160, 28, '2024-0042', 'Conectores RJ45', 55, 55, 31, 1057, 8000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:27:41', '2024-11-01 21:40:58'),
(161, 28, '2024-0043', 'Caixas de cabo', 55, 55, 31, 1057, 271000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:28:18', '2024-11-01 21:40:58'),
(162, 28, '2024-0044', 'Atado de tubo PVC e seus acessórios', 55, 55, 31, 1057, 57000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:29:03', '2024-11-01 21:40:58'),
(163, 28, '2024-0045', 'switch PoE de 8 canais', 55, 55, 31, 1057, 55000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:29:48', '2024-11-01 21:40:57'),
(164, 28, '2024-0046', 'Nvr de 16', 55, 55, 31, 1057, 232000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:31:46', '2024-11-01 21:40:57'),
(165, 28, '2024-0047', 'disco rígido 1T', 55, 55, 31, 1057, 75000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:32:40', '2024-11-01 21:40:57'),
(166, 28, '2024-0048', 'A assistencia técnica', 56, 55, 31, 1057, 325000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-01 21:33:28', '2024-11-01 21:40:57'),
(167, 28, '2024-0048', 'A assistencia técnica', 56, 55, 31, 1057, 325000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-01 21:33:29', '2024-11-01 21:33:29'),
(168, 14, '2024-0091', 'mochila', 27, 27, 14, 508, 3500, 'null.png', 'null.png', 'null.png', '1', NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-04 14:20:03', '2024-11-04 14:20:34'),
(169, 14, '2024-0092', 'saco de tenis', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-05 10:00:18', '2024-11-05 10:15:43'),
(170, 14, '2024-0093', 'saco de tenis', 27, 27, 14, 508, 15000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 10:06:12', '2024-11-05 10:09:27'),
(171, 14, '2024-0094', 'pano', 27, 27, 14, 509, 2500, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 11:21:04', '2024-11-05 11:37:36'),
(172, 14, '2024-0095', 'pano', 27, 27, 14, 508, 2500, 'null.png', 'null.png', 'null.png', '1', 14, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 11:39:32', '2024-11-05 12:16:51'),
(173, 14, '2024-0096', 'chinelas', 27, 27, 14, 508, 1500, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 11:49:10', '2024-11-05 11:50:17'),
(174, 14, '2024-0097', 'prato', 27, 27, 14, 508, 7000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, NULL, '2024-11-05 12:50:04', '2024-11-05 12:50:04'),
(175, 14, '2024-0098', 'tenis', 27, 27, 14, 508, 1000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 13:17:43', '2024-11-05 13:18:12'),
(176, 14, '2024-0099', 'compras', 27, 27, 14, 508, 13000, 'null.png', 'null.png', 'null.png', '1', NULL, '000', 0, '0', '0', NULL, 1, 1, '2024-11-05 13:26:58', '2024-11-05 13:28:36'),
(177, 19, '2024-0005', 'Impressão de papel autocolante', 37, 37, 19, 706, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 08:46:51', '2024-11-07 08:50:40'),
(178, 19, '2024-0006', 'Impressão de folha A4', 37, 37, 19, 706, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 08:58:46', '2024-11-07 09:02:02'),
(179, 28, '2024-0050', 'Fechadura', 55, 55, 31, 1057, 56000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:25:00', '2024-11-07 15:13:38'),
(180, 28, '2024-0051', 'Leitores de acesso', 55, 55, 31, 1057, 58000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:25:46', '2024-11-07 15:13:38'),
(181, 28, '2024-0052', 'Central de controle', 56, 55, 31, 1057, 487900, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:27:19', '2024-11-07 15:13:38'),
(182, 28, '2024-0053', 'Caixa de cabo', 55, 55, 31, 1057, 102000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-07 14:28:16', '2024-11-07 14:28:16'),
(183, 28, '2024-0054', 'Caixa de ficha RJ 45', 55, 55, 31, 1057, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:29:59', '2024-11-07 15:13:38'),
(184, 28, '2024-0055', 'Fonte de alimentação com bateria', 55, 55, 31, 1057, 73000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:31:02', '2024-11-07 15:13:38'),
(185, 28, '2024-0056', 'Assistência técnica', 56, 55, 31, 1057, 488200, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:32:05', '2024-11-07 15:13:38'),
(186, 28, '2024-0057', 'Caixa de cabo', 55, 55, 31, 1057, 102000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-07 14:54:21', '2024-11-07 15:13:38'),
(187, 28, '2024-0058', 'Tags', 56, 55, 31, 1057, 800, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:39:42', '2024-11-08 16:57:52'),
(188, 28, '2024-0059', 'Fechadura elétrica', 56, 55, 31, 1057, 52000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:40:34', '2024-11-08 16:57:52'),
(189, 28, '2024-0060', 'Calha', 55, 55, 31, 1057, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:41:09', '2024-11-08 16:57:52'),
(190, 28, '2024-0061', 'Metro de cabo', 55, 55, 31, 1057, 300, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:42:07', '2024-11-08 16:57:52'),
(191, 28, '2024-0062', 'Tomada', 55, 55, 31, 1057, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:42:55', '2024-11-08 16:57:52'),
(192, 28, '2024-0063', 'Caixa derivação', 55, 55, 31, 1057, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:43:52', '2024-11-08 16:57:52'),
(193, 28, '2024-0064', 'Assistência técnica', 55, 55, 31, 1057, 40000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-08 16:44:53', '2024-11-08 16:57:52'),
(194, 28, '2024-0065', 'Diagnóstico e vistoria do sistema', 56, 55, 31, 1057, 20000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:26:25', '2024-11-10 18:30:54'),
(195, 28, '2024-0066', 'Restauração da imagem da câmera', 56, 55, 31, 1057, 12000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:27:17', '2024-11-10 18:30:54'),
(196, 28, '2024-0067', 'Deslocação', 56, 55, 31, 1057, 5000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:27:54', '2024-11-10 18:30:54'),
(197, 28, '2024-0068', 'Assistência Técnica', 56, 55, 31, 1057, 300280, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:43:49', '2024-11-10 19:29:01'),
(198, 28, '2024-0069', 'Hastes para estruturação de 8 linhas', 55, 55, 31, 1057, 8000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:44:52', '2024-11-10 19:06:09'),
(199, 28, '2024-0070', 'Esticadores para as extremidades', 55, 55, 31, 1057, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:45:52', '2024-11-10 19:51:49'),
(200, 28, '2024-0071', 'Anzóis', 55, 55, 31, 1057, 5000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:48:20', '2024-11-10 19:51:49'),
(201, 28, '2024-0072', 'Ferrul', 55, 55, 31, 1057, 12000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:49:22', '2024-11-10 19:51:49'),
(202, 28, '2024-0073', '40m de cabo HT', 55, 55, 31, 1057, 28600, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:50:28', '2024-11-10 19:51:49'),
(203, 28, '2024-0074', 'Rolo Galvanizado de 1.000m', 55, 55, 31, 1057, 52000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:51:41', '2024-11-10 19:51:49'),
(204, 28, '2024-0075', 'placas de advertência', 55, 55, 31, 1057, 1100, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:52:38', '2024-11-10 19:51:49'),
(205, 28, '2024-0076', 'sirene', 55, 55, 31, 1057, 23000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:54:12', '2024-11-10 19:06:09'),
(206, 28, '2024-0077', 'central de choque', 55, 55, 31, 1057, 215000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:55:02', '2024-11-10 19:06:09'),
(207, 28, '2024-0078', 'Estrobo light', 55, 55, 31, 1057, 21000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:57:58', '2024-11-10 19:06:09'),
(208, 28, '2024-0079', 'Led de Alta Tensão', 55, 55, 31, 1057, 22300, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 18:59:10', '2024-11-10 19:06:09'),
(209, 28, '2024-0080', 'Hastes para estruturação de 6 linhas', 55, 55, 31, 1057, 6000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 19:17:15', '2024-11-10 19:51:49'),
(210, 28, '2024-0081', 'sirene', 55, 55, 31, 1057, 15000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 19:19:15', '2024-11-10 19:51:49'),
(211, 28, '2024-0082', 'Central de choque', 55, 55, 31, 1057, 185000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 19:20:33', '2024-11-10 19:51:49'),
(212, 28, '2024-0083', 'assistência técnica', 55, 55, 31, 1057, 236320, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-10 19:37:23', '2024-11-10 19:51:49'),
(213, 19, '2024-0007', '1 Bloco de Factura FtA5 em papel normal', 37, 37, 19, 706, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-14 07:45:42', '2024-11-14 07:45:42'),
(214, 30, '2024-0001', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 39000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:54:21', '2024-11-28 10:34:50'),
(215, 30, '2024-0002', 'lâmpada model 1', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:56:27', '2024-11-28 10:34:57'),
(216, 30, '2024-0003', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:57:22', '2024-11-28 10:35:03'),
(217, 30, '2024-0004', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 35000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:58:23', '2024-11-28 10:35:11'),
(218, 30, '2024-0005', 'lâmpadas simples', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:59:10', '2024-11-28 10:35:19'),
(219, 30, '2024-0006', 'tomadas internas', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 16:59:59', '2024-11-28 10:35:32'),
(220, 30, '2024-0007', 'lâmpadas simples', 59, 59, 33, 1132, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 17:00:32', '2024-11-28 10:35:26'),
(221, 30, '2024-0008', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 17:01:13', '2024-11-28 10:35:39'),
(222, 30, '2024-0009', 'lâmpadas simples', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, NULL, '2024-11-26 17:02:02', '2024-11-26 17:02:02'),
(223, 30, '2024-0010', 'suporte', 59, 59, 33, 1132, 150, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-26 17:03:12', '2024-11-28 10:35:56'),
(224, 30, '2024-0011', 'fita isoladora', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-28 10:38:35', '2024-11-28 12:30:17'),
(225, 30, '2024-0012', 'Tomada Simples', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-28 10:39:27', '2024-11-28 12:30:37'),
(226, 30, '2024-0013', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 27000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-28 10:40:18', '2024-11-28 12:30:47'),
(227, 30, '2024-0014', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 40000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-28 10:40:53', '2024-11-28 12:30:59'),
(228, 30, '2024-0015', 'lâmpada led', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 0, 1, '2024-11-28 10:41:38', '2024-11-28 12:31:16'),
(229, 30, '2024-0016', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:31:58', '2024-11-28 12:45:26'),
(230, 30, '2024-0017', 'disjuntor', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:32:47', '2024-11-28 12:45:26'),
(231, 30, '2024-0018', 'sinalizador', 59, 59, 33, 1132, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:33:30', '2024-11-28 12:45:26'),
(232, 30, '2024-0019', 'saco de braçadeira', 59, 59, 33, 1132, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:34:07', '2024-11-28 12:45:26'),
(233, 30, '2024-0020', 'lâmpada', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:34:41', '2024-11-28 12:45:26'),
(234, 30, '2024-0021', 'lâmpada', 59, 59, 33, 1132, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:35:18', '2024-11-28 12:45:26'),
(235, 30, '2024-0022', 'fita isoladora', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:36:02', '2024-11-28 14:36:41'),
(236, 30, '2024-0023', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 35000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:37:10', '2024-11-28 12:45:26'),
(237, 30, '2024-0024', 'rolo de fio 2,5mm por metros', 59, 59, 33, 1132, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:38:28', '2024-11-28 12:45:25'),
(238, 30, '2024-0025', 'tomadas simples', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:39:14', '2024-11-28 12:45:25'),
(239, 30, '2024-0026', 'interruptor simples', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:39:56', '2024-11-28 12:45:25'),
(240, 30, '2024-0027', 'metros de cabo', 59, 59, 33, 1132, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:40:37', '2024-11-28 12:45:25'),
(241, 30, '2024-0028', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 26000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:52:20', '2024-11-28 13:00:08'),
(242, 30, '2024-0029', 'lâmpada', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:53:07', '2024-11-28 13:00:07'),
(243, 30, '2024-0030', 'femia', 59, 59, 33, 1132, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:54:06', '2024-11-28 13:00:07'),
(244, 30, '2024-0031', 'candeeiro led', 59, 59, 33, 1132, 50000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:54:40', '2024-11-28 13:00:07'),
(245, 30, '2024-0032', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 36000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:55:19', '2024-11-28 13:00:07'),
(246, 30, '2024-0033', 'tubo de 16 m', 59, 59, 33, 1132, 6500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:55:59', '2024-11-28 13:00:07'),
(247, 30, '2024-0034', 'Tomada Simples', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:56:58', '2024-11-28 13:00:07'),
(248, 30, '2024-0035', 'interruptor simples', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 12:57:37', '2024-11-28 13:00:07'),
(249, 30, '2024-0036', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 35000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:01:46', '2024-11-28 13:23:28'),
(250, 30, '2024-0037', 'copos fundo', 59, 59, 33, 1132, 200, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:02:34', '2024-11-28 15:14:50'),
(251, 30, '2024-0038', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:03:22', '2024-11-28 13:23:28'),
(252, 30, '2024-0039', 'caixa portinhola', 59, 59, 33, 1132, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:05:14', '2024-11-28 13:23:28'),
(253, 30, '2024-0040', 'rolo de tv 100m', 59, 59, 33, 1132, 10000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:05:57', '2024-11-28 13:23:28'),
(254, 30, '2024-0041', 'calhas colantes', 59, 59, 33, 1132, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:06:33', '2024-11-28 13:23:28'),
(255, 30, '2024-0042', 'quadro 8 modos', 59, 59, 33, 1132, 4000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:07:14', '2024-11-28 13:23:28'),
(256, 30, '2024-0043', 'tomada dupla', 59, 59, 33, 1132, 1200, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:07:56', '2024-11-28 13:23:28'),
(257, 30, '2024-0044', 'Tomada Simples', 59, 59, 33, 1132, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:08:38', '2024-11-28 13:23:28'),
(258, 30, '2024-0045', 'disjuntor simples', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:09:32', '2024-11-28 13:23:28'),
(259, 30, '2024-0046', 'disjuntor 32 polos', 59, 59, 33, 1132, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:10:21', '2024-11-28 13:23:28'),
(260, 30, '2024-0047', 'caixa derivação', 59, 59, 33, 1132, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:11:04', '2024-11-28 13:23:28'),
(261, 30, '2024-0048', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 9000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:11:50', '2024-11-28 13:23:28'),
(262, 30, '2024-0049', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 35500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:25:32', '2024-11-28 13:44:55'),
(263, 30, '2024-0050', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:26:26', '2024-11-28 13:44:55'),
(264, 30, '2024-0051', 'copos fundo', 59, 59, 33, 1132, 200, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:27:10', '2024-11-28 13:44:55');
INSERT INTO `artigos` (`id`, `empresa_id`, `codigo`, `designacao`, `tipo_id`, `retencao_id`, `categoria_id`, `imposto_id`, `preco`, `imagem_1`, `imagem_2`, `imagem_3`, `unidade`, `fornecedor_id`, `codigo_barra`, `is_stock`, `stock_minimo`, `stock_maximo`, `observacao`, `status`, `is_used`, `created_at`, `updated_at`) VALUES
(265, 30, '2024-0052', 'rolo de tubo', 59, 59, 33, 1132, 8000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:27:48', '2024-11-28 13:44:55'),
(266, 30, '2024-0053', 'rolo de tubo 20m flexível', 59, 59, 33, 1132, 6000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:28:49', '2024-11-28 13:44:55'),
(267, 30, '2024-0054', 'disjuntor 2 polo', 59, 59, 33, 1132, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:30:02', '2024-11-28 13:44:55'),
(268, 30, '2024-0055', 'disjuntor 1 polo', 59, 59, 33, 1132, 7000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:30:41', '2024-11-28 13:44:55'),
(269, 30, '2024-0056', 'Tomada Simples', 59, 59, 33, 1132, 700, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:31:24', '2024-11-28 13:44:55'),
(270, 30, '2024-0057', 'tomadas internas', 59, 59, 33, 1132, 1900, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:32:45', '2024-11-28 13:44:55'),
(271, 30, '2024-0058', 'lâmpada led', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:34:23', '2024-11-28 13:44:55'),
(272, 30, '2024-0059', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 36000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:57:41', '2024-11-28 14:19:48'),
(273, 30, '2024-0060', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 26000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:58:05', '2024-11-28 14:19:48'),
(274, 30, '2024-0061', 'tubo liso de 16', 59, 59, 33, 1132, 26000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:59:02', '2024-11-28 14:19:48'),
(275, 30, '2024-0062', 'tubo liso de 20', 59, 59, 33, 1132, 29000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 13:59:44', '2024-11-28 14:19:47'),
(276, 30, '2024-0063', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 28000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:00:37', '2024-11-28 14:19:47'),
(277, 30, '2024-0064', 'caixa derivação', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:01:17', '2024-11-28 14:19:47'),
(278, 30, '2024-0065', 'base com fusível', 59, 59, 33, 1132, 9000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:02:25', '2024-11-28 14:19:47'),
(279, 30, '2024-0066', 'rolo de tubo 20 flexível', 59, 59, 33, 1132, 5000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:03:20', '2024-11-28 14:19:47'),
(280, 30, '2024-0067', 'tomada legrand', 59, 59, 33, 1132, 4000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:04:39', '2024-11-28 14:19:47'),
(281, 30, '2024-0068', 'tomada de tv', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:05:51', '2024-11-28 14:19:47'),
(282, 30, '2024-0069', 'interruptor duplo', 59, 59, 33, 1132, 4000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:06:36', '2024-11-28 14:19:47'),
(283, 30, '2024-0070', 'quadro de 24 polos', 59, 59, 33, 1132, 16000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:07:31', '2024-11-28 14:19:47'),
(284, 30, '2024-0071', 'disjuntor 1 polo', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:08:23', '2024-11-28 14:19:47'),
(285, 30, '2024-0072', 'lâmpada', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:09:09', '2024-11-28 14:19:47'),
(286, 30, '2024-0073', 'disjuntor 2 polo', 59, 59, 33, 1132, 6000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:09:54', '2024-11-28 14:19:47'),
(287, 30, '2024-0074', 'lâmpada', 59, 59, 33, 1132, 1200, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:10:38', '2024-11-28 14:19:47'),
(288, 30, '2024-0075', 'disjuntor 2 polo', 59, 59, 33, 1132, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-28 14:11:21', '2024-11-28 14:11:21'),
(289, 30, '2024-0076', 'Tomada Simples', 59, 59, 33, 1132, 900, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:26:05', '2024-11-28 14:36:41'),
(290, 30, '2024-0077', 'interruptor', 59, 59, 33, 1132, 900, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:27:03', '2024-11-28 14:36:41'),
(291, 30, '2024-0078', 'disjuntor 1 polo', 59, 59, 33, 1132, 1500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:27:53', '2024-11-28 14:36:41'),
(292, 30, '2024-0079', 'disjuntor 2 polo', 59, 59, 33, 1132, 3000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:28:30', '2024-11-28 14:36:41'),
(293, 30, '2024-0080', 'ferro de barramento', 59, 59, 33, 1132, 8500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:29:40', '2024-11-28 14:36:41'),
(294, 30, '2024-0081', 'interruptor comutador', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:30:57', '2024-11-28 14:36:41'),
(295, 30, '2024-0082', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 35000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:31:37', '2024-11-28 14:36:41'),
(296, 30, '2024-0083', 'disjuntor 1 polo', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-28 14:32:30', '2024-11-28 14:32:30'),
(297, 30, '2024-0084', 'rolo de fio 2,5mm', 59, 59, 33, 1132, 5500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:38:46', '2024-11-28 15:14:50'),
(298, 30, '2024-0085', 'rolo de fio 1,5mm', 59, 59, 33, 1132, 4500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:39:45', '2024-11-28 15:14:50'),
(299, 30, '2024-0086', 'sinalizador', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:40:56', '2024-11-28 15:14:50'),
(300, 30, '2024-0087', 'Tomada Simples', 59, 59, 33, 1132, 1800, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:41:45', '2024-11-28 15:14:50'),
(301, 30, '2024-0088', 'interruptor simples', 59, 59, 33, 1132, 1800, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:43:01', '2024-11-28 15:14:50'),
(302, 30, '2024-0089', 'caixa de ligador', 59, 59, 33, 1132, 6000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-11-28 14:43:49', '2024-11-28 14:43:49'),
(303, 30, '2024-0090', 'metros de fita led', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:44:42', '2024-11-28 15:14:50'),
(304, 30, '2024-0091', 'lâmpadas 40w', 59, 59, 33, 1132, 2000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:45:38', '2024-11-28 15:14:50'),
(305, 30, '2024-0092', 'embalagem de fita', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:46:25', '2024-11-28 15:14:50'),
(306, 30, '2024-0093', 'comando de TV', 59, 59, 33, 1132, 2500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:47:22', '2024-11-28 15:14:50'),
(307, 30, '2024-0094', 'calha de 25 m', 59, 59, 33, 1132, 1000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:48:14', '2024-11-28 15:14:50'),
(308, 30, '2024-0095', 'lâmpada', 59, 59, 33, 1132, 500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:49:03', '2024-11-28 15:14:50'),
(309, 30, '2024-0096', 'suportes', 59, 59, 33, 1132, 400, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-11-28 14:49:49', '2024-11-28 15:14:49'),
(310, 31, '2024-0001', 'Criação de Identidade Visual', 61, 61, 34, 1174, 150000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-12-02 15:31:40', '2024-12-16 08:21:35'),
(311, 31, '2024-0002', 'Consultoria e Suporte', 62, 61, 34, 1174, 100000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-12-02 15:44:16', '2024-12-03 10:26:23'),
(312, 31, '2024-0003', 'Suporte de Transporte', 62, 61, 34, 1174, 300000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-12-02 16:18:37', '2024-12-02 16:20:18'),
(313, 31, '2024-0004', 'Assistência administrativa', 62, 62, 34, 1174, 700000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-12-14 14:06:08', '2024-12-16 06:59:16'),
(314, 32, '2024-0001', 'Pao', 63, 63, 35, 1211, 50, '1734352333.jpg', '1734352333.jpg', '1734352333.jpg', 'tty', 32, '678', 0, '0', '0', 'jhhjj', 1, 1, '2024-12-16 11:32:13', '2024-12-16 11:33:23'),
(315, 19, '2024-0008', 'Impressão de folha de prova', 37, 37, 19, 703, 5000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, 1, '2024-12-17 07:39:29', '2024-12-17 07:47:11'),
(316, 19, '2024-0009', 'Impressão de folha de prova', 37, 37, 19, 703, 22500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, NULL, '2024-12-17 08:46:11', '2024-12-17 08:46:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancos`
--

CREATE TABLE `bancos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nome` varchar(191) NOT NULL,
  `numero` varchar(191) NOT NULL,
  `iban` varchar(191) NOT NULL,
  `swift` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `bancos`
--

INSERT INTO `bancos` (`id`, `empresa_id`, `nome`, `numero`, `iban`, `swift`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Banco Yetu', '4580714', '006600000458071410102', 'YETUAOLU', '2024-08-22 09:04:19', '2024-08-22 09:04:19'),
(2, NULL, 'BANCO BPC', '0004112195011', '001000040011219501166', NULL, '2024-10-03 07:59:48', '2024-10-03 07:59:48'),
(3, NULL, 'Fernando Masa Simão', '17424285510001', '004000007424285510102', 'BAI', '2024-11-01 13:27:14', '2024-11-01 13:27:14'),
(4, NULL, 'BAi', '17414185510001', '004000007424285510101', 'Fernando Masa Simão', '2024-11-01 14:31:56', '2024-11-01 14:31:56'),
(5, NULL, 'BFE', '32554346', '004000000799710410179', 'salves', '2024-11-01 15:08:44', '2024-11-01 15:08:44'),
(6, NULL, 'BIC', '22189890910001', '005100002189890910153', 'BCCBAOLU', '2024-12-03 08:38:59', '2024-12-03 08:38:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `descricao` text NOT NULL,
  `status` enum('Pendente','Em Andamento','Resolvido') NOT NULL DEFAULT 'Pendente',
  `criador_id` bigint(20) UNSIGNED NOT NULL,
  `executor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Diverso', 'And oh, my poor.', 1, NULL, NULL),
(2, 2, '0001', 'Diverso', 'And so it.', 1, NULL, NULL),
(3, 3, '0001', 'Diverso', 'Mouse, getting.', 1, NULL, NULL),
(4, 4, '0001', 'Diverso', 'Alice \'without.', 1, NULL, NULL),
(5, 5, '0001', 'Diverso', 'I to get.', 1, NULL, NULL),
(6, 6, '0001', 'Diverso', 'If they had.', 1, NULL, NULL),
(7, 7, '0001', 'Diverso', 'She had just.', 1, NULL, NULL),
(8, 8, '0001', 'Diverso', 'I gave her.', 1, NULL, NULL),
(9, 9, '0001', 'Diverso', 'The question.', 1, NULL, NULL),
(10, 10, '0001', 'Diverso', 'Owl had the door.', 1, NULL, NULL),
(11, 11, '0001', 'Diverso', 'Alice guessed.', 1, NULL, NULL),
(12, 12, '0001', 'Diverso', 'Footman remarked.', 1, NULL, NULL),
(13, 13, '0001', 'Diverso', 'It was the White.', 1, NULL, NULL),
(14, 14, '0001', 'Diverso', 'SOMEBODY ought to.', 1, NULL, NULL),
(15, 15, '0001', 'Diverso', 'King. \'Nearly.', 1, NULL, NULL),
(16, 16, '0001', 'Diverso', 'Mock Turtle.', 1, NULL, NULL),
(17, 17, '0001', 'Diverso', 'Hatter: \'but you.', 1, NULL, NULL),
(18, 18, '0001', 'Diverso', 'King was the.', 1, NULL, NULL),
(19, 19, '0001', 'Diverso', 'HERE.\' \'But.', 1, NULL, NULL),
(20, 20, '0001', 'Diverso', 'And so she.', 1, NULL, NULL),
(21, 21, '0001', 'Diverso', 'It was so.', 1, NULL, NULL),
(22, 22, '0001', 'Diverso', 'The twelve.', 1, NULL, NULL),
(23, 23, '0001', 'Diverso', 'March--just before.', 1, NULL, NULL),
(24, 24, '0001', 'Diverso', 'Dodo, a Lory and.', 1, NULL, NULL),
(25, 24, '0002', 'Patrocínio', NULL, 1, '2024-10-16 12:24:50', '2024-10-16 12:24:50'),
(26, 24, '0003', 'Expositor', NULL, 1, '2024-10-16 12:25:04', '2024-10-16 12:25:04'),
(27, 24, '0004', 'Patrocínio e Exposição', NULL, 1, '2024-10-16 12:25:20', '2024-10-16 12:25:20'),
(28, 25, '0001', 'Diverso', 'Mouse with an.', 1, NULL, NULL),
(29, 26, '0001', 'Diverso', 'The players all.', 1, NULL, NULL),
(30, 27, '0001', 'Diverso', 'Alice thought.', 1, NULL, NULL),
(31, 28, '0001', 'Diverso', 'Cat, and.', 1, NULL, NULL),
(32, 29, '0001', 'Diverso', 'I hadn\'t begun.', 1, NULL, NULL),
(33, 30, '0001', 'Diverso', 'King: \'however, it.', 1, NULL, NULL),
(34, 31, '0001', 'Diverso', 'I want to stay.', 1, NULL, NULL),
(35, 32, '0001', 'Diverso', 'Said his father.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED DEFAULT NULL,
  `id_contacto` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `empresa_id`, `codigo`, `designacao`, `contribuinte`, `zona`, `identificacao`, `observacao`, `imagem`, `status`, `is_used`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 1, 1, NULL, NULL),
(2, 2, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 2, 2, NULL, NULL),
(3, 2, '2024-0002', 'Alberto Capingãla', '006217158BE048', NULL, NULL, NULL, 'null.png', 0, 1, 3, 3, '2024-08-15 10:31:52', '2024-08-22 08:55:17'),
(4, 3, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 4, 4, NULL, NULL),
(5, 4, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 5, 5, NULL, NULL),
(6, 5, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 6, 6, NULL, '2024-08-23 13:03:01'),
(7, 5, '2024-0002', 'Diogo', '12345678', NULL, NULL, NULL, 'null.png', 1, 1, 7, 7, '2024-08-23 12:31:33', '2024-08-23 12:38:44'),
(8, 6, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 8, 8, NULL, NULL),
(9, 7, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 9, 9, NULL, NULL),
(10, 7, '2024-0002', 'primeiro Cliente', '12345678', NULL, NULL, NULL, 'null.png', 1, 1, 10, 10, '2024-08-26 09:40:35', '2024-08-26 09:45:10'),
(11, 8, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 11, 11, NULL, NULL),
(12, 9, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 12, 12, NULL, NULL),
(13, 10, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 13, 13, NULL, NULL),
(14, 10, '2024-0002', 'LICENÇA DE MAIO', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 14, 14, '2024-08-27 14:11:50', '2024-08-27 14:11:50'),
(15, 1, '2024-0002', 'Empresa A', '5000507091', NULL, NULL, NULL, 'null.png', 1, 1, 15, 15, '2024-08-28 07:31:41', '2024-08-29 09:37:28'),
(16, 1, '2024-0003', 'Cliente C', '5417029815', NULL, NULL, NULL, 'null.png', 1, 1, 16, 16, '2024-08-28 07:35:59', '2024-08-28 12:31:17'),
(17, 11, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 17, 17, NULL, NULL),
(18, 12, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 18, 18, NULL, NULL),
(19, 13, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 19, 19, NULL, NULL),
(20, 14, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 20, 20, NULL, '2024-11-05 13:28:36'),
(21, 7, '2024-0003', 'Wine o\' clock', '5000555821', NULL, NULL, NULL, 'null.png', 1, 1, 21, 21, '2024-08-30 08:50:30', '2024-08-30 10:47:34'),
(22, 15, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 22, 22, NULL, NULL),
(23, 16, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 23, 23, NULL, NULL),
(24, 17, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 24, 24, NULL, NULL),
(25, 18, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 25, 25, NULL, NULL),
(26, 18, '2024-0002', 'FANA', 'Consumidor final', NULL, NULL, '0000', 'null.png', 0, NULL, 26, 26, '2024-09-03 20:32:14', '2024-09-03 20:33:20'),
(27, 19, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 27, 27, NULL, '2024-12-17 07:47:11'),
(28, 20, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 33, 33, NULL, NULL),
(29, 19, '2024-0002', 'EQUADOR', '999999999', NULL, NULL, NULL, 'null.png', 1, 1, 34, 34, '2024-10-03 07:35:01', '2024-10-03 07:45:07'),
(30, 19, '2024-0003', 'COMPLEXO ESCOLAR BOA AMIZADE', '999999999', NULL, NULL, NULL, 'null.png', 1, 1, 35, 35, '2024-10-03 08:04:58', '2024-10-03 08:11:11'),
(31, 21, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 36, 36, NULL, NULL),
(32, 22, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 37, 37, NULL, NULL),
(33, 23, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 38, 38, NULL, NULL),
(34, 23, '2024-0002', 'MARTA', '000000', NULL, NULL, NULL, 'null.png', 1, NULL, 39, 39, '2024-10-11 10:39:02', '2024-10-11 10:53:04'),
(35, 23, '2024-0003', 'Joyce', '0000001', NULL, NULL, NULL, 'null.png', 1, 1, 40, 40, '2024-10-11 10:55:19', '2024-10-11 11:41:49'),
(36, 24, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 41, 41, NULL, NULL),
(37, 24, '2024-0002', 'Chinangol', '5403094229', NULL, NULL, NULL, 'null.png', 1, 1, 42, 42, '2024-10-16 12:21:06', '2024-10-16 12:26:42'),
(38, 24, '2024-0003', 'Celd fm', '5403094229', NULL, NULL, NULL, 'null.png', 1, NULL, 43, 43, '2024-10-16 12:21:45', '2024-10-16 12:21:45'),
(39, 24, '2024-0004', 'Marques Alves, Prest. Serv', '540987687', NULL, NULL, NULL, 'null.png', 1, NULL, 44, 44, '2024-10-16 12:22:32', '2024-10-16 12:22:32'),
(40, 25, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 45, 45, NULL, NULL),
(41, 26, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 46, 46, NULL, NULL),
(42, 26, '2024-0002', 'TECDIVIR (SU)', '5417304468', NULL, NULL, NULL, 'null.png', 1, 1, 47, 47, '2024-10-23 08:35:34', '2024-10-23 10:26:36'),
(43, 19, '2024-0004', 'Helder', '999999999', NULL, NULL, NULL, 'null.png', 1, 1, 48, 48, '2024-10-25 10:29:21', '2024-10-25 10:43:21'),
(44, 19, '2024-0005', 'Secção 7', '5000594768', NULL, NULL, 'Impressão de folha de prova só frente na riso', 'null.png', 1, NULL, 49, 49, '2024-10-29 13:00:59', '2024-11-07 08:39:23'),
(45, 27, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 55, 55, NULL, NULL),
(46, 28, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 0, NULL, 56, 56, NULL, '2024-11-01 13:02:44'),
(47, 28, '2024-0002', 'Alaza Global Limitada', '540 116 7920', NULL, NULL, NULL, 'null.png', 1, 1, 57, 57, '2024-11-01 13:02:18', '2024-11-07 15:05:47'),
(48, 28, '2024-0003', 'Sr Nicolau', 'Proforma', NULL, NULL, NULL, 'null.png', 1, 1, 58, 58, '2024-11-01 20:33:03', '2024-11-01 21:40:57'),
(49, 28, '2024-0004', 'Sr. Miguel', '0000000', NULL, NULL, NULL, 'null.png', 1, 1, 59, 59, '2024-11-07 14:43:06', '2024-11-07 15:13:38'),
(50, 28, '2024-0005', 'Sr. Guilherme', '000000', NULL, NULL, NULL, 'null.png', 1, 1, 60, 60, '2024-11-08 16:47:32', '2024-11-08 16:57:52'),
(51, 28, '2024-0006', 'OUSE INVESTIMENT,LIMITED', '5401131232', NULL, NULL, NULL, 'null.png', 1, 1, 61, 61, '2024-11-10 18:24:50', '2024-11-10 18:30:54'),
(52, 28, '2024-0007', 'Sr Mendes', '000000', NULL, NULL, NULL, 'null.png', 1, 1, 62, 62, '2024-11-10 18:39:03', '2024-11-10 19:51:49'),
(53, 19, '2024-0006', 'MELSON M.SILVA-INDÚSTRIA, COMÉRCIO E PRESTAÇÁO, (SU),LDA', '5002165295', NULL, NULL, NULL, 'null.png', 1, NULL, 63, 63, '2024-11-14 08:08:42', '2024-11-14 08:08:42'),
(54, 19, '2024-0007', 'COMPLEXO ESCOLAR LAPIDAR', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 64, 64, '2024-11-14 08:15:06', '2024-11-14 08:23:04'),
(55, 19, '2024-0008', 'COMPLEXO ESCOLAR PUKUNINA', '54172834428', NULL, NULL, NULL, 'null.png', 1, NULL, 65, 65, '2024-11-14 08:19:30', '2024-11-14 08:19:30'),
(56, 19, '2024-0009', 'COMPLEXO ESCOLAR MADRE RITA', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 66, 66, '2024-11-14 08:25:00', '2024-11-14 08:25:00'),
(57, 19, '2024-0010', 'COMPLEXO ESCOLAR ALEMATRA', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 67, 67, '2024-11-14 08:36:23', '2024-11-14 08:36:23'),
(58, 19, '2024-0011', 'CONDOMÍNIO CLÁSSICOS DO SUL', '5000745820', NULL, NULL, NULL, 'null.png', 1, NULL, 68, 68, '2024-11-14 08:38:36', '2024-11-14 08:38:36'),
(59, 29, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, NULL, 69, 69, NULL, NULL),
(60, 30, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 70, 70, NULL, '2024-11-28 15:14:49'),
(61, 31, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 78, 78, NULL, '2024-12-16 08:21:35'),
(62, 31, '2024-0002', 'FELISAM CONSTRUÇÕES, LDA', '5000178802', NULL, NULL, NULL, 'null.png', 1, 1, 79, 79, '2024-12-02 15:41:17', '2024-12-02 16:30:34'),
(63, 31, '2024-0003', 'ANGOLEVA - PRESTAÇÃO DE SERVIÇOS & COMÉRCIO GERAL, LDA', '5002202646', NULL, NULL, NULL, 'null.png', 1, 1, 80, 80, '2024-12-02 16:45:13', '2024-12-03 10:26:22'),
(64, 31, '2024-0004', 'NOBLE GROUP S.A.', '5417181641', NULL, NULL, NULL, 'null.png', 1, 1, 81, 81, '2024-12-14 13:50:42', '2024-12-16 06:59:16'),
(65, 32, '2024-0001', 'Consumidor Final', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 82, 82, NULL, '2024-12-16 11:33:23'),
(66, 32, '2024-0002', 'Che', '899', NULL, NULL, 'hjhhj', '1734350873.jpg', 1, NULL, 83, 83, '2024-12-16 11:07:53', '2024-12-16 11:07:53'),
(67, 19, '2024-0012', 'Yuri', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 84, 84, '2024-12-17 07:35:24', '2024-12-17 07:35:24'),
(68, 19, '2024-0013', 'Nova Kedma', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 85, 85, '2024-12-17 08:44:16', '2024-12-17 08:44:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `condicoes_pagamentos`
--

CREATE TABLE `condicoes_pagamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `condicoes_pagamentos`
--

INSERT INTO `condicoes_pagamentos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(2, 1, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(3, 1, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(4, 1, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(5, 1, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(6, 2, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(7, 2, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(8, 2, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(9, 2, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(10, 2, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(11, 3, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(12, 3, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(13, 3, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(14, 3, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(15, 3, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(16, 4, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(17, 4, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(18, 4, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(19, 4, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(20, 4, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(21, 5, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(22, 5, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(23, 5, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(24, 5, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(25, 5, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(26, 6, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(27, 6, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(28, 6, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(29, 6, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(30, 6, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(31, 7, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(32, 7, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(33, 7, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(34, 7, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(35, 7, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(36, 8, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(37, 8, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(38, 8, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(39, 8, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(40, 8, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(41, 9, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(42, 9, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(43, 9, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(44, 9, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(45, 9, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(46, 10, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(47, 10, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(48, 10, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(49, 10, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(50, 10, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(51, 11, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(52, 11, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(53, 11, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(54, 11, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(55, 11, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(56, 12, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(57, 12, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(58, 12, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(59, 12, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(60, 12, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(61, 13, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(62, 13, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(63, 13, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(64, 13, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(65, 13, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(66, 14, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(67, 14, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(68, 14, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(69, 14, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(70, 14, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(71, 15, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(72, 15, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(73, 15, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(74, 15, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(75, 15, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(76, 16, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(77, 16, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(78, 16, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(79, 16, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(80, 16, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(81, 17, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(82, 17, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(83, 17, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(84, 17, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(85, 17, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(86, 18, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(87, 18, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(88, 18, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(89, 18, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(90, 18, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(91, 19, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(92, 19, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(93, 19, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(94, 19, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(95, 19, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(96, 20, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(97, 20, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(98, 20, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(99, 20, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(100, 20, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(101, 21, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(102, 21, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(103, 21, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(104, 21, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(105, 21, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(106, 22, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(107, 22, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(108, 22, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(109, 22, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(110, 22, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(111, 23, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(112, 23, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(113, 23, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(114, 23, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(115, 23, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(116, 24, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(117, 24, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(118, 24, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(119, 24, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(120, 24, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(121, 25, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(122, 25, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(123, 25, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(124, 25, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(125, 25, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(126, 26, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(127, 26, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(128, 26, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(129, 26, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(130, 26, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(131, 27, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(132, 27, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(133, 27, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(134, 27, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(135, 27, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(136, 28, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(137, 28, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(138, 28, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(139, 28, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(140, 28, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(141, 29, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(142, 29, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(143, 29, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(144, 29, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(145, 29, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(146, 30, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(147, 30, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(148, 30, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(149, 30, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(150, 30, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(151, 31, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(152, 31, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(153, 31, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(154, 31, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(155, 31, NULL, '120 Dias', NULL, NULL, NULL, NULL),
(156, 32, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(157, 32, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(158, 32, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(159, 32, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(160, 32, NULL, '120 Dias', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `contactos`
--

INSERT INTO `contactos` (`id`, `empresa_id`, `telemovel`, `contacto`, `telefone`, `fax`, `email`, `facebook`, `whatsapp`, `skype`, `twitter`, `linkedin`, `website`, `created_at`, `updated_at`) VALUES
(1, 1, '943454745', '943454745', '943454745', NULL, 'geral@atomo.co.ao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, '934597159', '934597159', '934597159', NULL, 'kobe35@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '947991013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, '911222333', NULL, '911222333', NULL, 'iondricka@mertz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, '911222333', NULL, '911222333', NULL, 'theo76@collins.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 5, '911222333', NULL, '911222333', NULL, 'emoore@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 6, '911222333', NULL, '911222333', NULL, 'gutmann.erik@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 7, '999999', NULL, '911222333', NULL, 'stephon.franecki@jones.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 8, '911222333', NULL, '911222333', NULL, 'mdibbert@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 9, '911222333', NULL, '911222333', NULL, 'breitenberg.alda@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 10, '911222333', NULL, '911222333', NULL, 'anya.dibbert@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 11, '911222333', NULL, '911222333', NULL, 'bret.casper@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 12, '911222333', NULL, '911222333', NULL, 'kbrekke@wilkinson.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 13, '911222333', NULL, '911222333', NULL, 'rosalinda99@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 14, '911222333', NULL, '911222333', NULL, 'mhand@olson.biz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 15, '911222333', NULL, '911222333', NULL, 'alek.frami@langworth.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 16, '911222333', NULL, '911222333', NULL, 'orn.merle@larkin.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 17, '911222333', NULL, '911222333', NULL, 'zelma.donnelly@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 18, '911222333', NULL, '911222333', NULL, 'elmira46@terry.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 19, '923724128/945007392', '923724128/945007392', '923724128/945007392', NULL, 'socigrafica@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, '911222333', NULL, '911222333', NULL, 'vhegmann@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, '911222333', NULL, '911222333', NULL, 'aiyana10@dickens.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, '911222333', NULL, '911222333', NULL, 'heidenreich.ashlynn@reynolds.info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, '911222333', NULL, '911222333', NULL, 'mosciski.kobe@murazik.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, '911222333', NULL, '911222333', NULL, 'steve59@mills.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 20, '911222333', NULL, '911222333', NULL, 'valerie.cartwright@rutherford.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 21, '911222333', NULL, '911222333', NULL, 'lowe.michele@schmidt.biz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 22, '911222333', NULL, '911222333', NULL, 'treutel.sadye@pfeffer.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 23, '924353383', NULL, '924353383', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 24, '911222333', NULL, '911222333', NULL, 'jcrooks@goodwin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 25, '911222333', NULL, '911222333', NULL, 'fortiz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 26, '940905458', '940905454', '940905458', NULL, 'magicodecor29@gmail.com', NULL, '940905458', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 26, '939283666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, '911222333', NULL, '911222333', NULL, 'marvin61@klein.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, '911222333', NULL, '911222333', NULL, 'willms.marilie@heller.info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, '911222333', NULL, '911222333', NULL, 'marion.swift@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, '911222333', NULL, '911222333', NULL, 'princess95@rice.org', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, '911222333', NULL, '911222333', NULL, 'berenice27@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 27, '911222333', NULL, '911222333', NULL, 'grant.henri@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 28, '944604013', '+244 950 629 190', '+244 932 529 318', NULL, 'fesssegurancaeletronica@gmail.com', NULL, '+244 932 529 318', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 29, '911222333', NULL, '911222333', NULL, 'royal80@wilderman.net', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 30, '930424791', NULL, '930424791', NULL, 'nsinguijoao01@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, '911222333', NULL, '911222333', NULL, 'kellie.dach@ferry.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, '911222333', NULL, '911222333', NULL, 'opollich@williamson.info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, '911222333', NULL, '911222333', NULL, 'orion.bailey@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, '911222333', NULL, '911222333', NULL, 'xskiles@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, '911222333', NULL, '911222333', NULL, 'reilly.jalyn@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, '911222333', NULL, '911222333', NULL, 'uebert@smith.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, '911222333', NULL, '911222333', NULL, 'jayce.walker@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 31, NULL, NULL, '926 128 404', NULL, 'financas@odeal.ao', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 32, '911222333', NULL, '911222333', NULL, 'fpaucek@medhurst.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `departamentos`
--

INSERT INTO `departamentos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(2, 1, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(3, 1, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(4, 2, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(7, 3, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(8, 3, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(9, 3, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(10, 4, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(11, 4, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(12, 4, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(13, 5, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(14, 5, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(15, 5, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(16, 6, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(17, 6, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(18, 6, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(19, 7, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(20, 7, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(21, 7, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(22, 8, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(23, 8, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(24, 8, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(25, 9, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(26, 9, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(27, 9, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(28, 10, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(29, 10, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(30, 10, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(31, 11, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(32, 11, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(33, 11, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(34, 12, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(35, 12, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(36, 12, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(37, 13, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(38, 13, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(39, 13, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(40, 14, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(41, 14, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(42, 14, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(43, 15, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(44, 15, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(45, 15, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(46, 16, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(47, 16, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(48, 16, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(49, 17, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(50, 17, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(51, 17, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(52, 18, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(53, 18, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(54, 18, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(55, 19, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(56, 19, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(57, 19, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(58, 20, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(59, 20, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(60, 20, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(61, 21, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(62, 21, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(63, 21, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(64, 22, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(65, 22, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(66, 22, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(67, 23, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(68, 23, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(69, 23, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(70, 24, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(71, 24, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(72, 24, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(73, 25, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(74, 25, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(75, 25, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(76, 26, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(77, 26, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(78, 26, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(79, 27, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(80, 27, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(81, 27, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(82, 28, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(83, 28, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(84, 28, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(85, 29, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(86, 29, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(87, 29, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(88, 30, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(89, 30, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(90, 30, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(91, 31, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(92, 31, '0001', 'Gestão', 'Gesto', 1, NULL, NULL),
(93, 31, '0001', 'Vendas', 'Vendas', 1, NULL, NULL),
(94, 32, '0001', 'Administraço', 'Administraão', 1, NULL, NULL),
(95, 32, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(96, 32, '0001', 'Vendas', 'Vendas', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designacao` varchar(191) NOT NULL,
  `nif` varchar(191) NOT NULL,
  `registo_comercial` varchar(191) DEFAULT NULL,
  `data_fundacao` date NOT NULL,
  `csocial` varchar(191) DEFAULT NULL,
  `representante` varchar(191) NOT NULL,
  `telefone` int(10) DEFAULT NULL,
  `ndi_rep` varchar(191) NOT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `expermental` tinyint(1) DEFAULT NULL,
  `prazo_inicio` date DEFAULT NULL,
  `prazo_termino` date DEFAULT NULL,
  `data_criacao` varchar(191) DEFAULT NULL,
  `operador` varchar(191) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED DEFAULT NULL,
  `id_contacto` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `designacao`, `nif`, `registo_comercial`, `data_fundacao`, `csocial`, `representante`, `telefone`, `ndi_rep`, `descricao`, `foto`, `status`, `expermental`, `prazo_inicio`, `prazo_termino`, `data_criacao`, `operador`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, 'Átomo tecnologias e Inovação', '5001039342', '0000000000', '1985-06-14', '00000000', 'DEFAULT', 0, '00000000', NULL, '1724852400.jpg', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(2, 'B.PERDIGÃO COMERCIAL, LDA', '5000221090', '0000', '1987-12-25', '200.000,00', 'Abílio Amaral', 0, '006217158BE048', NULL, '1723646277.jpg', 0, NULL, '2024-07-28', '2024-09-21', NULL, NULL, 2, 2, NULL, NULL),
(3, 'Okuli Group', '5000918423', '0000000000', '1983-01-31', '00000000', 'H. Machado', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-20', '2024-08-28', NULL, NULL, 4, 4, NULL, NULL),
(4, 'Mundo da Contabilidade', '5001462024', '0000000000', '1984-01-31', '00000000', 'Lucas Cacongo', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-22', '2024-08-30', NULL, NULL, 5, 5, NULL, NULL),
(5, 'SUSHI SUKI- Prestação de serviço e comércio Geral, LDA', '5000735116', '5000735116', '2011-03-15', '00000000', 'Victor Seabra', 0, '00000000', NULL, 'null.png', 0, NULL, '2024-08-23', '2024-08-31', NULL, NULL, 6, 6, NULL, NULL),
(6, 'C.PROVIDER-COMERCIO GERAL,LDA', '5000652415', '0000000000', '1992-07-09', '00000000', 'José Correia', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-26', '2024-09-03', NULL, NULL, 8, 8, NULL, NULL),
(7, 'Joel  Mariscos e Pescados', '004963124LA045', '0000000000', '1996-03-24', '12.000.000,00', 'Martins Germano', 0, '00000000', '921745480', '1724674714.jpg', 0, NULL, '2024-08-26', '2024-09-03', NULL, NULL, 9, 9, NULL, NULL),
(8, 'Soumana', '5000375842', '0000000000', '1984-12-31', '00000000', 'Djfjkfkf\'g', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-26', '2024-09-03', NULL, NULL, 11, 11, NULL, NULL),
(9, 'teste', '0072566672', '0000000000', '2009-06-18', '00000000', 'Ulima', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-27', '2024-09-04', NULL, NULL, 12, 12, NULL, NULL),
(10, 'Átomo', '5000428574', '0000000000', '2012-01-19', '00000000', 'Ulima', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-27', '2024-09-04', NULL, NULL, 13, 13, NULL, NULL),
(11, 'Cláudio e Otiniel', '5001919423', '0000000000', '2009-07-03', '00000000', 'Bilga Mateque', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-28', '2024-09-05', NULL, NULL, 17, 17, NULL, NULL),
(12, 'Atomo Tecniologias', '5000647474', '0000000000', '1985-02-11', '00000000', 'Gonçalves Nhanga', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-28', '2024-09-05', NULL, NULL, 18, 18, NULL, NULL),
(13, 'A.D.G 28-COMERCIO GERAL, LDA', '5001919377', '0000000000', '2016-11-27', '00000000', 'Armando Gonçalves', 0, '00000000', '', 'null.png', 1, NULL, '2024-08-28', '2024-09-05', NULL, NULL, 19, 19, NULL, NULL),
(14, 'KAFUNGA GUETH-COMÉRCIO E INDÚSTRIA', '5001348515', '5001348515', '2020-02-23', '100,000', 'Augusto Pembele', 932764244, '5001348515', NULL, '1724932948.png', 0, NULL, '2024-08-29', '2024-09-06', NULL, NULL, 20, 20, NULL, NULL),
(15, 'Afuana Transportes e prestação de serviços', '5000540323', '0000000000', '1980-02-19', '00000000', 'Antônio José', 945177873, '00000000', '', 'null.png', 1, NULL, '2024-09-02', '2024-09-10', NULL, NULL, 22, 22, NULL, NULL),
(16, 'INACIOROMAO', '005206758LA040', '0000000000', '2003-06-13', '00000000', 'ROMAO', 939801238, '00000000', '', 'null.png', 1, NULL, '2024-09-02', '2024-09-10', NULL, NULL, 23, 23, NULL, NULL),
(17, 'KupOration', '007959892LA048', '0000000000', '1972-06-13', '00000000', 'Hermenegildo Kupessa Da Cruz Pedro', 937509863, '00000000', '', 'null.png', 1, NULL, '2024-09-03', '2024-09-11', NULL, NULL, 24, 24, NULL, NULL),
(18, '928299926', '000143227BA025', '0000000000', '2014-10-08', '00000000', 'Aristides Chingolo', 928299926, '00000000', '', 'null.png', 1, NULL, '2024-09-03', '2024-09-11', NULL, NULL, 25, 25, NULL, NULL),
(19, 'Socigráfica-Sociedade de Comércio e Indústria Gráfica, Lda', '5401114125', '5401114125', '2006-08-25', '00000000', 'Augusto Xavier Joaquim', 945847514, '00000000', NULL, '1734427873.jpg', 0, NULL, '2024-09-12', '2024-09-19', NULL, NULL, 27, 27, NULL, NULL),
(20, 'anitec', '50021457811', '0000000000', '1991-02-20', '00000000', 'Anitec', 929916942, '00000000', '', 'null.png', 1, NULL, '2024-10-02', '2024-10-09', NULL, NULL, 33, 33, NULL, NULL),
(21, 'KESSENGE & IRMÃOS, LDA', '5000807990', '0000000000', '2015-11-15', '00000000', 'Aristides Chingolo', 928299926, '00000000', '', 'null.png', 1, NULL, '2024-10-08', '2024-10-15', NULL, NULL, 36, 36, NULL, NULL),
(22, 'GRUPO TRAORE LDA', '5417336173', '0000000000', '1994-08-19', '00000000', 'HAMIDOU TRAORE', 924464660, '00000000', '', 'null.png', 1, NULL, '2024-10-11', '2024-10-18', NULL, NULL, 37, 37, NULL, NULL),
(23, 'DELISKIN ONR, LDA', '5001742361', '0000000000', '2023-11-22', '100000', 'Nicol Edgar Morais Valaço', 924353383, '00000000', NULL, 'null.png', 0, NULL, '2024-10-11', '2024-10-18', NULL, NULL, 38, 38, NULL, NULL),
(24, 'Bumbar Prestação de Serviços, Lda', '5403104240', '0000000000', '1984-05-02', '00000000', 'Chelsea Ganga', 925078563, '00000000', '', 'null.png', 1, NULL, '2024-10-16', '2024-10-23', NULL, NULL, 41, 41, NULL, NULL),
(25, 'AB.MATAU.RS', '001467570HO038', '0000000000', '1996-06-19', '00000000', 'Ricardo Pereira Agostinho Songamaso', 928917407, '00000000', '', 'null.png', 1, NULL, '2024-10-16', '2024-10-23', NULL, NULL, 45, 45, NULL, NULL),
(26, 'Mágico Decor', '5001875086', '12909-24/240320', '2024-03-20', '100.000,00', 'Walid Abdelghafar Aly Eldafrawy', 940905458, 'A31928067', NULL, '1729679417.png', 0, NULL, '2024-10-23', '2024-10-30', NULL, NULL, 46, 46, NULL, NULL),
(27, 'Sarha comercio & serviço', '5001584707', '0000000000', '1980-07-11', '00000000', 'Abel Gelado', 926956960, '00000000', '', 'null.png', 1, NULL, '2024-11-01', '2024-11-08', NULL, NULL, 55, 55, NULL, NULL),
(28, 'FESS SEGURANÇA ELETRÓNICA COMÉRCIO GERAL E PRESTAÇÃO DE SERVIÇOS (SU), LDA', '5001998390', '0000000000', '2024-06-12', '100000', 'Fernando Masa Simão', 932529318, '00000000', NULL, '1730472244.png', 0, NULL, '2024-11-01', '2024-11-08', NULL, NULL, 56, 56, NULL, NULL),
(29, 'Cliente Teste', '5001504312', '0000000000', '1983-07-01', '00000000', 'Baptista', 932764244, '00000000', '', 'null.png', 1, NULL, '2024-11-21', '2024-11-28', NULL, NULL, 69, 69, NULL, NULL),
(30, '944604013', '5000540544', '0000000000', '2020-06-20', '100000', 'André Bengui', 944604013, '007574340LA047', NULL, '1732640529.jpg', 0, NULL, '2024-11-26', '2024-12-03', NULL, NULL, 70, 70, NULL, NULL),
(31, 'O DEAL - PRESTACAO DE SERVICOS E COMERCIO GERAL, LDA', '5001822667', '0000000000', '2024-09-01', '100000', 'Luis Gomes', 92628404, '00000000', NULL, '1734334722.jpg', 0, NULL, '2024-12-02', '2024-12-09', NULL, NULL, 78, 78, NULL, NULL),
(32, 'Pao Doce', '0000', '0000000000', '1973-11-08', '00000000', 'Doce', 956876499, '00000000', NULL, 'null.png', 0, NULL, '2024-12-16', '2024-12-24', NULL, NULL, 82, 82, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pais` varchar(191) DEFAULT NULL,
  `cidade` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id`, `empresa_id`, `pais`, `cidade`, `endereco`, `created_at`, `updated_at`) VALUES
(1, 1, 'Angola', 'Luanda', 'Talatona-Bomba dos Mirantes, Edificio da Suave-2º andar', NULL, NULL),
(2, 2, 'Angola', 'Bié', 'Estrada Nacional 250, Bairro Azul 1', NULL, NULL),
(3, 2, 'Angola', 'Cuito', 'Estrada Nacional 250, Bairro Azul 1', NULL, NULL),
(4, 3, 'Angola', 'Luanda', '6185 Schinner Gardens Apt. 465\nReynaland, PA 42213', NULL, NULL),
(5, 4, 'Angola', 'Luanda', '4072 Collier Fork Apt. 530\nMikelton, OR 32085', NULL, NULL),
(6, 5, 'Angola', 'Luanda', '70153 Alexandre PortsCartershire, NE 55583', NULL, NULL),
(7, 5, 'Angola', 'Luanda', 'Maculusso', NULL, NULL),
(8, 6, 'Angola', 'Luanda', '48498 Buck Orchard Suite 652\nMelvinaburgh, VT 58872', NULL, NULL),
(9, 7, 'Angola', 'Luanda', 'Luanda', NULL, NULL),
(10, 7, 'Angola', NULL, 'Luanda', NULL, NULL),
(11, 8, 'Angola', 'Luanda', '7956 Hobart Mission Apt. 400\nDeckowchester, PA 73308-4901', NULL, NULL),
(12, 9, 'Angola', 'Luanda', '286 O\'Keefe Squares Suite 251\nFlatleymouth, NE 96938-2106', NULL, NULL),
(13, 10, 'Angola', 'Luanda', '8186 Smith Cove\nWest Ramona, AR 35021-9434', NULL, NULL),
(14, 10, 'Angola', 'Luanda', 'Benfica-Dona Xepa', NULL, NULL),
(15, 1, 'Angola', NULL, 'Luanda', NULL, NULL),
(16, 1, 'Angola', NULL, 'Benfica', NULL, NULL),
(17, 11, 'Angola', 'Luanda', '2431 Mann Junction Apt. 534\nHeathcoteshire, OK 13984', NULL, NULL),
(18, 12, 'Angola', 'Luanda', '68999 Verda Crest\nGradymouth, IN 36535', NULL, NULL),
(19, 13, 'Angola', 'Luanda', '72660 Bo Mews\nEbertberg, NJ 84493', NULL, NULL),
(20, 14, 'Angola', 'Luanda', 'Urbanização Nova Vida - Cambambe 2 -63', NULL, NULL),
(21, 7, 'Angola', 'Luanda', 'Ilha de luanda avenida mortala mohamede', NULL, NULL),
(22, 15, 'Angola', 'Luanda', '438 Miller Causeway\nLake Garrettfort, DC 70464', NULL, NULL),
(23, 16, 'Angola', 'Luanda', '913 Benedict Burg\nHirtheshire, NM 03014-4615', NULL, NULL),
(24, 17, 'Angola', 'Luanda', '2042 Wiley Springs\nNorth Margarettebury, DC 11779', NULL, NULL),
(25, 18, 'Angola', 'Luanda', '2400 Pearl Walk Suite 363\nSouth Mckayla, ME 74234', NULL, NULL),
(26, 18, 'Angola', 'luanda', 'Rua 21 de Janeiro', NULL, NULL),
(27, 19, 'Angola', 'Luanda', 'Luanda', NULL, NULL),
(28, NULL, 'Angola', 'Luanda', '20133 Pfannerstill Ramp\nWest Johnpaulberg, VT 21623-5662', NULL, NULL),
(29, NULL, 'Angola', 'Luanda', '583 Jerome Court Suite 032\nNew Lexus, HI 95167-0448', NULL, NULL),
(30, NULL, 'Angola', 'Luanda', '126 Jerad Lane\nWest Hudson, SC 42728-9254', NULL, NULL),
(31, NULL, 'Angola', 'Luanda', '51594 Kylee Station\nOpheliachester, MS 74435-3123', NULL, NULL),
(32, NULL, 'Angola', 'Luanda', '274 Anissa Path\nBreannachester, IA 61364', NULL, NULL),
(33, 20, 'Angola', 'Luanda', '269 Lyric Station\nKarinetown, FL 98848', NULL, NULL),
(34, 19, 'Angola', 'Luanda', 'Largo Tristão - Luanda', NULL, NULL),
(35, 19, 'Angola', NULL, 'BAIRRO DANGAREAUX', NULL, NULL),
(36, 21, 'Angola', 'Luanda', '957 Milford Port Apt. 641\nPort Amos, CA 74864', NULL, NULL),
(37, 22, 'Angola', 'Luanda', '9739 Jacobson Creek Apt. 811\nSouth Laurie, UT 87346', NULL, NULL),
(38, 23, 'Angola', 'Luanda', 'Rua Sizenando Marques, Alvalade - Maianga', NULL, NULL),
(39, 23, 'Angola', 'LUANDA', 'LUANDA', NULL, NULL),
(40, 23, 'Angola', 'luanda', 'cassequel', NULL, NULL),
(41, 24, 'Angola', 'Luanda', '319 Darlene Parkway Suite 513\nEast Olga, MI 63686-6273', NULL, NULL),
(42, 24, 'Angola', 'Luanda', 'Avenida Fidel Castro', NULL, NULL),
(43, 24, 'Angola', 'Luanda', 'Nova vida', NULL, NULL),
(44, 24, 'Angola', 'Luanda', 'Talatona', NULL, NULL),
(45, 25, 'Angola', 'Luanda', '5519 Brakus Road Suite 341\nHoracestad, MT 50358-3132', NULL, NULL),
(46, 26, 'Angola', 'Luanda', '55388 Weimann Shoals Apt. 621South Hebertown, MD 77534', NULL, NULL),
(47, 26, 'Angola', 'Camama', 'Luanda', NULL, NULL),
(48, 19, 'Angola', 'Luanda', 'Benfica, Rua da AngoMart', NULL, NULL),
(49, 19, 'Angola', 'Luanda', 'Bairro Benfica', NULL, NULL),
(50, NULL, 'Angola', 'Luanda', '4483 Name Crest\nSouth Laurencechester, MS 73599-4953', NULL, NULL),
(51, NULL, 'Angola', 'Luanda', '49756 Johnston Mountain Apt. 900\nMurrayshire, OK 55575-8957', NULL, NULL),
(52, NULL, 'Angola', 'Luanda', '341 Ubaldo Point Suite 461\nJessikaland, OH 95652', NULL, NULL),
(53, NULL, 'Angola', 'Luanda', '93327 Bryon River Apt. 227\nEast Noemieberg, NC 52286-0503', NULL, NULL),
(54, NULL, 'Angola', 'Luanda', '3502 Keagan Loop Suite 546\nAndyshire, MO 47317-8506', NULL, NULL),
(55, 27, 'Angola', 'Luanda', '21629 Gottlieb Square\nEast Brookshire, OR 07843', NULL, NULL),
(56, 28, 'Angola', 'Luanda', '37X4+458, Estrada Camama-Talatona, Luanda', NULL, NULL),
(57, 28, 'Angola', NULL, 'Luanda/Angola', NULL, NULL),
(58, 28, 'Angola', NULL, 'Luanda/Angola', NULL, NULL),
(59, 28, 'Angola', 'Luanda', 'Luanda', NULL, NULL),
(60, 28, 'Angola', 'Luanda', 'Luanda', NULL, NULL),
(61, 28, 'Angola', 'Luanda', 'Luanda/Angola', NULL, NULL),
(62, 28, 'Angola', 'Luanda', 'Luanda/Angola', NULL, NULL),
(63, 19, 'Angola', NULL, 'Bairro Benfica', NULL, NULL),
(64, 19, 'Angola', NULL, 'Bairro Benfica junto a praça do Kifica', NULL, NULL),
(65, 19, 'Angola', NULL, 'Bairro Benfica KM30', NULL, NULL),
(66, 19, 'Angola', NULL, 'BAIRRO GAMEK A DIREITA', NULL, NULL),
(67, 19, 'Angola', NULL, 'Bairro Benfica', NULL, NULL),
(68, 19, 'Angola', NULL, 'Bairro Patriota', NULL, NULL),
(69, 29, 'Angola', 'Luanda', '5734 Mann Light Apt. 960\nNorth Leannaville, IL 71840-5242', NULL, NULL),
(70, 30, 'Angola', 'Luanda', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', NULL, NULL),
(71, NULL, 'Angola', 'Luanda', '5871 Nader Ridges\nLeschhaven, TN 92887', NULL, NULL),
(72, NULL, 'Angola', 'Luanda', '1061 Morissette Overpass\nWest Ambrosefurt, CA 17623-3838', NULL, NULL),
(73, NULL, 'Angola', 'Luanda', '6722 Eino Cliffs Suite 787\nNorth Cooper, UT 37002-3153', NULL, NULL),
(74, NULL, 'Angola', 'Luanda', '85009 Langworth Shoal\nWest Eudora, CA 02430', NULL, NULL),
(75, NULL, 'Angola', 'Luanda', '85895 Daniel Burg Apt. 665\nWest Leonel, IL 35859-7406', NULL, NULL),
(76, NULL, 'Angola', 'Luanda', '470 Dooley Avenue\nLake Tonishire, MD 06715-1214', NULL, NULL),
(77, NULL, 'Angola', 'Luanda', '860 Isabelle Rapid\nEast Jaspermouth, SC 99299', NULL, NULL),
(78, 31, 'Angola', 'Luanda', 'Rua Comandante Eurico, Apartamento n.° 3, Edificio 64, Kinaxixe,  Municipio da Ingombotas, Província de Luanda.', NULL, NULL),
(79, 31, 'Angola', 'Huambo', 'Bairro da Chivela, Nº S/N Município do Huambo', NULL, NULL),
(80, 31, 'Angola', 'Luanda', 'Luanda, Município de Luanda, Distrito Urbano da Ingombotaa, Bairro Kinaxixi, Rua Comandante Eurico, Edifício 64, Apartamento nª SN', NULL, NULL),
(81, 31, 'Angola', 'Luanda', 'Cacuaco', NULL, NULL),
(82, 32, 'Angola', 'Luanda', 'chi', NULL, NULL),
(83, 32, 'Angola', 'Kilamba Kiaxi', 'Cale', NULL, NULL),
(84, 19, 'Angola', 'Luanda', 'Bairro Benfica', NULL, NULL),
(85, 19, 'Angola', 'Luanda', 'Bairro Talatona  Mundo Verde', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricantes`
--

CREATE TABLE `fabricantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fabricantes`
--

INSERT INTO `fabricantes` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Diverso', 'Gryphon: \'I.', 1, NULL, NULL),
(2, 2, '0001', 'Diverso', 'SIT down,\' the.', 1, NULL, NULL),
(3, 3, '0001', 'Diverso', 'YOURS: I don\'t.', 1, NULL, NULL),
(4, 4, '0001', 'Diverso', 'Dinah: I think.', 1, NULL, NULL),
(5, 5, '0001', 'Diverso', 'THE KING AND.', 1, NULL, NULL),
(6, 6, '0001', 'Diverso', 'The Frog-Footman.', 1, NULL, NULL),
(7, 7, '0001', 'Diverso', 'I should.', 1, NULL, NULL),
(8, 8, '0001', 'Diverso', 'I to get.', 1, NULL, NULL),
(9, 9, '0001', 'Diverso', 'Alice panted as.', 1, NULL, NULL),
(10, 10, '0001', 'Diverso', 'Majesty,\' the.', 1, NULL, NULL),
(11, 11, '0001', 'Diverso', 'She waited.', 1, NULL, NULL),
(12, 12, '0001', 'Diverso', 'Which shall.', 1, NULL, NULL),
(13, 13, '0001', 'Diverso', 'Alice hastily.', 1, NULL, NULL),
(14, 14, '0001', 'Diverso', 'And she kept on.', 1, NULL, NULL),
(15, 15, '0001', 'Diverso', 'Then the Queen.', 1, NULL, NULL),
(16, 16, '0001', 'Diverso', 'Five. \'I.', 1, NULL, NULL),
(17, 17, '0001', 'Diverso', 'She said.', 1, NULL, NULL),
(18, 18, '0001', 'Diverso', 'Cat. \'Do.', 1, NULL, NULL),
(19, 19, '0001', 'Diverso', 'NOT, being made.', 1, NULL, NULL),
(20, 20, '0001', 'Diverso', 'I don\'t want YOU.', 1, NULL, NULL),
(21, 21, '0001', 'Diverso', 'Alice glanced.', 1, NULL, NULL),
(22, 22, '0001', 'Diverso', 'Alice went timidly.', 1, NULL, NULL),
(23, 23, '0001', 'Diverso', 'Alice went.', 1, NULL, NULL),
(24, 24, '0001', 'Diverso', 'Gryphon, before.', 1, NULL, NULL),
(25, 25, '0001', 'Diverso', 'I know all.', 1, NULL, NULL),
(26, 26, '0001', 'Diverso', 'Alice\'s elbow.', 1, NULL, NULL),
(27, 27, '0001', 'Diverso', 'Alice dear!\' said.', 1, NULL, NULL),
(28, 28, '0001', 'Diverso', 'Alice said with.', 1, NULL, NULL),
(29, 29, '0001', 'Diverso', 'I to get into.', 1, NULL, NULL),
(30, 30, '0001', 'Diverso', 'The Pool.', 1, NULL, NULL),
(31, 31, '0001', 'Diverso', 'King; and.', 1, NULL, NULL),
(32, 32, '0001', 'Diverso', 'Five, in a.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banco_id` int(11) DEFAULT NULL,
  `total_banco` decimal(30,2) DEFAULT NULL,
  `total_caixa` decimal(30,2) DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `facturas`
--

INSERT INTO `facturas` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `banco_id`, `total_banco`, `total_caixa`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `total_pendente`, `hash`, `status`, `documento_id`, `documento_numero`, `is_recibo`, `is_nota`, `created_at`, `updated_at`) VALUES
(1, 2, 'FT  2024/1', 3, 'Alberto Capingãla', '006217158BE048', 'Estrada Nacional 250, Bairro Azul 1', '2024-08-15 12:39:20', '2024-08-15 00:00:00', 3, NULL, NULL, NULL, 3, 2, 'Administrador', NULL, 25994.00, 519.88, 3639.16, 0.00, 29113.28, 19113.28, 'mu9gjTfKfnyTcmp2GmG4ktCN4rKh8xdidxhHF+0GleMdfM3jsHTQ4LerrOiMOZCztfE/ZLndhxq0RqHm3PZ2Hd+Ez8wolUwHosSuNkWbwmrUJD66J3zMS/uDLzPwUEdw7qKAKcLnY69uRa1qZmqCR3X90lcUHKiylrAVOIefJ4s=', 1, 1, 'PP  2024/1', 1, 1, '2024-08-15 10:39:20', '2024-08-15 10:42:19'),
(2, 5, 'FT  2024/1', 7, 'Diogo', '12345678', 'Maculusso', '2024-08-23 14:38:44', '2024-08-23 00:00:00', 10, NULL, NULL, NULL, 9, 11, 'Administrador', NULL, 6500.00, 0.00, 0.00, 0.00, 6500.00, 6500.00, 'elqxhECbO+wl5F42E/HXs6aD6hcGj0IlRtqC4YZKBhIGLwmT55QKHtQNL1W6j3b7n1AYOmIpwudldX2w/Iw//H98MaakHnQ9N8ySiJqyT8LyEnTpQHR0YOA18sBVuhvHrUL51mMszE+WZOJgbh7FItPlBwBEwdUiwnuZH6AG5ko=', 1, 2, 'PP  2024/1', 1, 1, '2024-08-23 12:38:44', '2024-08-23 12:38:44'),
(3, 7, 'FT  2024/1', 10, 'primeiro Cliente', '12345678', 'Luanda', '2024-08-26 11:45:10', '2024-08-26 00:00:00', 14, NULL, NULL, NULL, 13, 14, 'Administrador', 'Esta fatura está  aser feita no memoneto da formação do sistema.', 7000.00, 0.00, 0.00, 0.00, 7000.00, 0.00, 'i4zMOEHiM/ntglw6LlYwc6rYBnuuIpVutgbOowTcg56L5BDj1lSRZTKwOkmyKYA/TBGGPT0xKnAGzR1D2YJC7JwmltuQhnRqYu/GSZ0QKNA5u0ZNKw/0yLI0Z2O0iqTj5Kshx0vIMKiF84KHZATwUdGSqk1tLNErjTwT85g7/Tc=', 1, 3, 'PP  2024/1', 0, 1, '2024-08-26 09:45:10', '2024-08-26 09:46:58'),
(4, 1, 'FT 2024 2024/1', 15, 'Empresa A', '5000507091', 'Luanda', '2024-08-29 11:37:27', '2024-08-29 00:00:00', 1, NULL, NULL, NULL, 1, 7, 'Costa Lima', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 10000.00, 'l7qO/AJXl49O8OIAMgXT2aW/OR00D+EEBTcuoIBHpKPyxB1dVN6HJejWS+JtP84T4QUiVJOt27zIAAlVIxGXVH5vCn91fekbvjG2HRRq0B+91zp9SNr7CYbFO0a3LaxxkpLfTII9RbiDJiFJu3zvlmBKxBWrbsaDBI+N2KKnNGU=', 1, 5, 'PP 2024 2024/2', 1, 1, '2024-08-29 09:37:28', '2024-08-29 09:37:42'),
(5, 19, 'FT  2024/1', 29, 'EQUADOR', '999999999', 'Largo Tristão - Luanda', '2024-10-03 09:45:07', '2024-10-03 00:00:00', 37, NULL, NULL, NULL, 37, 32, 'Augusto Xavier Joaquim', NULL, 150.00, 0.00, 0.00, 0.00, 150.00, 50.00, 'WEIUEYzmQlHtec8E1RqD35HaR698geuZrE+wgiq8DSQ7cYZZaX+ud8Ev14YYmg0lF4uzi/yDUUU89smLKynXYZ2tj7Bp0kHBGtLEw0Woqt7fAi8KRAdkO+aQIGYSWKB6i9lgjlFlxGDFPMKUyq+uH7YIVLpZ0p5GuKw+l0jcoMM=', 1, 12, 'PP  2024/1', 1, 1, '2024-10-03 07:45:07', '2024-10-03 07:46:00'),
(6, 23, 'FT  2024/1', 35, 'Joyce', '0000001', 'cassequel', '2024-10-11 13:41:49', '2024-10-11 00:00:00', 45, NULL, NULL, NULL, 45, 37, 'Administrador', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 10000.00, 'UrFzYPlxTrVRGUEKpDt07E0s3Sl6SHhe8RQxQlscFYwenXglden6RpMu3JcY9CWaOQOvpmpTBlLfr9UFBgvokvAyzg6q2zPrCmNTUekk1VjkLknWc7qIBkOar/Egb0iFu3aFGG6c4xobpSiEXZ3yF8UZmCVPheSZo26aP6Eu5/8=', 1, 14, 'PP  2024/1', 1, 1, '2024-10-11 11:41:49', '2024-10-11 11:41:49'),
(7, 24, 'FT  2024/1', 37, 'Chinangol', '5403094229', 'Avenida Fidel Castro', '2024-10-16 14:26:42', '2024-10-16 00:00:00', 47, NULL, NULL, NULL, 47, 38, 'Administrador', NULL, 500000.00, 0.00, 0.00, 32500.00, 467500.00, 467500.00, 'qFjW3Xwdy9gQF3R5JoQpZb07ZND/3GKUKV/njIX3gaiCWrwHu+LXycG83mz+AKLqp0ZVOqXV39091lqFL9DkPwmpt+63cTrK4dPvwD9Okkxqy9hrdDgucB6O1QF8Zy5VFgJhBJyTEtBBK2noEp8Auq6y4A2m8Fet1Ei3BKl+Cic=', 1, 15, 'PP  2024/1', 1, 1, '2024-10-16 12:26:42', '2024-10-16 12:26:42'),
(8, 26, 'FT 2024 2024/1', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 11:17:05', '2025-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 980000.00, 147000.00, 137200.00, 0.00, 970200.00, 970200.00, 'OVuPXcyPNTiF6N8q77DrPl4aSpo10d3MbE0zi2Q2kU0kYIxHhoI0H1MXEW+rWqXZFfhBcdOS/23tl/NUiKbeiTo4eVwfza3smuWGtjzcOF5J/g885ycQuc9q1l4Is+vqKA/4B6lBp/pnL7TI13ZChMlbvqSCMNX+donE2uCya3E=', 1, NULL, NULL, 1, 1, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(9, 26, 'FT 2024 2024/1', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 11:17:06', '2025-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 980000.00, 147000.00, 137200.00, 0.00, 970200.00, 970200.00, 'qC3xpxtP04dem0JStLPdIMPlnXrt66Q9jlWKXarrOL3w945yMY9f8uZiXVjj+NDgSgP1BFYHBn9V1G8ntu95Mv3ypYTVq8fmt9ElvKqeSH0lFT1sFaiGt8c4oM2QCqLbvOClznU3ZNuvetde4ZzmRH4awJfVGJDOlc94WbNayEw=', 1, NULL, NULL, 1, 1, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(10, 26, 'FT 2024 2024/1', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 11:17:05', '2025-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 980000.00, 147000.00, 137200.00, 0.00, 970200.00, 970200.00, 'OVuPXcyPNTiF6N8q77DrPl4aSpo10d3MbE0zi2Q2kU0kYIxHhoI0H1MXEW+rWqXZFfhBcdOS/23tl/NUiKbeiTo4eVwfza3smuWGtjzcOF5J/g885ycQuc9q1l4Is+vqKA/4B6lBp/pnL7TI13ZChMlbvqSCMNX+donE2uCya3E=', 1, NULL, NULL, 1, 1, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(11, 26, 'FT 2024 2024/1', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 11:17:07', '2025-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 980000.00, 147000.00, 137200.00, 0.00, 970200.00, 970200.00, 'k6f3YikbCcX6xiRUWVCsopEeKAFP59z4OghvcQVw8wu69UUjrRcSPQkl+AvNW1L+C2sWDulR9g9McmfS/YM/Gzy7wh7erqIY7cj8c5K9P3hSQTgCq4pLstIEf8VT1JQenbtgOttXzeMsefT8M+bgj4h/LzPQVXrSXThaWa+xIH4=', 1, NULL, NULL, 1, 1, '2024-10-23 09:17:07', '2024-10-23 09:17:07'),
(12, 26, 'FT 2024 2024/1', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 11:17:07', '2025-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 980000.00, 147000.00, 137200.00, 0.00, 970200.00, 970200.00, 'CmKkv7M4+wYq/37tAWDyPdgJLP0UONIu/6tV1uF6RoV4HPnxGiBQeHqrCMmyLf2Iw1by3e9FjecYjAhz/tgdkFSae5palaV7Vr0d5lKzZ5gMWL5Te3wzgfYuoV0ws+YVZ7R0hRMCGDmBkoSYEQz2nmLRD8Yg+vzua53kOXs4RAU=', 1, NULL, NULL, 1, 1, '2024-10-23 09:17:07', '2024-10-23 09:17:07'),
(13, 26, 'FT 2024 2024/6', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 12:01:23', '2024-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 1607200.00, 17616.48, 225008.00, 0.00, 1814591.52, 1814591.52, 'dRgxhnNQ8Y8MrfzNjWXI+hUvnv4I7dVjP95bs0U3go+/IDPAb60A2386JmreBChDEpLVnFw3p1b6+0fzr0YMMH+OVJi2A9e24987E2cGFoIk+hZs9hXB9vGbdGVgLUnn+8FBEMyBwSeg7PBrs/qk499ceFwYq3P9GobjjIvwUgI=', 1, NULL, NULL, 1, 1, '2024-10-23 10:01:23', '2024-10-23 10:01:23'),
(14, 26, 'FT 2024 2024/7', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 12:26:34', '2024-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 1887200.00, 40386.08, 264208.00, 0.00, 2111021.92, 2111021.92, 'iM9n2BVSgvag+iV3d/7Ey3osWPUp6wwpNCIUjuUWBmj+z3pAhbjO0iqhy9x2LIqTsj7OP5nIbNeb8mlke2oEOo/pm59kiIXY70ATPvO7m7fk/dgva7wgitEHIWSusPj7cv3tPbk2lWEO1fcwvV+fjEnJonvsuryexCU9HQXlZhw=', 1, NULL, NULL, 1, 1, '2024-10-23 10:26:34', '2024-10-23 10:26:34'),
(15, 26, 'FT 2024 2024/7', 42, 'TECDIVIR (SU)', '5417304468', 'Luanda', '2024-10-23 12:26:36', '2024-10-23 00:00:00', 52, NULL, NULL, NULL, 51, 40, 'Administrador', NULL, 1887200.00, 40386.08, 264208.00, 0.00, 2111021.92, 2111021.92, 'iV1M3fz+ZYElj8mM5fuoLQf48LdgPSAL4PPh/tJM/gzGcW0GFuqUTWov6I84Qc5soLdxPqoEgX8TUCUe3kkbI/OF/ocq9jKeA0Tfnjzs8fFaToDdeWIJnve18u5I8+NrQjAbIJA+7wsN0+aI8564K2Nyby8kEm08P5XRzqcy+DM=', 1, NULL, NULL, 1, 1, '2024-10-23 10:26:36', '2024-10-23 10:26:36'),
(16, 28, 'FT 2024 2024/1', 47, 'Alaza Global Limitada', '540 116 7920', 'Luanda/Angola', '2024-11-01 14:30:00', '2024-11-01 00:00:00', 55, NULL, NULL, NULL, 55, 42, 'Fernando Simão', NULL, 275000.00, 0.00, 0.00, 0.00, 275000.00, 275000.00, 'TgUF3o9EwkbTLRTQ0lZ+1mzgXsb1OetlqQGOIy4AiclotkSeztdaFdu25vGf2z/haRgnr6mGOea8q55srI0dPRxDqEzKkpI7czQNtqv576ob0BBku5euekLU4Bt9V2tC9/90c2ByMWgn4iCLpMWpHd9lurz+3hWdlEbF3KJCbOU=', 1, NULL, NULL, 1, 1, '2024-11-01 13:30:00', '2024-11-01 13:30:00'),
(17, 28, 'FT 2024 2024/2', 47, 'Alaza Global Limitada', '540 116 7920', 'Luanda/Angola', '2024-11-01 16:37:14', '2024-11-01 00:00:00', 55, NULL, NULL, NULL, 55, 42, 'Fernando Simão', NULL, 593000.00, 0.00, 0.00, 0.00, 593000.00, 593000.00, 'jGeG3P1HB1U55LbGRqjHlufw/O2oROI5Q09+WFnZBKL4nXlxUhVGTK0xZ2bU/0jzQ6YgfODAyEz0j7eBuwVDyYpFS3DpTncRFhewJL7OnrLTd3dUFgfxHjIG0CVvX7TxF7K0e9i9FFG7lTGMoUqiDIYnme5qDF5BSQkTMiK6Koc=', 1, NULL, NULL, 1, 1, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(18, 28, 'FT  2024/3', 47, 'Alaza Global Limitada', '540 116 7920', 'Luanda/Angola', '2024-11-07 16:05:46', '2024-11-07 00:00:00', 55, NULL, NULL, NULL, 55, 42, 'Fernando Masa Simão', NULL, 1833100.00, 0.00, 0.00, 0.00, 1833100.00, 1833100.00, 'DavattfA04wann4FsWYTyyVGNaqqReyc3IN4rBOuV5iuLdZ1cPt0g5OcS3mtlEJFE2Otk8Pb6MYJFYiVucV8zpPefp5yn079M12ck3JxbVS7mZlwT+XQ8TOTVyXlfR066vXIOvLCR/9nnlJz7f0mEr5i1uy+iK9jeuQn2JnH3Ms=', 1, 19, 'PP  2024/4', 1, 1, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(19, 30, 'FT 2024 2024/1', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-26 18:08:44', '2024-10-11 00:00:00', 60, NULL, NULL, NULL, 59, 44, 'Administrador', NULL, 205600.00, 0.00, 0.00, 0.00, 205600.00, 205600.00, 'c1I7T/1vzcRrzoxbGFWUrBQPDxTuFBNvrEm+lTu3WwHC+HyCgETFXHCX7il0qm/TRlwQ/AZo+qG98Kd8pCfwy2dkQfqliaF7NBGQp0WelU1cIPpju1TvywZP7PWjwzIN8Qpk78N7bI6Zd5AAHw83GhQx4lJTDKkwmzjPquNSEXE=', 1, NULL, NULL, 1, 0, '2024-11-26 17:08:45', '2024-11-27 15:59:14'),
(20, 31, 'FT 2024 2024/1', 62, 'FELISAM CONSTRUÇÕES, LDA', '5000178802', 'Bairro da Chivela, Nº S/N Município do Huambo', '2024-12-02 17:00:39', '2024-12-09 00:00:00', 62, NULL, NULL, NULL, 61, 46, 'Luís Inacio Gomes', 'Factura referente ao mês de outubro', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, 'CK2tw5udvqARgm1O94id+pg9qKeJaWyRrKBouMHv+n8o9NvM/IwbHyX++/hZ5lRdxt8+uFNOefnkd2E3eS48XmVhv8fhjJ1agQvoVOdRPSbUENeRyKwmnL9lCp2MD0BFj7vfXhrrgrSN37RHhGVhF2/gPfJy/qhvjy3egXX2+38=', 1, NULL, NULL, 1, 1, '2024-12-02 16:00:39', '2024-12-02 16:00:39'),
(21, 31, 'FT 2024 2024/2', 62, 'FELISAM CONSTRUÇÕES, LDA', '5000178802', 'Bairro da Chivela, Nº S/N Município do Huambo', '2024-12-02 17:20:17', '2024-12-09 00:00:00', 62, NULL, NULL, NULL, 61, 46, 'Luís Inacio Gomes', NULL, 300000.00, 0.00, 0.00, 0.00, 300000.00, 300000.00, 'Rkb52rodahVP3AtS4SLNPd1R5g18DHjQM9E/OZ8ICFDOxG3g/89OnQbtwV4Qw/SorDZm8uTaSAKoTZpX1jvggk9EUTFWgnGwcC2j9rEMpogXNIQRRla25gxRpoS7P0ZByFh19GyS/Lck6YkvYcWU1dll3g/d1/4xWEt1WDYl9W0=', 1, NULL, NULL, 1, 1, '2024-12-02 16:20:18', '2024-12-02 16:20:18'),
(22, 31, 'FT 2024 2024/3', 62, 'FELISAM CONSTRUÇÕES, LDA', '5000178802', 'Bairro da Chivela, Nº S/N Município do Huambo', '2024-12-02 17:30:33', '2024-12-09 00:00:00', 62, NULL, NULL, NULL, 61, 46, 'Luís Inacio Gomes', 'Factura referente ao mês de novembro', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, 'f6BdP0YHWRRsyvRz+JsgYgyVgcc46gxjSWBzk4EM6SIl/4NBwcL+p6YLjFZzm9JHk0y+I0tEHOVsq3PnXXn/AGRZLgrKL4UlhP/WG0V7GKCj0YZgYlB929yfV9GlVIPYalpT5WINCI0CR0XcCpTtKKsE6ScC8C3Al9GoutFmtaY=', 1, NULL, NULL, 1, 1, '2024-12-02 16:30:34', '2024-12-02 16:30:34'),
(23, 31, 'FT 2024 2024/4', 63, 'ANGOLEVA - PRESTAÇÃO DE SERVIÇOS & COMÉRCIO GERAL, LDA', '5002202646', 'Luanda, Município de Luanda, Distrito Urbano da Ingombotaa, Bairro Kinaxixi, Rua Comandante Eurico, Edifício 64, Apartamento nª SN', '2024-12-02 17:49:44', '2024-12-20 00:00:00', 62, NULL, NULL, NULL, 61, 46, 'Luís Inacio Gomes', 'Factura Referente ao Apoio à Constituição da Empresa Angoleva', 100000.00, 0.00, 0.00, 0.00, 100000.00, 100000.00, 'Ep5crfayvKYldzi8uDIN3qVIzGIXrC3/j54eN6kkm0pJ1K9YFlpS6uYEdtMoTMgKPloyPNq7iWWjSsbVED92EjZtmqNRHN6in9/Cvsizov/M3NRgBnVHZCTPnoaoBD7yJUlpMkCJYoipAiXAmyZNiekUfX17+QClXCGRZdlnYb4=', 1, NULL, NULL, 1, 1, '2024-12-02 16:49:44', '2024-12-02 16:49:44'),
(24, 31, 'FT 2024 2024/5', 63, 'ANGOLEVA - PRESTAÇÃO DE SERVIÇOS & COMÉRCIO GERAL, LDA', '5002202646', 'Luanda, Município de Luanda, Distrito Urbano da Ingombotaa, Bairro Kinaxixi, Rua Comandante Eurico, Edifício 64, Apartamento nª SN', '2024-12-02 18:10:19', '2024-12-20 00:00:00', 62, NULL, NULL, NULL, 61, 46, 'Luís Inacio Gomes', 'Factura referente a criação da identidade visual da empresa Angoleva com desconto de 33% pelo primeiro serviço', 150000.00, 49500.00, 0.00, 0.00, 100500.00, 100500.00, 'JXow3TuB4sQhWSSTBdFNGJWBluSnpY9VTANu+ip9JpOFHr2Ta00pbvDnS3F76nssujpXNflARHQedhBk/gtV0FJN32hH77g7FG4+FHSk3CGUJ6J1yxy17eWcI1wVGjIMQTak341vKo+HFUmawWLrQStpgpqGWUVO/oF1NgSngAU=', 1, NULL, NULL, 1, 1, '2024-12-02 17:10:19', '2024-12-02 17:10:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `factura_recibos`
--

CREATE TABLE `factura_recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `banco_id` int(11) DEFAULT NULL,
  `total_banco` decimal(30,2) DEFAULT NULL,
  `total_caixa` decimal(30,2) DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `factura_recibos`
--

INSERT INTO `factura_recibos` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `banco_id`, `total_banco`, `total_caixa`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_nota`, `created_at`, `updated_at`) VALUES
(1, 2, 'FR  20241', 3, 'Alberto Capingãla', '006217158BE048', 'Estrada Nacional 250, Bairro Azul 1', '2024-08-15 12:45:25', '2024-08-16 00:00:00', 3, NULL, NULL, NULL, 3, 2, 'Administrador', 'fornecimento.', 25994.00, 0.00, 3639.16, 0.00, 29633.16, 'miNPYDFRLmmvgj+MAG6+vYBL5T0Vxw/omGHn2l5iWZHGEQuxLrGfLrV7fjVqlzMbTlCdD57BUCgPxWbq7xTfaZZZDKQm+T2IA7MtE2vAmZb3tGSJgihRStfJ1CKHc1/lqhgpApaNlstExxXg9Q0RmSgUWT3c7djtN4kBoLcbkM8=', 1, 1, '2024-08-15 10:45:25', '2024-08-15 10:45:25'),
(2, 1, 'FR 2024 20241', 16, 'Cliente C', '5417029815', 'Benfica', '2024-08-28 14:31:17', '2024-08-28 00:00:00', 2, NULL, NULL, NULL, 1, 8, 'gonsalves nhanga', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'hLyQWcLhQTLMav/e5ygUmG7iRvubEu3a28UvxIWJ+UFYvRzqwTJYw0WR6Uw2ebKdpw3ZteiHe+8u63l12gHW9QTmaSgBI1WimhoD427nUuan6HlVWhsSogiCTvPfTAeuKptv8rLyNYasEzh5KP/2Zq7jVlwobfGCSI99Vd5qDso=', 1, 1, '2024-08-28 12:31:17', '2024-08-28 12:31:17'),
(3, 1, 'FR 2024 20242', 15, 'Empresa A', '5000507091', 'Luanda', '2024-08-28 14:49:47', '2024-08-28 00:00:00', 2, NULL, NULL, NULL, 1, 8, 'gonsalves nhanga', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'KYcLBcCNO7JF9XEcaKGYr2KsquM9uYhtztzjQDJ2AhSy/23Gfb1Wqi5/mibgXirPM8rX1khYuct5+3Vf8KkNpi+iacblLpoW/ivBjzzs17wNrDKZO1AYjYCg+MPikIgfo56aEG9Ot6xweBBH4gZ79iocaSLFrdBhBEU6uAYHOpY=', 1, 1, '2024-08-28 12:49:47', '2024-08-28 12:49:47'),
(4, 14, 'FR  20241', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 12:46:09', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 35000.00, 0.00, 0.00, 0.00, 35000.00, 'MizCt8s+gV1DcO99q7r07JCKSsIDAitMD3stW1XKfF+e/eO8RMmhAmDJCoFbHxGbb38aJUIHzOqiIHPd67DNXLNIMEbSxy4SY2X/hnOuHkgNZXD/7BDxrfzTlHgo/L2XgtJjEE9Kxz9yMDGzO9rCZESu1Juoiu8DdCKfA9JMaxw=', 1, 1, '2024-09-02 10:46:10', '2024-09-02 10:46:10'),
(5, 14, 'FR  20242', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 12:56:54', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'faTHmdeayScOGrzx2Ty1Q2xRMcgEL4nELjKC20vKShz6LPZ+zAODZCbLQJFlHMFFmZtY0FROEgNkBUDtUFHyBJI8yXUwa2RgKugRw39aZga45QcX5SpM2u4oW5PE4ziQZqCPTJrVzIjFysOgoCaYtntotiQ8korXznza+c6G4RY=', 1, 1, '2024-09-02 10:56:54', '2024-09-02 10:56:54'),
(6, 14, 'FR  20243', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 13:56:50', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'kA2V3sh7xSZ819RqZTtpD6jswGVtvl84HgH+HySO1XxkTdqfHTHAuz9IsaSm/bQrsiYmM7kqdSpMxG6AbHKEeqRzzlMVujVkuySFn1vvfDXfqxwaZsbCYfMwuUt9/zON2D6zbNk6PyQDU+ONnF9bz12deJlmzWLxutr7A29CLi4=', 1, 1, '2024-09-02 11:56:50', '2024-09-02 11:56:50'),
(7, 14, 'FR  20244', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 13:58:51', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'K46PXxN4c8RkzGkA+fb+7NfpQy1ZYiCoyLdOYFVhlnfuEMuQ6OeJy/G6zrafNEKrfooypBdhir3pRcARxmO7OzrJSaOHV2l7L1nossB/M6BKZa92bM3cMrKiUTQULwWLF9Wqtmv6XU4QfrtElAar79cavCFqDAHnyFtWJoZkE0w=', 1, 1, '2024-09-02 11:58:52', '2024-09-02 11:58:52'),
(8, 14, 'FR  20245', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 14:19:46', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 40000.00, 0.00, 0.00, 0.00, 40000.00, 'f6eh56tEe4lmqibbMcJhnJ5mVSira8ahBah9P28iA/a7lXVPuOo7zbIOsux3QFEBWBrMOpKaX3hddZFasbMx0mE0g1yTV30Cdouqtyko0Yq6zsbJhvvnWuXGx9O9KtZ/wsyAaPww33ui2fKUehNfsmXxw/igCzdRql3Bs/pNDuY=', 1, 1, '2024-09-02 12:19:47', '2024-09-02 12:19:47'),
(9, 14, 'FR  20246', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 15:30:10', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'DywUJznkgRzLnxO6sJhG3l9D7/Mvm+n7uTqazu369AxXwG2h11ZuH0uj41SUojEM4LFPWdJiXncdU6tOcwMIdU7Ity0w/iJQdm+iqc2t/nIMTX5JAMftnkhHiPmkVOin9z0zuROmvbi2Cb7hHILmHDvU4OxzVLVnYApvUbB5peA=', 1, 1, '2024-09-02 13:30:11', '2024-09-02 13:30:11'),
(10, 14, 'FR  20247', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 15:43:00', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'FnlduLHAP9lJVQGDJ4UEZQ0j7AGT2Qc3f9x+2Z/CJ0USDzGAYOGAEB+8KHYH6GCfxIakoCczBtjmRMFgedDhN5itbIY486ePCk+fk88XIYQfNoi8/IZzcqeaursIacsFSy1ejir9WGUqiNVDDNF84xFjCdMLseCvn3Xg/8X+e2I=', 1, 1, '2024-09-02 13:43:00', '2024-09-02 13:43:00'),
(11, 14, 'FR  20248', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 15:49:21', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'glR/P1jDseEIeaANsgSO9cJQk0bYMK1/pr0U6eGiGY+YAOaiDtoWcCaTzAF9dKzQ659PRO975aBAyaxX2AmbVGxwv98BgOAHHRG8X9vFgRXowdHHHUIb8hLjS4Y9JoZxwPYaABVMsdpKFASrrx7v6Im2L/vr8zT6qvc1I0yjYvY=', 1, 1, '2024-09-02 13:49:21', '2024-09-02 13:49:21'),
(12, 14, 'FR  20249', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-02 16:24:12', '2024-09-02 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 35000.00, 0.00, 0.00, 0.00, 35000.00, 'TyXoJURp968i0GRsE5BKX5mk2qaHAtDYBg4jrahs3SZVq+Zbd/Uhyo050JR4acQFIYwThmqb0Xs+LUjuqzp4Qhih8t5QEAgVirW5FOYBddLwBlraPZfAhWCeqFcJDIBpbR0iBBFFPZ7f5vqvxM3OizrZsoQHRIX+e1KWs1VhK3I=', 1, 1, '2024-09-02 14:24:13', '2024-09-02 14:24:13'),
(13, 14, 'FR  202410', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-03 13:39:07', '2024-09-03 00:00:00', 27, NULL, NULL, NULL, 27, 24, 'GELSON MOISÉS NGOLA VALENTE', NULL, 115000.00, 0.00, 0.00, 0.00, 115000.00, 'Hl7tPb59acM9pJtZGExXCv6IfgrNyp6VMwUiy24Pya/ONJSiX0CxnT+m5EG1NrMIGAUJNL18bI3CDaQbHtwRnCWeHljpnX1RPj7jmaPzmalyttMTrEyFjbc4ZwLBmbjBLcVLTSzyOq7CXnaYuR5PgI8UPLZ0dEEJu0c5RfHeK8U=', 1, 1, '2024-09-03 11:39:07', '2024-09-03 11:39:07'),
(14, 14, 'FR  202411', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-03 14:32:00', '2024-09-03 00:00:00', 27, NULL, NULL, NULL, 27, 24, 'GELSON MOISÉS NGOLA VALENTE', NULL, 25000.00, 0.00, 0.00, 0.00, 25000.00, 'A23+1xxZX2HWkiOTlvCklqofDpiil49rbReNXgsPatOOShX2j2CeZkOctFtoDkq/BGNU6s/wcO88QmTEcmchUkzpIKy5hP4w9pDyWuignDi+SFyRWTRo/XzTo/pDCam6bEc86X272l87RbX+dWDSOV9SgiqyF3bVW2+4FVZNdSo=', 1, 1, '2024-09-03 12:32:00', '2024-09-03 12:32:00'),
(15, 14, 'FR  202412', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-03 14:52:31', '2024-09-03 00:00:00', 27, NULL, NULL, NULL, 27, 24, 'GELSON MOISÉS NGOLA VALENTE', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'qlwvCJkPjkNVu1jADx8JG2cvY6CjgCobkdLMTRTBphRVAKwbV0CPWzIXRdqAT9sqqi8xeUyEPL6rgcL3QtrAZYd4fBBwk5kC4p9mg5+FxBeS6/bc0Q4X0y4PJ4Fjvq6N91cG0oIA8ppQI/DazJje0N1W0sf+gPAdbHdRM+9QNyM=', 1, 1, '2024-09-03 12:52:31', '2024-09-03 12:52:31'),
(16, 14, 'FR  202413', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 09:30:31', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 24, 'GELSON MOISÉS NGOLA VALENTE', NULL, 6000.00, 0.00, 0.00, 0.00, 6000.00, 'rnPvGT5LMwfEvCX8Rk56/6sYwxZR3IgCUUfYdz4SqX9RqZOwi8l/8JjTO+RblqLOg1Kgw2YsEkwuxhUrDx2xILonzfFdy9BbZgx1Oj216dVVY6QdcQBbU0bAuRLkKfhkL/AtHcSrHwahH+FG0KxJ5a0MS/3y2yHYVZBXbHAsuUM=', 1, 1, '2024-09-04 07:30:32', '2024-09-04 07:30:32'),
(17, 14, 'FR  202414', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 10:35:35', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 24, 'GELSON MOISÉS NGOLA VALENTE', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'U1Y2aR9wCmllB9KO2JZHpgv/Nbu24mZZIMvnrI0dNcs0+odwvHtxZ5F/P7Ad6O3fxkpVlsTbL/9eUndSPDSIg8U9yeGcFjbf/8NVDpW/HiQYoBOXX4rL+POk9pkPHbhC7nMqZOE4+3JniT6nTk2Vu2Do/4qK6o3ohMwrF13qGpc=', 1, 1, '2024-09-04 08:35:35', '2024-09-04 08:35:35'),
(18, 14, 'FR  202415', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 10:53:35', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'p4iOLEG+2kSE5BeXv6AWXXtzMEqWm/+XPt5Orf2GSE0Ky4uKGVQKkEuztmlLnNScTseQK2rzsYsNbPrXAB77xJjHIoG2/CIa6si5opMaOOC0ntYRBAUZUA/ROa+2za683m9IntfwnQqpFNi8n5NFHA2hbSNww5OSOh4bdIHmeeY=', 1, 1, '2024-09-04 08:53:35', '2024-09-04 08:53:35'),
(19, 14, 'FR  202416', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 11:22:44', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'mkDoAxVwVMijzfUo57GuLLrt0bTc6vjJolxyA0Q1TO2v6stkHVmTbxS4SrgUqlBEUcsiIdA79qa6W6oAVB6oLVUL3N9jRDVYwr343WNLiypRoRfho4Vf1snsHCDPYgY8idpLMiwbFL1Nncto1LOHu/w+nMU+jbTGPU3vR3pfRWc=', 1, 1, '2024-09-04 09:22:45', '2024-09-04 09:22:45'),
(20, 14, 'FR  202417', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 11:42:50', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 65000.00, 0.00, 0.00, 0.00, 65000.00, 'aEln9hqgJUGKDFgKPYlgXFKPcEz7KjRjAdXCPY+GL8jz94hF/37eMCiBPFSFBQnNA3w4F8WJLRYFI6Zx4Lp+egZN33x48uBRIpqp4QVwoCB0P6BL5Ei82PXKEuUCDC5asAzq3JB5VPlCRV5FqLkkICz+nR5qLh3xDHOoldd3778=', 1, 1, '2024-09-04 09:42:50', '2024-09-04 09:42:50'),
(21, 14, 'FR  202418', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 12:18:59', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 115000.00, 0.00, 0.00, 0.00, 115000.00, 'J+DPxMBxKOuQLXadgfDCkFzvWov41kVO9YpqZU9wgRCn/Oc3lSvxLV/nQ8kOTvVAz3VkAvBVcAeI9diIYxBHFpNgB0ArTmbP4Z1V4ooSq0dYXJbvDTQ2eZCy4fhD8Zu8uMxhGoMwT2Tc8tq3nYF/7hV+gkDkQ8SVOG4JF38A8u0=', 1, 1, '2024-09-04 10:18:59', '2024-09-04 10:18:59'),
(22, 14, 'FR  202419', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 12:23:35', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 18000.00, 0.00, 0.00, 0.00, 18000.00, 'apI88lQXuSJJzKp/u/qZcvu41XumflUGeWMqm6YGZDWUtrDlJq0chDURGmkA6ilTyPX/E9bLXNGT5dfaxdI4oNGro2JCc4t99QZgvh8ipfeblcuuQ2/2/H+WiMUIUxs7pA3goAuJyiAIj7r0+qAv3WMe0lJrCNYaSvSsO/nhg1I=', 1, 1, '2024-09-04 10:23:35', '2024-09-04 10:23:35'),
(23, 14, 'FR  202420', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 12:26:48', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'shBhbISmgz95aJEtIOvLqL8XEPtNnesrypwtg/m+tlGAYeBPj2VGUiWHfp7Zwj3klOMFR2zsNFRA4xKbob9v4tJv4ONQ+KgLgqNIgTO9fBTwwegWHCr5M7VS0ywHkYNgBEeG0bqda07cEtM3iy93e+qZqE+dikJcDADspiuDAT4=', 1, 1, '2024-09-04 10:26:48', '2024-09-04 10:26:48'),
(24, 14, 'FR  202421', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 15:13:12', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 6000.00, 0.00, 0.00, 0.00, 6000.00, 'G5WoRiPBv13IcAYEZZY2gwWZt+AH7T7ZmwtvrBDFmO7Pl6duBd8zXmcw0ViQz1ik97fCNGcCE9bPpAE3lKS2/TTYn6t5q8BpXzEPnzVPSkBuhpDrS6ZMkve5eBeCzWJcXc0Qpp4DuQLWq6NYPHRrSV8GCAjV5G3+G91B1hOJ1MU=', 1, 1, '2024-09-04 13:13:12', '2024-09-04 13:13:12'),
(25, 14, 'FR  202422', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-04 15:44:55', '2024-09-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 35000.00, 0.00, 0.00, 0.00, 35000.00, 'Mfi8LYw73SdN1PiI+RVhPkotkQdD+4vFG0xEzlVS+2LwiJ4ogB0x+ZX1msTvFXzWfzCZ1zRvczva5YV0iZBji/vKvooTGxR4SNTq2ygDlhr+gByNoxqZ8wxQj9ZlrZ83SWGV4AWLglJzcIHgmfO4F18TXH3HvTaDLordn9hDn1g=', 1, 1, '2024-09-04 13:44:55', '2024-09-04 13:44:55'),
(26, 14, 'FR  202423', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 10:31:20', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'lG8hIYU+n7JEAjoCOS8rRmm7SwlDqXxHq90CsKl8Jjc26zrehfzZ+t8o/N5mLqwHyN5ETSy5fti4o+ayNgeEbZR7bxvMNMKAMpBqmxc1yW56EgsH+eITj97R+979VaU+2DI6pqpl0nK6O6xc4+G1U8lHCH+S6bd7bnrTRlC3NrU=', 1, 1, '2024-09-05 08:31:21', '2024-09-05 08:31:21'),
(27, 14, 'FR  202423', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 10:31:21', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'k2ccceH2rx63qLt2Q4sK8joF/FNmO456GdLo9og2kEd5neaMRUECQH7lG9vE5JWdbAEdgpjqeQF1k6PyeaMcEz3n2cjQsWvBshf75JE8hjRKrSUucFv5Mx0p6/swJH8M3V+PxKAxocOV6cpf9l8w0Wkai1fVD4KOeRovbT9UOp0=', 1, 1, '2024-09-05 08:31:21', '2024-09-05 08:31:21'),
(28, 14, 'FR  202425', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 10:47:45', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 28000.00, 0.00, 0.00, 0.00, 28000.00, 'LE2ldbT1oc+HuBx4rk9U8686AuQKLG+D3Yt2483W4rS28e1TW6btojGF38rc/pXNQx+Klcu8ap960B78M5XOMS5vVVEWkgrQAFUVF4GmentvJNNLXY26OXNxptRKdRZgfL0jjez7ttO5VnvOsENidpestlzf3eQRFa8ChxwsNnw=', 1, 1, '2024-09-05 08:47:45', '2024-09-05 08:47:45'),
(29, 14, 'FR  202426', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 11:37:57', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'LOQwRDsu5tQQt9jdBgP0MUIbmz8TxKcuDOgr9XlIB/1jn3x4W+XxL9r6KSr44KXoLFofMTJQD8YNjxHTWKraLSqYv7ZQlYJ87KOo3FXF4x/O1qK7lWAz62ds3VyrER8j7TF488mLVOJLPWBfnjpQgFtTLVgAY8kzGIIraVRRmjY=', 1, 1, '2024-09-05 09:37:58', '2024-09-05 09:37:58'),
(30, 14, 'FR  202427', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 14:56:15', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'AFd5ABTfOu+LZvYbvXEVx4Oma/yMFqn5kgRBIpZvMm1CsmpmOdRGP4h9HyAEU0VHVA/zmB7a+/ENzQQBO9jzTOzY+nowXn+wDNm2rTUnM3s9MYpterivURO0RXOHSyUJjMXfs2M/RZqvC6+UqXA1xJ4c3v8Nv1pmna7EyybpGp4=', 1, 1, '2024-09-05 12:56:15', '2024-09-05 12:56:15'),
(31, 14, 'FR  202428', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-05 15:40:41', '2024-09-05 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2500.00, 0.00, 0.00, 0.00, 2500.00, 'lxT8bFK7ugKSAfCy/PABJCnG8Usv7Bw25d9GoEwUsG09Ix0MvY5lpBki9Ij25dFmt5tgz8/W5J8b2n6dDwqp4/CvZUz03NtiL+G6VSjOqIuryiicepajVRmuUcnVQ+cYS/z/26ZflW6JeOJfFCDzu8guQGtYk84Qw9Xp+b/YQhk=', 1, 1, '2024-09-05 13:40:42', '2024-09-05 13:40:42'),
(32, 14, 'FR  202429', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-06 11:45:47', '2024-09-06 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'rkbYJEjtnst3JUiVoA5wN1oncjBNx8Fw7XLFJq69/NEPhbka4iw0RgFmueWBxv+mIrDTcfO5DjIRTO3dEUKSK4cUpEnjWTvv+PQyOEZuuq9l4Jiw8MVNZcbg9WXg31rfFRZ3zDXP+FAA6jHYknNo+IYDgQO2UyaQU4vgcEuXIbQ=', 1, 1, '2024-09-06 09:45:47', '2024-09-06 09:45:47'),
(33, 14, 'FR  202430', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-06 12:12:25', '2024-09-06 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'm5nNtkTBDJJ0YAao6jnqRkFQrsw9jEb9ri74dYNumbTM9ErMjg2NTSF4w9M5IRUiLhJS3bojTo5Q0zxudEYA0bs5Q0mNeKlspFSV25RkafOT4pwM74SMx3y7m81PW5mNro2BoaHMLcdRcO0+StSA/zBZnvbUTEDoAld9qjTyuVw=', 1, 1, '2024-09-06 10:12:26', '2024-09-06 10:12:26'),
(34, 14, 'FR  202431', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 09:24:37', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 105000.00, 0.00, 0.00, 0.00, 105000.00, 'b3k8fc06rZWhHmLiTwLJzp4umHDUlvJOS+ux3TE+K896FDRwOfADFWNzPtkHGK7vPF4LetDXgn79wj4f6/cT0r22LhQif1osD0vI9LrcEJJXzFY/rifTDUs/gijAFXa2gCZMKG+0vKUWL1XRLC6DcvPFm1MIvtry6jdYVzOqMFQ=', 1, 1, '2024-09-13 07:24:37', '2024-09-13 07:24:37'),
(35, 14, 'FR  202432', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 09:38:01', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'UAkOBzazns87DR7OhY9iojJlvXV3cJoSa92sHQoWtCQo3YzfZ57q9rs/10qGXDxPcy6jZ9CYFPEV2JeA9DBwQPedUEnhbf3kxpd+JjpS7qkJCe4cT5K9FR90Lz9N1xSc1lzlq5ligQw91Ei0btgzHkPNtl54zVJ0w2duLoR6b+w=', 1, 1, '2024-09-13 07:38:02', '2024-09-13 07:38:02'),
(36, 14, 'FR  202433', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 09:38:54', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 35000.00, 0.00, 0.00, 0.00, 35000.00, 'm0/+1qyGgN360wzZFsXPV/xjC4KxJaInQcS+AMnhWEMPq3lC7I1df3U+YTDgVkJWZcx6N+J+P1KoVF0Whdmbpqb+kEnlBqEGXoIP6YzWTQwwU0kFmEHLrS29NvQltBMxI42LQ9lLYYoylNgh5CfMY+rAiXoW/BkN/PzxcOUUYx8=', 1, 1, '2024-09-13 07:38:55', '2024-09-13 07:38:55'),
(37, 14, 'FR  202434', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 09:47:02', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'QKIs2fvs6lozF6JIiAXsYloVzoelB8ygQ/XTMlSMu6kAx6IWm7xmy2txDA76QLTK8HDkaPZoA/xScIX39PgR/LgGjbhme8rb4+rGfjmMWAY0ksoAC5VdveqM7MBR7DZlsWrIRE3gYOBWdzZ8pk5ACnMt33wAepXfwGj3MePQmuM=', 1, 1, '2024-09-13 07:47:02', '2024-09-13 07:47:02'),
(38, 14, 'FR  202435', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 12:17:01', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 22500.00, 0.00, 0.00, 0.00, 22500.00, 'PQ0WycJFZgQg+jk/mBihe/9FMIol+pMy1DQkiHkkm+rE6Y6w/3+9owdYc3ETO3zmCZXW5n0DL/TgRtW4rTzJnKPB+mlGClTdN4ThpfdOBQwgpRVC4aucjBq6ZWyalbJ/QW+/yr0PslOa0DQp5gviANIJxilraYh9V+FD6KCsCh0=', 1, 1, '2024-09-13 10:17:02', '2024-09-13 10:17:02'),
(39, 14, 'FR  202436', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 12:17:55', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 25000.00, 0.00, 0.00, 0.00, 25000.00, 'JavHv4tkMN3hnbgVRQzXmq78FQgQ8mtEh9uZfcUeTknsjFm6bzoAdS0bDYGdQUt77XJuR1JZ8vROStVvwuL7+UM1ifj9aLroR/3uV5VNUOhLpqdCH7zwd3aTolcp1lfDrvt2OQaVhx2pZRqhwkFxiP6GE0pKwnTS/w/oGp6MJbY=', 1, 1, '2024-09-13 10:17:56', '2024-09-13 10:17:56'),
(40, 14, 'FR  202437', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-13 14:16:48', '2024-09-13 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 9000.00, 0.00, 0.00, 0.00, 9000.00, 'NjLepem8wKe048JWDQ8okpWcpUQq9ggpxW5hNm40oIStTZOdlrlzOOJ6EhwjG++TRk5iqtT5pobr09lJEcc7iqk+kn3r12d239HCR0OjREdK6GJ/Lwn96K6SBIudhxVm3BTsmS1aOgf3VPYSShmCliQMmA6kVRR3sU3fyBykVbk=', 1, 1, '2024-09-13 12:16:49', '2024-09-13 12:16:49'),
(41, 14, 'FR  202438', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-20 12:46:11', '2024-09-20 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'pZ3ceLcuZuQBP6aETrwpWN39PhBcsZdIDASwvS45fJ8QfPzu/Mz4FpEpyW0UJgFEOXZicgMdod1CZiMgbythrgrLvKuII/jI4s4UxW40Sk/jCoc8dqTCbAgtK4wcE1YeIFFWlOLBsU0+mHNfzzeiS5db1aynaGoMB9TTyXuy7fw=', 1, 1, '2024-09-20 10:46:11', '2024-09-20 10:46:11'),
(42, 14, 'FR  202439', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-20 12:47:02', '2024-09-20 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'foMMGFiPyY/MesTO8Iu31aP+xW0+mIkTLD1wC7HzgWmNqEMs8apuyyN1Knjm5XN5T6JmVzWdBzgx195Q2NDO8o7j/rz4cicNzzuIb3yin0y0EhbeCs0MeDssp6Z8CVISsBfJSD3RnwmFNvEbQt2xjyLyctEIDz+vBKQyXSL/3p8=', 1, 1, '2024-09-20 10:47:02', '2024-09-20 10:47:02'),
(43, 14, 'FR  202440', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-20 13:30:17', '2024-09-20 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 40000.00, 0.00, 0.00, 0.00, 40000.00, 'Vm4dkCz347+9xbYHKA9iX3519c/RUTqLwOlUL+bYGGuqO2i0eRUDAtqcIW7bh9GvXSIp4qMjs3UFuCAtjKoEpwEzHZvr5G+/oQ/FBGmCzQrz2cqWD6uSoOrIgGH2MpOa2C/u5KKFTZ4DvMXuuSAdqE2VMwnDM2fr/05/YIweKh0=', 1, 1, '2024-09-20 11:30:18', '2024-09-20 11:30:18'),
(44, 14, 'FR  202441', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-24 15:31:10', '2024-09-24 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 39000.00, 0.00, 0.00, 0.00, 39000.00, 'aoz2ObTaOGdHrvBI0zY/s37HjjBmugEhQxV11THVXE3BiDP7knR7fQ97+5DbMQ5oHDvb9v8G8RlzRTkGSCbiPV5cVrVf5dfJJ/+G7XkIEXhH6L5pAvgnKuLqDqJ2JqgQ6kFqMgz87sXv2oCOCtb0ycfpndDqRZX7tvy/79ZE15I=', 1, 1, '2024-09-24 13:31:10', '2024-09-24 13:31:10'),
(45, 14, 'FR  202442', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-25 10:13:11', '2024-09-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'PX4aq42A+t7i1Qwe1UHWPho3IPkp57nWBgrXaNVKgosorY25WTdm8NWJr9C+0HA1iyv4OfNtMfQyUazsnxmWxd5F6pvTsRWZekYTaXIOlvhH1Xln3Vx4Npdnsdp0lBhm+nv258un7+49flXjgnMhzyRZbyyGE47gG0MiSsZd4PM=', 1, 1, '2024-09-25 08:13:11', '2024-09-25 08:13:11'),
(46, 14, 'FR  202443', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-25 10:57:25', '2024-09-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 50000.00, 0.00, 0.00, 0.00, 50000.00, 'q2VmR8pONJVycrEOh1UhInsC2JSt5mVZNxgCYO+oIMhABSCFQbcP4jbdbaczvTnOE1i1WnN/0J43rkyMJHHmQmJ8LBg1xW4oS0rafH2NZ4YTT3XOIEo8sEo0d7VpmuiFU4UO8uqlPDSoKDIBJQwL9vkYHw6x8zdy7SWOa4/e37s=', 1, 1, '2024-09-25 08:57:25', '2024-09-25 08:57:25'),
(47, 14, 'FR  202444', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-25 11:35:42', '2024-09-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 6500.00, 0.00, 0.00, 0.00, 6500.00, 'G8t01pXBkFgtwBPmgRQQZqF5gJv3rtE1aHS2yrlvwItxPYCCxJhrm9Hncu2xh5CdWfAtZPD4uo05vc/QfjRAwAgJAdzE0I0epVPvSj6GEeddBtZCSGRQqXQtfHKWRTq3C4VgiN0qlePKxJSH/Fukb+3q7YqP3rfng/wHpLf6PIg=', 1, 1, '2024-09-25 09:35:42', '2024-09-25 09:35:42'),
(48, 14, 'FR  202445', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-26 14:07:33', '2024-09-26 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'F6ms0z9S0YCUkOOnSVvol9QzQpO8lC5a9vvY8FwzaejLrfbLITOg4zw1pMmqffPaIqF5c3XpwumZqmqz6A2fjPegdNZzbZSdbsnWMfqWIm/Mtbe5KqTiK8TQkDg3BU/CGONLIoZUehw0aVUN8n3a3yQcJ9zAs73Oui1fVSUbzLQ=', 1, 1, '2024-09-26 12:07:34', '2024-09-26 12:07:34'),
(49, 14, 'FR  202446', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-26 14:08:46', '2024-09-26 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2500.00, 0.00, 0.00, 0.00, 2500.00, 'IUy9YNgTie9pIE+kwu/rvjry36AuGMERkYIpqMxzKgOj+OFiSFSikHm4dzsARcXFs3ePrpRJl3NOhJoYWkdSUlRhBaawBgHu4vgOUXzTNALJQ3w8J/qnVvKvNCIXdJlfcqa2Me1ibsPjIjv+vcIuO1i/XXYxolxdHqOqyVzlv6M=', 1, 1, '2024-09-26 12:08:46', '2024-09-26 12:08:46'),
(50, 14, 'FR  202447', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-26 14:25:29', '2024-09-26 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 7000.00, 0.00, 0.00, 0.00, 7000.00, 'I//49lAiKKjNZK/KB5jHYLSk3cTzfk8Re1vXN0LrO3Zy6lSFjhF7d8fOPpdb+jYcifbBk0pTrBMgCsfVs+gmVaP2/idKldCIOUSnYyFcY2F32MBwVEjBZAIYsVbVO0uG1PKEEamUnVW2kOXGEi63gV3+s9iLtDxisYV1wjxEr3c=', 1, 1, '2024-09-26 12:25:29', '2024-09-26 12:25:29'),
(51, 14, 'FR  202448', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-26 15:00:41', '2024-09-26 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4500.00, 0.00, 0.00, 0.00, 4500.00, 'rtpSthJjxfHfupBxUuZ1eER0TsLq05/qbIlf10hknTmMQ5k54K2Ri2JFmhw+LSH+UGCqIr9JU0oZKRm9CQF20YPWwNQrRS92gjWgSztlafoyk+9A4Bkzjn2pkSMlcSz1STWT6gQahr4Ga8MHCiNsoVu0nQW5tEPnCqT6mtkzosw=', 1, 1, '2024-09-26 13:00:42', '2024-09-26 13:00:42'),
(52, 14, 'FR  202449', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-26 15:12:26', '2024-09-26 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 55000.00, 0.00, 0.00, 0.00, 55000.00, 'oSC157TICxhJEiaXo/STww9WMnVtwulXUJL7ZXE2cy89PnTSH1iskHOVr4lTeVevTNeHwryeTL/JecoEDR1EvillxYez4rTW5lwh9FC88v/I4lhzuDcXswZbFMNgnopfnbpLHCqLE9HmnN1W8O6UxbUkI10rsejXy6DjOX79R+E=', 1, 1, '2024-09-26 13:12:26', '2024-09-26 13:12:26'),
(53, 14, 'FR  202450', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-27 10:41:45', '2024-09-27 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'ab+E+tHTIKgiVys/eohuQvSuN4ZRtPnfJ0Zuk4UP4J7Zon8Wl+gKpXQCWWIJQ/HylgViV+itn60WAoGvcfm4SdzBfsq9xnc573/+yFvT5rSWmen7VE1d6P0CRfcl9yX0aHMYQqNEDtUN0RzrrHZLpgHEJM7pBywH6fmUhecmn9A=', 1, 1, '2024-09-27 08:41:45', '2024-09-27 08:41:45'),
(54, 14, 'FR  202451', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-27 13:57:06', '2024-09-27 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'hLz9Z0QK28vT4VIHv1uwHK61U/ymfoRqiIeNrJSDDytbkp2lu6rxX/pxwvBYxHJvq43LY/FZOm/HTp5XTc/7DTQhmWGoophzIl1IejpPxCC3Dx4Y6F/t4tzhF+IqxXWvBgTGBHZ9Jys5B+hkGD2H8eIMaCsi5pGh+Erlvd3qh5U=', 1, 1, '2024-09-27 11:57:06', '2024-09-27 11:57:06'),
(55, 14, 'FR  202452', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-27 14:09:26', '2024-09-27 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'nA4yS5C82Vf43ywtsV/csPpMHFJXo7GPPGNEBQEc5zpova/9wejTaUegSDel7bY3+tLw/eac3RllYWu3hqYWnZ4DflKW2qHf2Gm6G5/vLuqMIRPMVo1PmnmQ0IuOwiwFpg6elRWg8bqZLQ7Q09vo5LQP5o92osqDKoCpYssr5Zw=', 1, 1, '2024-09-27 12:09:26', '2024-09-27 12:09:26'),
(56, 14, 'FR  202453', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-30 12:35:10', '2024-09-30 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 50000.00, 0.00, 0.00, 0.00, 50000.00, 'T6YXtyIqvdLOph4S23/Za3QpZ3CyUNKboyYakH0aR9MUu91TnYax6JAPFtGJZxUoR5njPrGNydwxHTCuU/tqZapNSaHW3xZlKQ/B4wM97wMh3IHg8YGfllhL7ZKuEmiZmEJkKt/KNd5C8kPuTT8VUMQMsA7Y3OdRFpdQ03cJnX8=', 1, 1, '2024-09-30 10:35:10', '2024-09-30 10:35:10'),
(57, 14, 'FR  202454', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-30 15:00:02', '2024-09-30 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'JxAsHolSZbsrdcy2sC5aDyjpKR0rZTAtsVy4KygBgV2udTymaCDoUDoR4mfIjB9Z2EvnqY3uDbkgWcuq8Rf9MkgZroe05w/ql05LmaDvXaPN1iUC7gn5eWu9fl27rAGTZ+w/gtJ8KVmZEPsXrpj0hfOmGTjI8iHE3umWGEvrpO4=', 1, 1, '2024-09-30 13:00:02', '2024-09-30 13:00:02'),
(58, 14, 'FR  202455', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-30 15:25:13', '2024-09-30 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'U6E8U0PL96VflApSbVoz/ZYe+sLB0vCkq7E/eRgqO871mqNDmjUWBd5MlT1vJnVHE5PCFrqKr82u6v+/I6ECOuSXc7FdEVF2dvfdgSsRbHl7de8A8nKdu0Ga3cl+D3lcx/VPa4voXWD7W+I8l6ui1dDWXcQMkc72/BV5QKdWLAE=', 1, 1, '2024-09-30 13:25:14', '2024-09-30 13:25:14'),
(59, 14, 'FR  202456', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-09-30 15:30:23', '2024-09-30 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'IGLgkMwcK2KOog8jN0g/4w7sMJyPGhPX5uFCXksBbqX6+3ZCOiwGYc45GRgSK3mPru1/38QPSmt3OO7F6/q9RRn0d4ybAdKfwWreYFAs4etHg47JCTe6WNTkDxSIzvT+YH84JiatxSY7aRv80HyRqQ5WDOPQXJJGRHiPV0xkwYk=', 1, 1, '2024-09-30 13:30:23', '2024-09-30 13:30:23'),
(60, 14, 'FR  202457', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 13:02:26', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'DQNkw1SJtsSg+Lp149GO+C6p3YjNs4Zh1lijZ12Fn9lym3n/lQ77CXccE66VVZE62nlPUWcstqBJBHE/2+X+/wRYvbFq+N/uAddOOfPO/oYcN/d18fanCjBhcfyab+ad/Pr7+mtrsH0n8fR39qmui06YALulC1SGg+Batrt4I6c=', 1, 1, '2024-10-01 11:02:26', '2024-10-01 11:02:26'),
(61, 14, 'FR  202458', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 13:40:02', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'a5VkpBOisIqidOdPoKq+8/Y7n1YIPmtQpByqu4rsOPk1q+/toTCW3/Cc6/R5e1t8L4DPTX0MzvZFjPXJrkcIis5CN0OrnH+8YxNDzY0z4RIeAsRegVgXlgzALc28Pr4/ggXeJKWE/yALr/YwGKUXOJesdKi6Mz5Y/IzHQq5KcRE=', 1, 1, '2024-10-01 11:40:02', '2024-10-01 11:40:02'),
(62, 14, 'FR  202459', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 14:31:43', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'KUbDKgw+g0DYRyqj8AZ56n/FEfs474f2EIRvKk3ZabiwDmeBSS5haZCc2eZBLQtLqvFLtEY5qbFQexkK8kHv1pKv9Xj7ekYGDOwQGIG+7EkTIbjjI8jvpUuhSH8SUoWZh+Ade+ResPyyB7CQNdFBvTFsJdSfB35mFBvi3tb81Yk=', 1, 1, '2024-10-01 12:31:44', '2024-10-01 12:31:44'),
(63, 14, 'FR  202460', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 14:45:42', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'tu/795zaBufXnXw+2ETvG2pEGf3jf5gU7oh/Hyjj+z+PYBRe+5QZSQftOCzPd50BfosI52IKSW3COtx9b018OmIpn7rM3nauIlStBtCyBFqUoma2oPoUR7wLNIf2IeeZdsBkNbzts/zjDrzB5lBIJKfjKeH7265hVFIThTazUSU=', 1, 1, '2024-10-01 12:45:42', '2024-10-01 12:45:42'),
(64, 14, 'FR  202461', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 14:48:33', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 100000.00, 0.00, 0.00, 0.00, 100000.00, 'nzHrtQMjzI0vK7673IlNZbdCVkFebzilrgklJq/WHWOP5mFRRhJ94rztD2EADbscEonFdVt/1Sf6B4jyfG314ZyE8Oc37C3jt0DCQOF+ne5HCcxLLk9ZsQDg00TUBekVH9QFwc5wUoyOSzPPLjn3bOkjmvPTqd4Kj+1kqWBdcxs=', 1, 1, '2024-10-01 12:48:33', '2024-10-01 12:48:33'),
(65, 14, 'FR  202462', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 15:19:49', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 55000.00, 0.00, 0.00, 0.00, 55000.00, 'em6sTCinE9W30a7//iK2wtR8yOx0tmlvr0SddKXIro1t6XOFQhrfij2iKQSSeGZ5dWJbWLCVZn7tqNgfSkl5c5UcTmf1i859luKWDFWRIGDAZPlxAm4Ai2Mte0UVczJCu9kc5cTwHv1v8KaBcTX7JMvo8iPUgMkly/hO027lnz4=', 1, 1, '2024-10-01 13:19:49', '2024-10-01 13:19:49'),
(66, 14, 'FR  202463', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-01 15:20:32', '2024-10-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'tbs5STygGcIihiudbaERoilHgehuYrWy8UhI6GGTi5jL2j1X8KLZZ5PBHp5j5BKW4t8SsqCuD90QIrZ7w/lfR74X2hAQIe6T5uSxLe5V6g0kHZOiH9VEK5ukwZdPEqeCIcr1O3/QfhfiPmrIdSTzhKQQ9CMEHAae9cthWBcdlvg=', 1, 1, '2024-10-01 13:20:32', '2024-10-01 13:20:32'),
(67, 14, 'FR  202464', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-03 09:16:31', '2024-10-03 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 6000.00, 0.00, 0.00, 0.00, 6000.00, 'Lj06hA7MqjW0/RAhWmFHsxitrq/vwPUlzh+g3durzpCda0MSZU2E2P5gzumw+VoMV0VGZYFZG9ELUEwSla7M0hnLDwPGFpNkE6QKK3hYQvjdLLSAe6cBiaiR+jlflC4dngihrvplEdmMV6t+o45VmdfRVyEYu/l3jrnSFpwPgPA=', 1, 1, '2024-10-03 07:16:31', '2024-10-03 07:16:31'),
(68, 14, 'FR  202465', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-03 14:29:22', '2024-10-03 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'gk4GXSZKLHCHeobWGheUP1F6/ho0ruDEAltBdNpu2NOW0ZkaXsEb8G0kOUnu2q/rD7QvoumPddzR/WlOSwcRBZnh6dAizFkJTpnKaq20QwcZRrV/AcPVg9zuxVHQAl0zmNATKMsHgoxtlJlZcsi88n1ceiDlFNheaJmufXt2MTk=', 1, 1, '2024-10-03 12:29:23', '2024-10-03 12:29:23'),
(69, 14, 'FR  202466', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-03 14:29:39', '2024-10-03 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'nz1lbyR5VS1eVcN3yaPnFbUqtyiSnJcav2ScsoKIfe4mRBmxcvYGzn8JmsJ6XDrW6rErxryu3eNCf1Px+7uOKxNYpsp94Pyvbtw5mvDMT5E8EjyiY2nruEXRh1QXYI4yI+983Bzu1wZTUJ1XV1mO2rJ3n9FghYwf1nxIZM/A6Fs=', 1, 1, '2024-10-03 12:29:39', '2024-10-03 12:29:39'),
(70, 14, 'FR  202467', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-03 14:29:59', '2024-10-03 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'bxEmNKXlOrPbiytP95w0BEcmJKtz+y2W1NHYGL7EiaJZEK3JCeslY6iCuxczGFGei1fKMtZXdBCYWEGFRyXxU70ihFPIGrDgMmntOhzLn1pM3Df9+oQ9hGAhzeZIwq6ca9aMHZxVwuS+0D5lmQcga0PxtDwTUv/rA+/THkp+bnA=', 1, 1, '2024-10-03 12:29:59', '2024-10-03 12:29:59'),
(71, 14, 'FR  202468', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-03 15:29:57', '2024-10-03 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'rwAvYaHEXc9PWUIOED9xgy2eejAym/d8R3cdhpHYf4Cd0vifXaGTovFC1WuQioWDPXb+/7tw22HjpKchnHJOLT7QClRlAWGoZEGPfvuod9KLWNnk/JVkglxTHZfF9PqItRuZn04Dn2fAGabEt9AipKOdfLaBsPipjSi3l7faTFc=', 1, 1, '2024-10-03 13:29:57', '2024-10-03 13:29:57'),
(72, 14, 'FR  202469', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 13:50:21', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'VBQuPJY1yxA/8X4NVRCJjPF4JPYusRTwMSXDXZ6OM/2csS4cgzZB3Dn8yAdCYSiX33c+yjgCEhl65zL54WEUauSePUVqBId3G+75oq9jdchSL4Vxz8mDngdHzf+RuG9KrOZZy5VXg5aLFm0lGpneLUuXqX2UBmOWoyOVxdDWA8w=', 1, 1, '2024-10-04 11:50:21', '2024-10-04 11:50:21'),
(73, 14, 'FR  202470', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 13:50:41', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'bs9n+f2z+SFQD33OYDhzmmXSo7plkv0maRDqka815iBS7+cXwjVVes5Ul2aMfjLIBFlXNM2nW4z7WdlIxOpu6b7aWE5Cmlgbx2GAQRw22aKXE1BzwsUF5rzgVNrw5xNcJOvzxJ3j4JhL5tuBztsMc84dt4eg5PSZBGnLBFI/6b4=', 1, 1, '2024-10-04 11:50:42', '2024-10-04 11:50:42'),
(74, 14, 'FR  202471', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 13:51:16', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'R5YusBJLdJ9zAuiU2hFPYbdlWXJhlrTQ2GBlf0edo1H8K3xAY0+bG3IIL4DQwtS2lpJGZ1fKh/bet4xVXBAdqWwuMDlKrgW1fYUd/lJzenApvEKeZboMQoRvJaKJ1onsX3UYTPSo8wl3gAXpycqsc1sgAzFSEAUo8MUT7QPi8CQ=', 1, 1, '2024-10-04 11:51:16', '2024-10-04 11:51:16'),
(75, 14, 'FR  202472', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 13:54:29', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 's5fuesYlGHHEfLkuMs4ar2Vts4XFosA6Z920Co5TCQ0HLULlOzWmRFPucmI6gYgWiY1D2Pziz/wh+3ywonJ2lOficnY956McOymiGjP4anKTk/DrlKBLHMCC/tcgxifHdfRUKl6EKE3dnBbVgnt67Id1nfu55RSxGysbowrarLo=', 1, 1, '2024-10-04 11:54:29', '2024-10-04 11:54:29'),
(76, 14, 'FR  202473', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 13:55:25', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4500.00, 0.00, 0.00, 0.00, 4500.00, 'ap984JycfrXr5uPi92DJNKkEL9q1l1kx/UtP+tY2RfHy3SaBXCaxQULRH6p0QNbXNLnKWjNhU4+Qlpgacq3nPx54qosn4vs9nPTo1V+BPQ/CRhQNiEesXfciNghOo+O6bMO5IaTi3jNAI114/KTnZiIIrT+tH3BNRj7EjPv+Rmo=', 1, 1, '2024-10-04 11:55:25', '2024-10-04 11:55:25'),
(77, 14, 'FR  202474', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 14:28:51', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'DqMClBsP3N6keVC6hZ9mMg7Crn2yFf9KROgExZeMUktziOaUQpN0WYYWCQbfDHsnaiskXp6/rAVWZepPdQyqfIrf+DYn3+nfSHJ7jPkCawl7LIrjAT/8VRjPyWeHPr3UxErfR2WERyPtYW9/uCSrqszkIQl/Dup7qtrR7B0B4l4=', 1, 1, '2024-10-04 12:28:52', '2024-10-04 12:28:52'),
(78, 14, 'FR  202475', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 14:29:25', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'OCIpMgqaU5lhCrET/Z0xSDxpibsJUgRbbOyOeki9Xzr8NG7MiLAIVI2teZtWIN8crtyzFk46zteRee9p6L9k73W9m7xghB3QM23nmLK3e6Gky+NzJHyUyrPEw9KQOyx9dmLpgDEu4gVx6xrF4W5+wRrRx/4xu2JMItbfJR2/1dA=', 1, 1, '2024-10-04 12:29:25', '2024-10-04 12:29:25'),
(79, 14, 'FR  202476', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-04 14:31:57', '2024-10-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'KeYBkmyeq4ddScRCZDYTdqGsfsw33+ZTzgRi1FzFRNaBjNDWmggT2F8T7MdLq7MaUG0cljCFqIvUsqUUBhKnv12UaAZ11xikf7r7oYnfeL739fx/KH9D3leWeEZ2s1vNpmcH93Ic91cgpDWEFayqZnPmEuTAGNygHaryOqdhfXo=', 1, 1, '2024-10-04 12:31:57', '2024-10-04 12:31:57'),
(80, 14, 'FR  202477', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 10:36:05', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'dX+TXkz5YvjHK6sMYRUp6edU6zSinb0FZOrG94HD5AlUYk8xoZnZ3zof3+5NGYS5zGbV3Ki+c0eqalc0Qk2xdWUbbQvW/+TBrRVj1BSyHajj4KVhTSGfgAAWQ0XJwpevwLYtM7sQFxeYBgoLDUPWWhqWs6v7pwmn8A3Q6OtSmHw=', 1, 1, '2024-10-08 08:36:06', '2024-10-08 08:36:06'),
(81, 14, 'FR  202478', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 10:38:20', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'cMBEWZr3QsxPqZ1ucrM686d2zsrMQrCXGxwGoxCcxvVSz7hv8wTwLgMZZbYG+dIrsEayrngX8uhq2J76wcZqElAgB7RDVpQOxaoZnkbmfE0cODT24vpThEcIKys2pJMmfDLUjgMezLBRLzWGxYctQIkLFX/X6HdGFHhzl20EC5M=', 1, 1, '2024-10-08 08:38:20', '2024-10-08 08:38:20'),
(82, 14, 'FR  202479', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 10:42:54', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'E++GRGJqweoPaYT19jvIZPQYV/FQGmW+ClU3N1znD0F59M7+TSy/iIU/l5WHnB7Oelp0Hn7InAD/VE9T2jbZgltVvoN9zZbhyErIL4wzyh/6o4H4HgxOYM8G5ElqNimIOavgGXBsToGUWAVzKjO2lDM/zozTrYqKgRxJYBJFXlU=', 1, 0, '2024-10-08 08:42:54', '2024-10-08 09:23:05'),
(83, 14, 'FR  202480', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 10:43:48', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'nyN4oG2a3qE/vqQNdDJpED6iV0mFKc28Zi+W9bBOP5u3dEZZ7fNp3e1z/ZL2EV+NL+1DA0rvY05qT6JLzFADyFRIKmLc5lXP/ITB4otEiD8Vsz7cyGogleU8ulGCOZHXIkZ3wC9MbY8L7PHdWZLFkxAUuNUFzGGII5kP3OJY7OM=', 1, 1, '2024-10-08 08:43:48', '2024-10-08 08:43:48'),
(84, 14, 'FR  202481', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 10:51:06', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'VcaeQ5SC/mkODlyjh49OrV3JDJBomUUtTHLJQpawXw1DbBWaBT70oG2Cb7rWPiTrDHH4A4BjKQ10ZpNZfibPJaldZQJ0xaH37fMweV2/EqV74agvhcGjRXbJ7XT1eMQEnZ71nLSsFKvV59ch6PqnaMwXSaO1TNNj2XUIKF2Ohzo=', 1, 1, '2024-10-08 08:51:06', '2024-10-08 08:51:06'),
(85, 14, 'FR  202482', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 11:25:08', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'DLkTJU/rlYwk789fr1HqRkkh0FLjwfO2K3uaR5d+69tr/wOgJRJBMQFFx04paBE9+/W36kpmfgscD+fBQPo5aZPLGQSvlur+M0E5s1Bkn/XnJAK85Vomwsz2bCAAU2exkZcLdfhB2urtzrTHvKxTYL94mFZ4qTD5J52ZA6SaJN4=', 1, 1, '2024-10-08 09:25:08', '2024-10-08 09:25:08'),
(86, 14, 'FR  202483', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 12:29:41', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'YGY19CSlmZWR4hR8TQuHuZYi8FXMWRGmLEXVzhCA1ZT4C3LVJg9aPIw4XtCbVwnOy1CcJo3s5B76GHUjuseXVE+yFIbaNcB1kgUSRXgwYNLsuuZj2a0ISFI7ZNOrbtUR64cLcS3R7pl/ViZO5PQ3F/MXLtFg5YypcKo1Q7VKrjI=', 1, 1, '2024-10-08 10:29:42', '2024-10-08 10:29:42'),
(87, 14, 'FR  202484', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 15:43:12', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'HxtWIefjTSRZ6+7MZtNwoIvrMVnDhMecXQNGStEHR9nqT5Xx+xlLsAOvIpb/OSMBe/sCoIirXcl3k4SxtY0wz4elLoY7SoVglmKUKz4jZJQQo/pjbNLlqWZv8UIbmduEA/zIhWJA377QhuHbN4muRmj3Ew4G/2qbPG0mGsd0rDo=', 1, 1, '2024-10-08 13:43:13', '2024-10-08 13:43:13'),
(88, 14, 'FR  202485', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 15:47:44', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'CwJPbxWIVyJE8UsHpgY+MfCj6IS2M9HuTyI18NsYxKXRG0/I3pDKp09cwM6CwqNhgxlYFruDw8JU8rQk9EQpVkDAP7Zbo2hxwWEvZHzzobXM3mR3U6dmtyEeYPBL6NW9b0yOe7+/hZ9w/SpK53t2KGS/c4VVE5MC/XayeqVxHVA=', 1, 1, '2024-10-08 13:47:44', '2024-10-08 13:47:44'),
(89, 14, 'FR  202486', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 16:08:33', '2024-10-08 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'ZXd2V8yOddzCY2NBy4YHTSEQ0H7SoejaPlBFZOhSbQS5TYmwvCJ+tiXBzUXnDAmkBSyJnPJDtRLkNLR08sXTgyM8T+TEjQ7V5PxTb4QSY2MxWBEcMeRNmdvl28faObYsD2V9jFeDZi23r2rToYRWdwUtAAJxl1Devprm9OJ/nK0=', 1, 1, '2024-10-08 14:08:34', '2024-10-08 14:08:34'),
(90, 14, 'FR  202487', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 09:50:55', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 54000.00, 0.00, 0.00, 0.00, 54000.00, 'Mb24LcewkGn4O4sAym1wyYbnw3Qrx1RmMzF+NGBnVWMoNPwI9xsA7XFIXjffNvF9x5G7N3vV/y4RM9TA2UU2jwOvVTOHZVaa9MlFN5QXIRBDCRcEis+FLft4yX9Ah8ZpKiu5RexYaHw4zUTrIcsbQMBBANpika4h06DkeChg/DQ=', 1, 1, '2024-10-09 07:50:56', '2024-10-09 07:50:56'),
(91, 14, 'FR  202488', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 11:41:32', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 500.00, 0.00, 0.00, 0.00, 500.00, 'X5lTbtd0j3tz0P9L8t9KqtHdIlgESN0AslsXwd+5yVg8fssN/p8YBcTRo1FxBkqGqSU6oSBNrs55EXY7WXAACz7KNUn+j3uSHFFVcQkg42T6GkDc6Vy1Tzmk0K5ftQChgqYfS+BdP0xwMMBpYoQ9+08LZcMSomoXOwVmqJ4E1+c=', 1, 1, '2024-10-09 09:41:33', '2024-10-09 09:41:33'),
(92, 14, 'FR  202489', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 13:07:04', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 7000.00, 0.00, 0.00, 0.00, 7000.00, 'gq/ex/Imh8dPpBcmZhb4Uk10pFd5eF7MGgtLy9CqUKX/VvmPXvwoQipT/aur/KuYRX7afaPNwN7EOhGBvzVyTUIipt2q8r+qsPpHDyqMIJkywic/gaWpwjXhARxOzUNXlZLANabwyLguRU6s1ZlAYR00QAsBdBPjeZNcminhkGQ=', 1, 1, '2024-10-09 11:07:04', '2024-10-09 11:07:04'),
(93, 14, 'FR  202490', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 14:43:30', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'fLifuiu19gsBSqf+MvdhPYkLSiHMjhfumcdSxOSK3fyCPHPwaxlsIF90I4VOU38hxE2YgJSF3e8tPxG5330z5YE3GpTUbW6FaDYuGHbuUxx9pCUp/AaWVxnApFRxXRkKIzOnaD+thsXCcwYgmgG2lafx1+Dhq/mp7+z8XtU7sEQ=', 1, 1, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(94, 14, 'FR  202490', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 14:43:30', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'fLifuiu19gsBSqf+MvdhPYkLSiHMjhfumcdSxOSK3fyCPHPwaxlsIF90I4VOU38hxE2YgJSF3e8tPxG5330z5YE3GpTUbW6FaDYuGHbuUxx9pCUp/AaWVxnApFRxXRkKIzOnaD+thsXCcwYgmgG2lafx1+Dhq/mp7+z8XtU7sEQ=', 1, 1, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(95, 14, 'FR  202490', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 14:43:30', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'fLifuiu19gsBSqf+MvdhPYkLSiHMjhfumcdSxOSK3fyCPHPwaxlsIF90I4VOU38hxE2YgJSF3e8tPxG5330z5YE3GpTUbW6FaDYuGHbuUxx9pCUp/AaWVxnApFRxXRkKIzOnaD+thsXCcwYgmgG2lafx1+Dhq/mp7+z8XtU7sEQ=', 1, 1, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(96, 14, 'FR  202493', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-09 14:45:34', '2024-10-09 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'B9727Vkzd4UesgJ9EL6GZrW9FrL7MIZvwgcaZE8Ua9tSRBtIPvyzbL0P0WHkDumULtbB1semHoUy12s19jVeoq/68LIdkG4jzQ6KT3rAgCBqotODhK18nUJ3e0qM2JyG6JIeb+LmVFgqBN+MZBQXrKT0ZtuEi4RdTEEBBm2dKzg=', 1, 1, '2024-10-09 12:45:34', '2024-10-09 12:45:34'),
(97, 14, 'FR  202494', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-10 12:57:26', '2024-10-10 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'h7PHPHSF+vZa67tReGvFyvpSmevDO6ZaZtD/TZtGsKGB1Z4Ye2wws+0elF71Rhk97qh6uFFF/LJGHvVn17cNVOIwLWJ8FsI4biyYWnvUGfOrwb8DcH3mCJ0ItsZbugIrGYE6uavMLN2+y1Uvmcm13Rh7PZzpWqmaYy9akq+4F6A=', 1, 1, '2024-10-10 10:57:26', '2024-10-10 10:57:26'),
(98, 14, 'FR  202495', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-10 14:24:30', '2024-10-10 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'AMyUx5eiK0cs1JwaiU82ipKRPlNqmzrw//7TDnK87QMAkBNn4pPt/AEeYh9RS1LTueczzVEpKN+qMuQRzJyzb53EWlPTu7wvGSboQohLwRlF9WWMmEXav0k8hCDHS7WhBjrdYudX6E7qJ6pd2cukwGMlBxEJjttDouajhyIJLOk=', 1, 1, '2024-10-10 12:24:31', '2024-10-10 12:24:31'),
(99, 14, 'FR  202496', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-15 14:22:59', '2024-10-15 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'SNRXp9MAVFPhg5exCEkV1hl3uWnPm/jU+eREmmrTe0GgCWOq4sTZvMI9s3lZlZ51mZaBGEj40TCfvQREY7cOfXU3bxVGmhRC0KJdlp32LZoiQrNwR1oZB+yRbnia48uJr9KoQ879IqQv0+/J1y64CxdIA3nuj3cxqYUMvwqeNhM=', 1, 1, '2024-10-15 12:22:59', '2024-10-15 12:22:59'),
(100, 14, 'FR  202497', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-16 13:24:40', '2024-10-16 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'NKWfvsmU/zeHmBPAMTPNykiKaVl6EXrQnljf59sF6GFk6B0EiS7lP6l1gVjIB3XPFPgu66JnwXRh8lIgBReGWBP0lEP6kFJm+z/E1x74WJA9Or6JrE+4gSYlnhqE/Q4y0yx3f+Cz5sl1oPoRg4MYH/JFRVIAtKtwPdmoUkEePmg=', 1, 1, '2024-10-16 11:24:40', '2024-10-16 11:24:40'),
(101, 14, 'FR  202498', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-16 13:25:31', '2024-10-16 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'OrkxafDbfgxqRolaXCjgskBk1rxiEXlIOlwyAMgsby8aQJsCsgzodIo7vSYp0uN5047Tf7mdLRutHz66SBAMzQOf6dP9fVCU0e65yVtfkLOViiTaWvd210tWn0jxMWhvMVkZbaGLf0ijvFRkAQgrZh9kPQftkd+D7/Y3kwBNjlQ=', 1, 1, '2024-10-16 11:25:31', '2024-10-16 11:25:31'),
(102, 14, 'FR  202499', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-16 14:20:18', '2024-10-16 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4500.00, 0.00, 0.00, 0.00, 4500.00, 'sQWwywvqsQGWWyYUxeTYO2cgx6OSqhPUN8ayuOISsYEqpsChr1mR4DMgx0B8+1AZRQmAvF1ImuuzEkPATEDlk74qB7YK1TaVpTdN7rR1IS+aGR9qCO1Zi2Gve4dN20FH8hHFrKtXXV6iVXBf2fLDbepg4/hDB0dDLhlUhuou0tk=', 1, 1, '2024-10-16 12:20:19', '2024-10-16 12:20:19'),
(103, 14, 'FR  2024100', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-16 15:06:10', '2024-10-16 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 55000.00, 0.00, 0.00, 0.00, 55000.00, 'd8F3zwQGYI/PgGyLYsXa3tH/lUSIqIATEcZmmZX3bTiRfsdE1/z5W0o9GZVYwEtfESmB1MktxYnpPAefdKUMVKytQ0hlOm+zq8HP7XgdQsyZXy13l1qukteDidQdfY8pCcsePpBSfMrUGLKmLYvmZhFRbHsrb2eVJEH9wOZevHs=', 1, 1, '2024-10-16 13:06:11', '2024-10-16 13:06:11');
INSERT INTO `factura_recibos` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `banco_id`, `total_banco`, `total_caixa`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_nota`, `created_at`, `updated_at`) VALUES
(104, 14, 'FR  2024101', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-16 15:18:31', '2024-10-16 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 50000.00, 0.00, 0.00, 0.00, 50000.00, 'IveuTSsYm+pS4Ranxy6sKqaRf7COS8Kuo9joFI0RLCcFuPayJJYj7iupswQ7kKs5gOKKBXrtoKdHQk2+gUDXT+X3F2D8CKAblihqur9eVSR6uNpane8vp07utGZKGlUmFoLokoTD3bEc9+0tfSb/OnWJvbEzm3g4bsVAR4psH6o=', 1, 1, '2024-10-16 13:18:31', '2024-10-16 13:18:31'),
(105, 14, 'FR  2024102', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 08:42:45', '2024-10-17 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 50000.00, 0.00, 0.00, 0.00, 50000.00, 'nsCwSewP+s3mXHYwD5kKc3ivm2OKJTJG3zlYDr5sKo9wXh6+Grqg55m3OE7RM9ispePX1lEwxAo4xhuae2tdC4Zhq+pqCskFw4qwS62PGp1nC3Eu/x5Q9nbWQZoQzaU2kEnzsqIjPY6CiGFeOSRuoaT+LxBKIeLpfnEc5LAFo0E=', 1, 1, '2024-10-17 06:42:45', '2024-10-17 06:42:45'),
(106, 14, 'FR  2024103', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 11:03:02', '2024-10-17 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'c/rsgmDuZlTQELrIG+L+nGjMhQR1DrLuX4OpH9ollPBNDDweL4lkXsVT1v32xPQY6kS/OPiPBzdA1YtPklSHWHBiQhvUArFgrCFLzEg7ACQv0OUwWNuQDJ5onoQ8iP96kZcZbmy+sJ8LSyqwSQI29kfKO8B4apAkc25XMuXSfF0=', 1, 0, '2024-10-17 09:03:02', '2024-10-17 10:30:50'),
(107, 14, 'FR  2024104', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 11:09:02', '2024-10-17 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'YWJSHeNyhkhFkdq4kbqLC9kMuaPn4l5vEui6JmLzh+ev/1PBny0rcjVRYZnQT97dd7cbf4OcHG82TqfWqkqRVy7Z0CFHT94K27Ymh9vtdE9P6JehHyjwpGgknDI23fM2G2sVS0DWcDPk9dqjVVCXjg4NS+jxr4VlfugaxfeAlSs=', 1, 1, '2024-10-17 09:09:02', '2024-10-17 09:09:02'),
(108, 14, 'FR  2024105', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 14:30:05', '2024-10-17 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'VnPteLlrkk2TofTycI1dAbkFO6GCUaJQUf2/dX6YqdYtrJhlHzv/OQoce8jk5VSZiLy5ptbelUBs/0ruIeduvGDj6XyL8k6HDCNv+YXVP3ELMKcnWzRxQtuSGD7AMqGnZnrrHZwhivJdlVpzJaVc4vHRNTBvWONfiKDhfspW++4=', 1, 1, '2024-10-17 12:30:05', '2024-10-17 12:30:05'),
(109, 14, 'FR  2024106', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 14:49:48', '2024-10-17 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'Kh41myiQaCzfaVtWOlwqREyyYZxs2XJcaT1Or5aug1b5zag/0m+f1tbWFYD5EnMLtHcn3yK6U5D3XXRz+xSQTQVsK/4sy3fMznYdC0br8L/1hOuyblqIIV/LXdLPZ6TQhhHz7cdb6hPRWo2RDSJWrayhF7JvYPMZ0qwMFeNDPDk=', 1, 1, '2024-10-17 12:49:49', '2024-10-17 12:49:49'),
(110, 14, 'FR  2024107', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-18 08:51:46', '2024-10-18 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'L4IN7xQDTivQrqVdp5Sky7HpEW3weFaJAZVohLoUYAp8XViqb0x7fyBb8hTwtr41nAiJEVDAfKMWgxt8Ci8Z7LBZIGDMf2UKHycccGD+ywtgZG5PiED1hOAc04RxBbp/KkNKOQBmZuT9hRlv8/cRTvbeuPBvzTyIaG/ko+RPE00=', 1, 1, '2024-10-18 06:51:47', '2024-10-18 06:51:47'),
(111, 14, 'FR  2024108', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-18 11:20:45', '2024-10-18 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'TZrAR05mw7+amfJ5lliPPniiAy/MZPQP7DP7AVWJKQFZ2y7N1mNh/TIl1lIx0MThevG2doMV0oPY3T2z3cfW3F7v7BewYe+DjhwzUiZrDy6c1ikcNDjOVAMPEJkxyJ/ApNSVVia61rGKVkZ5DlaZmMW4wnXxlCnP9aeTuBvDMTE=', 1, 1, '2024-10-18 09:20:46', '2024-10-18 09:20:46'),
(112, 14, 'FR  2024109', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-18 11:24:49', '2024-10-18 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'UR/Waly2gPOmodEV6sQFjQr7NvRnXlnBPZF59LpYVD7W8SepAIvynj6tEQEvcjCMNRRnxn0Mf8Hf0UzO9bsPEYmPBUoYn9o4MkZ0Bv8zqVL6bLZbHbVir6rpTrSw118s2isDc0E7kbdC/fpAl8scLlL+glxOX7MXMM3AU9Y3GYA=', 1, 1, '2024-10-18 09:24:49', '2024-10-18 09:24:49'),
(113, 14, 'FR  2024110', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-22 15:35:52', '2024-10-22 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'Xq+zWxtQRRpRja5g9rqO4akHyvTzAkIeM0pAKNLvD8e5CHiv3PLIBsbRzzzsRVxZVxZk7wH3t7re89tLjSWLBq0h7bwFBXH4KCOXNxOwzjbLPGBxpEUo3a2ytxKcOn3WSqVuyCZTHKoZjsT9nyBHxgbE3KlE4GhGaTalrKMw7MQ=', 1, 1, '2024-10-22 13:35:53', '2024-10-22 13:35:53'),
(114, 14, 'FR  2024111', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-22 15:37:57', '2024-10-22 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'nGCsBGWsu7m48Srr8KGHGwRQTEuXm+pSQ90bxMPh3HQCuIDs6hk3gnzUPJ0oD1V+2JMc98O14rMaJFkbIPcvYr1+sAgew5zGID8UWXvRzwiA8tDr779biNMSN8Em/0XsTjYuUisi6iB43U6vpfgWvy1aglXuQ3rTRrFf8ov+J5k=', 1, 1, '2024-10-22 13:37:57', '2024-10-22 13:37:57'),
(115, 14, 'FR  2024112', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-23 08:23:21', '2024-10-23 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 2500.00, 0.00, 0.00, 0.00, 2500.00, 'XbvHMMgSZsJgoZF22uOEkV6ryk+8lBB2Sxcy2Ifisdxq8/dhG0/oaNW8M0WFGu/1gvSROpj9KxrBMhLUN8facr8hMs7qStBwMotS1RQa6wS6xOotCA6Tv4UQtN8ljjBHEqWAYYx1Mp6RQhlsLpfj/HKQQwiqQxDog/WQRRPS0nI=', 1, 1, '2024-10-23 06:23:22', '2024-10-23 06:23:22'),
(116, 14, 'FR  2024113', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-23 10:58:19', '2024-10-23 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'bNJG0hFRiH0GzDVJql73GkL1zupyap2mPRukdGO/BYqIniqEtHDK05e40fpD4v5qTXkRyBiJ/XKxFuDcFE7IYRbYsjuh285y2L715OghlG3M+UobqQZsMoOMaJg9GvihKOL4mmfoLkiECYQNMvsHOLxMdq4t1nNmkTWe9/2iglg=', 1, 1, '2024-10-23 08:58:19', '2024-10-23 08:58:19'),
(117, 14, 'FR  2024114', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-23 15:23:39', '2024-10-23 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'mrxxtKT6TIeYnS0jMJbTmwU33KomEgacKGCL0eN7c1/wYCM4cakK3ex+KG8sdVm14hOBw1PEDv1ISUt+Ajx9b3irEwgbrnK4XQ43DKDQfKTCOmPtrY07jlVv5x6DXvj6lT2d5VjXhNI8LB9YnV6rJV6lb6jOtbvxZYNEv1xywd4=', 1, 1, '2024-10-23 13:23:39', '2024-10-23 13:23:39'),
(118, 19, 'FR  20241', 43, 'Helder', '999999999', 'Benfica, Rua da AngoMart', '2024-10-25 12:43:21', '2024-10-25 00:00:00', 38, NULL, NULL, NULL, 37, 32, 'Augusto Xavier Joaquim', NULL, 10500.00, 2100.00, 0.00, 0.00, 8400.00, 'o3glNMfGJBx0X17rP8ndXteGq7PD5hYV1LOqQ+mIw0mLn4/4hgmb3JXfG7DyDBBk6m7viZJkpCU7rq1Yha4THlud/G1vFgkTN6K+PBJwYQzrw8t0htVAiJL1l64SPjE9b/vP3DoCtOnYLTfWAQaXkCtlV/fYBKBDda0AiR1AWRo=', 1, 1, '2024-10-25 10:43:21', '2024-10-25 10:43:21'),
(119, 14, 'FR  2024115', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-25 12:47:02', '2024-10-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'krO23jxQPhA0mQdxliDlT8CnuKZy+xkO7GQjRVLcthB3Bdab8r9ccjQINaO1RjDK5xB6kZBpNLhGaNLGjdh7v7wrpDTQSX/pDI9Xcajs/UhVu5/RfV50g8hskw93FK1Zr/LfnPVN9tT8jLWFJcydtgKB2+H4jlTCrS5zGfcqTlU=', 1, 1, '2024-10-25 10:47:02', '2024-10-25 10:47:02'),
(120, 14, 'FR  2024116', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-25 13:15:36', '2024-10-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 6000.00, 0.00, 0.00, 0.00, 6000.00, 'BoYRWlGE/bLD/epNfyb8/ahVUXOssweHmvxM9RP7YreoQnNHM++PgWkMkPAoks2hqDg4SNL3R1ZdxxCXPXlTs9fz5Yr1qqACO6VPimmSm2kCBvG/Pds1rnLeskGKG8K80IuX8SSv/Td2AYHanEp7P+IDsll2ZRMmIsB40j2/ecw=', 1, 1, '2024-10-25 11:15:37', '2024-10-25 11:15:37'),
(121, 14, 'FR  2024117', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-25 13:20:14', '2024-10-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 12000.00, 0.00, 0.00, 0.00, 12000.00, 'jMCVkryWx9oy+8o0zCIeBOeXg+BRSTkqPRwCGDViu8TGPfvOmEzOcAKLR0Fx4LffKF3+6WLvewZ2Wyd23oQlN9MASskRn+6+VI5epAWNvUvuJrnh+Rti1GL347OGjIM86UJj39Df3BuMUDGSlI5nekOuebi4eSVEQCGmuvSZbkk=', 1, 1, '2024-10-25 11:20:14', '2024-10-25 11:20:14'),
(122, 14, 'FR  2024118', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-25 14:20:00', '2024-10-25 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'pASl6+Y+0r0iAyp0L8jXcX7PkaV3jof7RM8zd1Srr80vDd6cOHfkRoV7eBxPQG4W5e2oryZyGbJWRfk3EOer0dnFMgS8yT4ojNhjE3jE2UjNM2drRMAZ9hmQ+aPnjWOH3RBY0RKBZcgeX5q4SmmYO1R5/9eonlKoZuuOc3uTwVk=', 1, 1, '2024-10-25 12:20:01', '2024-10-25 12:20:01'),
(123, 14, 'FR  2024119', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-31 12:03:52', '2024-10-31 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'KblH2IdXmlEP8CCRg0NYqcdONTp3zVGfmPnuTKdhrlIeslsR9h5hHHpdMp0BoJzutHs4bIbx+CQPT0rWFfLu2pnf3wmW+JyI9WofW/stXi/VRiZ4Sxcsq54wLzUnY2HcRw3X458dJwTKJ5Lhr75QonQjH08qwcAHTnppK5QhI9k=', 1, 1, '2024-10-31 11:03:52', '2024-10-31 11:03:52'),
(124, 14, 'FR  2024120', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-31 14:34:40', '2024-10-31 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 500.00, 0.00, 0.00, 0.00, 500.00, 'Q30qH3Q7+BZktPxfOqGibUKCn3RSNK/CpO8X3RNwXhVlHivwJ7U3adze9F7XyuW5wesZg8NYKX//u3ZC3Zz1Y74HZrgXCvP3K/Uj6wZAzcz6xWXy1+z3xsPgPHM7ta6QumsYUYaMAZ/FlicUh3NnbpFSsuGPUNw+/FJQ46fX020=', 1, 1, '2024-10-31 13:34:40', '2024-10-31 13:34:40'),
(125, 14, 'FR  2024121', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 08:25:02', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'eiBvAT7KLfc4Vtx+PdGqwmOwxpzN3rf0944yYaJHFQSE+Hy/9Dc/w+x797+EzVLnicg62AHw420IuriIe6GFSmnYNXZP/vczp5Ve3IoQQGMJyZFM8MRS7v48gDu+KKUspktOyzVZC3QkCDSgKTwmkOffPhMlpjo4nn1Eeh+qkHs=', 1, 0, '2024-11-01 07:25:03', '2024-11-01 07:45:16'),
(126, 14, 'FR  2024122', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 08:50:48', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 2000.00, 0.00, 0.00, 0.00, 2000.00, 'aYx6tUd1iPEh2GaQI28lcg5j2DOCDjhxM6T9i7Pdctg9420fSfqc88hzzPhEsZwD7SoX3zzcezLGO/XSgI+lYFHXgpjsrstukI8z0+g90royVm0qYTCS46MwdCe4xrG6sD57q1+6IDPQbcP3876Ou2c1s12iRCwAnEftFruGbno=', 1, 1, '2024-11-01 07:50:49', '2024-11-01 07:50:49'),
(127, 14, 'FR  2024123', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 09:33:53', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'mhBNqusZ70zydlzsesdbJQyVBj2ZAuzxhxDVmOSQsNlC4uv/Lr/LBFen329x2an2z/1ybYRrxsgsIjQCHMK4oFS6piTzHdMWXESHmKRm3qC1jNiPufJdEIzdA+T6xpFdMtVneQSI3uRjWJ4DH81LWUTRxXfy/HZSieK0AWwsvVM=', 1, 1, '2024-11-01 08:33:54', '2024-11-01 08:33:54'),
(128, 14, 'FR  2024124', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 10:14:19', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'gV0o23fY4Aa35D7TZQ5ZmX10rU3xpT3J9whZhofBjjxxiqmr2tNK6KQjMN/FLWK6XaHKb7X8ePZ5X47MG0eDmg+J12Q/G/4Z+7AudXWy+dFXBm3viW4kREwUz+5Ib0wI418OMJYRuMYBzDYyv88cdekLGC1jPRBJgS3vc9E1vS0=', 1, 1, '2024-11-01 09:14:20', '2024-11-01 09:14:20'),
(129, 14, 'FR  2024125', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 10:33:37', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'iZkUNo0ZfT57mAgeL+eaS/z3u08GaBM588gTahLFWevK3HM8AaVUQL1npAUzxBnchyCBgsMJoxRlDR053VaLqLTQ7/Y+0WgCTLEqpc0SaV4YZRbQ6OqrP/itD0qGishP6h/s9ZD/jWXLc+kH6YPUtLN0jscPNJvLXG8v5d6U/co=', 1, 1, '2024-11-01 09:33:37', '2024-11-01 09:33:37'),
(130, 14, 'FR  2024126', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 10:37:28', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'LH9VU1k7toXA+/4A3TgD5V/GROr/kF+ZtHiAencYWmz183nrD4Tucai59jE0261LEcbiFzd+hP/AaHO7HcjhVQt4v1I/kqZi02Jq+a00Itctdbmno5IsUnoqEGhoPiRPq7Jxi0aYGwe6qzlQsxHG3Bf7KLe/xT8ww5z5ffXjSRM=', 1, 1, '2024-11-01 09:37:28', '2024-11-01 09:37:28'),
(131, 14, 'FR  2024127', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 10:43:09', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'fm5NWCHXOAuaWohD5ZJE7FqKEixkoDmZhrUWxs+1twiXO0lzoW8E/zIW5WEZ0xWfk/CMOXACAI5VUfm34umHHJVceB59MOEYZ7zprq3TgQFCgycK/GWWshPpQAqVb7n65r+Hkj/VNlS3eKHcGr05U2NwCU0/TT55YAwcZCN1Bvs=', 1, 1, '2024-11-01 09:43:09', '2024-11-01 09:43:09'),
(132, 14, 'FR  2024128', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 12:16:45', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'QqJTuL50rV1F3L00UtUO4Oz4IkdHyC/HWgZkAShodUqLHc6+0KIAFaXGjG6OYTwwoRuHfjqPcYpeSJMT0AthmjoYL9yn4TmmGCwHyerjpFIFyKhBTEfiwl0dex3t+M84CRxZwkxQ4EAwMI5UzogO5PgIt/Ov9i3AENPEdgjL8xI=', 1, 1, '2024-11-01 11:16:46', '2024-11-01 11:16:46'),
(133, 14, 'FR  2024129', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 12:18:26', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 500.00, 0.00, 0.00, 0.00, 500.00, 'TCrigb0zzaALaG10AITPRxz/hMPM2SUQEkAdS3nB+Wn2NkKlq1mh3gbXUg1o86DWVlfQm5z4Ul4Y/ucq1s0ER2mkgUEj3lTOAC9wVb+E9oZwpBH4OKLKCls8ATUr1WH0qtCb3N38I0Pcv3pI3NodG+1Wj4a7148LjSQrJeuW1Qw=', 1, 1, '2024-11-01 11:18:26', '2024-11-01 11:18:26'),
(134, 14, 'FR  2024130', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 12:45:13', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 22500.00, 0.00, 0.00, 0.00, 22500.00, 'Z0TvgSK1Z16ZWayVKkrgZI+zM6qNVNu7UIP9kd6pKSj6yBOsGl9E0gOEkwWcxEQCKVUonS5D/Mp3FQpUsBYIJC1E/v8JHIQZkvBXn9IacHUeSS8KnqPSEBEuCKeYU3rffGLeHS2CbOe/wftHlNq9qEtjvCZs6G/yhIwAt7qzm8g=', 1, 1, '2024-11-01 11:45:13', '2024-11-01 11:45:13'),
(135, 14, 'FR  2024131', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 12:53:10', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 12000.00, 0.00, 0.00, 0.00, 12000.00, 'pyp0ychQ/WFQh4ClabURZ3lKDot8LkDrYaDglTP+ETb+/0kcV97rNAUSoBwfDGwxUeJiBZRDm5pjhqG5PL+m43RoCO0PAo3LkIAlD8bWnbXJLpIidjGc8g7KpjJkq0zL27kb9BNZQDvk4e3+0SIPh86iqGln8L9NJwFfJYVQ3T0=', 1, 1, '2024-11-01 11:53:10', '2024-11-01 11:53:10'),
(136, 14, 'FR  2024132', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 12:54:29', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'j4oqvfbjnAOH0NvCCUVbD74ElJOFzpui/o4zIH7abvvfd10BIRFlkU6RAlkiB89MvGoBAHtY4gfQVOJ+WDs3lN4D9Qrog1/eCrKLGD9xSl+lSkJmG4VrEub7QUuC/yLG1Qt8i3R9wk5CVX8W5KoGWI15mAfmeKAJKfkuTAaqv6w=', 1, 1, '2024-11-01 11:54:29', '2024-11-01 11:54:29'),
(137, 14, 'FR  2024133', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 13:38:21', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'q4hXdkhCYyAmieIGedj/ohi/ZQWEY0Usie2QD7xlN0c7wg0PVrsyZAMDpnWCbnmioaXMHhrk/vbgekXULmVqWG+/R3/hdultr/CC4ltaX0I+nnZSZSd4eqtvD1aKkt01DsBZ2MfqfvM15avqLRxPx9lkKBnhAAMhEhIk88j4yVc=', 1, 1, '2024-11-01 12:38:22', '2024-11-01 12:38:22'),
(138, 14, 'FR  2024134', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 15:14:40', '2024-11-01 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4000.00, 0.00, 0.00, 0.00, 4000.00, 'fhHSHTiUK3v0IBuFb1AkI1I7818zl73w0fHdYIggcfoOJD9Wp1uWQmbzJcQkO1teMJiNg4Z7GVcaQmMpy2op+T8mRt5a5BWHVH2qmr4PWOHXvXvOIJoFtuswf5zkcICzeBvqjqyxR4HiMAuCqHEXXBnaZU/66G8rPjfY5NiDgs0=', 1, 1, '2024-11-01 14:14:41', '2024-11-01 14:14:41'),
(139, 14, 'FR  2024135', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-04 15:20:34', '2024-11-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 4500.00, 0.00, 0.00, 0.00, 4500.00, 'ZE/u613QF4n8whuA4HRr05VTZAB7jA9R7UPSR6FFmfeMoMt/uM1XE0EsOahkBc2rrmAZafiGzjcmoJ8hHS6nHL9bSIL62JHdhwKpfP36zzNsuz/HoZOH8kx5j0QVdxgzdwmTRWaRDU8+gchuDqe5YRSknV0CCldeImtiheQjKmw=', 1, 1, '2024-11-04 14:20:34', '2024-11-04 14:20:34'),
(140, 14, 'FR  2024136', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-04 15:21:47', '2024-11-04 00:00:00', 27, NULL, NULL, NULL, 27, 26, 'Natercia Pelenda Kiassungua', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'qh4OT0+ZGUb5RK3FEtWFPOtWVyMMsFcj+1oVdfxDR6/0Mer3YwQRmgNQ/xnLqKB6e+5BiynHIoMiItGl4rM+ybHpn+4M66UQF9OKYOHGKV4oX8SHw5qvXWaoERf2WL1z/1mZMWN0SdxxtnfJ6PERhDWmAMsJaHIWXlyliYn32aM=', 1, 1, '2024-11-04 14:21:47', '2024-11-04 14:21:47'),
(141, 14, 'FR  2024137', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 11:02:55', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'YtV85debtmWJZ58bhtZOrlBzcqo4EEvip7ecRgijhkfVDofZQ47a7L1IAmSG2zA/GE3i0sLCddSndlFnbDxbJ149L42ka/pVZQOVCgnLdfA+JFe8uaTIYuaWLtuNXTlcAOhiyANwAN7thVNCDgVcfFYTs7X7ALtf/6wfCTnQgyo=', 1, 0, '2024-11-05 10:02:56', '2024-11-05 10:15:43'),
(142, 14, 'FR  2024138', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 11:09:26', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'qkgxLu5yA6cJCXpv2cjs5zS13djQhg/IBjLIY1fXMzbHRwHvpmWLsTe8EjFX/kqS9tKgbAQpzp7i0cYIohK15oP6cBXdzUT2eu0ILFWOH6i17Ds82i/vk55jZwT+vg3nbOi3MoCYUGsvKQSMU05kggYErEI9Y2xsrcscccMLHPk=', 1, 1, '2024-11-05 10:09:27', '2024-11-05 10:09:27'),
(143, 14, 'FR  2024139', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 12:35:41', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 5000.00, 0.00, 700.00, 0.00, 5700.00, 'EvkQz8uBWm7+hhgEw3ToCJBn17NA76PYKPtGEaKZR1fOFylJ9d4BxKcUzEOGZOxZQ2vBwWjnifs7O/cqdPEArezHGkTfaJOuIBzuo4hTSPabd3E4071Iqxl1L8R4cVE9oMDk90dOJ3DurZsVavoJWGJWyX/5/BfR2qx4Vo28LyU=', 1, 0, '2024-11-05 11:35:42', '2024-11-05 11:37:36'),
(144, 14, 'FR  2024140', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 12:40:19', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'cNksnMjnAbnaiQf/9X7Rokl76htxvrDCddO7GkqVaq05dHkUc6TF+nCojrQ/bz2qKrfTh93Q/Z/D9koiEy1q0z2eTQVPz+Q/0GjdaDqizzxsZXV9pNYIO2M2SljPsiSx0tyHdpRysT7QXDxatZBqcoGMAjpMwwLNOofKFySeAEo=', 1, 1, '2024-11-05 11:40:19', '2024-11-05 11:40:19'),
(145, 14, 'FR  2024141', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 12:50:17', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'VoYnZVt+OyDli3sPYc6DWzti1ahs2JjUgWHWOx9G+jfaT/HIk/FBo5RYkGaL1bU8wZNwcP7tPtskc0Nc1ZX68DFj4mhSmjzkG0K8gphIQwia0eVLnMwj6IypEKmbwCEYRt3MsQxQnLskjThHZCOPbhA10zyerBBotmrIXlt2i3s=', 1, 1, '2024-11-05 11:50:17', '2024-11-05 11:50:17'),
(146, 14, 'FR  2024142', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 13:16:51', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 2500.00, 0.00, 0.00, 0.00, 2500.00, 'SXQgb0kFI5eFdMa+HTYrqYPSNamG7LHt8TxATIci1jgSJ4QrO+HNPpqbCdMQ2GGvoX+F0DwBEeIO3OXd9n9GIvNOPz8jsUvRZBPt59YurWVaVaX8MSxRU8l8tN8VCZ1v7uingDYSnyz0Vx130NoDEv2ymixEcYnUWPGLjA3SQ5Y=', 1, 1, '2024-11-05 12:16:51', '2024-11-05 12:16:51'),
(147, 14, 'FR  2024143', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 14:18:11', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 1000.00, 0.00, 0.00, 0.00, 1000.00, 'RmbO42wzqMkEGQWSVoFhnuNRwm2UTB3dnmE+YKjgRp9vVzwfVFXfa0CkwvonkU5a5RPYWaO1xbu7Z+LmrQDo35/zIrIP72JutBV/FZtoL60pMoViBK1wr+/Kr1JJpUokUIa0WpM4ia2OFKX25J/vn/hSHxROWlkaGH9EJ5D1chU=', 1, 1, '2024-11-05 13:18:12', '2024-11-05 13:18:12'),
(148, 14, 'FR  2024144', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 14:28:35', '2024-11-05 00:00:00', 27, NULL, NULL, NULL, 27, 25, 'SANTA NEVES', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'jGgpvbqVaTSzoi0qU4+pzHhc2B2rZwyCBeKUwI3pnNcd8kM1sBxseezTtvn7KIRj7Wtyeeb4d6AUxbeeAdHo12X10VkOKoKLmsCbApJXbd/kPFfmsX4ikqiBfp0d7C0lWET9inR96BoGTrUP4mas1Kdq1vj8QS1PHuuw7esotQM=', 1, 1, '2024-11-05 13:28:36', '2024-11-05 13:28:36'),
(149, 19, 'FR  20242', 27, 'Consumidor Final', 'Consumidor Final', 'Luanda', '2024-11-07 09:50:39', '2024-11-04 00:00:00', 38, NULL, NULL, NULL, 37, 32, 'Augusto Xavier Joaquim', NULL, 700.00, 0.00, 0.00, 0.00, 700.00, 'el/6G7YEXXC2YRQ3crgBQR1vewGWDIfvkAxpx6w6YJogCCixhxjQJpSV3qVV7mdyXPUjBa1gPGwY0W2ujPjoi3StO28sTIXRFZQKVFLfym/elAXSg3T2+OWQSoECgXJOls1x/8iHa5GE9y0IXEIqAAv1QkrEkR4+W0V29u2n110=', 1, 1, '2024-11-07 08:50:40', '2024-11-07 08:50:40'),
(150, 19, 'FR  20243', 27, 'Consumidor Final', 'Consumidor Final', 'Luanda', '2024-11-07 10:02:02', '2024-11-04 00:00:00', 38, NULL, NULL, NULL, 37, 32, 'Augusto Xavier Joaquim', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'S2az/gUwss8BgPhzvdkiG34pb9icqTwBk6i2nwyhJ4P5IUSZIFcV1DhqWHjX1QobzpelWq3+02XcPkk7Bxbs6JXkvL+1e1AI16/pgUG4lTJhuw+BOwDAnZ+c8AyEAoZe62TBD2Od/SOpluV9gMivUeyDSIC27hrObSvSxfQrsfw=', 1, 1, '2024-11-07 09:02:02', '2024-11-07 09:02:02'),
(151, 30, 'FR  20241', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 11:44:30', '2024-10-12 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', NULL, 90000.00, 0.00, 0.00, 0.00, 90000.00, 'sAZ0biEY6BZWId3qm1gXR0F6jDPjTxXigSyUstVasvx0IjcqKSUTEcGhgO5woEmlEBaoA41HXAziZhiNAxzSXwuc/76hm6ZNnqf8xazKpJUoOEvZaifm8GNADHpFUG5WI4rIt1K4ZYCwTZBuqRcYhz2z7ai0GHYn2jL8/2eSPSM=', 1, 0, '2024-11-28 10:44:30', '2024-11-28 12:24:46'),
(152, 30, 'FR  20242', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 13:27:54', '2024-10-12 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 12/10/2024.', 90000.00, 0.00, 0.00, 0.00, 90000.00, 'iRBPQ+W4OECGr1HNDLkekgyG81kBQ3qJq6JY3DD12UAkCBHTIPSSb3X2X7bXLfji0Y9JqyBkDCK2DSfDfBkfL8JwbO4ojqvxat6I+vvhj89igvHMBKxOsPiaI/98b0IOmRsbh6ccVGA46xyZ0f8G1M02TgFO/LXG+Ug6pASxHm0=', 1, 1, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(153, 30, 'FR  20243', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 13:45:25', '2024-10-13 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 13/10/2024.', 228200.00, 0.00, 0.00, 0.00, 228200.00, 'fDkTiZ0I4tXY9Plg+2CNgixwZi95V0rZTySQnxVP1UPkYxKPg88PcQfsWBEeDWHug+75PVMhIIPxdqA7H1TDk0nlSmn0OVHa2veYEisf6JCQNg8CG2q33pSNpTBUevCSZh3PvnIDeR76ZIJqVpwjzORdcYunOFp7xn/IwgUVZXo=', 1, 1, '2024-11-28 12:45:25', '2024-11-28 12:45:25'),
(154, 30, 'FR  20244', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 14:00:07', '2024-10-15 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 15/10/2024.', 255000.00, 0.00, 0.00, 0.00, 255000.00, 'fGGe2pq+jgFlgYPteGKBJGxNczLF7FtMQHOlJqWZdzlyLfjvOvOEbtDKyZ9yb21NbXmAB2NLODhMGWb4wFv87pmoFHF65laOBq598Z78dlpCD6NNtSTcHuWZSelnFbnGgmKHDPW4ew9FLjmosn8/B44DfDrFetbenSUCrFTksNo=', 1, 1, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(155, 30, 'FR  20245', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 14:23:27', '2024-10-16 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 16/10/2024.', 289200.00, 0.00, 0.00, 0.00, 289200.00, 'QKhfBmY6IY4WlSAQ3uh95ASfrG3mEuPmVAesUFa4lrS7JbGK5MRBZsANlUCJwJ4/FkTRzH6sBGTIOn6qiK6zZ32eVqfejek529pbYJ77qipMMhLqyLgUvXspXE6FL9Y/z+o6vZI67J1WJVzCvX8Q/db2tSpvW5GF4xHDauY55Uc=', 1, 1, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(156, 30, 'FR  20246', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 14:44:55', '2024-10-17 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 17/10/2024.', 459900.00, 0.00, 0.00, 0.00, 459900.00, 'EyZCkxxNZpBmzZH9OdpqQvMMjMDpngY+uOUUtyiQPZxDBEWsme8Y+gZHtTA6TcvG7+xctbBxq+MV2sCPyCn1nXxjUfJbJENaIqOlALIp3wARVLFb5ZT4mU143Vgu/tfa1uelzNILCkoqqU8hsxTaug1J18wtgEO0+pnq7GIYv3c=', 1, 1, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(157, 30, 'FR  20247', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 15:19:46', '2024-10-19 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 19/10/2024.', 755900.00, 0.00, 0.00, 0.00, 755900.00, 'kuMgaeE2NaoCLYpmalIG2ElsU+ZlWEbo6CCqUuxvBqVVY3Qpvch5ZR2UssM+VISikju+79OQDNxRow5Do3A91MFVnxGqeOqbLrg11clhzR210AI3meQ1W8qbqzeUj2wLPIiBs/lDJMLLu8kZ45aWCltdTDXClFGI9wrOw+aNdMk=', 1, 1, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(158, 30, 'FR  20248', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 15:36:41', '2024-10-21 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 21/10/2024.', 135100.00, 0.00, 0.00, 0.00, 135100.00, 'Y6oH8Fxg6Z0h7xLY3+2Fn3qbSiV3guDaGIM99s6LGczdJs3IEZ+wKpsBa1uOXidcw91MNVzqbr7+pzMdImWC/mhNNwaLSJCLbfAYEmv5DtllX3P/cvgquF9LbbOpefOUmm8H1aXQ3jhwJhBXv2P7j87gKtA2u0GG7TK7thOG86k=', 1, 1, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(159, 30, 'FR  20249', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 16:14:49', '2024-10-30 00:00:00', 59, NULL, NULL, NULL, 59, 44, 'Administrador', 'esta fatura é referente há 30/10/2024.', 82800.00, 0.00, 0.00, 0.00, 82800.00, 'K3rQfcDgMrIaw0i9ztzTbW83ylu19iFvCnhMHyt+nqQ+ZTnmGwmeu94oQwJACXG8mfs8lW54gE0mV1nSO8SyHwouZ/ikEcdmQHm7hSMUzKFDrcmE7pmUU6VgWmgJ1XndxLizfhPH4DNANXN5lMnnlAhy5Ll7jElLiMmVui0evm8=', 1, 1, '2024-11-28 15:14:49', '2024-11-28 15:14:49'),
(160, 32, 'FR  2024/1', 65, 'Consumidor Final', 'Consumidor Final', '796 Jeramie Shores Apt. 561Feestside, DE 81886-4113', '2024-12-16 12:33:23', '2024-12-16 00:00:00', 63, NULL, NULL, NULL, 63, 48, 'Administrador', NULL, 150.00, 0.00, 21.00, 0.00, 171.00, 'kgOFq+vwTJA16ZNlL6kcbgYlBXncDhsZV4o49W+2gvDoTC+fwwtZc8AorsHN8t2XnehGiwuB+aA9lBNzFZJsh96/+3sDxVxg+UwTv8yMG3BNaV5CbZWyiz9a1kkRVlrl7wkikhrJCl+QtKav7by8igvY3EAZo9ptXlaYNpNvVrg=', 1, 1, '2024-12-16 11:33:23', '2024-12-16 11:33:23'),
(161, 19, 'FR  20244', 27, 'Consumidor Final', 'Consumidor Final', 'Luanda', '2024-12-17 08:47:11', '2024-12-17 00:00:00', 37, NULL, NULL, NULL, 37, 32, 'Augusto Xavier Joaquim', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'E7iHCL9x4HX8tgSIR2/24HP2qU2HXbfp8/S7nz+vGKErxrI40PF2vxW1WFkA2OQS9IjHZc/9lpxYVkklvm1SLr7zMPOCsdNnUdrR9HXlsQ61kAe2NEWYRI3OXO1RJ4wK37A/omWbUgi5RhnH22Vl3qO/QYw2cuHxK1TEzgqfGqM=', 1, 1, '2024-12-17 07:47:11', '2024-12-17 07:47:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

CREATE TABLE `formas_pagamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `formas_pagamentos`
--

INSERT INTO `formas_pagamentos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Dinheiro', 'Alice in a.', 1, NULL, NULL),
(2, 1, '0002', 'Transferência', 'Alice panted.', 1, NULL, NULL),
(3, 2, '0001', 'Dinheiro', 'Alice; \'I.', 1, NULL, NULL),
(4, 2, '0002', 'Transferência', 'No, no! You\'re.', 1, NULL, NULL),
(5, 3, '0001', 'Dinheiro', 'The players all.', 1, NULL, NULL),
(6, 3, '0002', 'Transferência', 'Alice. \'And.', 1, NULL, NULL),
(7, 4, '0001', 'Dinheiro', 'Queen said.', 1, NULL, NULL),
(8, 4, '0002', 'Transferência', 'Alice kept her.', 1, NULL, NULL),
(9, 5, '0001', 'Dinheiro', 'It\'s the.', 1, NULL, NULL),
(10, 5, '0002', 'Transferência', 'She was walking.', 1, NULL, NULL),
(11, 6, '0001', 'Dinheiro', 'The Queen had.', 1, NULL, NULL),
(12, 6, '0002', 'Transferência', 'However, on the.', 1, NULL, NULL),
(13, 7, '0001', 'Dinheiro', 'Alice. It looked.', 1, NULL, NULL),
(14, 7, '0002', 'Transferência', 'Let me see: I\'ll.', 1, NULL, NULL),
(15, 8, '0001', 'Dinheiro', 'But said.', 1, NULL, NULL),
(16, 8, '0002', 'Transferência', 'I to do?\' said.', 1, NULL, NULL),
(17, 9, '0001', 'Dinheiro', 'France-- Then.', 1, NULL, NULL),
(18, 9, '0002', 'Transferência', 'Alice kept her.', 1, NULL, NULL),
(19, 10, '0001', 'Dinheiro', 'THIS!\' (Sounds of.', 1, NULL, NULL),
(20, 10, '0002', 'Transferência', 'The long grass.', 1, NULL, NULL),
(21, 11, '0001', 'Dinheiro', 'I had not gone.', 1, NULL, NULL),
(22, 11, '0002', 'Transferência', 'They all.', 1, NULL, NULL),
(23, 12, '0001', 'Dinheiro', 'Caterpillar.', 1, NULL, NULL),
(24, 12, '0002', 'Transferência', 'They were.', 1, NULL, NULL),
(25, 13, '0001', 'Dinheiro', 'Alice didn\'t think.', 1, NULL, NULL),
(26, 13, '0002', 'Transferência', 'Mock Turtle.', 1, NULL, NULL),
(27, 14, '0001', 'Dinheiro', 'I hadn\'t.', 1, NULL, NULL),
(28, 14, '0002', 'Transferência', 'Alice could.', 1, NULL, NULL),
(29, 15, '0001', 'Dinheiro', 'Cheshire Cat,\'.', 1, NULL, NULL),
(30, 15, '0002', 'Transferência', 'Don\'t let me help.', 1, NULL, NULL),
(31, 16, '0001', 'Dinheiro', 'Mouse, do.', 1, NULL, NULL),
(32, 16, '0002', 'Transferência', 'Mouse in the.', 1, NULL, NULL),
(33, 17, '0001', 'Dinheiro', 'Yet you turned.', 1, NULL, NULL),
(34, 17, '0002', 'Transferência', 'Dormouse.', 1, NULL, NULL),
(35, 18, '0001', 'Dinheiro', 'Gryphon. \'It.', 1, NULL, NULL),
(36, 18, '0002', 'Transferência', 'I know?\'.', 1, NULL, NULL),
(37, 19, '0001', 'Dinheiro', 'THIS size: why.', 1, NULL, NULL),
(38, 19, '0002', 'Transferncia', 'I needn\'t be.', 1, NULL, NULL),
(39, 20, '0001', 'Dinheiro', 'COULD! I\'m sure I.', 1, NULL, NULL),
(40, 20, '0002', 'Transferncia', 'Pray how did you.', 1, NULL, NULL),
(41, 21, '0001', 'Dinheiro', 'Where did.', 1, NULL, NULL),
(42, 21, '0002', 'Transferncia', 'And with.', 1, NULL, NULL),
(43, 22, '0001', 'Dinheiro', 'Mock Turtle.', 1, NULL, NULL),
(44, 22, '0002', 'Transferncia', 'I shall have.', 1, NULL, NULL),
(45, 23, '0001', 'Dinheiro', 'It\'s high time to.', 1, NULL, NULL),
(46, 23, '0002', 'Transferncia', 'Waiting in a.', 1, NULL, NULL),
(47, 24, '0001', 'Dinheiro', 'May it won\'t.', 1, NULL, NULL),
(48, 24, '0002', 'Transferncia', 'Mock Turtle would.', 1, NULL, NULL),
(49, 25, '0001', 'Dinheiro', 'Queen had.', 1, NULL, NULL),
(50, 25, '0002', 'Transferncia', 'Duchess\'s cook.', 1, NULL, NULL),
(51, 26, '0001', 'Dinheiro', 'Sing her.', 1, NULL, NULL),
(52, 26, '0002', 'Transferncia', 'At last the.', 1, NULL, NULL),
(53, 27, '0001', 'Dinheiro', 'I\'ve got to.', 1, NULL, NULL),
(54, 27, '0002', 'Transferncia', 'And how odd.', 1, NULL, NULL),
(55, 28, '0001', 'Dinheiro', 'Queen was to eat.', 1, NULL, NULL),
(56, 28, '0002', 'Transferncia', 'I am to see.', 1, NULL, NULL),
(57, 29, '0001', 'Dinheiro', 'As there.', 1, NULL, NULL),
(58, 29, '0002', 'Transferncia', 'Duchess: \'and.', 1, NULL, NULL),
(59, 30, '0001', 'Dinheiro', 'She pitied him.', 1, NULL, NULL),
(60, 30, '0002', 'Transferncia', 'Conqueror, whose.', 1, NULL, NULL),
(61, 31, '0001', 'Dinheiro', 'Bill! the.', 1, NULL, NULL),
(62, 31, '0002', 'Transferncia', 'Oh, how I wish.', 1, NULL, NULL),
(63, 32, '0001', 'Dinheiro', 'Alice as.', 1, NULL, NULL),
(64, 32, '0002', 'Transferência', 'The Rabbit.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedors`
--

CREATE TABLE `fornecedors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED DEFAULT NULL,
  `id_contacto` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fornecedors`
--

INSERT INTO `fornecedors` (`id`, `empresa_id`, `codigo`, `designacao`, `contribuinte`, `zona`, `identificacao`, `observacao`, `imagem`, `status`, `is_used`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 1, 1, NULL, NULL),
(2, 2, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 0, NULL, 2, 2, NULL, '2024-08-15 20:07:37'),
(3, 3, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 4, 4, NULL, NULL),
(4, 4, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 5, 5, NULL, NULL),
(5, 5, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 6, 6, NULL, NULL),
(6, 6, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 8, 8, NULL, NULL),
(7, 7, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 9, 9, NULL, NULL),
(8, 8, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 11, 11, NULL, NULL),
(9, 9, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 12, 12, NULL, NULL),
(10, 10, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 13, 13, NULL, NULL),
(11, 11, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 17, 17, NULL, NULL),
(12, 12, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 18, 18, NULL, NULL),
(13, 13, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 19, 19, NULL, NULL),
(14, 14, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 20, 20, NULL, NULL),
(15, 15, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 22, 22, NULL, NULL),
(16, 16, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 23, 23, NULL, NULL),
(17, 17, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 24, 24, NULL, NULL),
(18, 18, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 25, 25, NULL, NULL),
(19, 19, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 27, 27, NULL, NULL),
(20, 20, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 33, 33, NULL, NULL),
(21, 21, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 36, 36, NULL, NULL),
(22, 22, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 37, 37, NULL, NULL),
(23, 23, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 38, 38, NULL, NULL),
(24, 24, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 41, 41, NULL, NULL),
(25, 25, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 45, 45, NULL, NULL),
(26, 26, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 46, 46, NULL, NULL),
(27, 27, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 55, 55, NULL, NULL),
(28, 28, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 56, 56, NULL, NULL),
(29, 29, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 69, 69, NULL, NULL),
(30, 30, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 70, 70, NULL, NULL),
(31, 31, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 78, 78, NULL, NULL),
(32, 32, '2024-0001', 'Diverso', '999999999', NULL, NULL, NULL, 'null.png', 1, NULL, 82, 82, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestors`
--

CREATE TABLE `gestors` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `gestors`
--

INSERT INTO `gestors` (`id`, `link`) VALUES
(1, 'https://gestor.atomo.ao/api');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_remessas`
--

CREATE TABLE `guia_remessas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_transportes`
--

CREATE TABLE `guia_transportes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `impostos`
--

CREATE TABLE `impostos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo` varchar(191) DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `taxa` double DEFAULT NULL,
  `motivo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `impostos`
--

INSERT INTO `impostos` (`id`, `empresa_id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(2, 1, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(3, 1, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço não sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(4, 1, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(5, 1, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(6, 1, 'ISENTO', 'M12', 'M12 - Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(7, 1, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(8, 1, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(9, 1, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(10, 1, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(11, 1, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(12, 1, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(13, 1, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(14, 1, 'ISENTO', 'M20', 'M20 - Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(15, 1, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(16, 1, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(17, 1, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(18, 1, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(19, 1, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(20, 1, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(21, 1, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(22, 1, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(23, 1, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(24, 1, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA', 1, NULL, NULL),
(25, 1, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 1, NULL, NULL),
(26, 1, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(27, 1, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(28, 1, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(29, 1, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea d) do artigo 15.º do CIVA', 1, NULL, NULL),
(30, 1, 'ISENTO', 'M34', 'M34 - Isento nos termos da alínea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(31, 1, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(32, 1, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(33, 1, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(34, 1, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(35, 1, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(36, 1, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(37, 1, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.º', 1, NULL, NULL),
(38, 1, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(39, 1, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(40, 2, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(41, 2, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(42, 2, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(43, 2, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(44, 2, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(45, 2, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(46, 2, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(47, 2, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(48, 2, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(49, 2, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(50, 2, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(51, 2, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(52, 2, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(53, 2, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(54, 2, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(55, 2, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(56, 2, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(57, 2, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(58, 2, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(59, 2, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(60, 2, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(61, 2, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(62, 2, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(63, 2, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(64, 2, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(65, 2, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(66, 2, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(67, 2, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(68, 2, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(69, 2, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(70, 2, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(71, 2, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(72, 2, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(73, 2, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(74, 2, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(75, 2, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(76, 2, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(77, 2, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(78, 2, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(79, 3, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(80, 3, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(81, 3, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(82, 3, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(83, 3, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(84, 3, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(85, 3, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(86, 3, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(87, 3, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(88, 3, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(89, 3, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(90, 3, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(91, 3, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(92, 3, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(93, 3, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(94, 3, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(95, 3, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(96, 3, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(97, 3, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(98, 3, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(99, 3, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(100, 3, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(101, 3, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(102, 3, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(103, 3, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(104, 3, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(105, 3, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(106, 3, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(107, 3, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(108, 3, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(109, 3, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(110, 3, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(111, 3, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(112, 3, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(113, 3, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(114, 3, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(115, 3, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(116, 3, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(117, 3, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(118, 4, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(119, 4, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(120, 4, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(121, 4, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(122, 4, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(123, 4, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(124, 4, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(125, 4, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(126, 4, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(127, 4, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(128, 4, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(129, 4, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(130, 4, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(131, 4, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(132, 4, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(133, 4, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(134, 4, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(135, 4, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(136, 4, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(137, 4, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(138, 4, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(139, 4, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(140, 4, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(141, 4, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(142, 4, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(143, 4, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(144, 4, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(145, 4, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(146, 4, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(147, 4, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(148, 4, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(149, 4, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(150, 4, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(151, 4, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(152, 4, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(153, 4, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(154, 4, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(155, 4, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(156, 4, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(157, 5, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(158, 5, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(159, 5, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(160, 5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(161, 5, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(162, 5, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(163, 5, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(164, 5, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(165, 5, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(166, 5, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(167, 5, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(168, 5, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(169, 5, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(170, 5, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(171, 5, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(172, 5, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(173, 5, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(174, 5, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(175, 5, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(176, 5, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(177, 5, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(178, 5, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(179, 5, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(180, 5, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(181, 5, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(182, 5, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(183, 5, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(184, 5, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(185, 5, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(186, 5, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(187, 5, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(188, 5, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(189, 5, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(190, 5, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(191, 5, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(192, 5, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(193, 5, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(194, 5, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(195, 5, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(196, 6, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(197, 6, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(198, 6, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(199, 6, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(200, 6, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(201, 6, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(202, 6, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(203, 6, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(204, 6, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(205, 6, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(206, 6, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(207, 6, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(208, 6, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(209, 6, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(210, 6, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(211, 6, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(212, 6, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(213, 6, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(214, 6, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(215, 6, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(216, 6, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(217, 6, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(218, 6, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(219, 6, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(220, 6, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(221, 6, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(222, 6, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(223, 6, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(224, 6, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(225, 6, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(226, 6, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(227, 6, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(228, 6, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(229, 6, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(230, 6, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(231, 6, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(232, 6, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(233, 6, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(234, 6, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(235, 7, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(236, 7, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(237, 7, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(238, 7, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(239, 7, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(240, 7, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(241, 7, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(242, 7, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(243, 7, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(244, 7, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(245, 7, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(246, 7, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(247, 7, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(248, 7, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(249, 7, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(250, 7, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(251, 7, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(252, 7, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(253, 7, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(254, 7, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(255, 7, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(256, 7, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(257, 7, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(258, 7, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(259, 7, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(260, 7, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(261, 7, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(262, 7, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(263, 7, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(264, 7, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(265, 7, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(266, 7, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(267, 7, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(268, 7, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(269, 7, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(270, 7, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(271, 7, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(272, 7, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(273, 7, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(274, 8, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(275, 8, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(276, 8, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(277, 8, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(278, 8, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(279, 8, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(280, 8, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(281, 8, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(282, 8, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(283, 8, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(284, 8, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(285, 8, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(286, 8, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(287, 8, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(288, 8, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(289, 8, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(290, 8, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(291, 8, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(292, 8, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(293, 8, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(294, 8, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(295, 8, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(296, 8, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(297, 8, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(298, 8, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(299, 8, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(300, 8, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(301, 8, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(302, 8, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(303, 8, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(304, 8, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(305, 8, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(306, 8, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(307, 8, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(308, 8, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL);
INSERT INTO `impostos` (`id`, `empresa_id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(309, 8, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(310, 8, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(311, 8, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(312, 8, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(313, 9, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(314, 9, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(315, 9, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(316, 9, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(317, 9, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(318, 9, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(319, 9, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(320, 9, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(321, 9, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(322, 9, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(323, 9, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(324, 9, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(325, 9, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(326, 9, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(327, 9, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(328, 9, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(329, 9, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(330, 9, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(331, 9, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(332, 9, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(333, 9, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(334, 9, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(335, 9, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(336, 9, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(337, 9, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(338, 9, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(339, 9, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(340, 9, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(341, 9, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(342, 9, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(343, 9, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(344, 9, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(345, 9, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(346, 9, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(347, 9, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(348, 9, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(349, 9, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(350, 9, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(351, 9, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(352, 10, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(353, 10, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(354, 10, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(355, 10, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(356, 10, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(357, 10, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(358, 10, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(359, 10, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(360, 10, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(361, 10, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(362, 10, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(363, 10, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(364, 10, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(365, 10, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(366, 10, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(367, 10, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(368, 10, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(369, 10, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(370, 10, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(371, 10, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(372, 10, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(373, 10, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(374, 10, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(375, 10, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(376, 10, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(377, 10, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(378, 10, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(379, 10, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(380, 10, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(381, 10, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(382, 10, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(383, 10, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(384, 10, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(385, 10, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(386, 10, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(387, 10, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(388, 10, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(389, 10, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(390, 10, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(391, 11, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(392, 11, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(393, 11, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(394, 11, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(395, 11, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(396, 11, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(397, 11, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(398, 11, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(399, 11, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(400, 11, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(401, 11, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(402, 11, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(403, 11, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(404, 11, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(405, 11, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(406, 11, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(407, 11, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(408, 11, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(409, 11, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(410, 11, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(411, 11, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(412, 11, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(413, 11, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(414, 11, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(415, 11, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(416, 11, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(417, 11, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(418, 11, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(419, 11, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(420, 11, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(421, 11, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(422, 11, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(423, 11, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(424, 11, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(425, 11, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(426, 11, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(427, 11, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(428, 11, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(429, 11, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(430, 12, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(431, 12, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(432, 12, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(433, 12, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(434, 12, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(435, 12, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(436, 12, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(437, 12, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(438, 12, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(439, 12, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(440, 12, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(441, 12, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(442, 12, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(443, 12, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(444, 12, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(445, 12, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(446, 12, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(447, 12, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(448, 12, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(449, 12, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(450, 12, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(451, 12, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(452, 12, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(453, 12, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(454, 12, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(455, 12, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(456, 12, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(457, 12, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(458, 12, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(459, 12, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(460, 12, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(461, 12, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(462, 12, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(463, 12, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(464, 12, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(465, 12, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(466, 12, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(467, 12, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(468, 12, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(469, 13, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(470, 13, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(471, 13, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(472, 13, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(473, 13, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(474, 13, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(475, 13, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(476, 13, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(477, 13, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(478, 13, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(479, 13, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(480, 13, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(481, 13, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(482, 13, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(483, 13, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(484, 13, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(485, 13, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(486, 13, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(487, 13, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(488, 13, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(489, 13, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(490, 13, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(491, 13, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(492, 13, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(493, 13, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(494, 13, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(495, 13, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(496, 13, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(497, 13, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(498, 13, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(499, 13, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(500, 13, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(501, 13, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(502, 13, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(503, 13, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(504, 13, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(505, 13, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(506, 13, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(507, 13, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(508, 14, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(509, 14, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(510, 14, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(511, 14, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(512, 14, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(513, 14, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(514, 14, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(515, 14, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(516, 14, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(517, 14, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(518, 14, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(519, 14, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(520, 14, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(521, 14, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(522, 14, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(523, 14, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(524, 14, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(525, 14, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(526, 14, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(527, 14, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(528, 14, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(529, 14, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(530, 14, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(531, 14, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(532, 14, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(533, 14, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(534, 14, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(535, 14, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(536, 14, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(537, 14, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(538, 14, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(539, 14, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(540, 14, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(541, 14, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(542, 14, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(543, 14, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(544, 14, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(545, 14, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(546, 14, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(547, 15, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(548, 15, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(549, 15, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(550, 15, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(551, 15, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(552, 15, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(553, 15, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(554, 15, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(555, 15, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(556, 15, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(557, 15, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(558, 15, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(559, 15, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(560, 15, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(561, 15, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(562, 15, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(563, 15, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(564, 15, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(565, 15, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(566, 15, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(567, 15, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(568, 15, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(569, 15, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(570, 15, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(571, 15, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(572, 15, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(573, 15, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(574, 15, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(575, 15, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(576, 15, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(577, 15, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(578, 15, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(579, 15, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(580, 15, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(581, 15, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(582, 15, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(583, 15, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(584, 15, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(585, 15, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(586, 16, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(587, 16, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(588, 16, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(589, 16, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(590, 16, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(591, 16, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(592, 16, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(593, 16, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(594, 16, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(595, 16, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(596, 16, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(597, 16, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(598, 16, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(599, 16, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(600, 16, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(601, 16, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(602, 16, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(603, 16, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(604, 16, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(605, 16, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(606, 16, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(607, 16, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(608, 16, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(609, 16, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(610, 16, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(611, 16, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(612, 16, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(613, 16, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(614, 16, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL);
INSERT INTO `impostos` (`id`, `empresa_id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(615, 16, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(616, 16, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(617, 16, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(618, 16, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(619, 16, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(620, 16, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(621, 16, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(622, 16, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(623, 16, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(624, 16, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(625, 17, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(626, 17, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(627, 17, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(628, 17, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(629, 17, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(630, 17, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(631, 17, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(632, 17, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(633, 17, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(634, 17, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(635, 17, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(636, 17, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(637, 17, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(638, 17, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(639, 17, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(640, 17, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(641, 17, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(642, 17, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(643, 17, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(644, 17, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(645, 17, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(646, 17, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(647, 17, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(648, 17, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(649, 17, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(650, 17, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(651, 17, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(652, 17, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(653, 17, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(654, 17, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(655, 17, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(656, 17, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(657, 17, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(658, 17, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(659, 17, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(660, 17, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(661, 17, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(662, 17, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(663, 17, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(664, 18, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(665, 18, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(666, 18, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(667, 18, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(668, 18, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(669, 18, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(670, 18, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(671, 18, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(672, 18, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(673, 18, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(674, 18, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(675, 18, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(676, 18, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(677, 18, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(678, 18, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(679, 18, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(680, 18, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(681, 18, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(682, 18, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(683, 18, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(684, 18, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(685, 18, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(686, 18, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(687, 18, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(688, 18, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(689, 18, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(690, 18, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(691, 18, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(692, 18, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(693, 18, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(694, 18, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(695, 18, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(696, 18, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(697, 18, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(698, 18, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(699, 18, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(700, 18, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(701, 18, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(702, 18, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(703, 19, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(704, 19, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(705, 19, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(706, 19, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(707, 19, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(708, 19, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(709, 19, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(710, 19, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(711, 19, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(712, 19, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(713, 19, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(714, 19, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(715, 19, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(716, 19, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(717, 19, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(718, 19, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(719, 19, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(720, 19, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(721, 19, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(722, 19, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(723, 19, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(724, 19, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(725, 19, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(726, 19, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(727, 19, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(728, 19, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(729, 19, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(730, 19, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(731, 19, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(732, 19, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(733, 19, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(734, 19, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(735, 19, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(736, 19, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(737, 19, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(738, 19, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(739, 19, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(740, 19, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(741, 19, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(742, 20, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(743, 20, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(744, 20, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(745, 20, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(746, 20, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(747, 20, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(748, 20, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(749, 20, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(750, 20, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(751, 20, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(752, 20, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(753, 20, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(754, 20, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(755, 20, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(756, 20, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(757, 20, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(758, 20, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(759, 20, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(760, 20, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(761, 20, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(762, 20, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(763, 20, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(764, 20, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(765, 20, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(766, 20, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(767, 20, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(768, 20, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(769, 20, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(770, 20, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(771, 20, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(772, 20, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(773, 20, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(774, 20, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(775, 20, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(776, 20, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(777, 20, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(778, 20, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(779, 20, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(780, 20, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(781, 21, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(782, 21, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(783, 21, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(784, 21, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(785, 21, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(786, 21, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(787, 21, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(788, 21, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(789, 21, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(790, 21, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(791, 21, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(792, 21, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(793, 21, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(794, 21, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(795, 21, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(796, 21, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(797, 21, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(798, 21, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(799, 21, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(800, 21, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(801, 21, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(802, 21, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(803, 21, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(804, 21, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(805, 21, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(806, 21, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(807, 21, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(808, 21, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(809, 21, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(810, 21, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(811, 21, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(812, 21, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(813, 21, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(814, 21, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(815, 21, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(816, 21, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(817, 21, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(818, 21, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(819, 21, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(820, 22, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(821, 22, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(822, 22, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(823, 22, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(824, 22, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(825, 22, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(826, 22, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(827, 22, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(828, 22, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(829, 22, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(830, 22, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(831, 22, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(832, 22, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(833, 22, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(834, 22, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(835, 22, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(836, 22, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(837, 22, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(838, 22, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(839, 22, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(840, 22, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(841, 22, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(842, 22, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(843, 22, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(844, 22, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(845, 22, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(846, 22, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(847, 22, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(848, 22, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(849, 22, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(850, 22, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(851, 22, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(852, 22, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(853, 22, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(854, 22, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(855, 22, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(856, 22, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(857, 22, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(858, 22, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(859, 23, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(860, 23, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(861, 23, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(862, 23, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(863, 23, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(864, 23, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(865, 23, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(866, 23, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(867, 23, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(868, 23, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(869, 23, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(870, 23, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(871, 23, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(872, 23, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(873, 23, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(874, 23, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(875, 23, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(876, 23, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(877, 23, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(878, 23, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(879, 23, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(880, 23, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(881, 23, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(882, 23, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(883, 23, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(884, 23, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(885, 23, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(886, 23, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(887, 23, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(888, 23, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(889, 23, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(890, 23, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(891, 23, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(892, 23, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(893, 23, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(894, 23, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(895, 23, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(896, 23, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(897, 23, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(898, 24, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(899, 24, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(900, 24, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(901, 24, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(902, 24, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(903, 24, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(904, 24, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(905, 24, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(906, 24, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(907, 24, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(908, 24, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(909, 24, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(910, 24, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(911, 24, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(912, 24, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(913, 24, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(914, 24, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(915, 24, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(916, 24, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(917, 24, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(918, 24, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(919, 24, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(920, 24, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(921, 24, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL);
INSERT INTO `impostos` (`id`, `empresa_id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(922, 24, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(923, 24, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(924, 24, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(925, 24, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(926, 24, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(927, 24, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(928, 24, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(929, 24, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(930, 24, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(931, 24, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(932, 24, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(933, 24, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(934, 24, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(935, 24, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(936, 24, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(937, 25, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(938, 25, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(939, 25, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(940, 25, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(941, 25, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(942, 25, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(943, 25, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(944, 25, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(945, 25, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(946, 25, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(947, 25, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(948, 25, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(949, 25, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(950, 25, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(951, 25, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(952, 25, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(953, 25, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(954, 25, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(955, 25, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(956, 25, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(957, 25, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(958, 25, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(959, 25, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(960, 25, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(961, 25, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(962, 25, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(963, 25, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(964, 25, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(965, 25, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(966, 25, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(967, 25, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(968, 25, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(969, 25, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(970, 25, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(971, 25, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(972, 25, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(973, 25, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(974, 25, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(975, 25, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(976, 26, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(977, 26, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(978, 26, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(979, 26, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(980, 26, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(981, 26, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(982, 26, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(983, 26, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(984, 26, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(985, 26, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(986, 26, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(987, 26, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(988, 26, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(989, 26, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(990, 26, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(991, 26, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(992, 26, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(993, 26, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(994, 26, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(995, 26, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(996, 26, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(997, 26, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(998, 26, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(999, 26, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1000, 26, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1001, 26, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1002, 26, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1003, 26, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1004, 26, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1005, 26, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1006, 26, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1007, 26, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1008, 26, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1009, 26, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1010, 26, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1011, 26, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1012, 26, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1013, 26, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1014, 26, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1015, 27, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1016, 27, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1017, 27, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1018, 27, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1019, 27, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1020, 27, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1021, 27, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1022, 27, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1023, 27, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1024, 27, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1025, 27, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1026, 27, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1027, 27, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1028, 27, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1029, 27, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1030, 27, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1031, 27, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1032, 27, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1033, 27, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1034, 27, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1035, 27, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1036, 27, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1037, 27, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1038, 27, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1039, 27, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1040, 27, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1041, 27, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1042, 27, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1043, 27, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1044, 27, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1045, 27, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1046, 27, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1047, 27, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1048, 27, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1049, 27, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1050, 27, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1051, 27, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1052, 27, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1053, 27, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1054, 28, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1055, 28, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1056, 28, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1057, 28, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1058, 28, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1059, 28, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1060, 28, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1061, 28, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1062, 28, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1063, 28, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1064, 28, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1065, 28, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1066, 28, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1067, 28, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1068, 28, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1069, 28, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1070, 28, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1071, 28, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1072, 28, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1073, 28, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1074, 28, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1075, 28, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1076, 28, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1077, 28, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1078, 28, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1079, 28, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1080, 28, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1081, 28, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1082, 28, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1083, 28, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1084, 28, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1085, 28, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1086, 28, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1087, 28, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1088, 28, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1089, 28, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1090, 28, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1091, 28, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1092, 28, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1093, 29, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1094, 29, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1095, 29, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1096, 29, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1097, 29, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1098, 29, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1099, 29, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1100, 29, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1101, 29, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1102, 29, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1103, 29, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1104, 29, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1105, 29, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1106, 29, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1107, 29, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1108, 29, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1109, 29, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1110, 29, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1111, 29, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1112, 29, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1113, 29, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1114, 29, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1115, 29, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1116, 29, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1117, 29, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1118, 29, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1119, 29, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1120, 29, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1121, 29, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1122, 29, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1123, 29, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1124, 29, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1125, 29, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1126, 29, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1127, 29, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1128, 29, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1129, 29, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1130, 29, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1131, 29, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1132, 30, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1133, 30, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1134, 30, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1135, 30, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1136, 30, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1137, 30, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1138, 30, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1139, 30, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1140, 30, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1141, 30, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1142, 30, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1143, 30, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1144, 30, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1145, 30, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1146, 30, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1147, 30, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1148, 30, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1149, 30, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1150, 30, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1151, 30, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1152, 30, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1153, 30, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1154, 30, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1155, 30, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1156, 30, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1157, 30, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1158, 30, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1159, 30, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1160, 30, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1161, 30, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1162, 30, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1163, 30, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1164, 30, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1165, 30, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1166, 30, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1167, 30, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1168, 30, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1169, 30, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1170, 30, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1171, 31, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1172, 31, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1173, 31, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1174, 31, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1175, 31, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1176, 31, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1177, 31, 'ISENTO', 'M13', 'M13 - Isento nos termos da alnea d) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1178, 31, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1179, 31, 'ISENTO', 'M15', 'M15 - Isento nos termos da alnea f) do nº1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1180, 31, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1181, 31, 'ISENTO', 'M17', 'M17 - Isento nos termos da alnea h) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1182, 31, 'ISENTO', 'M18', 'M18 - Isento nos termos da alnea i) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1183, 31, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1184, 31, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12. do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12. do CIVA', 1, NULL, NULL),
(1185, 31, 'ISENTO', 'M21', 'M21 - Isento nos termos da alnea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1186, 31, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1187, 31, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea n) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1188, 31, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1189, 31, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1190, 31, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14. do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1191, 31, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea c) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1192, 31, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea d) do n1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1193, 31, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1194, 31, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1195, 31, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alnea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1196, 31, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1197, 31, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15. do CIVA', 1, NULL, NULL),
(1198, 31, 'ISENTO', 'M32', 'M32 - Isento nos termos da alnea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15. do CIVA', 1, NULL, NULL),
(1199, 31, 'ISENTO', 'M33', 'M33 - Isento nos termos da alnea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1200, 31, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1201, 31, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alnea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1202, 31, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15. do CIVA', 1, NULL, NULL),
(1203, 31, 'ISENTO', 'M37', 'M37 - Isento nos termos da alnea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1204, 31, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1205, 31, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do n1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.', 1, NULL, NULL),
(1206, 31, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.', 1, NULL, NULL),
(1207, 31, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do n1 do artigo 16.', 1, NULL, NULL),
(1208, 31, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.', 1, NULL, NULL),
(1209, 31, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL),
(1210, 32, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(1211, 32, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(1212, 32, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço no sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(1213, 32, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(1214, 32, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1215, 32, 'ISENTO', 'M12', 'M12 - Isento nos termos da alnea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1216, 32, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1217, 32, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1218, 32, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1219, 32, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alnea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1220, 32, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1221, 32, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1222, 32, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12. do CIVA', 1, NULL, NULL),
(1223, 32, 'ISENTO', 'M20', 'M20 - Isento nos termos da alnea k) do n1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1224, 32, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1225, 32, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1226, 32, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1227, 32, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do n1 do artigo 12.º do CIVA', 1, NULL, NULL),
(1228, 32, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n1 do artigo 14.º do CIVA', 1, NULL, NULL);
INSERT INTO `impostos` (`id`, `empresa_id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(1229, 32, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1230, 32, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do n1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1231, 32, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1232, 32, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(1233, 32, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do n2 do artigo 14. do CIVA', 0, 'Isento nos termos da alnea a) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1234, 32, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do n2 do artigo 14.º do CIVA', 1, NULL, NULL),
(1235, 32, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(1236, 32, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(1237, 32, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(1238, 32, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alnea d) do artigo 15. do CIVA', 1, NULL, NULL),
(1239, 32, 'ISENTO', 'M34', 'M34 - Isento nos termos da alnea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(1240, 32, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15. do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(1241, 32, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(1242, 32, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(1243, 32, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(1244, 32, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea a) do n1 do artigo 16.º', 1, NULL, NULL),
(1245, 32, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(1246, 32, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.', 1, NULL, NULL),
(1247, 32, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do n1 do artigo 16.º', 1, NULL, NULL),
(1248, 32, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `factura_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `items`
--

INSERT INTO `items` (`id`, `empresa_id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tinteiro HP 650', 11094.00, 1, 2.00, 11094.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 1, 41, 3, '2024-08-15 10:39:20', '2024-08-15 10:39:20'),
(2, 2, 'Tinteiro hp 932 colour', 14900.00, 1, 2.00, 14900.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 2, 41, 3, '2024-08-15 10:39:20', '2024-08-15 10:39:20'),
(3, 5, 'Temaki', 6500.00, 1, 0.00, 6500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 2, 7, 157, 9, '2024-08-23 12:38:44', '2024-08-23 12:38:44'),
(4, 7, 'Mariscos', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 3, 9, 235, 13, '2024-08-26 09:45:10', '2024-08-26 09:45:10'),
(5, 1, 'Software de faturação-Atomo', 10000.00, 2, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 4, 11, 1, 1, '2024-08-29 09:37:28', '2024-08-29 09:37:28'),
(6, 19, 'Cartão de visita', 150.00, 1, 0.00, 150.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 5, 67, 706, 37, '2024-10-03 07:45:07', '2024-10-03 07:45:07'),
(7, 23, 'bolacha', 1000.00, 10, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 85, 859, 45, '2024-10-11 11:41:50', '2024-10-11 11:41:50'),
(8, 24, 'Expositor no Cero 24', 500000.00, 1, 0.00, 500000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 7, 92, 901, 48, '2024-10-16 12:26:42', '2024-10-16 12:26:42'),
(9, 26, 'Janelas UPVC', 140000.00, 7, 15.00, 980000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 8, 98, 977, 51, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(10, 26, 'Janelas UPVC', 140000.00, 7, 15.00, 980000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 10, 98, 977, 51, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(11, 26, 'Janelas UPVC', 140000.00, 7, 15.00, 980000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 9, 98, 977, 51, '2024-10-23 09:17:06', '2024-10-23 09:17:06'),
(12, 26, 'Janelas UPVC', 140000.00, 7, 15.00, 980000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 12, 98, 977, 51, '2024-10-23 09:17:07', '2024-10-23 09:17:07'),
(13, 26, 'Janelas UPVC', 140000.00, 7, 15.00, 980000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 11, 98, 977, 51, '2024-10-23 09:17:07', '2024-10-23 09:17:07'),
(14, 26, 'Janelas UPVC', 431200.00, 1, 0.00, 431200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 13, 101, 977, 51, '2024-10-23 10:01:23', '2024-10-23 10:01:23'),
(15, 26, 'Janelas UPVC', 352800.00, 1, 0.00, 352800.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 13, 100, 977, 51, '2024-10-23 10:01:23', '2024-10-23 10:01:23'),
(16, 26, 'Janelas UPVC', 274400.00, 3, 2.14, 823200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 13, 98, 977, 51, '2024-10-23 10:01:23', '2024-10-23 10:01:23'),
(17, 26, 'Janelas UPVC', 140000.00, 2, 2.14, 280000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 14, 102, 977, 51, '2024-10-23 10:26:34', '2024-10-23 10:26:34'),
(18, 26, 'Janelas UPVC', 431200.00, 1, 2.14, 431200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 14, 101, 977, 51, '2024-10-23 10:26:34', '2024-10-23 10:26:34'),
(19, 26, 'Janelas UPVC', 352800.00, 1, 2.14, 352800.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 14, 100, 977, 51, '2024-10-23 10:26:34', '2024-10-23 10:26:34'),
(20, 26, 'Janelas UPVC', 274400.00, 3, 2.14, 823200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 14, 98, 977, 51, '2024-10-23 10:26:34', '2024-10-23 10:26:34'),
(21, 26, 'Janelas UPVC', 140000.00, 2, 2.14, 280000.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 15, 102, 977, 51, '2024-10-23 10:26:36', '2024-10-23 10:26:36'),
(22, 26, 'Janelas UPVC', 431200.00, 1, 2.14, 431200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 15, 101, 977, 51, '2024-10-23 10:26:36', '2024-10-23 10:26:36'),
(23, 26, 'Janelas UPVC', 352800.00, 1, 2.14, 352800.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 15, 100, 977, 51, '2024-10-23 10:26:36', '2024-10-23 10:26:36'),
(24, 26, 'Janelas UPVC', 274400.00, 3, 2.14, 823200.00, 'Sem rentenão na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 15, 98, 977, 51, '2024-10-23 10:26:36', '2024-10-23 10:26:36'),
(25, 28, 'A aplicação das estruturas (serralheiro)', 14000.00, 1, 0.00, 14000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 125, 1057, 55, '2024-11-01 13:30:00', '2024-11-01 13:30:00'),
(26, 28, 'criação das estruturas', 6000.00, 1, 0.00, 6000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 124, 1057, 55, '2024-11-01 13:30:00', '2024-11-01 13:30:00'),
(27, 28, 'Tubo de 40/60', 8000.00, 1, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 123, 1057, 55, '2024-11-01 13:30:00', '2024-11-01 13:30:00'),
(28, 28, 'Adição de cabo', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 122, 1057, 55, '2024-11-01 13:30:00', '2024-11-01 13:30:00'),
(29, 28, 'Acréscimo para a fonte de alimentação', 15000.00, 1, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 121, 1057, 55, '2024-11-01 13:30:01', '2024-11-01 13:30:01'),
(30, 28, 'Acréscimo para o DVR de 16 câmeras', 68000.00, 1, 0.00, 68000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 120, 1057, 55, '2024-11-01 13:30:01', '2024-11-01 13:30:01'),
(31, 28, 'vídeo balum', 3000.00, 4, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 119, 1057, 55, '2024-11-01 13:30:01', '2024-11-01 13:30:01'),
(32, 28, 'câmeras', 25000.00, 4, 0.00, 100000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 118, 1057, 55, '2024-11-01 13:30:01', '2024-11-01 13:30:01'),
(33, 28, 'assistência técnica', 150000.00, 1, 0.00, 150000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 137, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(34, 28, 'vara de aterramento', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 136, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(35, 28, 'Estrobo light', 15000.00, 1, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 135, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(36, 28, 'sirene', 12000.00, 1, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 134, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(37, 28, 'Central de choque', 170000.00, 1, 0.00, 170000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 133, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(38, 28, 'placas de advertência', 1000.00, 20, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 132, 1057, 55, '2024-11-01 15:37:14', '2024-11-01 15:37:14'),
(39, 28, '20m de cabo HT', 22000.00, 1, 0.00, 22000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 131, 1057, 55, '2024-11-01 15:37:15', '2024-11-01 15:37:15'),
(40, 28, 'Ferrul', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 130, 1057, 55, '2024-11-01 15:37:15', '2024-11-01 15:37:15'),
(41, 28, 'Rolo de fio galvanizado 1.000m', 41000.00, 1, 0.00, 41000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 129, 1057, 55, '2024-11-01 15:37:15', '2024-11-01 15:37:15'),
(42, 28, 'Cornes Force', 2000.00, 10, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 128, 1057, 55, '2024-11-01 15:37:15', '2024-11-01 15:37:15'),
(43, 28, 'Astes', 3000.00, 42, 0.00, 126000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 127, 1057, 55, '2024-11-01 15:37:15', '2024-11-01 15:37:15'),
(44, 28, 'Assistência técnica', 488200.00, 1, 0.00, 488200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 185, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(45, 28, 'Fonte de alimentação com bateria', 73000.00, 1, 0.00, 73000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 184, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(46, 28, 'Caixa de ficha RJ 45', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 183, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(47, 28, 'Central de controle', 487900.00, 1, 0.00, 487900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 181, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(48, 28, 'Leitores de acesso', 58000.00, 5, 0.00, 290000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 180, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(49, 28, 'Fechadura', 56000.00, 5, 0.00, 280000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 179, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(50, 28, 'Caixa de cabo', 102000.00, 2, 0.00, 204000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 186, 1057, 55, '2024-11-07 15:05:47', '2024-11-07 15:05:47'),
(51, 30, 'suporte', 150.00, 4, 0.00, 600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 223, 1132, 59, '2024-11-26 17:08:45', '2024-11-26 17:08:45'),
(52, 30, 'rolo de fio 1,5mm', 25000.00, 3, 0.00, 75000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 221, 1132, 59, '2024-11-26 17:08:45', '2024-11-26 17:08:45'),
(53, 30, 'lâmpadas simples', 500.00, 2, 0.00, 1000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 220, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(54, 30, 'tomadas internas', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 219, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(55, 30, 'lâmpadas simples', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 218, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(56, 30, 'rolo de fio 2,5mm', 35000.00, 1, 0.00, 35000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 217, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(57, 30, 'rolo de fio 1,5mm', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 216, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(58, 30, 'lâmpada model 1', 2500.00, 2, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 215, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(59, 30, 'rolo de fio 2,5mm', 39000.00, 2, 0.00, 78000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 214, 1132, 59, '2024-11-26 17:08:46', '2024-11-26 17:08:46'),
(60, 31, 'Consultoria e Suporte', 100000.00, 1, 0.00, 100000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 311, 1174, 61, '2024-12-02 16:00:39', '2024-12-02 16:00:39'),
(61, 31, 'Suporte de Transporte', 300000.00, 1, 0.00, 300000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 312, 1174, 61, '2024-12-02 16:20:18', '2024-12-02 16:20:18'),
(62, 31, 'Consultoria e Suporte', 100000.00, 1, 0.00, 100000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 311, 1174, 61, '2024-12-02 16:30:34', '2024-12-02 16:30:34'),
(63, 31, 'Consultoria e Suporte', 100000.00, 1, 0.00, 100000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 311, 1174, 61, '2024-12-02 16:49:44', '2024-12-02 16:49:44'),
(64, 31, 'Criação de Identidade Visual', 150000.00, 1, 33.00, 150000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 310, 1174, 61, '2024-12-02 17:10:19', '2024-12-02 17:10:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_factura_recibos`
--

CREATE TABLE `item_factura_recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `factura_recibo_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `item_factura_recibos`
--

INSERT INTO `item_factura_recibos` (`id`, `empresa_id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_recibo_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tinteiro HP 650', 11094.00, 1, 0.00, 11094.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 1, 41, 3, '2024-08-15 10:45:25', '2024-08-15 10:45:25'),
(2, 2, 'Tinteiro hp 932 colour', 14900.00, 1, 0.00, 14900.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 2, 41, 3, '2024-08-15 10:45:25', '2024-08-15 10:45:25'),
(3, 1, 'Software de faturação-Atomo', 10000.00, 2, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 2, 11, 1, 1, '2024-08-28 12:31:17', '2024-08-28 12:31:17'),
(4, 1, 'Software de faturação-Atomo', 10000.00, 3, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 3, 11, 1, 1, '2024-08-28 12:49:47', '2024-08-28 12:49:47'),
(5, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 4, 16, 511, 27, '2024-09-02 10:46:10', '2024-09-02 10:46:10'),
(6, 14, 'calça', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 5, 18, 508, 27, '2024-09-02 10:56:54', '2024-09-02 10:56:54'),
(7, 14, 'pano', 2000.00, 5, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 21, 508, 27, '2024-09-02 11:56:50', '2024-09-02 11:56:50'),
(8, 14, 'calça', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 18, 508, 27, '2024-09-02 11:58:52', '2024-09-02 11:58:52'),
(9, 14, 'colchão', 40000.00, 1, 0.00, 40000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 8, 22, 508, 27, '2024-09-02 12:19:47', '2024-09-02 12:19:47'),
(10, 14, 'pasta', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 9, 23, 508, 27, '2024-09-02 13:30:11', '2024-09-02 13:30:11'),
(11, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 18, 508, 27, '2024-09-02 13:43:00', '2024-09-02 13:43:00'),
(12, 14, 'saco de tenis', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 11, 24, 508, 27, '2024-09-02 13:49:21', '2024-09-02 13:49:21'),
(13, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 12, 16, 508, 27, '2024-09-02 14:24:13', '2024-09-02 14:24:13'),
(14, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 13, 16, 508, 27, '2024-09-03 11:39:07', '2024-09-03 11:39:07'),
(15, 14, 'lençol', 20000.00, 4, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 13, 15, 508, 27, '2024-09-03 11:39:07', '2024-09-03 11:39:07'),
(16, 14, 'saco de tenis', 25000.00, 1, 0.00, 25000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 14, 25, 508, 27, '2024-09-03 12:32:00', '2024-09-03 12:32:00'),
(17, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 15, 18, 508, 27, '2024-09-03 12:52:31', '2024-09-03 12:52:31'),
(18, 14, 'pasta', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 16, 23, 508, 27, '2024-09-04 07:30:32', '2024-09-04 07:30:32'),
(19, 14, 'Pasta', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 16, 20, 508, 27, '2024-09-04 07:30:32', '2024-09-04 07:30:32'),
(20, 14, 'Tenís', 2000.00, 2, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 26, 508, 27, '2024-09-04 08:35:35', '2024-09-04 08:35:35'),
(21, 14, 'Meia', 500.00, 4, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 28, 508, 27, '2024-09-04 08:35:35', '2024-09-04 08:35:35'),
(22, 14, 'Calça', 2000.00, 2, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 27, 508, 27, '2024-09-04 08:35:35', '2024-09-04 08:35:35'),
(23, 14, 'Tenís', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 19, 508, 27, '2024-09-04 08:35:35', '2024-09-04 08:35:35'),
(24, 14, 'pasta', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 18, 29, 508, 27, '2024-09-04 08:53:35', '2024-09-04 08:53:35'),
(25, 14, 'chuteira', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 30, 508, 27, '2024-09-04 09:22:45', '2024-09-04 09:22:45'),
(26, 14, 'calça', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 20, 18, 508, 27, '2024-09-04 09:42:50', '2024-09-04 09:42:50'),
(27, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 20, 16, 508, 27, '2024-09-04 09:42:50', '2024-09-04 09:42:50'),
(28, 14, 'lençol', 20000.00, 4, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 21, 15, 508, 27, '2024-09-04 10:18:59', '2024-09-04 10:18:59'),
(29, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 21, 16, 508, 27, '2024-09-04 10:18:59', '2024-09-04 10:18:59'),
(30, 14, 'Calça', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 31, 508, 27, '2024-09-04 10:23:35', '2024-09-04 10:23:35'),
(31, 14, 'Calça', 500.00, 2, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 27, 508, 27, '2024-09-04 10:23:35', '2024-09-04 10:23:35'),
(32, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 18, 508, 27, '2024-09-04 10:23:35', '2024-09-04 10:23:35'),
(33, 14, 'pano', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 32, 511, 27, '2024-09-04 10:26:48', '2024-09-04 10:26:48'),
(34, 14, 'compra', 6000.00, 1, 0.00, 6000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 24, 33, 508, 27, '2024-09-04 13:13:12', '2024-09-04 13:13:12'),
(35, 14, 'lençol', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 25, 15, 508, 27, '2024-09-04 13:44:55', '2024-09-04 13:44:55'),
(36, 14, 'saco de tenis', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 25, 24, 508, 27, '2024-09-04 13:44:55', '2024-09-04 13:44:55'),
(37, 14, 'lençol', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 26, 15, 508, 27, '2024-09-05 08:31:21', '2024-09-05 08:31:21'),
(38, 14, 'lençol', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 27, 15, 508, 27, '2024-09-05 08:31:21', '2024-09-05 08:31:21'),
(39, 14, 'curtina', 28000.00, 1, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 28, 39, 508, 27, '2024-09-05 08:47:45', '2024-09-05 08:47:45'),
(40, 14, 'fogão', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 29, 40, 508, 27, '2024-09-05 09:37:58', '2024-09-05 09:37:58'),
(41, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 30, 18, 508, 27, '2024-09-05 12:56:15', '2024-09-05 12:56:15'),
(42, 14, 'tenis', 2500.00, 1, 0.00, 2500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 31, 41, 508, 27, '2024-09-05 13:40:42', '2024-09-05 13:40:42'),
(43, 14, 'calça', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 32, 18, 508, 27, '2024-09-06 09:45:47', '2024-09-06 09:45:47'),
(44, 14, 'saco de tenis', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 33, 24, 508, 27, '2024-09-06 10:12:26', '2024-09-06 10:12:26'),
(45, 14, 'Lençol', 35000.00, 3, 0.00, 105000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 34, 16, 508, 27, '2024-09-13 07:24:37', '2024-09-13 07:24:37'),
(46, 14, 'meia de lencol', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 35, 42, 508, 27, '2024-09-13 07:38:02', '2024-09-13 07:38:02'),
(47, 14, 'Lençol', 35000.00, 1, 0.00, 35000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 36, 16, 508, 27, '2024-09-13 07:38:55', '2024-09-13 07:38:55'),
(48, 14, 'vestido', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 37, 43, 508, 27, '2024-09-13 07:47:02', '2024-09-13 07:47:02'),
(49, 14, 'um saco e meio de tenis', 22500.00, 1, 0.00, 22500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 38, 44, 508, 27, '2024-09-13 10:17:02', '2024-09-13 10:17:02'),
(50, 14, 'ticherty', 25000.00, 1, 0.00, 25000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 39, 45, 508, 27, '2024-09-13 10:17:56', '2024-09-13 10:17:56'),
(51, 14, 'SANDALIA', 9000.00, 1, 0.00, 9000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 40, 46, 508, 27, '2024-09-13 12:16:49', '2024-09-13 12:16:49'),
(52, 14, 'lençol', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 15, 508, 27, '2024-09-20 10:46:11', '2024-09-20 10:46:11'),
(53, 14, 'meia de lencol', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 42, 508, 27, '2024-09-20 10:46:11', '2024-09-20 10:46:11'),
(54, 14, 'roupa mista', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 42, 48, 508, 27, '2024-09-20 10:47:02', '2024-09-20 10:47:02'),
(55, 14, 'lençol', 20000.00, 2, 0.00, 40000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 43, 15, 508, 27, '2024-09-20 11:30:18', '2024-09-20 11:30:18'),
(56, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 44, 18, 508, 27, '2024-09-24 13:31:10', '2024-09-24 13:31:10'),
(57, 14, 'curtina', 24000.00, 1, 0.00, 24000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 44, 49, 508, 27, '2024-09-24 13:31:10', '2024-09-24 13:31:10'),
(58, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 45, 50, 508, 27, '2024-09-25 08:13:11', '2024-09-25 08:13:11'),
(59, 14, 'colchão', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 46, 51, 508, 27, '2024-09-25 08:57:25', '2024-09-25 08:57:25'),
(60, 14, 'compras', 6500.00, 1, 0.00, 6500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 47, 52, 508, 27, '2024-09-25 09:35:42', '2024-09-25 09:35:42'),
(61, 14, 'cinto', 500.00, 2, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 48, 53, 508, 27, '2024-09-26 12:07:34', '2024-09-26 12:07:34'),
(62, 14, 'pano', 2500.00, 1, 0.00, 2500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 49, 32, 511, 27, '2024-09-26 12:08:46', '2024-09-26 12:08:46'),
(63, 14, 'compras', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 50, 54, 508, 27, '2024-09-26 12:25:29', '2024-09-26 12:25:29'),
(64, 14, 'pano', 2500.00, 1, 0.00, 2500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 51, 32, 511, 27, '2024-09-26 13:00:42', '2024-09-26 13:00:42'),
(65, 14, 'lençol', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 51, 15, 508, 27, '2024-09-26 13:00:42', '2024-09-26 13:00:42'),
(66, 14, 'colchão', 55000.00, 1, 0.00, 55000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 52, 51, 508, 27, '2024-09-26 13:12:26', '2024-09-26 13:12:26'),
(67, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 53, 18, 508, 27, '2024-09-27 08:41:45', '2024-09-27 08:41:45'),
(68, 14, 'curtina', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 54, 55, 508, 27, '2024-09-27 11:57:06', '2024-09-27 11:57:06'),
(69, 14, 'aparelho de som', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 55, 56, 508, 27, '2024-09-27 12:09:26', '2024-09-27 12:09:26'),
(70, 14, 'colchão', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 56, 57, 508, 27, '2024-09-30 10:35:10', '2024-09-30 10:35:10'),
(71, 14, 'chinela', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 57, 58, 508, 27, '2024-09-30 13:00:02', '2024-09-30 13:00:02'),
(72, 14, 'tecido', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 58, 59, 508, 27, '2024-09-30 13:25:14', '2024-09-30 13:25:14'),
(73, 14, 'chinela', 1000.00, 3, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 59, 58, 508, 27, '2024-09-30 13:30:23', '2024-09-30 13:30:23'),
(74, 14, 'mini saia', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 60, 60, 508, 27, '2024-10-01 11:02:27', '2024-10-01 11:02:27'),
(75, 14, 'tenis', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 61, 61, 508, 27, '2024-10-01 11:40:02', '2024-10-01 11:40:02'),
(76, 14, 'mochila', 2000.00, 2, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 62, 62, 508, 27, '2024-10-01 12:31:44', '2024-10-01 12:31:44'),
(77, 14, 'tapete', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 63, 63, 508, 27, '2024-10-01 12:45:42', '2024-10-01 12:45:42'),
(78, 14, 'cadeirão', 100000.00, 1, 0.00, 100000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 64, 64, 508, 27, '2024-10-01 12:48:33', '2024-10-01 12:48:33'),
(79, 14, 'tenis', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 65, 61, 508, 27, '2024-10-01 13:19:49', '2024-10-01 13:19:49'),
(80, 14, 'lençol', 20000.00, 2, 0.00, 40000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 65, 15, 508, 27, '2024-10-01 13:19:49', '2024-10-01 13:19:49'),
(81, 14, 'lençol', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 66, 15, 508, 27, '2024-10-01 13:20:32', '2024-10-01 13:20:32'),
(82, 14, 'manta', 2000.00, 3, 0.00, 6000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 67, 65, 508, 27, '2024-10-03 07:16:31', '2024-10-03 07:16:31'),
(83, 14, 'Tenís', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 68, 19, 508, 27, '2024-10-03 12:29:23', '2024-10-03 12:29:23'),
(84, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 18, 508, 27, '2024-10-03 12:29:39', '2024-10-03 12:29:39'),
(85, 14, 'Tenís', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 70, 19, 508, 27, '2024-10-03 12:29:59', '2024-10-03 12:29:59'),
(86, 14, 'Tenís', 1000.00, 10, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 71, 19, 508, 27, '2024-10-03 13:29:58', '2024-10-03 13:29:58'),
(87, 14, 'tapete', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 72, 70, 508, 27, '2024-10-04 11:50:21', '2024-10-04 11:50:21'),
(88, 14, 'chinela', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 73, 71, 508, 27, '2024-10-04 11:50:42', '2024-10-04 11:50:42'),
(89, 14, 'Tenís', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 74, 19, 508, 27, '2024-10-04 11:51:16', '2024-10-04 11:51:16'),
(90, 14, 'lençol', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 75, 15, 508, 27, '2024-10-04 11:54:30', '2024-10-04 11:54:30'),
(91, 14, 'compras', 4500.00, 1, 0.00, 4500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 76, 72, 508, 27, '2024-10-04 11:55:25', '2024-10-04 11:55:25'),
(92, 14, 'Tenís', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 77, 26, 508, 27, '2024-10-04 12:28:52', '2024-10-04 12:28:52'),
(93, 14, 'Tenís', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 78, 19, 508, 27, '2024-10-04 12:29:25', '2024-10-04 12:29:25'),
(94, 14, 'Tenís', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 79, 26, 508, 27, '2024-10-04 12:31:57', '2024-10-04 12:31:57'),
(95, 14, 'poleve', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 80, 73, 508, 27, '2024-10-08 08:36:06', '2024-10-08 08:36:06'),
(96, 14, 'sandalha', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 81, 74, 508, 27, '2024-10-08 08:38:20', '2024-10-08 08:38:20'),
(97, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 82, 18, 508, 27, '2024-10-08 08:42:54', '2024-10-08 08:42:54'),
(98, 14, 'poleve', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 83, 73, 508, 27, '2024-10-08 08:43:48', '2024-10-08 08:43:48'),
(99, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 84, 77, 508, 27, '2024-10-08 08:51:06', '2024-10-08 08:51:06'),
(100, 14, 'calsa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 85, 78, 508, 27, '2024-10-08 09:25:08', '2024-10-08 09:25:08'),
(101, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 86, 77, 508, 27, '2024-10-08 10:29:42', '2024-10-08 10:29:42'),
(102, 14, 'chinela', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 87, 71, 508, 27, '2024-10-08 13:43:13', '2024-10-08 13:43:13'),
(103, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 88, 77, 508, 27, '2024-10-08 13:47:44', '2024-10-08 13:47:44'),
(104, 14, 'Tenís', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 89, 19, 508, 27, '2024-10-08 14:08:34', '2024-10-08 14:08:34'),
(105, 14, 'colchao', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 90, 80, 508, 27, '2024-10-09 07:50:56', '2024-10-09 07:50:56'),
(106, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 90, 77, 508, 27, '2024-10-09 07:50:56', '2024-10-09 07:50:56'),
(107, 14, 'mochila', 500.00, 1, 0.00, 500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 91, 62, 508, 27, '2024-10-09 09:41:33', '2024-10-09 09:41:33'),
(108, 14, 'pasta', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 92, 82, 508, 27, '2024-10-09 11:07:04', '2024-10-09 11:07:04'),
(109, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 94, 77, 508, 27, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(110, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 93, 77, 508, 27, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(111, 14, 'mesa de engomar', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 95, 77, 508, 27, '2024-10-09 12:43:31', '2024-10-09 12:43:31'),
(112, 14, 'tenis', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 96, 83, 508, 27, '2024-10-09 12:45:34', '2024-10-09 12:45:34'),
(113, 14, 'Tenís', 500.00, 6, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 97, 19, 508, 27, '2024-10-10 10:57:26', '2024-10-10 10:57:26'),
(114, 14, 'compras', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 98, 84, 508, 27, '2024-10-10 12:24:31', '2024-10-10 12:24:31'),
(115, 14, 'ficha', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 99, 87, 508, 27, '2024-10-15 12:22:59', '2024-10-15 12:22:59'),
(116, 14, 'ficha', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 100, 88, 508, 27, '2024-10-16 11:24:41', '2024-10-16 11:24:41'),
(117, 14, 'pano', 2000.00, 7, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 101, 89, 508, 27, '2024-10-16 11:25:31', '2024-10-16 11:25:31'),
(118, 14, 'calça', 1500.00, 3, 0.00, 4500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 102, 90, 508, 27, '2024-10-16 12:20:19', '2024-10-16 12:20:19'),
(119, 14, 'colchão', 55000.00, 1, 0.00, 55000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 103, 93, 508, 27, '2024-10-16 13:06:11', '2024-10-16 13:06:11'),
(120, 14, 'compra', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 104, 94, 508, 27, '2024-10-16 13:18:31', '2024-10-16 13:18:31'),
(121, 14, 'colchao', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 105, 80, 508, 27, '2024-10-17 06:42:45', '2024-10-17 06:42:45'),
(122, 14, 'Tenís', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 106, 26, 508, 27, '2024-10-17 09:03:03', '2024-10-17 09:03:03'),
(123, 14, 'sapatos', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 107, 96, 508, 27, '2024-10-17 09:09:02', '2024-10-17 09:09:02'),
(124, 14, 'tenis', 1000.00, 3, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 108, 50, 508, 27, '2024-10-17 12:30:05', '2024-10-17 12:30:05'),
(125, 14, 'pano', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 109, 21, 508, 27, '2024-10-17 12:49:49', '2024-10-17 12:49:49'),
(126, 14, 'pasta', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 110, 29, 508, 27, '2024-10-18 06:51:47', '2024-10-18 06:51:47'),
(127, 14, 'chinela', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 111, 71, 508, 27, '2024-10-18 09:20:46', '2024-10-18 09:20:46'),
(128, 14, 'manta', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 112, 97, 508, 27, '2024-10-18 09:24:49', '2024-10-18 09:24:49'),
(129, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 113, 50, 508, 27, '2024-10-22 13:35:53', '2024-10-22 13:35:53'),
(130, 14, 'Tenís', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 114, 26, 508, 27, '2024-10-22 13:37:57', '2024-10-22 13:37:57'),
(131, 14, 'pano', 2500.00, 1, 0.00, 2500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 21, 508, 27, '2024-10-23 06:23:22', '2024-10-23 06:23:22'),
(132, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 116, 50, 508, 27, '2024-10-23 08:58:20', '2024-10-23 08:58:20'),
(133, 14, 'Tenís', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 117, 19, 508, 27, '2024-10-23 13:23:40', '2024-10-23 13:23:40'),
(134, 19, 'Impressão, folhas de prova ft.A3 frente e verso', 3500.00, 3, 20.00, 10500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 118, 103, 706, 37, '2024-10-25 10:43:21', '2024-10-25 10:43:21'),
(135, 14, 'mochila', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 119, 104, 508, 27, '2024-10-25 10:47:02', '2024-10-25 10:47:02'),
(136, 14, 'compra', 6000.00, 1, 0.00, 6000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 120, 105, 508, 27, '2024-10-25 11:15:37', '2024-10-25 11:15:37'),
(137, 14, 'camisa', 4000.00, 3, 0.00, 12000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 121, 106, 508, 27, '2024-10-25 11:20:14', '2024-10-25 11:20:14'),
(138, 14, 'sandalias', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 122, 108, 508, 27, '2024-10-25 12:20:01', '2024-10-25 12:20:01'),
(139, 14, 'tenis', 1000.00, 2, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 123, 50, 508, 27, '2024-10-31 11:03:53', '2024-10-31 11:03:53'),
(140, 14, 'cinto', 500.00, 1, 0.00, 500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 124, 53, 508, 27, '2024-10-31 13:34:40', '2024-10-31 13:34:40'),
(141, 14, 'Tenís', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 125, 19, 508, 27, '2024-11-01 07:25:03', '2024-11-01 07:25:03'),
(142, 14, 'botas', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 126, 110, 508, 27, '2024-11-01 07:50:49', '2024-11-01 07:50:49'),
(143, 14, 'tenis', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 127, 111, 508, 27, '2024-11-01 08:33:54', '2024-11-01 08:33:54'),
(144, 14, 'tenis', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 128, 111, 508, 27, '2024-11-01 09:14:20', '2024-11-01 09:14:20'),
(145, 14, 'COLCHAO', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 129, 113, 508, 27, '2024-11-01 09:33:37', '2024-11-01 09:33:37'),
(146, 14, 'tenis', 1000.00, 3, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 130, 50, 508, 27, '2024-11-01 09:37:28', '2024-11-01 09:37:28'),
(147, 14, 'COMPRA', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 131, 114, 508, 27, '2024-11-01 09:43:09', '2024-11-01 09:43:09'),
(148, 14, 'CHINELAS DE HOMEM', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 132, 115, 508, 27, '2024-11-01 11:16:46', '2024-11-01 11:16:46'),
(149, 14, 'chapeu', 500.00, 1, 0.00, 500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 133, 116, 508, 27, '2024-11-01 11:18:26', '2024-11-01 11:18:26'),
(150, 14, 'um saco e meio de tenis', 22500.00, 1, 0.00, 22500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 134, 44, 508, 27, '2024-11-01 11:45:13', '2024-11-01 11:45:13'),
(151, 14, 'culuna soni', 12000.00, 1, 0.00, 12000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 135, 117, 508, 27, '2024-11-01 11:53:10', '2024-11-01 11:53:10'),
(152, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 136, 50, 508, 27, '2024-11-01 11:54:29', '2024-11-01 11:54:29'),
(153, 14, 'lençol', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 137, 15, 508, 27, '2024-11-01 12:38:22', '2024-11-01 12:38:22'),
(154, 14, 'sandalia', 4000.00, 1, 0.00, 4000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 138, 126, 508, 27, '2024-11-01 14:14:41', '2024-11-01 14:14:41'),
(155, 14, 'mochila', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 139, 168, 508, 27, '2024-11-04 14:20:34', '2024-11-04 14:20:34'),
(156, 14, 'lençol', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 139, 15, 508, 27, '2024-11-04 14:20:34', '2024-11-04 14:20:34'),
(157, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 140, 50, 508, 27, '2024-11-04 14:21:47', '2024-11-04 14:21:47'),
(158, 14, 'saco de tenis', 1500.00, 2, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 141, 169, 508, 27, '2024-11-05 10:02:56', '2024-11-05 10:02:56'),
(159, 14, 'saco de tenis', 15000.00, 2, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 142, 170, 508, 27, '2024-11-05 10:09:27', '2024-11-05 10:09:27'),
(160, 14, 'pano', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 143, 171, 509, 27, '2024-11-05 11:35:42', '2024-11-05 11:35:42'),
(161, 14, 'pano', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 144, 172, 508, 27, '2024-11-05 11:40:19', '2024-11-05 11:40:19'),
(162, 14, 'chinelas', 1500.00, 2, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 145, 173, 508, 27, '2024-11-05 11:50:18', '2024-11-05 11:50:18'),
(163, 14, 'pano', 2500.00, 1, 0.00, 2500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 146, 172, 508, 27, '2024-11-05 12:16:51', '2024-11-05 12:16:51'),
(164, 14, 'tenis', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 147, 175, 508, 27, '2024-11-05 13:18:12', '2024-11-05 13:18:12'),
(165, 14, 'compras', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 148, 176, 508, 27, '2024-11-05 13:28:36', '2024-11-05 13:28:36'),
(166, 19, 'Impressão de papel autocolante', 700.00, 1, 0.00, 700.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 149, 177, 706, 37, '2024-11-07 08:50:40', '2024-11-07 08:50:40'),
(167, 19, 'Impressão de folha A4', 1500.00, 1, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 150, 178, 706, 37, '2024-11-07 09:02:02', '2024-11-07 09:02:02'),
(168, 30, 'lâmpada led', 1000.00, 19, 0.00, 19000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 151, 228, 1132, 59, '2024-11-28 10:44:30', '2024-11-28 10:44:30'),
(169, 30, 'rolo de fio 2,5mm', 40000.00, 1, 0.00, 40000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 151, 227, 1132, 59, '2024-11-28 10:44:30', '2024-11-28 10:44:30'),
(170, 30, 'rolo de fio 1,5mm', 27000.00, 1, 0.00, 27000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 151, 226, 1132, 59, '2024-11-28 10:44:31', '2024-11-28 10:44:31'),
(171, 30, 'Tomada Simples', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 151, 225, 1132, 59, '2024-11-28 10:44:31', '2024-11-28 10:44:31'),
(172, 30, 'fita isoladora', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 151, 224, 1132, 59, '2024-11-28 10:44:31', '2024-11-28 10:44:31'),
(173, 30, 'lâmpada led', 1000.00, 19, 0.00, 19000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 152, 228, 1132, 59, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(174, 30, 'rolo de fio 2,5mm', 40000.00, 1, 0.00, 40000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 152, 227, 1132, 59, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(175, 30, 'rolo de fio 1,5mm', 27000.00, 1, 0.00, 27000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 152, 226, 1132, 59, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(176, 30, 'Tomada Simples', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 152, 225, 1132, 59, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(177, 30, 'fita isoladora', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 152, 224, 1132, 59, '2024-11-28 12:27:54', '2024-11-28 12:27:54'),
(178, 30, 'metros de cabo', 1500.00, 5, 0.00, 7500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 240, 1132, 59, '2024-11-28 12:45:25', '2024-11-28 12:45:25'),
(179, 30, 'interruptor simples', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 239, 1132, 59, '2024-11-28 12:45:25', '2024-11-28 12:45:25'),
(180, 30, 'tomadas simples', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 238, 1132, 59, '2024-11-28 12:45:25', '2024-11-28 12:45:25'),
(181, 30, 'rolo de fio 2,5mm por metros', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 237, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(182, 30, 'rolo de fio 2,5mm', 35000.00, 3, 0.00, 105000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 236, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(183, 30, 'fita isoladora', 1000.00, 3, 0.00, 3000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 235, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(184, 30, 'lâmpada', 700.00, 6, 0.00, 4200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 234, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(185, 30, 'lâmpada', 2000.00, 2, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 233, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(186, 30, 'saco de braçadeira', 500.00, 3, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 232, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(187, 30, 'sinalizador', 1500.00, 1, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 231, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(188, 30, 'disjuntor', 2500.00, 15, 0.00, 37500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 230, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(189, 30, 'rolo de fio 1,5mm', 25000.00, 2, 0.00, 50000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 153, 229, 1132, 59, '2024-11-28 12:45:26', '2024-11-28 12:45:26'),
(190, 30, 'interruptor simples', 2000.00, 6, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 248, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(191, 30, 'Tomada Simples', 2000.00, 10, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 247, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(192, 30, 'tubo de 16 m', 6500.00, 1, 0.00, 6500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 246, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(193, 30, 'rolo de fio 2,5mm', 36000.00, 3, 0.00, 108000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 245, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(194, 30, 'candeeiro led', 50000.00, 1, 0.00, 50000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 244, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(195, 30, 'femia', 500.00, 3, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 243, 1132, 59, '2024-11-28 13:00:07', '2024-11-28 13:00:07'),
(196, 30, 'lâmpada', 2500.00, 2, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 242, 1132, 59, '2024-11-28 13:00:08', '2024-11-28 13:00:08'),
(197, 30, 'rolo de fio 1,5mm', 26000.00, 2, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 154, 241, 1132, 59, '2024-11-28 13:00:08', '2024-11-28 13:00:08'),
(198, 30, 'rolo de fio 2,5mm', 9000.00, 1, 0.00, 9000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 261, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(199, 30, 'caixa derivação', 700.00, 6, 0.00, 4200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 260, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(200, 30, 'disjuntor 32 polos', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 259, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(201, 30, 'disjuntor simples', 2500.00, 4, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 258, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(202, 30, 'Tomada Simples', 700.00, 7, 0.00, 4900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 257, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(203, 30, 'tomada dupla', 1200.00, 4, 0.00, 4800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 256, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(204, 30, 'quadro 8 modos', 4000.00, 1, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 255, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(205, 30, 'calhas colantes', 700.00, 9, 0.00, 6300.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 254, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(206, 30, 'rolo de tv 100m', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 253, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(207, 30, 'caixa portinhola', 25000.00, 1, 0.00, 25000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 252, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(208, 30, 'rolo de fio 1,5mm', 25000.00, 1, 0.00, 25000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 251, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(209, 30, 'copos fundo', 200.00, 20, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 250, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(210, 30, 'rolo de fio 2,5mm', 35000.00, 5, 0.00, 175000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 155, 249, 1132, 59, '2024-11-28 13:23:28', '2024-11-28 13:23:28'),
(211, 30, 'lâmpada led', 1000.00, 13, 0.00, 13000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 271, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(212, 30, 'tomadas internas', 1900.00, 32, 0.00, 60800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 270, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(213, 30, 'Tomada Simples', 700.00, 3, 0.00, 2100.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 269, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(214, 30, 'disjuntor 1 polo', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 268, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(215, 30, 'disjuntor 2 polo', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 267, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(216, 30, 'rolo de tubo 20m flexível', 6000.00, 1, 0.00, 6000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 266, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(217, 30, 'rolo de tubo', 8000.00, 1, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 265, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(218, 30, 'copos fundo', 200.00, 50, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 264, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(219, 30, 'rolo de fio 1,5mm', 25000.00, 11, 0.00, 275000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 263, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(220, 30, 'rolo de fio 2,5mm', 35500.00, 2, 0.00, 71000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 156, 262, 1132, 59, '2024-11-28 13:44:55', '2024-11-28 13:44:55'),
(221, 30, 'lâmpada', 1200.00, 2, 0.00, 2400.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 287, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(222, 30, 'disjuntor 2 polo', 6000.00, 1, 0.00, 6000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 286, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(223, 30, 'lâmpada', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 285, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(224, 30, 'disjuntor 1 polo', 2500.00, 3, 0.00, 7500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 284, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(225, 30, 'quadro de 24 polos', 16000.00, 1, 0.00, 16000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 283, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(226, 30, 'interruptor duplo', 4000.00, 1, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 282, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(227, 30, 'tomada de tv', 2500.00, 8, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 281, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(228, 30, 'tomada legrand', 4000.00, 38, 0.00, 152000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 280, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(229, 30, 'rolo de tubo 20 flexível', 5000.00, 1, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 279, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(230, 30, 'base com fusível', 9000.00, 3, 0.00, 27000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 278, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(231, 30, 'caixa derivação', 1000.00, 20, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 277, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47');
INSERT INTO `item_factura_recibos` (`id`, `empresa_id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_recibo_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(232, 30, 'rolo de fio 1,5mm', 28000.00, 1, 0.00, 28000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 276, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(233, 30, 'tubo liso de 20', 29000.00, 2, 0.00, 58000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 275, 1132, 59, '2024-11-28 14:19:47', '2024-11-28 14:19:47'),
(234, 30, 'tubo liso de 16', 26000.00, 1, 0.00, 26000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 274, 1132, 59, '2024-11-28 14:19:48', '2024-11-28 14:19:48'),
(235, 30, 'rolo de fio 1,5mm', 26000.00, 5, 0.00, 130000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 273, 1132, 59, '2024-11-28 14:19:48', '2024-11-28 14:19:48'),
(236, 30, 'rolo de fio 2,5mm', 36000.00, 7, 0.00, 252000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 157, 272, 1132, 59, '2024-11-28 14:19:48', '2024-11-28 14:19:48'),
(237, 30, 'rolo de fio 1,5mm', 35000.00, 2, 0.00, 70000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 295, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(238, 30, 'interruptor comutador', 2000.00, 2, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 294, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(239, 30, 'ferro de barramento', 8500.00, 1, 0.00, 8500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 293, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(240, 30, 'disjuntor 2 polo', 3000.00, 1, 0.00, 3000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 292, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(241, 30, 'disjuntor 1 polo', 1500.00, 10, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 291, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(242, 30, 'interruptor', 900.00, 8, 0.00, 7200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 290, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(243, 30, 'Tomada Simples', 900.00, 26, 0.00, 23400.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 289, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(244, 30, 'fita isoladora', 1000.00, 4, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 158, 235, 1132, 59, '2024-11-28 14:36:41', '2024-11-28 14:36:41'),
(245, 30, 'suportes', 400.00, 4, 0.00, 1600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 309, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(246, 30, 'lâmpada', 500.00, 1, 0.00, 500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 308, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(247, 30, 'calha de 25 m', 1000.00, 1, 0.00, 1000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 307, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(248, 30, 'comando de TV', 2500.00, 1, 0.00, 2500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 306, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(249, 30, 'embalagem de fita', 2500.00, 1, 0.00, 2500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 305, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(250, 30, 'lâmpadas 40w', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 304, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(251, 30, 'metros de fita led', 1000.00, 10, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 303, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(252, 30, 'interruptor simples', 1800.00, 5, 0.00, 9000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 301, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(253, 30, 'Tomada Simples', 1800.00, 9, 0.00, 16200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 300, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(254, 30, 'sinalizador', 2000.00, 4, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 299, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(255, 30, 'rolo de fio 1,5mm', 4500.00, 2, 0.00, 9000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 298, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(256, 30, 'rolo de fio 2,5mm', 5500.00, 3, 0.00, 16500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 297, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(257, 30, 'copos fundo', 200.00, 20, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 159, 250, 1132, 59, '2024-11-28 15:14:50', '2024-11-28 15:14:50'),
(258, 32, 'Pao', 50.00, 3, 0.00, 150.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 160, 314, 1211, 63, '2024-12-16 11:33:23', '2024-12-16 11:33:23'),
(259, 19, 'Impressão de folha de prova', 5000.00, 3, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 161, 315, 703, 37, '2024-12-17 07:47:11', '2024-12-17 07:47:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_guia_remessas`
--

CREATE TABLE `item_guia_remessas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `guia_remessa_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_guia_transportes`
--

CREATE TABLE `item_guia_transportes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `guia_transporte_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_nota_creditos`
--

CREATE TABLE `item_nota_creditos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `nota_credito_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `item_nota_creditos`
--

INSERT INTO `item_nota_creditos` (`id`, `empresa_id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `nota_credito_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 14, 'calça', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, 18, 508, 27, '2024-10-08 09:23:05', '2024-10-08 09:23:05'),
(2, 14, 'Tenís', 15000.00, 1, 0.00, 15000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 2, 26, 508, 27, '2024-10-17 10:30:50', '2024-10-17 10:30:50'),
(3, 14, 'Tenís', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 3, 19, 508, 27, '2024-11-01 07:45:16', '2024-11-01 07:45:16'),
(4, 14, 'saco de tenis', 1500.00, 2, 0.00, 3000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 4, 169, 508, 27, '2024-11-05 10:15:43', '2024-11-05 10:15:43'),
(5, 14, 'pano', 2500.00, 2, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 5, 171, 509, 27, '2024-11-05 11:37:36', '2024-11-05 11:37:36'),
(6, 30, 'suporte', 150.00, 4, 0.00, 600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 223, 1132, 59, '2024-11-27 15:59:13', '2024-11-27 15:59:13'),
(7, 30, 'rolo de fio 1,5mm', 25000.00, 3, 0.00, 75000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 221, 1132, 59, '2024-11-27 15:59:13', '2024-11-27 15:59:13'),
(8, 30, 'lâmpadas simples', 500.00, 2, 0.00, 1000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 220, 1132, 59, '2024-11-27 15:59:13', '2024-11-27 15:59:13'),
(9, 30, 'tomadas internas', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 219, 1132, 59, '2024-11-27 15:59:13', '2024-11-27 15:59:13'),
(10, 30, 'lâmpadas simples', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 218, 1132, 59, '2024-11-27 15:59:14', '2024-11-27 15:59:14'),
(11, 30, 'rolo de fio 2,5mm', 35000.00, 1, 0.00, 35000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 217, 1132, 59, '2024-11-27 15:59:14', '2024-11-27 15:59:14'),
(12, 30, 'rolo de fio 1,5mm', 7000.00, 1, 0.00, 7000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 216, 1132, 59, '2024-11-27 15:59:14', '2024-11-27 15:59:14'),
(13, 30, 'lâmpada model 1', 2500.00, 2, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 215, 1132, 59, '2024-11-27 15:59:14', '2024-11-27 15:59:14'),
(14, 30, 'rolo de fio 2,5mm', 39000.00, 2, 0.00, 78000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 214, 1132, 59, '2024-11-27 15:59:14', '2024-11-27 15:59:14'),
(15, 30, 'lâmpada led', 1000.00, 19, 0.00, 19000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 228, 1132, 59, '2024-11-28 12:24:46', '2024-11-28 12:24:46'),
(16, 30, 'rolo de fio 2,5mm', 40000.00, 1, 0.00, 40000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 227, 1132, 59, '2024-11-28 12:24:46', '2024-11-28 12:24:46'),
(17, 30, 'rolo de fio 1,5mm', 27000.00, 1, 0.00, 27000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 226, 1132, 59, '2024-11-28 12:24:46', '2024-11-28 12:24:46'),
(18, 30, 'Tomada Simples', 2000.00, 1, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 225, 1132, 59, '2024-11-28 12:24:46', '2024-11-28 12:24:46'),
(19, 30, 'fita isoladora', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 224, 1132, 59, '2024-11-28 12:24:46', '2024-11-28 12:24:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_nota_debitos`
--

CREATE TABLE `item_nota_debitos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `nota_debito_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_proformas`
--

CREATE TABLE `item_proformas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `proforma_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `item_proformas`
--

INSERT INTO `item_proformas` (`id`, `empresa_id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `proforma_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'Tinteiro HP 650', 11094.00, 1, 2.00, 11094.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 1, 41, 3, '2024-08-15 10:37:30', '2024-08-15 10:37:30'),
(2, 2, 'Tinteiro hp 932 colour', 14900.00, 1, 2.00, 14900.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 1, 2, 41, 3, '2024-08-15 10:37:30', '2024-08-15 10:37:30'),
(3, 5, 'Temaki', 6500.00, 1, 0.00, 6500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 2, 7, 157, 9, '2024-08-23 12:35:59', '2024-08-23 12:35:59'),
(4, 7, 'Mariscos', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 3, 9, 235, 13, '2024-08-26 09:43:28', '2024-08-26 09:43:28'),
(5, 1, 'Software de faturação-Atomo', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 4, 11, 1, 1, '2024-08-28 11:37:42', '2024-08-28 11:37:42'),
(6, 1, 'Software de faturação-Atomo', 10000.00, 2, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 5, 11, 1, 1, '2024-08-28 12:14:27', '2024-08-28 12:14:27'),
(7, 7, 'Choco', 4000.00, 7, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 6, 14, 238, 13, '2024-08-30 09:44:34', '2024-08-30 09:44:34'),
(8, 7, 'Gamba', 13500.00, 81, 0.00, 1093500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 6, 13, 238, 13, '2024-08-30 09:44:34', '2024-08-30 09:44:34'),
(9, 7, 'Lagosta', 13000.00, 7, 0.00, 91000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 6, 12, 238, 13, '2024-08-30 09:44:34', '2024-08-30 09:44:34'),
(10, 7, 'Gamba', 13500.00, 891, 0.00, 12028500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 7, 13, 238, 13, '2024-08-30 10:06:20', '2024-08-30 10:06:20'),
(11, 7, 'Choco', 4000.00, 7, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 7, 14, 238, 13, '2024-08-30 10:06:20', '2024-08-30 10:06:20'),
(12, 7, 'Lagosta', 13000.00, 7, 0.00, 91000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 7, 12, 238, 13, '2024-08-30 10:06:20', '2024-08-30 10:06:20'),
(13, 7, 'Gamba', 13500.00, 891, 0.00, 12028500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 8, 13, 238, 13, '2024-08-30 10:06:43', '2024-08-30 10:06:43'),
(14, 7, 'Choco', 4000.00, 7, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 8, 14, 238, 13, '2024-08-30 10:06:43', '2024-08-30 10:06:43'),
(15, 7, 'Lagosta', 13000.00, 7, 0.00, 91000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 8, 12, 238, 13, '2024-08-30 10:06:43', '2024-08-30 10:06:43'),
(16, 7, 'Gamba', 13500.00, 891, 0.00, 12028500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 9, 13, 238, 13, '2024-08-30 10:06:44', '2024-08-30 10:06:44'),
(17, 7, 'Choco', 4000.00, 7, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 9, 14, 238, 13, '2024-08-30 10:06:44', '2024-08-30 10:06:44'),
(18, 7, 'Lagosta', 13000.00, 7, 0.00, 91000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 9, 12, 238, 13, '2024-08-30 10:06:44', '2024-08-30 10:06:44'),
(19, 7, 'Choco', 4000.00, 7, 0.00, 28000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 10, 14, 238, 13, '2024-08-30 10:10:03', '2024-08-30 10:10:03'),
(20, 7, 'Lagosta', 13000.00, 7, 0.00, 91000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 10, 12, 238, 13, '2024-08-30 10:10:03', '2024-08-30 10:10:03'),
(21, 7, 'Gamba', 13500.00, 8, 0.00, 108000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 10, 13, 238, 13, '2024-08-30 10:10:03', '2024-08-30 10:10:03'),
(22, 7, 'Lagosta', 13000.00, 10, 0.00, 130000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 11, 12, 238, 13, '2024-08-30 10:47:35', '2024-08-30 10:47:35'),
(23, 7, 'Gamba', 13500.00, 4, 0.00, 54000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 11, 13, 238, 13, '2024-08-30 10:47:35', '2024-08-30 10:47:35'),
(24, 7, 'Choco', 4000.00, 10, 0.00, 40000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 11, 14, 238, 13, '2024-08-30 10:47:35', '2024-08-30 10:47:35'),
(25, 19, 'Cartão de visita', 150.00, 1, 0.00, 150.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 12, 67, 706, 37, '2024-10-03 07:38:56', '2024-10-03 07:38:56'),
(26, 19, 'CARTÃO DE ESTUDANTE COM IMPRESSÃO A COR', 450.00, 100, 0.00, 45000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 13, 68, 703, 37, '2024-10-03 08:11:11', '2024-10-03 08:11:11'),
(27, 23, 'bolacha', 1000.00, 10, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 14, 85, 859, 45, '2024-10-11 10:57:26', '2024-10-11 10:57:26'),
(28, 24, 'Expositor no Cero 24', 500000.00, 1, 0.00, 500000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 15, 92, 901, 48, '2024-10-16 12:26:29', '2024-10-16 12:26:29'),
(29, 28, 'assistencia técnica', 141000.00, 1, 0.00, 141000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 146, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(30, 28, 'disco rígido 1T', 75000.00, 1, 0.00, 75000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 145, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(31, 28, 'DVR', 108000.00, 1, 0.00, 108000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 144, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(32, 28, 'Atado de tubo PVC e seus acessórios', 57000.00, 1, 0.00, 57000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 143, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(33, 28, 'A fonte de alimentação', 26000.00, 1, 0.00, 26000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 142, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(34, 28, 'Caixas de cabo', 55000.00, 2, 0.00, 110000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 141, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(35, 28, 'caixas de derivação', 1000.00, 8, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 140, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(36, 28, 'conectores DC', 500.00, 8, 0.00, 4000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 139, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(37, 28, 'vídeo balum', 3000.00, 8, 0.00, 24000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 147, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(38, 28, 'câmeras', 27000.00, 8, 0.00, 216000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 138, 1057, 55, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(39, 28, 'Assistência técnica', 131000.00, 1, 0.00, 131000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 156, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(40, 28, 'disco rígido 1T', 75000.00, 1, 0.00, 75000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 155, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(41, 28, 'DVR', 98000.00, 1, 0.00, 98000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 154, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(42, 28, 'Atado de tubo PVC e seus acessórios', 57000.00, 1, 0.00, 57000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 153, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(43, 28, 'A fonte de alimentação', 21000.00, 1, 0.00, 21000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 152, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(44, 28, 'Caixas de cabo', 48000.00, 2, 0.00, 96000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 151, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(45, 28, 'video balum', 3000.00, 8, 0.00, 24000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 149, 1057, 55, '2024-11-01 21:06:29', '2024-11-01 21:06:29'),
(46, 28, 'câmeras', 18000.00, 8, 0.00, 144000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 148, 1057, 55, '2024-11-01 21:06:30', '2024-11-01 21:06:30'),
(47, 28, 'A assistencia técnica', 325000.00, 1, 0.00, 325000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 166, 1057, 55, '2024-11-01 21:40:57', '2024-11-01 21:40:57'),
(48, 28, 'disco rígido 1T', 75000.00, 1, 0.00, 75000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 165, 1057, 55, '2024-11-01 21:40:57', '2024-11-01 21:40:57'),
(49, 28, 'Nvr de 16', 232000.00, 1, 0.00, 232000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 164, 1057, 55, '2024-11-01 21:40:57', '2024-11-01 21:40:57'),
(50, 28, 'switch PoE de 8 canais', 55000.00, 2, 0.00, 110000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 163, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(51, 28, 'Atado de tubo PVC e seus acessórios', 57000.00, 1, 0.00, 57000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 162, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(52, 28, 'Caixas de cabo', 271000.00, 2, 0.00, 542000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 161, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(53, 28, 'Conectores RJ45', 8000.00, 1, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 160, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(54, 28, 'câmeras IP Externas robustas', 115000.00, 2, 0.00, 230000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 159, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(55, 28, 'câmeras Ip externas', 84000.00, 3, 0.00, 252000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 158, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(56, 28, 'câmeras IP internas', 75000.00, 3, 0.00, 225000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 157, 1057, 55, '2024-11-01 21:40:58', '2024-11-01 21:40:58'),
(57, 28, 'Assistência técnica', 488200.00, 1, 0.00, 488200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 185, 1057, 55, '2024-11-07 15:03:35', '2024-11-07 15:03:35'),
(58, 28, 'Fonte de alimentação com bateria', 73000.00, 1, 0.00, 73000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 184, 1057, 55, '2024-11-07 15:03:35', '2024-11-07 15:03:35'),
(59, 28, 'Caixa de ficha RJ 45', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 183, 1057, 55, '2024-11-07 15:03:35', '2024-11-07 15:03:35'),
(60, 28, 'Central de controle', 487900.00, 1, 0.00, 487900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 181, 1057, 55, '2024-11-07 15:03:35', '2024-11-07 15:03:35'),
(61, 28, 'Leitores de acesso', 58000.00, 5, 0.00, 290000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 180, 1057, 55, '2024-11-07 15:03:35', '2024-11-07 15:03:35'),
(62, 28, 'Fechadura', 56000.00, 5, 0.00, 280000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 179, 1057, 55, '2024-11-07 15:03:36', '2024-11-07 15:03:36'),
(63, 28, 'Caixa de cabo', 102000.00, 2, 0.00, 204000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 19, 186, 1057, 55, '2024-11-07 15:03:36', '2024-11-07 15:03:36'),
(64, 28, 'Caixa de cabo', 102000.00, 2, 0.00, 204000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 186, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(65, 28, 'Assistência técnica', 488200.00, 1, 0.00, 488200.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 185, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(66, 28, 'Fonte de alimentação com bateria', 73000.00, 1, 0.00, 73000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 184, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(67, 28, 'Caixa de ficha RJ 45', 10000.00, 1, 0.00, 10000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 183, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(68, 28, 'Central de controle', 487900.00, 1, 0.00, 487900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 181, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(69, 28, 'Leitores de acesso', 58000.00, 5, 0.00, 290000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 180, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(70, 28, 'Fechadura', 56000.00, 5, 0.00, 280000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 20, 179, 1057, 55, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(71, 28, 'Assistência técnica', 40000.00, 1, 0.00, 40000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 193, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(72, 28, 'Caixa derivação', 3000.00, 1, 0.00, 3000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 192, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(73, 28, 'Tomada', 1500.00, 1, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 191, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(74, 28, 'Metro de cabo', 300.00, 3, 0.00, 900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 190, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(75, 28, 'Calha', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 189, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(76, 28, 'Fechadura elétrica', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 188, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(77, 28, 'Tags', 800.00, 101, 0.00, 80800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 187, 1057, 55, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(78, 28, 'Assistência técnica', 40000.00, 1, 0.00, 40000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 193, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(79, 28, 'Caixa derivação', 3000.00, 1, 0.00, 3000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 192, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(80, 28, 'Tomada', 1500.00, 1, 0.00, 1500.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 191, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(81, 28, 'Metro de cabo', 300.00, 3, 0.00, 900.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 190, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(82, 28, 'Calha', 1000.00, 2, 0.00, 2000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 189, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(83, 28, 'Fechadura elétrica', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 188, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(84, 28, 'Tags', 800.00, 10, 0.00, 8000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 187, 1057, 55, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(85, 28, 'Deslocação', 5000.00, 1, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 196, 1057, 55, '2024-11-10 18:30:54', '2024-11-10 18:30:54'),
(86, 28, 'Restauração da imagem da câmera', 12000.00, 1, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 195, 1057, 55, '2024-11-10 18:30:54', '2024-11-10 18:30:54'),
(87, 28, 'Diagnóstico e vistoria do sistema', 20000.00, 1, 0.00, 20000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 194, 1057, 55, '2024-11-10 18:30:54', '2024-11-10 18:30:54'),
(88, 28, 'Led de Alta Tensão', 22300.00, 1, 0.00, 22300.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 208, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(89, 28, 'Estrobo light', 21000.00, 1, 0.00, 21000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 207, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(90, 28, 'central de choque', 215000.00, 1, 0.00, 215000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 206, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(91, 28, 'sirene', 23000.00, 1, 0.00, 23000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 205, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(92, 28, 'placas de advertência', 1100.00, 18, 0.00, 19800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 204, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(93, 28, 'Rolo Galvanizado de 1.000m', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 203, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(94, 28, '40m de cabo HT', 28600.00, 1, 0.00, 28600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 202, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(95, 28, 'Ferrul', 12000.00, 1, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 201, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(96, 28, 'Anzóis', 5000.00, 1, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 200, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(97, 28, 'Esticadores para as extremidades', 1000.00, 32, 0.00, 32000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 199, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(98, 28, 'Hastes para estruturação de 8 linhas', 8000.00, 40, 0.00, 320000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 198, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(99, 28, 'Assistência Técnica', 300280.00, 1, 0.00, 300280.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 24, 197, 1057, 55, '2024-11-10 19:06:09', '2024-11-10 19:06:09'),
(100, 28, 'Hastes para estruturação de 6 linhas', 6000.00, 40, 0.00, 240000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 209, 1057, 55, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(101, 28, 'Central de choque', 185000.00, 1, 0.00, 185000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 211, 1057, 55, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(102, 28, 'sirene', 15000.00, 1, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 210, 1057, 55, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(103, 28, 'placas de advertência', 1100.00, 18, 0.00, 19800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 204, 1057, 55, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(104, 28, 'Rolo Galvanizado de 1.000m', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 203, 1057, 55, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(105, 28, '40m de cabo HT', 28600.00, 1, 0.00, 28600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 202, 1057, 55, '2024-11-10 19:29:01', '2024-11-10 19:29:01'),
(106, 28, 'Ferrul', 12000.00, 1, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 201, 1057, 55, '2024-11-10 19:29:01', '2024-11-10 19:29:01'),
(107, 28, 'Anzóis', 5000.00, 1, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 200, 1057, 55, '2024-11-10 19:29:01', '2024-11-10 19:29:01'),
(108, 28, 'Esticadores para as extremidades', 1000.00, 24, 0.00, 24000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 199, 1057, 55, '2024-11-10 19:29:01', '2024-11-10 19:29:01'),
(109, 28, 'Assistência Técnica', 300280.00, 1, 0.00, 300280.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 25, 197, 1057, 55, '2024-11-10 19:29:01', '2024-11-10 19:29:01'),
(110, 28, 'Central de choque', 185000.00, 1, 0.00, 185000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 211, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(111, 28, 'sirene', 15000.00, 1, 0.00, 15000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 210, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(112, 28, 'placas de advertência', 1100.00, 18, 0.00, 19800.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 204, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(113, 28, 'Rolo Galvanizado de 1.000m', 52000.00, 1, 0.00, 52000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 203, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(114, 28, '40m de cabo HT', 28600.00, 1, 0.00, 28600.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 202, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(115, 28, 'Ferrul', 12000.00, 1, 0.00, 12000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 201, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(116, 28, 'Anzóis', 5000.00, 1, 0.00, 5000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 200, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(117, 28, 'Esticadores para as extremidades', 1000.00, 24, 0.00, 24000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 199, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(118, 28, 'Hastes para estruturação de 6 linhas', 6000.00, 40, 0.00, 240000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 209, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(119, 28, 'assistência técnica', 236320.00, 1, 0.00, 236320.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 26, 212, 1057, 55, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(120, 31, 'Consultoria e Suporte', 100000.00, 1, 0.00, 100000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 27, 311, 1174, 61, '2024-12-03 10:26:23', '2024-12-03 10:26:23'),
(121, 31, 'Assistência administrativa', 700000.00, 1, 0.00, 700000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 28, 313, 1174, 62, '2024-12-14 14:08:22', '2024-12-14 14:08:22'),
(122, 31, 'Assistência administrativa', 700000.00, 1, 0.00, 700000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 29, 313, 1174, 62, '2024-12-16 06:52:27', '2024-12-16 06:52:27'),
(123, 31, 'Assistência administrativa', 700000.00, 1, 0.00, 700000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 30, 313, 1174, 62, '2024-12-16 06:56:23', '2024-12-16 06:56:23'),
(124, 31, 'Assistência administrativa', 700000.00, 1, 0.00, 700000.00, 'Rentenão na fonte 6.5%', 6.5, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 31, 313, 1174, 62, '2024-12-16 06:59:16', '2024-12-16 06:59:16'),
(125, 31, 'Criação de Identidade Visual', 150000.00, 1, 0.00, 150000.00, 'Sem rentenão na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 32, 310, 1174, 61, '2024-12-16 08:21:35', '2024-12-16 08:21:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_stocks`
--

CREATE TABLE `item_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `item_stocks`
--

INSERT INTO `item_stocks` (`id`, `empresa_id`, `codigo`, `designacao`, `qtd`, `stock_id`, `artigo_id`, `created_at`, `updated_at`) VALUES
(1, 28, '2024-0002', 'vídeo balum', -2, 1, 119, '2024-11-04 12:12:28', '2024-11-04 12:12:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_departamentos_table', 1),
(2, '2014_10_12_000000_create_enderecos_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_08_10_110404_create_contactos_table', 1),
(7, '2021_01_06_173930_create_tipos_table', 1),
(8, '2021_01_06_173931_create_categorias_table', 1),
(9, '2021_01_06_173932_create_impostos_table', 1),
(10, '2021_01_06_173933_create_fornecedors_table', 1),
(11, '2021_01_06_173934_create_retencaos_table', 1),
(12, '2021_01_06_173952_create_artigos_table', 1),
(13, '2021_07_19_095646_create_clientes_table', 1),
(14, '2021_07_19_201615_create_empresas_table', 1),
(15, '2021_08_13_100920_create_formas_pagamentos_table', 1),
(16, '2021_08_13_100921_create_moedas_table', 1),
(17, '2021_08_13_100926_create_facturas_table', 1),
(18, '2021_08_27_084347_create_modo_pagamentos_table', 1),
(19, '2021_08_30_183409_create_items_table', 1),
(20, '2021_09_01_075243_create_proformas_table', 1),
(21, '2021_09_01_075439_create_item_proformas_table', 1),
(22, '2021_09_01_075937_create_series_table', 1),
(23, '2021_09_03_132534_create_armazems_table', 1),
(24, '2021_09_15_130302_create_stocks_table', 1),
(25, '2021_09_19_125720_create_item_stocks_table', 1),
(26, '2021_09_20_082519_create_recibos_table', 1),
(27, '2021_09_20_082623_create_factura_recibos_table', 1),
(28, '2021_09_20_082635_create_item_factura_recibos_table', 1),
(29, '2021_09_28_131912_create_motivo_anulacaos_table', 1),
(30, '2021_09_28_131912_create_tipo_motivo_anulacaos_table', 1),
(31, '2021_12_22_125550_create_bugs_table', 1),
(32, '2022_01_23_103308_create_fabricantes_table', 1),
(33, '2022_01_23_151610_create_condicoes_pagamentos_table', 1),
(34, '2022_01_25_091808_bancos', 1),
(35, '2022_02_09_131420_create_permission_tables', 1),
(36, '2022_09_08_110345_create_nota_creditos_table', 1),
(37, '2022_09_08_110451_create_nota_debitos_table', 1),
(38, '2022_09_08_110636_create_item_nota_creditos_table', 1),
(39, '2022_09_08_110646_create_item_nota_debitos_table', 1),
(40, '2022_09_11_162939_create_guia_transportes_table', 1),
(41, '2022_09_11_162954_create_item_guia_transportes_table', 1),
(42, '2022_09_11_163007_create_guia_remessas_table', 1),
(43, '2022_09_11_163023_create_item_guia_remessas_table', 1),
(44, '2022_09_21_140425_create_agts_table', 1),
(45, '2023_01_23_155122_create_tax_tables_table', 1),
(46, '2023_01_23_155225_create_saft_audits_table', 1),
(47, '2023_03_31_105051_create_pais_table', 1),
(48, '2023_05_07_190801_create_safts_table', 1),
(49, '2023_07_19_200600_create_receita_despesas_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `empresa_id`, `model_type`, `model_id`) VALUES
(1, 1, 'App\\User', 1),
(1, NULL, 'App\\User', 4),
(1, 3, 'App\\User', 6),
(1, NULL, 'App\\User', 7),
(1, NULL, 'App\\User', 8),
(1, 4, 'App\\User', 10),
(1, 5, 'App\\User', 11),
(1, NULL, 'App\\User', 12),
(1, 6, 'App\\User', 13),
(1, 7, 'App\\User', 14),
(1, NULL, 'App\\User', 15),
(1, 8, 'App\\User', 16),
(1, 9, 'App\\User', 17),
(1, 10, 'App\\User', 18),
(1, 11, 'App\\User', 19),
(1, 12, 'App\\User', 20),
(1, 13, 'App\\User', 21),
(1, NULL, 'App\\User', 24),
(1, 15, 'App\\User', 27),
(1, 16, 'App\\User', 28),
(1, 17, 'App\\User', 29),
(1, 18, 'App\\User', 30),
(1, 19, 'App\\User', 31),
(1, NULL, 'App\\User', 32),
(1, 20, 'App\\User', 33),
(1, NULL, 'App\\User', 34),
(1, 21, 'App\\User', 35),
(1, 22, 'App\\User', 36),
(1, 23, 'App\\User', 37),
(1, 24, 'App\\User', 38),
(1, 25, 'App\\User', 39),
(1, 26, 'App\\User', 40),
(1, 27, 'App\\User', 41),
(1, 28, 'App\\User', 42),
(1, 29, 'App\\User', 43),
(1, 30, 'App\\User', 44),
(1, 31, 'App\\User', 45),
(1, NULL, 'App\\User', 46),
(1, NULL, 'App\\User', 47),
(1, 32, 'App\\User', 48),
(2, NULL, 'App\\User', 9),
(3, NULL, 'App\\User', 25),
(3, NULL, 'App\\User', 26),
(5, NULL, 'App\\User', 2),
(5, NULL, 'App\\User', 23);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modo_pagamentos`
--

CREATE TABLE `modo_pagamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `modo_pagamentos`
--

INSERT INTO `modo_pagamentos` (`id`, `empresa_id`, `designacao`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cheque', NULL, NULL),
(2, 1, 'Numerário', NULL, NULL),
(3, 1, 'Transferência Bancária', NULL, NULL),
(4, 2, 'Cheque', NULL, NULL),
(5, 2, 'Numerário', NULL, NULL),
(6, 2, 'Transferncia Bancária', NULL, NULL),
(7, 3, 'Cheque', NULL, NULL),
(8, 3, 'Numerário', NULL, NULL),
(9, 3, 'Transferncia Bancária', NULL, NULL),
(10, 4, 'Cheque', NULL, NULL),
(11, 4, 'Numerário', NULL, NULL),
(12, 4, 'Transferncia Bancária', NULL, NULL),
(13, 5, 'Cheque', NULL, NULL),
(14, 5, 'Numerário', NULL, NULL),
(15, 5, 'Transferncia Bancária', NULL, NULL),
(16, 6, 'Cheque', NULL, NULL),
(17, 6, 'Numerário', NULL, NULL),
(18, 6, 'Transferncia Bancária', NULL, NULL),
(19, 7, 'Cheque', NULL, NULL),
(20, 7, 'Numerário', NULL, NULL),
(21, 7, 'Transferncia Bancária', NULL, NULL),
(22, 8, 'Cheque', NULL, NULL),
(23, 8, 'Numerário', NULL, NULL),
(24, 8, 'Transferncia Bancária', NULL, NULL),
(25, 9, 'Cheque', NULL, NULL),
(26, 9, 'Numerário', NULL, NULL),
(27, 9, 'Transferncia Bancária', NULL, NULL),
(28, 10, 'Cheque', NULL, NULL),
(29, 10, 'Numerário', NULL, NULL),
(30, 10, 'Transferncia Bancária', NULL, NULL),
(31, 11, 'Cheque', NULL, NULL),
(32, 11, 'Numerário', NULL, NULL),
(33, 11, 'Transferncia Bancária', NULL, NULL),
(34, 12, 'Cheque', NULL, NULL),
(35, 12, 'Numerário', NULL, NULL),
(36, 12, 'Transferncia Bancária', NULL, NULL),
(37, 13, 'Cheque', NULL, NULL),
(38, 13, 'Numerário', NULL, NULL),
(39, 13, 'Transferncia Bancária', NULL, NULL),
(40, 14, 'Cheque', NULL, NULL),
(41, 14, 'Numerário', NULL, NULL),
(42, 14, 'Transferncia Bancária', NULL, NULL),
(43, 15, 'Cheque', NULL, NULL),
(44, 15, 'Numerário', NULL, NULL),
(45, 15, 'Transferncia Bancária', NULL, NULL),
(46, 16, 'Cheque', NULL, NULL),
(47, 16, 'Numerário', NULL, NULL),
(48, 16, 'Transferncia Bancária', NULL, NULL),
(49, 17, 'Cheque', NULL, NULL),
(50, 17, 'Numerário', NULL, NULL),
(51, 17, 'Transferncia Bancária', NULL, NULL),
(52, 18, 'Cheque', NULL, NULL),
(53, 18, 'Numerário', NULL, NULL),
(54, 18, 'Transferncia Bancária', NULL, NULL),
(55, 19, 'Cheque', NULL, NULL),
(56, 19, 'Numerário', NULL, NULL),
(57, 19, 'Transferncia Bancria', NULL, NULL),
(58, 20, 'Cheque', NULL, NULL),
(59, 20, 'Numerário', NULL, NULL),
(60, 20, 'Transferncia Bancria', NULL, NULL),
(61, 21, 'Cheque', NULL, NULL),
(62, 21, 'Numerário', NULL, NULL),
(63, 21, 'Transferncia Bancria', NULL, NULL),
(64, 22, 'Cheque', NULL, NULL),
(65, 22, 'Numerário', NULL, NULL),
(66, 22, 'Transferncia Bancria', NULL, NULL),
(67, 23, 'Cheque', NULL, NULL),
(68, 23, 'Numerário', NULL, NULL),
(69, 23, 'Transferncia Bancria', NULL, NULL),
(70, 24, 'Cheque', NULL, NULL),
(71, 24, 'Numerário', NULL, NULL),
(72, 24, 'Transferncia Bancria', NULL, NULL),
(73, 25, 'Cheque', NULL, NULL),
(74, 25, 'Numerário', NULL, NULL),
(75, 25, 'Transferncia Bancria', NULL, NULL),
(76, 26, 'Cheque', NULL, NULL),
(77, 26, 'Numerário', NULL, NULL),
(78, 26, 'Transferncia Bancria', NULL, NULL),
(79, 27, 'Cheque', NULL, NULL),
(80, 27, 'Numerário', NULL, NULL),
(81, 27, 'Transferncia Bancria', NULL, NULL),
(82, 28, 'Cheque', NULL, NULL),
(83, 28, 'Numerário', NULL, NULL),
(84, 28, 'Transferncia Bancria', NULL, NULL),
(85, 29, 'Cheque', NULL, NULL),
(86, 29, 'Numerário', NULL, NULL),
(87, 29, 'Transferncia Bancria', NULL, NULL),
(88, 30, 'Cheque', NULL, NULL),
(89, 30, 'Numerário', NULL, NULL),
(90, 30, 'Transferncia Bancria', NULL, NULL),
(91, 31, 'Cheque', NULL, NULL),
(92, 31, 'Numerário', NULL, NULL),
(93, 31, 'Transferncia Bancria', NULL, NULL),
(94, 32, 'Cheque', NULL, NULL),
(95, 32, 'Numerário', NULL, NULL),
(96, 32, 'Transferncia Bancária', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `moedas`
--

CREATE TABLE `moedas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `moedas`
--

INSERT INTO `moedas` (`id`, `empresa_id`, `designacao`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kwanza', NULL, NULL),
(2, 1, 'Dollar', NULL, NULL),
(3, 2, 'Kwanza', NULL, NULL),
(4, 2, 'Dollar', NULL, NULL),
(5, 3, 'Kwanza', NULL, NULL),
(6, 3, 'Dollar', NULL, NULL),
(7, 4, 'Kwanza', NULL, NULL),
(8, 4, 'Dollar', NULL, NULL),
(9, 5, 'Kwanza', NULL, NULL),
(10, 5, 'Dollar', NULL, NULL),
(11, 6, 'Kwanza', NULL, NULL),
(12, 6, 'Dollar', NULL, NULL),
(13, 7, 'Kwanza', NULL, NULL),
(14, 7, 'Dollar', NULL, NULL),
(15, 8, 'Kwanza', NULL, NULL),
(16, 8, 'Dollar', NULL, NULL),
(17, 9, 'Kwanza', NULL, NULL),
(18, 9, 'Dollar', NULL, NULL),
(19, 10, 'Kwanza', NULL, NULL),
(20, 10, 'Dollar', NULL, NULL),
(21, 11, 'Kwanza', NULL, NULL),
(22, 11, 'Dollar', NULL, NULL),
(23, 12, 'Kwanza', NULL, NULL),
(24, 12, 'Dollar', NULL, NULL),
(25, 13, 'Kwanza', NULL, NULL),
(26, 13, 'Dollar', NULL, NULL),
(27, 14, 'Kwanza', NULL, NULL),
(28, 14, 'Dollar', NULL, NULL),
(29, 15, 'Kwanza', NULL, NULL),
(30, 15, 'Dollar', NULL, NULL),
(31, 16, 'Kwanza', NULL, NULL),
(32, 16, 'Dollar', NULL, NULL),
(33, 17, 'Kwanza', NULL, NULL),
(34, 17, 'Dollar', NULL, NULL),
(35, 18, 'Kwanza', NULL, NULL),
(36, 18, 'Dollar', NULL, NULL),
(37, 19, 'Kwanza', NULL, NULL),
(38, 19, 'Dollar', NULL, NULL),
(39, 20, 'Kwanza', NULL, NULL),
(40, 20, 'Dollar', NULL, NULL),
(41, 21, 'Kwanza', NULL, NULL),
(42, 21, 'Dollar', NULL, NULL),
(43, 22, 'Kwanza', NULL, NULL),
(44, 22, 'Dollar', NULL, NULL),
(45, 23, 'Kwanza', NULL, NULL),
(46, 23, 'Dollar', NULL, NULL),
(47, 24, 'Kwanza', NULL, NULL),
(48, 24, 'Dollar', NULL, NULL),
(49, 25, 'Kwanza', NULL, NULL),
(50, 25, 'Dollar', NULL, NULL),
(51, 26, 'Kwanza', NULL, NULL),
(52, 26, 'Dollar', NULL, NULL),
(53, 27, 'Kwanza', NULL, NULL),
(54, 27, 'Dollar', NULL, NULL),
(55, 28, 'Kwanza', NULL, NULL),
(56, 28, 'Dollar', NULL, NULL),
(57, 29, 'Kwanza', NULL, NULL),
(58, 29, 'Dollar', NULL, NULL),
(59, 30, 'Kwanza', NULL, NULL),
(60, 30, 'Dollar', NULL, NULL),
(61, 31, 'Kwanza', NULL, NULL),
(62, 31, 'Dollar', NULL, NULL),
(63, 32, 'Kwanza', NULL, NULL),
(64, 32, 'Dollar', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motivo_anulacaos`
--

CREATE TABLE `motivo_anulacaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `motivo_anulacaos`
--

INSERT INTO `motivo_anulacaos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Anulação', '', 1, NULL, NULL),
(2, 1, '0002', 'Rectificação', '', 1, NULL, NULL),
(3, 2, '0001', 'Anulação', '', 1, NULL, NULL),
(4, 2, '0002', 'Rectificaão', '', 1, NULL, NULL),
(5, 3, '0001', 'Anulação', '', 1, NULL, NULL),
(6, 3, '0002', 'Rectificaão', '', 1, NULL, NULL),
(7, 4, '0001', 'Anulação', '', 1, NULL, NULL),
(8, 4, '0002', 'Rectificaão', '', 1, NULL, NULL),
(9, 5, '0001', 'Anulação', '', 1, NULL, NULL),
(10, 5, '0002', 'Rectificaão', '', 1, NULL, NULL),
(11, 6, '0001', 'Anulação', '', 1, NULL, NULL),
(12, 6, '0002', 'Rectificaão', '', 1, NULL, NULL),
(13, 7, '0001', 'Anulação', '', 1, NULL, NULL),
(14, 7, '0002', 'Rectificaão', '', 1, NULL, NULL),
(15, 8, '0001', 'Anulação', '', 1, NULL, NULL),
(16, 8, '0002', 'Rectificaão', '', 1, NULL, NULL),
(17, 9, '0001', 'Anulação', '', 1, NULL, NULL),
(18, 9, '0002', 'Rectificaão', '', 1, NULL, NULL),
(19, 10, '0001', 'Anulação', '', 1, NULL, NULL),
(20, 10, '0002', 'Rectificaão', '', 1, NULL, NULL),
(21, 11, '0001', 'Anulação', '', 1, NULL, NULL),
(22, 11, '0002', 'Rectificaão', '', 1, NULL, NULL),
(23, 12, '0001', 'Anulação', '', 1, NULL, NULL),
(24, 12, '0002', 'Rectificaão', '', 1, NULL, NULL),
(25, 13, '0001', 'Anulação', '', 1, NULL, NULL),
(26, 13, '0002', 'Rectificaão', '', 1, NULL, NULL),
(27, 14, '0001', 'Anulação', '', 1, NULL, NULL),
(28, 14, '0002', 'Rectificaão', '', 1, NULL, NULL),
(29, 15, '0001', 'Anulação', '', 1, NULL, NULL),
(30, 15, '0002', 'Rectificaão', '', 1, NULL, NULL),
(31, 16, '0001', 'Anulação', '', 1, NULL, NULL),
(32, 16, '0002', 'Rectificaão', '', 1, NULL, NULL),
(33, 17, '0001', 'Anulação', '', 1, NULL, NULL),
(34, 17, '0002', 'Rectificaão', '', 1, NULL, NULL),
(35, 18, '0001', 'Anulação', '', 1, NULL, NULL),
(36, 18, '0002', 'Rectificaão', '', 1, NULL, NULL),
(37, 19, '0001', 'Anulação', '', 1, NULL, NULL),
(38, 19, '0002', 'Rectificaão', '', 1, NULL, NULL),
(39, 20, '0001', 'Anulação', '', 1, NULL, NULL),
(40, 20, '0002', 'Rectificaão', '', 1, NULL, NULL),
(41, 21, '0001', 'Anulação', '', 1, NULL, NULL),
(42, 21, '0002', 'Rectificaão', '', 1, NULL, NULL),
(43, 22, '0001', 'Anulação', '', 1, NULL, NULL),
(44, 22, '0002', 'Rectificaão', '', 1, NULL, NULL),
(45, 23, '0001', 'Anulação', '', 1, NULL, NULL),
(46, 23, '0002', 'Rectificaão', '', 1, NULL, NULL),
(47, 24, '0001', 'Anulação', '', 1, NULL, NULL),
(48, 24, '0002', 'Rectificaão', '', 1, NULL, NULL),
(49, 25, '0001', 'Anulação', '', 1, NULL, NULL),
(50, 25, '0002', 'Rectificaão', '', 1, NULL, NULL),
(51, 26, '0001', 'Anulação', '', 1, NULL, NULL),
(52, 26, '0002', 'Rectificaão', '', 1, NULL, NULL),
(53, 27, '0001', 'Anulação', '', 1, NULL, NULL),
(54, 27, '0002', 'Rectificaão', '', 1, NULL, NULL),
(55, 28, '0001', 'Anulação', '', 1, NULL, NULL),
(56, 28, '0002', 'Rectificaão', '', 1, NULL, NULL),
(57, 29, '0001', 'Anulação', '', 1, NULL, NULL),
(58, 29, '0002', 'Rectificaão', '', 1, NULL, NULL),
(59, 30, '0001', 'Anulação', '', 1, NULL, NULL),
(60, 30, '0002', 'Rectificaão', '', 1, NULL, NULL),
(61, 31, '0001', 'Anulação', '', 1, NULL, NULL),
(62, 31, '0002', 'Rectificaão', '', 1, NULL, NULL),
(63, 32, '0001', 'Anulação', '', 1, NULL, NULL),
(64, 32, '0002', 'Rectificaão', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_creditos`
--

CREATE TABLE `nota_creditos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `motivo_anulacao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `motivo_anulacao_designacao` varchar(191) DEFAULT NULL,
  `tipo_motivo_anulacao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tipo_motivo_anulacao_designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `nota_creditos`
--

INSERT INTO `nota_creditos` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `documento_id`, `documento_numero`, `motivo_anulacao_id`, `motivo_anulacao_designacao`, `tipo_motivo_anulacao_id`, `tipo_motivo_anulacao_designacao`, `created_at`, `updated_at`) VALUES
(1, 14, 'NC  2024/1', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-08 11:23:04', '2024-10-08 00:00:00', 27, 27, 25, 'SANTA NEVES', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'aMs5Cj5Qpfh3GRUvyoiGoYXyGll6Ab7lglhU0Dk130qs4azwqRB6qyDMJjpInyTz0d26tF1gKZFNSFl/rwMYTqJs8QHL46nyrrnSraJDCrWwE4bmVwQpqrYI7+5SspWvd6zdPPw3MC7BnTAoxHxkaUTCJtQZcWiD76eMlW9NiGs=', 1, 82, 'FR  202479', 27, 'Anulação', 96, 'Erro no (s) preço (s)', '2024-10-08 09:23:05', '2024-10-08 09:23:05'),
(2, 14, 'NC  2024/2', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-10-17 12:30:50', '2024-10-17 00:00:00', 27, 27, 25, 'SANTA NEVES', NULL, 15000.00, 0.00, 0.00, 0.00, 15000.00, 'a1nlyrX6Mb3OrzKH9yGP/GiOEGPbbGEKGcrV8GYvdKqQ0KdKfKDxIYqoT51sTJ9DJUIy8BU3HKxNp8UoSfnRJsU8MRPsv0zMP18coNRedaEhbTauncHv5cW7qRbTotu7gd4CixJ7EdW4gV4a7XJOfrVJlCPwE7Ucis8AXOi5+Nk=', 1, 106, 'FR  2024103', 27, 'Anulação', 96, 'Erro no (s) preço (s)', '2024-10-17 10:30:50', '2024-10-17 10:30:50'),
(3, 14, 'NC  2024/3', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-01 08:45:16', '2024-11-01 00:00:00', 27, 27, 25, 'SANTA NEVES', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'l2jJioQq4vESJs37oWpKWr7XhzujIulfJkiR4zZ/4xVedOjn2yYxHciS64Orwv77gXSp8Dn+hmmDRVPol5oEx6eNMHWqhrSVf/TX9TCOT00PHMQ7TocBZoobwpmfu5Is1Lg0IIZ/ROuhhbwNVvOlX/ErZZzvAMnNdYhcJmUrOUY=', 1, 125, 'FR  2024121', 27, 'Anulação', 92, 'Ausência de desconto na fatura', '2024-11-01 07:45:16', '2024-11-01 07:45:16'),
(4, 14, 'NC  2024/4', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 11:15:42', '2024-11-05 00:00:00', 27, 27, 25, 'SANTA NEVES', NULL, 3000.00, 0.00, 0.00, 0.00, 3000.00, 'OJ7psGtsOItviWP6BeSrW5V65+abGkVunX0DqiqFplI0FFQfXd5ZcEqfQil9glysF5CviKMfnD/HXJGVuQ/HwmIxUvBi91phGt50euLppH4ZjIBCfqlrKDX4Mq+8AyTyYmQI0ryNTfnTBfIe8WADxyHDDrM79/+PpxfCtv07uk8=', 1, 141, 'FR  2024137', 27, 'Anulação', 96, 'Erro no (s) preço (s)', '2024-11-05 10:15:42', '2024-11-05 10:15:42'),
(5, 14, 'NC  2024/5', 20, 'Consumidor Final', 'Consumidor Final', 'Urbanização Nova Vida - Cambambe 2 -63', '2024-11-05 12:37:36', '2024-11-05 00:00:00', 27, 27, 25, 'SANTA NEVES', NULL, 5000.00, 0.00, 700.00, 0.00, 5700.00, 'Hsfcf90V3zvhe1FjEsmd927Sfk7vjSzcF2b/mhZEvq50scvhxhdZ3eZtvDcRnM143F5P46gdi0bwWgPw79RALXMQZwPmWdzu27a9IKfDUTTLspQylq5lM3nwXWAYeKaEqztjmo9bkNz9soRKxul8FFv0oI8AKXZkqMkYNVTcI34=', 1, 143, 'FR  2024139', 27, 'Anulação', 96, 'Erro no (s) preço (s)', '2024-11-05 11:37:36', '2024-11-05 11:37:36'),
(6, 30, 'NC  2024/1', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-27 16:59:13', '2024-11-27 00:00:00', 59, 59, 44, 'Administrador', NULL, 205600.00, 0.00, 0.00, 0.00, 205600.00, 'sSf1pEytksj6SY1OkHDSQ0NQnTVEAxkbMSOW5Sab6qTM4tZxUixtVSzG7AfQVqQzcuD4VmHfbFNoKQasvANMwvGB9kdwEB3LljOQ74EKJvP7XTo26Ykzt8rusdWVQei/6LF4/Iy0Vwej/wbjHXKXLqla0EEaurqGrgNgqPxi8/Y=', 1, 19, 'FT 2024 2024/1', 59, 'Anulação', 204, 'Ausência de desconto na fatura', '2024-11-27 15:59:13', '2024-11-27 15:59:13'),
(7, 30, 'NC  2024/2', 60, 'Consumidor Final', 'Consumidor Final', 'Bairro zango 1, escola do compão nº s/município: Viana provincia:luanda', '2024-11-28 13:24:45', '2024-11-28 00:00:00', 59, 59, 44, 'Administrador', NULL, 90000.00, 0.00, 0.00, 0.00, 90000.00, 'n3nU2qw8+dE9lCmPwfsBdH1ENbYXR0lJxLNPPvsZuWiiWy6WYQJS6emUmFDoPOtcrvxHzM/yPxQN6N8tMd/Yytgk2IX+OA2jtXtE6TY/ykcOF/rqVhSWTCr2ATLm3jatN0rprpiqdnbLiVc+QXWHgMzPni/C9oYcXCXRmfawBps=', 1, 151, 'FR  20241', 59, 'Anulação', 204, 'Ausência de desconto na fatura', '2024-11-28 12:24:46', '2024-11-28 12:24:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_debitos`
--

CREATE TABLE `nota_debitos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `sigla` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `empresa_id`, `designacao`, `sigla`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Angola', 'AO', 1, NULL, NULL),
(2, 1, 'Portugal', 'PT', 1, NULL, NULL),
(3, 2, 'Angola', 'AO', 1, NULL, NULL),
(4, 2, 'Portugal', 'PT', 1, NULL, NULL),
(5, 3, 'Angola', 'AO', 1, NULL, NULL),
(6, 3, 'Portugal', 'PT', 1, NULL, NULL),
(7, 4, 'Angola', 'AO', 1, NULL, NULL),
(8, 4, 'Portugal', 'PT', 1, NULL, NULL),
(9, 5, 'Angola', 'AO', 1, NULL, NULL),
(10, 5, 'Portugal', 'PT', 1, NULL, NULL),
(11, 6, 'Angola', 'AO', 1, NULL, NULL),
(12, 6, 'Portugal', 'PT', 1, NULL, NULL),
(13, 7, 'Angola', 'AO', 1, NULL, NULL),
(14, 7, 'Portugal', 'PT', 1, NULL, NULL),
(15, 8, 'Angola', 'AO', 1, NULL, NULL),
(16, 8, 'Portugal', 'PT', 1, NULL, NULL),
(17, 9, 'Angola', 'AO', 1, NULL, NULL),
(18, 9, 'Portugal', 'PT', 1, NULL, NULL),
(19, 10, 'Angola', 'AO', 1, NULL, NULL),
(20, 10, 'Portugal', 'PT', 1, NULL, NULL),
(21, 11, 'Angola', 'AO', 1, NULL, NULL),
(22, 11, 'Portugal', 'PT', 1, NULL, NULL),
(23, 12, 'Angola', 'AO', 1, NULL, NULL),
(24, 12, 'Portugal', 'PT', 1, NULL, NULL),
(25, 13, 'Angola', 'AO', 1, NULL, NULL),
(26, 13, 'Portugal', 'PT', 1, NULL, NULL),
(27, 14, 'Angola', 'AO', 1, NULL, NULL),
(28, 14, 'Portugal', 'PT', 1, NULL, NULL),
(29, 15, 'Angola', 'AO', 1, NULL, NULL),
(30, 15, 'Portugal', 'PT', 1, NULL, NULL),
(31, 16, 'Angola', 'AO', 1, NULL, '2024-09-02 15:45:52'),
(32, 16, 'Portugal', 'PT', 1, NULL, NULL),
(33, 17, 'Angola', 'AO', 1, NULL, NULL),
(34, 17, 'Portugal', 'PT', 1, NULL, NULL),
(35, 18, 'Angola', 'AO', 1, NULL, NULL),
(36, 18, 'Portugal', 'PT', 1, NULL, NULL),
(37, 19, 'Angola', 'AO', 1, NULL, NULL),
(38, 19, 'Portugal', 'PT', 1, NULL, NULL),
(39, 20, 'Angola', 'AO', 1, NULL, NULL),
(40, 20, 'Portugal', 'PT', 1, NULL, NULL),
(41, 21, 'Angola', 'AO', 1, NULL, NULL),
(42, 21, 'Portugal', 'PT', 1, NULL, NULL),
(43, 22, 'Angola', 'AO', 1, NULL, NULL),
(44, 22, 'Portugal', 'PT', 1, NULL, NULL),
(45, 23, 'Angola', 'AO', 1, NULL, NULL),
(46, 23, 'Portugal', 'PT', 1, NULL, NULL),
(47, 24, 'Angola', 'AO', 1, NULL, NULL),
(48, 24, 'Portugal', 'PT', 1, NULL, NULL),
(49, 25, 'Angola', 'AO', 1, NULL, NULL),
(50, 25, 'Portugal', 'PT', 1, NULL, NULL),
(51, 26, 'Angola', 'AO', 1, NULL, NULL),
(52, 26, 'Portugal', 'PT', 1, NULL, NULL),
(53, 27, 'Angola', 'AO', 1, NULL, NULL),
(54, 27, 'Portugal', 'PT', 1, NULL, NULL),
(55, 28, 'Angola', 'AO', 1, NULL, NULL),
(56, 28, 'Portugal', 'PT', 1, NULL, NULL),
(57, 29, 'Angola', 'AO', 1, NULL, NULL),
(58, 29, 'Portugal', 'PT', 1, NULL, NULL),
(59, 30, 'Angola', 'AO', 1, NULL, NULL),
(60, 30, 'Portugal', 'PT', 1, NULL, NULL),
(61, 31, 'Angola', 'AO', 1, NULL, NULL),
(62, 31, 'Portugal', 'PT', 1, NULL, NULL),
(63, 32, 'Angola', 'AO', 1, NULL, NULL),
(64, 32, 'Portugal', 'PT', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `empresa_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'pos', 'web', NULL, NULL),
(2, 1, 'painel', 'web', NULL, NULL),
(3, 1, 'artigo', 'web', NULL, NULL),
(4, 1, 'receita_despesa', 'web', NULL, NULL),
(5, 1, 'cliente', 'web', NULL, NULL),
(6, 1, 'documento', 'web', NULL, NULL),
(7, 1, 'relatorio', 'web', NULL, NULL),
(8, 1, 'configuracoes', 'web', NULL, NULL),
(9, 1, 'painel_gestao', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proformas`
--

CREATE TABLE `proformas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `proformas`
--

INSERT INTO `proformas` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_factura`, `created_at`, `updated_at`) VALUES
(1, 2, 'PP  2024/1', 3, 'Alberto Capingãla', '006217158BE048', 'Estrada Nacional 250, Bairro Azul 1', '2024-08-15 12:37:30', '2024-08-16 00:00:00', 4, 3, 2, 'Administrador', 'Fornecimento de materiais para escritórios.', 25994.00, 519.88, 3639.16, 0.00, 29113.28, 'GUVJF9QXsi3zu3ZURLAoZS29N4ZccUn3F1ttk7gIlwBaEApYymT9yYkNSZ829s/xLrFnu7/S+xuOVc/vD1rA7xZxRsd52f/BQuseuTsRogjsz+IusB8CFeK+1JSXDXamp/c72+FJdeDDvZaedYeg4DGIQOUx81IrgQqvviFA19Y=', 1, 0, '2024-08-15 10:37:30', '2024-08-15 10:39:20'),
(2, 5, 'PP  2024/1', 7, 'Diogo', '12345678', 'Maculusso', '2024-08-23 14:35:59', '2024-08-23 00:00:00', 9, 9, 11, 'Administrador', 'Feito na formação do sistema', 6500.00, 0.00, 0.00, 0.00, 6500.00, 't/zfvfOQ/oOJrbSAMgd/2VgFVIb3yah0P1xg/e8UcH5ZrYLfQw6EgHAToHMJBhsCUFdfTT7uDImm7pFTe0A4mCK5qRStCFY8FPOE2uBYRvH0IN3nEURAiYJMJhfs22eQtJooa1U2FDDpr38CoKr/AH6Lg0jV+Y/zFo/JXLMX+nM=', 1, 0, '2024-08-23 12:35:59', '2024-08-23 12:38:44'),
(3, 7, 'PP  2024/1', 10, 'primeiro Cliente', '12345678', 'Luanda', '2024-08-26 11:43:27', '2024-08-26 00:00:00', 14, 13, 14, 'Administrador', 'Esta proforma está  aser feita no memoneto da formação do sistema.', 7000.00, 0.00, 0.00, 0.00, 7000.00, 'myjOh9ts+xnU+AWsRwB8NPWqgMOH4PpNMbE/uLF0TnEjFFZk7EDzrGDz0k0rKaowKSscuwUj+NuYOed3x81fz629lJsU1qINcfWJSh2Oph2CideRO1hEdZv3Bq50zLh8PON07BZzYIQeioIR3Hqd2QjkdDfvWKie3ePyjkZx48Y=', 1, 0, '2024-08-26 09:43:28', '2024-08-26 09:45:10'),
(4, 1, 'PP 2024 2024/1', 15, 'Empresa A', '5000507091', 'Luanda', '2024-08-28 13:37:42', '2024-08-28 00:00:00', 2, 1, 7, 'Costa Lima', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'ofViUDlg/uKPWccvT/8/2w2ejfDNUpNjeMniGM0fDJ6A7T1+G2frmoU6hB+simoLmsjKRMEdXXSIAigp7fALsCnvUAtQ+XHcZOaUnfYNOmvimQi0KJvKap7MqYYa1K7ZxEmWNiY78Mx49DY6lcZHOBribkOwVdTw2sOdNG+ertU=', 1, 1, '2024-08-28 11:37:42', '2024-08-28 11:37:42'),
(5, 1, 'PP 2024 2024/2', 15, 'Empresa A', '5000507091', 'Luanda', '2024-08-28 14:14:27', '2024-08-28 00:00:00', 2, 1, 7, 'Costa Lima', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'dUR2l4A1lw7XKG0Cht1sVfrBIzooBf1/MY++S9pJ6PVrqvlVyCqCdTaFx0IkBNrlR11t4rLwH0+J6Ntq5lTFbVeAvc2BgZSkw/YmudpVzGdBFDb3Z8cBuTUC5zgohn/+KiKm8bFEMtZiyGQhAdWCzeAwzbulz77cCtoQ0YEn8vE=', 1, 0, '2024-08-28 12:14:27', '2024-08-29 09:37:28'),
(6, 7, 'PP  2024/2', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 11:44:34', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 1212500.00, 0.00, 0.00, 0.00, 1212500.00, 'F4cgQqEroNbiAxBeSKmD4Iqj962cKJ+MXEuHuCZgssdgwDXxs5pZ+K6luGICgj2WSIysLogFRDAGqp5fam/2diYxPApOEo14K0nscDLOcKf3WgyNJ8yuP+SaRQ6TYYofGee8bKiva/JdyEAsgKtUpKMu05pXTDmz4zRPg1AEq5o=', 1, 1, '2024-08-30 09:44:34', '2024-08-30 09:44:34'),
(7, 7, 'PP  2024/3', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 12:06:20', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 12147500.00, 0.00, 0.00, 0.00, 12147500.00, 'bbr0GCuanhVzGwHQ22UvEVOk4G6KOxcssvGYZLjmTtrBeipskwFbR++uQYmFHDjlPzjs3XbXg3qYXevv925D3l1Xr6+B5RRJbD0a4AwS7VDVgvVlaNQaoKrEzoAIPu+P1t6uak2c7I4e6DDpb8+fAcw+AgjuiBQAmZUjKjr8G10=', 1, 1, '2024-08-30 10:06:20', '2024-08-30 10:06:20'),
(8, 7, 'PP  2024/3', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 12:06:43', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 12147500.00, 0.00, 0.00, 0.00, 12147500.00, 'jGsA3dccanZj1R6407KJ4sS8vRFaHvR9k8Dr1G8EMCyAIhWmsliuJoZHoLoF41pRQF6I8fWLeqF5K62d/bk48iZgkjf2MlUXb+ZZiwSuxh3Ai0WRCAasbteURoA/h/0wGoPZvQ594dvXrJT0pHeRTnoJeMipZvDiXfvfVsFVX2k=', 1, 1, '2024-08-30 10:06:43', '2024-08-30 10:06:43'),
(9, 7, 'PP  2024/3', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 12:06:44', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 12147500.00, 0.00, 0.00, 0.00, 12147500.00, 'GxF7TJrk7fwbTUF+2k1emr4Lb5yGR41r0dSIfId0UxtXgJ7+ZvuT/Ds6g0jrJdWyb6uqjjJE0Ps79oNxTRTMjoVcoA+LogckE31LLi2l7bnOG8QQAJ6D7CNv/6ceo21bAzQFTJjBl/DH1KuMwaGgF81gc8kRppZj/plf9I/9YJ0=', 1, 1, '2024-08-30 10:06:44', '2024-08-30 10:06:44'),
(10, 7, 'PP  2024/6', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 12:10:03', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 227000.00, 0.00, 0.00, 0.00, 227000.00, 'jbSG9H+yGAzlATU5YKjYBfSXM2I4yKuvHTeOe4l7BEvE2lrq5N3nIK+PpzOobuxHyUeY0y6pNZSbXzbJDkcQhBdjHv+HXVBhiyJIEEwE6hUed6TCeeAMaKbeky/y2bx/xSyzF7vkWX6MjTuHs8FWhslSB3ZQBFYd28cajDJ12zU=', 1, 1, '2024-08-30 10:10:03', '2024-08-30 10:10:03'),
(11, 7, 'PP  2024/7', 21, 'Wine o\' clock', '5000555821', 'Ilha de luanda avenida mortala mohamede', '2024-08-30 12:47:34', '2024-08-30 00:00:00', 13, 13, 15, 'Joel Mariscos', NULL, 224000.00, 0.00, 0.00, 0.00, 224000.00, 'idbdIQPoZGJdsTOo4Htupba/pY1EVDhn6xhG/94StomrSZP48Bu+E0DuyDFqMgJ9H3Squv38AH0dOjkGWx5hgtBV39exqSeSNMP+U4318MJHWB3WOKv39u++CFhXbd1vaURj/eTCtXkPLzKi4Jjy/bL0aHIw+Yez09XU4E/aXtE=', 1, 1, '2024-08-30 10:47:34', '2024-08-30 10:47:34'),
(12, 19, 'PP  2024/1', 29, 'EQUADOR', '999999999', 'Largo Tristão - Luanda', '2024-10-03 09:38:55', '2024-10-03 00:00:00', 37, 37, 32, 'Augusto Xavier Joaquim', NULL, 150.00, 0.00, 0.00, 0.00, 150.00, 'aYoObh8XG160plV+LPXr0usxVlEzFNwyQ213U77bMbJWdxlWtdzdHZqoSB5h0l0D9saGSlqWSmxJic4M8WNl4t50QkZO1XLvdZ0DocLmK36u1W5cv618z1ADqygwTQ9Nt/G7hyxtBS2iiaeIq2mBBu3noiKrRWQ9h9bVbFBCsAY=', 1, 0, '2024-10-03 07:38:55', '2024-10-03 07:45:07'),
(13, 19, 'PP  2024/2', 30, 'COMPLEXO ESCOLAR BOA AMIZADE', '999999999', 'BAIRRO DANGAREAUX', '2024-10-03 10:11:11', '2024-10-03 00:00:00', 38, 37, 32, 'Augusto Xavier Joaquim', NULL, 45000.00, 0.00, 0.00, 0.00, 45000.00, 'AdeSRsGdcFb5nh6oHM3XrLv+LUlSwlzqFfZ4HXzDnnRzMqalg3lqydIYL5dSapRs63k6/WzlZOt/Eh15WW63MYpYvhAzTC3KVotUuh1KbbJAu2tOr+ZwV1+0GFZlS6HNn0PdJwylBhDVobvZPAZ44DywK+B8K++U+1JKoD4aDYA=', 1, 1, '2024-10-03 08:11:11', '2024-10-03 08:11:11'),
(14, 23, 'PP  2024/1', 35, 'Joyce', '0000001', 'cassequel', '2024-10-11 12:57:25', '2024-10-11 00:00:00', 45, 45, 37, 'Administrador', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'rETg1hz/wS7trFxQjja3qLuE14LGqf/t9+V3DIdQ3MUV2rukREh9CfSr4VWdLLWsXdpMeDfpdgXVZUZ6529SM53EN3Rd+chxNn4hUM99qxUOLPiCCKWRIJhSvSoyF3mSfXmvLKXFkCnWaGCEZ1P08ESwWR58kk7XIgE3Zcvob2s=', 1, 0, '2024-10-11 10:57:26', '2024-10-11 11:41:50'),
(15, 24, 'PP  2024/1', 37, 'Chinangol', '5403094229', 'Avenida Fidel Castro', '2024-10-16 14:26:29', '2024-10-16 00:00:00', 48, 47, 38, 'Administrador', NULL, 500000.00, 0.00, 0.00, 32500.00, 467500.00, 'IQWOiznvITt8mhg4KWALTEC0BB7n7ub3NgBJDjVDRXU6r7ykkVx6626OWvBijYiEQU+tYu8wZvKVs0f5bICSnG7gCaLLBPiZUwlMwPx5EpgTgk05eysxx+2NnLrhSrHbPyM4Og5HD0uT8eij10brZ7UyRct6oUzpqPfDXsHU5T8=', 1, 0, '2024-10-16 12:26:29', '2024-10-16 12:26:42'),
(16, 28, 'PP  2024/1', 48, 'Sr Nicolau', 'Proforma', 'Luanda/Angola', '2024-11-01 21:52:46', '2024-11-01 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 769000.00, 0.00, 0.00, 0.00, 769000.00, 'pi5PzRTkO7EFcFJ/oN7m+I7LQIScshsXiXBNOI8lBtSKSz6nyaSu0z/dSvBeSi86eGHIfn7t52s3lCL/Pt+bEVtlT3tQ3UUH7S9bvD4NJY+2tOxgRPdHF4zhgC0p14U4CChbRM4g+svxS2yp44RAhN+uRnGIpDuinDiieEUX8bA=', 1, 1, '2024-11-01 20:52:47', '2024-11-01 20:52:47'),
(17, 28, 'PP  2024/2', 48, 'Sr Nicolau', 'Proforma', 'Luanda/Angola', '2024-11-01 22:06:28', '2024-11-01 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 646000.00, 0.00, 0.00, 0.00, 646000.00, 'hpg59LkV1yMuih06WXyKJyhiEOCXPNUgJCtdJeAOJOJ3l9jJapTqPsKIf9jF1MH1Q0F2o5zlzMBUZV38hbzMUH+S2Qa+L1QXklkm13wiivPp6igmkT6bBBkNx/KTbAJeZJI5o3c6aOx1oy2RY7z/tr3Hkcr3vJ3lCT0L6b2IXdA=', 1, 1, '2024-11-01 21:06:28', '2024-11-01 21:06:28'),
(18, 28, 'PP  2024/3', 48, 'Sr Nicolau', 'Proforma', 'Luanda/Angola', '2024-11-01 22:40:57', '2024-11-01 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 2056000.00, 0.00, 0.00, 0.00, 2056000.00, 'AyHr7/dHnQWO3DOgJGLzYofefuIIiO0E7Agn/M36Z3tESPy3Y9jasXuIohxzdjnhZvEoufjHESTk23jNIMC6byuHWfDuvIj90Sg5jq/MP/cQskOjJYtoq7MUkv8qUW9lxJZxgEwpY609Exb5p7WEslUqfeJXHOPtST8KoUjiEi0=', 1, 1, '2024-11-01 21:40:57', '2024-11-01 21:40:57'),
(19, 28, 'PP  2024/4', 47, 'Alaza Global Limitada', '540 116 7920', 'Luanda/Angola', '2024-11-07 16:03:35', '2024-11-07 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 1833100.00, 0.00, 0.00, 0.00, 1833100.00, 'mHZyzGi3Xp/kMSzrBcwsU+0YYC+2uBB0S04uiulMnytCv5lM5jJtsP5m+vbLka57h6n88nCeo4LOfDliRQaHV4aoDxLE4yCQP3bflB3tcpFQLnpK3ZD3OD6chxLrqFOR+Qy4jYVMXmc8c1p6CUM2Se17mWqH5oHOJsIkwfI+mGs=', 1, 0, '2024-11-07 15:03:35', '2024-11-07 15:05:47'),
(20, 28, 'PP  2024/5', 49, 'Sr. Miguel', '0000000', 'Luanda', '2024-11-07 16:13:38', '2024-11-07 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 1833100.00, 0.00, 0.00, 0.00, 1833100.00, 'Xy+nxbO7z5ye476RYgPte58Wf901jjVTDOcewqqwGGDJHRTN1KMalJlCRSt61Ze2jJa0HzoQ373Pds2aBEQO87CIwK9lpYMRfD2PvwYI0kUcuZBRUZ158z2/QKw9kq/N12N6BJC4LDDaXcFkLXpj6hWMVtHMxFouSYfkFyU2Olk=', 1, 1, '2024-11-07 15:13:38', '2024-11-07 15:13:38'),
(21, 28, 'PP  2024/6', 50, 'Sr. Guilherme', '000000', 'Luanda', '2024-11-08 17:52:16', '2024-11-08 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 180200.00, 0.00, 0.00, 0.00, 180200.00, 'CSlERO0wv1y/NGW08JpxMamEDZUvNhnulxBaAEfczqcl1Ee+QyqOtzfpSvbc6ym5L6ZpFnDZFylZ1gyyzMehsE0d5uXc8iLnDwZRyNjZFx+kJ3A8puKZy7RoNsvLEQiDhG1DoELHsdR5R85PNnrZ8XctnXmKnowN+Pbe/Z6xR7s=', 1, 1, '2024-11-08 16:52:17', '2024-11-08 16:52:17'),
(22, 28, 'PP  2024/7', 50, 'Sr. Guilherme', '000000', 'Luanda', '2024-11-08 17:57:52', '2024-11-08 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 107400.00, 0.00, 0.00, 0.00, 107400.00, 'HbKAt9mXfdvKgmp5iW+hy06aGKfHCy/Sa4Iilnhj9NXZJ6uBB5RX5I8dXsuNF/7/iQdXISxAu1BOUZHq7a1wBhwpuI7S2l1ymtIdZCjGq+HOsjx148B+xZzJAOXrbo8tYpUMqhMY1UpcNStDccbJ8vyIyo3wGk1zjGnVIUvVv4w=', 1, 1, '2024-11-08 16:57:52', '2024-11-08 16:57:52'),
(23, 28, 'PP  2024/8', 51, 'OUSE INVESTIMENT,LIMITED', '5401131232', 'Luanda/Angola', '2024-11-10 19:30:53', '2024-11-10 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 37000.00, 0.00, 0.00, 0.00, 37000.00, 'J5UgK7QTawV2OU1xYJoB54eIp0BGUukDu8ZMOIZSYTib/yUBqdbnSAZIfxoJuHuM4UDJBD/7HhcRdC5+GtqN/IOzxcjQNh+d8GHSFtcwFLSLhis6pur55bP6Fzlc+d4RALo2EkFEydpgXF954yG93zZa0K12/RrkAJDaDQOxMSM=', 1, 1, '2024-11-10 18:30:54', '2024-11-10 18:30:54'),
(24, 28, 'PP  2024/9', 52, 'Sr Mendes', '000000', 'Luanda/Angola', '2024-11-10 20:06:08', '2024-11-10 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 1050980.00, 0.00, 0.00, 0.00, 1050980.00, 'XZauA/hd7wvLeqefCGbtfidBNeH82AFQXqY9MFFNgw+ZcKYLWsbUrFcTcAlMKPMEuGvvFRIvs1zO+dYsEb/yc6F6G/vxe93trd6JdoSP4l+bMIyrUBTClnU8nu4qAQFu3WPKQAgjNnA9tXgDqNIBz3fZOs852ZfNPMCVzwnyfKc=', 1, 1, '2024-11-10 19:06:08', '2024-11-10 19:06:08'),
(25, 28, 'PP  2024/10', 52, 'Sr Mendes', '000000', 'Luanda/Angola', '2024-11-10 20:29:00', '2024-11-10 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 881680.00, 0.00, 0.00, 0.00, 881680.00, 'DqqNIkjHDU+JVZaMJDrwLby/1X2ZRNATkvEAbrMjTqZ/FNwikoejU72s8a6BSOUHKJUvfpuRjcI0c4jCJ43yrg/94bL4hIwjyMkn6jY2aXTlfTWVdGW8kOINWKFoxKcTIoYcq2gFhVeziHF+gW20EJcfIiKkSKLRxEJHCqvXpac=', 1, 1, '2024-11-10 19:29:00', '2024-11-10 19:29:00'),
(26, 28, 'PP  2024/11', 52, 'Sr Mendes', '000000', 'Luanda/Angola', '2024-11-10 20:51:48', '2024-11-10 00:00:00', 55, 55, 42, 'Fernando Masa Simão', NULL, 817720.00, 0.00, 0.00, 0.00, 817720.00, 'oV2osDEMnuYl/j1LP4WfaSYx2cCRDGKUzyrtQrH1xaPob775AZeLggFZ2sst4n/R+KlOWyMwdM/JL7ZKo9NfdsUDPF63Q/oXPI/+WM5suoKP3GI6rGNf0zPIGKVJVtOU1QyJ8pEHa5BVw/+z3f8uUddcYkTXk8STIY2OcafpPBc=', 1, 1, '2024-11-10 19:51:49', '2024-11-10 19:51:49'),
(27, 31, 'PP  2024/1', 63, 'ANGOLEVA - PRESTAÇÃO DE SERVIÇOS & COMÉRCIO GERAL, LDA', '5002202646', 'Luanda, Município de Luanda, Distrito Urbano da Ingombotaa, Bairro Kinaxixi, Rua Comandante Eurico, Edifício 64, Apartamento nª SN', '2024-12-03 11:26:22', '2024-12-03 00:00:00', 61, 61, 46, 'Luís Inacio Gomes', NULL, 100000.00, 0.00, 0.00, 0.00, 100000.00, 'pEZcQe63mQyaECdhmUPsjddqkmKT+qSCc2HNDFdWjL/7E5G4R7PCc1DguuRnYSge+FJTY4ava5VJEbNXhiMPYhZY2U8qGvVT6eK90wH5n3+oPITv+e3nyIzPx6y1OXIWHE5IFia8/0vy/45iRqBfIO+HEr8icEt3OtSRD0vXpJc=', 1, 1, '2024-12-03 10:26:22', '2024-12-03 10:26:22'),
(28, 31, 'PP  2024/2', 64, 'NOBLE GROUP S.A.', '5417181641', 'Cacuaco', '2024-12-14 15:08:21', '2024-12-20 00:00:00', 61, 61, 46, 'Luís Inacio Gomes', NULL, 700000.00, 0.00, 0.00, 45500.00, 654500.00, 'NhuhcVCDkN6yym7N2SQ2Wr4VvQpy9n+TWcTylWrj35cp4GZUGttTiI2r1f1he0WB/meTI8Rif+2f8E7JB4CE4csyRZVpiBIbpn9Y4LbgNcetl/6hlIvZwBOj83QQQGuqrX/zcshjX6kXpg1n2LWdKNEBHulwv6eKzesdQX5WVMM=', 1, 1, '2024-12-14 14:08:22', '2024-12-14 14:08:22'),
(29, 31, 'PP  2024/3', 64, 'NOBLE GROUP S.A.', '5417181641', 'Cacuaco', '2024-12-16 07:52:27', '2024-12-16 00:00:00', 61, 61, 46, 'Manuel Quissanga', 'O DEAL - PREST. DE SERV. E COM. GERAL / IBAN 0051 0000 2189 8909 1015 3', 700000.00, 0.00, 0.00, 45500.00, 654500.00, 'SYhIufS1jwbEarl1evZ//4D+pjdWdMJnvhXaT2yV2hBKvKV/gBT67zVPkKB+oxqPJVRUkFqSR6Yya+kuXGOuEhA4Rq1fmvqd4BLxZmI0+SKYmtpBEHYX99Kifs+YZLiwhrjbvmjlDuh1ySAXE36bleYvkva8ocDGut6FNBFimpU=', 1, 1, '2024-12-16 06:52:27', '2024-12-16 06:52:27'),
(30, 31, 'PP  2024/4', 64, 'NOBLE GROUP S.A.', '5417181641', 'Cacuaco', '2024-12-16 07:56:23', '2024-12-16 00:00:00', 61, 61, 46, 'Manuel Quissanga', 'O DEAL - PREST. DE SERV. E COM. GERAL \nIBAN 0051 0000 2189 8909 1015 3', 700000.00, 0.00, 0.00, 45500.00, 654500.00, 'aeEfFhUsY8oxgnX82DIfiN37VUmTKMVIcDcrn16eFtwae6/hgZI2v5mJOn2fZLrBoGpDTlJh0OlHN5kQuFB4+TLYebDBs4GHinrQSJlOXc1W8iauzaOYNlFpDxVVQUMOPj3CSQ7NM5jNB7DgKW05EKaa8VT1jehyuG2in2i/uuE=', 1, 1, '2024-12-16 06:56:23', '2024-12-16 06:56:23'),
(31, 31, 'PP  2024/5', 64, 'NOBLE GROUP S.A.', '5417181641', 'Cacuaco', '2024-12-16 07:59:16', '2024-12-16 00:00:00', 61, 61, 46, 'Manuel Quissanga', 'O DEAL - PREST. DE SERV. E COM. GERAL \nIBAN 0051 0000 2189 8909 1015 3', 700000.00, 0.00, 0.00, 45500.00, 654500.00, 'syiOIn/LhU2MZ+j+B4cZde5bfGOQ41usPz0+ZiRZvBKWZQTJ9T9MespqM/hZA+dBtDLu761znYyl+TS1mkgi0QBps0/87Zu2mwm3evhrSqoCGEe+OhZFvJHfYZVFCZd3hhq0iAhPLhbogyBiVRcFnSlBOXGOc5GJxkpuUyWu6bc=', 1, 1, '2024-12-16 06:59:16', '2024-12-16 06:59:16'),
(32, 31, 'PP  2024/6', 61, 'Consumidor Final', 'Consumidor Final', 'Rua Comandante Eurico, Apartamento n.° 3, Edificio 64, Kinaxixe,  Municipio da Ingombotas, Província de Luanda.', '2024-12-16 09:21:34', '2024-12-16 00:00:00', 61, 61, 47, 'Manuel Quissanga', NULL, 150000.00, 0.00, 0.00, 0.00, 150000.00, 'hA8yEagzB6rdmr+n2IAA7DSUBONLBcxK9jFbBOJS3O+Au16R+z7mwR67fvIDJmzyjMNmBkKfXdMbeb8+z4b7hDKcOU2EID/iEi+3+JzobkmYGzScOXqSwoYgJpKhOJpZ53amNQhTvmQlKHo7P3JqhdaZPmIJEOUQMvPqtoETFxQ=', 1, 1, '2024-12-16 08:21:35', '2024-12-16 08:21:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita_despesas`
--

CREATE TABLE `receita_despesas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `total` decimal(30,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `receita_despesas`
--

INSERT INTO `receita_despesas` (`id`, `empresa_id`, `codigo`, `designacao`, `tipo`, `total`, `data`, `descricao`, `created_at`, `updated_at`) VALUES
(2, 2, '0001', 'Exclusão', 2, 58746.44, '2024-08-22', NULL, '2024-08-22 08:57:18', '2024-08-22 08:57:18'),
(3, 7, '0001', 'Licença do Sistema de faturação-3 meses', 2, 3000.00, '2024-08-23', 'Empresa Átomo', '2024-08-26 09:48:48', '2024-08-26 09:53:41'),
(4, 14, '0001', 'Almoço', 2, 6000.00, '2024-09-02', NULL, '2024-09-02 13:58:32', '2024-09-02 13:58:32'),
(5, 14, '0002', 'operativo', 2, 1000.00, '2024-09-02', NULL, '2024-09-02 13:59:26', '2024-09-02 13:59:26'),
(6, 14, '0003', 'água ,saco,papel do tpa', 2, 5000.00, '2024-09-02', NULL, '2024-09-02 14:21:44', '2024-09-02 14:25:15'),
(7, 14, '0004', 'Almoço', 2, 6000.00, '2024-09-04', NULL, '2024-09-04 14:12:43', '2024-09-04 14:12:43'),
(8, 14, '0005', 'operativo', 2, 2000.00, '2024-09-04', NULL, '2024-09-04 14:13:01', '2024-09-04 14:13:01'),
(9, 14, '0006', 'GASTOS DO DIA', 2, 7000.00, '2024-09-13', NULL, '2024-09-13 13:24:51', '2024-09-13 13:24:51'),
(10, 14, '0007', 'despesas do dia', 2, 7000.00, '2024-09-20', NULL, '2024-09-20 13:07:12', '2024-09-20 13:09:19'),
(11, 14, '0008', 'despesas do dia', 2, 8000.00, '2024-09-24', NULL, '2024-09-24 13:27:52', '2024-09-24 13:27:52'),
(12, 14, '0009', 'despesas do dia', 2, 6000.00, '2024-09-25', NULL, '2024-09-25 13:12:18', '2024-09-25 13:12:18'),
(13, 14, '0010', 'despesas do dia', 2, 8000.00, '2024-09-26', NULL, '2024-09-26 13:31:31', '2024-09-26 13:31:31'),
(14, 14, '0011', 'gastos do dia', 2, 8000.00, '2024-10-01', NULL, '2024-10-01 13:10:11', '2024-10-01 13:10:11'),
(15, 19, '0001', 'Compra de papel A4', 2, 101938.00, '2024-09-03', NULL, '2024-10-03 12:12:59', '2024-11-13 08:54:24'),
(16, 19, '0002', 'Compra de Combustível', 2, 37500.00, '2024-09-03', NULL, '2024-10-03 12:15:04', '2024-11-13 10:04:57'),
(17, 19, '0003', 'Compra de Computador portátil', 2, 270000.00, '2024-09-04', NULL, '2024-10-03 12:31:26', '2024-11-13 10:06:02'),
(18, 19, '0004', 'Pagamento da Internet', 2, 15000.00, '2024-09-05', NULL, '2024-10-03 12:33:00', '2024-11-13 10:07:02'),
(19, 19, '0005', 'Compra de cartolina e cartão para Livros', 2, 46394.44, '2024-09-05', NULL, '2024-10-03 12:35:12', '2024-11-13 10:23:42'),
(20, 19, '0006', 'Compra de Envelopes', 2, 22642.16, '2024-09-05', NULL, '2024-10-03 12:37:47', '2024-11-13 10:26:13'),
(21, 19, '0007', 'Compra de papel A3', 2, 357750.70, '2024-09-05', NULL, '2024-10-03 12:41:59', '2024-11-13 10:28:34'),
(22, 19, '0008', 'Compra de pilhas Maxell Alkaline', 2, 1094.00, '2024-09-06', NULL, '2024-10-03 12:45:05', '2024-11-13 10:50:33'),
(23, 19, '0009', 'Compra de afia lápis', 2, 68400.00, '2024-09-06', NULL, '2024-10-03 12:46:52', '2024-11-13 10:51:32'),
(24, 19, '0010', 'Compra de cartolina', 2, 44195.40, '2024-09-09', NULL, '2024-10-03 12:50:03', '2024-11-13 10:53:27'),
(25, 19, '0011', 'Compra de combustível', 2, 24182.00, '2024-09-09', NULL, '2024-10-03 12:51:37', '2024-11-13 10:54:37'),
(26, 19, '0012', 'Compras do Refeitório', 2, 14299.00, '2024-09-10', NULL, '2024-10-03 12:53:18', '2024-11-13 10:56:17'),
(27, 19, '0013', 'Compras do refeitório', 2, 21900.00, '2024-09-10', NULL, '2024-10-03 12:55:11', '2024-11-13 11:09:40'),
(28, 19, '0014', 'Compra de cartolina azul Ciano', 2, 28062.00, '2024-09-11', NULL, '2024-10-03 12:56:55', '2024-11-13 11:10:53'),
(29, 19, '0015', 'Compra de envelopes e Rolo de Papel', 2, 21699.80, '2024-09-13', NULL, '2024-10-03 12:58:22', '2024-11-13 11:12:56'),
(30, 19, '0016', 'Compra de combustível', 2, 6876.00, '2024-09-14', NULL, '2024-10-03 13:00:22', '2024-11-13 11:13:50'),
(31, 19, '0017', 'Compra de cartolina', 2, 19152.00, '2024-09-19', NULL, '2024-10-03 13:01:40', '2024-11-13 11:14:45'),
(32, 19, '0018', 'Compra de Cartolina Azul, Papel A4 e Lupa', 2, 106422.75, '2024-09-20', NULL, '2024-10-03 13:03:14', '2024-11-13 12:59:39'),
(33, 19, '0019', 'Compra de papel  A4', 2, 83750.00, '2024-09-21', NULL, '2024-10-03 13:06:38', '2024-11-13 13:01:42'),
(34, 19, '0020', 'Pagamento do Centro Médico Julia e Cunha{Bruno Diogo}', 2, 33250.00, '2024-09-23', NULL, '2024-10-03 13:08:21', '2024-11-13 13:03:48'),
(35, 19, '0021', 'Compra de papel conche', 2, 1417.20, '2024-09-25', NULL, '2024-10-03 13:10:54', '2024-11-13 13:05:29'),
(36, 19, '0022', 'Compra de papel A4', 2, 132000.00, '2024-09-25', NULL, '2024-10-03 13:11:53', '2024-11-13 13:06:35'),
(37, 14, '0012', 'gastos do dia', 2, 8000.00, '2024-10-03', NULL, '2024-10-03 13:35:47', '2024-10-03 13:35:47'),
(38, 14, '0013', 'gastos do dia', 2, 7000.00, '2024-10-04', NULL, '2024-10-04 13:01:57', '2024-10-04 13:01:57'),
(39, 14, '0014', 'gastos do dia', 2, 8000.00, '2024-10-04', NULL, '2024-10-04 13:02:39', '2024-10-04 13:02:39'),
(40, 14, '0015', 'gastos do dia', 2, 12000.00, '2024-10-08', NULL, '2024-10-08 13:56:39', '2024-10-08 13:56:39'),
(41, 14, '0016', 'compra de fechaduras', 2, 5000.00, '2024-10-08', NULL, '2024-10-08 14:10:36', '2024-10-08 14:10:36'),
(42, 14, '0017', 'gastos do dia', 2, 12000.00, '2024-10-09', NULL, '2024-10-09 13:33:46', '2024-10-09 13:33:46'),
(43, 14, '0018', 'gastos do dia', 2, 7000.00, '2024-10-10', NULL, '2024-10-10 13:22:34', '2024-10-10 13:22:34'),
(44, 14, '0019', 'gastos do dia', 2, 7000.00, '2024-10-16', NULL, '2024-10-16 13:24:02', '2024-10-16 13:24:02'),
(45, 14, '0020', 'gastos do dia', 2, 11000.00, '2024-10-17', NULL, '2024-10-17 13:24:26', '2024-10-17 13:24:26'),
(46, 14, '0021', 'gastos do dia', 2, 3000.00, '2024-10-21', NULL, '2024-10-21 13:04:01', '2024-10-21 13:04:01'),
(47, 14, '0022', 'gastos do dia', 2, 8000.00, '2024-10-22', NULL, '2024-10-22 13:34:49', '2024-10-22 13:34:49'),
(48, 14, '0023', 'gastos do dia', 2, 7000.00, '2024-10-23', NULL, '2024-10-23 13:21:46', '2024-10-23 13:21:46'),
(49, 14, '0024', 'gastos do dia', 2, 7000.00, '2024-10-25', NULL, '2024-10-25 13:08:50', '2024-10-25 13:08:50'),
(51, 14, '0025', 'gastos do dia', 2, 5000.00, '2024-10-31', NULL, '2024-10-31 14:27:29', '2024-10-31 14:27:29'),
(52, 14, '0026', 'gastos do dia', 2, 7000.00, '2024-11-01', NULL, '2024-11-01 13:48:08', '2024-11-01 13:48:08'),
(53, 14, '0027', 'gastos do dia', 2, 7000.00, '2024-11-04', NULL, '2024-11-04 14:32:05', '2024-11-04 14:32:05'),
(54, 19, '0023', 'Compra de Envelopes', 2, 105000.00, '2024-10-07', NULL, '2024-11-07 09:05:23', '2024-11-12 12:29:30'),
(55, 19, '0024', 'Pagamento da Internet', 2, 15000.00, '2024-10-07', NULL, '2024-11-12 12:26:53', '2024-11-12 12:26:53'),
(56, 19, '0025', 'Compra de Cartolina', 2, 24897.60, '2024-10-08', NULL, '2024-11-12 12:31:32', '2024-11-12 12:31:32'),
(57, 19, '0026', 'Compra de Combustível', 2, 6040.00, '2024-10-08', NULL, '2024-11-12 12:33:41', '2024-11-12 12:33:41'),
(58, 19, '0027', 'Compra de Papel A4', 2, 125710.00, '2024-10-10', NULL, '2024-11-12 12:47:00', '2024-11-12 12:47:00'),
(59, 19, '0028', 'Compra de Combustível', 2, 20271.00, '2024-10-10', NULL, '2024-11-12 12:48:43', '2024-11-12 12:48:43'),
(60, 19, '0028', 'Compra de Combustível', 2, 20271.00, '2024-10-10', NULL, '2024-11-12 12:48:43', '2024-11-12 12:48:43'),
(61, 19, '0030', 'Compra de Papel A4', 2, 102195.00, '2024-10-11', NULL, '2024-11-12 12:57:55', '2024-11-12 12:57:55'),
(62, 19, '0031', 'Compra de Combustível', 2, 37500.00, '2024-10-14', NULL, '2024-11-12 12:59:49', '2024-11-12 12:59:49'),
(63, 19, '0032', 'Compra de Máscara Facial', 2, 5500.00, '2024-10-14', NULL, '2024-11-12 13:01:39', '2024-11-12 13:01:39'),
(64, 19, '0033', 'Compra de Cola  Branca e Lapiseiras', 2, 92750.00, '2024-10-14', NULL, '2024-11-12 13:03:29', '2024-11-12 13:03:29'),
(65, 19, '0034', 'Compra de Agrafos', 2, 4001.40, '2024-10-14', NULL, '2024-11-12 13:05:13', '2024-11-12 13:05:13'),
(66, 19, '0035', 'Compra de Fita Cola Pequena', 2, 1360.00, '2024-10-15', NULL, '2024-11-12 13:10:40', '2024-11-12 13:10:40'),
(67, 19, '0036', 'Compra de Pilhas Grande', 2, 36900.00, '2024-10-15', NULL, '2024-11-12 13:11:57', '2024-11-12 13:11:57'),
(68, 19, '0037', 'Compra de Papel Coche', 2, 64210.66, '2024-10-15', NULL, '2024-11-12 13:13:28', '2024-11-12 13:13:28'),
(69, 19, '0038', 'Compra de Papel A3', 2, 50000.00, '2024-10-15', NULL, '2024-11-12 13:16:23', '2024-11-12 13:16:23'),
(70, 19, '0039', 'Compra de Papel A4', 2, 100245.00, '2024-10-15', NULL, '2024-11-12 13:18:15', '2024-11-12 13:18:15'),
(71, 19, '0040', 'Compra de Cartolina Branca', 2, 116315.98, '2024-10-16', NULL, '2024-11-12 13:20:31', '2024-11-12 13:20:31'),
(72, 19, '0041', 'Dívida do Centro Médico Júlia e Cunha {Manália José}', 2, 10400.00, '2024-10-16', NULL, '2024-11-12 13:24:20', '2024-11-13 13:10:08'),
(73, 19, '0042', 'Compra de Envelopes Castanho', 2, 49999.94, '2024-10-16', NULL, '2024-11-12 13:26:28', '2024-11-12 13:26:28'),
(74, 19, '0043', 'Compra de Papel A4', 2, 70000.00, '2024-10-17', NULL, '2024-11-12 13:28:00', '2024-11-12 13:28:00'),
(75, 19, '0044', 'Compra de Pilhas Toshiba', 2, 29520.00, '2024-10-17', NULL, '2024-11-12 13:29:28', '2024-11-12 13:29:28'),
(76, 19, '0045', 'Compra de Tinta Pantone', 2, 41040.00, '2024-10-17', NULL, '2024-11-13 07:24:58', '2024-11-13 07:24:58'),
(77, 19, '0046', 'Compra de Papel A3', 2, 237500.00, '2024-10-17', NULL, '2024-11-13 07:27:06', '2024-11-13 07:27:06'),
(78, 19, '0047', 'Compra de Papel forro livro', 2, 5408.00, '2024-10-18', NULL, '2024-11-13 08:07:32', '2024-11-13 08:07:32'),
(79, 19, '0048', 'Compra de Cartolina Azul', 2, 32875.08, '2024-10-18', NULL, '2024-11-13 08:11:27', '2024-11-13 08:11:27'),
(80, 19, '0049', 'Compra de Papel Vegetal', 2, 8498.70, '2024-10-18', NULL, '2024-11-13 08:12:42', '2024-11-13 08:12:42'),
(81, 19, '0050', 'Pagamento da Tinta e Master', 2, 115000.00, '2024-10-19', NULL, '2024-11-13 08:14:49', '2024-11-13 08:14:49'),
(82, 19, '0051', 'Compra de Papel A3', 2, 374000.00, '2024-10-21', NULL, '2024-11-13 08:16:02', '2024-11-13 08:16:02'),
(83, 19, '0052', 'Compra de Mangas para Rolo de Máquina', 2, 81690.12, '2024-10-22', NULL, '2024-11-13 08:19:52', '2024-11-13 08:19:52'),
(84, 19, '0053', 'Compra de Papel A4', 2, 196560.00, '2024-10-22', NULL, '2024-11-13 08:21:04', '2024-11-13 08:21:04'),
(85, 19, '0054', 'Compra de Chapas', 2, 263203.00, '2024-10-23', NULL, '2024-11-13 08:25:48', '2024-11-13 08:25:48'),
(86, 19, '0055', 'Compras do Refeitório', 2, 17300.00, '2024-10-23', NULL, '2024-11-13 08:26:47', '2024-11-13 08:26:47'),
(87, 19, '0056', 'Compra de Pilha Energize', 2, 12800.00, '2024-10-24', NULL, '2024-11-13 08:28:20', '2024-11-13 08:28:20'),
(88, 19, '0057', 'Pagamento da Tinta da Riso', 2, 30000.00, '2024-10-25', NULL, '2024-11-13 08:29:27', '2024-11-13 08:29:27'),
(89, 19, '0058', 'Dívida do Centro Médico Júlia e Cunha {Ceverina Daniel}', 2, 16000.00, '2024-10-25', NULL, '2024-11-13 08:31:17', '2024-11-13 13:10:59'),
(90, 19, '0059', 'Compra de Combustível', 2, 23583.00, '2024-10-28', NULL, '2024-11-13 08:32:36', '2024-11-13 08:32:36'),
(91, 19, '0060', 'Pagamento do Lixo', 2, 35000.00, '2024-10-23', NULL, '2024-11-13 08:34:28', '2024-11-13 08:34:28'),
(92, 19, '0061', 'Compra de Envelopes Castanho', 2, 50000.00, '2024-10-30', NULL, '2024-11-13 08:35:29', '2024-11-13 08:35:29'),
(124, 19, '0093', 'Compra de Cartão Cinza para Livro', 2, 240.49, '2024-08-02', NULL, '2024-11-20 08:39:53', '2024-11-20 08:39:53'),
(125, 19, '0094', 'Compra de Panos para Livros', 2, 2500.00, '2024-08-02', NULL, '2024-11-20 08:41:21', '2024-11-20 09:24:54'),
(126, 19, '0095', 'Compra de Bloco para a reconstrução do Portão', 2, 7500.00, '2024-08-03', NULL, '2024-11-20 09:25:59', '2024-11-20 09:25:59'),
(127, 19, '0096', 'Compra de material de construção', 2, 42500.00, '2024-08-05', NULL, '2024-11-20 09:27:12', '2024-11-20 09:27:12'),
(128, 19, '0097', 'Compra de Tecido', 2, 8800.00, '2024-08-05', NULL, '2024-11-20 09:28:35', '2024-11-20 09:28:35'),
(129, 19, '0098', 'Pagamento da Internet', 2, 15000.00, '2024-08-05', NULL, '2024-11-20 09:29:28', '2024-11-20 09:29:28'),
(130, 19, '0099', 'Pagamento da Tinta da Riso', 2, 120000.00, '2024-08-06', NULL, '2024-11-20 09:30:42', '2024-11-20 09:30:42'),
(131, 19, '0100', 'Compra de Agenda', 2, 101818.00, '2024-08-07', NULL, '2024-11-20 09:32:32', '2024-11-20 09:32:32'),
(132, 19, '0101', 'Compra de Pasta de Despacho', 2, 26000.00, '2024-08-07', NULL, '2024-11-20 09:33:52', '2024-11-20 09:33:52'),
(133, 19, '0102', 'Compra de Pendrive', 2, 5266.00, '2024-08-07', NULL, '2024-11-20 11:09:43', '2024-11-20 11:09:43'),
(134, 19, '0103', 'Compra de Cartão Cinza para Livro', 2, 24049.44, '2024-08-08', NULL, '2024-11-20 11:10:52', '2024-11-21 12:57:05'),
(135, 19, '0104', 'Compra de Papel A3', 2, 47075.00, '2024-08-12', NULL, '2024-11-20 11:12:54', '2024-11-20 11:12:54'),
(136, 19, '0105', 'Compra de Agrafos e Envelopes', 2, 61795.52, '2024-08-12', NULL, '2024-11-20 11:14:07', '2024-11-20 11:14:07'),
(137, 19, '0106', 'Compra de Forro pra Livro encadernado', 2, 6008.89, '2024-08-12', NULL, '2024-11-21 13:02:25', '2024-11-21 13:02:25'),
(138, 19, '0107', 'Compra de papel A4', 2, 20520.00, '2024-08-15', NULL, '2024-11-21 13:03:58', '2024-11-21 13:03:58'),
(139, 19, '0108', 'Pagamento do Master A3', 2, 50000.00, '2024-08-15', NULL, '2024-11-21 13:05:20', '2024-12-02 09:59:27'),
(140, 19, '0109', 'Compra de Envelopes', 2, 15500.00, '2024-08-19', NULL, '2024-11-21 13:08:15', '2024-11-21 13:08:15'),
(141, 19, '0110', 'Compra de papel A3', 2, 48645.39, '2024-08-20', NULL, '2024-11-21 13:09:33', '2024-11-21 13:09:33'),
(142, 19, '0111', 'Compras do Refeitório', 2, 58549.00, '2024-08-20', NULL, '2024-11-21 13:12:04', '2024-11-21 13:12:04'),
(143, 19, '0112', 'Compra de Cartão para Livros', 2, 30061.80, '2024-08-21', NULL, '2024-11-21 13:15:58', '2024-11-21 13:15:58'),
(144, 19, '0113', 'Compra de papel A4', 2, 165000.00, '2024-08-22', NULL, '2024-11-21 13:16:57', '2024-11-21 13:16:57'),
(145, 19, '0114', 'Compra de balde de tinta para o portão', 2, 18000.00, '2024-08-26', NULL, '2024-11-21 13:18:09', '2024-11-21 13:18:09'),
(146, 19, '0115', 'Compra de corante azul para pintar o portão', 2, 1500.00, '2024-08-26', NULL, '2024-11-21 13:19:24', '2024-11-21 13:19:24'),
(147, 19, '0116', 'Compra de pano para livros', 2, 12650.02, '2024-08-28', NULL, '2024-11-21 13:20:36', '2024-11-21 13:20:36'),
(148, 19, '0117', 'Compra de Envelopes', 2, 40059.60, '2024-08-28', NULL, '2024-11-21 13:21:50', '2024-11-21 13:21:50'),
(149, 19, '0118', 'Compra de Cartolina', 2, 33196.80, '2024-08-28', NULL, '2024-11-21 13:23:16', '2024-11-21 13:23:16'),
(150, 19, '0119', 'Compra de papel A4', 2, 64000.00, '2024-07-01', NULL, '2024-11-22 07:45:39', '2024-11-22 07:45:39'),
(151, 19, '0120', 'Compra de papel A4', 2, 63000.00, '2024-07-02', NULL, '2024-11-22 07:54:13', '2024-11-22 07:54:13'),
(152, 19, '0121', 'Pagamento dos Envelopes', 2, 20000.00, '2024-07-03', NULL, '2024-11-22 07:56:51', '2024-11-22 07:56:51'),
(153, 19, '0122', 'Pagamento das Tintas da Riso', 2, 50000.00, '2024-07-03', NULL, '2024-11-22 07:58:12', '2024-12-02 09:42:18'),
(154, 19, '0123', 'Compra de Revelador para as chapas', 2, 22251.35, '2024-07-04', NULL, '2024-11-22 08:00:38', '2024-11-22 08:00:38'),
(155, 19, '0124', 'Compra de papel A3', 2, 45000.00, '2024-07-08', NULL, '2024-11-22 08:02:13', '2024-11-22 08:02:13'),
(156, 30, '0001', 'Custo com pessoal Salario', 2, 310000.00, '2024-10-30', 'salario referente ao mês de outubro.\r\nDiretor Geral 120.000\r\nGerente 90.000\r\nContabilista 100.000', '2024-11-30 19:55:18', '2024-11-30 19:56:23'),
(157, 30, '0002', 'Custo com pessoal Transporte', 2, 121500.00, '2024-10-30', 'transporte Diário do pessoal\r\nreferente ao mês de outubro', '2024-11-30 19:58:40', '2024-11-30 20:00:54'),
(158, 30, '0003', 'Custo com pessoal alimentação', 2, 81000.00, '2024-10-30', 'custo com pessoal alimentação \r\nreferente ao mês de outubro', '2024-11-30 20:03:05', '2024-11-30 20:03:05'),
(168, 19, '0134', 'Compra de papel A3 com IVA', 2, 136760.00, '2024-12-13', NULL, '2024-12-17 07:25:03', '2024-12-17 07:25:03'),
(169, 1, '0001', 'Alimentação', 2, 50000.00, '2024-12-17', NULL, '2024-12-17 08:49:53', '2024-12-17 08:49:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recibos`
--

CREATE TABLE `recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cliente_nome` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `formapagamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `moeda_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilizador_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `factura_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `recibos`
--

INSERT INTO `recibos` (`id`, `empresa_id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `numero_documento`, `data_documento`, `total_pendente`, `valor_pago`, `ficheiro`, `data_ficheiro`, `retencao_taxa`, `factura_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'RC  2024/1', 3, 'Alberto Capingãla', '006217158BE048', 'Estrada Nacional 250, Bairro Azul 1', '2024-08-15 12:42:19', '2024-08-15 00:00:00', 3, 3, 2, 'Administrador', NULL, 25994.00, 519.88, 3639.16, 0.00, 29113.28, 'W4bOr0L0pQ/X3kk/FtJATDhgrwhV7+lkQshEzIlx7P60Pmbvc7Jk1Ks4r40/KWVWEALiIHsevxEoVJmu3dAWb2C6MApTvhNu3idFOGDzYh0AMxIfDtg+jQGra3YL+d7wJba8nRqVYlFwACczrNjkW0tJGTNN8VGJfzTIshyBrLw=', 1, 'FT  2024/1', '2024-08-15 12:39:20', 29113.28, 10000.00, 'null.png', '2024-08-15 00:00:00', 0.00, 1, '2024-08-15 10:42:19', '2024-08-15 10:42:19'),
(2, 7, 'RC  2024/1', 10, 'primeiro Cliente', '12345678', 'Luanda', '2024-08-26 11:46:10', '2024-08-26 00:00:00', 14, 13, 14, 'Administrador', 'Esta fatura está  aser feita no memoneto da formação do sistema.', 7000.00, 0.00, 0.00, 0.00, 7000.00, 'o7eZQYvLGNjPnTYBrmwOuJ93vXRpOlcnvaJqbDB8rOwz6VFuQW+VcXPLUTFEHMedpCP/CdO7RZGkeLH5cAsONQqpnTigpvfSU3kS6QPAUZoIXpdKyFl6cvDs1C7e9Yz0mWS33w34LduDoab04txr1ILuZZ8TmZpKVEB39SHlV0o=', 1, 'FT  2024/1', '2024-08-26 11:45:10', 7000.00, 3000.00, 'null.png', '2024-08-26 00:00:00', 0.00, 3, '2024-08-26 09:46:10', '2024-08-26 09:46:10'),
(3, 7, 'RC  2024/2', 10, 'primeiro Cliente', '12345678', 'Luanda', '2024-08-26 11:46:58', '2024-08-26 00:00:00', 14, 13, 14, 'Administrador', 'Esta fatura está  aser feita no memoneto da formação do sistema.', 7000.00, 0.00, 0.00, 0.00, 7000.00, 'aetdI58mb/k4O0b5aJWGhoXHCTMnPlL4+/XOUViMzw+TqJU8+1fxmRF29/yFBdpyexKZkCqvI7ew0e6ID6AQ68hmSS/WFQDM44Eaws9PW499wd9VZhVW9H8RO2Q/RrL66Rh/SafBmP9O3nw5ol6YgxS+R8l37beoBP+O3cA6MAI=', 1, 'FT  2024/1', '2024-08-26 11:45:10', 4000.00, 4000.00, 'null.png', '2024-08-26 00:00:00', 0.00, 3, '2024-08-26 09:46:58', '2024-08-26 09:46:58'),
(4, 1, 'RC 2024 2024/1', 15, 'Empresa A', '5000507091', 'Luanda', '2024-08-29 11:37:42', '2024-08-29 00:00:00', 1, 1, 7, 'Costa Lima', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'lfYpFvn/qtpsqjIf/ECH//HIJNdPO4arAv7iDUEKJmygCCoeclds7uIabAIO9g3RmPIKYmVUx2wYGsBMGe2bKZIkYMO+vixFthdMb5ZmyH9PHiHAPX4KQB3yfE4f2XaGm82J4O1TXInYvoBH+UMfakmY0fkLmgACmol2SgMVmfo=', 1, 'FT 2024 2024/1', '2024-08-29 11:37:27', 20000.00, 10000.00, 'null.png', '2024-08-29 00:00:00', 0.00, 4, '2024-08-29 09:37:42', '2024-08-29 09:37:42'),
(5, 19, 'RC  2024/1', 29, 'EQUADOR', '999999999', 'Largo Tristão - Luanda', '2024-10-03 09:46:00', '2024-10-03 00:00:00', 37, 37, 32, 'Augusto Xavier Joaquim', NULL, 150.00, 0.00, 0.00, 0.00, 150.00, 'Rpn0SGey0d5TR/F2C4I4kRgenc+YUPaksAkGRaQYwySo9/n0GQlJRd8szldldhYDmw/cKFY0vqQfeSZb6bzKGubRZ8+PB6uTVQZ6a8MsexWSQcR4dJiDiZh0a9K3XCN/5AZP+Ld7rQcg/wmjz+kpJI3zwQLTw/PWLQp+0fbuGOQ=', 1, 'FT  2024/1', '2024-10-03 09:45:07', 150.00, 100.00, 'null.png', '2024-10-03 00:00:00', 0.00, 5, '2024-10-03 07:46:00', '2024-10-03 07:46:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `retencaos`
--

CREATE TABLE `retencaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `taxa` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `retencaos`
--

INSERT INTO `retencaos` (`id`, `empresa_id`, `designacao`, `taxa`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(2, 1, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(3, 2, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(4, 2, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(5, 3, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(6, 3, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(7, 4, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(8, 4, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(9, 5, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(10, 5, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(11, 6, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(12, 6, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(13, 7, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(14, 7, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(15, 8, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(16, 8, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(17, 9, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(18, 9, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(19, 10, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(20, 10, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(21, 11, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(22, 11, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(23, 12, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(24, 12, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(25, 13, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(26, 13, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL),
(27, 14, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(28, 14, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(29, 15, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(30, 15, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(31, 16, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(32, 16, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(33, 17, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(34, 17, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(35, 18, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(36, 18, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(37, 19, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(38, 19, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(39, 20, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(40, 20, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(41, 21, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(42, 21, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(43, 22, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(44, 22, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(45, 23, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(46, 23, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(47, 24, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(48, 24, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(49, 25, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(50, 25, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(51, 26, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(52, 26, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(53, 27, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(54, 27, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(55, 28, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(56, 28, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(57, 29, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(58, 29, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(59, 30, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(60, 30, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(61, 31, 'Sem rentenão na fonte', '0', 1, NULL, NULL),
(62, 31, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL),
(63, 32, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(64, 32, 'Rentenão na fonte 6.5%', '6.5', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `empresa_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Administrador', 'web', NULL, NULL),
(2, 1, 'Gestor', 'web', NULL, NULL),
(3, 1, 'Operador', 'web', NULL, NULL),
(4, 1, 'Operador POS', 'web', NULL, NULL),
(5, 2, 'Super Administrador', 'web', '2024-08-15 20:01:13', '2024-08-15 20:01:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`, `empresa_id`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(3, 1, 1),
(3, 2, 1),
(3, 3, 1),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(6, 1, 1),
(6, 2, 1),
(6, 3, 1),
(7, 1, 1),
(7, 2, 1),
(8, 1, 1),
(9, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `safts`
--

CREATE TABLE `safts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `filename` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `safts`
--

INSERT INTO `safts` (`id`, `empresa_id`, `filename`, `created_at`, `updated_at`) VALUES
(1, 2, 'SAFT_AO_20240822105804.xml', '2024-08-22 08:58:04', '2024-08-22 08:58:04'),
(2, 9, 'SAFT_AO_20240827135704.xml', '2024-08-27 11:57:04', '2024-08-27 11:57:04'),
(3, 14, 'SAFT_AO_20240829120529.xml', '2024-08-29 10:05:29', '2024-08-29 10:05:29'),
(4, 16, 'SAFT_AO_20240902174620.xml', '2024-09-02 15:46:20', '2024-09-02 15:46:20'),
(5, 10, 'SAFT_AO_20240921164716.xml', '2024-09-21 14:47:16', '2024-09-21 14:47:16'),
(6, 14, 'SAFT_AO_20241001090058.xml', '2024-10-01 07:00:58', '2024-10-01 07:00:58'),
(7, 30, 'SAFT_AO_20241126181605.xml', '2024-11-26 17:16:05', '2024-11-26 17:16:05'),
(8, 30, 'SAFT_AO_20241126182001.xml', '2024-11-26 17:20:01', '2024-11-26 17:20:01'),
(9, 30, 'SAFT_AO_20241130220702.xml', '2024-11-30 21:07:02', '2024-11-30 21:07:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saft_audits`
--

CREATE TABLE `saft_audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `audit_file_version` varchar(191) DEFAULT NULL,
  `company_id` varchar(191) DEFAULT NULL,
  `tax_registration_number` varchar(191) DEFAULT NULL,
  `tax_accounting_basis` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `saft_audits`
--

INSERT INTO `saft_audits` (`id`, `empresa_id`, `audit_file_version`, `company_id`, `tax_registration_number`, `tax_accounting_basis`, `created_at`, `updated_at`) VALUES
(1, 1, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(2, 2, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(3, 3, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(4, 4, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(5, 5, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(6, 6, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(7, 7, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(8, 8, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(9, 9, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(10, 10, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(11, 11, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(12, 12, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(13, 13, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(14, 14, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(15, 15, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(16, 16, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(17, 17, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(18, 18, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(19, 19, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(20, 20, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(21, 21, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(22, 22, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(23, 23, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(24, 24, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(25, 25, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(26, 26, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(27, 27, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(28, 28, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(29, 29, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(30, 30, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(31, 31, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL),
(32, 32, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `empresa_id`, `codigo`, `designacao`, `tipo`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'PP 2024', 'proforma', 'King. On.', 1, NULL, NULL),
(2, 1, '0002', 'FT 2024', 'factura', 'Why, I haven\'t.', 1, NULL, NULL),
(3, 1, '0003', 'FR 2024', 'factura-recibo', 'Just then she.', 1, NULL, NULL),
(4, 1, '0004', 'RC 2024', 'recibo', 'I\'ll tell you.', 1, NULL, NULL),
(5, 1, '0005', 'NC 2024', 'nota-credito', 'Caterpillar. \'Is.', 1, NULL, NULL),
(6, 1, '0006', 'ND 2024', 'nota-debito', 'At this the.', 1, NULL, NULL),
(7, 1, '0007', 'GT 2024', 'guia-transporte', 'I can\'t quite.', 1, NULL, NULL),
(8, 1, '0008', 'GR 2024', 'guia-remessa', 'I ought to.', 1, NULL, NULL),
(9, 1, '0009', 'RD 2024', 'receita-despesa', 'MYSELF, I\'m.', 1, NULL, NULL),
(10, 1, '00010', 'SC 2024', 'stock', 'I\'ll give them a.', 1, NULL, NULL),
(11, 2, '0001', 'PP ', 'proforma', 'King and the.', 1, NULL, NULL),
(12, 2, '0002', 'FT ', 'factura', 'Said cunning old.', 1, NULL, NULL),
(13, 2, '0003', 'FR ', 'factura-recibo', 'Game, or any.', 1, NULL, NULL),
(14, 2, '0004', 'RC ', 'recibo', 'But do cats.', 1, NULL, NULL),
(15, 2, '0005', 'NC ', 'nota-credito', 'And oh, my.', 1, NULL, NULL),
(16, 2, '0006', 'ND ', 'nota-debito', 'Bill,\' she.', 1, NULL, NULL),
(17, 2, '0007', 'GT ', 'guia-transporte', 'Alice, the little.', 1, NULL, NULL),
(18, 2, '0008', 'GR ', 'guia-remessa', 'I only wish.', 1, NULL, NULL),
(19, 2, '0009', 'RD ', 'receita-despesa', 'The three soldiers.', 1, NULL, NULL),
(20, 2, '00010', 'SC ', 'stock', 'The Queen.', 1, NULL, NULL),
(21, 3, '0001', 'PP ', 'proforma', 'Alice was rather.', 1, NULL, NULL),
(22, 3, '0002', 'FT ', 'factura', 'I\'ve got to the.', 1, NULL, NULL),
(23, 3, '0003', 'FR ', 'factura-recibo', 'Cat, \'a dog\'s not.', 1, NULL, NULL),
(24, 3, '0004', 'RC ', 'recibo', 'I must sugar my.', 1, NULL, NULL),
(25, 3, '0005', 'NC ', 'nota-credito', 'Lory, as.', 1, NULL, NULL),
(26, 3, '0006', 'ND ', 'nota-debito', 'King, and he.', 1, NULL, NULL),
(27, 3, '0007', 'GT ', 'guia-transporte', 'Involved in.', 1, NULL, NULL),
(28, 3, '0008', 'GR ', 'guia-remessa', 'I know who.', 1, NULL, NULL),
(29, 3, '0009', 'RD ', 'receita-despesa', 'Alice looked all.', 1, NULL, NULL),
(30, 3, '00010', 'SC ', 'stock', 'I can say.\'.', 1, NULL, NULL),
(31, 4, '0001', 'PP ', 'proforma', 'I am! But I\'d.', 1, NULL, NULL),
(32, 4, '0002', 'FT ', 'factura', 'I hadn\'t.', 1, NULL, NULL),
(33, 4, '0003', 'FR ', 'factura-recibo', 'Majesty,\'.', 1, NULL, NULL),
(34, 4, '0004', 'RC ', 'recibo', 'She had already.', 1, NULL, NULL),
(35, 4, '0005', 'NC ', 'nota-credito', 'Alice, \'as all.', 1, NULL, NULL),
(36, 4, '0006', 'ND ', 'nota-debito', 'SAID was, \'Why.', 1, NULL, NULL),
(37, 4, '0007', 'GT ', 'guia-transporte', 'Why, there\'s.', 1, NULL, NULL),
(38, 4, '0008', 'GR ', 'guia-remessa', 'I can\'t understand.', 1, NULL, NULL),
(39, 4, '0009', 'RD ', 'receita-despesa', 'The long grass.', 1, NULL, NULL),
(40, 4, '00010', 'SC ', 'stock', 'Normans--\".', 1, NULL, NULL),
(41, 5, '0001', 'PP ', 'proforma', 'She got up this.', 1, NULL, NULL),
(42, 5, '0002', 'FT ', 'factura', 'I shall have.', 1, NULL, NULL),
(43, 5, '0003', 'FR ', 'factura-recibo', 'Alice was a.', 1, NULL, NULL),
(44, 5, '0004', 'RC ', 'recibo', 'So she swallowed.', 1, NULL, NULL),
(45, 5, '0005', 'NC ', 'nota-credito', 'The twelve jurors.', 1, NULL, NULL),
(46, 5, '0006', 'ND ', 'nota-debito', 'Mock Turtle.', 1, NULL, NULL),
(47, 5, '0007', 'GT ', 'guia-transporte', 'Alice. \'Then it.', 1, NULL, NULL),
(48, 5, '0008', 'GR ', 'guia-remessa', 'Gryphon, the.', 1, NULL, NULL),
(49, 5, '0009', 'RD ', 'receita-despesa', 'And she\'s such.', 1, NULL, NULL),
(50, 5, '00010', 'SC ', 'stock', 'I ever was.', 1, NULL, NULL),
(51, 6, '0001', 'PP ', 'proforma', 'White Rabbit.', 1, NULL, NULL),
(52, 6, '0002', 'FT ', 'factura', 'Father William.', 1, NULL, NULL),
(53, 6, '0003', 'FR ', 'factura-recibo', 'Alice as he.', 1, NULL, NULL),
(54, 6, '0004', 'RC ', 'recibo', 'At last the.', 1, NULL, NULL),
(55, 6, '0005', 'NC ', 'nota-credito', 'I can\'t see you?\'.', 1, NULL, NULL),
(56, 6, '0006', 'ND ', 'nota-debito', 'Alice didn\'t.', 1, NULL, NULL),
(57, 6, '0007', 'GT ', 'guia-transporte', 'Alice, \'a great.', 1, NULL, NULL),
(58, 6, '0008', 'GR ', 'guia-remessa', 'COULD! I\'m sure.', 1, NULL, NULL),
(59, 6, '0009', 'RD ', 'receita-despesa', 'Duchess said to.', 1, NULL, NULL),
(60, 6, '00010', 'SC ', 'stock', 'What happened to.', 1, NULL, NULL),
(61, 7, '0001', 'PP ', 'proforma', 'Alice did not.', 1, NULL, NULL),
(62, 7, '0002', 'FT ', 'factura', 'The chief.', 1, NULL, NULL),
(63, 7, '0003', 'FR ', 'factura-recibo', 'So she sat down.', 1, NULL, NULL),
(64, 7, '0004', 'RC ', 'recibo', 'Five! Always lay.', 1, NULL, NULL),
(65, 7, '0005', 'NC ', 'nota-credito', 'I almost.', 1, NULL, NULL),
(66, 7, '0006', 'ND ', 'nota-debito', 'They had.', 1, NULL, NULL),
(67, 7, '0007', 'GT ', 'guia-transporte', 'I dare say.', 1, NULL, NULL),
(68, 7, '0008', 'GR ', 'guia-remessa', 'I\'ve got.', 1, NULL, NULL),
(69, 7, '0009', 'RD ', 'receita-despesa', 'Normans--\" How are.', 1, NULL, NULL),
(70, 7, '00010', 'SC ', 'stock', 'I shall be late!\'.', 1, NULL, NULL),
(71, 8, '0001', 'PP ', 'proforma', 'Hatter. \'You.', 1, NULL, NULL),
(72, 8, '0002', 'FT ', 'factura', 'The chief.', 1, NULL, NULL),
(73, 8, '0003', 'FR ', 'factura-recibo', 'She had not gone.', 1, NULL, NULL),
(74, 8, '0004', 'RC ', 'recibo', 'King put on.', 1, NULL, NULL),
(75, 8, '0005', 'NC ', 'nota-credito', 'By the use of a.', 1, NULL, NULL),
(76, 8, '0006', 'ND ', 'nota-debito', 'Like a tea-tray.', 1, NULL, NULL),
(77, 8, '0007', 'GT ', 'guia-transporte', 'I wish I.', 1, NULL, NULL),
(78, 8, '0008', 'GR ', 'guia-remessa', 'Alice an.', 1, NULL, NULL),
(79, 8, '0009', 'RD ', 'receita-despesa', 'And she\'s.', 1, NULL, NULL),
(80, 8, '00010', 'SC ', 'stock', 'I\'m sure.', 1, NULL, NULL),
(81, 9, '0001', 'PP ', 'proforma', 'There was.', 1, NULL, NULL),
(82, 9, '0002', 'FT ', 'factura', 'Alice waited.', 1, NULL, NULL),
(83, 9, '0003', 'FR ', 'factura-recibo', 'King in a.', 1, NULL, NULL),
(84, 9, '0004', 'RC ', 'recibo', 'I give it up,\'.', 1, NULL, NULL),
(85, 9, '0005', 'NC ', 'nota-credito', 'SIT down,\'.', 1, NULL, NULL),
(86, 9, '0006', 'ND ', 'nota-debito', 'Mock Turtle.', 1, NULL, NULL),
(87, 9, '0007', 'GT ', 'guia-transporte', 'All the time she.', 1, NULL, NULL),
(88, 9, '0008', 'GR ', 'guia-remessa', 'So she set to.', 1, NULL, NULL),
(89, 9, '0009', 'RD ', 'receita-despesa', 'Five, \'and.', 1, NULL, NULL),
(90, 9, '00010', 'SC ', 'stock', 'How I wonder who.', 1, NULL, NULL),
(91, 10, '0001', 'PP ', 'proforma', 'In a minute or.', 1, NULL, NULL),
(92, 10, '0002', 'FT ', 'factura', 'I\'m a deal.', 1, NULL, NULL),
(93, 10, '0003', 'FR ', 'factura-recibo', 'Adventures, till.', 1, NULL, NULL),
(94, 10, '0004', 'RC ', 'recibo', 'Queen to-day?\' \'I.', 1, NULL, NULL),
(95, 10, '0005', 'NC ', 'nota-credito', 'Knave did so.', 1, NULL, NULL),
(96, 10, '0006', 'ND ', 'nota-debito', 'Once more.', 1, NULL, NULL),
(97, 10, '0007', 'GT ', 'guia-transporte', 'Majesty!\' the.', 1, NULL, NULL),
(98, 10, '0008', 'GR ', 'guia-remessa', 'Dormouse, who was.', 1, NULL, NULL),
(99, 10, '0009', 'RD ', 'receita-despesa', 'Dormouse.', 1, NULL, NULL),
(100, 10, '00010', 'SC ', 'stock', 'Hatter. He.', 1, NULL, NULL),
(101, 11, '0001', 'PP ', 'proforma', 'I vote the.', 1, NULL, NULL),
(102, 11, '0002', 'FT ', 'factura', 'Alice, so please.', 1, NULL, NULL),
(103, 11, '0003', 'FR ', 'factura-recibo', 'EVEN finish, if.', 1, NULL, NULL),
(104, 11, '0004', 'RC ', 'recibo', 'Duchess by.', 1, NULL, NULL),
(105, 11, '0005', 'NC ', 'nota-credito', 'By the use of a.', 1, NULL, NULL),
(106, 11, '0006', 'ND ', 'nota-debito', 'Caterpillar took.', 1, NULL, NULL),
(107, 11, '0007', 'GT ', 'guia-transporte', 'Dodo, a Lory.', 1, NULL, NULL),
(108, 11, '0008', 'GR ', 'guia-remessa', 'And she squeezed.', 1, NULL, NULL),
(109, 11, '0009', 'RD ', 'receita-despesa', 'Alice did not like.', 1, NULL, NULL),
(110, 11, '00010', 'SC ', 'stock', 'I had our.', 1, NULL, NULL),
(111, 12, '0001', 'PP ', 'proforma', 'Dormouse. \'Write.', 1, NULL, NULL),
(112, 12, '0002', 'FT ', 'factura', 'March Hare went.', 1, NULL, NULL),
(113, 12, '0003', 'FR ', 'factura-recibo', 'See how eagerly.', 1, NULL, NULL),
(114, 12, '0004', 'RC ', 'recibo', 'Gryphon hastily.', 1, NULL, NULL),
(115, 12, '0005', 'NC ', 'nota-credito', 'CHAPTER VI.', 1, NULL, NULL),
(116, 12, '0006', 'ND ', 'nota-debito', 'No accounting.', 1, NULL, NULL),
(117, 12, '0007', 'GT ', 'guia-transporte', 'The chief.', 1, NULL, NULL),
(118, 12, '0008', 'GR ', 'guia-remessa', 'The Hatter.', 1, NULL, NULL),
(119, 12, '0009', 'RD ', 'receita-despesa', 'The moment Alice.', 1, NULL, NULL),
(120, 12, '00010', 'SC ', 'stock', 'Why, I do.', 1, NULL, NULL),
(121, 13, '0001', 'PP ', 'proforma', 'That\'ll be a.', 1, NULL, NULL),
(122, 13, '0002', 'FT ', 'factura', 'I can find.', 1, NULL, NULL),
(123, 13, '0003', 'FR ', 'factura-recibo', 'Alice was so long.', 1, NULL, NULL),
(124, 13, '0004', 'RC ', 'recibo', 'I wish you.', 1, NULL, NULL),
(125, 13, '0005', 'NC ', 'nota-credito', 'Alice\'s elbow was.', 1, NULL, NULL),
(126, 13, '0006', 'ND ', 'nota-debito', 'I\'LL soon make.', 1, NULL, NULL),
(127, 13, '0007', 'GT ', 'guia-transporte', 'Alice opened the.', 1, NULL, NULL),
(128, 13, '0008', 'GR ', 'guia-remessa', 'You gave.', 1, NULL, NULL),
(129, 13, '0009', 'RD ', 'receita-despesa', 'Queen, who.', 1, NULL, NULL),
(130, 13, '00010', 'SC ', 'stock', 'I then? Tell me.', 1, NULL, NULL),
(131, 14, '0001', 'PP ', 'proforma', 'Alice, a.', 1, NULL, NULL),
(132, 14, '0002', 'FT ', 'factura', 'Bill,\' she.', 1, NULL, NULL),
(133, 14, '0003', 'FR ', 'factura-recibo', 'Cheshire Cat.', 1, NULL, NULL),
(134, 14, '0004', 'RC ', 'recibo', 'Ah, THAT\'S the.', 1, NULL, NULL),
(135, 14, '0005', 'NC ', 'nota-credito', 'Alice was.', 1, NULL, NULL),
(136, 14, '0006', 'ND ', 'nota-debito', 'In another.', 1, NULL, NULL),
(137, 14, '0007', 'GT ', 'guia-transporte', 'I can\'t see.', 1, NULL, NULL),
(138, 14, '0008', 'GR ', 'guia-remessa', 'Alice. It.', 1, NULL, NULL),
(139, 14, '0009', 'RD ', 'receita-despesa', 'CURTSEYING.', 1, NULL, NULL),
(140, 14, '00010', 'SC ', 'stock', 'Alice caught the.', 1, NULL, NULL),
(141, 15, '0001', 'PP ', 'proforma', 'English. \'I don\'t.', 1, NULL, NULL),
(142, 15, '0002', 'FT ', 'factura', 'I am, sir,\' said.', 1, NULL, NULL),
(143, 15, '0003', 'FR ', 'factura-recibo', 'I get\" is the.', 1, NULL, NULL),
(144, 15, '0004', 'RC ', 'recibo', 'Alice, very.', 1, NULL, NULL),
(145, 15, '0005', 'NC ', 'nota-credito', 'I should.', 1, NULL, NULL),
(146, 15, '0006', 'ND ', 'nota-debito', 'A bright idea.', 1, NULL, NULL),
(147, 15, '0007', 'GT ', 'guia-transporte', 'I mean what I was.', 1, NULL, NULL),
(148, 15, '0008', 'GR ', 'guia-remessa', 'WHAT things?\'.', 1, NULL, NULL),
(149, 15, '0009', 'RD ', 'receita-despesa', 'YOU, and no.', 1, NULL, NULL),
(150, 15, '00010', 'SC ', 'stock', 'Majesty!\'.', 1, NULL, NULL),
(151, 16, '0001', 'PP ', 'proforma', 'Dormouse.', 1, NULL, NULL),
(152, 16, '0002', 'FT ', 'factura', 'Bill,\' she gave a.', 1, NULL, NULL),
(153, 16, '0003', 'FR ', 'factura-recibo', 'Prizes!\'.', 1, NULL, NULL),
(154, 16, '0004', 'RC ', 'recibo', 'Hatter. He came.', 1, NULL, NULL),
(155, 16, '0005', 'NC ', 'nota-credito', 'Queen had.', 1, NULL, NULL),
(156, 16, '0006', 'ND ', 'nota-debito', 'Alice. \'That\'s.', 1, NULL, NULL),
(157, 16, '0007', 'GT ', 'guia-transporte', 'I think--\'.', 1, NULL, NULL),
(158, 16, '0008', 'GR ', 'guia-remessa', 'Dinah my.', 1, NULL, NULL),
(159, 16, '0009', 'RD ', 'receita-despesa', 'Gryphon went.', 1, NULL, NULL),
(160, 16, '00010', 'SC ', 'stock', 'Alice: \'allow.', 1, NULL, NULL),
(161, 17, '0001', 'PP ', 'proforma', 'I to get.', 1, NULL, NULL),
(162, 17, '0002', 'FT ', 'factura', 'I could show you.', 1, NULL, NULL),
(163, 17, '0003', 'FR ', 'factura-recibo', 'How the Owl.', 1, NULL, NULL),
(164, 17, '0004', 'RC ', 'recibo', 'Soup, so rich.', 1, NULL, NULL),
(165, 17, '0005', 'NC ', 'nota-credito', 'Footman, \'and that.', 1, NULL, NULL),
(166, 17, '0006', 'ND ', 'nota-debito', 'However, it.', 1, NULL, NULL),
(167, 17, '0007', 'GT ', 'guia-transporte', 'IS that to be.', 1, NULL, NULL),
(168, 17, '0008', 'GR ', 'guia-remessa', 'THAT in a.', 1, NULL, NULL),
(169, 17, '0009', 'RD ', 'receita-despesa', 'I mentioned.', 1, NULL, NULL),
(170, 17, '00010', 'SC ', 'stock', 'I can remember.', 1, NULL, NULL),
(171, 18, '0001', 'PP ', 'proforma', 'Alice. \'I\'ve.', 1, NULL, NULL),
(172, 18, '0002', 'FT ', 'factura', 'Dormouse went.', 1, NULL, NULL),
(173, 18, '0003', 'FR ', 'factura-recibo', 'Queen, turning.', 1, NULL, NULL),
(174, 18, '0004', 'RC ', 'recibo', 'The Cat\'s head.', 1, NULL, NULL),
(175, 18, '0005', 'NC ', 'nota-credito', 'There was no more.', 1, NULL, NULL),
(176, 18, '0006', 'ND ', 'nota-debito', 'The Rabbit.', 1, NULL, NULL),
(177, 18, '0007', 'GT ', 'guia-transporte', 'She waited for.', 1, NULL, NULL),
(178, 18, '0008', 'GR ', 'guia-remessa', 'Because he.', 1, NULL, NULL),
(179, 18, '0009', 'RD ', 'receita-despesa', 'Gryphon replied.', 1, NULL, NULL),
(180, 18, '00010', 'SC ', 'stock', 'FIT you,\' said.', 1, NULL, NULL),
(181, 19, '0001', 'PP ', 'proforma', 'Alice sharply.', 1, NULL, NULL),
(182, 19, '0002', 'FT ', 'factura', 'Why, she\'ll eat.', 1, NULL, NULL),
(183, 19, '0003', 'FR ', 'factura-recibo', 'She waited.', 1, NULL, NULL),
(184, 19, '0004', 'RC ', 'recibo', 'Queen was silent.', 1, NULL, NULL),
(185, 19, '0005', 'NC ', 'nota-credito', 'She said.', 1, NULL, NULL),
(186, 19, '0006', 'ND ', 'nota-debito', 'Alice went timidly.', 1, NULL, NULL),
(187, 19, '0007', 'GT ', 'guia-transporte', 'Caterpillar The.', 1, NULL, NULL),
(188, 19, '0008', 'GR ', 'guia-remessa', 'HAVE tasted.', 1, NULL, NULL),
(189, 19, '0009', 'RD ', 'receita-despesa', 'VERY much out.', 1, NULL, NULL),
(190, 19, '00010', 'SC ', 'stock', 'When the.', 1, NULL, NULL),
(191, 20, '0001', 'PP ', 'proforma', 'THEIR eyes bright.', 1, NULL, NULL),
(192, 20, '0002', 'FT ', 'factura', 'Alice heard the.', 1, NULL, NULL),
(193, 20, '0003', 'FR ', 'factura-recibo', 'King; and.', 1, NULL, NULL),
(194, 20, '0004', 'RC ', 'recibo', 'I BEG your.', 1, NULL, NULL),
(195, 20, '0005', 'NC ', 'nota-credito', 'Lizard in.', 1, NULL, NULL),
(196, 20, '0006', 'ND ', 'nota-debito', 'I must be.', 1, NULL, NULL),
(197, 20, '0007', 'GT ', 'guia-transporte', 'I don\'t put my.', 1, NULL, NULL),
(198, 20, '0008', 'GR ', 'guia-remessa', 'So they got thrown.', 1, NULL, NULL),
(199, 20, '0009', 'RD ', 'receita-despesa', 'Alice was.', 1, NULL, NULL),
(200, 20, '00010', 'SC ', 'stock', 'Queen never left.', 1, NULL, NULL),
(201, 21, '0001', 'PP ', 'proforma', 'Alice dear!\'.', 1, NULL, NULL),
(202, 21, '0002', 'FT ', 'factura', 'Alice asked in a.', 1, NULL, NULL),
(203, 21, '0003', 'FR ', 'factura-recibo', 'When the sands.', 1, NULL, NULL),
(204, 21, '0004', 'RC ', 'recibo', 'But I\'ve.', 1, NULL, NULL),
(205, 21, '0005', 'NC ', 'nota-credito', 'Dormouse went on.', 1, NULL, NULL),
(206, 21, '0006', 'ND ', 'nota-debito', 'I shan\'t go, at.', 1, NULL, NULL),
(207, 21, '0007', 'GT ', 'guia-transporte', 'She felt very.', 1, NULL, NULL),
(208, 21, '0008', 'GR ', 'guia-remessa', 'She was walking.', 1, NULL, NULL),
(209, 21, '0009', 'RD ', 'receita-despesa', 'Dinah, if I can.', 1, NULL, NULL),
(210, 21, '00010', 'SC ', 'stock', 'The judge, by the.', 1, NULL, NULL),
(211, 22, '0001', 'PP ', 'proforma', 'Dormouse.', 1, NULL, NULL),
(212, 22, '0002', 'FT ', 'factura', 'Next came.', 1, NULL, NULL),
(213, 22, '0003', 'FR ', 'factura-recibo', 'Hatter: and.', 1, NULL, NULL),
(214, 22, '0004', 'RC ', 'recibo', 'Who ever.', 1, NULL, NULL),
(215, 22, '0005', 'NC ', 'nota-credito', 'Dinah, and saying.', 1, NULL, NULL),
(216, 22, '0006', 'ND ', 'nota-debito', 'Alice asked.', 1, NULL, NULL),
(217, 22, '0007', 'GT ', 'guia-transporte', 'Alice said.', 1, NULL, NULL),
(218, 22, '0008', 'GR ', 'guia-remessa', 'Mock Turtle.', 1, NULL, NULL),
(219, 22, '0009', 'RD ', 'receita-despesa', 'King replied. Here.', 1, NULL, NULL),
(220, 22, '00010', 'SC ', 'stock', 'I said \"What.', 1, NULL, NULL),
(221, 23, '0001', 'PP ', 'proforma', 'I\'ll set Dinah.', 1, NULL, NULL),
(222, 23, '0002', 'FT ', 'factura', 'I think I.', 1, NULL, NULL),
(223, 23, '0003', 'FR ', 'factura-recibo', 'At this the White.', 1, NULL, NULL),
(224, 23, '0004', 'RC ', 'recibo', 'Dinah, and.', 1, NULL, NULL),
(225, 23, '0005', 'NC ', 'nota-credito', 'Run home this.', 1, NULL, NULL),
(226, 23, '0006', 'ND ', 'nota-debito', 'English. \'I.', 1, NULL, NULL),
(227, 23, '0007', 'GT ', 'guia-transporte', 'After these came.', 1, NULL, NULL),
(228, 23, '0008', 'GR ', 'guia-remessa', 'YET,\' she.', 1, NULL, NULL),
(229, 23, '0009', 'RD ', 'receita-despesa', 'The Queen.', 1, NULL, NULL),
(230, 23, '00010', 'SC ', 'stock', 'Duchess. \'I.', 1, NULL, NULL),
(231, 24, '0001', 'PP ', 'proforma', 'I begin, please.', 1, NULL, NULL),
(232, 24, '0002', 'FT ', 'factura', 'Dormouse said--\'.', 1, NULL, NULL),
(233, 24, '0003', 'FR ', 'factura-recibo', 'When she got.', 1, NULL, NULL),
(234, 24, '0004', 'RC ', 'recibo', 'Duchess, \'as.', 1, NULL, NULL),
(235, 24, '0005', 'NC ', 'nota-credito', 'Edwin and.', 1, NULL, NULL),
(236, 24, '0006', 'ND ', 'nota-debito', 'I don\'t know what.', 1, NULL, NULL),
(237, 24, '0007', 'GT ', 'guia-transporte', 'Alice, that.', 1, NULL, NULL),
(238, 24, '0008', 'GR ', 'guia-remessa', 'And when I.', 1, NULL, NULL),
(239, 24, '0009', 'RD ', 'receita-despesa', 'There was.', 1, NULL, NULL),
(240, 24, '00010', 'SC ', 'stock', 'I\'ve said as.', 1, NULL, NULL),
(241, 25, '0001', 'PP ', 'proforma', 'Gryphon, half to.', 1, NULL, NULL),
(242, 25, '0002', 'FT ', 'factura', 'Caterpillar.', 1, NULL, NULL),
(243, 25, '0003', 'FR ', 'factura-recibo', 'Never heard of.', 1, NULL, NULL),
(244, 25, '0004', 'RC ', 'recibo', 'These words were.', 1, NULL, NULL),
(245, 25, '0005', 'NC ', 'nota-credito', 'I suppose?\'.', 1, NULL, NULL),
(246, 25, '0006', 'ND ', 'nota-debito', 'Alice opened.', 1, NULL, NULL),
(247, 25, '0007', 'GT ', 'guia-transporte', 'Hatter. \'You.', 1, NULL, NULL),
(248, 25, '0008', 'GR ', 'guia-remessa', 'Dormouse go.', 1, NULL, NULL),
(249, 25, '0009', 'RD ', 'receita-despesa', 'Dormouse.', 1, NULL, NULL),
(250, 25, '00010', 'SC ', 'stock', 'Alice as.', 1, NULL, NULL),
(251, 26, '0001', 'PP ', 'proforma', 'Alice thought.', 1, NULL, NULL),
(252, 26, '0002', 'FT ', 'factura', 'I\'ll eat.', 1, NULL, NULL),
(253, 26, '0003', 'FR ', 'factura-recibo', 'TWO little.', 1, NULL, NULL),
(254, 26, '0004', 'RC ', 'recibo', 'Alice, who.', 1, NULL, NULL),
(255, 26, '0005', 'NC ', 'nota-credito', 'Alice in.', 1, NULL, NULL),
(256, 26, '0006', 'ND ', 'nota-debito', 'I\'m afraid,\' said.', 1, NULL, NULL),
(257, 26, '0007', 'GT ', 'guia-transporte', 'How I wonder.', 1, NULL, NULL),
(258, 26, '0008', 'GR ', 'guia-remessa', 'Lizard\'s.', 1, NULL, NULL),
(259, 26, '0009', 'RD ', 'receita-despesa', 'There are no.', 1, NULL, NULL),
(260, 26, '00010', 'SC ', 'stock', 'Hatter was out of.', 1, NULL, NULL),
(261, 27, '0001', 'PP ', 'proforma', 'Hatter trembled.', 1, NULL, NULL),
(262, 27, '0002', 'FT ', 'factura', 'Don\'t let me help.', 1, NULL, NULL),
(263, 27, '0003', 'FR ', 'factura-recibo', 'It did so.', 1, NULL, NULL),
(264, 27, '0004', 'RC ', 'recibo', 'Duck and a pair.', 1, NULL, NULL),
(265, 27, '0005', 'NC ', 'nota-credito', 'Queen shouted.', 1, NULL, NULL),
(266, 27, '0006', 'ND ', 'nota-debito', 'Queen said.', 1, NULL, NULL),
(267, 27, '0007', 'GT ', 'guia-transporte', 'However, she.', 1, NULL, NULL),
(268, 27, '0008', 'GR ', 'guia-remessa', 'I was going to.', 1, NULL, NULL),
(269, 27, '0009', 'RD ', 'receita-despesa', 'Queen,\' and.', 1, NULL, NULL),
(270, 27, '00010', 'SC ', 'stock', 'Alice looked very.', 1, NULL, NULL),
(271, 28, '0001', 'PP ', 'proforma', 'CHAPTER II. The.', 1, NULL, NULL),
(272, 28, '0002', 'FT ', 'factura', 'I eat\" is the use.', 1, NULL, NULL),
(273, 28, '0003', 'FR ', 'factura-recibo', 'My notion was.', 1, NULL, NULL),
(274, 28, '0004', 'RC ', 'recibo', 'Cat, and vanished.', 1, NULL, NULL),
(275, 28, '0005', 'NC ', 'nota-credito', 'Who for such a.', 1, NULL, NULL),
(276, 28, '0006', 'ND ', 'nota-debito', 'Pigeon, but in a.', 1, NULL, NULL),
(277, 28, '0007', 'GT ', 'guia-transporte', 'First, she.', 1, NULL, NULL),
(278, 28, '0008', 'GR ', 'guia-remessa', 'She got up this.', 1, NULL, NULL),
(279, 28, '0009', 'RD ', 'receita-despesa', 'Alice took up.', 1, NULL, NULL),
(280, 28, '00010', 'SC ', 'stock', 'It did so.', 1, NULL, NULL),
(281, 29, '0001', 'PP ', 'proforma', 'IS a long and a.', 1, NULL, NULL),
(282, 29, '0002', 'FT ', 'factura', 'Five! Don\'t.', 1, NULL, NULL),
(283, 29, '0003', 'FR ', 'factura-recibo', 'Alice. \'Come.', 1, NULL, NULL),
(284, 29, '0004', 'RC ', 'recibo', 'In a little.', 1, NULL, NULL),
(285, 29, '0005', 'NC ', 'nota-credito', 'I used to queer.', 1, NULL, NULL),
(286, 29, '0006', 'ND ', 'nota-debito', 'Mouse, sharply.', 1, NULL, NULL),
(287, 29, '0007', 'GT ', 'guia-transporte', 'I sleep\" is the.', 1, NULL, NULL),
(288, 29, '0008', 'GR ', 'guia-remessa', 'Majesty,\'.', 1, NULL, NULL),
(289, 29, '0009', 'RD ', 'receita-despesa', 'Alice said.', 1, NULL, NULL),
(290, 29, '00010', 'SC ', 'stock', 'The Cat\'s head.', 1, NULL, NULL),
(291, 30, '0001', 'PP ', 'proforma', 'MUST be more to do.', 1, NULL, NULL),
(292, 30, '0002', 'FT ', 'factura', 'Rabbit\'s little.', 1, NULL, NULL),
(293, 30, '0003', 'FR ', 'factura-recibo', 'For instance.', 1, NULL, NULL),
(294, 30, '0004', 'RC ', 'recibo', 'I want to.', 1, NULL, NULL),
(295, 30, '0005', 'NC ', 'nota-credito', 'Five. \'I heard.', 1, NULL, NULL),
(296, 30, '0006', 'ND ', 'nota-debito', 'And he got up in.', 1, NULL, NULL),
(297, 30, '0007', 'GT ', 'guia-transporte', 'Alice did not.', 1, NULL, NULL),
(298, 30, '0008', 'GR ', 'guia-remessa', 'Miss, we\'re doing.', 1, NULL, NULL),
(299, 30, '0009', 'RD ', 'receita-despesa', 'I only wish.', 1, NULL, NULL),
(300, 30, '00010', 'SC ', 'stock', 'I should like.', 1, NULL, NULL),
(301, 31, '0001', 'PP ', 'proforma', 'Dinn may.', 1, NULL, NULL),
(302, 31, '0002', 'FT ', 'factura', 'Cat. \'--so long.', 1, NULL, NULL),
(303, 31, '0003', 'FR ', 'factura-recibo', 'YOU manage?\'.', 1, NULL, NULL),
(304, 31, '0004', 'RC ', 'recibo', 'YOU like.', 1, NULL, NULL),
(305, 31, '0005', 'NC ', 'nota-credito', 'Queen\'s hedgehog.', 1, NULL, NULL),
(306, 31, '0006', 'ND ', 'nota-debito', 'The Hatter.', 1, NULL, NULL),
(307, 31, '0007', 'GT ', 'guia-transporte', 'I fell off the.', 1, NULL, NULL),
(308, 31, '0008', 'GR ', 'guia-remessa', 'And he got up.', 1, NULL, NULL),
(309, 31, '0009', 'RD ', 'receita-despesa', 'White Rabbit.', 1, NULL, NULL),
(310, 31, '00010', 'SC ', 'stock', 'Do you think I can.', 1, NULL, NULL),
(311, 32, '0001', 'PP ', 'proforma', 'Alice said to.', 1, NULL, NULL),
(312, 32, '0002', 'FT ', 'factura', 'Queen in a.', 1, NULL, NULL),
(313, 32, '0003', 'FR ', 'factura-recibo', 'I hadn\'t gone down.', 1, NULL, NULL),
(314, 32, '0004', 'RC ', 'recibo', 'I to get to,\'.', 1, NULL, NULL),
(315, 32, '0005', 'NC ', 'nota-credito', 'Our family.', 1, NULL, NULL),
(316, 32, '0006', 'ND ', 'nota-debito', 'But here, to.', 1, NULL, NULL),
(317, 32, '0007', 'GT ', 'guia-transporte', 'Alice; \'it\'s.', 1, NULL, NULL),
(318, 32, '0008', 'GR ', 'guia-remessa', 'She felt.', 1, NULL, NULL),
(319, 32, '0009', 'RD ', 'receita-despesa', 'Dinah: I think.', 1, NULL, NULL),
(320, 32, '00010', 'SC ', 'stock', 'I\'m sure.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `data` date DEFAULT NULL,
  `serie` varchar(191) DEFAULT NULL,
  `numero` varchar(191) DEFAULT NULL,
  `ref_doc` varchar(191) DEFAULT NULL,
  `armazem` varchar(191) DEFAULT NULL,
  `fornecedor_nome` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fornecedor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `stocks`
--

INSERT INTO `stocks` (`id`, `empresa_id`, `data`, `serie`, `numero`, `ref_doc`, `armazem`, `fornecedor_nome`, `endereco`, `descricao`, `status`, `fornecedor_id`, `created_at`, `updated_at`) VALUES
(1, 28, '2024-11-04', 'SC', '0001', NULL, 'Sede', 'Diverso', NULL, NULL, 1, 28, '2024-11-04 12:12:28', '2024-11-04 12:12:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tax_tables`
--

CREATE TABLE `tax_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(191) DEFAULT NULL,
  `tax_code` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tax_percentage` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tax_tables`
--

INSERT INTO `tax_tables` (`id`, `empresa_id`, `tax_type`, `tax_code`, `description`, `tax_percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(2, 2, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(3, 3, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(4, 4, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(5, 5, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(6, 6, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(7, 7, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(8, 8, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(9, 9, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(10, 10, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(11, 11, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(12, 12, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(13, 13, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(14, 14, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(15, 15, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(16, 16, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(17, 17, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(18, 18, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(19, 19, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(20, 20, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(21, 21, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(22, 22, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(23, 23, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(24, 24, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(25, 25, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(26, 26, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(27, 27, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(28, 28, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(29, 29, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(30, 30, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(31, 31, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL),
(32, 32, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(2, 1, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(3, 2, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(4, 2, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(5, 3, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(6, 3, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(7, 4, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(8, 4, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(9, 5, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(10, 5, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(11, 6, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(12, 6, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(13, 7, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(14, 7, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(15, 8, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(16, 8, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(17, 9, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(18, 9, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(19, 10, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(20, 10, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(21, 11, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(22, 11, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(23, 12, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(24, 12, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(25, 13, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(26, 13, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(27, 14, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(28, 14, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(29, 15, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(30, 15, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(31, 16, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(32, 16, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(33, 17, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(34, 17, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(35, 18, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(36, 18, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(37, 19, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(38, 19, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(39, 20, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(40, 20, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(41, 21, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(42, 21, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(43, 22, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(44, 22, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(45, 23, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(46, 23, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(47, 24, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(48, 24, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(49, 25, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(50, 25, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(51, 26, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(52, 26, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(53, 27, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(54, 27, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(55, 28, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(56, 28, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(57, 29, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(58, 29, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(59, 30, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(60, 30, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(61, 31, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(62, 31, 'S', 'Serviços', 'Serviços', 1, NULL, NULL),
(63, 32, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(64, 32, 'S', 'Serviços', 'Serviços', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_motivo_anulacaos`
--

CREATE TABLE `tipo_motivo_anulacaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipo_motivo_anulacaos`
--

INSERT INTO `tipo_motivo_anulacaos` (`id`, `empresa_id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(2, 1, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(3, 1, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(4, 1, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(5, 1, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(6, 1, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(7, 1, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(8, 2, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(9, 2, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(10, 2, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(11, 2, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(12, 2, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(13, 2, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(14, 2, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(15, 3, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(16, 3, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(17, 3, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(18, 3, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(19, 3, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(20, 3, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(21, 3, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(22, 4, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(23, 4, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(24, 4, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(25, 4, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(26, 4, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(27, 4, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(28, 4, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(29, 5, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(30, 5, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(31, 5, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(32, 5, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(33, 5, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(34, 5, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(35, 5, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(36, 6, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(37, 6, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(38, 6, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(39, 6, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(40, 6, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(41, 6, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(42, 6, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(43, 7, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(44, 7, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(45, 7, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(46, 7, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(47, 7, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(48, 7, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(49, 7, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(50, 8, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(51, 8, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(52, 8, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(53, 8, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(54, 8, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(55, 8, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(56, 8, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(57, 9, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(58, 9, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(59, 9, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(60, 9, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(61, 9, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(62, 9, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(63, 9, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(64, 10, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(65, 10, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(66, 10, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(67, 10, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(68, 10, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(69, 10, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(70, 10, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(71, 11, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(72, 11, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(73, 11, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(74, 11, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(75, 11, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(76, 11, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(77, 11, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(78, 12, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(79, 12, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(80, 12, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(81, 12, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(82, 12, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(83, 12, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(84, 12, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(85, 13, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(86, 13, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(87, 13, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(88, 13, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(89, 13, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(90, 13, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(91, 13, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(92, 14, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(93, 14, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(94, 14, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(95, 14, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(96, 14, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(97, 14, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(98, 14, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(99, 15, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(100, 15, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(101, 15, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(102, 15, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(103, 15, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(104, 15, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(105, 15, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(106, 16, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(107, 16, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(108, 16, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(109, 16, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(110, 16, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(111, 16, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(112, 16, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(113, 17, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(114, 17, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(115, 17, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(116, 17, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(117, 17, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(118, 17, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(119, 17, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(120, 18, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(121, 18, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(122, 18, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(123, 18, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(124, 18, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(125, 18, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(126, 18, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(127, 19, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(128, 19, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(129, 19, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(130, 19, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(131, 19, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(132, 19, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(133, 19, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(134, 20, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(135, 20, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(136, 20, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(137, 20, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(138, 20, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(139, 20, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(140, 20, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(141, 21, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(142, 21, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(143, 21, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(144, 21, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(145, 21, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(146, 21, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(147, 21, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(148, 22, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(149, 22, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(150, 22, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(151, 22, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(152, 22, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(153, 22, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(154, 22, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(155, 23, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(156, 23, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(157, 23, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(158, 23, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(159, 23, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(160, 23, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(161, 23, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(162, 24, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(163, 24, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(164, 24, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(165, 24, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(166, 24, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(167, 24, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(168, 24, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(169, 25, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(170, 25, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(171, 25, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(172, 25, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(173, 25, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(174, 25, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(175, 25, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(176, 26, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(177, 26, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(178, 26, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(179, 26, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(180, 26, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(181, 26, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(182, 26, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(183, 27, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(184, 27, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(185, 27, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(186, 27, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(187, 27, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(188, 27, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(189, 27, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(190, 28, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(191, 28, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(192, 28, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(193, 28, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(194, 28, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(195, 28, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(196, 28, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(197, 29, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(198, 29, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(199, 29, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(200, 29, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(201, 29, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(202, 29, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(203, 29, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(204, 30, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(205, 30, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(206, 30, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(207, 30, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(208, 30, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(209, 30, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(210, 30, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(211, 31, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(212, 31, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(213, 31, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(214, 31, '0004', 'Erros nas quantidades / preos', '', 1, NULL, NULL),
(215, 31, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(216, 31, '0006', 'Produto / servio rejeitado', '', 1, NULL, NULL),
(217, 31, '0007', 'Rutura de stock', '', 1, NULL, NULL),
(218, 32, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(219, 32, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(220, 32, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(221, 32, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(222, 32, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(223, 32, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(224, 32, '0007', 'Rutura de stock', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `empresa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `departamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `reset_password` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `email`, `empresa_id`, `departamento_id`, `password`, `senha`, `foto`, `status`, `reset_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'geral.atomo@admin.com', 1, 1, '$2y$10$4iKOmxlpGM5.MnosFoQro.faNLIqbHH3LQkFPHRcUD0dGAp14pGYi', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-08-22 08:10:28'),
(2, 'Abílio Amaral', 'info.bpcomerce@gmail.com', 2, 4, '$2y$10$iL1DTBQ038YvC7qjo8l7nedxWoJbW8uqB6m1nYXFKr4RMZySMhkXC', NULL, 'default.jpg', 1, 0, NULL, NULL, '2024-08-15 10:58:36'),
(4, 'Adm', 'amaralbusinessinfo@gmail.com', 2, 4, '$2y$10$eZ6l6mRlpYF5fFBi4eHn8.La9aB7Jy1J45rW5GUsqpixBcetQprPO', NULL, 'default.jpg', 0, 0, NULL, '2024-08-15 10:54:52', '2024-08-22 08:59:48'),
(6, 'Administrador', 'hosmaymachado@gmail.com', 3, 7, '$2y$10$9ylHwkV9BMQIceahjskNUuMNIQZsgvhXBw3Oj7dGBE8s8D7IfRZLa', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(7, 'Costa Lima', 'costaulima97@gmail.com', 1, 2, '$2y$10$M437a0/FT2OFnH5et4vqkuj55stOR6AdUyfvjJwa9hGsVURbcnkr6', NULL, 'default.jpg', 1, 0, NULL, '2024-08-22 08:08:20', '2024-08-27 09:21:29'),
(8, 'gonsalves nhanga', 'goncalves.nhanga09@gmail.com', 1, 2, '$2y$10$0BJcQP7sKn.Os/dJhs7D8.pGfhnNMW4BStFOhkgfRWX3.LJXlrad.', NULL, 'default.jpg', 1, 0, NULL, '2024-08-22 08:09:07', '2024-08-28 12:24:04'),
(9, 'Sousa Manuela', 'sousamanuela186@gmail.com', 1, 2, '$2y$10$P1YQgwEn/TOj./GQNsTaUuZESamPw5zwKTU/PIRf5mzlgp878Gyhe', NULL, 'default.jpg', 1, 1, NULL, '2024-08-22 08:09:54', '2024-08-22 08:09:54'),
(10, 'Administrador', 'lucaskacongo14@gmail.com', 4, 10, '$2y$10$0fpOLYCu7q8RzxCgVsj0/.CogNolZomcSJQWe15Eq7trxJRnbJYJK', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(11, 'Administrador', 'victorseabra220@gmail.com', 5, 13, '$2y$10$ikABxAARXtRiXaHNkMjux.xkAqTEmFY7ayjzzPreYLHgNuKjgay4C', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-08-23 12:54:02'),
(12, 'victor seabra', 'victorseabra20@gmail.com', 5, 13, '$2y$10$029/wnLki0gAZu2E6Yfjk.IFDBHs/HLeWwiaSA2xdL7qLJHKYy.Sq', NULL, 'default.jpg', 1, 0, NULL, '2024-08-23 12:54:31', '2024-08-23 12:56:27'),
(13, 'J.Correia', 'jcorreiagm@cprovider.net', 6, 16, '$2y$10$u5Vft/63mSXaZQJeRrR1oOT14fDxRWwTaNG/QUGTal./x05rLfrc6', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-08-26 09:04:18'),
(14, 'Administrador', 'martinsperdo33169@gmail.com', 7, 19, '$2y$10$zLHKrB3gurLKK7Z1iJqSfuDrxrB7xcp0vEE.MGo7FWmds5HBruP3S', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-08-26 09:54:01'),
(15, 'Joel Mariscos', 'martinspedro3169@gmail.com', 7, 19, '$2y$10$CBIy6hEklofzWV9QYI0iD.E4H.CirerZ9J09rmtA5LCcRp0ymnsVq', NULL, 'default.jpg', 1, 0, NULL, '2024-08-26 09:54:56', '2024-08-26 10:08:53'),
(16, 'Administrador', 'ebilengo@gmail.com', 8, 22, '$2y$10$iOchQjVEDaYRIP.862aJsO0lei0spfMLPOZg6b17wQPbcb.FpfGM6', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(17, 'Administrador', 'antonio.baptista@atomo.co.ao', 9, 25, '$2y$10$CmqABrZ.mLZezzKPG0mvhet4WoeNuVzeV7vn7Bruu6s22grqKg2PW', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(18, 'Administrador', 'atomo@atomo.co.ao', 10, 28, '$2y$10$yvlu6PGspRTphL1NCYGws.5jm5gtAB3r7P5LKz.V3H42J6GxNzlPu', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(19, 'Administrador', 'grupoco.comercial@gmail.com', 11, 31, '$2y$10$VTDdnAt9721QVWTnk5F5R.N1plxPgoutBFCF7Z9lcqytVQ2e024IO', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(20, 'Administrador', 'nhanga09@gamil.com', 12, 34, '$2y$10$44f8JQr5XqMaKQ0MV86hNesti7OzQHVAtYuHaoue10FTS4DjSZrzq', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(21, 'Administrador', 'armandoobama67@gmail.com', 13, 37, '$2y$10$6pvjMX/bRNo3rsncVIQyUO.wiLxOdcCuKK38KXdIQe664A9UERC5y', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(23, 'Administrador', 'cafunga@hotmail.com', 14, 40, '$2y$10$9BPSw7ByDP9sqhDFM5nbae1k5MdnrT.fh9qV1BvIhS/0W3P40Fo2i', '20232024', '1724932709.png', 1, 0, NULL, NULL, '2024-11-01 10:36:39'),
(24, 'GELSON MOISÉS NGOLA VALENTE', 'sem@hotmail.com', 14, 40, '$2y$10$VjBik2okWJR/QGjAaHuHB.XKHUdv1Poj0qbxcpiiRvN204mZUuh0y', '222356', '1724933644.jpg', 1, 0, NULL, '2024-08-29 10:10:14', '2024-11-01 10:38:13'),
(25, 'SANTA NEVES', 'Santa@hotmail.com', 14, 42, '$2y$10$w9bAjLGsxOjYf6qsPZGcVuWtGKIN9mtAbgxytNfC.PAg53dwoe7ti', 'Santa', 'default.jpg', 1, 0, NULL, '2024-08-29 10:16:31', '2024-10-03 07:07:00'),
(26, 'Natercia Pelenda Kiassungua', 'Natercia@hotmail.com', 14, 42, '$2y$10$W.N8rPdJgh.dg85w6QlNoepD1dRdZdww5FmcAeybrc4P.sKQZ7E7O', '050420', 'default.jpg', 1, 0, NULL, '2024-08-29 10:20:37', '2024-10-01 11:00:11'),
(27, 'Administrador', 'afuana.comercioeservicos@gmail.com', 15, 43, '$2y$10$lpY96GHMaeARG3ODZXyEVuGhfeorO4sat4G03kVto/MJbS91PBSZC', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(28, 'Administrador', 'ronacio1992@gmail.com', 16, 46, '$2y$10$RyxRH9fwZoU0/kgA/FGUpOWefVFZUElMr1Z1IKC/6rTGKiCVFVfs.', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(29, 'Administrador', 'kupessagil19@gmail.com', 17, 49, '$2y$10$liCEyp7i2OzXrvTh.gYngu1SJ8w1py6mTprMn.puL5ikIJKS4vQXe', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(30, 'Administrador', 'bento.chingolo@gmail.com', 18, 52, '$2y$10$NjAghuq5Rt5NqkMS3jHpEOlX92.NhVShyhx5tlXeWw8iYKG1RdSNq', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(31, 'Administrador', 'geral@atomo.ao', 19, 55, '$2y$10$bxFFZbUg49LWiuARbIXbne3fnDsuPWTqzd/663ScP84fNvReEw/ou', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-10-01 10:29:22'),
(32, 'Augusto Xavier Joaquim', 'socigrafica@gmail.com', 19, 55, '$2y$10$Dm87j2cgRq9Pv.P.269cqubtrF4LZNrnzcNfJv88dXdcNswlcNt3a', '12345678', 'default.jpg', 1, 0, NULL, '2024-10-01 10:28:58', '2024-10-03 06:52:24'),
(33, 'Administrador', 'anitec@anitec.ao', 20, 58, '$2y$10$0Vs0jPEWxY80d0mfVul1ouHmG/06XECceNuf162CJ4K0ofeRf5k0G', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(34, 'MANÁLIA JOSÉ', 'manaliadefatima@gmail.com', 19, 55, '$2y$10$JKl.9dsmm8tuMnQ1G.lXheGP4cTRsSvsGnNuTxEUDZSV1GgUGj2H.', '05021987', 'default.jpg', 1, 0, NULL, '2024-10-03 08:22:09', '2024-12-17 07:51:13'),
(35, 'Administrador', 'arichingolo71@hotmail.com', 21, 61, '$2y$10$5X8QTOJXIw2GfPxyghXYMutew4zX6BDoiiXEi4crMnZ236uoV4Awu', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(36, 'Administrador', 'grupotraore2015@gmail.com', 22, 64, '$2y$10$ZD3tnM/2iEN1qUgMB5FCEOD7h8lJxlP0h2zDIkE5WUGMVro65MXlu', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(37, 'Administrador', 'nicoedgar10@gmail.com', 23, 67, '$2y$10$hm4uWN01GH5lTkoYMEpDweHHZr3nHE4wOiIpnR8ntlcdBp.BxmIza', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(38, 'Administrador', 'chelseaganga.bumbar@gmail.com', 24, 70, '$2y$10$Sd4EIIDr/PpSN6jEZrPwGOoLE8VqGLtkXIiWygW6DewSkRhES1Xrm', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(39, 'Administrador', 'rsongamaso@gmail.com', 25, 73, '$2y$10$SYjQn9pBENJa4kCUILvyreDG.EIbKd12KiaEh4mFJLZIoTsBrmDjG', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(40, 'Administrador', 'magicodecor29@gmail.com', 26, 76, '$2y$10$AcgKiMCqGxMUEKBfHLalzOo1XzrTRsf1oNft0IRxjvuwbwi.MJLxy', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(41, 'Administrador', 'abelgelado@gmail.com', 27, 79, '$2y$10$img0hmRy9yPGzlsUlUjr1OGN8dNWMPRRitBJC7FINHmh5KPbuOMem', NULL, '1730456834.jpg', 1, NULL, NULL, NULL, '2024-11-01 09:27:14'),
(42, 'Fernando Masa Simão', 'fesssegurancaeletronica@gmail.com', 28, 82, '$2y$10$992j3rZEAxtxnC2H1KXuS.DjajAEkFg9TMSSezhbq8RJGuWf72wxG', NULL, '1730471590.png', 1, NULL, NULL, NULL, '2024-11-01 15:44:26'),
(43, 'Administrador', 'admin@admin.com', 29, 85, '$2y$10$CJH3N3Jc5kYgqNedDZNeLuVO2Nl7Dnk22EAGSKWpfKeGn1Er6pNZG', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(44, 'Administrador', 'nsinguijoao01@gmail.com', 30, 88, '$2y$10$U1EZ3EtH3wikJuZWw3UjjOEnieQXE98pWxcMz7kGjZ0fvwTiZzJCK', NULL, '1732640007.png', 1, NULL, NULL, NULL, '2024-11-26 15:53:27'),
(45, 'Administrador', 'financas@odeal.ao', 31, 91, '$2y$10$ljlM15vqbloU19dOKAofW.EilYNpHFgcSrmy.WL.ePcC680.nK94O', NULL, 'default.jpg', 1, NULL, NULL, NULL, NULL),
(46, 'Manuel Quissanga', 'luis.gomes@odeal.ao', 31, 91, '$2y$10$ogv00xJH9RYyyOvDZ24KQOPmSP9yCCsjcNYJbC/8Tmk3jFkNeS8um', '123', 'default.jpg', 1, 0, NULL, '2024-12-02 13:51:06', '2024-12-14 14:41:40'),
(47, 'Manuel Quissanga', 'teotonio.domingos@odeal.ao', 31, 91, '$2y$10$MS4rxZzi0bg93eTbTjmzYeWVTj0AQcV4kv1TfBhcaHhnlzgCfmw.y', '123', 'default.jpg', 1, 0, NULL, '2024-12-02 15:37:57', '2024-12-14 14:42:00'),
(48, 'Administrador', 'paodoce@gmail.com', 32, 94, '$2y$10$AAjpMEc6bQ4fjtPDa/.2feHdv5rEV5lRPfp.l4wPykIdmQw7Q1shy', NULL, 'default.jpg', 1, NULL, NULL, NULL, '2024-12-16 11:36:43');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agts`
--
ALTER TABLE `agts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `armazems`
--
ALTER TABLE `armazems`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artigos_tipo_id_foreign` (`tipo_id`),
  ADD KEY `artigos_retencao_id_foreign` (`retencao_id`),
  ADD KEY `artigos_categoria_id_foreign` (`categoria_id`),
  ADD KEY `artigos_imposto_id_foreign` (`imposto_id`),
  ADD KEY `artigos_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices para tabela `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bugs_criador_id_foreign` (`criador_id`),
  ADD KEY `bugs_executor_id_foreign` (`executor_id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_id_endereco_foreign` (`id_endereco`),
  ADD KEY `clientes_id_contacto_foreign` (`id_contacto`);

--
-- Índices para tabela `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresas_id_endereco_foreign` (`id_endereco`),
  ADD KEY `empresas_id_contacto_foreign` (`id_contacto`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `facturas_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `facturas_moeda_id_foreign` (`moeda_id`),
  ADD KEY `facturas_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `factura_recibos`
--
ALTER TABLE `factura_recibos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factura_recibos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `factura_recibos_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `factura_recibos_moeda_id_foreign` (`moeda_id`),
  ADD KEY `factura_recibos_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fornecedors_id_endereco_foreign` (`id_endereco`),
  ADD KEY `fornecedors_id_contacto_foreign` (`id_contacto`);

--
-- Índices para tabela `gestors`
--
ALTER TABLE `gestors`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_remessas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `guia_remessas_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `guia_remessas_moeda_id_foreign` (`moeda_id`),
  ADD KEY `guia_remessas_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `guia_transportes`
--
ALTER TABLE `guia_transportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guia_transportes_cliente_id_foreign` (`cliente_id`),
  ADD KEY `guia_transportes_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `guia_transportes_moeda_id_foreign` (`moeda_id`),
  ADD KEY `guia_transportes_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `impostos`
--
ALTER TABLE `impostos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_factura_id_foreign` (`factura_id`),
  ADD KEY `items_artigo_id_foreign` (`artigo_id`),
  ADD KEY `items_imposto_id_foreign` (`imposto_id`),
  ADD KEY `items_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_factura_recibos`
--
ALTER TABLE `item_factura_recibos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_factura_recibos_factura_recibo_id_foreign` (`factura_recibo_id`),
  ADD KEY `item_factura_recibos_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_factura_recibos_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_factura_recibos_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_guia_remessas`
--
ALTER TABLE `item_guia_remessas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_guia_remessas_guia_remessa_id_foreign` (`guia_remessa_id`),
  ADD KEY `item_guia_remessas_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_guia_remessas_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_guia_remessas_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_guia_transportes`
--
ALTER TABLE `item_guia_transportes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_guia_transportes_guia_transporte_id_foreign` (`guia_transporte_id`),
  ADD KEY `item_guia_transportes_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_guia_transportes_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_guia_transportes_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_nota_creditos`
--
ALTER TABLE `item_nota_creditos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_nota_creditos_nota_credito_id_foreign` (`nota_credito_id`),
  ADD KEY `item_nota_creditos_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_nota_creditos_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_nota_creditos_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_nota_debitos`
--
ALTER TABLE `item_nota_debitos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_nota_debitos_nota_debito_id_foreign` (`nota_debito_id`),
  ADD KEY `item_nota_debitos_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_nota_debitos_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_nota_debitos_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_proformas`
--
ALTER TABLE `item_proformas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_proformas_proforma_id_foreign` (`proforma_id`),
  ADD KEY `item_proformas_artigo_id_foreign` (`artigo_id`),
  ADD KEY `item_proformas_imposto_id_foreign` (`imposto_id`),
  ADD KEY `item_proformas_retencao_id_foreign` (`retencao_id`);

--
-- Índices para tabela `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_stocks_stock_id_foreign` (`stock_id`),
  ADD KEY `item_stocks_artigo_id_foreign` (`artigo_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Índices para tabela `modo_pagamentos`
--
ALTER TABLE `modo_pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `moedas`
--
ALTER TABLE `moedas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `motivo_anulacaos`
--
ALTER TABLE `motivo_anulacaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `nota_creditos`
--
ALTER TABLE `nota_creditos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nota_creditos_motivo_anulacao_id_foreign` (`motivo_anulacao_id`),
  ADD KEY `nota_creditos_tipo_motivo_anulacao_id_foreign` (`tipo_motivo_anulacao_id`),
  ADD KEY `nota_creditos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `nota_creditos_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `nota_creditos_moeda_id_foreign` (`moeda_id`),
  ADD KEY `nota_creditos_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `nota_debitos`
--
ALTER TABLE `nota_debitos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nota_debitos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `nota_debitos_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `nota_debitos_moeda_id_foreign` (`moeda_id`),
  ADD KEY `nota_debitos_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_empresa_id_unique` (`name`,`guard_name`,`empresa_id`);

--
-- Índices para tabela `proformas`
--
ALTER TABLE `proformas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proformas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `proformas_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `proformas_moeda_id_foreign` (`moeda_id`),
  ADD KEY `proformas_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `receita_despesas`
--
ALTER TABLE `receita_despesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recibos_factura_id_foreign` (`factura_id`),
  ADD KEY `recibos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `recibos_formapagamento_id_foreign` (`formapagamento_id`),
  ADD KEY `recibos_moeda_id_foreign` (`moeda_id`),
  ADD KEY `recibos_utilizador_id_foreign` (`utilizador_id`);

--
-- Índices para tabela `retencaos`
--
ALTER TABLE `retencaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_empresa_id_unique` (`name`,`guard_name`,`empresa_id`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`,`empresa_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Índices para tabela `safts`
--
ALTER TABLE `safts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `saft_audits`
--
ALTER TABLE `saft_audits`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_fornecedor_id_foreign` (`fornecedor_id`);

--
-- Índices para tabela `tax_tables`
--
ALTER TABLE `tax_tables`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_motivo_anulacaos`
--
ALTER TABLE `tipo_motivo_anulacaos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_departamento_id_foreign` (`departamento_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agts`
--
ALTER TABLE `agts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `armazems`
--
ALTER TABLE `armazems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de tabela `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `factura_recibos`
--
ALTER TABLE `factura_recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `gestors`
--
ALTER TABLE `gestors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `guia_transportes`
--
ALTER TABLE `guia_transportes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `impostos`
--
ALTER TABLE `impostos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1249;

--
-- AUTO_INCREMENT de tabela `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `item_factura_recibos`
--
ALTER TABLE `item_factura_recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de tabela `item_guia_remessas`
--
ALTER TABLE `item_guia_remessas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_guia_transportes`
--
ALTER TABLE `item_guia_transportes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_nota_creditos`
--
ALTER TABLE `item_nota_creditos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `item_nota_debitos`
--
ALTER TABLE `item_nota_debitos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_proformas`
--
ALTER TABLE `item_proformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de tabela `item_stocks`
--
ALTER TABLE `item_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `modo_pagamentos`
--
ALTER TABLE `modo_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `moedas`
--
ALTER TABLE `moedas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `motivo_anulacaos`
--
ALTER TABLE `motivo_anulacaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `nota_creditos`
--
ALTER TABLE `nota_creditos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `nota_debitos`
--
ALTER TABLE `nota_debitos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `proformas`
--
ALTER TABLE `proformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `receita_despesas`
--
ALTER TABLE `receita_despesas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de tabela `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `retencaos`
--
ALTER TABLE `retencaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `safts`
--
ALTER TABLE `safts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `saft_audits`
--
ALTER TABLE `saft_audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT de tabela `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tax_tables`
--
ALTER TABLE `tax_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `tipo_motivo_anulacaos`
--
ALTER TABLE `tipo_motivo_anulacaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `artigos`
--
ALTER TABLE `artigos`
  ADD CONSTRAINT `artigos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `artigos_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `artigos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `artigos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `artigos_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `bugs`
--
ALTER TABLE `bugs`
  ADD CONSTRAINT `bugs_criador_id_foreign` FOREIGN KEY (`criador_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bugs_executor_id_foreign` FOREIGN KEY (`executor_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clientes_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `empresas_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `factura_recibos`
--
ALTER TABLE `factura_recibos`
  ADD CONSTRAINT `factura_recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  ADD CONSTRAINT `fornecedors_id_contacto_foreign` FOREIGN KEY (`id_contacto`) REFERENCES `contactos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fornecedors_id_endereco_foreign` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `guia_remessas`
--
ALTER TABLE `guia_remessas`
  ADD CONSTRAINT `guia_remessas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `guia_transportes`
--
ALTER TABLE `guia_transportes`
  ADD CONSTRAINT `guia_transportes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_factura_recibos`
--
ALTER TABLE `item_factura_recibos`
  ADD CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_guia_remessas`
--
ALTER TABLE `item_guia_remessas`
  ADD CONSTRAINT `item_guia_remessas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_guia_remessas_guia_remessa_id_foreign` FOREIGN KEY (`guia_remessa_id`) REFERENCES `guia_remessas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_guia_remessas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_guia_remessas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_guia_transportes`
--
ALTER TABLE `item_guia_transportes`
  ADD CONSTRAINT `item_guia_transportes_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_guia_transportes_guia_transporte_id_foreign` FOREIGN KEY (`guia_transporte_id`) REFERENCES `guia_transportes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_guia_transportes_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_guia_transportes_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_nota_creditos`
--
ALTER TABLE `item_nota_creditos`
  ADD CONSTRAINT `item_nota_creditos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_nota_creditos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_nota_creditos_nota_credito_id_foreign` FOREIGN KEY (`nota_credito_id`) REFERENCES `nota_creditos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_nota_creditos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_nota_debitos`
--
ALTER TABLE `item_nota_debitos`
  ADD CONSTRAINT `item_nota_debitos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_nota_debitos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_nota_debitos_nota_debito_id_foreign` FOREIGN KEY (`nota_debito_id`) REFERENCES `nota_debitos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_nota_debitos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_proformas`
--
ALTER TABLE `item_proformas`
  ADD CONSTRAINT `item_proformas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`),
  ADD CONSTRAINT `item_proformas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`),
  ADD CONSTRAINT `item_proformas_proforma_id_foreign` FOREIGN KEY (`proforma_id`) REFERENCES `proformas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_proformas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_stocks`
--
ALTER TABLE `item_stocks`
  ADD CONSTRAINT `item_stocks_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stocks_stock_id_foreign` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `nota_creditos`
--
ALTER TABLE `nota_creditos`
  ADD CONSTRAINT `nota_creditos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_motivo_anulacao_id_foreign` FOREIGN KEY (`motivo_anulacao_id`) REFERENCES `motivo_anulacaos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_tipo_motivo_anulacao_id_foreign` FOREIGN KEY (`tipo_motivo_anulacao_id`) REFERENCES `tipo_motivo_anulacaos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota_debitos`
--
ALTER TABLE `nota_debitos`
  ADD CONSTRAINT `nota_debitos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `proformas`
--
ALTER TABLE `proformas`
  ADD CONSTRAINT `proformas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
