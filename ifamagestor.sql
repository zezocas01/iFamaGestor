-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 03-Fev-2025 às 23:57
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ifamagestor`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `ClienteID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Nif` varchar(15) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Morada` varchar(255) NOT NULL,
  `DataCriacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `Nome`, `Nif`, `Telefone`, `Email`, `Morada`, `DataCriacao`) VALUES
(1, 'José Campos', '259015008', '910552050', 'a14362@oficina.pt', 'Rua José Régio, 12', '2025-02-03 21:35:45'),
(2, 'Afonso Sá', '234632875', '91298632', 'a14374@oficina.pt', 'Rua poeta Cesário verde', '2025-02-03 22:01:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `CompraID` int(11) NOT NULL,
  `FornecedorID` int(11) NOT NULL,
  `ProdutoID` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `CustoTotal` decimal(10,2) NOT NULL,
  `DataCompra` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`CompraID`, `FornecedorID`, `ProdutoID`, `Quantidade`, `CustoTotal`, `DataCompra`) VALUES
(1, 1, 1, 20, 5000.00, '2025-02-03 21:35:45'),
(2, 1, 50, 5, 6500.00, '2025-02-03 21:40:07'),
(3, 1, 51, 1, 250.00, '2025-02-03 22:02:46');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `FornecedorID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Morada` varchar(255) NOT NULL,
  `DataRegistro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`FornecedorID`, `Nome`, `Telefone`, `Email`, `Morada`, `DataRegistro`) VALUES
