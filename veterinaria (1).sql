-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/08/2026 às 17:19
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
-- Banco de dados: `veterinária`
--
CREATE DATABASE IF NOT EXISTS `veterinária` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `veterinária`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `animais`
--

CREATE TABLE `animais` (
  `idani` int(11) NOT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `nomeanimal` varchar(255) NOT NULL,
  `especie` varchar(255) NOT NULL,
  `raca` varchar(100) NOT NULL,
  `datanascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `animais`
--

INSERT INTO `animais` (`idani`, `idcliente`, `nomeanimal`, `especie`, `raca`, `datanascimento`) VALUES
(1, 3, 'Mimosa', 'Cachorro', 'Poddle', '2019-07-30'),
(2, 3, 'Keth', 'Cachorro', 'Shih Tzu', '2019-05-28'),
(3, 2, 'Garoto', 'Cachorro', 'SRD', '2018-03-21'),
(4, 2, 'Pablo', 'Gato', 'Siamês', '2023-09-17'),
(5, 1, 'Rex', 'Cavalo', 'Puro Sangue', '2010-02-21'),
(6, 1, 'bobby', 'Cachorro', 'Border Collie', '2022-09-03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimentos`
--

CREATE TABLE `atendimentos` (
  `idate` int(11) NOT NULL,
  `idanimal` int(11) DEFAULT NULL,
  `idveterinario` int(11) DEFAULT NULL,
  `dataatendimento` date NOT NULL,
  `horaatendimento` time NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimentos`
--

INSERT INTO `atendimentos` (`idate`, `idanimal`, `idveterinario`, `dataatendimento`, `horaatendimento`, `descricao`, `valor`) VALUES
(1, 1, 2, '2026-08-04', '13:14:30', 'Atendimento de cardiologia veterinária realizado para avaliação clínica do paciente, com foco na investigação de possíveis alterações cardiovasculares. Foram analisados histórico clínico, sinais apresentados, parâmetros vitais e condição geral do animal. ', 200.00),
(2, 1, 2, '2026-08-07', '13:00:00', 'Retorno cardiológico veterinário realizado para reavaliação do paciente após atendimento inicial. Foram analisadas a evolução clínica, resposta às orientações e possíveis alterações nos sinais cardiovasculares apresentados anteriormente. Realizada nova av', 200.00),
(3, 5, 2, '2026-08-03', '07:00:00', 'Paciente equino encaminhado para avaliação cardiológica veterinária, com objetivo de investigar e acompanhar a condição cardiovascular. Durante o atendimento, foram avaliados histórico clínico, estado geral, parâmetros vitais e aspectos relacionados à fun', 500.00),
(4, 5, 1, '2026-08-10', '07:00:00', 'Paciente equino avaliado pela equipe de cirurgia veterinária para análise de condição clínica e indicação de possível abordagem cirúrgica quando necessária. Foi realizada avaliação pré-operatória, considerando histórico do paciente, exame físico, condiçõe', 650.00),
(5, 4, 2, '2026-08-06', '10:00:00', 'Paciente felino encaminhado para avaliação cardiológica veterinária, com objetivo de investigar e acompanhar possíveis alterações no sistema cardiovascular. Durante a consulta, foram avaliados o histórico clínico, sinais apresentados, estado geral do anim', 200.00),
(6, 6, 1, '2026-08-12', '20:00:00', 'Paciente canino encaminhado para avaliação cirúrgica veterinária, com objetivo de investigar a necessidade de procedimento e definir a melhor conduta terapêutica. Durante o atendimento, foram avaliados histórico clínico, exame físico, condição geral do an', 300.00),
(7, 2, 1, '2026-08-10', '10:00:00', 'Paciente canino submetido à avaliação pelo setor de cirurgia veterinária para acompanhamento e definição de conduta. Foram analisados o histórico do animal, queixa apresentada, exame clínico e condições gerais de saúde, com avaliação dos riscos e necessid', 300.00),
(8, 3, 2, '2026-08-12', '07:35:00', 'Paciente canino encaminhado para avaliação cardiológica veterinária, com objetivo de realizar investigação e acompanhamento da saúde cardiovascular. Durante a consulta, foram avaliados histórico clínico, sinais relatados pelo responsável, estado geral do ', 200.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nomecli` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` varchar(100) NOT NULL,
  `endereco` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nomecli`, `telefone`, `email`, `cpf`, `endereco`) VALUES
(1, 'Artur Miguel', '11952230443', 'atur@gmail.com', '291.635.838-28', 'rua Belterra 291, Santo Amaro, São Paulo - Sp'),
(2, 'Laura reis', '119522304554', 'reis@gmail.com', '291.635.836-78', 'Nova Rua, 50'),
(3, 'Apolo moreno', '11967674242', 'mimosaleitera@gmail.com', '912.653.388-28', 'rua Leiteiro 42, Ouro Fino, Ribeirão Pires - Sp');

-- --------------------------------------------------------

--
-- Estrutura para tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `idvet` int(11) NOT NULL,
  `nomevet` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `especialidade` varchar(100) NOT NULL,
  `cmrv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `veterinario`
--

INSERT INTO `veterinario` (`idvet`, `nomevet`, `telefone`, `especialidade`, `cmrv`) VALUES
(1, 'Keth Santos', '11952230443', 'Cirurgiã', 'CRMV-SP 12345'),
(2, 'Baltazar', '119522304554', 'Neurologia', 'CRMV-SP 67890');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `animais`
--
ALTER TABLE `animais`
  ADD PRIMARY KEY (`idani`),
  ADD KEY `idcliente` (`idcliente`);

--
-- Índices de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`idate`),
  ADD KEY `idanimal` (`idanimal`),
  ADD KEY `idveterinario` (`idveterinario`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`idvet`),
  ADD UNIQUE KEY `especialidade` (`especialidade`),
  ADD UNIQUE KEY `cmrv` (`cmrv`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animais`
--
ALTER TABLE `animais`
  MODIFY `idani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `idate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `idvet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `animais`
--
ALTER TABLE `animais`
  ADD CONSTRAINT `animais_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`);

--
-- Restrições para tabelas `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD CONSTRAINT `atendimentos_ibfk_1` FOREIGN KEY (`idanimal`) REFERENCES `animais` (`idani`),
  ADD CONSTRAINT `atendimentos_ibfk_2` FOREIGN KEY (`idveterinario`) REFERENCES `veterinario` (`idvet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
