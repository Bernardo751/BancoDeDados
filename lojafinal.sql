-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jun-2026 às 17:17
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--
CREATE DATABASE IF NOT EXISTS `loja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loja`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'latinicios'),
(2, 'hortifruit'),
(3, 'eletrônicos'),
(4, 'limpeza'),
(5, 'refrigerados');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `preco`, `observacoes`, `id_categoria`) VALUES
(1, 'Queijo', '12.50', 'Gorgonzola', 1),
(2, 'Iogurte', '5.50', 'Morango', 1),
(3, 'Detergente', '2.50', 'Limão', 4),
(4, 'Sabão em Pó', '19.50', 'Caixa 1kg', 4),
(5, 'Leite', '4.80', 'Caixa 1L', 1),
(6, 'Manteiga', '9.80', 'Com sal', 1),
(7, 'Amaciante', '12.50', 'Toque de baunilha', 4),
(8, 'Banana Prata', '5.99', 'Preço por kg', 2),
(9, 'Maçã Gala', '8.50', 'Preço por kg', 2),
(10, 'Tomate Italiano', '7.20', 'Preço por kg', 2),
(11, 'Alface Crespa', '3.00', 'Unidade fresca', 2),
(12, 'Fone de Ouvido', '89.90', 'Bluetooth intra-auricular', 3),
(13, 'Mouse Sem Fio', '55.00', 'Óptico com pilhas inclusas', 3),
(14, 'Teclado Mecânico', '249.90', 'RGB Switch Blue', 3),
(15, 'Cabo HDMI 2m', '25.00', 'Suporte a 4K', 3),
(16, 'Lasanha Bolonhesa', '14.90', 'Congelada 600g', 5),
(17, 'Pizza de Calabresa', '18.00', 'Congelada pronta para assar', 5),
(18, 'Pão de Queijo', '12.50', 'Pacote congelado 1kg', 5),
(19, 'Sorvete de Creme', '26.90', 'Pote de 1.5L', 5),
(20, 'Cenoura Especial', '4.80', 'Preço por kg', 2),
(21, 'Brócolis Americano', '6.50', 'Unidade higienizada', 2),
(22, 'Uva Sem Semente', '12.90', 'Bandeja 500g', 2),
(23, 'Abacaxi Pérola', '7.00', 'Unidade doce', 2),
(24, 'Carregador Portátil', '120.00', 'Powerbank 10000mAh', 3),
(25, 'Hub USB-C 4 Portas', '79.90', 'Compatível com Notebook e Mac', 3),
(26, 'Suporte para Monitor', '115.00', 'Articulado com pistão a gás', 3),
(27, 'Pendrive 64GB', '35.00', 'USB 3.0 ultra rápido', 3),
(28, 'Nuggets de Frango', '11.90', 'Pacote crocante 300g', 5),
(29, 'Hambúrguer Bovino', '16.50', 'Caixa com 12 unidades', 5),
(30, 'Batata Palito', '19.90', 'Pacote para Airfryer 1kg', 5),
(31, 'Torta de Frango', '22.00', 'Congelada tamanho família', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
