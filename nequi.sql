-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2024 a las 19:39:36
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nequi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `Id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `nombres` char(35) NOT NULL,
  `apellidos` char(35) NOT NULL,
  `tipo_doc` tinyint(20) NOT NULL,
  `num_doc` char(12) NOT NULL,
  `fecha_nacim` date NOT NULL,
  `direccion` char(90) NOT NULL,
  `celular` char(12) NOT NULL,
  `correo` char(40) NOT NULL,
  `contraseña` char(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE IF NOT EXISTS `transferencias` (
  `Id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `num_origen` char(13) NOT NULL,
  `num_destino` char(13) NOT NULL,
  `valor` int(8) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`Id`, `fecha_sys`, `num_origen`, `num_destino`, `valor`) VALUES
(1, '2024-09-30 12:08:12', '310277879', '3136426340', 84000),
(2, '2024-09-30 12:14:20', '3165489320', '3207203188', 57000),
(3, '2024-09-30 12:16:09', '3152645319', '3241568974', 33000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `Id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `valor` smallint(6) NOT NULL,
  `documento` char(17) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `Id` int(9) NOT NULL AUTO_INCREMENT,
  `fecha_sys` datetime NOT NULL,
  `cantidad` smallint(2) NOT NULL,
  `sabor` tinyint(2) NOT NULL,
  `valor` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
