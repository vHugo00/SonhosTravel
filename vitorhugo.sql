-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/06/2024 às 18:43
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vitorhugo`
--
CREATE DATABASE IF NOT EXISTS `vitorhugo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vitorhugo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `casal_info`
--

DROP TABLE IF EXISTS `casal_info`;
CREATE TABLE IF NOT EXISTS `casal_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `esposo_nome` varchar(255) NOT NULL,
  `url` varchar(9) NOT NULL,
  `esposo_cpf` varchar(14) NOT NULL,
  `esposo_rg` varchar(12) NOT NULL,
  `esposo_nascimento` date NOT NULL,
  `contato_esposo` varchar(20) NOT NULL,
  `esposa_nome` varchar(255) NOT NULL,
  `esposa_cpf` varchar(14) NOT NULL,
  `esposa_rg` varchar(12) NOT NULL,
  `esposa_nascimento` date NOT NULL,
  `contato_esposa` varchar(20) NOT NULL,
  `casal_endereco` varchar(255) NOT NULL,
  `cabine` varchar(50) DEFAULT NULL,
  `casal_cep` varchar(9) NOT NULL,
  `casal_cidade` varchar(100) NOT NULL,
  `casal_estado` varchar(50) NOT NULL,
  `casal_email` varchar(100) NOT NULL,
  `casal_emergency1` varchar(20) NOT NULL,
  `casal_emergency2` varchar(20) DEFAULT NULL,
  `data_compra` date NOT NULL,
  `casal_casamento` date DEFAULT NULL,
  `casal_comentarios` text DEFAULT NULL,
  `foto` varchar(199) DEFAULT NULL,
  `trashed` enum('no','yes') NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `casal_info`
--

INSERT INTO `casal_info` (`ID`, `esposo_nome`, `url`, `esposo_cpf`, `esposo_rg`, `esposo_nascimento`, `contato_esposo`, `esposa_nome`, `esposa_cpf`, `esposa_rg`, `esposa_nascimento`, `contato_esposa`, `casal_endereco`, `cabine`, `casal_cep`, `casal_cidade`, `casal_estado`, `casal_email`, `casal_emergency1`, `casal_emergency2`, `data_compra`, `casal_casamento`, `casal_comentarios`, `foto`, `trashed`, `created_at`, `updated_at`) VALUES
(1, 'Matheus Melo Fernandes', 'xMCVkq', '647.377.983-39', '647.377.983-', '2024-06-20', '(64) 7 3779-8339', 'Matheus Melo Fernandes', '647.377.983-39', '647.377.983-', '2024-06-20', '(64) 7 3779-8339', 'QNA 40', '10', '72110-400', 'Brasília', 'DF', 'leo@mail.com', '(64) 7 3779-8339', '(64) 7 3779-8339', '2024-06-20', '2024-06-20', '', NULL, 'no', '2024-06-25 18:13:05', '2024-06-26 10:48:39'),
(6, 'Júlio Costa Rodrigues', 'wRlVgi', '657.273.851-56', '8903825467', '1987-05-26', '(87) 6 1463-483', 'Gabrielle Lima Araujo', '167.184.706-78', '78810292', '1982-07-31', '(11) 9 7958-533', 'Avenida Boa Viagem', '10', '51021-000', 'Recife', 'PE', 'casalporraloka@gmail.com', '(87) 6 1463-483', '', '2025-05-24', '2024-05-10', '', '07629f6338abc83070747275ac9d936ed23b2434.jpg', 'no', '2024-06-25 20:00:58', '2024-06-26 17:01:23'),
(7, 'Diego Martins Cardoso', 'oaAOwk', '987.466.020-11', '3309370560', '1994-06-12', '(21) 3 4304-454', 'Giovana Dias Sousa', '413.966.837-71', '5353037183', '1997-01-02', '(84) 4 2172-906', 'Rua Engenheiro Bandeirantes', '55', '23821-120', 'Itaguaí', 'RJ', 'diegomartins@jourrapide.com', '(21) 3 4304-454', '', '2024-06-25', '2010-10-10', 'Somos um casal apaixonado e tesudo que está sempre em busca de novas experiências.', 'a06ec27e34fad8a98535b3396a6b0dc90828931e.jpeg', 'no', '2024-06-25 22:52:43', '2024-06-26 17:08:44'),
(8, 'Marcelo Rois 2', 'xFgFRX', '654.619.846-31', '65654665', '1989-01-15', '(61) 9 8524-8485', 'Rafaela Rois', '087.964.585-24', '037218', '1995-09-25', '(61) 9 8524-6665', 'QNA 40', 'Eleitoral', '72110-400', 'Brasília', 'DF', 'casaldazona@gmail.com', '(61) 9 8554-5151', '(61) 9 4002-8922', '2024-06-26', '2024-08-08', 'Buscando alguém que goste de músicas dos anos 80 e aprecie um bom vinho, como a gente. =)', '1de576a4b155ccc8d78708145666c1dfbd20aa77.jpg', 'no', '2024-06-26 13:25:26', '2024-06-26 17:46:38');

-- --------------------------------------------------------

--
-- Estrutura para tabela `navegando`
--

DROP TABLE IF EXISTS `navegando`;
CREATE TABLE IF NOT EXISTS `navegando` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `data_nasc` date NOT NULL,
  `local_nasc` varchar(255) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emergency1` varchar(20) NOT NULL,
  `emergency2` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `navegando`
