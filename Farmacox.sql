-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2013 a las 01:59:38
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `farmacox`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintoma`
--

CREATE TABLE IF NOT EXISTS `sintoma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `producto_id` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sintoma_producto1_idx` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sintoma`
--

INSERT INTO `sintoma` (`id`, `nombre`, `producto_id`) VALUES
(1, 'dolor de cabeza', ''),
(2, 'escalofríos', ''),
(3, 'tos ', ''),
(4, 'fiebre', ''),
(5, 'cansancio', ''),
(6, 'vómito', ''),
(7, 'náuseas', ''),
(8, 'perdida de apetito', ''),
(9, 'dolores musculares', ''),
(10, 'perdida de peso', ''),
(11, 'orinar frecuentemente', ''),
(12, 'mucha hambre', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sintoma`
--
ALTER TABLE `sintoma`
  ADD CONSTRAINT `fk_sintoma_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
