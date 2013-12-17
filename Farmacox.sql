-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-12-2013 a las 10:53:35
-- Versión del servidor: 5.6.12-log
-- Versión de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `farmacox`
--
CREATE DATABASE IF NOT EXISTS `farmacox` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `farmacox`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'Jarabe'),
(2, 'Pastillas'),
(3, 'Crema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad`
--

CREATE TABLE IF NOT EXISTS `enfermedad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `gravedad` int(11) DEFAULT NULL,
  `gravedad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_enfermedad_gravedad1_idx` (`gravedad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enfermedad`
--

INSERT INTO `enfermedad` (`id`, `nombre`, `gravedad`, `gravedad_id`) VALUES
(1, 'gripe', NULL, 3),
(3, 'diabetes', NULL, 3),
(4, 'dengue', NULL, 2),
(5, 'paludismo', NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedad_sintoma`
--

CREATE TABLE IF NOT EXISTS `enfermedad_sintoma` (
  `enfermedad_id` int(11) DEFAULT NULL,
  `sintoma_id` int(11) DEFAULT NULL,
  KEY `fk_enfermedad_has_sintoma_sintoma1_idx` (`sintoma_id`),
  KEY `fk_enfermedad_has_sintoma_enfermedad1_idx` (`enfermedad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `enfermedad_sintoma`
--

INSERT INTO `enfermedad_sintoma` (`enfermedad_id`, `sintoma_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(3, 11),
(3, 12),
(3, 10),
(5, 6),
(5, 7),
(5, 4),
(4, 1),
(4, 7),
(4, 8),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gravedad`
--

CREATE TABLE IF NOT EXISTS `gravedad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `gravedad`
--

INSERT INTO `gravedad` (`id`, `nombre`) VALUES
(1, 'baja'),
(2, 'media'),
(3, 'alta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` char(3) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `precio_comercial` double DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `categoria_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_producto_categoria_idx` (`categoria_id`),
  KEY `fk_producto_proveedor1_idx` (`proveedor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `precio_comercial`, `estado`, `categoria_id`, `proveedor_id`) VALUES
('001', 'Acetaminofen', 150, 250, 1, 2, 2),
('002', 'Dolex', 300, 600, 1, 2, 2),
('003', 'Farmaton', 700, 1200, 1, 1, 4),
('004', 'Butoconazol', 3400, 3800, 1, 3, 4),
('005', 'Sinutab', 400, 800, 1, 2, 1),
('006', 'Doloran', 4800, 5800, 1, 3, 3),
('007', 'Fistalibs', 3800, 4200, 1, 2, 1),
('008', 'Instalivio', 400, 500, 1, 2, 2),
('009', 'Dopamina', 500, 700, 1, 2, 3),
('010', 'Dolex Gripe', 450, 800, 1, 1, 2),
('011', 'Cicotec', 200, 350, 1, 1, 2),
('012', 'Diclofenaco', 400, 500, 1, 1, 2),
('013', 'Dalay', 2500, 4000, 1, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `id` int(11) NOT NULL,
  `nombre_empresa` varchar(30) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre_empresa`, `telefono`) VALUES
(1, 'Bayer', '2168783'),
(2, 'La santé', '2174344'),
(3, 'Genfar', '2143543'),
(4, 'Pharmaderm', '2194333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sintoma`
--

CREATE TABLE IF NOT EXISTS `sintoma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `producto_id` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sintoma`
--

INSERT INTO `sintoma` (`id`, `nombre`, `producto_id`) VALUES
(1, 'dolor de cabeza', '001'),
(2, 'escalofríos', '001'),
(3, 'tos ', '001'),
(4, 'fiebre', '002'),
(5, 'cansancio', '001'),
(6, 'vómito', '001'),
(7, 'náuseas', '001'),
(8, 'perdida de apetito', '001'),
(9, 'dolores musculares', '001'),
(10, 'perdida de peso', '001'),
(11, 'orinar frecuentemente', '001'),
(12, 'mucha hambre', '001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `contraseña` varchar(10) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `nickname`, `contraseña`, `telefono`) VALUES
(1, 'Juan Sebastian Ocampo O.', 'capriatto', 'pass', '2198873'),
(2, 'Juan Camilo Zuluaga Serna', 'jucazuse', 'pass', '2190426'),
(3, 'Fabian Garcia', 'fabiancho', 'pass', '2197873'),
(4, 'usuario genérico', 'z', 'z', '2190000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hora_venta` time DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `productos` int(11) DEFAULT NULL,
  `valor_venta` double DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`usuario_id`),
  KEY `fk_venta_usuario1_idx` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `hora_venta`, `fecha_venta`, `productos`, `valor_venta`, `usuario_id`) VALUES
(1, '00:00:00', '2013-12-17', 1, 400, 1),
(2, '12:41:05', '2013-12-17', 2, 400, 1),
(3, '12:41:05', '2013-12-17', 3, 400, 2),
(4, '12:45:05', '2013-12-17', 3, 400, 2),
(5, '01:03:05', '2013-12-17', 1, 400, 1),
(6, '01:44:05', '2013-12-17', 1, 400, 1),
(7, '02:42:53', '2013-12-17', 1, 150, 4),
(8, '02:43:25', '2013-12-17', 2, 300, 4),
(9, '03:29:32', '2013-12-17', 1, 150, 4),
(10, '03:29:49', '2013-12-17', 2, 300, 4),
(11, '03:32:51', '2013-12-17', 1, 150, 4),
(12, '03:32:51', '2013-12-17', 1, 150, 4),
(13, '03:34:34', '2013-12-17', 2, 300, 4),
(14, '03:34:34', '2013-12-17', 2, 300, 4),
(15, '03:35:38', '2013-12-17', 3, 700, 4),
(16, '03:35:38', '2013-12-17', 3, 700, 4),
(17, '03:37:19', '2013-12-17', 1, 150, 4),
(18, '03:37:19', '2013-12-17', 1, 150, 4),
(19, '03:57:43', '2013-12-17', 3, 700, 4),
(20, '03:59:43', '2013-12-17', 3, 700, 4),
(21, '04:00:22', '2013-12-17', 3, 700, 4),
(22, '04:00:23', '2013-12-17', 3, 700, 4),
(23, '04:00:24', '2013-12-17', 3, 700, 4),
(24, '04:00:24', '2013-12-17', 3, 700, 4),
(25, '04:00:24', '2013-12-17', 3, 700, 4),
(26, '04:00:24', '2013-12-17', 3, 700, 4),
(27, '04:00:25', '2013-12-17', 3, 700, 4),
(28, '04:00:25', '2013-12-17', 3, 700, 4),
(29, '04:00:25', '2013-12-17', 3, 700, 4),
(30, '04:00:25', '2013-12-17', 3, 700, 4),
(31, '04:00:26', '2013-12-17', 3, 700, 4),
(32, '04:00:26', '2013-12-17', 3, 700, 4),
(33, '04:00:26', '2013-12-17', 3, 700, 4),
(34, '04:00:26', '2013-12-17', 3, 700, 4),
(35, '04:00:27', '2013-12-17', 3, 700, 4),
(36, '04:00:27', '2013-12-17', 3, 700, 4),
(37, '04:00:27', '2013-12-17', 3, 700, 4),
(38, '04:00:27', '2013-12-17', 3, 700, 4),
(39, '04:08:49', '2013-12-17', 10, 450, 4),
(40, '04:12:27', '2013-12-17', 3, 700, 4),
(41, '04:41:10', '2013-12-17', 2, 300, 4),
(42, '04:41:58', '2013-12-17', 5, 400, 4),
(43, '04:41:59', '2013-12-17', 5, 400, 4),
(44, '04:43:32', '2013-12-17', 12, 400, 4),
(45, '04:44:21', '2013-12-17', 12, 400, 4),
(46, '04:45:16', '2013-12-17', 2, 300, 4),
(47, '04:48:27', '2013-12-17', 1, 150, 4),
(48, '05:05:47', '2013-12-17', 1, 150, 4),
(49, '05:06:43', '2013-12-17', 5, 400, 2),
(50, '05:07:08', '2013-12-17', 5, 400, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_producto`
--

CREATE TABLE IF NOT EXISTS `venta_producto` (
  `venta_id` int(11) DEFAULT NULL,
  `venta_usuario_id` int(11) DEFAULT NULL,
  `producto_id` char(3) DEFAULT NULL,
  KEY `fk_venta_has_producto_producto1_idx` (`producto_id`),
  KEY `fk_venta_has_producto_venta1_idx` (`venta_id`,`venta_usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta_producto`
--

INSERT INTO `venta_producto` (`venta_id`, `venta_usuario_id`, `producto_id`) VALUES
(7, 4, '002'),
(7, 4, '003'),
(7, 4, '001'),
(3, 2, '005'),
(3, 2, '005'),
(3, 2, '005');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `enfermedad`
--
ALTER TABLE `enfermedad`
  ADD CONSTRAINT `fk_enfermedad_gravedad1` FOREIGN KEY (`gravedad_id`) REFERENCES `gravedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `enfermedad_sintoma`
--
ALTER TABLE `enfermedad_sintoma`
  ADD CONSTRAINT `fk_enfermedad_has_sintoma_enfermedad1` FOREIGN KEY (`enfermedad_id`) REFERENCES `enfermedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_enfermedad_has_sintoma_sintoma1` FOREIGN KEY (`sintoma_id`) REFERENCES `sintoma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_proveedor1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sintoma`
--
ALTER TABLE `sintoma`
  ADD CONSTRAINT `sintoma_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta_producto`
--
ALTER TABLE `venta_producto`
  ADD CONSTRAINT `fk_venta_has_producto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_has_producto_venta1` FOREIGN KEY (`venta_id`, `venta_usuario_id`) REFERENCES `venta` (`id`, `usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
