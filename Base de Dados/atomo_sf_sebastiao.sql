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
-- Banco de dados: `atomo_sf_sebastiao`
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

INSERT INTO `armazems` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Sede', 'There was a paper.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`id`, `codigo`, `designacao`, `tipo_id`, `retencao_id`, `categoria_id`, `imposto_id`, `preco`, `imagem_1`, `imagem_2`, `imagem_3`, `unidade`, `fornecedor_id`, `codigo_barra`, `is_stock`, `stock_minimo`, `stock_maximo`, `observacao`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-0001', 'Óculos de Sol', 1, 1, 1, 4, 10000, 'null.png', 'null.png', 'null.png', '4', 1, NULL, 1, '0', '0', NULL, 1, '2023-12-29 11:16:34', '2024-06-13 05:23:48'),
(2, '2024-0002', 'P1-001 GRIFE GUCCI F', 1, 1, 1, 4, 13000, 'null.png', 'null.png', 'null.png', '40', 1, NULL, 1, '1', '100', NULL, 1, '2024-04-28 13:16:03', '2024-05-13 05:06:29'),
(3, '2024-0003', 'P1 002 GRIFE GUCCI F', 1, 1, 1, 4, 13000, 'null.png', 'null.png', 'null.png', '1', 1, NULL, 0, '0', '0', NULL, 1, '2024-04-28 13:24:25', '2024-04-28 13:24:25'),
(4, '2024-0004', 'P1 003 GRIFE GUCCI F', 1, 1, 1, 1, 13000, 'null.png', 'null.png', 'null.png', '1', 1, NULL, 0, '0', '0', NULL, 1, '2024-04-28 13:33:25', '2024-04-28 13:36:31'),
(5, '2024-0005', 'P1 004 GRIFE GUCCI F', 1, 1, 1, 1, 13000, 'null.png', 'null.png', 'null.png', '3', 1, NULL, 0, '0', '0', NULL, 1, '2024-04-28 13:35:55', '2024-05-28 15:44:21'),
(6, '2024-0006', 'lentes Brancas', 1, 1, 1, 1, 14000, 'null.png', 'null.png', 'null.png', '40', 1, NULL, 1, '0', '0', NULL, 1, '2024-05-12 13:21:32', '2024-05-13 05:10:52'),
(7, '2024-0007', 'p1 001 A.F', 1, 1, 1, 1, 13000, 'null.png', 'null.png', 'null.png', '45', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-13 04:59:13', '2024-05-28 15:43:26'),
(8, '2024-0008', 'crianças', 1, 1, 1, 1, 5000, 'null.png', 'null.png', 'null.png', '15', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-13 05:01:23', '2024-05-28 15:42:36'),
(9, '2024-0009', 'lentes fotogrey', 1, 1, 1, 1, 14000, 'null.png', 'null.png', 'null.png', '80', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-13 05:12:10', '2024-05-21 09:01:47'),
(10, '2024-0010', 'Lentes Branca -', 1, 1, 1, 1, 135000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-13 15:51:38', '2024-12-02 16:07:22'),
(11, '2024-0011', 'P1 007 A F', 1, 1, 1, 1, 12000, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-13 15:59:27', '2024-05-21 08:40:24'),
(12, '2024-0012', 'P2 010 Cartier f', 1, 1, 1, 1, 13000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-15 06:31:22', '2024-05-15 06:31:22'),
(13, '2024-0013', 'Grif partido', 1, 1, 1, 1, 8000, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-15 06:53:17', '2024-05-15 06:53:17'),
(14, '2024-0014', 'Caixa', 1, 1, 1, 1, 1500, 'null.png', 'null.png', 'null.png', '17', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-16 10:51:28', '2024-05-16 11:15:49'),
(15, '2024-0014', 'Caixa', 1, 1, 1, 1, 1500, 'null.png', 'null.png', 'null.png', '17', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-16 10:51:33', '2024-05-16 10:51:33'),
(16, '2024-0016', 'Spray', 1, 1, 1, 2, 2000, 'null.png', 'null.png', 'null.png', '22', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-16 10:58:36', '2024-05-28 16:03:14'),
(17, '2024-0017', 'Fita criança', 1, 1, 1, 1, 1000, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-16 11:19:36', '2024-05-16 11:19:36'),
(18, '2024-0018', 'Fita adulto', 1, 1, 1, 1, 3500, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-16 11:21:32', '2024-05-16 11:21:32'),
(19, '2024-0019', 'lente policarbonato', 1, 1, 1, 1, 60000, 'null.png', 'null.png', 'null.png', '20', NULL, NULL, 0, '0', '0', NULL, 1, '2024-05-19 09:26:13', '2024-05-19 09:26:13'),
(20, '2024-0020', 'armação', 1, 1, 1, 1, 16000, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-19 09:33:58', '2024-12-12 10:36:08'),
(21, '2024-0021', 'Lentes progressivas', 1, 1, 1, 2, 85000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 1, '0', '0', NULL, 1, '2024-05-21 09:29:26', '2024-12-12 10:35:37'),
(22, '2024-0022', 'Lentes altas -5;-1', 2, 1, 1, 1, 45000, 'null.png', 'null.png', 'null.png', '30', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-21 12:28:09', '2024-05-21 12:28:09'),
(23, '2024-0023', 'Lentes altas cilíndrica', 1, 1, 1, 1, 18000, 'null.png', 'null.png', 'null.png', '20', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-23 09:19:30', '2024-05-23 09:19:30'),
(24, '2024-0024', 'Lentes 17', 1, 1, 1, 1, 17000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-05-28 10:23:12', '2024-05-28 10:23:12'),
(25, '2024-0025', 'lentes altas s', 1, 1, 1, 1, 30000, 'null.png', 'null.png', 'null.png', '1', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-01 10:48:39', '2024-06-01 10:48:39'),
(26, '2024-0026', 'lentes altas 2', 1, 1, 1, 1, 20000, 'null.png', 'null.png', 'null.png', '3', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-04 07:11:53', '2024-06-04 07:11:53'),
(27, '2024-0027', 'Armação 7.', 1, 1, 1, 1, 7000, 'null.png', 'null.png', 'null.png', '19', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-04 11:46:38', '2024-06-04 11:46:38'),
(28, '2024-0028', 'Lente fotogrey 13', 1, 1, 1, 1, 13000, 'null.png', 'null.png', 'null.png', '6', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-04 12:56:30', '2024-06-04 12:56:30'),
(29, '2024-0029', 'Lentes branca alta', 1, 1, 1, 4, 60000, 'null.png', 'null.png', 'null.png', '3', 1, NULL, 1, '0', '0', NULL, 1, '2024-06-19 10:48:28', '2024-09-10 09:06:43'),
(30, '2024-0030', 'Armação fechada (-6;-6)', 2, 1, 1, 1, 55000, 'null.png', 'null.png', 'null.png', '3', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-19 10:50:10', '2024-06-19 10:50:10'),
(31, '2024-0031', 'Concerto', 2, 1, 1, 1, 5000, 'null.png', 'null.png', 'null.png', '80', 1, NULL, 0, '0', '0', NULL, 1, '2024-06-20 10:08:14', '2024-06-20 10:08:14'),
(32, '2024-0032', 'Lentes brancas altas -', 2, 1, 1, 4, 50000, 'null.png', 'null.png', 'null.png', '2', 1, NULL, 0, '0', '0', NULL, 1, '2024-07-04 07:02:03', '2024-07-04 07:02:03'),
(33, '2024-0033', 'Lentes progressivas G', 2, 1, 1, 1, 90000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 1, '0', '0', NULL, 1, '2024-07-18 10:32:11', '2024-12-13 15:19:52'),
(34, '2024-0034', 'Lentes altas.', 1, 1, 1, 4, 30000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-07-20 07:11:45', '2024-07-20 07:11:45'),
(35, '2024-0035', 'Lentes altas 5', 2, 1, 1, 4, 50000, 'null.png', 'null.png', 'null.png', '5', 1, NULL, 0, '0', '0', NULL, 1, '2024-07-31 07:51:24', '2024-07-31 07:51:24'),
(36, '2024-0036', 'Branca altas', 1, 1, 1, 4, 25000, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, '2024-08-08 14:51:25', '2024-08-08 14:51:25'),
(37, '2024-0037', 'Lentes  alta 45', 1, 1, 1, 4, 45000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-09-12 13:15:20', '2024-09-12 13:15:20'),
(38, '2024-0038', 'Armação homem 18', 1, 1, 1, 4, 18000, 'null.png', 'null.png', 'null.png', '10', 1, NULL, 0, '0', '0', NULL, 1, '2024-09-12 13:17:05', '2024-09-12 13:17:05'),
(39, '2024-0039', 'Caixa 3.5', 1, 1, 1, 4, 3500, 'null.png', 'null.png', 'null.png', NULL, NULL, NULL, 0, '0', '0', NULL, 1, '2024-09-12 13:18:54', '2024-09-12 13:18:54'),
(40, '2024-0040', 'Armação homem', 2, 1, 1, 4, 25000, 'null.png', 'null.png', 'null.png', '40', 1, NULL, 0, '0', '0', NULL, 1, '2024-10-01 09:28:15', '2024-10-01 09:28:15'),
(41, '2024-0041', 'Consulta optometria', 1, 1, 1, 4, 3500, 'null.png', 'null.png', 'null.png', '12', 1, NULL, 0, '0', '0', NULL, 1, '2024-12-02 16:09:41', '2024-12-02 16:09:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancos`
--

CREATE TABLE `bancos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) NOT NULL,
  `numero` varchar(191) NOT NULL,
  `iban` varchar(191) NOT NULL,
  `swift` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bugs`
--

CREATE TABLE `bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `categorias` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Diverso', 'Alice heard the.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED DEFAULT NULL,
  `id_contacto` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `codigo`, `designacao`, `contribuinte`, `zona`, `identificacao`, `observacao`, `imagem`, `status`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, '2023-0001', 'Alfreia Manuel', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 1, 1, NULL, '2024-05-13 15:10:46'),
(2, '2023-0002', 'sdsds', NULL, NULL, NULL, NULL, 'null.png', 0, 2, 2, '2023-12-29 11:03:16', '2023-12-29 11:03:16'),
(3, '2024-0003', 'DEUS', NULL, NULL, NULL, NULL, 'null.png', 1, 3, 3, '2024-04-20 15:25:46', '2024-04-26 11:39:06'),
(4, '2024-0004', 'DOS SANTOS', NULL, NULL, NULL, NULL, 'null.png', 1, 4, 4, '2024-04-20 15:44:34', '2024-04-26 11:39:05'),
(5, '2024-0005', 'Aderito', NULL, NULL, NULL, NULL, 'null.png', 1, 5, 5, '2024-04-21 11:42:11', '2024-04-21 11:42:11'),
(6, '2024-0006', 'Tarcilia prazer', NULL, NULL, NULL, NULL, 'null.png', 1, 6, 6, '2024-04-25 12:00:16', '2024-04-25 12:00:16'),
(7, '2024-0007', 'Beatriz Diogo', NULL, NULL, NULL, NULL, 'null.png', 1, 7, 7, '2024-04-26 11:47:08', '2024-04-26 11:47:08'),
(8, '2024-0008', 'Adão', NULL, NULL, NULL, NULL, 'null.png', 1, 8, 8, '2024-04-28 12:46:10', '2024-04-28 12:46:10'),
(9, '2024-0009', 'Teresa Bernado', NULL, NULL, NULL, NULL, 'null.png', 1, 9, 9, '2024-05-09 12:38:02', '2024-05-09 12:38:02'),
(10, '2024-0010', 'Gilson da Costa', NULL, NULL, NULL, NULL, 'null.png', 1, 10, 10, '2024-05-09 13:04:59', '2024-05-09 13:04:59'),
(11, '2024-0011', 'Alfreia Manuel', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 11, 11, '2024-05-12 12:38:39', '2024-05-12 12:38:39'),
(12, '2024-0012', 'Alfreia S Manuel', 'Não tem', NULL, NULL, NULL, 'null.png', 1, 12, 12, '2024-05-14 10:16:57', '2024-05-14 10:16:57'),
(13, '2024-0013', 'Claudina Abreu', NULL, NULL, NULL, NULL, 'null.png', 1, 13, 13, '2024-05-15 06:14:40', '2024-05-15 06:14:40'),
(14, '2024-0014', 'Janes', NULL, NULL, NULL, NULL, 'null.png', 1, 14, 14, '2024-05-15 06:39:21', '2024-05-15 06:39:21'),
(15, '2024-0015', 'Claudina Abreu', NULL, NULL, NULL, NULL, 'null.png', 1, 15, 15, '2024-05-15 08:50:45', '2024-05-15 08:50:45'),
(16, '2024-0016', 'Brasilina Gonsalves', NULL, NULL, NULL, NULL, 'null.png', 1, 16, 16, '2024-05-16 05:59:03', '2024-05-16 05:59:03'),
(17, '2024-0017', 'Detevina Pinheiro', NULL, NULL, NULL, NULL, 'null.png', 1, 17, 17, '2024-05-16 10:52:09', '2024-05-16 10:52:09'),
(18, '2024-0018', 'Lindalva', NULL, NULL, NULL, NULL, 'null.png', 1, 18, 18, '2024-05-17 07:57:21', '2024-05-17 07:57:21'),
(19, '2024-0019', 'Marinela  Fernandes lucas', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 19, 19, '2024-05-19 09:28:44', '2024-05-19 09:28:44'),
(20, '2024-0020', 'Jussara Furtado', NULL, NULL, NULL, NULL, 'null.png', 1, 20, 20, '2024-05-20 10:10:31', '2024-05-20 10:10:31'),
(21, '2024-0021', 'Luzia Armando', NULL, NULL, NULL, NULL, 'null.png', 1, 21, 21, '2024-05-20 13:10:42', '2024-05-20 13:10:42'),
(22, '2024-0022', 'Natercia', NULL, NULL, NULL, NULL, 'null.png', 1, 22, 22, '2024-05-20 14:27:22', '2024-05-20 14:27:22'),
(23, '2024-0023', 'Mambo João', NULL, NULL, NULL, NULL, 'null.png', 1, 23, 23, '2024-05-21 08:51:16', '2024-05-21 08:51:16'),
(24, '2024-0024', 'Mambo João', NULL, NULL, NULL, NULL, 'null.png', 1, 24, 24, '2024-05-21 08:51:47', '2024-05-21 08:51:47'),
(25, '2024-0025', 'Márcia João', NULL, NULL, NULL, NULL, 'null.png', 1, 25, 25, '2024-05-21 08:53:02', '2024-05-21 08:53:02'),
(26, '2024-0026', 'Julia Mafana', NULL, NULL, NULL, NULL, 'null.png', 1, 26, 26, '2024-05-21 10:26:24', '2024-05-21 10:26:24'),
(27, '2024-0027', 'Carlos Nobre', NULL, NULL, NULL, NULL, 'null.png', 1, 27, 27, '2024-05-21 10:28:54', '2024-05-21 10:28:54'),
(28, '2024-0028', 'Maria Abreu', '000196503LA013', NULL, NULL, NULL, 'null.png', 1, 28, 28, '2024-05-21 10:47:41', '2024-05-21 10:47:41'),
(29, '2024-0029', 'Isabel', NULL, NULL, NULL, NULL, 'null.png', 1, 29, 29, '2024-05-21 13:23:44', '2024-05-21 13:23:44'),
(30, '2024-0030', 'Telvania Morais', NULL, NULL, NULL, NULL, 'null.png', 1, 30, 30, '2024-05-23 09:22:50', '2024-05-23 09:22:50'),
(31, '2024-0031', 'Yanusca', NULL, NULL, NULL, NULL, 'null.png', 1, 31, 31, '2024-05-23 09:59:49', '2024-05-23 09:59:49'),
(32, '2024-0032', 'Vanda da Conceicão', NULL, NULL, NULL, NULL, 'null.png', 1, 32, 32, '2024-05-23 12:50:40', '2024-05-23 12:50:40'),
(33, '2024-0033', 'Iraquelma', NULL, NULL, NULL, NULL, 'null.png', 1, 33, 33, '2024-05-24 09:58:10', '2024-05-24 09:58:10'),
(34, '2024-0034', 'Yamira Pedro', NULL, NULL, NULL, NULL, 'null.png', 1, 34, 34, '2024-05-24 10:00:13', '2024-05-24 10:00:13'),
(35, '2024-0035', 'Avelino', NULL, NULL, NULL, NULL, 'null.png', 1, 35, 35, '2024-05-25 08:41:24', '2024-05-25 08:41:24'),
(36, '2024-0036', 'Luiza', NULL, NULL, NULL, NULL, 'null.png', 1, 36, 36, '2024-05-25 10:31:36', '2024-05-25 10:31:36'),
(37, '2024-0037', 'Claucia', NULL, NULL, NULL, NULL, 'null.png', 1, 37, 37, '2024-05-28 10:13:02', '2024-05-28 10:13:02'),
(38, '2024-0038', 'Katarina', NULL, NULL, NULL, NULL, 'null.png', 1, 38, 38, '2024-05-28 10:14:15', '2024-05-28 10:14:15'),
(39, '2024-0039', 'Carlos Torres', NULL, NULL, NULL, NULL, 'null.png', 1, 39, 39, '2024-05-28 11:51:19', '2024-05-28 11:51:19'),
(40, '2024-0040', 'Nginga Elisa', NULL, NULL, NULL, NULL, 'null.png', 1, 40, 40, '2024-05-28 11:56:54', '2024-05-28 11:56:54'),
(41, '2024-0041', 'Debora Mateus', NULL, NULL, NULL, NULL, 'null.png', 1, 41, 41, '2024-05-29 11:39:02', '2024-05-29 11:39:02'),
(42, '2024-0042', 'Manuel', NULL, NULL, NULL, NULL, 'null.png', 1, 42, 42, '2024-05-30 08:12:10', '2024-05-30 08:12:10'),
(43, '2024-0043', 'Marilia de Fatima', NULL, NULL, NULL, NULL, 'null.png', 1, 43, 43, '2024-05-30 11:19:31', '2024-05-30 11:19:31'),
(44, '2024-0044', 'Wilma', NULL, NULL, NULL, NULL, 'null.png', 1, 44, 44, '2024-05-31 10:45:00', '2024-05-31 10:45:00'),
(45, '2024-0045', 'Edna Viera', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 45, 45, '2024-06-01 10:50:47', '2024-06-01 10:50:47'),
(46, '2024-0046', 'Delfina Bravo', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 46, 46, '2024-06-01 11:38:32', '2024-06-01 11:38:32'),
(47, '2024-0047', 'Sebastião Cristovão', NULL, NULL, NULL, NULL, 'null.png', 1, 47, 47, '2024-06-03 05:42:29', '2024-06-03 05:42:29'),
(48, '2024-0048', 'Etiante cardoso', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 48, 48, '2024-06-04 07:07:43', '2024-06-04 07:07:43'),
(49, '2024-0049', 'Marcia rafael  Gongo', '0000050017428338', NULL, NULL, NULL, 'null.png', 1, 49, 49, '2024-06-04 09:30:43', '2024-06-04 09:30:43'),
(50, '2024-0050', 'Idalia Dala', '006649697LA047', NULL, NULL, NULL, 'null.png', 1, 50, 50, '2024-06-04 11:31:52', '2024-06-04 11:31:52'),
(51, '2024-0051', 'Estefánia Domingos', '004655160ME044', NULL, NULL, NULL, 'null.png', 1, 51, 51, '2024-06-04 11:42:42', '2024-06-04 11:42:42'),
(52, '2024-0051', 'Estefánia Domingos', '004655160ME044', NULL, NULL, NULL, 'null.png', 1, 52, 52, '2024-06-04 11:42:43', '2024-06-04 11:42:43'),
(53, '2024-0053', 'José Mateus Pinto', '000213269LA016', NULL, NULL, NULL, 'null.png', 1, 53, 53, '2024-06-04 13:00:35', '2024-06-04 13:00:35'),
(54, '2024-0054', 'Celma Rosalina', '007901893LA042', NULL, NULL, NULL, 'null.png', 1, 54, 54, '2024-06-04 13:26:10', '2024-06-04 13:26:10'),
(55, '2024-0055', 'Hezalia pinheiro', '003238265LA033', NULL, NULL, NULL, 'null.png', 1, 55, 55, '2024-06-04 14:17:53', '2024-06-04 14:17:53'),
(56, '2024-0056', 'Joana Monteiro', '000045935LA038', NULL, NULL, NULL, 'null.png', 1, 56, 56, '2024-06-07 07:04:47', '2024-06-07 07:04:47'),
(57, '2024-0057', 'Jandira de Matos', '004655160ME044', NULL, NULL, NULL, 'null.png', 1, 57, 57, '2024-06-07 07:30:55', '2024-06-07 07:30:55'),
(58, '2024-0058', 'Eliane doa Santos', NULL, NULL, NULL, NULL, 'null.png', 1, 58, 58, '2024-06-07 07:39:58', '2024-06-07 07:39:58'),
(59, '2024-0059', 'Augusta Salomé', NULL, NULL, NULL, NULL, 'null.png', 1, 59, 59, '2024-06-07 07:41:31', '2024-06-07 07:41:31'),
(60, '2024-0060', 'Edgar', NULL, NULL, NULL, NULL, 'null.png', 1, 60, 60, '2024-06-08 09:19:28', '2024-06-08 09:19:28'),
(61, '2024-0061', 'Estefania', NULL, NULL, NULL, NULL, 'null.png', 1, 61, 61, '2024-06-10 13:52:41', '2024-06-10 13:52:41'),
(62, '2024-0062', 'ALEXANDRA', NULL, NULL, NULL, NULL, 'null.png', 1, 62, 62, '2024-06-10 13:53:53', '2024-06-10 13:53:53'),
(63, '2024-0063', 'Justino', NULL, NULL, NULL, NULL, 'null.png', 1, 63, 63, '2024-06-11 08:57:21', '2024-06-11 08:57:21'),
(64, '2024-0064', 'Adelina', NULL, NULL, NULL, NULL, 'null.png', 1, 64, 64, '2024-06-12 07:17:14', '2024-06-12 07:17:14'),
(65, '2024-0065', 'Zumira', NULL, NULL, NULL, NULL, 'null.png', 1, 65, 65, '2024-06-12 13:26:09', '2024-06-12 13:26:09'),
(66, '2024-0066', 'Helena', NULL, NULL, NULL, NULL, 'null.png', 1, 66, 66, '2024-06-13 08:01:07', '2024-06-13 08:01:07'),
(67, '2024-0067', 'Ernesto', NULL, NULL, NULL, NULL, 'null.png', 1, 67, 67, '2024-06-13 11:53:28', '2024-06-13 11:53:28'),
(68, '2024-0068', 'Aline', NULL, NULL, NULL, NULL, 'null.png', 1, 68, 68, '2024-06-14 08:33:04', '2024-06-14 08:33:04'),
(69, '2024-0069', 'Edmara', NULL, NULL, NULL, NULL, 'null.png', 1, 69, 69, '2024-06-14 10:41:54', '2024-06-14 10:41:54'),
(70, '2024-0070', 'Merifica da Conceição', NULL, NULL, NULL, NULL, 'null.png', 1, 70, 70, '2024-06-15 06:22:46', '2024-06-15 06:22:46'),
(71, '2024-0071', 'Ana Elvira', NULL, NULL, NULL, NULL, 'null.png', 1, 71, 71, '2024-06-15 06:24:33', '2024-06-15 06:24:33'),
(72, '2024-0072', 'Dona Nunes', NULL, NULL, NULL, NULL, 'null.png', 1, 72, 72, '2024-06-15 06:26:25', '2024-06-15 06:26:25'),
(73, '2024-0073', 'Jumara', NULL, NULL, NULL, NULL, 'null.png', 1, 73, 73, '2024-06-15 10:24:14', '2024-06-15 10:24:14'),
(74, '2024-0074', 'Rosa Torres', NULL, NULL, NULL, NULL, 'null.png', 1, 74, 74, '2024-06-15 12:57:32', '2024-06-15 12:57:32'),
(75, '2024-0075', 'Brasilina Gonsalves', NULL, NULL, NULL, NULL, 'null.png', 1, 75, 75, '2024-06-17 10:05:28', '2024-06-17 10:05:28'),
(76, '2024-0076', 'Elvira Andrade', NULL, NULL, NULL, NULL, 'null.png', 1, 76, 76, '2024-06-17 11:30:59', '2024-06-17 11:30:59'),
(77, '2024-0077', 'Elga Dio', NULL, NULL, NULL, NULL, 'null.png', 1, 77, 77, '2024-06-18 11:07:28', '2024-06-18 11:07:28'),
(78, '2024-0078', 'Nomia', NULL, NULL, NULL, NULL, 'null.png', 1, 78, 78, '2024-06-18 13:16:12', '2024-06-18 13:16:12'),
(79, '2024-0079', 'Manuel Joaquim Bumba', '000264484LA030', NULL, NULL, NULL, 'null.png', 1, 79, 79, '2024-06-19 11:57:48', '2024-06-19 11:57:48'),
(80, '2024-0080', 'Vania', NULL, NULL, NULL, NULL, 'null.png', 1, 80, 80, '2024-06-20 10:03:40', '2024-06-20 10:03:40'),
(81, '2024-0081', 'Claudina', NULL, NULL, NULL, NULL, 'null.png', 1, 81, 81, '2024-06-20 10:16:28', '2024-06-20 10:16:28'),
(82, '2024-0082', 'Delma Victoria', NULL, NULL, NULL, NULL, 'null.png', 1, 82, 82, '2024-06-21 11:30:59', '2024-06-21 11:30:59'),
(83, '2024-0083', 'Avelino Malebo', NULL, NULL, NULL, NULL, 'null.png', 1, 83, 83, '2024-06-24 12:16:03', '2024-06-24 12:16:03'),
(84, '2024-0084', 'Maria Gomes', NULL, NULL, NULL, NULL, 'null.png', 1, 84, 84, '2024-07-01 12:21:55', '2024-07-01 12:21:55'),
(85, '2024-0085', 'Capitão', NULL, NULL, NULL, NULL, 'null.png', 0, 85, 85, '2024-07-01 12:23:53', '2024-07-01 12:23:53'),
(86, '2024-0086', 'Sónia Fernandes', NULL, NULL, NULL, NULL, 'null.png', 1, 86, 86, '2024-07-01 12:26:07', '2024-07-01 12:26:07'),
(87, '2024-0087', 'Setlvia Simão', NULL, NULL, NULL, NULL, 'null.png', 1, 87, 87, '2024-07-01 12:29:30', '2024-07-01 12:29:30'),
(88, '2024-0088', 'Erivaldo Jesus', NULL, NULL, NULL, NULL, 'null.png', 1, 88, 88, '2024-07-01 12:31:03', '2024-07-01 12:31:03'),
(89, '2024-0089', 'Carina Gomes', NULL, NULL, NULL, NULL, 'null.png', 1, 89, 89, '2024-07-01 12:33:58', '2024-07-01 12:33:58'),
(90, '2024-0090', 'gisalfa', NULL, NULL, NULL, NULL, 'null.png', 1, 90, 90, '2024-07-01 12:36:05', '2024-07-01 12:36:05'),
(91, '2024-0091', 'Delfina', NULL, NULL, NULL, NULL, 'null.png', 1, 91, 91, '2024-07-01 12:37:28', '2024-07-01 12:37:28'),
(92, '2024-0092', 'Graciane', NULL, NULL, NULL, NULL, 'null.png', 1, 92, 92, '2024-07-01 12:38:56', '2024-07-01 12:38:56'),
(93, '2024-0093', 'Guilmar', NULL, NULL, NULL, NULL, 'null.png', 1, 93, 93, '2024-07-01 12:43:56', '2024-07-01 12:43:56'),
(94, '2024-0094', 'Dilcia', NULL, NULL, NULL, NULL, 'null.png', 1, 94, 94, '2024-07-01 12:46:07', '2024-07-01 12:46:07'),
(95, '2024-0095', 'Maria Gomes', NULL, NULL, NULL, NULL, 'null.png', 1, 95, 95, '2024-07-01 12:49:12', '2024-07-01 12:49:12'),
(96, '2024-0096', 'Capitão', NULL, NULL, NULL, NULL, 'null.png', 1, 96, 96, '2024-07-02 10:53:57', '2024-07-02 10:53:57'),
(97, '2024-0096', 'Antonia Marques', 'Consumidor Final', NULL, NULL, NULL, 'null.png', 1, 97, 97, '2024-07-02 10:54:05', '2024-07-02 10:54:05'),
(98, '2024-0097', 'Abel Sapunete', NULL, NULL, NULL, NULL, 'null.png', 1, 98, 98, '2024-07-02 10:56:37', '2024-07-02 10:56:37'),
(99, '2024-0099', 'Neusa da Silva', '007603129BA043', NULL, NULL, NULL, 'null.png', 1, 99, 99, '2024-07-04 06:58:13', '2024-07-04 06:58:13'),
(100, '2024-0100', 'Eliane Texeira', NULL, NULL, NULL, NULL, 'null.png', 1, 100, 100, '2024-07-05 05:54:42', '2024-07-05 05:54:42'),
(101, '2024-0101', 'Azenaide Manuel', NULL, NULL, NULL, NULL, 'null.png', 1, 101, 101, '2024-07-05 05:56:45', '2024-07-05 05:56:45'),
(102, '2024-0102', 'Yolanda', NULL, NULL, NULL, NULL, 'null.png', 1, 102, 102, '2024-07-05 05:58:14', '2024-07-05 05:58:14'),
(103, '2024-0103', 'Fernanda', NULL, NULL, NULL, NULL, 'null.png', 1, 103, 103, '2024-07-05 06:01:55', '2024-07-05 06:01:55'),
(104, '2024-0104', 'Lina Teresa', NULL, NULL, NULL, NULL, 'null.png', 1, 104, 104, '2024-07-05 06:04:11', '2024-07-05 06:04:11'),
(105, '2024-0105', 'Ana Carina', NULL, NULL, NULL, NULL, 'null.png', 1, 105, 105, '2024-07-05 11:37:43', '2024-07-05 11:37:43'),
(106, '2024-0106', 'Admiro', NULL, NULL, NULL, NULL, 'null.png', 1, 106, 106, '2024-07-05 11:39:14', '2024-07-05 11:39:14'),
(107, '2024-0107', 'Leu', NULL, NULL, NULL, NULL, 'null.png', 1, 107, 107, '2024-07-08 12:17:01', '2024-07-08 12:17:01'),
(108, '2024-0108', 'Helena', NULL, NULL, NULL, NULL, 'null.png', 1, 108, 108, '2024-07-08 12:35:17', '2024-07-08 12:35:17'),
(109, '2024-0109', 'Maria Brandão', NULL, NULL, NULL, NULL, 'null.png', 1, 109, 109, '2024-07-09 10:08:20', '2024-07-09 10:08:20'),
(110, '2024-0110', 'Lizandra', NULL, NULL, NULL, NULL, 'null.png', 1, 110, 110, '2024-07-09 10:10:09', '2024-07-09 10:10:09'),
(111, '2024-0111', 'Luzia Mança', NULL, NULL, NULL, NULL, 'null.png', 1, 111, 111, '2024-07-09 14:07:26', '2024-07-09 14:07:26'),
(112, '2024-0112', 'Meury', NULL, NULL, NULL, NULL, 'null.png', 1, 112, 112, '2024-07-09 14:09:49', '2024-07-09 14:09:49'),
(113, '2024-0113', 'Mariana da Silva santiago', 'Contribuiente', NULL, NULL, NULL, 'null.png', 0, 113, 113, '2024-07-10 10:25:51', '2024-07-10 10:25:51'),
(114, '2024-0113', 'Mariana da Silva santiago', '004655160ME044', NULL, NULL, NULL, 'null.png', 1, 114, 114, '2024-07-10 10:25:53', '2024-07-10 10:31:27'),
(115, '2024-0115', 'Roberto', NULL, NULL, NULL, NULL, 'null.png', 1, 115, 115, '2024-07-12 11:30:00', '2024-07-12 11:30:00'),
(116, '2024-0116', 'Aguinaldo', NULL, NULL, NULL, NULL, 'null.png', 1, 116, 116, '2024-07-12 11:32:09', '2024-07-12 11:32:09'),
(117, '2024-0117', 'Eduardo', NULL, NULL, NULL, NULL, 'null.png', 1, 117, 117, '2024-07-15 13:20:53', '2024-07-15 13:20:53'),
(118, '2024-0118', 'Eurity', NULL, NULL, NULL, NULL, 'null.png', 1, 118, 118, '2024-07-16 12:23:32', '2024-07-16 12:23:32'),
(119, '2024-0119', 'Deoriana', NULL, NULL, NULL, NULL, 'null.png', 1, 119, 119, '2024-07-16 12:32:20', '2024-07-16 12:32:20'),
(120, '2024-0120', 'Ester Fecayanale', NULL, NULL, NULL, NULL, 'null.png', 1, 120, 120, '2024-07-16 12:46:58', '2024-07-16 12:46:58'),
(121, '2024-0121', 'Santa Antonio Francisco', '5410003519', NULL, NULL, NULL, 'null.png', 1, 121, 121, '2024-07-18 10:42:23', '2024-07-18 13:26:28'),
(122, '2024-0122', 'Petra', NULL, NULL, NULL, NULL, 'null.png', 1, 122, 122, '2024-07-19 12:14:05', '2024-07-19 12:14:05'),
(123, '2024-0123', 'Antonia ferrão', NULL, NULL, NULL, NULL, 'null.png', 1, 123, 123, '2024-07-19 12:15:47', '2024-07-19 12:15:47'),
(124, '2024-0124', 'Kintiliana', NULL, NULL, NULL, NULL, 'null.png', 1, 124, 124, '2024-07-19 12:18:28', '2024-07-19 12:18:28'),
(125, '2024-0125', 'Osvaldina', NULL, NULL, NULL, NULL, 'null.png', 1, 125, 125, '2024-07-19 12:20:16', '2024-07-19 12:20:16'),
(126, '2024-0126', 'Bruna Fatila', NULL, NULL, NULL, NULL, 'null.png', 1, 126, 126, '2024-07-19 12:23:08', '2024-07-19 12:23:08'),
(127, '2024-0127', 'Benvinda Sandemba', '001082848BE035', NULL, NULL, NULL, 'null.png', 1, 127, 127, '2024-07-20 07:01:24', '2024-07-20 07:01:24'),
(128, '2024-0128', 'Nerica Neves', '004655160ME044', NULL, NULL, NULL, 'null.png', 1, 128, 128, '2024-07-29 08:00:10', '2024-07-29 08:08:34'),
(129, '2024-0129', 'Esperança conteiras', '100511278O30', NULL, NULL, NULL, 'null.png', 1, 129, 129, '2024-07-29 12:28:19', '2024-07-29 12:28:19'),
(130, '2024-0130', 'Gilberto Damião Correia', '010084263LA045', NULL, NULL, NULL, 'null.png', 1, 130, 130, '2024-07-31 07:48:10', '2024-07-31 07:49:54'),
(131, '2024-0131', 'Juciria Rodrigues', '000256901LA039', NULL, NULL, NULL, 'null.png', 1, 131, 131, '2024-08-08 14:50:11', '2024-08-08 14:50:11'),
(132, '2024-0132', 'Luiza Santos', NULL, NULL, NULL, NULL, 'null.png', 1, 132, 132, '2024-08-09 06:44:19', '2024-08-09 06:44:19'),
(133, '2024-0133', 'Jacira', NULL, NULL, NULL, NULL, 'null.png', 1, 133, 133, '2024-08-09 06:45:55', '2024-08-09 06:45:55'),
(134, '2024-0134', 'kiria', NULL, NULL, NULL, NULL, 'null.png', 1, 134, 134, '2024-08-09 06:49:19', '2024-08-09 06:49:19'),
(135, '2024-0135', 'Kintiliane', NULL, NULL, NULL, NULL, 'null.png', 1, 135, 135, '2024-08-09 06:50:52', '2024-08-09 06:50:52'),
(136, '2024-0136', 'Silvio', NULL, NULL, NULL, NULL, 'null.png', 1, 136, 136, '2024-08-09 06:52:41', '2024-08-09 06:52:41'),
(137, '2024-0137', 'Marinela', NULL, NULL, NULL, NULL, 'null.png', 1, 137, 137, '2024-08-09 06:57:07', '2024-08-09 06:57:07'),
(138, '2024-0138', 'Elisabeth', NULL, NULL, NULL, NULL, 'null.png', 1, 138, 138, '2024-08-09 06:59:40', '2024-08-09 06:59:40'),
(139, '2024-0139', 'Marta Pedro', NULL, NULL, NULL, NULL, 'null.png', 1, 139, 139, '2024-08-09 07:01:10', '2024-08-09 07:01:10'),
(140, '2024-0139', 'Marta Pedro', NULL, NULL, NULL, NULL, 'null.png', 1, 140, 140, '2024-08-09 07:01:26', '2024-08-09 07:01:26'),
(141, '2024-0141', 'Marcelo', NULL, NULL, NULL, NULL, 'null.png', 1, 141, 141, '2024-08-09 07:04:18', '2024-08-09 07:04:18'),
(142, '2024-0142', 'Amelia', NULL, NULL, NULL, NULL, 'null.png', 1, 142, 142, '2024-08-09 07:06:37', '2024-08-09 07:06:37'),
(143, '2024-0143', 'Jorgina', NULL, NULL, NULL, NULL, 'null.png', 1, 143, 143, '2024-08-09 07:11:18', '2024-08-09 07:11:18'),
(144, '2024-0144', 'Erika', NULL, NULL, NULL, NULL, 'null.png', 1, 144, 144, '2024-08-09 07:14:07', '2024-08-09 07:14:07'),
(145, '2024-0145', 'Raquel', NULL, NULL, NULL, NULL, 'null.png', 1, 145, 145, '2024-08-09 07:15:44', '2024-08-09 07:15:44'),
(146, '2024-0146', 'Leandra Fonseca', NULL, NULL, NULL, NULL, 'null.png', 1, 146, 146, '2024-08-09 09:10:43', '2024-08-09 09:10:43'),
(147, '2024-0146', 'Leandra Fonseca', NULL, NULL, NULL, NULL, 'null.png', 1, 147, 147, '2024-08-09 09:10:59', '2024-08-09 09:10:59'),
(148, '2024-0148', 'Nuno', NULL, NULL, NULL, NULL, 'null.png', 1, 148, 148, '2024-08-09 09:12:13', '2024-08-09 09:12:13'),
(149, '2024-0149', 'Suzana Garcia', NULL, NULL, NULL, NULL, 'null.png', 1, 149, 149, '2024-08-10 08:42:42', '2024-08-10 08:42:42'),
(150, '2024-0150', 'José kabanda', NULL, NULL, NULL, NULL, 'null.png', 1, 150, 150, '2024-08-10 09:32:07', '2024-08-10 09:32:07'),
(151, '2024-0151', 'Ursula', NULL, NULL, NULL, NULL, 'null.png', 1, 151, 151, '2024-08-12 13:52:15', '2024-08-12 13:52:15'),
(152, '2024-0152', 'Bruno', NULL, NULL, NULL, NULL, 'null.png', 1, 152, 152, '2024-08-12 13:53:53', '2024-08-12 13:53:53'),
(153, '2024-0153', 'Rosa Dos Santos', NULL, NULL, NULL, NULL, 'null.png', 1, 153, 153, '2024-08-14 08:51:19', '2024-08-14 08:51:19'),
(154, '2024-0154', 'Eléusa', NULL, NULL, NULL, NULL, 'null.png', 1, 154, 154, '2024-08-14 13:04:14', '2024-08-14 13:04:14'),
(155, '2024-0155', 'Tatiana', NULL, NULL, NULL, NULL, 'null.png', 1, 155, 155, '2024-08-16 14:22:28', '2024-08-16 14:22:28'),
(156, '2024-0156', 'Jorgina Gaspar', NULL, NULL, NULL, NULL, 'null.png', 1, 156, 156, '2024-08-16 14:24:49', '2024-08-16 14:24:49'),
(157, '2024-0157', 'Maria Isabel', '007429839LA048', NULL, NULL, NULL, 'null.png', 1, 157, 157, '2024-08-20 06:23:02', '2024-08-20 06:23:02'),
(158, '2024-0158', 'Euridice Rosa', NULL, NULL, NULL, NULL, 'null.png', 1, 158, 158, '2024-08-21 09:17:37', '2024-08-21 09:17:37'),
(159, '2024-0159', 'Ilda', NULL, NULL, NULL, NULL, 'null.png', 1, 159, 159, '2024-08-28 11:55:16', '2024-08-28 11:55:16'),
(160, '2024-0160', 'osvalda', NULL, NULL, NULL, NULL, 'null.png', 1, 160, 160, '2024-08-28 11:56:27', '2024-08-28 11:56:27'),
(161, '2024-0161', 'Vania', NULL, NULL, NULL, NULL, 'null.png', 1, 161, 161, '2024-08-28 11:58:40', '2024-08-28 11:58:40'),
(162, '2024-0162', 'Sara', NULL, NULL, NULL, NULL, 'null.png', 1, 162, 162, '2024-08-28 12:03:10', '2024-08-28 12:03:10'),
(163, '2024-0163', 'Gabriela', NULL, NULL, NULL, NULL, 'null.png', 1, 163, 163, '2024-08-28 12:04:25', '2024-08-28 12:04:25'),
(164, '2024-0164', 'Gracieth', NULL, NULL, NULL, NULL, 'null.png', 1, 164, 164, '2024-08-28 12:06:42', '2024-08-28 12:06:42'),
(165, '2024-0165', 'Clenia', NULL, NULL, NULL, NULL, 'null.png', 1, 165, 165, '2024-08-28 12:09:03', '2024-08-28 12:09:03'),
(166, '2024-0166', 'Esequel', NULL, NULL, NULL, NULL, 'null.png', 1, 166, 166, '2024-08-28 12:10:27', '2024-08-28 12:10:27'),
(167, '2024-0167', 'Mária Amtónio', NULL, NULL, NULL, NULL, 'null.png', 1, 167, 167, '2024-09-02 14:11:40', '2024-09-02 14:11:40'),
(168, '2024-0168', 'Marlene', NULL, NULL, NULL, NULL, 'null.png', 1, 168, 168, '2024-09-02 14:13:34', '2024-09-02 14:13:34'),
(169, '2024-0169', 'Teresa', NULL, NULL, NULL, NULL, 'null.png', 1, 169, 169, '2024-09-02 14:15:08', '2024-09-02 14:15:08'),
(170, '2024-0170', 'Mauro', NULL, NULL, NULL, NULL, 'null.png', 1, 170, 170, '2024-09-02 14:16:19', '2024-09-02 14:16:19'),
(171, '2024-0171', 'Katia Cosme', '000040110LA015', NULL, NULL, NULL, 'null.png', 1, 171, 171, '2024-09-04 08:50:34', '2024-09-04 08:50:34'),
(172, '2024-0172', 'Indira Luis', NULL, NULL, NULL, NULL, 'null.png', 1, 172, 172, '2024-09-05 11:21:49', '2024-09-05 11:21:49'),
(173, '2024-0173', 'Naomia Bando', NULL, NULL, NULL, NULL, 'null.png', 1, 173, 173, '2024-09-05 11:23:26', '2024-09-05 11:23:26'),
(174, '2024-0174', 'Matias silva', NULL, NULL, NULL, NULL, 'null.png', 1, 174, 174, '2024-09-05 11:25:23', '2024-09-05 11:25:23'),
(175, '2024-0175', 'Constância Manuel Coelho Alexandre', '004742630KN042', NULL, NULL, NULL, 'null.png', 1, 175, 175, '2024-09-06 09:05:06', '2024-09-06 09:05:06'),
(176, '2024-0175', 'Constância Manuel Coelho Alexandre', '004742630KN042', NULL, NULL, NULL, 'null.png', 1, 176, 176, '2024-09-06 09:05:12', '2024-09-06 09:05:12'),
(177, '2024-0177', 'Kiame Kiari da Conceição Lima', '00177445KN031', NULL, NULL, NULL, 'null.png', 1, 177, 177, '2024-09-10 09:10:25', '2024-09-10 09:10:25'),
(178, '2024-0178', 'Rita Valente', NULL, NULL, NULL, NULL, 'null.png', 1, 178, 178, '2024-09-12 05:33:57', '2024-09-12 05:33:57'),
(179, '2024-0179', 'Fátima', NULL, NULL, NULL, NULL, 'null.png', 1, 179, 179, '2024-09-12 05:36:02', '2024-09-12 05:36:02'),
(180, '2024-0180', 'Estefane Castro', NULL, NULL, NULL, NULL, 'null.png', 1, 180, 180, '2024-09-12 05:38:09', '2024-09-12 05:38:09'),
(181, '2024-0181', 'Joana', NULL, NULL, NULL, NULL, 'null.png', 1, 181, 181, '2024-09-12 05:40:51', '2024-09-12 05:40:51'),
(182, '2024-0182', 'Marinha', NULL, NULL, NULL, NULL, 'null.png', 1, 182, 182, '2024-09-12 05:44:17', '2024-09-12 05:44:17'),
(183, '2024-0183', 'Angela Widiano', NULL, NULL, NULL, NULL, 'null.png', 1, 183, 183, '2024-09-12 13:05:45', '2024-09-12 13:05:45'),
(184, '2024-0183', 'Angela Widiano', NULL, NULL, NULL, NULL, 'null.png', 1, 184, 184, '2024-09-12 13:05:52', '2024-09-12 13:05:52'),
(185, '2024-0185', 'João Samanganda', '000030660LN025', NULL, NULL, NULL, 'null.png', 1, 185, 185, '2024-09-20 09:52:24', '2024-09-20 09:52:24'),
(186, '2024-0186', 'Emílio Abílio José', '006907459LA045', NULL, NULL, NULL, 'null.png', 1, 186, 186, '2024-10-01 09:34:27', '2024-10-01 09:34:27'),
(187, '2024-0187', 'Rosa Manuel Longa Leitão', '000145228LA034', NULL, NULL, NULL, 'null.png', 1, 187, 187, '2024-10-04 08:12:55', '2024-10-04 08:12:55'),
(188, '2024-0188', 'João Armando', '004742630KN042', NULL, NULL, NULL, 'null.png', 1, 188, 188, '2024-10-08 03:44:13', '2024-10-08 03:44:13'),
(189, '2024-0189', 'Domingos João Tomás da Silva', '007584820BA043', NULL, NULL, NULL, 'null.png', 1, 189, 189, '2024-10-16 08:22:44', '2024-10-16 08:22:44'),
(190, '2024-0190', 'Fernanda Teixeira', '010084263lA045', NULL, NULL, NULL, 'null.png', 1, 190, 190, '2024-10-29 08:26:07', '2024-10-29 08:26:07'),
(191, '2024-0191', 'Teresa baca suente', '000601353BA032', NULL, NULL, NULL, 'null.png', 1, 191, 191, '2024-11-02 08:41:02', '2024-11-02 08:41:02'),
(192, '2024-0192', 'Domingas da Silva Quicuca', '006194888LA045', NULL, NULL, NULL, 'null.png', 1, 192, 192, '2024-12-02 16:12:09', '2024-12-02 16:12:09'),
(193, '2024-0193', 'Joyce Catumbela', '000217560LA012', NULL, NULL, NULL, 'null.png', 1, 193, 193, '2024-12-12 10:34:48', '2024-12-12 10:34:48'),
(194, '2024-0194', 'Sebastião Manuel Mateus', '102963058LA0380', NULL, NULL, NULL, 'null.png', 1, 194, 194, '2024-12-13 15:16:39', '2024-12-13 15:16:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `condicoes_pagamentos`
--

CREATE TABLE `condicoes_pagamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `condicoes_pagamentos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Pronto Pagemento', NULL, NULL, NULL, NULL),
(2, NULL, '30 Dias', NULL, NULL, NULL, NULL),
(3, NULL, '60 Dias', NULL, NULL, NULL, NULL),
(4, NULL, '90 Dias', NULL, NULL, NULL, NULL),
(5, NULL, '120 Dias', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contactos`
--

CREATE TABLE `contactos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `contactos` (`id`, `telemovel`, `contacto`, `telefone`, `fax`, `email`, `facebook`, `whatsapp`, `skype`, `twitter`, `linkedin`, `website`, `created_at`, `updated_at`) VALUES
(1, '943443479', NULL, '924964330', NULL, 'sebastiaoagustinho39@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '921959371', NULL, '921959371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '921959371', NULL, '921959371', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '947933388', NULL, '947933388', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '931006560', NULL, '931006560', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '932290270', NULL, '932290270', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '942696719', NULL, '942696719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '942457704', NULL, '942457704', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '953473380', NULL, '953473380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '923018768', NULL, '923018768', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '953473380', NULL, '953473380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '923374669', NULL, '923374669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '923637613', NULL, '923637613', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '924374725', NULL, '924374725', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '954912998', NULL, '954912998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '923413711', NULL, '923413711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '927281741', NULL, '927281741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '923942716', NULL, '923942716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '923942716', NULL, '923942716', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '948644863', NULL, '948644863', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '948644863', NULL, '948644863', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, '923433452', NULL, NULL, NULL, NULL, NULL, NULL),
(29, '941429435', NULL, '941429435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '925776695', NULL, '925776695', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '945304849', NULL, '945304849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '924452337', NULL, '924452337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '937277849', NULL, '937277849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '921153993', NULL, '921153993', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '923742133', NULL, '923742133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '937130790', NULL, '937130790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '925727667', NULL, '925727667', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '928084529', NULL, '928084529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '924573068', NULL, '953164989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '923280890', NULL, '923280890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '944022007', NULL, '944022007', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '940045116', NULL, '940045116', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '938291273', NULL, '938291273', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '934527176', NULL, '934527176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '923302708', NULL, '923302708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '941854175', '923969378', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '947015334', '9212932537', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '925777184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '912222434', '923448973', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '924580391', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '946323979', NULL, '946323979', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '933832030', NULL, '933832030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '923629350', NULL, '923629350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '923961871', NULL, '923961871', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '923567789', NULL, '923567789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '923238354', NULL, '923238354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '938202516', NULL, '938202516', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '930810610', NULL, '930810610', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '947222724', NULL, '947222724', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '924135564', NULL, '924135564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '928211699', NULL, '928211699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '924330201', NULL, '924330201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '936102384', NULL, '936102384', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '923190900', NULL, '923190900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '933855805', NULL, '933855805', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '936314305', NULL, '936314305', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '935976268', NULL, '935976268', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '923374669', NULL, '923374669', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '922305511', NULL, '922305511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '922900902', NULL, '922900902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '926086711', NULL, '926086711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '923266167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '924994500', NULL, '924994500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '944076450', NULL, '944076450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '948329839', NULL, '948329839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '923611746', NULL, '923611746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '923611242', NULL, '923611242', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '923752770', NULL, '923752770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '928526653', NULL, '928526653', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '930069064', NULL, '930069064', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '952336708', NULL, '952336708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '921567789', NULL, '921567789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '951991065', NULL, '951991065', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '930094100', NULL, '930094100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '946764914', NULL, '946764914', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '923220577', NULL, '923220577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '922946881', NULL, '922946181', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '934742788', NULL, '934742788', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '923752770', NULL, '923522770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '924982827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '937454823', NULL, '937454823', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '924143908', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '950226253', NULL, '950226253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '923778178', NULL, '923778178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '943662803', NULL, '943662803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '933413066', NULL, '933413066', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '923190900', NULL, '923190900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '951166224', NULL, '951166224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '951238008', NULL, '951238008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '940362182', NULL, '940362182', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '921213890', NULL, '921213890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '930232100', NULL, '930232100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '922803098', NULL, '922803098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '937574955', NULL, '937574955', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '944230800', NULL, '944230800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '927820816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '927820816', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '923335775', NULL, '923335775', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '931982783', NULL, '931982783', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '927332434', NULL, '937332434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '945276828', NULL, '945276828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '926174324', NULL, '926174324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '924715337', NULL, '924715337', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '923331136', NULL, '923331136', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '924776678', NULL, '924776678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '923811190', NULL, '923811190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '929578741', NULL, '929578741', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '929960464', NULL, '929960464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '937107605', '924820737', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '931435000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '933513468', '939031354', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '923206489', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '924097505', NULL, '924097505', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '930964087', NULL, '930964087', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '936365393', NULL, '936365393', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '927169023', NULL, '927169023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '936192199', NULL, '936192199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '924422954', NULL, '924422954', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '933225437', NULL, '933225437', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '924055317', NULL, '924055317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '924055317', NULL, '924055317', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '923811190', NULL, '923811190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '942409138', NULL, '942409138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '947607633', NULL, '947607633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '925525655', NULL, '925525655', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '925037118', NULL, '925037118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '938288386', NULL, '938288386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '938288386', NULL, '938288386', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '941630395', NULL, '941630395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '935116010', NULL, '935116010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '930059037', NULL, '930059037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '936929637', NULL, '930059037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '942575291', NULL, '942575291', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '923966936', NULL, '923966936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '942946778', NULL, '942946778', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '932339097', NULL, '932339097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '947607633', NULL, '947607633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '923205658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '943092294', NULL, '943092294', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '934133452', NULL, '934133452', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '932787549', NULL, '932787549', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '942137151', NULL, '942137151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '940649555', NULL, '940649555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '938117005', NULL, '938117005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '943550283', NULL, '943550283', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '925281827', NULL, '925281827', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '938271726', NULL, '938271726', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '921630885', NULL, '921630885', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '923119192', NULL, '923119192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '951164348', NULL, '951164348', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '923407625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '925874387', NULL, '925874387', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '925502314', NULL, '925502314', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '936509454', NULL, '936509454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '935210893', '923347279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '935210893', '923347279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '923473926', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '933018529', NULL, '933018529', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '923368002', NULL, '923368002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '957878894', NULL, '957878894', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '949278761', NULL, '949278761', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '930588424', NULL, '930588424', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '941749192', NULL, '941749192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '941749192', NULL, '941749192', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '928648890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '941363409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '925100835', '932741069', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '935 889 343', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '923358441', '937999240', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '922723570', '923537002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '925232500', '923314615', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '922993701', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '924121853', '923710016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '927 790 237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `departamentos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Administração', 'Administração', 1, NULL, NULL),
(2, '0001', 'Gestão', 'Gestão', 1, NULL, NULL),
(3, '0001', 'Vendas', 'Vendas', 1, NULL, NULL);

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
  `representante` varchar(191) DEFAULT NULL,
  `ndi_rep` varchar(191) NOT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED NOT NULL,
  `id_contacto` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `designacao`, `nif`, `registo_comercial`, `data_fundacao`, `csocial`, `representante`, `ndi_rep`, `descricao`, `foto`, `status`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, 'SEBASTIAO OPTICA COMERCIAL', '5001742833', '5484084610', '2024-01-01', '100000', 'DEFAULT', '004655760ME044', NULL, '1703848247.jpg', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pais` varchar(191) DEFAULT NULL,
  `cidade` varchar(191) DEFAULT NULL,
  `endereco` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`id`, `pais`, `cidade`, `endereco`, `created_at`, `updated_at`) VALUES
(1, 'Angola', 'Luanda', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', NULL, NULL),
(2, 'Angola', NULL, NULL, NULL, NULL),
(3, 'Angola', 'LUANDA', NULL, NULL, NULL),
(4, 'Angola', 'LUANDA', NULL, NULL, NULL),
(5, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(6, 'Angola', 'luanda', 'Viana nos bombeiros', NULL, NULL),
(7, 'Angola', 'Luanda', NULL, NULL, NULL),
(8, 'Angola', 'Luanda', 'Viana eliada', NULL, NULL),
(9, 'Angola', 'luanda', 'Viana luanda sul', NULL, NULL),
(10, 'Angola', 'luanda', 'viana', NULL, NULL),
(11, 'Angola', 'luanda', 'viana', NULL, NULL),
(12, 'Angola', 'Viana', 'Vila de viana', NULL, NULL),
(13, 'Angola', 'viana', 'Viana luanda sul', NULL, NULL),
(14, 'Angola', 'viana', 'Viana luanda sul', NULL, NULL),
(15, 'Angola', 'viana', 'Viana luanda sul', NULL, NULL),
(16, 'Angola', 'viana', 'Camama1', NULL, NULL),
(17, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(18, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(19, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(20, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(21, 'Angola', 'viana', 'Viana luanda sul', NULL, NULL),
(22, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(23, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(24, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(25, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(26, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(27, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(28, 'Angola', 'Luanda', 'Futungo', NULL, NULL),
(29, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(30, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(31, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(32, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(33, 'Angola', 'Viana', 'Vila chinesa', NULL, NULL),
(34, 'Angola', 'Viana', 'Vila chinesa', NULL, NULL),
(35, 'Angola', 'Praça da Madeira', 'Camama2', NULL, NULL),
(36, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(37, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(38, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(39, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(40, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(41, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(42, 'Angola', 'Viana', 'Casa da juventude', NULL, NULL),
(43, 'Angola', 'viana', 'Luanda sul', NULL, NULL),
(44, 'Angola', 'viana', 'Luanda sul', NULL, NULL),
(45, 'Angola', 'viana', 'rua dos bombeiros', NULL, NULL),
(46, 'Angola', NULL, 'Luanda sul', NULL, NULL),
(47, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(48, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(49, 'Angola', 'LUANDA', 'bairro viana,Km30', NULL, NULL),
(50, 'Angola', 'Luanda', 'Vila chiNesa', NULL, NULL),
(51, 'Angola', 'Luanda', 'Vila de viana', NULL, NULL),
(52, 'Angola', 'Luanda', 'Vila de viana', NULL, NULL),
(53, 'Angola', 'Luanaa', 'Viana', NULL, NULL),
(54, 'Angola', 'Luanda', 'Rua do 1 imbondeira', NULL, NULL),
(55, 'Angola', 'Luanda', 'Projecto Nambó', NULL, NULL),
(56, 'Angola', 'Luanda', 'Bairro popular', NULL, NULL),
(57, 'Angola', 'Luanda', 'Prenda', NULL, NULL),
(58, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(59, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(60, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(61, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(62, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(63, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(64, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(65, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(66, 'Angola', 'Viana', 'Zango', NULL, NULL),
(67, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(68, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(69, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(70, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(71, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(72, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(73, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(74, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(75, 'Angola', 'LUANDA', 'Camama1', NULL, NULL),
(76, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(77, 'Angola', 'luanda', 'Benfica', NULL, NULL),
(78, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(79, 'Angola', 'Luanda', 'Zango', NULL, NULL),
(80, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(81, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(82, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(83, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(84, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(85, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(86, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(87, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(88, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(89, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(90, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(91, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(92, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(93, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(94, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(95, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(96, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(97, 'Angola', 'Luanda', 'Viana Luanda Sul', NULL, NULL),
(98, 'Angola', 'LUANDA', 'Bombeiros', NULL, NULL),
(99, 'Angola', 'Luanda', 'Camama', NULL, NULL),
(100, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(101, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(102, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(103, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(104, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(105, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(106, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(107, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(108, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(109, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(110, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(111, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(112, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(113, 'Angola', 'Luanda', 'Morro Bento', NULL, NULL),
(114, 'Angola', 'Luanda', 'Morro Bento', NULL, NULL),
(115, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(116, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(117, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(118, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(119, 'Angola', 'zango0', 'zango', NULL, NULL),
(120, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(121, 'Angola', 'Luanda', 'Sagrada Família', NULL, NULL),
(122, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(123, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(124, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(125, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(126, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(127, 'Angola', 'Luanda', 'Nova vida', NULL, NULL),
(128, 'Angola', 'Viana', 'Ponte partida', NULL, NULL),
(129, 'Angola', 'Luanda', 'Sapú', NULL, NULL),
(130, 'Angola', 'Luanda', 'Camama', NULL, NULL),
(131, 'Angola', 'Luanda', 'Samba', NULL, NULL),
(132, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(133, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(134, 'Angola', 'BENFICA', 'Benfica', NULL, NULL),
(135, 'Angola', 'zango0', 'zango', NULL, NULL),
(136, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(137, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(138, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(139, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(140, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(141, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(142, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(143, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(144, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(145, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(146, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(147, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(148, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(149, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(150, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(151, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(152, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(153, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(154, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(155, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(156, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(157, 'Angola', 'Luanda', 'Viana', NULL, NULL),
(158, 'Angola', 'Camama', 'Camama1', NULL, NULL),
(159, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(160, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(161, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(162, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(163, 'Angola', 'Vana', 'vila de viana', NULL, NULL),
(164, 'Angola', 'zango0', 'zango', NULL, NULL),
(165, 'Angola', 'BENFICA', 'Benfica', NULL, NULL),
(166, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(167, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(168, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(169, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(170, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(171, 'Angola', 'Luanda', 'Bairro popular', NULL, NULL),
(172, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(173, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(174, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(175, 'Angola', 'Luanda', 'Tala hady', NULL, NULL),
(176, 'Angola', 'Luanda', 'Tala hady', NULL, NULL),
(177, 'Angola', 'Luanda', 'Bairro Azul', NULL, NULL),
(178, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(179, 'Angola', 'LUANDA', 'Rua do Colegio Eliada', NULL, NULL),
(180, 'Angola', 'LUANDA', 'Viana luanda sul', NULL, NULL),
(181, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(182, 'Angola', 'Praça da Madeira', 'Camama1', NULL, NULL),
(183, 'Angola', 'Camama1', 'Camama1', NULL, NULL),
(184, 'Angola', 'Camama1', 'Camama1', NULL, NULL),
(185, 'Angola', 'Luanda', 'Talatona', NULL, NULL),
(186, 'Angola', 'Luanda', 'Futungo', NULL, NULL),
(187, 'Angola', 'Luanda', 'Kilamba', NULL, NULL),
(188, 'Angola', 'Luanda', '500 casas', NULL, NULL),
(189, 'Angola', 'Luanda', 'Viana', NULL, NULL),
(190, 'Angola', 'Luanda', 'Zango3', NULL, NULL),
(191, 'Angola', 'Luanda', 'Fubú', NULL, NULL),
(192, 'Angola', 'Luanda', 'Futungo', NULL, NULL),
(193, 'Angola', 'Luanda', 'Viana', NULL, NULL),
(194, 'Angola', 'Luanda', 'Futungo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricantes`
--

CREATE TABLE `fabricantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `fabricantes` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Diverso', 'I\'ve tried.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `total_pendente` double(8,2) DEFAULT NULL,
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

INSERT INTO `facturas` (`id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `total_pendente`, `hash`, `status`, `documento_id`, `documento_numero`, `is_recibo`, `is_nota`, `created_at`, `updated_at`) VALUES
(1, 'FT 2023/1', 19, 'Marinela  Fernandes lucas', '0000050017428338', 'Rua do Colegio Eliada', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, 1, 'Administrador', NULL, 60000.00, 0.00, 0.00, 0.00, 60000.00, 60000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, NULL, NULL, 1, 1, '2024-05-20 13:55:46', '2024-05-20 13:55:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `factura_recibos`
--

CREATE TABLE `factura_recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_nota` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `factura_recibos`
--

INSERT INTO `factura_recibos` (`id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_nota`, `created_at`, `updated_at`) VALUES
(1, 'FR 2023/1', 5, 'Aderito', NULL, 'Rua do Colegio Eliada', '2024-04-21 00:00:00', '2024-04-21 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 29400.00, 600.00, 0.00, 0.00, 28800.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-21 11:44:12', '2024-04-21 11:44:12'),
(2, 'FR 2023/2', 6, 'Tarcilia prazer', NULL, 'Viana nos bombeiros', '2024-04-25 00:00:00', '2024-04-25 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-25 12:04:57', '2024-04-25 12:04:57'),
(3, 'FR 2023/3', 7, 'Beatriz Diogo', NULL, NULL, '2024-04-26 00:00:00', '2024-04-26 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-26 11:52:16', '2024-04-26 11:52:16'),
(4, 'FR 2023/4', 1, 'Alfreia Manuel', 'Consumidor Final', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', '2024-05-12 00:00:00', '2024-05-12 00:00:00', 1, 1, 1, 'Administrador', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-12 13:25:24', '2024-05-12 13:25:24'),
(5, 'FR 2023/5', 1, 'Alfreia Manuel', 'Consumidor Final', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', '2024-05-12 00:00:00', '2024-05-12 00:00:00', 1, 1, 1, 'Administrador', NULL, 32000.00, 0.00, 0.00, 0.00, 32000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-12 13:28:56', '2024-05-12 13:28:56'),
(6, 'FR 2023/6', 14, 'Janes', NULL, 'Viana luanda sul', '2024-05-15 00:00:00', '2024-05-14 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-15 06:41:53', '2024-05-15 06:41:53'),
(7, 'FR 2023/7', 1, 'Alfreia Manuel', 'Consumidor Final', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', '2024-05-15 00:00:00', '2024-05-14 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-15 08:52:18', '2024-05-15 08:52:18'),
(8, 'FR 2023/8', 13, 'Claudina Abreu', NULL, 'Viana luanda sul', '2024-05-15 00:00:00', '2024-05-15 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-15 08:54:08', '2024-05-15 08:54:08'),
(9, 'FR 2023/9', 16, 'Brasilina Gonsalves', NULL, 'Camama1', '2024-05-16 00:00:00', '2024-05-16 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-16 06:00:09', '2024-05-16 06:00:09'),
(10, 'FR 2023/10', 17, 'Detevina Pinheiro', NULL, 'Rua do Colegio Eliada', '2024-05-16 00:00:00', '2024-05-16 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-16 10:54:41', '2024-05-16 10:54:41'),
(11, 'FR 2023/11', 18, 'Lindalva', NULL, 'Rua do Colegio Eliada', '2024-05-17 00:00:00', '2024-05-17 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-17 07:58:39', '2024-05-17 07:58:39'),
(12, 'FR 2023/12', 19, 'Marinela  Fernandes lucas', '0000050017428338', 'Rua do Colegio Eliada', '2024-05-19 00:00:00', '2024-05-19 00:00:00', 1, 1, 1, 'Administrador', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-19 09:35:31', '2024-05-19 09:35:31'),
(13, 'FR 2023/13', 20, 'Jussara Furtado', NULL, 'Rua do Colegio Eliada', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-20 10:12:02', '2024-05-20 10:12:02'),
(14, 'FR 2023/14', 21, 'Luzia Armando', NULL, 'Viana luanda sul', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-20 13:12:02', '2024-05-20 13:12:02'),
(15, 'FR 2023/15', 19, 'Marinela  Fernandes lucas', '0000050017428338', 'Rua do Colegio Eliada', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, 1, 'Administrador', NULL, 17500.00, 0.00, 0.00, 0.00, 17500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-20 14:04:33', '2024-05-20 14:04:33'),
(16, 'FR 2023/16', 22, 'Natercia', NULL, 'Rua do Colegio Eliada', '2024-05-20 00:00:00', '2024-05-20 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-20 14:28:06', '2024-05-20 14:28:06'),
(17, 'FR 2023/17', 23, 'Mambo João', NULL, 'Camama1', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 12000.00, 0.00, 0.00, 0.00, 12000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 08:54:47', '2024-05-21 08:54:47'),
(18, 'FR 2023/18', 23, 'Mambo João', NULL, 'Camama1', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 12000.00, 0.00, 0.00, 0.00, 12000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 08:55:42', '2024-05-21 08:55:42'),
(19, 'FR 2023/19', 28, 'Maria Abreu', '000196503LA013', 'Futungo', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 3, 1, 1, 'Administrador', NULL, 90000.00, 0.00, 12600.00, 0.00, 102600.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 10:50:29', '2024-05-21 10:50:29'),
(20, 'FR 2023/20', 27, 'Carlos Nobre', NULL, 'Rua do Colegio Eliada', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 11:14:05', '2024-05-21 11:14:05'),
(21, 'FR 2023/21', 29, 'Isabel', NULL, 'Rua do Colegio Eliada', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 45000.00, 0.00, 0.00, 0.00, 45000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 13:24:54', '2024-05-21 13:24:54'),
(22, 'FR 2023/22', 27, 'Carlos Nobre', NULL, 'Rua do Colegio Eliada', '2024-05-21 00:00:00', '2024-05-21 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 28500.00, 0.00, 0.00, 0.00, 28500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-21 13:26:32', '2024-05-21 13:26:32'),
(23, 'FR 2023/23', 30, 'Telvania Morais', NULL, 'Rua do Colegio Eliada', '2024-05-23 00:00:00', '2024-05-23 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 19500.00, 0.00, 210.00, 0.00, 19710.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-23 09:26:42', '2024-05-23 09:26:42'),
(24, 'FR 2023/24', 31, 'Yanusca', NULL, 'Rua do Colegio Eliada', '2024-05-23 00:00:00', '2024-05-23 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-23 10:00:40', '2024-05-23 10:00:40'),
(25, 'FR 2023/25', 32, 'Vanda da Conceicão', NULL, 'Rua do Colegio Eliada', '2024-05-23 00:00:00', '2024-05-23 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-23 12:51:29', '2024-05-23 12:51:29'),
(26, 'FR 2023/26', 33, 'Iraquelma', NULL, 'Vila chinesa', '2024-05-24 00:00:00', '2024-05-24 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 30500.00, 0.00, 0.00, 0.00, 30500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-24 10:03:21', '2024-05-24 10:03:21'),
(27, 'FR 2023/27', 34, 'Yamira Pedro', NULL, 'Vila chinesa', '2024-05-24 00:00:00', '2024-05-24 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-24 10:05:12', '2024-05-24 10:05:12'),
(28, 'FR 2023/28', 35, 'Avelino', NULL, 'Camama2', '2024-05-25 00:00:00', '2024-05-25 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 19000.00, 0.00, 0.00, 0.00, 19000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-25 08:43:10', '2024-05-25 08:43:10'),
(29, 'FR 2023/29', 36, 'Luiza', NULL, 'Rua do Colegio Eliada', '2024-05-25 00:00:00', '2024-05-25 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-25 10:32:34', '2024-05-25 10:32:34'),
(30, 'FR 2023/30', 37, 'Claucia', NULL, 'Rua do Colegio Eliada', '2024-05-28 00:00:00', '2024-05-28 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-28 11:53:01', '2024-05-28 11:53:01'),
(31, 'FR 2023/31', 38, 'Katarina', NULL, 'Rua do Colegio Eliada', '2024-05-28 00:00:00', '2024-05-28 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-28 11:53:36', '2024-05-28 11:53:36'),
(32, 'FR 2023/32', 39, 'Carlos Torres', NULL, 'Rua do Colegio Eliada', '2024-05-28 00:00:00', '2024-05-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 94500.00, 0.00, 11200.00, 0.00, 105700.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-28 11:55:23', '2024-05-28 11:55:23'),
(33, 'FR 2023/33', 40, 'Nginga Elisa', NULL, 'Rua do Colegio Eliada', '2024-05-28 00:00:00', '2024-05-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 34000.00, 0.00, 0.00, 0.00, 34000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-28 11:59:06', '2024-05-28 11:59:06'),
(34, 'FR 2023/34', 41, 'Debora Mateus', NULL, 'Rua do Colegio Eliada', '2024-05-29 00:00:00', '2024-05-29 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-29 11:39:40', '2024-05-29 11:39:40'),
(35, 'FR 2023/35', 42, 'Manuel', NULL, 'Casa da juventude', '2024-05-30 00:00:00', '2024-05-30 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-30 08:13:48', '2024-05-30 08:13:48'),
(36, 'FR 2023/36', 43, 'Marilia de Fatima', NULL, 'Luanda sul', '2024-05-30 00:00:00', '2024-05-30 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-30 11:29:43', '2024-05-30 11:29:43'),
(37, 'FR 2023/37', 44, 'Wilma', NULL, 'Luanda sul', '2024-05-31 00:00:00', '2024-05-31 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-05-31 10:45:37', '2024-05-31 10:45:37'),
(38, 'FR 2023/38', 46, 'Delfina Bravo', '0000050017428338', 'Luanda sul', '2024-06-01 00:00:00', '2024-06-01 00:00:00', 1, 1, 1, 'Administrador', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-01 11:40:07', '2024-06-01 11:40:07'),
(39, 'FR 2023/39', 45, 'Edna Viera', '0000050017428338', 'rua dos bombeiros', '2024-06-01 00:00:00', '2024-06-01 00:00:00', 1, 1, 1, 'Administrador', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-01 11:43:35', '2024-06-01 11:43:35'),
(40, 'FR 2023/40', 47, 'Sebastião Cristovão', NULL, 'vila de viana', '2024-06-03 00:00:00', '2024-06-03 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 96500.00, 0.00, 11480.00, 0.00, 107980.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-03 05:47:13', '2024-06-03 05:47:13'),
(41, 'FR 2023/41', 48, 'Etiante cardoso', '0000050017428338', 'Viana luanda sul', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 3, 1, 1, 'Administrador', NULL, 71500.00, 0.00, 280.00, 0.00, 71780.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(42, 'FR 2023/42', 49, 'Marcia rafael  Gongo', '0000050017428338', 'bairro viana,Km30', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 1, 1, 1, 'Administrador', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 09:36:53', '2024-06-04 09:36:53'),
(43, 'FR 2023/43', 50, 'Idalia Dala', '006649697LA047', 'Vila chiNesa', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 1, 1, 1, 'Administrador', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 11:33:11', '2024-06-04 11:33:11'),
(44, 'FR 2023/44', 53, 'José Mateus Pinto', '000213269LA016', 'Viana', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 3, 1, 1, 'Administrador', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 13:02:57', '2024-06-04 13:02:57'),
(45, 'FR 2023/45', 54, 'Celma Rosalina', '007901893LA042', 'Rua do 1 imbondeira', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 3, 1, 1, 'Administrador', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 13:28:18', '2024-06-04 13:28:18'),
(46, 'FR 2023/46', 55, 'Hezalia pinheiro', '003238265LA033', 'Projecto Nambó', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 1, 1, 1, 'Administrador', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 14:19:23', '2024-06-04 14:19:23'),
(47, 'FR 2023/47', 58, 'Eliane doa Santos', NULL, 'Viana luanda sul', '2024-06-07 00:00:00', '2024-06-07 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 16500.00, 0.00, 280.00, 0.00, 16780.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-07 07:43:24', '2024-06-07 07:43:24'),
(48, 'FR 2023/48', 59, 'Augusta Salomé', NULL, 'Viana luanda sul', '2024-06-07 00:00:00', '2024-06-07 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 31500.00, 0.00, 0.00, 0.00, 31500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-07 07:46:02', '2024-06-07 07:46:02'),
(49, 'FR 2023/49', 60, 'Edgar', NULL, 'Rua do Colegio Eliada', '2024-06-08 00:00:00', '2024-06-08 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 22000.00, 0.00, 0.00, 0.00, 22000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-08 09:21:03', '2024-06-08 09:21:03'),
(50, 'FR 2023/50', 61, 'Estefania', NULL, 'Rua do Colegio Eliada', '2024-06-10 00:00:00', '2024-06-10 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-10 13:54:40', '2024-06-10 13:54:40'),
(51, 'FR 2023/51', 62, 'ALEXANDRA', NULL, 'Rua do Colegio Eliada', '2024-06-10 00:00:00', '2024-06-10 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-10 13:55:16', '2024-06-10 13:55:16'),
(52, 'FR 2023/52', 63, 'Justino', NULL, 'Rua do Colegio Eliada', '2024-06-11 00:00:00', '2024-06-11 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-11 08:58:18', '2024-06-11 08:58:18'),
(53, 'FR 2023/53', 64, 'Adelina', NULL, 'Rua do Colegio Eliada', '2024-06-12 00:00:00', '2024-06-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-12 07:18:30', '2024-06-12 07:18:30'),
(54, 'FR 2023/54', 65, 'Zumira', NULL, 'Rua do Colegio Eliada', '2024-06-12 00:00:00', '2024-06-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 18000.00, 0.00, 0.00, 0.00, 18000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-12 13:28:53', '2024-06-12 13:28:53'),
(55, 'FR 2023/55', 65, 'Zumira', NULL, 'Rua do Colegio Eliada', '2024-06-13 00:00:00', '2024-06-13 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 10000.00, 0.00, 0.00, 0.00, 10000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-13 08:01:45', '2024-06-13 08:01:45'),
(56, 'FR 2023/56', 66, 'Helena', NULL, 'Zango', '2024-06-13 00:00:00', '2024-06-13 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-13 08:02:22', '2024-06-13 08:02:22'),
(57, 'FR 2023/57', 67, 'Ernesto', NULL, 'Rua do Colegio Eliada', '2024-06-13 00:00:00', '2024-06-13 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-13 11:54:40', '2024-06-13 11:54:40'),
(58, 'FR 2023/58', 68, 'Aline', NULL, 'Rua do Colegio Eliada', '2024-06-14 00:00:00', '2024-06-14 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-14 08:38:24', '2024-06-14 08:38:24'),
(59, 'FR 2023/59', 69, 'Edmara', NULL, 'Rua do Colegio Eliada', '2024-06-14 00:00:00', '2024-06-14 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-14 10:43:11', '2024-06-14 10:43:11'),
(60, 'FR 2023/60', 72, 'Dona Nunes', NULL, 'Rua do Colegio Eliada', '2024-06-15 00:00:00', '2024-06-15 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-15 06:27:48', '2024-06-15 06:27:48'),
(61, 'FR 2023/61', 71, 'Ana Elvira', NULL, 'Rua do Colegio Eliada', '2024-06-15 00:00:00', '2024-06-15 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-15 06:28:46', '2024-06-15 06:28:46'),
(62, 'FR 2023/62', 70, 'Merifica da Conceição', NULL, 'Rua do Colegio Eliada', '2024-06-15 00:00:00', '2024-06-15 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 93000.00, 0.00, 11200.00, 0.00, 104200.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-15 06:30:09', '2024-06-15 06:30:09'),
(63, 'FR 2023/63', 73, 'Jumara', NULL, 'Rua do Colegio Eliada', '2024-06-15 00:00:00', '2024-06-15 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-15 10:25:29', '2024-06-15 10:25:29'),
(64, 'FR 2023/64', 74, 'Rosa Torres', NULL, 'Rua do Colegio Eliada', '2024-06-15 00:00:00', '2024-06-15 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-15 12:58:40', '2024-06-15 12:58:40'),
(65, 'FR 2023/65', 75, 'Brasilina Gonsalves', NULL, 'Camama1', '2024-06-17 00:00:00', '2024-06-17 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-17 10:07:15', '2024-06-17 10:07:15'),
(66, 'FR 2023/66', 76, 'Elvira Andrade', NULL, 'Rua do Colegio Eliada', '2024-06-17 00:00:00', '2024-06-17 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-17 11:32:00', '2024-06-17 11:32:00'),
(67, 'FR 2023/67', 77, 'Elga Dio', NULL, 'Benfica', '2024-06-18 00:00:00', '2024-06-18 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14500.00, 0.00, 0.00, 0.00, 14500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-18 11:08:27', '2024-06-18 11:08:27'),
(68, 'FR 2023/68', 78, 'Nomia', NULL, 'Rua do Colegio Eliada', '2024-06-18 00:00:00', '2024-06-18 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14500.00, 0.00, 0.00, 0.00, 14500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-18 13:17:26', '2024-06-18 13:17:26'),
(69, 'FR 2023/69', 75, 'Brasilina Gonsalves', NULL, 'Camama1', '2024-06-19 00:00:00', '2024-06-19 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 48500.00, 0.00, 0.00, 0.00, 48500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(70, 'FR 2023/70', 80, 'Vania', NULL, 'Rua do Colegio Eliada', '2024-06-20 00:00:00', '2024-06-20 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-20 10:05:48', '2024-06-20 10:05:48'),
(71, 'FR 2023/71', 81, 'Claudina', NULL, 'Rua do Colegio Eliada', '2024-06-20 00:00:00', '2024-06-20 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-20 10:17:24', '2024-06-20 10:17:24'),
(72, 'FR 2023/72', 83, 'Avelino Malebo', NULL, 'Viana luanda sul', '2024-06-24 00:00:00', '2024-06-24 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 33000.00, 0.00, 0.00, 0.00, 33000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-24 12:19:52', '2024-06-24 12:19:52'),
(73, 'FR 2023/73', 95, 'Maria Gomes', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:52:59', '2024-07-01 12:52:59'),
(74, 'FR 2023/74', 94, 'Dilcia', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:54:38', '2024-07-01 12:54:38'),
(75, 'FR 2023/75', 93, 'Guilmar', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 15000.00, 0.00, 280.00, 0.00, 15280.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:55:29', '2024-07-01 12:55:29'),
(76, 'FR 2023/76', 92, 'Graciane', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:56:22', '2024-07-01 12:56:22'),
(77, 'FR 2023/77', 91, 'Delfina', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 33000.00, 0.00, 0.00, 0.00, 33000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:57:47', '2024-07-01 12:57:47'),
(78, 'FR 2023/78', 90, 'gisalfa', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 15500.00, 0.00, 0.00, 0.00, 15500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:58:40', '2024-07-01 12:58:40'),
(79, 'FR 2023/79', 88, 'Erivaldo Jesus', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 12:59:36', '2024-07-01 12:59:36'),
(80, 'FR 2023/80', 87, 'Setlvia Simão', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 35000.00, 0.00, 0.00, 0.00, 35000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 13:01:27', '2024-07-01 13:01:27'),
(81, 'FR 2023/81', 86, 'Sónia Fernandes', NULL, 'Rua do Colegio Eliada', '2024-07-01 00:00:00', '2024-07-01 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-01 13:03:08', '2024-07-01 13:03:08'),
(82, 'FR 2023/82', 94, 'Dilcia', NULL, 'Rua do Colegio Eliada', '2024-07-02 00:00:00', '2024-07-02 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 16500.00, 0.00, 280.00, 0.00, 16780.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-02 11:09:38', '2024-07-02 11:09:38'),
(83, 'FR 2023/83', 98, 'Abel Sapunete', NULL, 'Bombeiros', '2024-07-02 00:00:00', '2024-07-02 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-02 11:10:39', '2024-07-02 11:10:39'),
(84, 'FR 2023/84', 100, 'Eliane Texeira', NULL, 'Viana luanda sul', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 06:13:30', '2024-07-05 06:13:30'),
(85, 'FR 2023/85', 101, 'Azenaide Manuel', NULL, 'Viana luanda sul', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 24000.00, 0.00, 0.00, 0.00, 24000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 06:14:27', '2024-07-05 06:14:27'),
(86, 'FR 2023/86', 102, 'Yolanda', NULL, 'Rua do Colegio Eliada', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 15500.00, 0.00, 0.00, 0.00, 15500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 06:15:18', '2024-07-05 06:15:18'),
(87, 'FR 2023/87', 103, 'Fernanda', NULL, 'Rua do Colegio Eliada', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 06:15:57', '2024-07-05 06:15:57'),
(88, 'FR 2023/88', 104, 'Lina Teresa', NULL, 'Rua do Colegio Eliada', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 24000.00, 0.00, 0.00, 0.00, 24000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 06:18:31', '2024-07-05 06:18:31'),
(89, 'FR 2023/89', 105, 'Ana Carina', NULL, 'Rua do Colegio Eliada', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 15500.00, 0.00, 0.00, 0.00, 15500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 11:40:42', '2024-07-05 11:40:42'),
(90, 'FR 2023/90', 106, 'Admiro', NULL, 'Rua do Colegio Eliada', '2024-07-05 00:00:00', '2024-07-05 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-05 11:42:09', '2024-07-05 11:42:09'),
(91, 'FR 2023/91', 107, 'Leu', NULL, 'Rua do Colegio Eliada', '2024-07-08 00:00:00', '2024-07-08 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 15500.00, 0.00, 0.00, 0.00, 15500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-08 12:49:11', '2024-07-08 12:49:11'),
(92, 'FR 2023/92', 108, 'Helena', NULL, 'Rua do Colegio Eliada', '2024-07-08 00:00:00', '2024-07-08 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-08 12:50:05', '2024-07-08 12:50:05'),
(93, 'FR 2023/93', 109, 'Maria Brandão', NULL, 'Rua do Colegio Eliada', '2024-07-09 00:00:00', '2024-07-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 28500.00, 0.00, 0.00, 0.00, 28500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-09 10:12:21', '2024-07-09 10:12:21'),
(94, 'FR 2023/94', 110, 'Lizandra', NULL, 'Rua do Colegio Eliada', '2024-07-09 00:00:00', '2024-07-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 28500.00, 0.00, 0.00, 0.00, 28500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-09 10:13:35', '2024-07-09 10:13:35'),
(95, 'FR 2023/95', 111, 'Luzia Mança', NULL, 'Rua do Colegio Eliada', '2024-07-09 00:00:00', '2024-07-09 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-09 14:11:42', '2024-07-09 14:11:42'),
(96, 'FR 2023/96', 112, 'Meury', NULL, 'Rua do Colegio Eliada', '2024-07-09 00:00:00', '2024-07-09 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-09 14:12:52', '2024-07-09 14:12:52'),
(97, 'FR 2023/97', 115, 'Roberto', NULL, 'Rua do Colegio Eliada', '2024-07-12 00:00:00', '2024-07-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 32000.00, 0.00, 0.00, 0.00, 32000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-12 11:35:17', '2024-07-12 11:35:17'),
(98, 'FR 2023/98', 116, 'Aguinaldo', NULL, 'Rua do Colegio Eliada', '2024-07-12 00:00:00', '2024-07-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 90000.00, 0.00, 0.00, 0.00, 90000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(99, 'FR 2023/99', 117, 'Eduardo', NULL, 'Rua do Colegio Eliada', '2024-07-15 00:00:00', '2024-07-15 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-15 13:22:40', '2024-07-15 13:22:40'),
(100, 'FR 2023/100', 118, 'Eurity', NULL, 'Rua do Colegio Eliada', '2024-07-16 00:00:00', '2024-07-16 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 6000.00, 0.00, 0.00, 0.00, 6000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-16 12:34:15', '2024-07-16 12:34:15');
INSERT INTO `factura_recibos` (`id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_nota`, `created_at`, `updated_at`) VALUES
(101, 'FR 2023/101', 119, 'Deoriana', NULL, 'zango', '2024-07-16 00:00:00', '2024-07-16 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-16 12:35:22', '2024-07-16 12:35:22'),
(102, 'FR 2023/102', 120, 'Ester Fecayanale', NULL, 'Rua do Colegio Eliada', '2024-07-16 00:00:00', '2024-07-16 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 20000.00, 0.00, 0.00, 0.00, 20000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-16 12:47:46', '2024-07-16 12:47:46'),
(103, 'FR 2024/103', 132, 'Luiza Santos', NULL, 'Rua do Colegio Eliada', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:22:45', '2024-08-09 07:22:45'),
(104, 'FR 2024/104', 133, 'Jacira', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:23:46', '2024-08-09 07:23:46'),
(105, 'FR 2024/105', 135, 'Kintiliane', NULL, 'zango', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 28500.00, 0.00, 0.00, 0.00, 28500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:43:32', '2024-08-09 07:43:32'),
(106, 'FR 2024/106', 136, 'Silvio', NULL, 'vila de viana', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:44:54', '2024-08-09 07:44:54'),
(107, 'FR 2024/107', 137, 'Marinela', NULL, 'vila de viana', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 5000.00, 0.00, 0.00, 0.00, 5000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:45:40', '2024-08-09 07:45:40'),
(108, 'FR 2024/108', 138, 'Elisabeth', NULL, 'vila de viana', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 16500.00, 0.00, 280.00, 0.00, 16780.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:50:43', '2024-08-09 07:50:43'),
(109, 'FR 2024/109', 139, 'Marta Pedro', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 34500.00, 0.00, 0.00, 0.00, 34500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:55:46', '2024-08-09 07:55:46'),
(110, 'FR 2024/110', 141, 'Marcelo', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 19000.00, 0.00, 0.00, 0.00, 19000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:57:32', '2024-08-09 07:57:32'),
(111, 'FR 2024/111', 142, 'Amelia', NULL, 'vila de viana', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 07:58:51', '2024-08-09 07:58:51'),
(112, 'FR 2024/112', 143, 'Jorgina', NULL, 'vila de viana', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 7000.00, 0.00, 0.00, 0.00, 7000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 08:00:56', '2024-08-09 08:00:56'),
(113, 'FR 2024/113', 144, 'Erika', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 08:01:50', '2024-08-09 08:01:50'),
(114, 'FR 2024/114', 145, 'Raquel', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 08:03:47', '2024-08-09 08:03:47'),
(115, 'FR 2024/115', 146, 'Leandra Fonseca', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 65000.00, 0.00, 0.00, 0.00, 65000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(116, 'FR 2024/116', 148, 'Nuno', NULL, 'Viana luanda sul', '2024-08-09 00:00:00', '2024-08-09 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 19000.00, 0.00, 0.00, 0.00, 19000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-09 09:18:37', '2024-08-09 09:18:37'),
(117, 'FR 2024/117', 149, 'Suzana Garcia', NULL, 'Viana luanda sul', '2024-08-10 00:00:00', '2024-08-10 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 17000.00, 0.00, 0.00, 0.00, 17000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-10 08:46:41', '2024-08-10 08:46:41'),
(118, 'FR 2024/118', 150, 'José kabanda', NULL, 'Viana luanda sul', '2024-08-10 00:00:00', '2024-08-10 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-10 09:32:53', '2024-08-10 09:32:53'),
(119, 'FR 2024/119', 151, 'Ursula', NULL, 'Viana luanda sul', '2024-08-12 00:00:00', '2024-08-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-12 13:55:21', '2024-08-12 13:55:21'),
(120, 'FR 2024/120', 152, 'Bruno', NULL, 'Viana luanda sul', '2024-08-12 00:00:00', '2024-08-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-12 13:56:08', '2024-08-12 13:56:08'),
(121, 'FR 2024/121', 153, 'Rosa Dos Santos', NULL, 'Viana luanda sul', '2024-08-14 00:00:00', '2024-08-14 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 57000.00, 0.00, 0.00, 0.00, 57000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-14 08:52:49', '2024-08-14 08:52:49'),
(122, 'FR 2024/122', 154, 'Eléusa', NULL, 'Viana luanda sul', '2024-08-14 00:00:00', '2024-08-14 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-14 13:05:25', '2024-08-14 13:05:25'),
(123, 'FR 2024/123', 155, 'Tatiana', NULL, 'Viana luanda sul', '2024-08-16 00:00:00', '2024-08-16 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 37000.00, 0.00, 0.00, 0.00, 37000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-16 14:26:00', '2024-08-16 14:26:00'),
(124, 'FR 2024/124', 156, 'Jorgina Gaspar', NULL, 'Viana luanda sul', '2024-08-16 00:00:00', '2024-08-16 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-16 14:26:46', '2024-08-16 14:26:46'),
(125, 'FR 2024/125', 158, 'Euridice Rosa', NULL, 'Camama1', '2024-08-21 00:00:00', '2024-08-21 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-21 09:18:52', '2024-08-21 09:18:52'),
(126, 'FR 2024/126', 159, 'Ilda', NULL, 'Viana luanda sul', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:12:26', '2024-08-28 12:12:26'),
(127, 'FR 2024/127', 160, 'osvalda', NULL, 'Camama1', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:13:02', '2024-08-28 12:13:02'),
(128, 'FR 2024/128', 161, 'Vania', NULL, 'Viana luanda sul', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:13:54', '2024-08-28 12:13:54'),
(129, 'FR 2024/129', 162, 'Sara', NULL, 'Viana luanda sul', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 11000.00, 0.00, 0.00, 0.00, 11000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:16:40', '2024-08-28 12:16:40'),
(130, 'FR 2024/130', 163, 'Gabriela', NULL, 'vila de viana', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:17:22', '2024-08-28 12:17:22'),
(131, 'FR 2024/131', 164, 'Gracieth', NULL, 'zango', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 22500.00, 0.00, 0.00, 0.00, 22500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:18:43', '2024-08-28 12:18:43'),
(132, 'FR 2024/132', 162, 'Sara', NULL, 'Viana luanda sul', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 1500.00, 0.00, 0.00, 0.00, 1500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:19:35', '2024-08-28 12:19:35'),
(133, 'FR 2024/133', 165, 'Clenia', NULL, 'Benfica', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 87000.00, 0.00, 0.00, 0.00, 87000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:20:57', '2024-08-28 12:20:57'),
(134, 'FR 2024/134', 166, 'Esequel', NULL, 'Viana luanda sul', '2024-08-28 00:00:00', '2024-08-28 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 50000.00, 0.00, 0.00, 0.00, 50000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-28 12:21:51', '2024-08-28 12:21:51'),
(135, 'FR 2024/135', 167, 'Mária Amtónio', NULL, 'Viana luanda sul', '2024-09-02 00:00:00', '2024-09-02 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 22000.00, 0.00, 280.00, 0.00, 22280.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-02 14:17:36', '2024-09-02 14:17:36'),
(136, 'FR 2024/136', 168, 'Marlene', NULL, 'Camama1', '2024-09-02 00:00:00', '2024-09-02 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 32000.00, 0.00, 280.00, 0.00, 32280.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-02 14:18:42', '2024-09-02 14:18:42'),
(137, 'FR 2024/137', 169, 'Teresa', NULL, 'Viana luanda sul', '2024-09-02 00:00:00', '2024-09-02 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 45500.00, 0.00, 0.00, 0.00, 45500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-02 14:20:44', '2024-09-02 14:20:44'),
(138, 'FR 2024/138', 172, 'Indira Luis', NULL, 'Rua do Colegio Eliada', '2024-09-05 00:00:00', '2024-09-05 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-05 11:27:03', '2024-09-05 11:27:03'),
(139, 'FR 2024/139', 173, 'Naomia Bando', NULL, 'Rua do Colegio Eliada', '2024-09-05 00:00:00', '2024-09-05 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 14000.00, 0.00, 0.00, 0.00, 14000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-05 11:28:05', '2024-09-05 11:28:05'),
(140, 'FR 2024/140', 174, 'Matias silva', NULL, 'Rua do Colegio Eliada', '2024-09-05 00:00:00', '2024-09-05 00:00:00', 2, 1, 3, 'Jessica Gouveia', NULL, 17000.00, 0.00, 0.00, 0.00, 17000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-05 11:29:38', '2024-09-05 11:29:38'),
(141, 'FR 2024/141', 178, 'Rita Valente', NULL, 'Rua do Colegio Eliada', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 28500.00, 0.00, 0.00, 0.00, 28500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-12 13:10:18', '2024-09-12 13:10:18'),
(142, 'FR 2024/142', 179, 'Fátima', NULL, 'Rua do Colegio Eliada', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 27000.00, 0.00, 0.00, 0.00, 27000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-12 13:13:43', '2024-09-12 13:13:43'),
(143, 'FR 2024/143', 180, 'Estefane Castro', NULL, 'Viana luanda sul', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 8000.00, 0.00, 0.00, 0.00, 8000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-12 13:14:58', '2024-09-12 13:14:58'),
(144, 'FR 2024/144', 181, 'Joana', NULL, 'Camama1', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 19000.00, 0.00, 0.00, 0.00, 19000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-12 13:16:32', '2024-09-12 13:16:32'),
(145, 'FR 2024/145', 183, 'Angela Widiano', NULL, 'Camama1', '2024-09-12 00:00:00', '2024-09-12 00:00:00', 3, 1, 3, 'Jessica Gouveia', NULL, 52500.00, 0.00, 0.00, 0.00, 52500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10');

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

INSERT INTO `formas_pagamentos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Dinheiro', 'Oh dear!.', 1, NULL, NULL),
(2, '0002', 'Transferência', 'Pigeon had.', 1, NULL, NULL),
(3, '0003', 'MultiCaixa', 'PAGAMENTO DO TIPO COM TPA', 1, '2024-04-28 12:59:09', '2024-04-28 12:59:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedors`
--

CREATE TABLE `fornecedors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `contribuinte` varchar(191) DEFAULT NULL,
  `zona` varchar(191) DEFAULT NULL,
  `identificacao` varchar(191) DEFAULT NULL,
  `observacao` varchar(191) DEFAULT NULL,
  `imagem` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_endereco` bigint(20) UNSIGNED DEFAULT NULL,
  `id_contacto` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fornecedors`
--

INSERT INTO `fornecedors` (`id`, `codigo`, `designacao`, `contribuinte`, `zona`, `identificacao`, `observacao`, `imagem`, `status`, `id_endereco`, `id_contacto`, `created_at`, `updated_at`) VALUES
(1, '2023-0001', 'Diverso', 'Diverso', NULL, NULL, NULL, 'null.png', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `guia_remessas`
--

CREATE TABLE `guia_remessas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `impostos`
--

CREATE TABLE `impostos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `impostos` (`id`, `tipo`, `codigo`, `designacao`, `taxa`, `motivo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, NULL, NULL),
(2, 'IVA', '', 'IVA', 14, '', 1, NULL, NULL),
(3, 'ISENTO', 'M02', 'M02 - Transmissão de bens e serviço não sujeita', 0, 'Regime Simplificado', 1, NULL, NULL),
(4, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, NULL, NULL),
(5, 'ISENTO', 'M11', 'M11 - Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(6, 'ISENTO', 'M12', 'M12 - Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(7, 'ISENTO', 'M13', 'M13 - Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(8, 'ISENTO', 'M14', 'M14 - Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(9, 'ISENTO', 'M15', 'M15 - Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea f) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(10, 'ISENTO', 'M16', 'M16 - Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea g) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(11, 'ISENTO', 'M17', 'M17 - Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea h) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(12, 'ISENTO', 'M18', 'M18 - Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea i) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(13, 'ISENTO', 'M19', 'M19 - Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea j) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(14, 'ISENTO', 'M20', 'M20 - Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea k) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(15, 'ISENTO', 'M21', 'M21 - Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea l) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(16, 'ISENTO', 'M22', 'M22 - Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea m) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(17, 'ISENTO', 'M23', 'M23 - Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea n) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(18, 'ISENTO', 'M24', 'M24 - Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 0, 'Isento nos termos da alínea o) do nº1 do artigo 12.º do CIVA', 1, NULL, NULL),
(19, 'ISENTO', 'M80', 'M80 - Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea a) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(20, 'ISENTO', 'M81', 'M81 - Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(21, 'ISENTO', 'M82', 'M82 - Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea c) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(22, 'ISENTO', 'M83', 'M83 - Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea d) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(23, 'ISENTO', 'M84', 'M84 - Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea e) do nº1 do artigo 14.º do CIVA', 1, NULL, NULL),
(24, 'ISENTO', 'M85', 'M85 - Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea a) do nº2 do artigo 14.º do CIVA', 1, NULL, NULL),
(25, 'ISENTO', 'M86', 'M86 - Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 0, 'Isento nos termos da alínea b) do nº2 do artigo 14.º do CIVA', 1, NULL, NULL),
(26, 'ISENTO', 'M30', 'M30 - Isento nos termos da alínea a) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea a) do artigo 15.º do CIVA', 1, NULL, NULL),
(27, 'ISENTO', 'M31', 'M31 - Isento nos termos da alínea b) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea b) do artigo 15.º do CIVA', 1, NULL, NULL),
(28, 'ISENTO', 'M32', 'M32 - Isento nos termos da alínea c) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea c) do artigo 15.º do CIVA', 1, NULL, NULL),
(29, 'ISENTO', 'M33', 'M33 - Isento nos termos da alínea d) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea d) do artigo 15.º do CIVA', 1, NULL, NULL),
(30, 'ISENTO', 'M34', 'M34 - Isento nos termos da alínea e) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea e) do artigo 15.º do CIVA', 1, NULL, NULL),
(31, 'ISENTO', 'M35', 'M35 - Isento nos termos da alínea f) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea f) do artigo 15.º do CIVA', 1, NULL, NULL),
(32, 'ISENTO', 'M36', 'M36 - Isento nos termos da alínea g) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea g) do artigo 15.º do CIVA', 1, NULL, NULL),
(33, 'ISENTO', 'M37', 'M37 - Isento nos termos da alínea h) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea h) do artigo 15.º do CIVA', 1, NULL, NULL),
(34, 'ISENTO', 'M38', 'M38 - Isento nos termos da alínea i) do artigo 15.º do CIVA', 0, 'Isento nos termos da alínea i) do artigo 15.º do CIVA', 1, NULL, NULL),
(35, 'ISENTO', 'M90', 'M90 - Isento nos termos da alinea a) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea a) do nº1 do artigo 16.º', 1, NULL, NULL),
(36, 'ISENTO', 'M91', 'M91 - Isento nos termos da alinea b) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea b) do nº1 do artigo 16.º', 1, NULL, NULL),
(37, 'ISENTO', 'M92', 'M92 - Isento nos termos da alinea c) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea c) do nº1 do artigo 16.º', 1, NULL, NULL),
(38, 'ISENTO', 'M93', 'M93 - Isento nos termos da alinea d) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea d) do nº1 do artigo 16.º', 1, NULL, NULL),
(39, 'ISENTO', 'M93', 'M94 - Isento nos termos da alinea e) do nº1 do artigo 16.º', 0, 'Isento nos termos da alinea e) do nº1 do artigo 16.º', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `items` (`id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 'lente policarbonato', 60000.00, 1, 0.00, 60000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 1, 19, 1, 1, '2024-05-20 13:55:46', '2024-05-20 13:55:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_factura_recibos`
--

CREATE TABLE `item_factura_recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `item_factura_recibos` (`id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_recibo_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 'Óculos de Sol', 30000.00, 1, 2.00, 29400.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, 1, 4, 1, '2024-04-21 11:44:12', '2024-04-21 11:44:12'),
(2, 'Óculos de Sol', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 2, 1, 4, 1, '2024-04-25 12:04:57', '2024-04-25 12:04:57'),
(3, 'Óculos de Sol', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 3, 1, 4, 1, '2024-04-26 11:52:16', '2024-04-26 11:52:16'),
(4, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 4, 2, 4, 1, '2024-05-12 13:25:24', '2024-05-12 13:25:24'),
(5, 'Graduação', 19000.00, 1, 0.00, 19000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 5, 6, 1, 1, '2024-05-12 13:28:56', '2024-05-12 13:28:56'),
(6, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 5, 2, 4, 1, '2024-05-12 13:28:56', '2024-05-12 13:28:56'),
(7, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 9, 1, 1, '2024-05-15 06:41:53', '2024-05-15 06:41:53'),
(8, 'P2 010 Cartier f', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 12, 1, 1, '2024-05-15 08:52:18', '2024-05-15 08:52:18'),
(9, 'P2 010 Cartier f', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 8, 12, 1, 1, '2024-05-15 08:54:08', '2024-05-15 08:54:08'),
(10, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 9, 13, 1, 1, '2024-05-16 06:00:09', '2024-05-16 06:00:09'),
(11, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 9, 1, 1, '2024-05-16 10:54:41', '2024-05-16 10:54:41'),
(12, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 11, 8, 1, 1, '2024-05-17 07:58:39', '2024-05-17 07:58:39'),
(13, 'Lentes Branca', 16000.00, 1, 0.00, 16000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 12, 10, 1, 1, '2024-05-19 09:35:31', '2024-05-19 09:35:31'),
(14, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 12, 20, 1, 1, '2024-05-19 09:35:31', '2024-05-19 09:35:31'),
(15, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 13, 9, 1, 1, '2024-05-20 10:12:02', '2024-05-20 10:12:02'),
(16, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 14, 9, 1, 1, '2024-05-20 13:12:02', '2024-05-20 13:12:02'),
(17, 'Fita adulto', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 15, 18, 1, 1, '2024-05-20 14:04:33', '2024-05-20 14:04:33'),
(18, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 15, 20, 1, 1, '2024-05-20 14:04:33', '2024-05-20 14:04:33'),
(19, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 16, 9, 1, 1, '2024-05-20 14:28:06', '2024-05-20 14:28:06'),
(20, 'P1 007 A F', 12000.00, 1, 0.00, 12000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 11, 1, 1, '2024-05-21 08:54:47', '2024-05-21 08:54:47'),
(21, 'P1 007 A F', 12000.00, 1, 0.00, 12000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 18, 11, 1, 1, '2024-05-21 08:55:42', '2024-05-21 08:55:42'),
(22, 'Lentes progressivas', 90000.00, 1, 0.00, 90000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 19, 21, 2, 1, '2024-05-21 10:50:29', '2024-05-21 10:50:29'),
(23, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 20, 7, 1, 1, '2024-05-21 11:14:05', '2024-05-21 11:14:05'),
(24, 'Lentes altas -5;-1', 45000.00, 1, 0.00, 45000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 21, 22, 1, 1, '2024-05-21 13:24:54', '2024-05-21 13:24:54'),
(25, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 15, 1, 1, '2024-05-21 13:26:32', '2024-05-21 13:26:32'),
(26, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 9, 1, 1, '2024-05-21 13:26:32', '2024-05-21 13:26:32'),
(27, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 7, 1, 1, '2024-05-21 13:26:32', '2024-05-21 13:26:32'),
(28, 'Spray', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 23, 16, 2, 1, '2024-05-23 09:26:42', '2024-05-23 09:26:42'),
(29, 'Lentes altas cilíndrica', 18000.00, 1, 0.00, 18000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 23, 23, 1, 1, '2024-05-23 09:26:42', '2024-05-23 09:26:42'),
(30, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 24, 9, 1, 1, '2024-05-23 10:00:40', '2024-05-23 10:00:40'),
(31, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 25, 13, 1, 1, '2024-05-23 12:51:29', '2024-05-23 12:51:29'),
(32, 'Fita adulto', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 26, 18, 1, 1, '2024-05-24 10:03:22', '2024-05-24 10:03:22'),
(33, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 26, 9, 1, 1, '2024-05-24 10:03:22', '2024-05-24 10:03:22'),
(34, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 26, 7, 1, 1, '2024-05-24 10:03:22', '2024-05-24 10:03:22'),
(35, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 27, 9, 1, 1, '2024-05-24 10:05:12', '2024-05-24 10:05:12'),
(36, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 27, 7, 1, 1, '2024-05-24 10:05:12', '2024-05-24 10:05:12'),
(37, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 28, 8, 1, 1, '2024-05-25 08:43:10', '2024-05-25 08:43:10'),
(38, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 28, 9, 1, 1, '2024-05-25 08:43:10', '2024-05-25 08:43:10'),
(39, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 29, 9, 1, 1, '2024-05-25 10:32:34', '2024-05-25 10:32:34'),
(40, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 30, 3, 4, 1, '2024-05-28 11:53:01', '2024-05-28 11:53:01'),
(41, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 31, 2, 4, 1, '2024-05-28 11:53:36', '2024-05-28 11:53:36'),
(42, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 32, 14, 1, 1, '2024-05-28 11:55:23', '2024-05-28 11:55:23'),
(43, 'P2 010 Cartier f', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 32, 12, 1, 1, '2024-05-28 11:55:23', '2024-05-28 11:55:23'),
(44, 'Lentes progressivas', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 32, 21, 2, 1, '2024-05-28 11:55:23', '2024-05-28 11:55:23'),
(45, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 33, 24, 1, 1, '2024-05-28 11:59:06', '2024-05-28 11:59:06'),
(46, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 33, 24, 1, 1, '2024-05-28 11:59:06', '2024-05-28 11:59:06'),
(47, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 34, 9, 1, 1, '2024-05-29 11:39:40', '2024-05-29 11:39:40'),
(48, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 35, 8, 1, 1, '2024-05-30 08:13:48', '2024-05-30 08:13:48'),
(49, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 36, 9, 1, 1, '2024-05-30 11:29:43', '2024-05-30 11:29:43'),
(50, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 37, 9, 1, 1, '2024-05-31 10:45:37', '2024-05-31 10:45:37'),
(51, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 38, 2, 4, 1, '2024-06-01 11:40:07', '2024-06-01 11:40:07'),
(52, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 39, 14, 1, 1, '2024-06-01 11:43:35', '2024-06-01 11:43:35'),
(53, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 40, 15, 1, 1, '2024-06-03 05:47:13', '2024-06-03 05:47:13'),
(54, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 40, 16, 2, 1, '2024-06-03 05:47:13', '2024-06-03 05:47:13'),
(55, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 40, 5, 1, 1, '2024-06-03 05:47:13', '2024-06-03 05:47:13'),
(56, 'Lentes progressivas', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 40, 21, 2, 1, '2024-06-03 05:47:13', '2024-06-03 05:47:13'),
(57, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 41, 16, 2, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(58, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 14, 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(59, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 8, 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(60, 'P2 010 Cartier f', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 12, 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(61, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 26, 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(62, 'lentes altas s', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 41, 25, 1, 1, '2024-06-04 07:14:08', '2024-06-04 07:14:08'),
(63, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 42, 9, 1, 1, '2024-06-04 09:36:53', '2024-06-04 09:36:53'),
(64, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 42, 3, 4, 1, '2024-06-04 09:36:53', '2024-06-04 09:36:53'),
(65, 'lentes Brancas', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 43, 6, 1, 1, '2024-06-04 11:33:12', '2024-06-04 11:33:12'),
(66, 'lentes Brancas', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 44, 6, 1, 1, '2024-06-04 13:02:57', '2024-06-04 13:02:57'),
(67, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 45, 9, 1, 1, '2024-06-04 13:28:18', '2024-06-04 13:28:18'),
(68, 'lentes Brancas', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 46, 6, 1, 1, '2024-06-04 14:19:23', '2024-06-04 14:19:23'),
(69, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 46, 2, 4, 1, '2024-06-04 14:19:23', '2024-06-04 14:19:23'),
(70, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 47, 14, 1, 1, '2024-06-07 07:43:24', '2024-06-07 07:43:24'),
(71, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 47, 16, 2, 1, '2024-06-07 07:43:24', '2024-06-07 07:43:24'),
(72, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 47, 7, 1, 1, '2024-06-07 07:43:24', '2024-06-07 07:43:24'),
(73, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 48, 15, 1, 1, '2024-06-07 07:46:02', '2024-06-07 07:46:02'),
(74, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 48, 24, 1, 1, '2024-06-07 07:46:02', '2024-06-07 07:46:02'),
(75, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 48, 4, 1, 1, '2024-06-07 07:46:02', '2024-06-07 07:46:02'),
(76, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 49, 9, 1, 1, '2024-06-08 09:21:03', '2024-06-08 09:21:03'),
(77, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 49, 13, 1, 1, '2024-06-08 09:21:03', '2024-06-08 09:21:03'),
(78, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 50, 9, 1, 1, '2024-06-10 13:54:40', '2024-06-10 13:54:40'),
(79, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 51, 9, 1, 1, '2024-06-10 13:55:16', '2024-06-10 13:55:16'),
(80, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 52, 9, 1, 1, '2024-06-11 08:58:19', '2024-06-11 08:58:19'),
(81, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 53, 9, 1, 1, '2024-06-12 07:18:30', '2024-06-12 07:18:30'),
(82, 'Fita adulto', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 54, 18, 1, 1, '2024-06-12 13:28:53', '2024-06-12 13:28:53'),
(83, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 54, 14, 1, 1, '2024-06-12 13:28:53', '2024-06-12 13:28:53'),
(84, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 54, 7, 1, 1, '2024-06-12 13:28:53', '2024-06-12 13:28:53'),
(85, 'Óculos de Sol', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 55, 1, 4, 1, '2024-06-13 08:01:45', '2024-06-13 08:01:45'),
(86, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 56, 13, 1, 1, '2024-06-13 08:02:22', '2024-06-13 08:02:22'),
(87, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 57, 13, 1, 1, '2024-06-13 11:54:40', '2024-06-13 11:54:40'),
(88, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 58, 2, 4, 1, '2024-06-14 08:38:24', '2024-06-14 08:38:24'),
(89, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 58, 27, 1, 1, '2024-06-14 08:38:24', '2024-06-14 08:38:24'),
(90, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 59, 9, 1, 1, '2024-06-14 10:43:11', '2024-06-14 10:43:11'),
(91, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 59, 4, 1, 1, '2024-06-14 10:43:11', '2024-06-14 10:43:11'),
(92, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 60, 9, 1, 1, '2024-06-15 06:27:48', '2024-06-15 06:27:48'),
(93, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 60, 5, 1, 1, '2024-06-15 06:27:48', '2024-06-15 06:27:48'),
(94, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 61, 9, 1, 1, '2024-06-15 06:28:46', '2024-06-15 06:28:46'),
(95, 'Lentes progressivas', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 62, 21, 2, 1, '2024-06-15 06:30:09', '2024-06-15 06:30:09'),
(96, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 62, 5, 1, 1, '2024-06-15 06:30:09', '2024-06-15 06:30:09'),
(97, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 63, 9, 1, 1, '2024-06-15 10:25:29', '2024-06-15 10:25:29'),
(98, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 64, 9, 1, 1, '2024-06-15 12:58:40', '2024-06-15 12:58:40'),
(99, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 64, 2, 4, 1, '2024-06-15 12:58:40', '2024-06-15 12:58:40'),
(100, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 65, 5, 1, 1, '2024-06-17 10:07:15', '2024-06-17 10:07:15'),
(101, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 65, 9, 1, 1, '2024-06-17 10:07:15', '2024-06-17 10:07:15'),
(102, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 66, 13, 1, 1, '2024-06-17 11:32:00', '2024-06-17 11:32:00'),
(103, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 67, 14, 1, 1, '2024-06-18 11:08:27', '2024-06-18 11:08:27'),
(104, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 67, 5, 1, 1, '2024-06-18 11:08:28', '2024-06-18 11:08:28'),
(105, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 68, 14, 1, 1, '2024-06-18 13:17:26', '2024-06-18 13:17:26'),
(106, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 68, 2, 4, 1, '2024-06-18 13:17:26', '2024-06-18 13:17:26'),
(107, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 15, 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(108, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 24, 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(109, 'Lentes altas cilíndrica', 18000.00, 1, 0.00, 18000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 23, 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(110, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 27, 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(111, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 69, 8, 1, 1, '2024-06-19 07:39:16', '2024-06-19 07:39:16'),
(112, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 70, 3, 4, 1, '2024-06-20 10:05:48', '2024-06-20 10:05:48'),
(113, 'Concerto', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 71, 31, 1, 1, '2024-06-20 10:17:25', '2024-06-20 10:17:25'),
(114, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 72, 26, 1, 1, '2024-06-24 12:19:52', '2024-06-24 12:19:52'),
(115, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 72, 4, 1, 1, '2024-06-24 12:19:52', '2024-06-24 12:19:52'),
(116, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 73, 9, 1, 1, '2024-07-01 12:52:59', '2024-07-01 12:52:59'),
(117, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 73, 2, 4, 1, '2024-07-01 12:52:59', '2024-07-01 12:52:59'),
(118, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 74, 27, 1, 1, '2024-07-01 12:54:38', '2024-07-01 12:54:38'),
(119, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 74, 5, 1, 1, '2024-07-01 12:54:38', '2024-07-01 12:54:38'),
(120, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 75, 16, 2, 1, '2024-07-01 12:55:29', '2024-07-01 12:55:29'),
(121, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 75, 2, 4, 1, '2024-07-01 12:55:29', '2024-07-01 12:55:29'),
(122, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 76, 9, 1, 1, '2024-07-01 12:56:22', '2024-07-01 12:56:22'),
(123, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 77, 26, 1, 1, '2024-07-01 12:57:47', '2024-07-01 12:57:47'),
(124, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 77, 2, 4, 1, '2024-07-01 12:57:47', '2024-07-01 12:57:47'),
(125, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 78, 15, 1, 1, '2024-07-01 12:58:40', '2024-07-01 12:58:40'),
(126, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 78, 9, 1, 1, '2024-07-01 12:58:40', '2024-07-01 12:58:40'),
(127, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 79, 9, 1, 1, '2024-07-01 12:59:36', '2024-07-01 12:59:36'),
(128, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 80, 9, 1, 1, '2024-07-01 13:01:27', '2024-07-01 13:01:27'),
(129, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 80, 9, 1, 1, '2024-07-01 13:01:27', '2024-07-01 13:01:27'),
(130, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 80, 27, 1, 1, '2024-07-01 13:01:27', '2024-07-01 13:01:27'),
(131, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 81, 9, 1, 1, '2024-07-01 13:03:08', '2024-07-01 13:03:08'),
(132, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 82, 16, 2, 1, '2024-07-02 11:09:38', '2024-07-02 11:09:38'),
(133, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 82, 14, 1, 1, '2024-07-02 11:09:38', '2024-07-02 11:09:38'),
(134, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 82, 3, 4, 1, '2024-07-02 11:09:38', '2024-07-02 11:09:38'),
(135, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 83, 9, 1, 1, '2024-07-02 11:10:39', '2024-07-02 11:10:39'),
(136, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 83, 27, 1, 1, '2024-07-02 11:10:39', '2024-07-02 11:10:39'),
(137, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 84, 9, 1, 1, '2024-07-05 06:13:30', '2024-07-05 06:13:30'),
(138, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 84, 5, 1, 1, '2024-07-05 06:13:30', '2024-07-05 06:13:30'),
(139, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 85, 27, 1, 1, '2024-07-05 06:14:27', '2024-07-05 06:14:27'),
(140, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 85, 24, 1, 1, '2024-07-05 06:14:27', '2024-07-05 06:14:27'),
(141, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 86, 15, 1, 1, '2024-07-05 06:15:18', '2024-07-05 06:15:18'),
(142, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 86, 9, 1, 1, '2024-07-05 06:15:18', '2024-07-05 06:15:18'),
(143, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 87, 9, 1, 1, '2024-07-05 06:15:57', '2024-07-05 06:15:57'),
(144, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 88, 24, 1, 1, '2024-07-05 06:18:31', '2024-07-05 06:18:31'),
(145, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 88, 27, 1, 1, '2024-07-05 06:18:31', '2024-07-05 06:18:31'),
(146, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 89, 15, 1, 1, '2024-07-05 11:40:42', '2024-07-05 11:40:42'),
(147, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 89, 9, 1, 1, '2024-07-05 11:40:42', '2024-07-05 11:40:42'),
(148, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 90, 13, 1, 1, '2024-07-05 11:42:09', '2024-07-05 11:42:09'),
(149, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 91, 14, 1, 1, '2024-07-08 12:49:11', '2024-07-08 12:49:11'),
(150, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 91, 9, 1, 1, '2024-07-08 12:49:11', '2024-07-08 12:49:11'),
(151, 'Concerto', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 92, 31, 1, 1, '2024-07-08 12:50:05', '2024-07-08 12:50:05'),
(152, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 93, 9, 1, 1, '2024-07-09 10:12:21', '2024-07-09 10:12:21'),
(153, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 93, 14, 1, 1, '2024-07-09 10:12:21', '2024-07-09 10:12:21'),
(154, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 93, 3, 4, 1, '2024-07-09 10:12:21', '2024-07-09 10:12:21'),
(155, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 94, 15, 1, 1, '2024-07-09 10:13:35', '2024-07-09 10:13:35'),
(156, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 94, 9, 1, 1, '2024-07-09 10:13:35', '2024-07-09 10:13:35'),
(157, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 94, 4, 1, 1, '2024-07-09 10:13:35', '2024-07-09 10:13:35'),
(158, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 95, 13, 1, 1, '2024-07-09 14:11:42', '2024-07-09 14:11:42'),
(159, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 96, 8, 1, 1, '2024-07-09 14:12:52', '2024-07-09 14:12:52'),
(160, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 97, 27, 1, 1, '2024-07-12 11:35:17', '2024-07-12 11:35:17'),
(161, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 97, 24, 1, 1, '2024-07-12 11:35:17', '2024-07-12 11:35:17'),
(162, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 97, 13, 1, 1, '2024-07-12 11:35:17', '2024-07-12 11:35:17'),
(163, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 98, 9, 1, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(164, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 98, 26, 1, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(165, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 98, 24, 1, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(166, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 98, 2, 4, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(167, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 98, 4, 1, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(168, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 98, 2, 4, 1, '2024-07-12 11:38:37', '2024-07-12 11:38:37'),
(169, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 99, 9, 1, 1, '2024-07-15 13:22:40', '2024-07-15 13:22:40'),
(170, 'Fita criança', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 100, 17, 1, 1, '2024-07-16 12:34:15', '2024-07-16 12:34:15'),
(171, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 100, 8, 1, 1, '2024-07-16 12:34:15', '2024-07-16 12:34:15'),
(172, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 101, 4, 1, 1, '2024-07-16 12:35:22', '2024-07-16 12:35:22'),
(173, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 101, 9, 1, 1, '2024-07-16 12:35:22', '2024-07-16 12:35:22'),
(174, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 102, 26, 1, 1, '2024-07-16 12:47:46', '2024-07-16 12:47:46'),
(175, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 103, 9, 1, 1, '2024-08-09 07:22:45', '2024-08-09 07:22:45'),
(176, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 103, 2, 4, 1, '2024-08-09 07:22:45', '2024-08-09 07:22:45'),
(177, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 104, 13, 1, 1, '2024-08-09 07:23:47', '2024-08-09 07:23:47'),
(178, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 105, 14, 1, 1, '2024-08-09 07:43:32', '2024-08-09 07:43:32'),
(179, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 105, 9, 1, 1, '2024-08-09 07:43:32', '2024-08-09 07:43:32'),
(180, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 105, 4, 1, 1, '2024-08-09 07:43:32', '2024-08-09 07:43:32'),
(181, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 106, 9, 1, 1, '2024-08-09 07:44:54', '2024-08-09 07:44:54'),
(182, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 106, 27, 1, 1, '2024-08-09 07:44:54', '2024-08-09 07:44:54'),
(183, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 107, 8, 1, 1, '2024-08-09 07:45:40', '2024-08-09 07:45:40'),
(184, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 108, 16, 2, 1, '2024-08-09 07:50:43', '2024-08-09 07:50:43'),
(185, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 108, 14, 1, 1, '2024-08-09 07:50:43', '2024-08-09 07:50:43'),
(186, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 108, 4, 1, 1, '2024-08-09 07:50:43', '2024-08-09 07:50:43'),
(187, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 109, 26, 1, 1, '2024-08-09 07:55:46', '2024-08-09 07:55:46'),
(188, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 109, 14, 1, 1, '2024-08-09 07:55:46', '2024-08-09 07:55:46'),
(189, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 109, 3, 4, 1, '2024-08-09 07:55:46', '2024-08-09 07:55:46'),
(190, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 110, 8, 1, 1, '2024-08-09 07:57:32', '2024-08-09 07:57:32'),
(191, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 110, 9, 1, 1, '2024-08-09 07:57:32', '2024-08-09 07:57:32'),
(192, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 111, 4, 1, 1, '2024-08-09 07:58:51', '2024-08-09 07:58:51'),
(193, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 112, 27, 1, 1, '2024-08-09 08:00:56', '2024-08-09 08:00:56'),
(194, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 113, 9, 1, 1, '2024-08-09 08:01:50', '2024-08-09 08:01:50'),
(195, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 114, 9, 1, 1, '2024-08-09 08:03:47', '2024-08-09 08:03:47'),
(196, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 27, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(197, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 8, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(198, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 27, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(199, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 26, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(200, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 24, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(201, 'Fita criança', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 17, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(202, 'Fita adulto', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 18, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(203, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 15, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(204, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 14, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(205, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 115, 15, 1, 1, '2024-08-09 09:17:01', '2024-08-09 09:17:01'),
(206, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 116, 9, 1, 1, '2024-08-09 09:18:37', '2024-08-09 09:18:37'),
(207, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 116, 8, 1, 1, '2024-08-09 09:18:37', '2024-08-09 09:18:37'),
(208, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 117, 24, 1, 1, '2024-08-10 08:46:41', '2024-08-10 08:46:41'),
(209, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 118, 9, 1, 1, '2024-08-10 09:32:54', '2024-08-10 09:32:54'),
(210, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 118, 2, 4, 1, '2024-08-10 09:32:54', '2024-08-10 09:32:54'),
(211, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 119, 9, 1, 1, '2024-08-12 13:55:21', '2024-08-12 13:55:21'),
(212, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 119, 27, 1, 1, '2024-08-12 13:55:21', '2024-08-12 13:55:21'),
(213, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 120, 26, 1, 1, '2024-08-12 13:56:08', '2024-08-12 13:56:08'),
(214, 'Óculos de Sol', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 120, 1, 4, 1, '2024-08-12 13:56:08', '2024-08-12 13:56:08'),
(215, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 121, 24, 1, 1, '2024-08-14 08:52:49', '2024-08-14 08:52:49'),
(216, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 121, 9, 1, 1, '2024-08-14 08:52:49', '2024-08-14 08:52:49'),
(217, 'P1 004 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 121, 5, 1, 1, '2024-08-14 08:52:49', '2024-08-14 08:52:49'),
(218, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 121, 2, 4, 1, '2024-08-14 08:52:49', '2024-08-14 08:52:49'),
(219, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 122, 9, 1, 1, '2024-08-14 13:05:25', '2024-08-14 13:05:25'),
(220, 'lentes altas s', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 123, 25, 1, 1, '2024-08-16 14:26:00', '2024-08-16 14:26:00'),
(221, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 123, 27, 1, 1, '2024-08-16 14:26:00', '2024-08-16 14:26:00'),
(222, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 124, 2, 4, 1, '2024-08-16 14:26:46', '2024-08-16 14:26:46'),
(223, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 124, 24, 1, 1, '2024-08-16 14:26:46', '2024-08-16 14:26:46'),
(224, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 125, 9, 1, 1, '2024-08-21 09:18:52', '2024-08-21 09:18:52'),
(225, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 126, 9, 1, 1, '2024-08-28 12:12:26', '2024-08-28 12:12:26'),
(226, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 126, 27, 1, 1, '2024-08-28 12:12:26', '2024-08-28 12:12:26'),
(227, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 127, 2, 4, 1, '2024-08-28 12:13:02', '2024-08-28 12:13:02'),
(228, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 128, 27, 1, 1, '2024-08-28 12:13:54', '2024-08-28 12:13:54'),
(229, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 128, 9, 1, 1, '2024-08-28 12:13:54', '2024-08-28 12:13:54'),
(230, 'Fita criança', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 129, 17, 1, 1, '2024-08-28 12:16:40', '2024-08-28 12:16:40'),
(231, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 129, 14, 1, 1, '2024-08-28 12:16:40', '2024-08-28 12:16:40'),
(232, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 129, 15, 1, 1, '2024-08-28 12:16:40', '2024-08-28 12:16:40'),
(233, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 129, 27, 1, 1, '2024-08-28 12:16:40', '2024-08-28 12:16:40'),
(234, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 130, 9, 1, 1, '2024-08-28 12:17:22', '2024-08-28 12:17:22'),
(235, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 130, 2, 4, 1, '2024-08-28 12:17:22', '2024-08-28 12:17:22'),
(236, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 131, 14, 1, 1, '2024-08-28 12:18:43', '2024-08-28 12:18:43'),
(237, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 131, 9, 1, 1, '2024-08-28 12:18:43', '2024-08-28 12:18:43'),
(238, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 131, 27, 1, 1, '2024-08-28 12:18:43', '2024-08-28 12:18:43');
INSERT INTO `item_factura_recibos` (`id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `factura_recibo_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(239, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 132, 15, 1, 1, '2024-08-28 12:19:35', '2024-08-28 12:19:35'),
(240, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 133, 33, 1, 1, '2024-08-28 12:20:57', '2024-08-28 12:20:57'),
(241, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 133, 27, 1, 1, '2024-08-28 12:20:57', '2024-08-28 12:20:57'),
(242, 'Lentes brancas altas -', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 134, 32, 4, 1, '2024-08-28 12:21:51', '2024-08-28 12:21:51'),
(243, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 135, 15, 1, 1, '2024-09-02 14:17:36', '2024-09-02 14:17:36'),
(244, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 135, 16, 2, 1, '2024-09-02 14:17:36', '2024-09-02 14:17:36'),
(245, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 135, 14, 1, 1, '2024-09-02 14:17:36', '2024-09-02 14:17:36'),
(246, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 135, 24, 1, 1, '2024-09-02 14:17:36', '2024-09-02 14:17:36'),
(247, 'Spray', 2000.00, 1, 0.00, 2000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 136, 16, 2, 1, '2024-09-02 14:18:42', '2024-09-02 14:18:42'),
(248, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 136, 24, 1, 1, '2024-09-02 14:18:42', '2024-09-02 14:18:42'),
(249, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 136, 2, 4, 1, '2024-09-02 14:18:42', '2024-09-02 14:18:42'),
(250, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 137, 14, 1, 1, '2024-09-02 14:20:44', '2024-09-02 14:20:44'),
(251, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 137, 2, 4, 1, '2024-09-02 14:20:44', '2024-09-02 14:20:44'),
(252, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 137, 9, 1, 1, '2024-09-02 14:20:44', '2024-09-02 14:20:44'),
(253, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 137, 24, 1, 1, '2024-09-02 14:20:44', '2024-09-02 14:20:44'),
(254, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 138, 24, 1, 1, '2024-09-05 11:27:03', '2024-09-05 11:27:03'),
(255, 'P1 003 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 138, 4, 1, 1, '2024-09-05 11:27:03', '2024-09-05 11:27:03'),
(256, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 139, 9, 1, 1, '2024-09-05 11:28:05', '2024-09-05 11:28:05'),
(257, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 140, 24, 1, 1, '2024-09-05 11:29:38', '2024-09-05 11:29:38'),
(258, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 141, 9, 1, 1, '2024-09-12 13:10:18', '2024-09-12 13:10:18'),
(259, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 141, 14, 1, 1, '2024-09-12 13:10:18', '2024-09-12 13:10:18'),
(260, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 141, 3, 4, 1, '2024-09-12 13:10:18', '2024-09-12 13:10:18'),
(261, 'lentes altas 2', 20000.00, 1, 0.00, 20000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 142, 26, 1, 1, '2024-09-12 13:13:43', '2024-09-12 13:13:43'),
(262, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 142, 27, 1, 1, '2024-09-12 13:13:43', '2024-09-12 13:13:43'),
(263, 'Grif partido', 8000.00, 1, 0.00, 8000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 143, 13, 1, 1, '2024-09-12 13:14:58', '2024-09-12 13:14:58'),
(264, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 144, 8, 1, 1, '2024-09-12 13:16:32', '2024-09-12 13:16:32'),
(265, 'lentes fotogrey', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 144, 9, 1, 1, '2024-09-12 13:16:32', '2024-09-12 13:16:32'),
(266, 'Óculos de Sol', 10000.00, 1, 0.00, 10000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 145, 1, 4, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(267, 'Fita criança', 1000.00, 1, 0.00, 1000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 145, 17, 1, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(268, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 145, 15, 1, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(269, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 145, 14, 1, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(270, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 145, 24, 1, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(271, 'Caixa 3.5', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 145, 39, 4, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10'),
(272, 'Armação homem 18', 18000.00, 1, 0.00, 18000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 145, 38, 4, 1, '2024-09-12 13:38:10', '2024-09-12 13:38:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_guia_remessas`
--

CREATE TABLE `item_guia_remessas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `nota_credito_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `imposto_id` bigint(20) UNSIGNED NOT NULL,
  `retencao_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_nota_debitos`
--

CREATE TABLE `item_nota_debitos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `item_proformas` (`id`, `designacao`, `preco`, `qtd`, `desconto`, `subtotal`, `retencao_designacao`, `retencao_taxa`, `imposto_tipo`, `imposto_codigo`, `imposto_designacao`, `imposto_taxa`, `imposto_motivo`, `proforma_id`, `artigo_id`, `imposto_id`, `retencao_id`, `created_at`, `updated_at`) VALUES
(1, 'Óculos de Sol', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 1, 1, 4, 1, '2023-12-29 11:16:59', '2023-12-29 11:16:59'),
(2, 'Óculos de Sol', 30000.00, 11, 3.00, 329100.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 2, 1, 4, 1, '2024-04-20 15:34:19', '2024-04-20 15:34:19'),
(3, 'Óculos de Sol', 30000.00, 2, 0.00, 60000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 3, 1, 4, 1, '2024-04-20 15:46:51', '2024-04-20 15:46:51'),
(4, 'Óculos de Sol', 30000.00, 12, 0.00, 360000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 4, 1, 4, 1, '2024-04-28 12:50:04', '2024-04-28 12:50:04'),
(5, 'Óculos de Sol', 30000.00, 12, 0.00, 360000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 5, 1, 4, 1, '2024-04-28 12:50:04', '2024-04-28 12:50:04'),
(6, 'p1 001 A.F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 7, 1, 1, '2024-06-01 10:53:32', '2024-06-01 10:53:32'),
(7, 'lentes altas s', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 6, 25, 1, 1, '2024-06-01 10:53:32', '2024-06-01 10:53:32'),
(8, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 7, 2, 4, 1, '2024-06-01 11:00:28', '2024-06-01 11:00:28'),
(9, 'lentes altas s', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 7, 25, 1, 1, '2024-06-01 11:00:28', '2024-06-01 11:00:28'),
(10, 'Armação 7.', 7000.00, 1, 0.00, 7000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 8, 27, 1, 1, '2024-06-04 11:48:11', '2024-06-04 11:48:11'),
(11, 'lentes Brancas', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 8, 6, 1, 1, '2024-06-04 11:48:11', '2024-06-04 11:48:11'),
(12, 'Lentes progressivas', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 9, 21, 2, 1, '2024-06-07 07:06:30', '2024-06-07 07:06:30'),
(13, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 20, 1, 1, '2024-06-07 07:35:17', '2024-06-07 07:35:17'),
(14, 'Lentes altas -5;-1', 45000.00, 1, 0.00, 45000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 22, 1, 1, '2024-06-07 07:35:17', '2024-06-07 07:35:17'),
(15, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 20, 1, 1, '2024-06-07 07:35:17', '2024-06-07 07:35:17'),
(16, 'Lentes altas -5;-1', 45000.00, 1, 0.00, 45000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 10, 22, 1, 1, '2024-06-07 07:35:17', '2024-06-07 07:35:17'),
(17, 'Armação fechada (-6;-6)', 55000.00, 1, 0.00, 55000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 11, 30, 1, 1, '2024-06-19 12:00:14', '2024-06-19 12:00:14'),
(18, 'Lentes Fotogrey( -6;-6)', 275000.00, 1, 0.00, 275000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 11, 29, 1, 1, '2024-06-19 12:00:14', '2024-06-19 12:00:14'),
(19, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 12, 20, 1, 1, '2024-07-02 10:59:40', '2024-07-02 10:59:40'),
(20, 'Lentes progressivas', 90000.00, 1, 0.00, 90000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 12, 21, 2, 1, '2024-07-02 10:59:40', '2024-07-02 10:59:40'),
(21, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 13, 2, 4, 1, '2024-07-04 07:05:20', '2024-07-04 07:05:20'),
(22, 'Lentes brancas altas -', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 13, 32, 4, 1, '2024-07-04 07:05:20', '2024-07-04 07:05:20'),
(23, 'Lentes progressivas', 90000.00, 1, 0.00, 90000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 14, 21, 2, 1, '2024-07-10 10:33:08', '2024-07-10 10:33:08'),
(24, 'Lentes progressivas G', 260000.00, 1, 0.00, 260000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 15, 33, 4, 1, '2024-07-18 10:46:35', '2024-07-18 10:46:35'),
(25, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 15, 2, 4, 1, '2024-07-18 10:46:35', '2024-07-18 10:46:35'),
(26, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 16, 2, 4, 1, '2024-07-18 10:58:56', '2024-07-18 10:58:56'),
(27, 'Lentes progressivas G', 260000.00, 1, 0.00, 260000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 16, 33, 1, 1, '2024-07-18 10:58:56', '2024-07-18 10:58:56'),
(28, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 17, 2, 4, 1, '2024-07-18 13:31:54', '2024-07-18 13:31:54'),
(29, 'Lentes progressivas G', 237000.00, 1, 0.00, 237000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 17, 33, 1, 1, '2024-07-18 13:31:54', '2024-07-18 13:31:54'),
(30, 'Lentes altas.', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 34, 4, 1, '2024-07-20 07:20:20', '2024-07-20 07:20:20'),
(31, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 18, 33, 1, 1, '2024-07-20 07:20:20', '2024-07-20 07:20:20'),
(32, 'Lentes altas.', 30000.00, 1, 0.00, 30000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 18, 34, 4, 1, '2024-07-20 07:20:20', '2024-07-20 07:20:20'),
(33, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 15, 1, 1, '2024-07-29 08:11:13', '2024-07-29 08:11:13'),
(34, 'lentes Brancas', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 6, 1, 1, '2024-07-29 08:11:13', '2024-07-29 08:11:13'),
(35, 'crianças', 5000.00, 1, 0.00, 5000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 19, 8, 1, 1, '2024-07-29 08:11:13', '2024-07-29 08:11:13'),
(36, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 20, 33, 1, 1, '2024-07-29 12:30:44', '2024-07-29 12:30:44'),
(37, 'P1 002 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 21, 3, 4, 1, '2024-07-31 07:47:02', '2024-07-31 07:47:02'),
(38, 'Caixa', 1500.00, 1, 0.00, 1500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 14, 1, 1, '2024-07-31 07:52:52', '2024-07-31 07:52:52'),
(39, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 22, 20, 1, 1, '2024-07-31 07:52:52', '2024-07-31 07:52:52'),
(40, 'Lentes altas 5', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 22, 35, 4, 1, '2024-07-31 07:52:52', '2024-07-31 07:52:52'),
(41, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 23, 20, 1, 1, '2024-08-08 14:56:49', '2024-08-08 14:56:49'),
(42, 'Lentes brancas altas -', 50000.00, 1, 0.00, 50000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 23, 32, 4, 1, '2024-08-08 14:56:49', '2024-08-08 14:56:49'),
(43, 'Lentes Branca', 16000.00, 1, 0.00, 16000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 24, 10, 1, 1, '2024-08-20 06:24:56', '2024-08-20 06:24:56'),
(44, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 25, 33, 1, 1, '2024-09-04 08:52:41', '2024-09-04 08:52:41'),
(45, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 26, 33, 1, 1, '2024-09-06 09:07:26', '2024-09-06 09:07:26'),
(46, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 27, 20, 1, 1, '2024-09-10 09:12:31', '2024-09-10 09:12:31'),
(47, 'Lentes branca alta', 60000.00, 1, 0.00, 60000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 27, 29, 4, 1, '2024-09-10 09:12:31', '2024-09-10 09:12:31'),
(48, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 28, 20, 1, 1, '2024-09-20 09:55:33', '2024-09-20 09:55:33'),
(49, 'Lentes progressivas', 100000.00, 1, 0.00, 100000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 28, 21, 2, 1, '2024-09-20 09:55:33', '2024-09-20 09:55:33'),
(50, 'Lentes 17', 17000.00, 1, 0.00, 17000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 29, 24, 1, 1, '2024-10-01 09:36:43', '2024-10-01 09:36:43'),
(51, 'Armação homem', 25000.00, 1, 0.00, 25000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 29, 40, 4, 1, '2024-10-01 09:36:43', '2024-10-01 09:36:43'),
(52, 'armação', 14000.00, 1, 0.00, 14000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 30, 20, 1, 1, '2024-10-04 08:15:42', '2024-10-04 08:15:42'),
(53, 'Lentes progressivas', 95000.00, 1, 0.00, 95000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 30, 21, 2, 1, '2024-10-04 08:15:42', '2024-10-04 08:15:42'),
(54, 'Lentes progressivas G', 85000.00, 1, 0.00, 85000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 31, 33, 1, 1, '2024-10-08 03:46:37', '2024-10-08 03:46:37'),
(55, 'armação', 16000.00, 1, 0.00, 16000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 32, 20, 1, 1, '2024-10-16 08:28:27', '2024-10-16 08:28:27'),
(56, 'Lentes progressivas G', 80000.00, 1, 0.00, 80000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 32, 33, 1, 1, '2024-10-16 08:28:27', '2024-10-16 08:28:27'),
(57, 'armação', 16000.00, 1, 0.00, 16000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 33, 20, 1, 1, '2024-10-29 08:28:47', '2024-10-29 08:28:47'),
(58, 'P1-001 GRIFE GUCCI F', 13000.00, 1, 0.00, 13000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 33, 2, 4, 1, '2024-10-29 08:28:47', '2024-10-29 08:28:47'),
(59, 'Lentes progressivas', 103000.00, 1, 0.00, 103000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 34, 21, 2, 1, '2024-11-02 08:43:50', '2024-11-02 08:43:50'),
(60, 'Lentes Branca -', 135000.00, 1, 0.00, 135000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 35, 10, 1, 1, '2024-12-02 16:14:19', '2024-12-02 16:14:19'),
(61, 'Consulta optometria', 3500.00, 1, 0.00, 3500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M04', 'M04 - Regime de Exclusão', 0, 'Regime Simplificado', 35, 41, 4, 1, '2024-12-02 16:14:20', '2024-12-02 16:14:20'),
(62, 'armação', 41500.00, 1, 0.00, 41500.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 35, 20, 1, 1, '2024-12-02 16:14:20', '2024-12-02 16:14:20'),
(63, 'armação', 16000.00, 1, 0.00, 16000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 36, 20, 1, 1, '2024-12-12 10:37:45', '2024-12-12 10:37:45'),
(64, 'Lentes progressivas', 85000.00, 1, 0.00, 85000.00, 'Sem rentenção na fonte', 0, 'IVA', NULL, 'IVA', 14, NULL, 36, 21, 2, 1, '2024-12-12 10:37:45', '2024-12-12 10:37:45'),
(65, 'Lentes progressivas G', 90000.00, 1, 0.00, 90000.00, 'Sem rentenção na fonte', 0, 'ISENTO', 'M00', 'M00 - Regime Simplificado', 0, 'Regime Simplificado', 37, 33, 1, 1, '2024-12-13 15:25:16', '2024-12-13 15:25:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_stocks`
--

CREATE TABLE `item_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `artigo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(5, 'App\\User', 3),
(6, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modo_pagamentos`
--

CREATE TABLE `modo_pagamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `modo_pagamentos`
--

INSERT INTO `modo_pagamentos` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
(1, 'Cheque', NULL, NULL),
(2, 'Numerário', NULL, NULL),
(3, 'Transferência Bancária', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `moedas`
--

CREATE TABLE `moedas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `moedas`
--

INSERT INTO `moedas` (`id`, `designacao`, `created_at`, `updated_at`) VALUES
(1, 'Kwanza', NULL, NULL),
(2, 'Dollar', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motivo_anulacaos`
--

CREATE TABLE `motivo_anulacaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `motivo_anulacaos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Anulação', '', 1, NULL, NULL),
(2, '0002', 'Rectificação', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_creditos`
--

CREATE TABLE `nota_creditos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_debitos`
--

CREATE TABLE `nota_debitos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
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
  `designacao` varchar(191) DEFAULT NULL,
  `sigla` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `designacao`, `sigla`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Angola', 'AO', 1, NULL, NULL),
(2, 'Portugal', 'PT', 1, NULL, NULL);

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
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'pos', 'web', NULL, NULL),
(2, 'painel', 'web', NULL, NULL),
(3, 'artigo', 'web', NULL, NULL),
(4, 'receita_despesa', 'web', NULL, NULL),
(5, 'cliente', 'web', NULL, NULL),
(6, 'documento', 'web', NULL, NULL),
(7, 'relatorio', 'web', NULL, NULL),
(8, 'configuracoes', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `proformas`
--

CREATE TABLE `proformas` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `subtotal` double(8,2) DEFAULT NULL,
  `desconto` double(8,2) DEFAULT NULL,
  `imposto` double(8,2) DEFAULT NULL,
  `retencao` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_factura` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `proformas`
--

INSERT INTO `proformas` (`id`, `numero`, `cliente_id`, `cliente_nome`, `contribuinte`, `endereco`, `data`, `data_vencimento`, `formapagamento_id`, `moeda_id`, `utilizador_id`, `utilizador_nome`, `observacao`, `subtotal`, `desconto`, `imposto`, `retencao`, `total`, `hash`, `status`, `is_factura`, `created_at`, `updated_at`) VALUES
(1, 'PP 2023/1', 1, 'Consumidor Final', 'Consumidor Final', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', '2023-12-29 00:00:00', '2023-12-29 00:00:00', 1, 1, 1, 'Administrador', NULL, 30000.00, 0.00, 0.00, 0.00, 30000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2023-12-29 11:16:59', '2023-12-29 11:16:59'),
(2, 'PP 2023/2', 3, 'DEUS', NULL, NULL, '2024-04-20 00:00:00', '2024-04-20 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 329100.00, 9900.00, 0.00, 0.00, 319200.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-20 15:34:19', '2024-04-20 15:34:19'),
(3, 'PP 2023/3', 4, 'DOS SANTOS', NULL, NULL, '2024-04-20 00:00:00', '2024-04-20 00:00:00', 1, 1, 3, 'Jessica Gouveia', NULL, 60000.00, 0.00, 0.00, 0.00, 60000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-20 15:46:51', '2024-04-20 15:46:51'),
(4, 'PP 2023/4', 8, 'Adão', NULL, 'Viana eliada', '2024-04-28 00:00:00', '2024-04-28 00:00:00', 1, 1, 1, 'Administrador', 'JDDNHDHHND', 360000.00, 0.00, 0.00, 0.00, 360000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-28 12:50:04', '2024-04-28 12:50:04'),
(5, 'PP 2023/4', 8, 'Adão', NULL, 'Viana eliada', '2024-04-28 00:00:00', '2024-04-28 00:00:00', 1, 1, 1, 'Administrador', 'JDDNHDHHND', 360000.00, 0.00, 0.00, 0.00, 360000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-04-28 12:50:04', '2024-04-28 12:50:04'),
(6, 'PP 2023/6', 45, 'Edna Viera', '0000050017428338', 'rua dos bombeiros', '2024-06-01 00:00:00', '2024-06-01 00:00:00', 1, 1, 1, 'Administrador', NULL, 43000.00, 0.00, 0.00, 0.00, 43000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-01 10:53:32', '2024-06-01 10:53:32'),
(7, 'PP 2023/7', 45, 'Edna Viera', '0000050017428338', 'rua dos bombeiros', '2024-06-01 00:00:00', '2024-06-01 00:00:00', 1, 1, 1, 'Administrador', NULL, 43000.00, 0.00, 0.00, 0.00, 43000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-01 11:00:28', '2024-06-01 11:00:28'),
(8, 'PP 2023/8', 52, 'Estefánia Domingos', '004655160ME044', 'Vila de viana', '2024-06-04 00:00:00', '2024-06-04 00:00:00', 3, 1, 1, 'Administrador', NULL, 21000.00, 0.00, 0.00, 0.00, 21000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-04 11:48:11', '2024-06-04 11:48:11'),
(9, 'PP 2023/9', 56, 'Joana Monteiro', '000045935LA038', 'Bairro popular', '2024-06-07 00:00:00', '2024-06-07 00:00:00', 1, 1, 1, 'Administrador', NULL, 80000.00, 0.00, 11200.00, 0.00, 91200.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-07 07:06:30', '2024-06-07 07:06:30'),
(10, 'PP 2023/10', 57, 'Jandira de Matos', '004655160ME044', 'Prenda', '2024-06-07 00:00:00', '2024-06-07 00:00:00', 1, 1, 1, 'Administrador', NULL, 118000.00, 0.00, 0.00, 0.00, 118000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-07 07:35:17', '2024-06-07 07:35:17'),
(11, 'PP 2023/11', 79, 'Manuel Joaquim Bumba', '000264484LA030', 'Zango', '2024-06-19 00:00:00', '2024-06-19 00:00:00', 3, 1, 1, 'Administrador', NULL, 330000.00, 0.00, 0.00, 0.00, 330000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-06-19 12:00:14', '2024-06-19 12:00:14'),
(12, 'PP 2023/12', 97, 'Antonia Marques', 'Consumidor Final', 'Viana Luanda Sul', '2024-07-02 00:00:00', '2024-07-02 00:00:00', 3, 1, 1, 'Administrador', NULL, 104000.00, 0.00, 12600.00, 0.00, 116600.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-02 10:59:40', '2024-07-02 10:59:40'),
(13, 'PP 2023/13', 99, 'Neusa da Silva', '007603129BA043', 'Camama', '2024-07-04 00:00:00', '2024-07-04 00:00:00', 1, 1, 1, 'Administrador', NULL, 63000.00, 0.00, 0.00, 0.00, 63000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-04 07:05:20', '2024-07-04 07:05:20'),
(14, 'PP 2023/14', 114, 'Mariana da Silva santiago', '004655160ME044', 'Morro Bento', '2024-07-10 00:00:00', '2024-07-10 00:00:00', 1, 1, 1, 'Administrador', NULL, 90000.00, 0.00, 12600.00, 0.00, 102600.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-10 10:33:08', '2024-07-10 10:33:08'),
(15, 'PP 2023/15', 121, 'Santa Antonio Francisco', '004655160ME044', 'Futungo', '2024-07-18 00:00:00', '2024-07-18 00:00:00', 2, 1, 1, 'Administrador', NULL, 273000.00, 0.00, 0.00, 0.00, 273000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-18 10:46:34', '2024-07-18 10:46:34'),
(16, 'PP 2023/16', 121, 'Santa Antonio Francisco', '004655160ME044', 'Futungo', '2024-07-18 00:00:00', '2024-07-18 00:00:00', 2, 1, 1, 'Administrador', NULL, 273000.00, 0.00, 0.00, 0.00, 273000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-18 10:58:56', '2024-07-18 10:58:56'),
(17, 'PP 2023/17', 121, 'Santa Antonio Francisco', '5410003519', 'Sagrada Família', '2024-07-18 00:00:00', '2024-07-18 00:00:00', 2, 1, 1, 'Administrador', NULL, 250000.00, 0.00, 0.00, 0.00, 250000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-18 13:31:54', '2024-07-18 13:31:54'),
(18, 'PP 2024/18', 127, 'Benvinda Sandemba', '001082848BE035', 'Nova vida', '2024-07-20 00:00:00', '2024-07-20 00:00:00', 1, 1, 1, 'Administrador', NULL, 140000.00, 0.00, 0.00, 0.00, 140000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-20 07:20:20', '2024-07-20 07:20:20'),
(19, 'PP 2024/19', 128, 'Nerica Neves', '004655160ME044', 'Ponte partida', '2024-07-29 00:00:00', '2024-07-29 00:00:00', 1, 1, 1, 'Administrador', NULL, 20500.00, 0.00, 0.00, 0.00, 20500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-29 08:11:13', '2024-07-29 08:11:13'),
(20, 'PP 2024/20', 129, 'Esperança conteiras', '100511278O30', 'Sapú', '2024-07-29 00:00:00', '2024-07-29 00:00:00', 1, 1, 1, 'Administrador', NULL, 80000.00, 0.00, 0.00, 0.00, 80000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-29 12:30:44', '2024-07-29 12:30:44'),
(21, 'PP 2024/21', 129, 'Esperança conteiras', '100511278O30', 'Sapú', '2024-07-31 00:00:00', '2024-07-31 00:00:00', 1, 1, 1, 'Administrador', NULL, 13000.00, 0.00, 0.00, 0.00, 13000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-31 07:47:02', '2024-07-31 07:47:02'),
(22, 'PP 2024/22', 130, 'Gilberto Damião Correia', '010084263LA045', 'Camama', '2024-07-31 00:00:00', '2024-07-31 00:00:00', 1, 1, 1, 'Administrador', NULL, 65500.00, 0.00, 0.00, 0.00, 65500.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-07-31 07:52:52', '2024-07-31 07:52:52'),
(23, 'PP 2024/23', 131, 'Juciria Rodrigues', '000256901LA039', 'Samba', '2024-08-08 00:00:00', '2024-08-08 00:00:00', 2, 1, 1, 'Administrador', NULL, 64000.00, 0.00, 0.00, 0.00, 64000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-08 14:56:49', '2024-08-08 14:56:49'),
(24, 'PP 2024/24', 157, 'Maria Isabel', '007429839LA048', 'Viana', '2024-08-20 00:00:00', '2024-08-20 00:00:00', 1, 1, 1, 'Administrador', NULL, 16000.00, 0.00, 0.00, 0.00, 16000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-08-20 06:24:56', '2024-08-20 06:24:56'),
(25, 'PP 2024/25', 171, 'Katia Cosme', '000040110LA015', 'Bairro popular', '2024-09-04 00:00:00', '2024-09-04 00:00:00', 2, 1, 1, 'Administrador', NULL, 80000.00, 0.00, 0.00, 0.00, 80000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-04 08:52:41', '2024-09-04 08:52:41'),
(26, 'PP 2024/26', 1, 'Alfreia Manuel', 'Consumidor Final', 'Rua do Colegio Eliada, Edificio Dimba- Bairro Regedroria Sanzala', '2024-09-06 00:00:00', '2024-09-06 00:00:00', 1, 1, 1, 'Administrador', NULL, 80000.00, 0.00, 0.00, 0.00, 80000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-06 09:07:25', '2024-09-06 09:07:25'),
(27, 'PP 2024/27', 177, 'Kiame Kiari da Conceição Lima', '00177445KN031', 'Bairro Azul', '2024-09-10 00:00:00', '2024-09-10 00:00:00', 1, 1, 1, 'Administrador', NULL, 74000.00, 0.00, 0.00, 0.00, 74000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-10 09:12:31', '2024-09-10 09:12:31'),
(28, 'PP 2024/28', 185, 'João Samanganda', '000030660LN025', 'Talatona', '2024-09-20 00:00:00', '2024-09-20 00:00:00', 2, 1, 1, 'Administrador', NULL, 114000.00, 0.00, 14000.00, 0.00, 128000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-09-20 09:55:33', '2024-09-20 09:55:33'),
(29, 'PP 2024/29', 186, 'Emílio Abílio José', '006907459LA045', 'Futungo', '2024-10-01 00:00:00', '2024-10-01 00:00:00', 2, 1, 1, 'Administrador', NULL, 42000.00, 0.00, 0.00, 0.00, 42000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-10-01 09:36:43', '2024-10-01 09:36:43'),
(30, 'PP 2024/30', 187, 'Rosa Manuel Longa Leitão', '000145228LA034', 'Kilamba', '2024-10-04 00:00:00', '2024-10-04 00:00:00', 1, 1, 1, 'Administrador', NULL, 109000.00, 0.00, 13300.00, 0.00, 122300.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-10-04 08:15:42', '2024-10-04 08:15:42'),
(31, 'PP 2024/31', 188, 'João Armando', '004742630KN042', '500 casas', '2024-10-08 00:00:00', '2024-10-08 00:00:00', 1, 1, 1, 'Administrador', NULL, 85000.00, 0.00, 0.00, 0.00, 85000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-10-08 03:46:37', '2024-10-08 03:46:37'),
(32, 'PP 2024/32', 189, 'Domingos João Tomás da Silva', '007584820BA043', 'Viana', '2024-10-16 00:00:00', '2024-10-16 00:00:00', 1, 1, 1, 'Administrador', NULL, 96000.00, 0.00, 0.00, 0.00, 96000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-10-16 08:28:26', '2024-10-16 08:28:26'),
(33, 'PP 2024/33', 190, 'Fernanda Teixeira', '010084263lA045', 'Zango3', '2024-10-29 00:00:00', '2024-10-29 00:00:00', 1, 1, 1, 'Administrador', NULL, 29000.00, 0.00, 0.00, 0.00, 29000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-10-29 08:28:47', '2024-10-29 08:28:47'),
(34, 'PP 2024/34', 191, 'Teresa baca suente', '000601353BA032', 'Fubú', '2024-11-02 00:00:00', '2024-11-02 00:00:00', 2, 1, 1, 'Administrador', NULL, 103000.00, 0.00, 14420.00, 0.00, 117420.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-11-02 08:43:50', '2024-11-02 08:43:50'),
(35, 'PP 2024/35', 192, 'Domingas da Silva Quicuca', '006194888LA045', 'Futungo', '2024-12-02 00:00:00', '2024-12-02 00:00:00', 2, 1, 1, 'Administrador', NULL, 180000.00, 0.00, 0.00, 0.00, 180000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-12-02 16:14:19', '2024-12-02 16:14:19'),
(36, 'PP 2024/36', 193, 'Joyce Catumbela', '000217560LA012', 'Viana', '2024-12-12 00:00:00', '2024-12-12 00:00:00', 1, 1, 1, 'Administrador', NULL, 101000.00, 0.00, 11900.00, 0.00, 112900.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-12-12 10:37:45', '2024-12-12 10:37:45'),
(37, 'PP 2024/37', 194, 'Sebastião Manuel Mateus', '102963058LA0380', 'Futungo', '2024-12-13 00:00:00', '2024-12-13 00:00:00', 1, 1, 1, 'Administrador', NULL, 90000.00, 0.00, 0.00, 0.00, 90000.00, 'MIICXAIBAAKBgQC4dcYScJrnD1xCbBAlSwQN80TYmlMhC1q3fqyL0y2ygQOmtKKYJkDDp/bx0F7ZJ4psVDAmJ1PC2SlHfVPtSZrsVTIf/OlWMsrkLQ+bSf2vJuzUgDagZ/htowIn3io6myiY+Ehq9vDjCd65XV/Hq2sDZoksXMpQU8kQoIF4P2oJqwIDAQABAoGBAJdMauHXIQdjDv6gWoHsTPAQWKj9tC/He2pE6cxqs/HVZqRHR5Ja1gZl7', 1, 1, '2024-12-13 15:25:16', '2024-12-13 15:25:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita_despesas`
--

CREATE TABLE `receita_despesas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(191) DEFAULT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recibos`
--

CREATE TABLE `recibos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `factura_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `retencaos`
--

CREATE TABLE `retencaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designacao` varchar(191) DEFAULT NULL,
  `taxa` varchar(191) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `retencaos`
--

INSERT INTO `retencaos` (`id`, `designacao`, `taxa`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sem rentenção na fonte', '0', 1, NULL, NULL),
(2, 'Rentenção na fonte 6.5%', '6.5', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'web', NULL, NULL),
(2, 'Gestor', 'web', NULL, NULL),
(3, 'Operador', 'web', NULL, NULL),
(4, 'Operador POS', 'web', NULL, NULL),
(5, 'vendas', 'web', '2024-04-20 15:11:44', '2024-04-20 15:11:44'),
(6, 'Super Administrador', 'web', '2024-04-28 13:39:06', '2024-04-28 13:39:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 5),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(5, 5),
(6, 1),
(6, 2),
(6, 3),
(6, 5),
(7, 1),
(7, 2),
(7, 5),
(8, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `safts`
--

CREATE TABLE `safts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saft_audits`
--

CREATE TABLE `saft_audits` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `saft_audits` (`id`, `audit_file_version`, `company_id`, `tax_registration_number`, `tax_accounting_basis`, `created_at`, `updated_at`) VALUES
(1, '1.01_01', '000000000', '5000213438', 'F', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `series` (`id`, `codigo`, `designacao`, `tipo`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'PP 2024', 'proforma', 'Alice alone.', 1, NULL, NULL),
(2, '0002', 'FT 2024', 'factura', 'Footman went on.', 1, NULL, NULL),
(3, '0003', 'FR 2024', 'factura-recibo', 'She had already.', 1, NULL, NULL),
(4, '0004', 'RC 2024', 'recibo', 'CAN all that.', 1, NULL, NULL),
(5, '0005', 'NC 2024', 'nota-credito', 'On various.', 1, NULL, NULL),
(6, '0006', 'ND 2024', 'nota-debito', 'Rome--no, THAT\'S.', 1, NULL, NULL),
(7, '0007', 'GT 2024', 'guia-transporte', 'His voice.', 1, NULL, NULL),
(8, '0008', 'GR 2024', 'guia-remessa', 'Dormouse turned.', 1, NULL, NULL),
(9, '0009', 'RD 2024', 'receita-despesa', 'You gave.', 1, NULL, NULL),
(10, '00010', 'SC 2024', 'stock', 'SIT down,\'.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tax_tables`
--

CREATE TABLE `tax_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `tax_tables` (`id`, `tax_type`, `tax_code`, `description`, `tax_percentage`, `created_at`, `updated_at`) VALUES
(1, 'IVA', 'ISE', 'IVA - Isento', '0.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `tipos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, 'P', 'Produto', 'Produtos', 1, NULL, NULL),
(2, 'S', 'Serviços', 'Serviços', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_motivo_anulacaos`
--

CREATE TABLE `tipo_motivo_anulacaos` (
  `id` bigint(20) UNSIGNED NOT NULL,
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

INSERT INTO `tipo_motivo_anulacaos` (`id`, `codigo`, `designacao`, `descricao`, `status`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Ausência de desconto na fatura', '', 1, NULL, NULL),
(2, '0002', 'Devolução dos artigos', '', 1, NULL, NULL),
(3, '0003', 'Erro na entidade', '', 1, NULL, NULL),
(4, '0004', 'Erros nas quantidades / preços', '', 1, NULL, NULL),
(5, '0005', 'Erro no (s) preço (s)', '', 1, NULL, NULL),
(6, '0006', 'Produto / serviço rejeitado', '', 1, NULL, NULL),
(7, '0007', 'Rutura de stock', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `departamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
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

INSERT INTO `users` (`id`, `nome`, `email`, `departamento_id`, `password`, `foto`, `status`, `reset_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.com', 1, '$2y$10$rnVsIikYjhyVTSiy.E3ybe2IHoqff/veqGxD4TpwR9U4IdAKcUo6u', 'default.jpg', 1, NULL, NULL, NULL, NULL),
(2, 'Manuel Antônio de Brito Soares', 'soaresmanuel1995@gmail.com', 1, '$2y$10$Nix/ars0L.ydsmyBwSybNemLwcmD9el4j0DtzGXD.lrqvJZrIfBlK', 'default.jpg', 1, 1, NULL, '2023-12-29 11:14:48', '2024-05-12 13:12:49'),
(3, 'Jessica Gouveia', 'jessicagouveia2024@icloud.com', 3, '$2y$10$aoMV9B0LMvIjizFn6Y9BWexRn/xcc8/.SZWtg6I0y1x63EH3g/HkC', 'default.jpg', 1, 0, NULL, '2024-04-20 15:14:36', '2024-04-20 15:15:15');

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Índices para tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de tabela `condicoes_pagamentos`
--
ALTER TABLE `condicoes_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de tabela `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `factura_recibos`
--
ALTER TABLE `factura_recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedors`
--
ALTER TABLE `fornecedors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `item_factura_recibos`
--
ALTER TABLE `item_factura_recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_nota_debitos`
--
ALTER TABLE `item_nota_debitos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `item_proformas`
--
ALTER TABLE `item_proformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de tabela `item_stocks`
--
ALTER TABLE `item_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `modo_pagamentos`
--
ALTER TABLE `modo_pagamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `moedas`
--
ALTER TABLE `moedas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `motivo_anulacaos`
--
ALTER TABLE `motivo_anulacaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `nota_creditos`
--
ALTER TABLE `nota_creditos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `nota_debitos`
--
ALTER TABLE `nota_debitos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `proformas`
--
ALTER TABLE `proformas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `receita_despesas`
--
ALTER TABLE `receita_despesas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `recibos`
--
ALTER TABLE `recibos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `retencaos`
--
ALTER TABLE `retencaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `safts`
--
ALTER TABLE `safts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `saft_audits`
--
ALTER TABLE `saft_audits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tax_tables`
--
ALTER TABLE `tax_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipo_motivo_anulacaos`
--
ALTER TABLE `tipo_motivo_anulacaos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `facturas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `factura_recibos`
--
ALTER TABLE `factura_recibos`
  ADD CONSTRAINT `factura_recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `guia_remessas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_remessas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `guia_transportes`
--
ALTER TABLE `guia_transportes`
  ADD CONSTRAINT `guia_transportes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `guia_transportes_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `items_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `items_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_factura_recibos`
--
ALTER TABLE `item_factura_recibos`
  ADD CONSTRAINT `item_factura_recibos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_factura_recibos_factura_recibo_id_foreign` FOREIGN KEY (`factura_recibo_id`) REFERENCES `factura_recibos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_factura_recibos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_factura_recibos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_guia_remessas`
--
ALTER TABLE `item_guia_remessas`
  ADD CONSTRAINT `item_guia_remessas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_guia_remessas_guia_remessa_id_foreign` FOREIGN KEY (`guia_remessa_id`) REFERENCES `guia_remessas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_guia_remessas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_guia_remessas_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_guia_transportes`
--
ALTER TABLE `item_guia_transportes`
  ADD CONSTRAINT `item_guia_transportes_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_guia_transportes_guia_transporte_id_foreign` FOREIGN KEY (`guia_transporte_id`) REFERENCES `guia_transportes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_guia_transportes_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_guia_transportes_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_nota_creditos`
--
ALTER TABLE `item_nota_creditos`
  ADD CONSTRAINT `item_nota_creditos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_nota_creditos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_nota_creditos_nota_credito_id_foreign` FOREIGN KEY (`nota_credito_id`) REFERENCES `nota_creditos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_nota_creditos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_nota_debitos`
--
ALTER TABLE `item_nota_debitos`
  ADD CONSTRAINT `item_nota_debitos_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_nota_debitos_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_nota_debitos_nota_debito_id_foreign` FOREIGN KEY (`nota_debito_id`) REFERENCES `nota_debitos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_nota_debitos_retencao_id_foreign` FOREIGN KEY (`retencao_id`) REFERENCES `retencaos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `item_proformas`
--
ALTER TABLE `item_proformas`
  ADD CONSTRAINT `item_proformas_artigo_id_foreign` FOREIGN KEY (`artigo_id`) REFERENCES `artigos` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `item_proformas_imposto_id_foreign` FOREIGN KEY (`imposto_id`) REFERENCES `impostos` (`id`) ON DELETE NO ACTION,
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
  ADD CONSTRAINT `nota_creditos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_motivo_anulacao_id_foreign` FOREIGN KEY (`motivo_anulacao_id`) REFERENCES `motivo_anulacaos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_tipo_motivo_anulacao_id_foreign` FOREIGN KEY (`tipo_motivo_anulacao_id`) REFERENCES `tipo_motivo_anulacaos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_creditos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `nota_debitos`
--
ALTER TABLE `nota_debitos`
  ADD CONSTRAINT `nota_debitos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_debitos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `proformas`
--
ALTER TABLE `proformas`
  ADD CONSTRAINT `proformas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `proformas_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_formapagamento_id_foreign` FOREIGN KEY (`formapagamento_id`) REFERENCES `formas_pagamentos` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_moeda_id_foreign` FOREIGN KEY (`moeda_id`) REFERENCES `moedas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `recibos_utilizador_id_foreign` FOREIGN KEY (`utilizador_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

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
  ADD CONSTRAINT `stocks_fornecedor_id_foreign` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedors` (`id`) ON DELETE NO ACTION;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
