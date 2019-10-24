-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2019 às 18:54
-- Versão do servidor: 10.3.16-MariaDB
-- versão do PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `transport`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `senha`, `email`, `cep`, `cpf`, `cnpj`) VALUES
(1, 'gabriel', '698d51a19d8a121ce581499d7b701668', 'senai.bnu@gmail.com', '11', '11', '111'),
(2, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(3, 'gabriel', '202cb962ac59075b964b07152d234b70', 'estu@estu', '123', '123', '123'),
(4, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(5, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(6, 'gabriel', '202cb962ac59075b964b07152d234b70', 'gabriel@estudante', '89035-360', '000000000', '123'),
(7, 'gabriel', '202cb962ac59075b964b07152d234b70', 'senaiblu@estu', '', '', ''),
(8, 'gabriel', '202cb962ac59075b964b07152d234b70', 'Gabriel@estudante', '89035360', '111', '111'),
(9, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(10, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(11, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(12, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(13, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(14, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', ''),
(15, 'gabriel', '202cb962ac59075b964b07152d234b70', 'gabs@estu', '', '', ''),
(16, 'kachorro', '202cb962ac59075b964b07152d234b70', 'gabriel@est', '111', '111', '111'),
(17, 'kachorro', 'd41d8cd98f00b204e9800998ecf8427e', 'gabriel@est', '111', '111', '111'),
(18, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente_produto`
--

CREATE TABLE `cliente_produto` (
  `idcliente_produto` int(10) UNSIGNED NOT NULL,
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `id_produto` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados_empresa`
--

CREATE TABLE `dados_empresa` (
  `id_empresa` int(10) UNSIGNED NOT NULL,
  `marca` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `ciadade` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `responsavel` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id_produto` int(11) UNSIGNED NOT NULL,
  `largura` varchar(20) NOT NULL,
  `comprimento` varchar(20) NOT NULL,
  `peso` varchar(20) NOT NULL,
  `endereco_saida` varchar(45) NOT NULL,
  `endereco_chegada` varchar(45) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id_produto`, `largura`, `comprimento`, `peso`, `endereco_saida`, `endereco_chegada`, `data`) VALUES
(1, '111', '', '', '', '', '0000-00-00'),
(2, '111', '334', '4343', 'dfsf', 'sdfs', '2019-10-16'),
(3, '1', '1', '1', 'b', 'b', '2019-10-21'),
(4, '', '', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizador`
--

CREATE TABLE `localizador` (
  `idcidade` int(11) UNSIGNED NOT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `localizador`
--

INSERT INTO `localizador` (`idcidade`, `cidade`, `data`) VALUES
(1, 'Blumenau', '0000-00-00'),
(2, 'Joinville', NULL),
(3, 'Gaspar', NULL),
(4, 'Florianópolis', NULL),
(5, 'lneário Camboriú', NULL),
(6, 'Joaçaba', NULL),
(7, 'São José', NULL),
(8, 'Rio Fortuna', NULL),
(9, 'Jaraguá do Sul', NULL),
(10, 'Rio do Sul', NULL),
(11, ' São Miguel do Oeste', NULL),
(12, 'Concórdia', NULL),
(13, ' Tubarão', NULL),
(14, 'Itapema', NULL),
(15, 'Itajaí', NULL),
(16, ' Brusque', NULL),
(17, 'Canelinha', NULL),
(18, 'Chapecó', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `cliente_produto`
--
ALTER TABLE `cliente_produto`
  ADD PRIMARY KEY (`idcliente_produto`),
  ADD KEY `clienteFK_idx` (`id_cliente`),
  ADD KEY `produtoFK_idx` (`id_produto`);

--
-- Índices para tabela `dados_empresa`
--
ALTER TABLE `dados_empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices para tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id_produto`);

--
-- Índices para tabela `localizador`
--
ALTER TABLE `localizador`
  ADD PRIMARY KEY (`idcidade`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `cliente_produto`
--
ALTER TABLE `cliente_produto`
  MODIFY `idcliente_produto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dados_empresa`
--
ALTER TABLE `dados_empresa`
  MODIFY `id_empresa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id_produto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `localizador`
--
ALTER TABLE `localizador`
  MODIFY `idcidade` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cliente_produto`
--
ALTER TABLE `cliente_produto`
  ADD CONSTRAINT `clienteFK` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `produtoFK` FOREIGN KEY (`id_produto`) REFERENCES `informacoes` (`id_produto`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
