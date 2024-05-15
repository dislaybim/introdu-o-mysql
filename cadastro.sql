-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 15/05/2024 às 05:28
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) DEFAULT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totaulas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT 2016
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totaulas`, `ano`) VALUES
(13, 'Arroz com Feijão', 'cdceccccccccccccceeeeeeeee', 12, 50, '2016'),
(5, 'c', 'microcontrolador msp430', 55, 150, '2019'),
(1, 'direito', 'curso de justiça', 30, 30, '2013'),
(9, 'facebook', 'axwxwxxwxwxw', 12, 12, '2016'),
(3, 'javacript', 'full stack', 80, 40, '2023'),
(8, 'linkedin', 'sxsxsxsxsxsxsx', 5, 10, '2016'),
(10, 'naruto', 'xsxsx', 500, 700, '2016'),
(11, 'One Piece', 'dededededededed', 800, 1100, '2016'),
(6, 'premier', 'djedekjdekdjedkjdkdjekdej', 30, 100, '2016'),
(4, 'python', 'framework django', 50, 80, '2024'),
(2, 'SQL', 'analise de dados', 30, 30, '2022'),
(12, 'super fofos', 'ssssd', 33, 80, '2016'),
(8, 'youtube', 'sxlçsxlsxmslxmsxls', 10, 34, '2016');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `profissao` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `profissao`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`) VALUES
(1, 'Felipe', NULL, '2003-01-01', 'M', 72.00, 1.75, 'Brasileiro'),
(2, 'Dislaybson', NULL, '2001-03-12', 'M', 82.00, 1.86, 'Brasil'),
(3, 'Gustavo', NULL, '2002-03-17', 'M', 90.40, 1.77, 'Brasil'),
(6, 'Juliana', NULL, '1994-05-12', 'F', 53.20, 1.63, 'França'),
(7, 'Joana', NULL, '1999-03-21', 'F', 60.50, 1.60, 'Argentina'),
(8, 'Godolfredo', NULL, '1954-01-10', 'M', 70.33, 1.68, 'Brasil'),
(9, 'Cláudio', NULL, '2000-10-15', 'M', 88.60, 2.03, 'México');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
