-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Jun-2022 às 14:15
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--
-- Criação: 03-Jun-2022 às 12:11
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE `alunos` (
  `matricula` int(2) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `codCurso` varchar(5) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `codCurso`, `cidade`, `endereco`) VALUES
(2, 'asdsa', '2', 'asd', 'asdas'),
(3, 'asdsa', '3', 'Leme', 'asdas'),
(4, 'asdsa', '8', 'Leme', 'asdas'),
(5, 'asdsa', '9', 'Leme', 'asdas'),
(6, 'asdsa', '10', 'Leme', 'asdas'),
(7, 'asdsa', '11', 'Leme', 'asdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--
-- Criação: 03-Jun-2022 às 12:11
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos` (
  `codigo` int(11) NOT NULL,
  `nomeCurso` varchar(30) NOT NULL,
  `codCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`codigo`, `nomeCurso`, `codCurso`) VALUES
(2, 'Ds', 0),
(3, 'Cv', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--
-- Criação: 03-Jun-2022 às 12:11
--

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE `disciplina` (
  `Codigo` int(100) NOT NULL,
  `Disciplina` varchar(30) NOT NULL,
  `CargaHoraria` int(5) NOT NULL,
  `CodCurso` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`Codigo`, `Disciplina`, `CargaHoraria`, `CodCurso`) VALUES
(1, 'MatemÃ¡tica', 10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--
-- Criação: 03-Jun-2022 às 12:14
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(30) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`Codigo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `matricula` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `Codigo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
