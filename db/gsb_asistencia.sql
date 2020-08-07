-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2020 a las 06:16:10
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gsb_asistencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencias`
--

CREATE TABLE `asistencias` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `tipo` varchar(129) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_hora` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asistencias`
--

INSERT INTO `asistencias` (`id`, `nombres`, `apellidos`, `dni`, `tipo`, `fecha_hora`) VALUES
(1, 'Jose', 'Rodriguez', 30304040, 'Entrada', '06/08/2020 - 11:09 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personal`
--

CREATE TABLE `datos_personal` (
  `id` int(11) NOT NULL,
  `nombres_completos` varchar(255) NOT NULL,
  `cargo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `telefono` int(9) NOT NULL,
  `datos_emergencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `datos_personal`
--

INSERT INTO `datos_personal` (`id`, `nombres_completos`, `cargo`, `email`, `direccion`, `telefono`, `datos_emergencia`) VALUES
(4, 'Huancapaza Ponce,Angelo Ruben', 'Gestor Atención Cliente', 'aponce@gsb.com.pe', 'Mollendo', 960273446, 'Datos Ejemplo'),
(5, 'Ramirez Carrillo Arturo Francisco', 'Atencion Reclamos', 'arturamirez26@gmail.com', 'Psj. manrique 211 lara tradicional - Socabaya', 956326341, 'Arturo Pedro Ramirez Chacon - Padre - Psj. manrique 211 lara tradicional - Socabaya - 987861262'),
(6, 'QUISPE CHOQUE, LEIDY RUTH', 'Gestor Atención Cliente', 'quismi_27@hotmail.com', 'VALLE DE JESÚS B-7, PAUCARPATA', 958725117, 'CHOQUE VILCA SADIT, TIA, BAÑOS JESÚS, PAUCARPATA, 951375618'),
(7, 'Rodríguez Delgado Gabriela Lucía', 'Atencion Reclamos', 'gabriela.lucia_30@hotmail.com', 'Urbanización Santa María II c-11 JLByR', 999937786, 'Delgado Benavente Patricia/madre/Urbanización Santa María II c-11 JLByR,958032721'),
(8, 'Virgilio huaman pumasupa', 'Gestor Atención Cliente', 'darkvico@gmail.com', 'Av. Socabaya 421', 958963985, 'Karen luna quispe  944027545'),
(9, 'Virgilio huaman pumasupa', 'Gestor Atención Cliente', 'darkvico@gmail.com', 'Av. Socabaya 421', 958963985, 'Karen luna quispe  944027545'),
(10, 'RETAMOZO BUSTINZA SOFIA MILAGROS', 'Gestor Atención Cliente', 'somirb248@gmail.com', 'URB. SANTA FE  MZ.B  LT.1  DPTO 01 - SACHACA - AREQUIPA', 977738233, 'VERA PRADO MARIA DEL PILAR, PRIMA,URB. SANTA FE  MZ.B  LT.1  DPTO 01 - SACHACA - AREQUIPA,  959 514 346'),
(11, 'RETAMOZO BUSTINZA SOFIA MILAGROS', 'Gestor Atención Cliente', 'somirb248@gmail.com', 'URB. SANTA FE  MZ.B  LT.1  DPTO 01 - SACHACA - AREQUIPA', 977738233, 'VERA PRADO MARIA DEL PILAR, PRIMA,URB. SANTA FE  MZ.B  LT.1  DPTO 01 - SACHACA - AREQUIPA,  959 514 346'),
(12, 'zevallos daza oscar fernando', 'Atencion Reclamos', 'oscarzevallosdaza@gmail.com', 'Coop. Victor Andrés Belaúnde K 3', 961703584, 'estrella del pilar velarde chavez celular 993718273'),
(13, 'RAMIREZ CARRASCO VIRGINIA SILVANA', 'Atencion Reclamos', 'silvanarc24@gmail.com', 'COOP. LAMBRAMANI N°516 DPTO.304 J.L.B Y RIVERO', 932388084, 'VISA DARIO,ESPOSO,958807081;CARRASCO SILVIA, MADRE,998 994 402'),
(14, 'NUÑEZ DAVALOS BRENDA SUSSETH', 'Gestor Atención Cliente', 'brensu19@hotmail.com', 'calle lino Urquieta 100 B ', 959378806, 'NUÑEZ DAVALOS ANDREA  HERMANA DIR LINO URQUIETA 100 B 974210112'),
(15, 'NUÑEZ DAVALOS BRENDA SUSSETH', 'Gestor Atención Cliente', 'brensu19@hotmail.com', 'calle lino Urquieta 100 B ', 959378806, 'NUÑEZ DAVALOS ANDREA  HERMANA DIR LINO URQUIETA 100 B 974210112'),
(16, 'NUÑEZ DAVALOS BRENDA SUSSETH', 'Gestor Atención Cliente', 'brensu19@hotmail.com', 'calle lino Urquieta 100 B ', 959378806, 'NUÑEZ DAVALOS ANDREA  HERMANA DIR LINO URQUIETA 100 B 974210112'),
(17, 'NUÑEZ DAVALOS BRENDA SUSSETH', 'Gestor Atención Cliente', 'brensu19@hotmail.com', 'calle lino Urquieta 100 B ', 959378806, 'NUÑEZ DAVALOS ANDREA  HERMANA DIR LINO URQUIETA 100 B 974210112'),
(18, 'NUÑEZ DAVALOS BRENDA SUSSETH', 'Gestor Atención Cliente', 'brensu19@hotmail.com', 'calle lino Urquieta 100 B ', 959378806, 'NUÑEZ DAVALOS ANDREA  HERMANA DIR LINO URQUIETA 100 B 974210112'),
(19, 'Tejada Quispe Joanna Nicholle', 'Gestor Atención Cliente', 'nicholletejada@gmail.com', 'Ppjj independencia, urb. García calderon 912, alto selva alegre', 970533329, 'Tejada García Jorge, papá, Camaná, 998802988'),
(20, 'Holgado Cornejo Jessica Alicia', 'Gestor Atención Cliente', 'jessyholgado@gmail.com', 'Pasaje Primavera 108 alto Selva Alegre', 967745531, 'Cornejo Delgado Alicia madre Ampliación San Agustín D-4 Socabaya 950751693'),
(21, 'ARENAS MANTILLA STEPHANIE DANNIELA', 'Atencion Reclamos', 'sarenas@ucsp.edu.pe', 'Calle Ancash N° 335 esq calle Piura N° 301 - Mariano Melgar', 959327336, 'Gutierrez Mantilla Johanna - hermana- 953761779'),
(22, 'FERNÁNDEZ MONTÁNCHEZ, KARLA BRIDGET', 'Gestor Atención Cliente', 'karla.fernandez@ucsp.edu.pe', 'URBANIZACIÓN LEONCIO PRADO B-17 - PAUCARPATA', 976330343, 'MONTÁNCHEZ NÚÑEZ DOMITILA NORA, MAMÁ, URB. LEONCIO PRADO B-17 PAUCARPATA, 997806274/054460403'),
(23, 'Cáceres Riega Meylin Stefany', 'Gestor Atención Cliente', 'meysce@hotmail.com', 'Resi Santa Martha D 25 ', 972727452, 'ADRIÁNO Ortiz, esposo, 969799668'),
(24, 'Holgado Cornejo Jessica Alicia', 'Gestor Atención Cliente', 'jessyholgado@gmail.com', 'Pasaje Primavera 108 alto Selva Alegre', 967745531, 'Cornejo Delgado Alicia madre Ampliación San Agustín D-4 Socabaya 950751693'),
(25, 'Paredes Malca Vladimir Rommel', 'Gestor Atención Cliente', 'vbparedes@gmail.com', 'Urb. Jose carlos mariategui calle cultura 116', 979342464, 'Jeanett Soledad Malca Milla, Madre, Urb. Jose carlos mariategui calle cultura 116'),
(26, 'Díaz Anco Ana Luz', 'Gestor Atención Cliente', 'anadiaz977@gmail.com', 'Urb. La Alborada F3 José Luis Bustamante y Rivero', 959977706, 'Díaz De La Cruz, Teófilo, padre, URB. La Alborada F-3 J.L.B.R., 959971867'),
(27, 'Pereyra Ortega Brayn Yuri', 'Atencion Reclamos', 'bypereyra1200@gmail.com', 'Urb. Lambramani D-16 Banco de la Nación ', 958790254, 'Ortega Gonzales Marina, madre, Urb. Lambramani D-16 Banco de la Nación, 974606172'),
(28, 'valdivia quelopana miguel angel', 'Gestor Cartas', 'miguel_avq@hotmail.com', 'calle mariscal domingo nieto 501 b miguel grau zn b paucarpata', 957760439, 'valdivia lucia '),
(29, 'Aparicio Molleapaza Yvonne', 'Atencion Reclamos', 'yvita22@gmail.com', 'Urbanización Dunas del Sur E-3, Jlbyr', 997000836, 'Vargas Gallegos Marco Antonio, esposo, 988809546'),
(30, 'Aparicio Molleapaza Yvonne', 'Atencion Reclamos', 'yvita22@gmail.com', 'Urbanización Dunas del Sur E-3, Jlbyr', 997000836, 'Vargas Gallegos Marco Antonio, esposo, 988809546'),
(31, 'Aparicio Molleapaza Yvonne', 'Atencion Reclamos', 'yvita22@gmail.com', 'Urbanización Dunas del Sur E-3, Jlbyr', 997000836, 'Vargas Gallegos Marco Antonio, esposo, 988809546'),
(32, 'Espinoza Rosado Leslie Liliana ', 'Gestor Atención Cliente', 'lelis_sweet@hotmail.com', 'Juan Velasco Alvarado zona B mz u lote 10 A. S. A', 991356936, 'Ricardo Espinoza Ortiz,padre, Juan Velasco Alvarado zona B mz u lote 10 A. S. A, 959404714'),
(33, 'PHARI QUICO CARLOS', 'Gestor Atención Cliente', 'carlosrenzo2007@hotmail.com', 'CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA', 914020609, 'PHARI QUICO MARGOTH, HERMANA, CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA, CEL 958893567'),
(34, 'PHARI QUICO CARLOS', 'Gestor Atención Cliente', 'carlosrenzo2007@hotmail.com', 'CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA', 914020609, 'PHARI QUICO MARGOTH, HERMANA, CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA, CEL 958893567'),
(35, 'PHARI QUICO CARLOS', 'Gestor Atención Cliente', 'carlosrenzo2007@hotmail.com', 'CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA', 914020609, 'PHARI QUICO MARGOTH, HERMANA, CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA, CEL 958893567'),
(36, 'PHARI QUICO CARLOS', 'Gestor Atención Cliente', 'carlosrenzo2007@hotmail.com', 'CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA', 914020609, 'PHARI QUICO MARGOTH, HERMANA, CALLE JORGE CHAVEZ MZ. C LTE 21, MICAELA BASTIDAS - TIABAYA, CEL 958893567'),
(37, 'Rodrigo Manchego Gonzalo Arturo ', 'Gestor Escaneos', 'luya_600@hotmail.com', 'Urbanización Cesar Vallejo Mz D Lt 8 Paucarpata', 958140128, 'Rodrigo de manchego Lelis - madre - 989268155'),
(38, 'BALLON PORTALES MAYOLA PROSPERINA', 'Gestor Seguimientos', 'mayolaballonportales@gmail.com', 'URB. 15 DE ENERO/CALLE JOSE CARLOS MARIATEGUI N°117/PAUCARPATA', 940337348, 'CARBAJAL ARELA YOSHYRO/CONYUGE/CALLE JOSE CARLOS MARIATEGUI N°117-PAUCARPATA/989953928'),
(39, 'HUAMAN PARI JESUS FERMIN', 'Gestor Atención Cliente', 'jesus_fresh1@hotmail.com', 'Calle Palacio viejo 108, Arequipa', 955956643, 'HUAMAN RODRIGUEZ FERMIN, PADRE,CALLE PALACIO VIEJO 108,235040'),
(40, 'Paredes Muñoz Jenny Eloisa', 'Gestor Apelaciones', 'eloisa_13866@hotmail.com', 'Morro de Arica 105 Tingo', 984718114, 'Judy Paredes Muñoz, hermana, Urb. El Dorado L-9 Sachaca, 959653622'),
(41, 'Quezada Málaga Renato', 'Gestor Escaneos', 'renatoqmalaga@gmail.com', 'Av. Salaverry 501 Vallecito - Cercado', 959297655, 'Málaga Llerena Virginia (mama), Av. Salaverry 501 Vallecito - Cercado, Celular: 958913793, Arango Málaga Erika (hermana), Av Salaverry 501 - Vallecito - Cercado Celular: 959990825'),
(42, 'Virgilio Huaman Punasupa', 'Gestor Atención Cliente', 'darkvico@gmail.com', 'Av socabaya 321', 958963985, 'Karen luna'),
(43, 'Liliana Lorena Begazo Carpio', 'Gestor Seguimientos', 'llbc_4793@hotmail.com', 'Urb Santa María II Mz i Lt 5', 956279579, 'Rosario carpio 234986'),
(44, 'TINTAYA ALVAREZ ROCIO ANABEL', 'Gestor Atención Cliente', 'rocio.anabel.tintaya@ucsp.edu.pe', 'URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, ALTO SELVA ALEGRE', 959455711, 'TINTAYA LLAMOCA BLAS EMILIO, PADRE, URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, CELL 999000982'),
(45, 'TINTAYA ALVAREZ ROCIO ANABEL', 'Gestor Atención Cliente', 'rocio.anabel.tintaya@ucsp.edu.pe', 'URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, ALTO SELVA ALEGRE', 959455711, 'TINTAYA LLAMOCA BLAS EMILIO, PADRE, URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, CELL 999000982'),
(46, 'TINTAYA ALVAREZ ROCIO ANABEL', 'Gestor Atención Cliente', 'rocio.anabel.tintaya@ucsp.edu.pe', 'URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, ALTO SELVA ALEGRE', 959455711, 'TINTAYA LLAMOCA BLAS EMILIO, PADRE, URB. SAN JOSÉ MZ-I, LT. 6, PAMPAS DE POLANCO, CELL 999000982'),
(47, 'Rosado Sotelo Fiorella Elizabeth', 'Atencion Reclamos', 'fiorella_funny9@hotmail.com', 'Asoc. Juan Velasco Alvarado MZ U Lt 10 Alto Selva Alegre', 958239406, 'Rosado Sotelo kelly Stephanie-hermana-Asoc. Juan Velasco Alvarado MZ U Lt 10 Alto Selva Alegre-958172821'),
(48, 'Calle Palomino Axel Alejandro', 'Atencion Reclamos', 'aacallepa@gmail.com', 'Urb. Villa El Sol B-3 Alto Selva Alegre', 999555535, '966401037'),
(49, 'Nájar Cervantes María del Carmen ', 'Gestor Atención Cliente', 'marita_12608@hotmail.com', 'Urb. Alto de la luna Q-37', 944204179, 'Nájar Cervantes Olinda/Hermana/urb. Alto de la luna Q-37 /918319660 '),
(50, 'Nájar Cervantes María del Carmen ', 'Gestor Atención Cliente', 'marita_12608@hotmail.com', 'Urb. Alto de la luna Q-37 José Luis B y R.', 944204179, 'Nájar Cervantes Olinda/Hermana/urb. Alto de la luna Q-37 /918319660 '),
(51, 'Nájar Cervantes María del Carmen ', 'Gestor Atención Cliente', 'marita_12608@hotmail.com', 'Urb. Alto de la luna Q-37 José Luis B y R.', 944204179, 'Nájar Cervantes Olinda/Hermana/urb. Alto de la luna Q-37 /918319660 '),
(52, 'Aparicio Molleapaza Yvonne', 'Atencion Reclamos', 'yvita22@gmail.com', 'Urbanización Dunas del Sur E-3', 997000836, 'Vargas Gallegos Marco Antonio, esposo, Urb. Dunas del Sur E-3 JLByRivero, 988809546 (054) 427342'),
(53, 'Llerena Diaz Lady Fiorella', 'Gestor Atención Cliente', 'lady_lld@hotmail.com', 'Pasaje José Olaya N119 ASA', 958388885, 'Diaz Chavez Georgina, madre, Pasaje José Olaya N119 ASA, 958793948'),
(54, 'Holgado Cornejo Jessica Alicia', 'Gestor Atención Cliente', 'jessyholgado@gmail.com', 'Pasaje Primavera 108 Alto Selva Alegre', 967745531, 'Cornejo Delgado Alicia madre Ampliación, San Agustín D-4, Socabaya,950751693 '),
(55, 'Holgado Cornejo Jessica Alicia', 'Gestor Atención Cliente', 'jessyholgado@gmail.com', 'Pasaje Primavera 108 Alto Selva Alegre', 967745531, 'Cornejo Delgado Alicia madre Ampliación, San Agustín D-4, Socabaya,950751693 '),
(56, 'Kelly Haydee  Beltrán Medina', 'Gestor Atención Cliente', 'kelly.beltran.medina@gmail.com', 'Cal. chavin de Huántar 205  jlbyr', 952350550, 'Hermana  948841144'),
(57, 'Herrera Ojeda Brandy Mirian', 'Gestor Atención Cliente', 'bherreraojeda@gmail.com', 'Av. 2 de Mayo S/N Mz . N\' Lt. 6 La Joya', 979376156, 'Herrera Umiña Felipe - Papá - Av 2 de mayo Mz N\' Lt. 6 La Joya - 958559907'),
(58, 'RAMIREZ CARRASCO VIRGINIA SILVANA', 'Atencion Reclamos', 'silvanarc24@gmail.com', 'COOP. LAMBRAMANI N°516 DPTO.304 J.L.B Y RIVERO', 932388084, 'VISA DARIO,ESPOSO,958807081/CARRASCO SILVIA, MADRE,AV. MCAL CASTILLA 207 CAMANA,998 994 402'),
(59, 'Zambrano Quispe Verónica', 'Gestor Atención Cliente', 'verdey88@gmail.com', 'San miguel mz b lt 22 alto cayma', 982069586, 'Quispe Feliciana, Mami, San Miguel MZ b lt 22, 958030266');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `estado`) VALUES
(1, 'ABIERTO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos_personal`
--
ALTER TABLE `datos_personal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencias`
--
ALTER TABLE `asistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos_personal`
--
ALTER TABLE `datos_personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
