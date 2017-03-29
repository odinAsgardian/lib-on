-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Mar-2017 às 13:13
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `MATRICULA` varchar(255) NOT NULL,
  `CURSO` varchar(255) NOT NULL,
  `PERIODO` varchar(255) NOT NULL,
  `TURNO` varchar(255) NOT NULL,
  `ID_LIVRO` int(255) NOT NULL,
  `NOME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`MATRICULA`, `CURSO`, `PERIODO`, `TURNO`, `ID_LIVRO`, `NOME`) VALUES
('2016infig2222', 'logistica', '2', 'manhã', 1345, 'Lian'),
('2016infig6666', 'informatica', '1', 'manhã', 1345, 'Scott');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `ID` varchar(12) NOT NULL,
  `TITULO` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `AUTOR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livro`
--

INSERT INTO `livro` (`ID`, `TITULO`, `ISBN`, `AUTOR`) VALUES
('1234', 'python', '236', 'ranieri'),
('1345', 'php', '258', 'Allan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`MATRICULA`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
