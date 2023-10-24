-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/10/2023 às 23:57
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `campeonato`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arbitro`
--

INSERT INTO `arbitro` (`ID`, `nome`) VALUES
(1, 'Árbitro A'),
(2, 'Árbitro B'),
(3, 'Árbitro C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `id_posicao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`ID`, `nome`, `data_nascimento`, `id_equipe`, `id_posicao`) VALUES
(1, 'Jogador Sport 1', '1990-01-01', 1, 1),
(2, 'Jogador Sport 2', '1992-05-15', 1, 2),
(3, 'Jogador Nautico 1', '1988-12-03', 2, 3),
(4, 'Jogador Nautico 2', '1995-07-20', 2, 4),
(5, 'Jogador Santa Cruz 1', '1993-03-10', 3, 1),
(6, 'Jogador Santa Cruz 2', '1991-11-27', 3, 2),
(16, 'Jogador Sport 4', '1993-02-28', 1, 4),
(17, 'Jogador Sport 5', '1994-06-10', 1, 1),
(18, 'Jogador Sport 6', '1992-09-15', 1, 2),
(19, 'Jogador Nautico 4', '1993-01-25', 2, 3),
(20, 'Jogador Nautico 5', '1995-03-12', 2, 4),
(21, 'Jogador Nautico 6', '1991-11-19', 2, 1),
(22, 'Jogador Santa Cruz 4', '1994-04-20', 3, 2),
(23, 'Jogador Santa Cruz 5', '1993-07-05', 3, 3),
(24, 'Jogador Santa Cruz 6', '1990-12-22', 3, 4),
(25, 'Jogador Sport 7', '1993-08-14', 1, 3),
(26, 'Jogador Sport 8', '1994-10-30', 1, 4),
(27, 'Jogador Sport 9', '1991-12-25', 1, 1),
(28, 'Jogador Nautico 7', '1993-06-18', 2, 2),
(29, 'Jogador Nautico 8', '1994-09-05', 2, 3),
(30, 'Jogador Nautico 9', '1992-01-11', 2, 4),
(31, 'Jogador Santa Cruz 7', '1994-02-17', 3, 1),
(32, 'Jogador Santa Cruz 8', '1993-05-08', 3, 2),
(33, 'Jogador Santa Cruz 9', '1990-11-03', 3, 3),
(34, 'Jogador Sport 10', '1992-07-23', 1, 2),
(35, 'Jogador Sport 11', '1993-09-12', 1, 3),
(36, 'Jogador Sport 12', '1991-02-07', 1, 4),
(37, 'Jogador Nautico 10', '1992-08-19', 2, 1),
(38, 'Jogador Nautico 11', '1993-10-06', 2, 2),
(39, 'Jogador Nautico 12', '1991-03-02', 2, 3),
(40, 'Jogador Santa Cruz 10', '1992-09-25', 3, 4),
(41, 'Jogador Santa Cruz 11', '1993-11-14', 3, 1),
(42, 'Jogador Santa Cruz 12', '1991-04-19', 3, 2),
(43, 'Jogador Sport 13', '1992-10-20', 1, 1),
(44, 'Jogador Sport 14', '1993-12-09', 1, 2),
(45, 'Jogador Sport 15', '1991-05-14', 1, 3),
(46, 'Jogador Nautico 13', '1992-11-15', 2, 4),
(47, 'Jogador Nautico 14', '1994-01-04', 2, 1),
(48, 'Jogador Nautico 15', '1991-06-09', 2, 2),
(49, 'Jogador Santa Cruz 13', '1992-12-10', 3, 3),
(50, 'Jogador Santa Cruz 14', '1994-02-28', 3, 4),
(51, 'Jogador Santa Cruz 15', '1991-07-24', 3, 1),
(52, 'Jogador Sport 16', '1993-01-30', 1, 2),
(53, 'Jogador Sport 17', '1994-03-20', 1, 3),
(54, 'Jogador Sport 18', '1991-08-15', 1, 4),
(55, 'Jogador Nautico 16', '1993-02-25', 2, 1),
(56, 'Jogador Nautico 17', '1994-04-15', 2, 2),
(57, 'Jogador Nautico 18', '1991-09-10', 2, 3),
(58, 'Jogador Santa Cruz 16', '1993-03-22', 3, 4),
(59, 'Jogador Santa Cruz 17', '1994-05-12', 3, 1),
(60, 'Jogador Santa Cruz 18', '1991-10-07', 3, 2),
(61, 'Jogador Sport 3', '1988-12-03', 1, 3),
(62, 'Jogador Nautico 3', '1988-12-03', 2, 3),
(63, 'Jogador Santa Cruz 3', '1988-12-03', 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `tecnico` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`ID`, `nome`, `tecnico`) VALUES
(1, 'Sport Recife', 'Técnico A'),
(2, 'Náutico', 'Técnico B'),
(3, 'Santa Cruz', 'Técnico C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`ID`, `nome`) VALUES
(1, 'Ilha do Retiro'),
(2, 'Arena Pernambuco'),
(3, 'Estádio do Arruda');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gol`
--

CREATE TABLE `gol` (
  `ID` int(11) NOT NULL,
  `id_atleta` int(11) DEFAULT NULL,
  `id_jogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `gol`
--

INSERT INTO `gol` (`ID`, `id_atleta`, `id_jogo`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_equipe1` int(11) DEFAULT NULL,
  `id_equipe2` int(11) DEFAULT NULL,
  `id_estadio` int(11) DEFAULT NULL,
  `id_arbitro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID`, `data`, `id_equipe1`, `id_equipe2`, `id_estadio`, `id_arbitro`) VALUES
(1, '2023-10-20', 1, 2, 1, 1),
(2, '2023-10-22', 2, 3, 2, 2),
(3, '2023-10-24', 1, 3, 3, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`ID`, `nome`) VALUES
(1, 'Atacante'),
(2, 'Meio-campo'),
(3, 'Zagueiro'),
(4, 'Goleiro');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_equipe` (`id_equipe`),
  ADD KEY `id_posicao` (`id_posicao`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `gol`
--
ALTER TABLE `gol`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_atleta` (`id_atleta`),
  ADD KEY `id_jogo` (`id_jogo`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_equipe1` (`id_equipe1`),
  ADD KEY `id_equipe2` (`id_equipe2`),
  ADD KEY `id_estadio` (`id_estadio`),
  ADD KEY `id_arbitro` (`id_arbitro`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `gol`
--
ALTER TABLE `gol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `atleta_ibfk_2` FOREIGN KEY (`id_posicao`) REFERENCES `posicao` (`ID`);

--
-- Restrições para tabelas `gol`
--
ALTER TABLE `gol`
  ADD CONSTRAINT `gol_ibfk_1` FOREIGN KEY (`id_atleta`) REFERENCES `atleta` (`ID`),
  ADD CONSTRAINT `gol_ibfk_2` FOREIGN KEY (`id_jogo`) REFERENCES `jogo` (`ID`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`id_equipe1`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_2` FOREIGN KEY (`id_equipe2`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_3` FOREIGN KEY (`id_estadio`) REFERENCES `estadio` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_4` FOREIGN KEY (`id_arbitro`) REFERENCES `arbitro` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
