-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/08/2024 às 07:02
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
-- Banco de dados: `barbershopdb`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clienttb`
--

CREATE TABLE `clienttb` (
  `clientId` int(11) NOT NULL,
  `clientName` varchar(60) NOT NULL,
  `clientEmail` varchar(60) NOT NULL,
  `clientPhone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `messagetb`
--

CREATE TABLE `messagetb` (
  `messageId` int(11) NOT NULL,
  `clientEmail` varchar(60) NOT NULL,
  `clientMessage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scheduletb`
--

CREATE TABLE `scheduletb` (
  `scheduleId` int(11) NOT NULL,
  `scheduleDate` date NOT NULL,
  `scheduleHour` time NOT NULL,
  `clientId` int(11) NOT NULL,
  `serviceId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `scheduletb`
--

INSERT INTO `scheduletb` (`scheduleId`, `scheduleDate`, `scheduleHour`, `clientId`, `serviceId`) VALUES
(1, '2022-07-14', '15:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicetb`
--

CREATE TABLE `servicetb` (
  `serviceId` int(11) NOT NULL,
  `serviceDesc` varchar(80) NOT NULL,
  `serviceName` varchar(40) NOT NULL,
  `serviceImg` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `servicetb`
--

INSERT INTO `servicetb` (`serviceId`, `serviceDesc`, `serviceName`, `serviceImg`) VALUES
(1, '', 'Corte de cabelo', ''),
(2, '', 'Barba', ''),
(3, '', 'Cabelo e Barba', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usertb`
--

CREATE TABLE `usertb` (
  `userId` int(11) NOT NULL,
  `userLogin` varchar(40) NOT NULL,
  `userPassword` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usertb`
--

INSERT INTO `usertb` (`userId`, `userLogin`, `userPassword`) VALUES
(1, 'admin', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `clienttb`
--
ALTER TABLE `clienttb`
  ADD PRIMARY KEY (`clientId`);

--
-- Índices de tabela `messagetb`
--
ALTER TABLE `messagetb`
  ADD PRIMARY KEY (`messageId`);

--
-- Índices de tabela `scheduletb`
--
ALTER TABLE `scheduletb`
  ADD PRIMARY KEY (`scheduleId`);

--
-- Índices de tabela `servicetb`
--
ALTER TABLE `servicetb`
  ADD PRIMARY KEY (`serviceId`);

--
-- Índices de tabela `usertb`
--
ALTER TABLE `usertb`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clienttb`
--
ALTER TABLE `clienttb`
  MODIFY `clientId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `messagetb`
--
ALTER TABLE `messagetb`
  MODIFY `messageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `scheduletb`
--
ALTER TABLE `scheduletb`
  MODIFY `scheduleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicetb`
--
ALTER TABLE `servicetb`
  MODIFY `serviceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `usertb`
--
ALTER TABLE `usertb`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
