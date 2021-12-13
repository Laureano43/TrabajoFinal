-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-12-2021 a las 05:39:46
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
-- Base de datos: `tiendapadel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(10) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `precio` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `descripcion`, `categoria`, `imagen`, `precio`) VALUES
(1, 'Head Pala Padel Evo Sanyo', 'Palas', '/images/head-pala-padel-evo-sanyo.jpg', 29000),
(2, 'Head Pala Padel Flash', 'Palas', '/images/head-pala-padel-flash.jpg', 10000),
(3, 'Head Pala Padel Flash Rosa', 'Palas', '/images/head-pala-padel-flash-2.jpg', 8000),
(4, 'Head Pala Padel Graphene 360 Delta Hybrid', 'Palas', '/images/head-pala-padel-graphene-360-delta-hybrid.jpg', 45000),
(5, 'Head Pala Padel Graphene 360 Delta Motion', 'Palas', '/images/head-pala-padel-graphene-360-delta-motion.jpg', 40000),
(6, 'Remera Chomba Padel Vairo Polo Grapheno Speed Profesional', 'Remeras', '/images/Vairo.webp', 4000),
(7, 'Remera Sublimada World Padel Tour Alejandro Galan 2021', 'Remeras', '/images/Cupra.webp', 3800),
(8, 'Zapatillas Tenis K Tour Hombre Wilson Padel All', 'Zapas', '/images/ZapaWilson.webp', 20000),
(9, 'Zapatillas Yonex Lumio 2 Tenis Padel Hombre', 'Zapas', '/images/ZapaYonex.webp', 22000),
(10, 'Zapatillas Tenis K Energy Mujer Wilson Padel All Court', 'Zapas', '/images/ZapaWilsonMujer.webp', 21000),
(11, 'Zapatilla Topper Tie Break Adulto Tenis Blanco', 'Zapas', '/images/ZapaTopper.webp', 6300),
(12, 'Zapatillas Padel Babolat Jet Men Tenis Hombre Paddle', 'Zapas', '/images/ZapaBabolat.webp', 36000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranking`
--

CREATE TABLE `ranking` (
  `id` int(10) NOT NULL,
  `posicion` int(3) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `puntos` int(5) NOT NULL DEFAULT 0,
  `genero` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ranking`
--

INSERT INTO `ranking` (`id`, `posicion`, `nombre`, `nacionalidad`, `puntos`, `genero`) VALUES
(1, 1, 'Alejandro Galán', 'España', 12535, 'M'),
(2, 2, 'Juan Lebrón', 'España', 12535, 'M'),
(3, 3, 'Martín Di Nenno', 'Argentina', 11910, 'M'),
(4, 4, 'Franco Navarro', 'España', 11675, 'M'),
(5, 5, 'Agustín Tapia', 'Argentina', 9290, 'M'),
(6, 6, 'Daniel Gutiérrez', 'Argentina', 8700, 'M'),
(7, 7, 'Fernando Belasteguín', 'Argentina', 7740, 'M'),
(8, 8, 'Franco Stupaczuk', 'Argentina', 7515, 'M'),
(9, 9, 'Alejandro Ruiz', 'España', 7085, 'M'),
(10, 10, 'Federico Chingotto', 'Argentina', 6515, 'M'),
(11, 11, 'Juan Tello', 'Argentina', 6515, 'M'),
(12, 12, 'Pablo Lima', 'Brasil', 6125, 'M'),
(13, 13, 'Maximiliano Sánchez', 'Argentina', 5035, 'M'),
(14, 14, 'Luciano Capra', 'Argentina', 4756, 'M'),
(15, 15, 'Javier Rico', 'España', 3673, 'M'),
(16, 16, 'Arturo Coello', 'España', 3491, 'M'),
(17, 17, 'Jerónimo González', 'España', 3438, 'M'),
(18, 18, 'Miguel Lamperti', 'Argentina', 2960, 'M'),
(19, 19, 'Miguel Yanguas', 'España', 2659, 'M'),
(20, 20, 'Javier Ruiz', 'España', 2645, 'M'),
(21, 1, 'Gemma Triai', 'España', 13820, 'F'),
(22, 2, 'Alejandra Salazar', 'España', 13300, 'F'),
(23, 3, 'Ariana Sánchez', 'España', 11065, 'F'),
(24, 4, 'Paula Martín', 'España', 10520, 'F'),
(25, 5, 'Tamara Icardo', 'España', 7294, 'F'),
(26, 6, 'Delfina Brea', 'Argentina', 7270, 'F'),
(27, 7, 'Lucía Sainz', 'España', 7145, 'F'),
(28, 8, 'Patricia Llaguno', 'España', 6955, 'F'),
(29, 9, 'Maria Virginia Riera', 'Argentina', 6770, 'F'),
(30, 10, 'Beatriz González', 'España', 5735, 'F'),
(31, 11, 'Marta Marrero', 'España', 5530, 'F'),
(32, 12, 'Marta Ortega', 'España', 5185, 'F'),
(33, 13, 'Aranzazu Osoro', 'Argentina', 5115, 'F'),
(34, 14, 'Victoria Iglesias', 'España', 4885, 'F'),
(35, 15, 'María Jose Sánchez', 'España', 3200, 'F'),
(36, 16, 'María Pilar Sánchez', 'España', 3030, 'F'),
(37, 17, 'Elisabet Amatriaín', 'España', 2648, 'F'),
(38, 18, 'Carolina Navarro', 'España', 2371, 'F'),
(39, 19, 'Jessica Castello', 'España', 2176, 'F'),
(40, 20, 'Alix Collombon', 'Francia', 2113, 'F');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
