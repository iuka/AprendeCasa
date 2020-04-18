-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2020 a las 03:48:43
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aprendecasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audiovisuales`
--

CREATE TABLE `audiovisuales` (
  `id_visuales` int(10) NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_perfil` int(2) NOT NULL,
  `id_grado` int(10) NOT NULL,
  `id_asignatura` int(2) NOT NULL,
  `bloque` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secuencia` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `orden` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `audiovisuales`
--

INSERT INTO `audiovisuales` (`id_visuales`, `nombre`, `url`, `id_nivel`, `id_perfil`, `id_grado`, `id_asignatura`, `bloque`, `secuencia`, `orden`) VALUES
(1, '1', '1', 1, 1, 1, 1, '1', '2', 1),
(2, '2', '2', 1, 2, 1, 1, '1', '2', 2),
(3, '3', '3', 1, 2, 1, 1, '1', '2', 3),
(4, '5', '5', 2, 2, 3, 1, '1', '2', 2),
(5, '6', '6', 2, 2, 5, 2, '1', '2', 2),
(6, '7', '7', 2, 2, 4, 3, '1', '2', 2),
(7, '8', '8', 2, 2, 4, 4, '1', '2', 2),
(8, '9', '9', 2, 2, 5, 5, '1', '2', 2),
(9, '10', '10', 2, 2, 6, 6, '1', '2', 2),
(10, '12', '12', 3, 2, 1, 1, '1', '2', 2),
(11, '13', '13', 3, 2, 2, 2, '1', '2', 2),
(12, '14', '14', 3, 2, 2, 3, '1', '2', 2),
(13, '15', '15', 3, 1, 3, 3, '1', '2', 2),
(14, '11', '11', 2, 1, 3, 2, '1', '2', 2),
(15, '4', '4', 1, 2, 1, 1, '1', '2', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_asignatura`
--

CREATE TABLE `cat_asignatura` (
  `id_asignatura` int(11) NOT NULL,
  `nombre_asignatura` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_asignatura`
--

INSERT INTO `cat_asignatura` (`id_asignatura`, `nombre_asignatura`) VALUES
(1, 'Lengua Materna.Español'),
(2, 'Matemáticas'),
(3, 'Ciencias y Tecnología.'),
(4, 'Geografía\r\n'),
(5, 'Historia'),
(6, 'Formación Cívica y Ética'),
(7, '1'),
(8, '2'),
(9, '3'),
(10, '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_grado`
--

CREATE TABLE `cat_grado` (
  `id_grado` int(10) NOT NULL,
  `nombre_grado` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_grado`
--

INSERT INTO `cat_grado` (`id_grado`, `nombre_grado`) VALUES
(1, 'Primer grado'),
(2, 'Segundo grado'),
(3, 'Tercer grado'),
(4, 'Cuarto grado'),
(5, 'Quinto grado'),
(6, 'Sexto grado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_nivel`
--

CREATE TABLE `cat_nivel` (
  `id_nivel` int(11) NOT NULL,
  `nombre_nivel` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_nivel`
--

INSERT INTO `cat_nivel` (`id_nivel`, `nombre_nivel`) VALUES
(1, 'Preescolar'),
(2, 'Primaria'),
(3, 'Secundaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_perfil`
--

CREATE TABLE `cat_perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat_perfil`
--

INSERT INTO `cat_perfil` (`id_perfil`, `nombre_perfil`) VALUES
(1, 'Alumno'),
(2, 'Maestro');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `audiovisuales`
--
ALTER TABLE `audiovisuales`
  ADD PRIMARY KEY (`id_visuales`),
  ADD KEY `id_nivel_fk` (`id_nivel`),
  ADD KEY `id_perfil_fk` (`id_perfil`),
  ADD KEY `id_grado_fk` (`id_grado`),
  ADD KEY `id_asignatura_fk` (`id_asignatura`);

--
-- Indices de la tabla `cat_asignatura`
--
ALTER TABLE `cat_asignatura`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indices de la tabla `cat_grado`
--
ALTER TABLE `cat_grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `cat_nivel`
--
ALTER TABLE `cat_nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `cat_perfil`
--
ALTER TABLE `cat_perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audiovisuales`
--
ALTER TABLE `audiovisuales`
  MODIFY `id_visuales` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `cat_asignatura`
--
ALTER TABLE `cat_asignatura`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cat_grado`
--
ALTER TABLE `cat_grado`
  MODIFY `id_grado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `cat_nivel`
--
ALTER TABLE `cat_nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cat_perfil`
--
ALTER TABLE `cat_perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `audiovisuales`
--
ALTER TABLE `audiovisuales`
  ADD CONSTRAINT `id_asignatura_fk` FOREIGN KEY (`id_asignatura`) REFERENCES `cat_asignatura` (`id_asignatura`),
  ADD CONSTRAINT `id_grado_fk` FOREIGN KEY (`id_grado`) REFERENCES `cat_grado` (`id_grado`),
  ADD CONSTRAINT `id_nivel_fk` FOREIGN KEY (`id_nivel`) REFERENCES `cat_nivel` (`id_nivel`),
  ADD CONSTRAINT `id_perfil_fk` FOREIGN KEY (`id_perfil`) REFERENCES `cat_perfil` (`id_perfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
