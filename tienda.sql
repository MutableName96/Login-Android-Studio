-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2024 a las 19:18:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `categoria` varchar(90) NOT NULL,
  `condicion` varchar(50) NOT NULL,
  `marca` varchar(70) NOT NULL,
  `disponibilidad` tinyint(1) DEFAULT 1,
  `precio` double NOT NULL,
  `ganancia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `descripcion`, `categoria`, `condicion`, `marca`, `disponibilidad`, `precio`, `ganancia`) VALUES
(1, 'producto caliz', 'yo no se brother	', 'Electronica', 'Nuevo', 'Xiaomi', 0, 500, 425),
(2, 'producto xd ', 'dsfsdfsdfsdf', 'Computación', 'Usado', 'JAVA', 0, 1200, 1020),
(3, 'otro', '1312312', 'Salud', 'Usado', 'jojo', 0, 1000, 850),
(4, 'laptop HP', '1312312', 'Computación', 'Nuevo', 'HP', 0, 5000, 4250),
(5, 'jijija', 'sepa brother', 'Electronica', 'Nuevo', 'Xiaomi', 0, 1200, 1020),
(6, 'jijija', 'sepa brother', 'Electronica', 'Nuevo', 'Xiaomi', 0, 1200, 1020),
(7, 'dsfsdf', 'dfs', 'Electronica', 'Nuevo', 'fds', 0, 120, 102),
(8, 'nuevo producto jeje', 'este producto esta bien feo', 'Herramientas', 'Nuevo', 'xiaomi', 1, 5600, 4760),
(9, 'nuevo producto jeje', 'este producto esta bien feo', 'Herramientas', 'Nuevo', 'xiaomi', 0, 5600, 4760),
(10, 'Jabon zote', 'para que le laves el fundillo	', 'Belleza', 'Nuevo', 'Zote', 0, 22, 18.7),
(11, 'xbox 360', 'jala al 100 papi calale', 'Consolas', 'Usado', 'Xbox', 0, 3500, 2975),
(12, 'laptop', 'lenovo', 'Computación', 'Nuevo', 'lenovo', 0, 125, 106.25),
(13, 'laptop', 'lenovo', 'Computación', 'Nuevo', 'lenovo', 0, 125, 106.25),
(14, 'Laptop HP', 'lenovo	', 'Electronica', 'Nuevo', 'Xiaomi', 0, 1200, 1020),
(15, 'Consola Xbox 360 4GB', 'Esta consola sirve para mostrar al mundo todo	', 'Electronica', 'Nuevo', 'Xiaomi', 0, 3200, 2720),
(16, 'Nuevo de caliz', 'Producto diseñado para la limpieza del hofa para la gente	', 'Electronica', 'Nuevo', 'Xiaomi', 0, 1200, 1020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `tipo_usuario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `telefono`, `correo`, `usuario`, `password`, `tipo_usuario`) VALUES
(1, 'Jose hernandez', '4431677513', 'hndz@gmail.com', 'JoseH', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario'),
(2, 'dsfsdf', '1234', 'srrwerew', '213213', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario'),
(3, 'ivan', '1', 'sepa', 'IJDFKSF', '356a192b7913b04c54574d18c28d46e6395428ab', 'usuario'),
(4, 'toño tiñin', '999', 'dsfsd', 'TIONGODS', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario'),
(5, 'damial lopez', '66', '1313', 'Damianzito', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario'),
(6, 'carrion zangano', '01800perra', 'zangano@gmial.tecnm', 'pilatos', '8cb2237d0679ca88db6464eac60da96345513964', 'usuario'),
(11, '1', '111', '1', '1', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'usuario'),
(12, '2', '222', '2', '2', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9', 'usuario'),
(13, 'sada', 'ads', 'ads', '99', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'usuario'),
(14, 'sdfsd', '99', 'dfsd', 'dsf', '44cef431f67acb94eea6b80b7160b5e9d82e0bcc', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_compras`
--

CREATE TABLE `usuarios_compras` (
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_compra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_compras`
--

INSERT INTO `usuarios_compras` (`id_usuario`, `id_producto`, `fecha_compra`) VALUES
(3, 1, '2024-05-01 22:24:05'),
(3, 2, '2024-05-01 22:25:24'),
(3, 3, '2024-05-01 22:25:33'),
(3, 4, '2024-05-01 22:25:27'),
(3, 5, '2024-05-01 22:30:01'),
(3, 6, '2024-05-01 22:30:25'),
(3, 7, '2024-05-01 22:34:43'),
(3, 9, '2024-05-01 22:37:39'),
(4, 11, '2024-05-03 11:50:42'),
(4, 14, '2024-05-05 11:03:23'),
(4, 15, '2024-05-05 09:25:19'),
(4, 16, '2024-05-05 11:03:12'),
(5, 1, '2024-05-03 11:42:58'),
(5, 10, '2024-05-03 11:42:15'),
(11, 12, '2024-05-03 12:04:01'),
(12, 13, '2024-05-03 12:06:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_publicaciones`
--

CREATE TABLE `usuarios_publicaciones` (
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_publicacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_publicaciones`
--

INSERT INTO `usuarios_publicaciones` (`id_usuario`, `id_producto`, `fecha_publicacion`) VALUES
(3, 3, '2024-05-01 21:51:01'),
(3, 4, '2024-05-01 21:52:08'),
(3, 5, '2024-05-01 22:29:43'),
(3, 6, '2024-05-01 22:29:55'),
(3, 7, '2024-05-01 22:34:35'),
(3, 8, '2024-05-01 22:37:04'),
(3, 9, '2024-05-01 22:37:29'),
(4, 14, '2024-05-05 08:47:59'),
(4, 15, '2024-05-05 08:57:29'),
(4, 16, '2024-05-05 10:07:07'),
(5, 10, '2024-05-03 11:34:12'),
(5, 11, '2024-05-03 11:44:03'),
(11, 12, '2024-05-03 12:02:26'),
(11, 13, '2024-05-03 12:03:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_ventas`
--

CREATE TABLE `usuarios_ventas` (
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha_venta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_ventas`
--

INSERT INTO `usuarios_ventas` (`id_usuario`, `id_producto`, `fecha_venta`) VALUES
(4, 14, '2024-05-05 11:03:23'),
(4, 15, '2024-05-05 09:25:19'),
(4, 16, '2024-05-05 11:03:12'),
(5, 10, '2024-05-03 11:42:15'),
(5, 11, '2024-05-03 11:50:42'),
(11, 12, '2024-05-03 12:04:01'),
(11, 13, '2024-05-03 12:06:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `telefono` (`telefono`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `usuarios_compras`
--
ALTER TABLE `usuarios_compras`
  ADD PRIMARY KEY (`id_usuario`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuarios_publicaciones`
--
ALTER TABLE `usuarios_publicaciones`
  ADD PRIMARY KEY (`id_usuario`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `usuarios_ventas`
--
ALTER TABLE `usuarios_ventas`
  ADD PRIMARY KEY (`id_usuario`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuarios_compras`
--
ALTER TABLE `usuarios_compras`
  ADD CONSTRAINT `usuarios_compras_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `usuarios_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `usuarios_publicaciones`
--
ALTER TABLE `usuarios_publicaciones`
  ADD CONSTRAINT `usuarios_publicaciones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `usuarios_publicaciones_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `usuarios_ventas`
--
ALTER TABLE `usuarios_ventas`
  ADD CONSTRAINT `usuarios_ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `usuarios_ventas_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
