-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26/09/2023 às 03:42
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
-- Banco de dados: `copadomundo`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Idade` int(11) DEFAULT NULL,
  `Posição` varchar(30) DEFAULT NULL,
  `fk_equipe` int(11) DEFAULT NULL,
  `Gols_Marcados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`ID`, `Nome`, `Idade`, `Posição`, `fk_equipe`, `Gols_Marcados`) VALUES
(1, 'Neymar', 29, 'Atacante', 1, 50),
(2, 'Casemiro', 29, 'Meio-Campista', 1, 7),
(3, 'Müller', 32, 'Atacante', 2, 2),
(4, 'Kroos', 31, 'Meio-Campista', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipe`
--

CREATE TABLE `equipe` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Técnico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `equipe`
--

INSERT INTO `equipe` (`ID`, `Nome`, `Técnico`) VALUES
(1, 'Brasil', 'osvaldo'),
(2, 'Alemanha', 'mohamed');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `Estadio` varchar(100) DEFAULT NULL,
  `Arbitro` varchar(100) DEFAULT NULL,
  `fk_equipe1` int(11) DEFAULT NULL,
  `fk_equipe2` int(11) DEFAULT NULL,
  `equipe1_gols` int(11) NOT NULL,
  `equipe2_gols` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID`, `Data`, `Estadio`, `Arbitro`, `fk_equipe1`, `fk_equipe2`, `equipe1_gols`, `equipe2_gols`) VALUES
(1, '2022-06-12', 'Estadio A', 'bilu', 2, 1, 57, 3),
(2, '2022-06-15', 'Estadio B', 'nino', 1, 2, 1, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `resultado`
--

CREATE TABLE `resultado` (
  `ID` int(11) NOT NULL,
  `Equipe1_gols` int(11) DEFAULT NULL,
  `Equipe2_gols` int(11) DEFAULT NULL,
  `fk_jogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_equipe` (`fk_equipe`);

--
-- Índices de tabela `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_equipe1` (`fk_equipe1`),
  ADD KEY `fk_equipe2` (`fk_equipe2`);

--
-- Índices de tabela `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_jogo` (`fk_jogo`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `equipe`
--
ALTER TABLE `equipe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `resultado`
--
ALTER TABLE `resultado`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `atleta_ibfk_1` FOREIGN KEY (`fk_equipe`) REFERENCES `equipe` (`ID`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`fk_equipe1`) REFERENCES `equipe` (`ID`),
  ADD CONSTRAINT `jogo_ibfk_2` FOREIGN KEY (`fk_equipe2`) REFERENCES `equipe` (`ID`);

--
-- Restrições para tabelas `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`fk_jogo`) REFERENCES `jogo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