--

INSERT INTO `navegando` (`ID`, `url`, `nome`, `cpf`, `rg`, `data_nasc`, `local_nasc`, `cep`, `endereco`, `cidade`, `estado`, `email`, `emergency1`, `emergency2`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'MkREOo', 'Luan Carvalho Martins 2', '990.384.594-42', '2222222', '2222-02-22', 'CASA2', '72110-402', 'QNA 402', '2Brasília', '2DF', '2luan@mail.com', '(22) 2 2222-2222', '(22) 2 2222-2222', 'ba306ae3c6f9552b348cce7b04599a5941afb6a9.jpg', '2024-06-26 01:52:14', '2024-06-27 19:26:44'),
(3, 'RNQwms', 'Tiago Martins Dias', '990.384.594-40', '65555', '2024-06-20', 'CASA', '72110-400', 'QNA 40', 'Brasília', 'DF', 'luan@mail.com', '(99) 0 3845-9440', '(99) 0 3845-9440', NULL, '2024-06-26 02:10:43', '2024-06-26 02:10:43'),
(4, 'BpOZMN', 'Vitor Silva Cavalcanti', '990.384.594-40', '65555', '2024-06-20', 'CASA', '72110-400', 'QNA 40', 'Brasília', 'DF', 'luan@mail.com', '(99) 0 3845-9440', '(99) 0 3845-9440', NULL, '2024-06-26 02:11:11', '2024-06-26 02:11:11'),
(5, 'AObelz', 'Marisa Carvalho Fernandes', '971.560.051-46', '64548165', '2024-06-01', 'Hospital', '23550-230', 'Rua Palmelo', 'Rio de Janeiro', 'RJ', 'larissa.hta@hotmail.com', '(19) 9 9919-4733', '(19) 9 8214-1689', 'f61c2ce0d86801031361db1f735d393f27183b5e.jpg', '2024-06-26 09:19:48', '2024-06-26 11:47:31'),
(6, 'ZGRlCw', 'Francisco Xavier', '056.486.449-84', '296456', '1988-06-12', 'São Paulo', '01153-000', 'Rua Vitorino Carmilo', 'São Paulo', 'SP', 'xico.xavier@outlook.com', '(11) 9 8445-4565', '', 'd4a0b30069c62e11855e2e37691ddceb36a45652.jpeg', '2024-06-26 17:11:39', '2024-06-26 17:12:51'),
(7, 'VKXSVN', 'Francisco Xavier', '056.486.449-84', '296456', '1988-06-12', 'São Paulo', '01153-000', 'Rua Vitorino Carmilo', 'São Paulo', 'SP', 'xico.xavier@outlook.com', '(11) 9 8445-4565', '', NULL, '2024-06-26 17:15:00', '2024-06-26 17:15:00'),
(8, 'QywZAa', 'Nome da Pessoal', '555.555.555-55', '55', '5555-05-05', '555555555555', '72110-400', 'QNA 40', 'Brasília', 'DF', 'mail@contato.com', '(64) 6 4664-6464', '(99', NULL, '2024-06-26 17:15:42', '2024-06-26 17:15:42'),
(9, 'CmMNtm', 'Marcelo Nascimento', '056.964.545-45', '6464656416', '1956-06-20', 'Casa da Joana', '72110-400', 'QNA 40', 'Brasília', 'DF', 'leo@mail.com', '(64) 6 4654-5646', '(65) 4 5646-465', NULL, '2024-06-26 20:21:19', '2024-06-26 20:21:19'),
(11, 'ZxrRhx', 'Luan Carvalho Martins', '990.384.594-40', '65555', '2024-06-20', 'CASA', '72110-400', 'QNA 40', 'Brasília', 'DF', 'luan@mail.com', '(99) 0 3845-9440', '(99) 0 3845-9440', NULL, '2024-06-27 19:21:44', '2024-06-27 19:21:44'),
(12, 'HvwSMD', 'Luan Carvalho Martins 2', '990.384.594-40', '65555', '2024-06-20', 'CASA', '72110-400', 'QNA 40', 'Brasília', 'DF', 'luan@mail.com', '(99) 0 3845-9440', '(99) 0 3845-9440', NULL, '2024-06-27 19:21:54', '2024-06-27 19:21:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
