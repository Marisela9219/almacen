-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-03-2023 a las 02:46:45
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ventas_ci`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'MEDICAMENTOS', 'MEDICAMENTOS', 1),
(2, 'MATERIALES', 'MATERIALES', 1),
(3, 'ODONTOLOGIA', 'ODONTOLOGIA', 1),
(4, 'LABORATORIO CLINICO', 'LABORATORIO CLINICO', 1),
(5, 'EQUIPO Y REPUESTOS ', 'EQUIPO Y REPUESTOS', 1),
(6, 'MATERIA PRIMA', 'MATERIA PRIMA', 1),
(7, 'prueba', 'prueba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_requisiciones`
--

CREATE TABLE `detalle_requisiciones` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `venta_id` int(11) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `importe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_requisiciones`
--

INSERT INTO `detalle_requisiciones` (`id`, `producto_id`, `venta_id`, `precio`, `cantidad`, `importe`) VALUES
(1, 1, 1, '0.15', '200', '30.00'),
(2, 3, 1, '5.20', '5', '26.00'),
(3, 1, 2, '0.15', '10000', '1500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `lote` varchar(100) DEFAULT NULL,
  `fecha_vence` date DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `almacen_id` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `descripcion`, `lote`, `fecha_vence`, `proveedor_id`, `precio`, `stock`, `almacen_id`, `estado`) VALUES
