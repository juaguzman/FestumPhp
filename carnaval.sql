-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2015 a las 19:08:05
-- Versión del servidor: 5.6.21-log
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `carnaval`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miprograma`
--

CREATE TABLE IF NOT EXISTS `miprograma` (
  `id_prog` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `evento` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `lugar` varchar(200) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
`id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `evento` varchar(200) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `lugar` varchar(200) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id`, `fecha`, `evento`, `descripcion`, `lugar`, `horaInicio`, `horaFin`, `categoria`) VALUES
(1, '2015-12-28', 'D?a de inocentes Arco?ris en el Asfalto', 'Evento que crea espacios de l?dica con el fin de unir a grandes y peque?os en torno al arte de dibujar y pintar en el asfalto  ', 'Morasurco', '09:00:00', '00:00:00', 3),
(2, '2015-12-28', 'Zarand?ate por inocentes', 'Jornadas l?dicas de deporte ', 'Plaza del carnaval ', '08:30:00', '12:00:00', 3),
(3, '2015-12-28', 'Pedaleando por inocentes', 'Comparte un buen momento con tus amigos y familiares en una jornada de pase en bicicleta', 'Hotel Morasurco', '08:30:00', '12:00:00', 3),
(4, '2015-12-29', 'Concierto de m?sica de los a?os 60 y 70', 'M?sica rom?ntica que evoca los a?os maravillosos', 'Plaza de Nari', '04:00:00', '11:00:00', 3),
(5, '2015-12-30', 'Serenata a Pasto ', 'Tr?os que le rinden un homenaje a la cuidad de Pasto ', 'Plaza de Nari', '16:00:00', '23:00:00', 2),
(6, '2015-12-31', 'Desfile de a?os viejos', 'Tradicional desfile con mu?ecos alusivos a personajes p?blicos o situaciones sociales', 'Senda del carnaval', '09:00:00', '00:00:00', 3),
(7, '2015-12-31', 'Desfile de carros antiguos', 'Exhibici?n de los carros antiguos', 'Senda del carnaval', '09:00:00', '00:00:00', 3),
(8, '2016-01-02', 'Ofrenda a la virgen de las Mercedes ', 'Celebraci?n eucar?stica en ofrenda a la patrona de Pato para pedir su bendici?n y lograr el ?xito del carnaval', 'Iglesia de la Merced', '07:00:00', '00:00:00', 1),
(9, '2016-01-02', 'Desfile de colonias', 'Las colonias residentes en Pasto muestran la riqueza cultural de sus regiones enmarcadas en tradiciones mitos gastronom?a m?sica y valores', 'Senda del carnaval', '10:00:00', '00:00:00', 3),
(10, '2016-01-02', 'Festival del humor y m?sica campesina ', 'Comparte un buen momento en familia y amigos en el festival del humor y m?sica campesina', 'Plaza de Nari', '15:00:00', '22:00:00', 3),
(11, '2016-01-02', 'Rock carnaval', 'Escucha buena m?sica con tus amigos y tu familia', 'Plaza del carnaval ', '15:00:00', '22:00:00', 1),
(13, '2016-01-03', 'Canto a la tierra ', 'Desfile de colectivos coreogr?ficos Emerge una fuerza tel?rica que invoca los ancestros es el canto a la tierra donde los colectivos de danzantes andinos forman grandes e importantes coreograf?as', 'Senda del carnaval Norte- sur', '15:00:00', '00:00:00', 3),
(14, '2016-01-03', 'Concierto de m?sica ', 'andina Latinoamericana Comparte un buen momento escuchando m?sica andina ', 'Plaza de Nari', '23:00:00', '00:00:00', 1),
(15, '2016-01-04', 'Desfile de la llegada de la familia Casta?eda ciudad ', 'En el desfile se rememora la tradici?n y caracter?sticas de los pobladores del municipio  representando en estampas costumbristas que han dejado huella en nuestra ', 'Senda del carnaval', '10:00:00', '18:00:00', 3),
(16, '2016-01-04', 'Conciertos en carnaval Comparte un buen momento con tus amigos y familia artista invitado Nelson y sus estrellas ', 'Tablado plaza del carnaval', '15:00', '23:00:00', '00:00:00', 1),
(17, '2016-01-04', 'Conciertos en carnaval Comparte un buen momento con tus amigos y familia artista invitado Luis Felipe Gonz?les y Alkilados ', ' Tablado plaza de Nari', '15:00', '23:00:00', '00:00:00', 1),
(18, '2016-01-05', 'D?a de negros- juego de identidad', 'Es el d?a del juego de negros donde la caricia revive la fraternidad humana y aflora en le carnaval como resguardo en la ternura y la alegr', 'Plaza del carnaval ', '23:00:00', '00:00:00', 3),
(19, '2016-01-05', 'Conciertos en carnaval', ' Comparte un buen momento con tus amigos y familia artista invitado Los Traviesos', 'Tablado plaza del carnaval', '15:00:00', '23:00:00', 2),
(20, '2016-01-05', 'Conciertos en carnaval ', 'Comparte un buen momento con tus amigos y familia artista invitado Alfredito de la fe', 'Tablado plaza de Nari', '15:00:00', '23:00:00', 2),
(21, '2016-01-06', 'Desfile Magno', '  Cultores y artistas del carnaval se dan cita para mostrar su ingenio y creaciones majestuosas Carrosas colectivos coreogr?ficos disfraces individuales murgas comparsas hacen de ?ste un desfile solemne', 'Senda del carnaval', '00:00:00', '09:00:00', 3),
(22, '2016-01-06', 'Conciertos en carnaval ', 'Comparte un buen momento con tus amigos y familia artista invitado Maelo Ruiz', 'Tablado plaza del carnaval', '15:00:00', '23:00:00', 3),
(23, '2016-01-06', 'Conciertos en carnaval', ' Comparte un buen momento con tus amigos y familia artista invitado Andy Monta', 'Tablado plaza de Nari', '03:00:00', '11:00:00', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha_nas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `fecha_nas`) VALUES
(15, 'Juan Carlos', '1989-11-11'),
(1654, 'Ferndanada torres', '1993-09-19'),
(45656465, 'camilo', '1998-11-11'),
(546544984, 'juan', '1998-11-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `miprograma`
--
ALTER TABLE `miprograma`
 ADD PRIMARY KEY (`id_prog`), ADD KEY `fk_miPrograma_usuario_idx` (`usuario_id`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `miprograma`
--
ALTER TABLE `miprograma`
ADD CONSTRAINT `fk_miPrograma_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
