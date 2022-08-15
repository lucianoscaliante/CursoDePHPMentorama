-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 16/08/2022 às 01:25
-- Versão do servidor: 10.4.24-MariaDB
-- Versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Modulofor`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `Filmes`
--

CREATE TABLE `Filmes` (
  `id` int(11) NOT NULL,
  `Nome_Filme` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Lancamento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `Filmes`
--

INSERT INTO `Filmes` (`id`, `Nome_Filme`, `Data_Lancamento`) VALUES
(1, 'Batman', '2022-03-03'),
(2, 'Doutor Estranho No Multiverso Da Loucura', '2022-05-05'),
(3, 'Avatar: O Caminho da Água', '2022-12-16'),
(4, 'Pânico (2022)', '2022-01-13'),
(5, 'Thor: Love And Thunder', '2022-07-07'),
(6, 'Top Gun: Maverick', '2022-05-26'),
(7, 'Jurassic World: Dominio', '2022-06-02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `Generos`
--

CREATE TABLE `Generos` (
  `id` int(11) NOT NULL,
  `id_Filmes` int(11) NOT NULL,
  `Genero` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `Generos`
--

INSERT INTO `Generos` (`id`, `id_Filmes`, `Genero`) VALUES
(1, 1, 'Ação, Policial, Suspense'),
(2, 2, 'Fantasia, Ação, Aventura'),
(3, 3, 'Ficção científica, Aventura'),
(4, 4, 'Terror, Suspense'),
(5, 5, 'Aventura, Ação, Ficção científica, Fantasia'),
(6, 6, 'Ação'),
(7, 7, 'Ação, Aventura, Ficção científica');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `Filmes`
--
ALTER TABLE `Filmes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `Generos`
--
ALTER TABLE `Generos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Filmes` (`id_Filmes`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `Filmes`
--
ALTER TABLE `Filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `Generos`
--
ALTER TABLE `Generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `Generos`
--
ALTER TABLE `Generos`
  ADD CONSTRAINT `fk_Filmes` FOREIGN KEY (`id_Filmes`) REFERENCES `Filmes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
