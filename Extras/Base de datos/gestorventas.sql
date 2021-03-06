-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-10-2019 a las 21:03:01
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestorventas`
--
CREATE DATABASE IF NOT EXISTS `gestorventas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestorventas`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `documentId` varchar(8) DEFAULT NULL,
  `nombres` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `documentId`, `nombres`, `apellidos`, `Direccion`, `Estado`) VALUES
(17, '2', 'Juan Guerrero Solis', NULL, 'Los Alamos', '1'),
(18, '1', 'Maria Rosas Villanueva', NULL, 'Los Laureles 234', '1'),
(19, '3', 'Andres de Santa Cruz', NULL, 'Av. La Frontera 347', '1'),
(20, '4', 'Andres Mendoza', NULL, 'Chosica, Lurigancho', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE IF NOT EXISTS `detalle_ventas` (
  `idDetalleVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idVentas` int(11) UNSIGNED NOT NULL,
  `idProducto` int(11) UNSIGNED NOT NULL,
  `cantidad` int(11) UNSIGNED DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `codBar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idDetalleVentas`,`idVentas`,`idProducto`),
  KEY `Ventas_has_Producto_FKIndex1` (`idVentas`),
  KEY `Ventas_has_Producto_FKIndex2` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `documentId` varchar(15) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellido` varchar(200) DEFAULT NULL,
  `contraseña` varchar(50) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `usuario` varchar(25) NOT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `creacionUsuario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`idEmpleado`, `documentId`, `nombres`, `apellido`, `contraseña`, `telefono`, `usuario`, `estado`, `creacionUsuario`) VALUES
(1, '123', 'Jose', 'Gomez', '123', '988252459', 'gom', '1', '2019-09-01 18:51:34'),
(2, '1', '1', '1', '1', '1', '1', '1', '2019-09-01 20:31:28'),
(3, '12135', 'Jose Raul', 'Lopez Pumarejo', '123', '31258964', 'jose', '1', '2019-09-10 02:30:40'),
(4, '1213568989', 'Raul', 'Prieto Rivas', '1122', '3158964897', 'raprieto', '1', '2019-09-10 02:32:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `stock` int(11) UNSIGNED DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `codBar` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idProducto`, `nombres`, `precio`, `stock`, `estado`, `codBar`) VALUES
(1, 'Teclado Logitech 345 Editado', 150, 99, '1', NULL),
(2, 'Mouse Logitech 567', 20, 98, '1', NULL),
(3, 'Laptop Lenovo Ideapad 520', 800, 100, '1', NULL),
(4, 'HeadPhones Sony M333', 500, 98, '1', NULL),
(7, 'Producto Nuevo w', 22, 35, '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE IF NOT EXISTS `ventas` (
  `idVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idEmpleado` int(10) UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaVentas` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idVentas`),
  KEY `Ventas_FKIndex1` (`idEmpleado`),
  KEY `Ventas_FKIndex2` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`idVentas`) REFERENCES `ventas` (`idVentas`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
