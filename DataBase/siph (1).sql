-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2024 a las 22:29:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `siph`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concejo`
--

CREATE TABLE `concejo` (
  `idcon` bigint(20) NOT NULL,
  `idper` bigint(20) DEFAULT NULL,
  `tipcon` int(5) DEFAULT NULL,
  `idprd` bigint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `idcof` int(5) NOT NULL,
  `nitcof` varchar(255) DEFAULT NULL,
  `titcof` varchar(100) DEFAULT NULL,
  `imgcof` varchar(255) DEFAULT NULL,
  `descof` varchar(255) DEFAULT NULL,
  `piecof` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docu`
--

CREATE TABLE `docu` (
  `iddoc` bigint(10) NOT NULL,
  `nomdoc` varchar(200) DEFAULT NULL,
  `idper` bigint(20) DEFAULT NULL,
  `fecdoc` datetime DEFAULT NULL,
  `rutdoc` varchar(255) DEFAULT NULL,
  `tidc` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dominio`
--

CREATE TABLE `dominio` (
  `iddom` int(5) NOT NULL,
  `nomdom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dominio`
--

INSERT INTO `dominio` (`iddom`, `nomdom`) VALUES
(1, 'dszgf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingegr`
--

CREATE TABLE `ingegr` (
  `idie` bigint(20) NOT NULL,
  `tipie` int(5) DEFAULT NULL,
  `fecie` datetime DEFAULT NULL,
  `concie` varchar(255) DEFAULT NULL,
  `descie` text DEFAULT NULL,
  `sopie` varchar(255) DEFAULT NULL,
  `valie` bigint(20) DEFAULT NULL,
  `idper` bigint(20) DEFAULT NULL,
  `idprd` bigint(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifi`
--

CREATE TABLE `notifi` (
  `idnot` bigint(20) NOT NULL,
  `titnot` varchar(50) DEFAULT NULL,
  `desnot` text DEFAULT NULL,
  `fecnot` datetime DEFAULT NULL,
  `fecfin` datetime DEFAULT NULL,
  `idper` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupante`
--

CREATE TABLE `ocupante` (
  `idper` bigint(20) DEFAULT NULL,
  `idviv` int(5) DEFAULT NULL,
  `tipocu` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `idpag` int(5) NOT NULL,
  `nompag` varchar(255) DEFAULT NULL,
  `rutpag` varchar(255) DEFAULT NULL,
  `mospag` tinyint(1) DEFAULT NULL,
  `ordpag` int(5) DEFAULT NULL,
  `icopag` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`idpag`, `nompag`, `rutpag`, `mospag`, `ordpag`, `icopag`) VALUES
(20, 'Inicio', 'vistas/vwInit.php', 1, 1, NULL),
(21, 'Soporte', 'vistas/vwSoport.php', 1, 1, NULL),
(22, 'Reservas', 'vistas/vwReservas.php', 1, 1, NULL),
(23, 'Notificaciones', 'vistas/vwDetNotf.php', 1, 1, NULL),
(24, 'Estado Cuenta', 'vistas/vwEstCnt.php', 1, 1, NULL),
(25, 'Registro Inquilino', 'vistas/vwRegInq.php', 1, 1, NULL),
(26, 'Nosotros', 'vistas/vwNosotros.php', 1, 1, NULL),
(27, 'LogIn', 'vistas/vwLogin.php', 1, 1, NULL),
(28, 'Welcome', 'vistas/vwWelcome.php', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagper`
--

CREATE TABLE `pagper` (
  `idpag` int(5) DEFAULT NULL,
  `idpef` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagper`
--

INSERT INTO `pagper` (`idpag`, `idpef`) VALUES
(20, 2),
(21, 2),
(23, 2),
(24, 2),
(25, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `idpef` int(5) NOT NULL,
  `nompef` varchar(50) DEFAULT NULL,
  `pagini` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`idpef`, `nompef`, `pagini`) VALUES
(0, 'Index', 28),
(2, 'Propietario', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `idprd` bigint(7) NOT NULL,
  `finiprd` date DEFAULT NULL,
  `ffinprd` date DEFAULT NULL,
  `actprd` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idper` bigint(20) NOT NULL,
  `nodocper` bigint(20) DEFAULT NULL,
  `tdocper` int(5) DEFAULT NULL,
  `nomper` varchar(50) DEFAULT NULL,
  `apeper` varchar(50) DEFAULT NULL,
  `idpef` int(5) DEFAULT NULL,
  `pasper` varchar(100) DEFAULT NULL,
  `emaper` varchar(100) DEFAULT NULL,
  `celper` varchar(10) DEFAULT NULL,
  `genper` int(5) DEFAULT NULL,
  `fnaper` date DEFAULT NULL,
  `actper` tinyint(1) DEFAULT NULL,
  `idval` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idper`, `nodocper`, `tdocper`, `nomper`, `apeper`, `idpef`, `pasper`, `emaper`, `celper`, `genper`, `fnaper`, `actper`, `idval`) VALUES
(5, 1049794389, NULL, 'David', 'Soriano', 2, 'siphSena', NULL, NULL, NULL, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor`
--

CREATE TABLE `valor` (
  `idval` int(5) NOT NULL,
  `iddom` int(5) DEFAULT NULL,
  `nomval` varchar(255) DEFAULT NULL,
  `parval` varchar(255) DEFAULT NULL,
  `act` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `valor`
--

INSERT INTO `valor` (`idval`, `iddom`, `nomval`, `parval`, `act`) VALUES
(1, 1, 'dsfa', 'sdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `varios`
--

CREATE TABLE `varios` (
  `idvar` bigint(20) NOT NULL,
  `nomvar` varchar(255) DEFAULT NULL,
  `tipvar` int(5) DEFAULT NULL,
  `idviv` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vivienda`
--

CREATE TABLE `vivienda` (
  `idviv` int(5) NOT NULL,
  `nomviv` varchar(50) DEFAULT NULL,
  `idper` bigint(20) DEFAULT NULL,
  `tipviv` int(5) DEFAULT NULL,
  `depviv` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `concejo`
--
ALTER TABLE `concejo`
  ADD PRIMARY KEY (`idcon`),
  ADD KEY `idper` (`idper`),
  ADD KEY `tipcon` (`tipcon`),
  ADD KEY `idprd` (`idprd`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`idcof`),
  ADD UNIQUE KEY `nitcof` (`nitcof`);

--
-- Indices de la tabla `docu`
--
ALTER TABLE `docu`
  ADD PRIMARY KEY (`iddoc`),
  ADD KEY `idper` (`idper`),
  ADD KEY `tidc` (`tidc`);

--
-- Indices de la tabla `dominio`
--
ALTER TABLE `dominio`
  ADD PRIMARY KEY (`iddom`);

--
-- Indices de la tabla `ingegr`
--
ALTER TABLE `ingegr`
  ADD PRIMARY KEY (`idie`),
  ADD KEY `tipie` (`tipie`),
  ADD KEY `idper` (`idper`),
  ADD KEY `idprd` (`idprd`);

--
-- Indices de la tabla `notifi`
--
ALTER TABLE `notifi`
  ADD PRIMARY KEY (`idnot`),
  ADD KEY `idper` (`idper`);

--
-- Indices de la tabla `ocupante`
--
ALTER TABLE `ocupante`
  ADD KEY `idper` (`idper`),
  ADD KEY `idviv` (`idviv`),
  ADD KEY `tipocu` (`tipocu`);

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`idpag`);

--
-- Indices de la tabla `pagper`
--
ALTER TABLE `pagper`
  ADD KEY `idpef` (`idpef`),
  ADD KEY `pagper_ibfk_2` (`idpag`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idpef`),
  ADD KEY `pagini` (`pagini`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`idprd`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idper`),
  ADD UNIQUE KEY `nodocper` (`nodocper`),
  ADD KEY `tdocper` (`tdocper`),
  ADD KEY `idpef` (`idpef`),
  ADD KEY `genper` (`genper`),
  ADD KEY `idval` (`idval`);

--
-- Indices de la tabla `valor`
--
ALTER TABLE `valor`
  ADD PRIMARY KEY (`idval`),
  ADD KEY `iddom` (`iddom`);

--
-- Indices de la tabla `varios`
--
ALTER TABLE `varios`
  ADD PRIMARY KEY (`idvar`),
  ADD KEY `tipvar` (`tipvar`),
  ADD KEY `idviv` (`idviv`);

--
-- Indices de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD PRIMARY KEY (`idviv`),
  ADD KEY `idper` (`idper`),
  ADD KEY `tipviv` (`tipviv`),
  ADD KEY `depviv` (`depviv`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `concejo`
--
ALTER TABLE `concejo`
  MODIFY `idcon` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `idcof` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docu`
--
ALTER TABLE `docu`
  MODIFY `iddoc` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dominio`
--
ALTER TABLE `dominio`
  MODIFY `iddom` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ingegr`
--
ALTER TABLE `ingegr`
  MODIFY `idie` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notifi`
--
ALTER TABLE `notifi`
  MODIFY `idnot` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `idpag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idpef` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `idprd` bigint(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idper` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `valor`
--
ALTER TABLE `valor`
  MODIFY `idval` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `varios`
--
ALTER TABLE `varios`
  MODIFY `idvar` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vivienda`
--
ALTER TABLE `vivienda`
  MODIFY `idviv` int(5) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `concejo`
--
ALTER TABLE `concejo`
  ADD CONSTRAINT `concejo_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`),
  ADD CONSTRAINT `concejo_ibfk_2` FOREIGN KEY (`idprd`) REFERENCES `periodo` (`idprd`);

--
-- Filtros para la tabla `docu`
--
ALTER TABLE `docu`
  ADD CONSTRAINT `docu_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`);

--
-- Filtros para la tabla `ingegr`
--
ALTER TABLE `ingegr`
  ADD CONSTRAINT `ingegr_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`),
  ADD CONSTRAINT `ingegr_ibfk_2` FOREIGN KEY (`idprd`) REFERENCES `periodo` (`idprd`);

--
-- Filtros para la tabla `notifi`
--
ALTER TABLE `notifi`
  ADD CONSTRAINT `notifi_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`);

--
-- Filtros para la tabla `ocupante`
--
ALTER TABLE `ocupante`
  ADD CONSTRAINT `ocupante_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`),
  ADD CONSTRAINT `ocupante_ibfk_2` FOREIGN KEY (`idviv`) REFERENCES `vivienda` (`idviv`);

--
-- Filtros para la tabla `pagper`
--
ALTER TABLE `pagper`
  ADD CONSTRAINT `pagper_ibfk_1` FOREIGN KEY (`idpef`) REFERENCES `perfil` (`idpef`),
  ADD CONSTRAINT `pagper_ibfk_2` FOREIGN KEY (`idpag`) REFERENCES `pagina` (`idpag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`idpef`) REFERENCES `perfil` (`idpef`),
  ADD CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`idval`) REFERENCES `valor` (`idval`);

--
-- Filtros para la tabla `valor`
--
ALTER TABLE `valor`
  ADD CONSTRAINT `valor_ibfk_1` FOREIGN KEY (`iddom`) REFERENCES `dominio` (`iddom`);

--
-- Filtros para la tabla `varios`
--
ALTER TABLE `varios`
  ADD CONSTRAINT `varios_ibfk_1` FOREIGN KEY (`idviv`) REFERENCES `vivienda` (`idviv`);

--
-- Filtros para la tabla `vivienda`
--
ALTER TABLE `vivienda`
  ADD CONSTRAINT `vivienda_ibfk_1` FOREIGN KEY (`idper`) REFERENCES `persona` (`idper`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