(1, 'Apple Distribution', '219876543', 'apple@distribution.com', 'Cupertino, CA', '2025-02-03 21:35:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `ProdutoID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `PrecoCompra` decimal(10,2) NOT NULL,
  `PrecoVenda` decimal(10,2) NOT NULL,
  `StockAtual` int(11) NOT NULL,
  `Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`ProdutoID`, `Nome`, `Modelo`, `PrecoCompra`, `PrecoVenda`, `StockAtual`, `Estado`) VALUES
(1, 'iPhone X', '64GB', 250.00, 349.99, 20, 'Bom'),
(2, 'iPhone X', '256GB', 300.00, 399.99, 15, 'Muito Bom'),
(3, 'iPhone XR', '64GB', 300.00, 399.99, 30, 'Satisfatório'),
(4, 'iPhone XR', '128GB', 350.00, 449.99, 25, 'Bom'),
(5, 'iPhone 11', '64GB', 400.00, 499.99, 50, 'Bom'),
(6, 'iPhone 11', '128GB', 450.00, 549.99, 45, 'Muito Bom'),
(7, 'iPhone 11 Pro', '64GB', 500.00, 599.99, 35, 'Muito Bom'),
(8, 'iPhone 11 Pro Max', '256GB', 600.00, 699.99, 20, 'Bom'),
(9, 'iPhone 12', '128GB', 500.00, 649.99, 40, 'Satisfatório'),
(10, 'iPhone 12', '256GB', 550.00, 699.99, 35, 'Bom'),
(11, 'iPhone 12 Mini', '128GB', 450.00, 599.99, 50, 'Satisfatório'),
(12, 'iPhone 12 Pro', '256GB', 700.00, 849.99, 25, 'Muito Bom'),
(13, 'iPhone 12 Pro Max', '512GB', 850.00, 999.99, 15, 'Muito Bom'),
(14, 'iPhone 13', '128GB', 600.00, 749.99, 50, 'Bom'),
(15, 'iPhone 13 Pro', '256GB', 850.00, 999.99, 30, 'Muito Bom'),
(16, 'iPhone 13 Pro Max', '1TB', 1100.00, 1299.99, 10, 'Muito Bom'),
(17, 'iPhone 14', '256GB', 850.00, 999.99, 40, 'Bom'),
(18, 'iPhone 14', '128GB', 750.00, 899.99, 60, 'Muito Bom'),
(19, 'iPhone 14 Pro', '512GB', 1000.00, 1249.99, 25, 'Muito Bom'),
(20, 'iPhone 14 Pro Max', '1TB', 1200.00, 1499.99, 10, 'Muito Bom'),
(21, 'iPhone SE (3ª geração)', '128GB', 350.00, 449.99, 30, 'Bom'),
(22, 'iPhone SE (3ª ger ação)', '256GB', 400.00, 499.99, 25, 'Muito Bom'),
(23, 'iPhone 11 Pro Max', '128GB', 550.00, 649.99, 20, 'Satisfatório'),
(24, 'iPhone 12', '64GB', 400.00, 499.99, 40, 'Satisfatório'),
(25, 'iPhone 13 Mini', '128GB', 550.00, 649.99, 25, 'Bom'),
(26, 'iPhone 14', '512GB', 1100.00, 1349.99, 15, 'Muito Bom'),
(27, 'iPhone XR', '256GB', 400.00, 499.99, 35, 'Bom'),
(28, 'iPhone X', '128GB', 280.00, 349.99, 25, 'Satisfatório'),
(29, 'iPhone 14 Pro Max', '256GB', 950.00, 1249.99, 15, 'Muito Bom'),
(30, 'iPhone 12 Pro', '512GB', 850.00, 1099.99, 10, 'Muito Bom'),
(31, 'iPhone 11', '256GB', 500.00, 649.99, 20, 'Bom'),
(32, 'iPhone 13 Pro', '512GB', 950.00, 1249.99, 15, 'Muito Bom'),
(33, 'iPhone 12 Mini', '64GB', 400.00, 499.99, 50, 'Satisfatório'),
(34, 'iPhone 14', '64GB', 700.00, 849.99, 60, 'Bom'),
(35, 'iPhone 13', '256GB', 700.00, 849.99, 30, 'Muito Bom'),
(36, 'iPhone 11', '128GB', 450.00, 549.99, 25, 'Bom'),
(37, 'iPhone XR', '512GB', 500.00, 599.99, 15, 'Satisfatório'),
(38, 'iPhone 14 Plus', '128GB', 850.00, 999.99, 20, 'Bom'),
(39, 'iPhone 13 Pro Max', '256GB', 950.00, 1249.99, 15, 'Muito Bom'),
(40, 'iPhone SE (2ª geração)', '64GB', 250.00, 349.99, 30, 'Bom'),
(41, 'iPhone SE (2ª geração)', '128GB', 300.00, 399.99, 20, 'Muito Bom'),
(42, 'iPhone 11 Pro', '256GB', 600.00, 749.99, 25, 'Bom'),
(43, 'iPhone 12', '512GB', 850.00, 1099.99, 15, 'Muito Bom'),
(44, 'iPhone XR', '128GB', 350.00, 449.99, 20, 'Bom'),
(45, 'iPhone X', '256GB', 300.00, 399.99, 15, 'Satisfatório'),
(46, 'iPhone 13 Mini', '256GB', 650.00, 799.99, 25, 'Muito Bom'),
(47, 'iPhone 14', '128GB', 750.00, 899.99, 40, 'Bom'),
(48, 'iPhone 14 Pro', '256GB', 950.00, 1249.99, 10, 'Muito Bom'),
(50, 'Samsung S25 Ultra', '512GB', 1300.00, 1600.00, 1, 'Muito Bom'),
(51, 'iPhone 11', '128GB', 250.00, 350.00, 1, 'Bom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reparacoes`
--

CREATE TABLE `reparacoes` (
  `ReparacaoID` int(11) NOT NULL,
  `ClienteID` int(11) NOT NULL,
  `ProdutoID` int(11) NOT NULL,
  `TipoReparacao` varchar(100) NOT NULL,
  `Custo` decimal(10,2) NOT NULL,
  `DataReparacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reparacoes`
--

INSERT INTO `reparacoes` (`ReparacaoID`, `ClienteID`, `ProdutoID`, `TipoReparacao`, `Custo`, `DataReparacao`) VALUES
(1, 1, 1, 'Troca de Lcd', 199.99, '2025-02-03 21:35:45'),
(2, 1, 51, 'Ecra', 150.00, '2025-02-03 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `utilizadores`
--

INSERT INTO `utilizadores` (`id`, `Nome`, `password`) VALUES
(1, 'admin', '$2y$10$G6l/j7YXO6TY/BmfzMBFbe8Z75RQdJ4zePUEzR4EsmGir2NZCwcji');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `VendaID` int(11) NOT NULL,
  `ClienteID` int(11) NOT NULL,
  `DataVenda` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`VendaID`, `ClienteID`, `DataVenda`) VALUES
(1, 1, '2024-12-06 10:30:00'),
(2, 1, '2025-02-03 21:51:11'),
(3, 1, '2025-02-03 21:51:44'),
(4, 2, '2025-02-03 22:02:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas_produtos`
--

CREATE TABLE `vendas_produtos` (
  `VendaProdutoID` int(11) NOT NULL,
  `VendaID` int(11) NOT NULL,
  `ProdutoID` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `PrecoUnitario` decimal(10,2) NOT NULL,
  `ValorTotal` decimal(10,2) GENERATED ALWAYS AS (`Quantidade` * `PrecoUnitario`) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendas_produtos`
--

INSERT INTO `vendas_produtos` (`VendaProdutoID`, `VendaID`, `ProdutoID`, `Quantidade`, `PrecoUnitario`) VALUES
(1, 1, 1, 1, 349.99),
(2, 2, 50, 1, 1600.00),
(3, 3, 50, 1, 1600.00),
(4, 4, 48, 5, 1249.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClienteID`);

--
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`CompraID`),
  ADD KEY `FornecedorID` (`FornecedorID`),
  ADD KEY `ProdutoID` (`ProdutoID`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`FornecedorID`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`ProdutoID`);

--
-- Índices para tabela `reparacoes`
--
ALTER TABLE `reparacoes`
  ADD PRIMARY KEY (`ReparacaoID`),
  ADD KEY `ClienteID` (`ClienteID`),
  ADD KEY `ProdutoID` (`ProdutoID`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`VendaID`),
  ADD KEY `ClienteID` (`ClienteID`);

--
-- Índices para tabela `vendas_produtos`
--
ALTER TABLE `vendas_produtos`
  ADD PRIMARY KEY (`VendaProdutoID`),
  ADD KEY `VendaID` (`VendaID`),
  ADD KEY `ProdutoID` (`ProdutoID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ClienteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `CompraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `FornecedorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `ProdutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `reparacoes`
--
ALTER TABLE `reparacoes`
  MODIFY `ReparacaoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `VendaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vendas_produtos`
--
ALTER TABLE `vendas_produtos`
  MODIFY `VendaProdutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`FornecedorID`) REFERENCES `fornecedores` (`FornecedorID`),
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`ProdutoID`) REFERENCES `produtos` (`ProdutoID`);

--
-- Limitadores para a tabela `reparacoes`
--
ALTER TABLE `reparacoes`
  ADD CONSTRAINT `reparacoes_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`),
  ADD CONSTRAINT `reparacoes_ibfk_2` FOREIGN KEY (`ProdutoID`) REFERENCES `produtos` (`ProdutoID`);

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `clientes` (`ClienteID`);

--
-- Limitadores para a tabela `vendas_produtos`
--
ALTER TABLE `vendas_produtos`
  ADD CONSTRAINT `vendas_produtos_ibfk_1` FOREIGN KEY (`VendaID`) REFERENCES `vendas` (`VendaID`),
  ADD CONSTRAINT `vendas_produtos_ibfk_2` FOREIGN KEY (`ProdutoID`) REFERENCES `produtos` (`ProdutoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