(1, '103-0050', 'ACETAMINOFEN 500 MG', 'ACETAMINOFEN 500 MG', '202202', '2024-02-15', 3, '0.15', -9200, 1, 1),
(2, '205-8310', 'PAPEL FILTRO', 'PAPEL FILTRO', 'AD4522', '2024-10-10', 33, '1.5', 1000, 2, 1),
(3, '205-6235', 'TARJETAS P/ MEDIR SENSIBILIDAD GRAM Ó TARJETA', 'TARJETAS P/ MEDIR SENSIBILIDAD GRAM Ó TARJETA DE IDENTIFICACIÓN SENSIBILIDAD POSITIVA', 'G45F5', '2023-10-01', 57, '5.20', 5, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, ' GLOBAL MEDIC', ' GLOBAL MEDIC', 1),
(2, ' DEVOLUCION FARMACIA REGIONAL', ' DEVOLUCION FARMACIA REGIONAL', 1),
(3, ' CEFA SA DE CV', ' CEFA SA DE CV', 1),
(4, ' PROMOCION MEDICA DE EL SALVADOR S.A. DE C.V.', ' PROMOCION MEDICA DE EL SALVADOR S.A. DE C.V.', 1),
(5, ' SCIENTIFIC INSTRUMENTS', ' SCIENTIFIC INSTRUMENTS', 1),
(6, ' SIEMENS HEALTHCARE', ' SIEMENS HEALTHCARE', 1),
(7, ' DISTRIBUIDORA DE PRODUCTOS PARA LA SALUD S.A', ' DISTRIBUIDORA DE PRODUCTOS PARA LA SALUD S.A. DE C.V.', 1),
(8, ' SUPLIMED S.A. DE C.V.', ' SUPLIMED S.A. DE C.V.', 1),
(9, ' INFRA DE EL SALVADOR', ' INFRA DE EL SALVADOR', 1),
(10, ' LABORATORIOS SUIZOS', ' LABORATORIOS SUIZOS', 1),
(11, ' MEGA FOODS DE ELSALVADOR', ' MEGA FOODS DE ELSALVADOR', 1),
(12, ' TERAN INTERNATIONAL', ' TERAN INTERNATIONAL', 1),
(13, ' RED-MEDYCI', ' RED-MEDYCI', 1),
(14, ' GRUPO ESTRELLA S.A. DE C.V.', ' GRUPO ESTRELLA S.A. DE C.V.', 1),
(15, ' SUMINISTROS L.R', ' SUMINISTROS L.R', 1),
(16, ' COMERCIO Y REPRESENTACIONES', ' COMERCIO Y REPRESENTACIONES', 1),
(17, ' EQUIPOS PARA LABORATORIOS', ' EQUIPOS PARA LABORATORIOS', 1),
(18, ' CAD MEYER', ' CAD MEYER', 1),
(19, ' INNOVACION GLOBAL S.A DE C.V', ' INNOVACION GLOBAL S.A DE C.V', 1),
(20, ' TECNOLOGIA Y ESPECIALIDADES MEDICAS', ' TECNOLOGIA Y ESPECIALIDADES MEDICAS', 1),
(21, ' POR SU SALUD', ' POR SU SALUD', 1),
(22, ' PRODUCTOS DE DIAGNOSTICO Y LABORATORIO', ' PRODUCTOS DE DIAGNOSTICO Y LABORATORIO', 1),
(23, ' PRGANIZACION PANAMERICANA DE MERCADEO SOCIAL', ' PRGANIZACION PANAMERICANA DE MERCADEO SOCIAL DE EL SALVADOR', 1),
(24, ' ANEQSA INSUMOS MEDICOS Y EQUIPOS', ' ANEQSA INSUMOS MEDICOS Y EQUIPOS', 1),
(25, ' OXI-RENT', ' OXI-RENT', 1),
(26, ' DISTRIBUIDORA MARANATHA', ' DISTRIBUIDORA MARANATHA', 1),
(27, ' DUPAV S.A DE C.V', ' DUPAV S.A DE C.V', 1),
(28, ' DADA & DADA', ' DADA & DADA', 1),
(29, ' CORPORACION 2020', ' CORPORACION 2020', 1),
(30, ' CORPORACION ORBITAL', ' CORPORACION ORBITAL', 1),
(31, ' DIAGNOSTIKA CAPRIS S.A. DE C.V.', ' DIAGNOSTIKA CAPRIS S.A. DE C.V.', 1),
(32, ' DROGUERIA CASAMED S.A. DE C.V.', ' DROGUERIA CASAMED S.A. DE C.V.', 1),
(33, ' SUPLIDORES DIVERSOS S.A. DE C.V.', ' SUPLIDORES DIVERSOS S.A. DE C.V.', 1),
(34, ' ENDOMED', ' ENDOMED', 1),
(35, ' DROGUERIA NUEVA SAN CARLOS S.A DE C.V', ' DROGUERIA NUEVA SAN CARLOS S.A DE C.V', 1),
(36, ' INTERNATIONAL PHARMACEUTICAL SUPPLIERS S.A D', ' INTERNATIONAL PHARMACEUTICAL SUPPLIERS S.A DE C.V', 1),
(37, ' B. BRAUN MEDICAL CENTRAL AMERICA & CARIBE SA', ' B. BRAUN MEDICAL CENTRAL AMERICA & CARIBE SA DE CV', 1),
(38, ' DROGUERIA AMERICANA S.A DE C.V', ' DROGUERIA AMERICANA S.A DE C.V', 1),
(39, ' DROGUERIA SANTA LUCIA S.A. DE C.V.', ' DROGUERIA SANTA LUCIA S.A. DE C.V.', 1),
(40, ' FABRICACI?N DE PRODUCTOS QU?MICOS', ' FABRICACI?N DE PRODUCTOS QU?MICOS', 1),
(41, ' QU?MICAS VISI?N S.A. DE C.V.', ' QU?MICAS VISI?N S.A. DE C.V.', 1),
(42, ' MATRICERIA INDUSTRIAL ROXY', ' MATRICERIA INDUSTRIAL ROXY', 1),
(43, ' INGENIO LA CABA?A', ' INGENIO LA CABA?A', 1),
(44, ' DISTRIBUIDORA UNIDA INDUSTRIAL', ' DISTRIBUIDORA UNIDA INDUSTRIAL', 1),
(45, ' BRENNTAG EL SALVADOR', ' BRENNTAG EL SALVADOR', 1),
(46, ' INVERSIONES CAPITOL', ' INVERSIONES CAPITOL', 1),
(47, ' TIENDA MORENA S.A. DE C.V.', ' TIENDA MORENA S.A. DE C.V.', 1),
(48, ' SALVAPLASTIC', ' SALVAPLASTIC', 1),
(49, ' LABORATORIOS VIJOSA', ' LABORATORIOS VIJOSA', 1),
(50, ' GRUPO PAILL', ' GRUPO PAILL', 1),
(51, ' C IMBERTON S.A. DE C.V.', ' C IMBERTON S.A. DE C.V.', 1),
(52, ' DEVOLUCI?N FARMACIA HMC', ' DEVOLUCI?N FARMACIA HMC', 1),
(53, ' FALMAR', ' FALMAR', 1),
(54, ' FAE/HMC', ' FAE/HMC', 1),
(55, ' DROGUERIA UNIVERSAL', ' DROGUERIA UNIVERSAL', 1),
(56, ' LILLIAM MERCEDES MU?OZ DE HANDAL', ' LILLIAM MERCEDES MU?OZ DE HANDAL', 1),
(57, ' SURTIMEDIC SA DE CV', ' SURTIMEDIC SA DE CV', 1),
(58, ' OVIDIO J VIDES', ' OVIDIO J VIDES', 1),
(59, ' DROGUERIA ORGANIZACION PANAMERICANA DE MERCA', ' DROGUERIA ORGANIZACION PANAMERICANA DE MERCADEO SOCIAL DE EL SALVADOR', 1),
(60, ' LABORATORIOS TERAMED', ' LABORATORIOS TERAMED', 1),
(61, ' QUIMEX SA DE CV', ' QUIMEX SA DE CV', 1),
(62, ' VACUNA SA DE CV', ' VACUNA SA DE CV', 1),
(63, ' TECHNO INVERSIONES SA DE CV', ' TECHNO INVERSIONES SA DE CV', 1),
(64, ' GUARDADO SA DE CV', ' GUARDADO SA DE CV', 1),
(65, ' DROGUERIA PISA DE EL SALVADOR SA DE CV', ' DROGUERIA PISA DE EL SALVADOR SA DE CV', 1),
(66, ' ACTIVA SA DE SV', ' ACTIVA SA DE SV', 1),
(67, ' DROGUER?A FARMAC?UTICA SA DE CV', ' DROGUER?A FARMAC?UTICA SA DE CV', 1),
(68, ' FARMACIA EUROPEA SA DE CV', ' FARMACIA EUROPEA SA DE CV', 1),
(69, ' SEVEN PHARMA EL SALVADOR', ' SEVEN PHARMA EL SALVADOR', 1),
(70, ' SEVEN PHARMA EL SALVADOR', ' SEVEN PHARMA EL SALVADOR', 1),
(71, ' DROGUERIA INTEGRAL', ' DROGUERIA INTEGRAL', 1),
(72, ' DROGUERIA HERLETT S.A. DE C.V.', ' DROGUERIA HERLETT S.A. DE C.V.', 1),
(73, ' PROVEEDORES QUIRURGICOS SA DE CV', ' PROVEEDORES QUIRURGICOS SA DE CV', 1),
(74, ' SIN ESPECIFICAR', ' SIN ESPECIFICAR', 1),
(75, ' CASELA', ' CASELA', 1),
(76, ' TECNO DIAGNOSTICA DE EL SALVADOR S.A. DE C.V', ' TECNO DIAGNOSTICA DE EL SALVADOR S.A. DE C.V.', 1),
(77, ' METZGER INDUSTRIAL SUPPLIES', ' METZGER INDUSTRIAL SUPPLIES', 1),
(78, ' DINVER', ' DINVER', 1),
(79, ' PHARMACEUTICALS', ' PHARMACEUTICALS', 1),
(80, ' MINISTERIO DE GOBERNACI?N Y DESARROLLO TERRI', ' MINISTERIO DE GOBERNACI?N Y DESARROLLO TERRITORIAL', 1),
(81, ' FARMACIA HMC', ' FARMACIA HMC', 1),
(82, ' ASOCIACION CRISTIANA DE LAS BUENAS NUEVAS', ' ASOCIACION CRISTIANA DE LAS BUENAS NUEVAS', 1),
(83, ' INGRESO DE ALMACEN', ' INGRESO DE ALMACEN', 1),
(84, ' MEDIDENT S.A DE C.V', ' MEDIDENT S.A DE C.V', 1),
(85, ' NIPRO MEDICAL CORPORATION', ' NIPRO MEDICAL CORPORATION', 1),
(86, ' MINISTERIO DE SALUD PUBLICA Y ASISTENCIA SOC', ' MINISTERIO DE SALUD PUBLICA Y ASISTENCIA SOCIAL/CENABI', 1),
(87, ' MONTREAL', ' MONTREAL', 1),
(88, ' LILIAN ELENA PE?A GUADRON DE VILASECA CORPOR', ' LILIAN ELENA PE?A GUADRON DE VILASECA CORPORACI?N DENTAL DE EL SALVADOR)', 1),
(89, ' FUNDACI?N PARA LA SALUD Y EL DESARROLLO HUMA', ' FUNDACI?N PARA LA SALUD Y EL DESARROLLO HUMANO', 1),
(90, ' EQUIMSA', ' EQUIMSA', 1),
(91, ' SALVAMEDICA', ' SALVAMEDICA', 1),
(92, ' DIPROMEQUI', ' DIPROMEQUI', 1),
(93, ' LABORATORIO DB', ' LABORATORIO DB', 1),
(94, ' BIOMEDICA LEMUS', ' BIOMEDICA LEMUS', 1),
(95, ' BTL DE EL SALVADOR', ' BTL DE EL SALVADOR', 1),
(96, ' COMERCIAL SALVADORE?A S.A. DE C.V.', ' COMERCIAL SALVADORE?A S.A. DE C.V.', 1),
(97, ' DROGUER?A EUROPEA', ' DROGUER?A EUROPEA', 1),
(98, ' LABORATORIOS ARSAL', ' LABORATORIOS ARSAL', 1),
(99, ' EQUITEC S.A. DE C.V.', ' EQUITEC S.A. DE C.V.', 1),
(100, ' BATALLON DE SANIDAD MILITAR', ' BATALLON DE SANIDAD MILITAR', 1),
(101, ' SMITH BUEKLIN', ' SMITH BUEKLIN', 1),
(102, ' MENFAR ', ' MENFAR ', 1),
(103, ' SERVICIOS T?CNICOS M?DICOS S.A. DE C.V.', ' SERVICIOS T?CNICOS M?DICOS S.A. DE C.V.', 1),
(104, ' PROVEEDORES QUIRURGICOS', ' PROVEEDORES QUIRURGICOS', 1),
(105, ' DISTRIBUIDORA DE PRODUCTOS PARA LA SALUD S.A', ' DISTRIBUIDORA DE PRODUCTOS PARA LA SALUD S.A. DE C.V.', 1),
(106, ' SISTEMAS BIOM?DICOS S.A. DE C.V.', ' SISTEMAS BIOM?DICOS S.A. DE C.V.', 1),
(107, ' LILIAM MERCEDES SANCHES DE HANDAL', ' LILIAM MERCEDES SANCHES DE HANDAL', 1),
(108, ' RAF S.A. DE C.V.', ' RAF S.A. DE C.V.', 1),
(109, ' SOCIEDAD LILIAN ELENA PE?A CORPORACI?N DENTA', ' SOCIEDAD LILIAN ELENA PE?A CORPORACI?N DENTAL DE EL SALVADOR)', 1),
(110, ' CORPORACI?N NOBLE S.A. DE C.V.', ' CORPORACI?N NOBLE S.A. DE C.V.', 1),
(111, ' SOCIEDAD LETERAGO', ' SOCIEDAD LETERAGO', 1),
(112, ' NET SOLUTIONS', ' NET SOLUTIONS', 1),
(113, ' EUROSAL', ' EUROSAL', 1),
(114, ' C & M INDUSTRIAL', ' C & M INDUSTRIAL', 1),
(115, ' FUNDACI?N VIJOSA', ' FUNDACI?N VIJOSA', 1),
(116, ' C & B SUMINISTROS QUIR?RGICOS', ' C & B SUMINISTROS QUIR?RGICOS', 1),
(117, ' RGH DE EL SALVADOR ', ' RGH DE EL SALVADOR ', 1),
(118, ' SERVICIOS QUIRURGICOS DE EL SALVADOR S.A DE ', ' SERVICIOS QUIRURGICOS DE EL SALVADOR S.A DE C.V', 1),
(119, ' ESERSKI HERMANOS', ' ESERSKI HERMANOS', 1),
(120, ' PROMEFAR SA DE CV', ' PROMEFAR SA DE CV', 1),
(121, ' PROCESOS MET?LICOS S.A. DE C.V.', ' PROCESOS MET?LICOS S.A. DE C.V.', 1),
(122, ' DPTO. DE LAB. DE PRODUCCION DSMFFA.', ' DPTO. DE LAB. DE PRODUCCION DSMFFA.', 1),
(123, ' DPG', ' DPG', 1),
(124, ' S.T MEDIC S.A DE C.V', ' S.T MEDIC S.A DE C.V', 1),
(125, ' ENMILEN', ' ENMILEN', 1),
(126, ' FARMACIAS CEFAFA', ' FARMACIAS CEFAFA', 1),
(127, ' DROGUERIA DIPROFAR', ' DROGUERIA DIPROFAR', 1),
(128, ' ORGANIZACION PANAMERICANA DE MERCADEO SOCIAL', ' ORGANIZACION PANAMERICANA DE MERCADEO SOCIAL DE EL SALVADOR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requisiciones`
--

CREATE TABLE `requisiciones` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `serie` varchar(45) DEFAULT NULL,
  `num_documento` int(11) NOT NULL,
  `tipo_comprobante_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `requisiciones`
--

INSERT INTO `requisiciones` (`id`, `fecha`, `subtotal`, `total`, `cliente_id`, `usuario_id`, `serie`, `num_documento`, `tipo_comprobante_id`) VALUES
(1, '2023-03-12', '56.00', '56.00', 1, 1, '', 0, 1),
(2, '2023-03-29', '1500.00', '1500.00', 1, 1, '1', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_comprobante`
--

CREATE TABLE `tipo_comprobante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `igv` int(11) DEFAULT NULL,
  `serie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_comprobante`
--

INSERT INTO `tipo_comprobante` (`id`, `nombre`, `cantidad`, `igv`, `serie`) VALUES
(1, 'Requisicion', 1000000000, 0, 1),
(2, 'Devolucion', 1000000000, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `nombre`, `cantidad`) VALUES
(1, 'Ticket', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `umilitar`
--

CREATE TABLE `umilitar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `num_documento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `umilitar`
--

INSERT INTO `umilitar` (`id`, `nombre`, `estado`, `num_documento`) VALUES
(1, 'EMCFA', 1, NULL),
(2, 'MDN', 1, NULL),
(3, 'Destacamento militar 1', 0, NULL),
(4, 'DESTACAMENTO MILITAR 1', 1, NULL),
(5, 'DESTACAMENTO MILITAR 2', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `telefono`, `email`, `username`, `password`, `rol_id`, `estado`) VALUES
(1, 'Admin', 'Admin', '22222222', 'admin@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `detalle_requisiciones`
--
ALTER TABLE `detalle_requisiciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_venta_detalle_idx` (`venta_id`),
  ADD KEY `fk_producto_detalle_idx` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD UNIQUE KEY `codigo_UNIQUE` (`codigo`),
  ADD KEY `fk_almacen_producto_idx` (`almacen_id`) USING BTREE;

--
-- Indices de la tabla `requisiciones`
--
ALTER TABLE `requisiciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `umilitar`
--
ALTER TABLE `umilitar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_rol_usuarios_idx` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalle_requisiciones`
--
ALTER TABLE `detalle_requisiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `requisiciones`
--
ALTER TABLE `requisiciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_comprobante`
--
ALTER TABLE `tipo_comprobante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `umilitar`
--
ALTER TABLE `umilitar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_requisiciones`
--
ALTER TABLE `detalle_requisiciones`
  ADD CONSTRAINT `fk_producto_detalle` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_venta_detalle` FOREIGN KEY (`venta_id`) REFERENCES `requisiciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_categoria_producto` FOREIGN KEY (`almacen_id`) REFERENCES `almacenes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_rol_usuarios` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
