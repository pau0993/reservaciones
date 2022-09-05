-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-09-2022 a las 08:51:21
-- Versión del servidor: 10.3.36-MariaDB-log
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cowandufo_pau`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `id_calendario` int(11) NOT NULL,
  `f_inicio` date NOT NULL,
  `f_fin` date NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`id_calendario`, `f_inicio`, `f_fin`, `id_marca`, `id_vehiculo`, `status`) VALUES
(1, '2022-09-05', '2022-09-07', 1, 3, 1),
(3, '2022-09-12', '2022-09-15', 4, 6, 1),
(4, '2022-09-19', '2022-09-21', 2, 1, 1),
(5, '2022-09-26', '2022-09-29', 3, 2, 1),
(6, '2022-09-23', '2022-09-26', 1, 7, 1),
(7, '2022-09-29', '2022-09-30', 1, 8, 1),
(8, '2022-09-12', '2022-09-15', 4, 6, 1),
(9, '2022-09-12', '2022-09-15', 4, 6, 1),
(10, '2022-09-23', '2022-09-26', 1, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_asignado`
--

CREATE TABLE `cat_asignado` (
  `id_asignado` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_asignado`
--

INSERT INTO `cat_asignado` (`id_asignado`, `nombre`, `status`) VALUES
(0, 'No asignado', 1),
(1, 'Asignado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_concesionario`
--

CREATE TABLE `cat_concesionario` (
  `id_concesionario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dir_calle` varchar(100) NOT NULL,
  `dir_colonia` varchar(100) NOT NULL,
  `dir_cp` int(11) NOT NULL,
  `dir_edo` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_concesionario`
--

INSERT INTO `cat_concesionario` (`id_concesionario`, `nombre`, `dir_calle`, `dir_colonia`, `dir_cp`, `dir_edo`, `status`) VALUES
(1, 'Zapata SA de CV', 'Viaducto 30', 'Narvarte', 65009, 'CDMX', 1),
(2, 'Costa Automotriz SA de CV', 'Periferico Norte 300', 'Molino', 25036, 'CDMX ', 1),
(3, 'PISA de Auto SA de CV', 'Amores 50', 'Roma Sur', 11200, 'CDMX ', 1),
(4, 'LogiCar SA de CV', 'Fresas 40', 'Atlampa', 63000, 'CDMX', 1),
(5, 'Autos Rio SA de CV', 'Vertiz 45', 'Doctores', 58900, 'CDMX', 1),
(6, 'La huerta SA de CV', 'Av la huerta 345', 'La huerta', 87999, 'CDMX', 1),
(7, 'Occidente Auto SA de CV', 'Donceles 20', 'Centro', 6500, 'CDMX', 1),
(8, 'Aguila SA de CV', 'Grecia 45', 'Popotla', 56987, 'CDMX', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_marca`
--

CREATE TABLE `cat_marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_marca`
--

INSERT INTO `cat_marca` (`id_marca`, `nombre`, `status`) VALUES
(1, 'Chevrolet', 1),
(2, 'Honda', 1),
(3, 'Nissan', 1),
(4, 'Toyota', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_vehiculo`
--

CREATE TABLE `cat_vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `submarca` varchar(100) NOT NULL,
  `modelo` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `no_serie` varchar(10) NOT NULL,
  `status_conc_veh` int(11) DEFAULT 0,
  `status_reserv` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_vehiculo`
--

INSERT INTO `cat_vehiculo` (`id_vehiculo`, `id_marca`, `submarca`, `modelo`, `color`, `no_serie`, `status_conc_veh`, `status_reserv`) VALUES
(2, 3, 'Versa', 2005, 'Plata', 'SKEI8888', 1, 0),
(3, 1, 'Cruze', 2018, 'Rojo', 'JFIRO3030', 1, 0),
(4, 2, 'Civic', 2014, 'Gris', 'SKIRIRM49', 1, 0),
(5, 2, 'CR-V', 2019, 'Rojo', 'DKRVR234', 1, 0),
(6, 4, 'Yaris', 2004, 'Blanco', 'DIRFDOE22', 1, 0),
(7, 1, 'Aveo', 2001, 'Azul', 'SKDIE92', 1, 0),
(8, 1, 'Camaro', 2016, 'Negro', 'DKDIE34', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_veh_conc`
--

CREATE TABLE `lista_veh_conc` (
  `id_lista_veh_conc` int(11) NOT NULL,
  `id_concesionario` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_vehiculo` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lista_veh_conc`
--

INSERT INTO `lista_veh_conc` (`id_lista_veh_conc`, `id_concesionario`, `id_marca`, `id_vehiculo`, `status`) VALUES
(1, 2, 1, 8, 1),
(2, 2, 2, 5, 1),
(3, 6, 1, 7, 1),
(4, 3, 4, 6, 1),
(5, 8, 3, 2, 1),
(6, 6, 1, 3, 1),
(7, 1, 3, 2, 1),
(8, 2, 1, 7, 1),
(9, 4, 2, 5, 1),
(10, 3, 4, 6, 1),
(11, 1, 1, 3, 1),
(12, 1, 4, 6, 1),
(13, 1, 4, 6, 1),
(14, 7, 3, 2, 1),
(15, 7, 2, 1, 1),
(16, 5, 4, 6, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD UNIQUE KEY `id_lista_reservaciones` (`id_calendario`);

--
-- Indices de la tabla `cat_asignado`
--
ALTER TABLE `cat_asignado`
  ADD PRIMARY KEY (`id_asignado`);

--
-- Indices de la tabla `cat_concesionario`
--
ALTER TABLE `cat_concesionario`
  ADD UNIQUE KEY `id_concesionario` (`id_concesionario`);

--
-- Indices de la tabla `cat_marca`
--
ALTER TABLE `cat_marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `cat_vehiculo`
--
ALTER TABLE `cat_vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `lista_veh_conc`
--
ALTER TABLE `lista_veh_conc`
  ADD UNIQUE KEY `id_lista_veh_conc` (`id_lista_veh_conc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id_calendario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cat_concesionario`
--
ALTER TABLE `cat_concesionario`
  MODIFY `id_concesionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `cat_marca`
--
ALTER TABLE `cat_marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_vehiculo`
--
ALTER TABLE `cat_vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lista_veh_conc`
--
ALTER TABLE `lista_veh_conc`
  MODIFY `id_lista_veh_conc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
