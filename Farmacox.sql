-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2013 a las 07:44:25
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
CREATE DATABASE IF NOT EXISTS `farmacox` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
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
  `producto_recomendado` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sintoma`
--

INSERT INTO `sintoma` (`id`, `nombre`, `producto_recomendado`) VALUES
(1, 'dolor de cabeza', '0'),
(2, 'escalofríos', '0'),
(3, 'tos ', '0'),
(4, 'fiebre', '0'),
(5, 'cansancio', '0'),
(6, 'vómito', '0'),
(7, 'náuseas', '0'),
(8, 'perdida de apetito', '0'),
(9, 'dolores musculares', '0'),
(10, 'perdida de peso', '0'),
(11, 'orinar frecuentemente', '0'),
(12, 'mucha hambre', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta-producto`
--

CREATE TABLE IF NOT EXISTS `venta-producto` (
  `venta_id` int(11) DEFAULT NULL,
  `venta_usuario_id` int(11) DEFAULT NULL,
  `producto_id` char(3) DEFAULT NULL,
  KEY `fk_venta_has_producto_producto1_idx` (`producto_id`),
  KEY `fk_venta_has_producto_venta1_idx` (`venta_id`,`venta_usuario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta-producto`
--
ALTER TABLE `venta-producto`
  ADD CONSTRAINT `fk_venta_has_producto_producto1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_has_producto_venta1` FOREIGN KEY (`venta_id`, `venta_usuario_id`) REFERENCES `venta` (`id`, `usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
