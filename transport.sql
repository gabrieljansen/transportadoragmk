-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Nov-2019 às 20:48
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
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `senha`, `email`, `imagem`) VALUES
(89, 'g', '202cb962ac59075b964b07152d234b70', 'g@g', 'Palmeiras.png'),
(90, 'gabriel ', '202cb962ac59075b964b07152d234b70', 'kk@kk', 'Truck.jpg'),
(91, 'gabriel ', '202cb962ac59075b964b07152d234b70', 'pp@pp', 'Scania.png'),
(92, 'gabriel ', '202cb962ac59075b964b07152d234b70', 'll@ll', 'Scania.png'),
(93, 'aaaa', '202cb962ac59075b964b07152d234b70', 'aaa@aaa', 'Palmeiras.png'),
(94, 'gabriel ', '202cb962ac59075b964b07152d234b70', 'nn@nn', 'Scania.png'),
(95, 'n', '202cb962ac59075b964b07152d234b70', 'n@n', 'TobataAro18.jpg'),
(96, 'mn', '202cb962ac59075b964b07152d234b70', 'mn@mn', 'ScaniaBlueStyle.jpeg'),
(97, 'laun', '202cb962ac59075b964b07152d234b70', 'xx@xx', 'ScaniaBlueStyle.jpeg'),
(98, 'bbb', '202cb962ac59075b964b07152d234b70', 'bbb@bbb', 'TobataAro18.jpg');

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
  `endereco_saida` varchar(45) NOT NULL,
  `endereco_chegada` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `id_clientee` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id_produto`, `endereco_saida`, `endereco_chegada`, `data`, `id_clientee`) VALUES
(42, 'Blumenau', 'Blumenau', '2019-12-30', 90),
(43, 'Blumenau', 'Blumenau', '2019-11-15', 90),
(44, 'Blumenau', 'Blumenau', '2019-11-22', 89),
(45, 'Blumenau', 'Blumenau', '2019-11-21', 92),
(46, 'Blumenau', 'itajai', '2019-11-06', 91),
(47, 'Blumenau', 'Blumenau', '2019-11-19', 91),
(48, 'Blumenau', 'Blumenau', '2019-11-08', 90),
(49, 'Blumenau', 'itajai', '2019-11-19', 90),
(50, 'Blumenau', 'itajai', '2019-11-13', 90),
(51, 'Blumenau', 'itajai', '2019-11-20', 90),
(52, 'Blumenau', 'Blumenau', '2019-11-13', 96),
(53, 'Blumenau', 'itajai', '2019-11-12', 90),
(54, 'Blumenau', 'itajai', '2019-11-13', 90),
(55, 'Blumenau', 'Blumenau', '2019-11-07', 90),
(56, 'Blumenau', 'itajai', '2019-11-20', 90),
(57, 'Blumenau', 'itajai', '2019-11-13', 90),
(58, 'Blumenau', 'itajai', '2019-11-27', 90),
(59, 'Blumenau', 'itajai', '2019-11-20', 89),
(60, 'Blumenau', 'itajai', '2019-11-13', 98),
(61, 'Blumenau', 'Blumenau', '2019-11-20', 98);

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizador`
--

CREATE TABLE `localizador` (
  `idcidade` int(11) UNSIGNED NOT NULL,
  `endereco_chegada` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `localizador`
--

INSERT INTO `localizador` (`idcidade`, `endereco_chegada`, `data`) VALUES
(1, 'Blumenau', '2020-06-18'),
(2, 'Joinville', '2019-12-06'),
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
-- Índices para tabela `dados_empresa`
--
ALTER TABLE `dados_empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices para tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `oooooooooooo_idx` (`id_clientee`);

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
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `dados_empresa`
--
ALTER TABLE `dados_empresa`
  MODIFY `id_empresa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id_produto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `localizador`
--
ALTER TABLE `localizador`
  MODIFY `idcidade` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD CONSTRAINT `id_clientee` FOREIGN KEY (`id_clientee`) REFERENCES `clientes` (`id_cliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
