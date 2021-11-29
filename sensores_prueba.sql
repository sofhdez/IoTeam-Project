-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2021 a las 16:40:06
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sensores_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `area` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`area`, `color`) VALUES
(1, 'rosa'),
(2, 'azul'),
(3, 'verde'),
(4, 'morado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `sensor` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`sensor`, `color`) VALUES
(' sensor0', 'amarillo'),
(' sensor1', 'rojo'),
(' sensor2', 'verde'),
(' sensor3', 'amarillo'),
(' sensor4', 'error'),
(' sensor5', 'amarillo'),
(' sensor6', 'amarillo'),
(' sensor7', 'error'),
(' sensor8', 'error'),
(' sensor9', 'amarillo'),
(' sensor10', 'verde'),
(' sensor11', 'error'),
(' sensor12', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_sensors`
--

CREATE TABLE `data_sensors` (
  `id` int(11) NOT NULL,
  `node_id` varchar(20) NOT NULL,
  `meas_label` varchar(20) NOT NULL,
  `meas_raw_value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localizacion`
--

CREATE TABLE `localizacion` (
  `node_id` varchar(20) NOT NULL,
  `Latitud` double NOT NULL,
  `Longitud` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localizacion`
--

INSERT INTO `localizacion` (`node_id`, `Latitud`, `Longitud`) VALUES
(' sensor0', 19.283486864303704, -99.13538145610816),
(' sensor1', 19.283183543496836, -99.13605284690061),
(' sensor10', 19.28421266538242, -99.13400424422625),
(' sensor11', 19.284927630463976, -99.13372880184986),
(' sensor12', 19.28498221216455, -99.13506678786165),
(' sensor2', 19.282815224618922, -99.1367070225445),
(' sensor3', 19.283763102406866, -99.13736693657127),
(' sensor4', 19.284337242856044, -99.13577166614137),
(' sensor5', 19.284553899106193, -99.13656930135632),
(' sensor6', 19.28524719718035, -99.13627090544857),
(' sensor7', 19.28473264029677, -99.13444036132218),
(' sensor8', 19.28412600273617, -99.13461825119028),
(' sensor9', 19.283703521678927, -99.13403293614044);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `node_area`
--

CREATE TABLE `node_area` (
  `node_id` varchar(20) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `node_area`
--

INSERT INTO `node_area` (`node_id`, `area`) VALUES
(' sensor3', 1),
(' sensor4', 1),
(' sensor5', 1),
(' sensor6', 1),
(' sensor11', 2),
(' sensor12', 2),
(' sensor7', 2),
(' sensor0', 3),
(' sensor1', 3),
(' sensor2', 3),
(' sensor10', 4),
(' sensor8', 4),
(' sensor9', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` varchar(255) NOT NULL,
  `usuario_tipo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario_tipo`, `nombre`, `apellido`, `username`, `password`) VALUES
('AD1111', 'A', 'Diego', 'Figueroa', 'Diego_fig', 'Gansito15'),
('RC1151', 'R', 'Emiliano', 'Saucedo', 'Emi_Sa', 'emperador_19'),
('RC1405', 'R', 'Carla', 'Pérez', 'carla_p', 'Oreo2021'),
('RC1655', 'R', 'Sofía', 'Hernández', 'sofia_her', 'triki-trakes16'),
('RC1702', 'R', 'Catalina', 'García', 'catalina_gar', 'Chokis00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_area`
--

CREATE TABLE `usuario_area` (
  `id_usuario` varchar(255) NOT NULL,
  `area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_area`
--

INSERT INTO `usuario_area` (`id_usuario`, `area`) VALUES
('RC1405', 1),
('RC1702', 2),
('RC1655', 3),
('RC1151', 4),
('AD1111', 1),
('AD1111', 2),
('AD1111', 3),
('AD1111', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area`);

--
-- Indices de la tabla `data_sensors`
--
ALTER TABLE `data_sensors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_localizacion` (`node_id`);

--
-- Indices de la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD PRIMARY KEY (`node_id`);

--
-- Indices de la tabla `node_area`
--
ALTER TABLE `node_area`
  ADD PRIMARY KEY (`node_id`),
  ADD KEY `node_area_area` (`area`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD KEY `usuarios_areas` (`id_usuario`),
  ADD KEY `usuario_area_solo` (`area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `data_sensors`
--
ALTER TABLE `data_sensors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1337;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `data_sensors`
--
ALTER TABLE `data_sensors`
  ADD CONSTRAINT `data_localizacion` FOREIGN KEY (`node_id`) REFERENCES `localizacion` (`node_id`);

--
-- Filtros para la tabla `localizacion`
--
ALTER TABLE `localizacion`
  ADD CONSTRAINT `localizacion_nodearea` FOREIGN KEY (`node_id`) REFERENCES `node_area` (`node_id`);

--
-- Filtros para la tabla `node_area`
--
ALTER TABLE `node_area`
  ADD CONSTRAINT `node_area_area` FOREIGN KEY (`area`) REFERENCES `area` (`area`);

--
-- Filtros para la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD CONSTRAINT `usuario_area_solo` FOREIGN KEY (`area`) REFERENCES `area` (`area`),
  ADD CONSTRAINT `usuarios_areas` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
