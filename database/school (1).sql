-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Mar-2022 às 15:30
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

CREATE TABLE IF NOT EXISTS `alunos` (
  `matricula` int(2) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `codCurso` varchar(5) DEFAULT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `codCurso`, `cidade`, `endereco`) VALUES
(1, '', '', '', ''),
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

CREATE TABLE IF NOT EXISTS `cursos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCurso` varchar(30) NOT NULL,
  `codCurso` int(11) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `disciplina` (
  `Codigo` int(100) NOT NULL AUTO_INCREMENT,
  `Disciplina` varchar(30) NOT NULL,
  `CargaHoraria` int(5) NOT NULL,
  `CodCurso` int(10) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`Codigo`, `Disciplina`, `CargaHoraria`, `CodCurso`) VALUES
(1, 'MatemÃ¡tica', 10, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
