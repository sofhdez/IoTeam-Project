-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2021 a las 03:00:44
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
(' sensor0', 'rojo'),
(' sensor1', 'error'),
(' sensor2', 'error'),
(' sensor3', 'verde'),
(' sensor4', 'verde'),
(' sensor5', 'amarillo'),
(' sensor6', 'amarillo'),
(' sensor7', 'rojo'),
(' sensor8', 'amarillo'),
(' sensor9', 'amarillo'),
(' sensor10', 'error'),
(' sensor11', 'amarillo');

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

--
-- Volcado de datos para la tabla `data_sensors`
--

INSERT INTO `data_sensors` (`id`, `node_id`, `meas_label`, `meas_raw_value`) VALUES
(737, ' sensor5', 'rojo', 88.03721463732522),
(738, ' sensor3', 'error', 138.2346254678573),
(739, ' sensor8', 'rojo', 80.09970120439968),
(740, ' sensor11', 'amarillo', 51.846805666994314),
(741, ' sensor9', 'amarillo', 50.26662399436829),
(742, ' sensor10', 'error', -40.285885685856925),
(743, ' sensor2', 'amarillo', 52.77799889020758),
(744, ' sensor0', 'amarillo', 63.98513525443859),
(745, ' sensor1', 'amarillo', 27.91596866434867),
(746, ' sensor4', 'amarillo', 34.980530403312805),
(747, ' sensor6', 'amarillo', 25.25198856898962),
(748, ' sensor7', 'error', -10.464114229131305),
(749, ' sensor0', 'error', 106.83670717375506),
(750, ' sensor11', 'amarillo', 26.40131023302464),
(751, ' sensor9', 'amarillo', 50.17389538467782),
(752, ' sensor8', 'error', -24.573537634369245),
(753, ' sensor5', 'amarillo', 48.26116873951274),
(754, ' sensor10', 'error', 244.34461175568057),
(755, ' sensor6', 'amarillo', 49.60447270232768),
(756, ' sensor4', 'error', 100.49057077386138),
(757, ' sensor3', 'error', -116.1667277042271),
(758, ' sensor1', 'amarillo', 40.74158450014173),
(759, ' sensor2', 'amarillo', 27.178804718474538),
(760, ' sensor7', 'amarillo', 31.342637451016888),
(761, ' sensor0', 'error', -60.493931239243466),
(762, ' sensor9', 'amarillo', 49.94160163893172),
(763, ' sensor8', 'amarillo', 39.76526637909379),
(764, ' sensor10', 'verde', 3.928828419262331),
(765, ' sensor7', 'error', 102.97252426291558),
(766, ' sensor1', 'amarillo', 38.67706419472318),
(767, ' sensor2', 'error', -31.26973596301528),
(768, ' sensor4', 'amarillo', 46.92541612612708),
(769, ' sensor6', 'amarillo', 52.387145839530525),
(770, ' sensor11', 'amarillo', 27.90908309599948),
(771, ' sensor3', 'error', -32.43069361713792),
(772, ' sensor5', 'amarillo', 40.698715473474486),
(773, ' sensor0', 'amarillo', 23.23086305012104),
(774, ' sensor9', 'amarillo', 50.41428625162821),
(775, ' sensor8', 'error', 118.0459707967311),
(776, ' sensor10', 'amarillo', 70.75357034961826),
(777, ' sensor7', 'error', 127.20076233061886),
(778, ' sensor1', 'error', 217.24859799364705),
(779, ' sensor5', 'verde', 9.76256968280856),
(780, ' sensor2', 'amarillo', 65.50377048925174),
(781, ' sensor6', 'verde', 9.227348619008787),
(782, ' sensor11', 'verde', 12.489427741675975),
(783, ' sensor3', 'error', -121.59142673626025),
(784, ' sensor4', 'amarillo', 37.709984702295515),
(785, ' sensor0', 'amarillo', 68.81254426522061),
(786, ' sensor9', 'amarillo', 50.200385271017325),
(787, ' sensor8', 'amarillo', 60.625686249098315),
(788, ' sensor10', 'rojo', 92.14375308327037),
(789, ' sensor7', 'error', 103.62786147575815),
(790, ' sensor1', 'rojo', 98.19397517373173),
(791, ' sensor4', 'error', 102.74208411339055),
(792, ' sensor2', 'error', -44.836476253364154),
(793, ' sensor11', 'amarillo', 65.89193533735296),
(794, ' sensor6', 'verde', 13.906443210795551),
(795, ' sensor3', 'amarillo', 34.32517893436543),
(796, ' sensor5', 'amarillo', 59.33046881447886),
(797, ' sensor0', 'rojo', 87.75911259926482),
(798, ' sensor9', 'amarillo', 50.310758449679),
(799, ' sensor8', 'rojo', 77.51508353379441),
(800, ' sensor10', 'error', 115.90301967439659),
(801, ' sensor7', 'error', 117.7088437995115),
(802, ' sensor1', 'rojo', 75.05935527313773),
(803, ' sensor3', 'error', -23.46684743552366),
(804, ' sensor4', 'amarillo', 35.819504976664035),
(805, ' sensor11', 'amarillo', 35.50362481126094),
(806, ' sensor2', 'rojo', 89.64520085646441),
(807, ' sensor5', 'amarillo', 29.849900052650227),
(808, ' sensor6', 'error', 132.89520235712848),
(809, ' sensor0', 'error', 108.9830553794218),
(810, ' sensor9', 'amarillo', 49.97594955056378),
(811, ' sensor8', 'rojo', 81.74891923661639),
(812, ' sensor10', 'amarillo', 44.07307418868156),
(813, ' sensor7', 'amarillo', 48.772662223269315),
(814, ' sensor1', 'error', -1.2696581221465806),
(815, ' sensor11', 'amarillo', 32.85091043435867),
(816, ' sensor3', 'verde', 6.721033907026069),
(817, ' sensor6', 'amarillo', 31.92958164495326),
(818, ' sensor5', 'amarillo', 54.17792626040392),
(819, ' sensor2', 'error', -39.514658474996),
(820, ' sensor4', 'verde', 12.804675394780546),
(821, ' sensor0', 'rojo', 75.59649324630976),
(822, ' sensor9', 'amarillo', 50.074879506854906),
(823, ' sensor8', 'amarillo', 48.43754722431534),
(824, ' sensor10', 'error', -60.475882878636966),
(825, ' sensor7', 'rojo', 98.6263195946625),
(826, ' sensor1', 'error', -29.930512378423444),
(827, ' sensor4', 'error', 187.5361070614481),
(828, ' sensor5', 'amarillo', 47.29149900336336),
(829, ' sensor2', 'error', -8.790348251013953),
(830, ' sensor11', 'amarillo', 55.44758742733656),
(831, ' sensor3', 'error', -82.1733789888871),
(832, ' sensor6', 'amarillo', 66.47403177990881),
(833, ' sensor0', 'verde', 15.808481122312607),
(834, ' sensor9', 'amarillo', 49.68073752647349),
(835, ' sensor8', 'error', -46.91607939870704),
(836, ' sensor10', 'error', 186.3178538143594),
(837, ' sensor7', 'amarillo', 49.77523211416253),
(838, ' sensor1', 'amarillo', 52.24797687253517),
(839, ' sensor11', 'amarillo', 48.42171541833878),
(840, ' sensor2', 'verde', 8.979848758570299),
(841, ' sensor5', 'amarillo', 37.33698102934191),
(842, ' sensor6', 'error', -28.169710951169748),
(843, ' sensor3', 'error', 155.63101563921526),
(844, ' sensor4', 'amarillo', 73.8871976991834),
(845, ' sensor0', 'amarillo', 44.72617598599243),
(846, ' sensor9', 'amarillo', 50.12955558881235),
(847, ' sensor8', 'amarillo', 70.17541657895646),
(848, ' sensor10', 'amarillo', 21.482355732189387),
(849, ' sensor1', 'amarillo', 49.21390743321595),
(850, ' sensor7', 'amarillo', 63.02406933202288),
(851, ' sensor11', 'amarillo', 54.53247092356431),
(852, ' sensor4', 'verde', 16.169243398358233),
(853, ' sensor5', 'amarillo', 68.38027452899335),
(854, ' sensor3', 'rojo', 90.38094710071923),
(855, ' sensor6', 'amarillo', 59.60348370473264),
(856, ' sensor2', 'error', 102.69813054780633),
(857, ' sensor0', 'error', 150.00527668601393),
(858, ' sensor9', 'amarillo', 49.53040218025421),
(859, ' sensor8', 'rojo', 79.1578162966336),
(860, ' sensor10', 'error', 145.56997808342533),
(861, ' sensor1', 'error', -47.66604570325522),
(862, ' sensor7', 'error', 137.8098703821832),
(863, ' sensor11', 'amarillo', 56.6141270504435),
(864, ' sensor5', 'amarillo', 27.406536381602965),
(865, ' sensor4', 'error', -5.733717752414613),
(866, ' sensor2', 'rojo', 94.49741570243322),
(867, ' sensor3', 'amarillo', 54.046159144072526),
(868, ' sensor6', 'amarillo', 74.7301948367966),
(869, ' sensor0', 'error', 122.76255376049212),
(870, ' sensor9', 'amarillo', 50.161394263236254),
(871, ' sensor8', 'error', 118.3382634939912),
(872, ' sensor10', 'amarillo', 51.89855728206071),
(873, ' sensor1', 'error', -14.718058778375507),
(874, ' sensor7', 'error', 101.73084048402035),
(875, ' sensor11', 'amarillo', 73.24212460293418),
(876, ' sensor5', 'verde', 7.763554387089144),
(877, ' sensor4', 'amarillo', 40.18717601732631),
(878, ' sensor2', 'amarillo', 34.15430868850877),
(879, ' sensor3', 'rojo', 94.67464555540424),
(880, ' sensor6', 'error', -8.692801685719097),
(881, ' sensor0', 'amarillo', 68.84285873242216),
(882, ' sensor9', 'amarillo', 49.9106738995764),
(883, ' sensor8', 'verde', 15.933176626418863),
(884, ' sensor10', 'error', 163.79342212385072),
(885, ' sensor1', 'amarillo', 66.11767678178737),
(886, ' sensor7', 'error', 212.99639716207184),
(887, ' sensor11', 'amarillo', 34.56655820579163),
(888, ' sensor5', 'amarillo', 24.504395716928343),
(889, ' sensor4', 'rojo', 84.40178490369473),
(890, ' sensor2', 'amarillo', 69.10565491651354),
(891, ' sensor3', 'error', 132.27025203618388),
(892, ' sensor6', 'amarillo', 69.68341607764935),
(893, ' sensor0', 'error', -11.277708505618975),
(894, ' sensor9', 'amarillo', 50.05409263757863),
(895, ' sensor8', 'amarillo', 39.81676949645124),
(896, ' sensor10', 'error', 149.32483454453916),
(897, ' sensor1', 'amarillo', 35.59578951542448),
(898, ' sensor7', 'amarillo', 23.967301988871515),
(899, ' sensor11', 'amarillo', 52.893235402151475),
(900, ' sensor5', 'amarillo', 54.494328668194896),
(901, ' sensor4', 'amarillo', 71.7935531008633),
(902, ' sensor2', 'rojo', 81.36063647647075),
(903, ' sensor3', 'error', 299.6626781335981),
(904, ' sensor6', 'verde', 10.315959947808956),
(905, ' sensor0', 'verde', 19.988452867999914),
(906, ' sensor9', 'amarillo', 50.09350123145548),
(907, ' sensor8', 'amarillo', 32.692303692094214),
(908, ' sensor10', 'error', -12.88668276982439),
(909, ' sensor1', 'verde', 18.811660449706917),
(910, ' sensor7', 'verde', 12.793056881133488),
(911, ' sensor11', 'verde', 13.196510670656401),
(912, ' sensor5', 'amarillo', 21.719926154576072),
(913, ' sensor4', 'error', -146.36902618385366),
(914, ' sensor2', 'amarillo', 61.693980319441245),
(915, ' sensor3', 'error', -55.47582863774606),
(916, ' sensor6', 'rojo', 90.09741430972616),
(917, ' sensor0', 'amarillo', 43.121303217266494),
(918, ' sensor9', 'amarillo', 49.83713441905793),
(919, ' sensor8', 'amarillo', 26.845669013734977),
(920, ' sensor10', 'error', 110.45348290967652),
(921, ' sensor1', 'rojo', 85.00625110472939),
(922, ' sensor7', 'rojo', 92.57966936666233),
(923, ' sensor11', 'amarillo', 48.36513096878597),
(924, ' sensor5', 'amarillo', 25.385871262910328),
(925, ' sensor4', 'verde', 8.082797937445648),
(926, ' sensor2', 'amarillo', 40.47974365511082),
(927, ' sensor3', 'error', -96.729350055639),
(928, ' sensor6', 'amarillo', 71.59007287362),
(929, ' sensor0', 'amarillo', 24.355833438581513),
(930, ' sensor9', 'amarillo', 49.8925414649056),
(931, ' sensor8', 'rojo', 76.06392354578139),
(932, ' sensor10', 'amarillo', 27.228493072359903),
(933, ' sensor1', 'error', -14.771657052412777),
(934, ' sensor7', 'error', -95.71810570252603),
(935, ' sensor11', 'amarillo', 61.90333947455764),
(936, ' sensor5', 'amarillo', 63.26105836748978),
(937, ' sensor4', 'rojo', 82.05093481971308),
(938, ' sensor2', 'amarillo', 65.24550911968255),
(939, ' sensor3', 'error', -68.82698564284543),
(940, ' sensor6', 'error', 118.8185072114499),
(941, ' sensor0', 'amarillo', 68.56451447727224),
(942, ' sensor9', 'amarillo', 50.35836064868548),
(943, ' sensor8', 'error', 120.97006318587545),
(944, ' sensor10', 'amarillo', 47.126309074403956),
(945, ' sensor1', 'error', 135.39214341780337),
(946, ' sensor7', 'error', -126.46231569559941),
(947, ' sensor11', 'amarillo', 59.43139921401989),
(948, ' sensor5', 'amarillo', 54.0841318575832),
(949, ' sensor4', 'error', 133.89381708166025),
(950, ' sensor2', 'error', -25.805357830213026),
(951, ' sensor3', 'error', 194.91705013797875),
(952, ' sensor6', 'error', -11.007769057343737),
(953, ' sensor0', 'rojo', 77.76428084845709),
(954, ' sensor9', 'amarillo', 49.618707900097775),
(955, ' sensor8', 'amarillo', 60.33791791853083),
(956, ' sensor10', 'rojo', 83.40707831527206),
(957, ' sensor1', 'amarillo', 49.54253506843661),
(958, ' sensor7', 'amarillo', 72.24113291052302),
(959, ' sensor11', 'verde', 13.030075451990555),
(960, ' sensor5', 'amarillo', 40.809767597003194),
(961, ' sensor4', 'amarillo', 48.7774555777929),
(962, ' sensor2', 'rojo', 98.20408750363617),
(963, ' sensor3', 'verde', 7.238198003071574),
(964, ' sensor6', 'amarillo', 71.69576239373933),
(965, ' sensor0', 'error', -89.32230919344556),
(966, ' sensor9', 'amarillo', 50.04992447305242),
(967, ' sensor8', 'error', 125.89041671128085),
(968, ' sensor10', 'amarillo', 66.02163870621007),
(969, ' sensor1', 'verde', 12.213379096783953),
(970, ' sensor7', 'rojo', 96.41308441728869),
(971, ' sensor11', 'amarillo', 24.59326705951368),
(972, ' sensor5', 'amarillo', 34.70659910383175),
(973, ' sensor4', 'error', 104.43858272325139),
(974, ' sensor2', 'verde', 6.787306703988804),
(975, ' sensor3', 'error', -64.46154462414164),
(976, ' sensor6', 'verde', 18.385903859993345);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

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
