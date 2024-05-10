-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 21:29:58
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bodegabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id_detalle` int(11) NOT NULL,
  `cantidad_productos` int(11) NOT NULL,
  `costo_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `ano_creacion` date DEFAULT NULL,
  `nit` varchar(20) NOT NULL,
  `nombre_marca` varchar(50) NOT NULL,
  `sede_principal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `ano_creacion`, `nit`, `nombre_marca`, `sede_principal`) VALUES
(1, '1984-11-30', '64976094', 'Mango', 'Barcelona'),
(2, '1899-01-01', '131275225', 'American Brands', 'New York'),
(3, '1958-01-01', '97200741', 'Rifle', 'Elche'),
(4, '1973-01-01', '41315858', 'Naf-Naf', 'París');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `fechayhora` date NOT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `cantidad_bodega` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `nombre_producto` varchar(60) NOT NULL,
  `precio_unitario` int(11) NOT NULL,
  `referencia` varchar(50) NOT NULL,
  `talla` varchar(5) NOT NULL,
  `id_detalle` int(11) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL,
  `id_tipo_prenda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `cantidad_bodega`, `descripcion`, `fotografia`, `nombre_producto`, `precio_unitario`, `referencia`, `talla`, `id_detalle`, `id_marca`, `id_tipo_prenda`) VALUES
(9, 100, 'Camisa de alta calidad con diseño elegante de Velero II Popelina.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F1.jpg?alt=media&token=4fbadfbe-7f3c-4ca7-9ca4-c6c99649da1e', 'VELERO II POPELINA', 83900, 'VLR2PPLN', 'M', NULL, 2, 1),
(10, 100, 'Cartera elegante con diseño moderno GI23/POR304.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F2.jpg?alt=media&token=c04f664e-ed83-4960-85ff-358421a83d50', 'CARTERA GPOR', 47900, 'CRTGI2304', 'M', NULL, 2, 5),
(11, 100, 'Chaqueta Kalesi.B de franela, perfecta para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F3.jpg?alt=media&token=566a9b5b-e7f6-4e1a-b1ff-ecbd7dfdd56b', 'KALESI B FRANELA', 79900, 'KLSBFRNL', 'M', NULL, 2, 2),
(12, 100, 'Casaca de denim Huston FI23, ideal para un estilo urbano y moderno.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F4.jpg?alt=media&token=bd6eb020-0f4b-4264-9124-48fa06c4ee65', 'CASACA HUSTON DENIM', 161900, 'CSCFHSTNDM', 'M', NULL, 2, 2),
(13, 100, 'Casaca Norway II de denim, una opción versátil para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F5.jpg?alt=media&token=0cd8ce4c-8c73-4723-b32d-3a3d62ec67f0', 'CASACA NORWAY II DENIM', 188900, 'CSCNRWYDNM', 'M', NULL, 2, 2),
(14, 100, 'Enterizo Carmmel IP24, perfecto para lucir elegante y moderna.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F6.jpg?alt=media&token=a51c2821-3b51-4a23-b58d-5092d79da89d', 'ENTERIZO CARMMEL', 97900, 'ENTIP24CRM', 'M', NULL, 2, 4),
(15, 100, 'Gorro Marbrava Drill FI23, ideal para mantenerse abrigado con estilo.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F7.jpg?alt=media&token=41e51aa6-4ed0-49e8-9eba-1d176a21f576', 'GORRO MARBRAVA DRILL', 55900, 'GRRFI23MD', 'L', NULL, 2, 5),
(16, 100, 'Gorro Tonalles Drill JP24, perfecto para combinar con cualquier atuendo.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F8.jpg?alt=media&token=f6ad9278-cd4b-4cd2-ae3a-a735ec1c4213', 'GORRO TONALES DRILL', 48900, 'GRRJP24TN', 'S', NULL, 2, 5),
(17, 100, 'Pantalón Cargo GI23, cómodo y versátil para el día a día.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F9.jpg?alt=media&token=067a6532-f3ba-44a5-aca7-efc2c9310e6c', 'PANTALON CARGO', 118900, 'PTNGI23CRG', 'M', NULL, 2, 3),
(18, 100, 'Pantalón Jeane.G Bull, con un diseño moderno y confortable.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F10.jpg?alt=media&token=ca4b3b99-b89d-45d2-b691-d88716954f5e', 'PANTALON JEANE G BULL', 127900, 'PTNJGBULL', 'M', NULL, 2, 3),
(19, 100, 'Bolso rojo elegante y versátil para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F11.jpg?alt=media&token=98637afa-d336-46ed-80e3-077941e63926', 'RED BAG', 120900, 'RDBAG123', 'XL', NULL, 2, 5),
(20, 100, 'Pantalón Jeane.G 2OSCU, cómodo y moderno para el día a día.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F12.jpg?alt=media&token=9c15ee9d-a0dc-4173-ac03-60af0f02a0d7', 'PANTALON JEANE OSCU', 127900, 'PTNJG2OSCU', 'M', NULL, 2, 3),
(21, 100, 'Pantalón Brunella GI23, una opción elegante y cómoda para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F13.jpg?alt=media&token=366fe9bb-7262-4fcd-9e46-466157c4d66c', 'PANTALON G BRUNELLA', 118900, 'PTNGI23BRN', 'M', NULL, 2, 3),
(22, 100, 'Pantalón Jeane.G Bull, con un diseño moderno y confortable.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F14.jpg?alt=media&token=7a8bd461-d14f-4639-9e96-5d03cbcd7be8', 'PANTALON JEANE', 159900, 'PTNJGBULL2', 'M', NULL, 2, 3),
(23, 100, 'Polera Kalesi.B DI23, perfecta para un estilo casual y moderno.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F15.jpg?alt=media&token=ef27b561-af4c-4ae7-ab7b-8cb13c114910', 'POLERA KALESI', 79900, 'PLRDI23KLSB', 'M', NULL, 2, 2),
(24, 100, 'Polo Box manga corta Benn Pique, una prenda clásica y cómoda para lucir elegante.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F16.jpg?alt=media&token=df745d83-7b34-453e-b9ff-5d7ecb3ef5e3', 'POLO BOX MC', 90900, 'PLBOXMCBNPQ', 'M', NULL, 2, 1),
(25, 100, 'Polo Kubrick Jersey EI23, una combinación de estilo y comodidad para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F17.jpg?alt=media&token=6e6d7ded-47fa-496e-9767-517d16db5547', 'POLO EI JERSEY', 35900, 'PLEI23KBRK', 'M', NULL, 2, 1),
(26, 100, 'Polo Kubrick Jersey EI23, una combinación de estilo y comodidad para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F18.jpg?alt=media&token=857af4a9-7607-40df-a2e0-7d80d4f42276', 'POLO JERSEY', 99900, 'PLEI23KBRK2', 'M', NULL, 2, 1),
(27, 100, 'Polo Yaiza Jersey HP23, una opción cómoda y elegante para lucir casual.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F19.jpg?alt=media&token=265527e8-46e8-4cd8-9cb1-8af81cdb8d0d', 'POLO ZA JERSEY', 45400, 'PLHP23YZJR', 'M', NULL, 2, 1),
(28, 100, 'Vestido Cecili Rayon FI23, elegante y cómodo para cualquier ocasión.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-american-brands%2F20.jpg?alt=media&token=b54a58fa-8bdd-4793-be34-f05b24879b6e', 'VESTIDO CECILI RAYON', 83900, 'VSTFI23CEC', 'M', NULL, 2, 4),
(31, 245, 'Suave cárdigan con cremallera frontal', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F1.avif?alt=media&token=91e44d61-3f7c-49c8-9c34-ac49cca0f1b3', 'Cardigan algodon cremallera', 319900, 'x7gk29h3yz', 'M', NULL, 1, 2),
(32, 150, 'Cardigan con tecnologia termorreguladora y cremallera', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F2.avif?alt=media&token=53a9f246-a7dd-4014-b8d2-6f1a78aa0237', 'Cardigan termorregulador cremallera', 219900, 'z5r9k3d1bx', 'L', NULL, 1, 2),
(33, 200, 'Jeans con ajuste tappered fit de la marca Ben', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F3.avif?alt=media&token=de2f0346-42a7-471d-a1fc-82e571719b8a', 'Jeans Ben tappered fit', 319900, 'r7m2s6p9xh', 'M', NULL, 1, 3),
(34, 175, 'Pantalon jogger de ajuste slim fit con cordones', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F4.avif?alt=media&token=bd5ea1c9-ccef-406b-baf3-0f8b64be7187', 'Pantalon jogger slim fit cordon', 319900, 't9z4r5q2jf', 'L', NULL, 1, 3),
(35, 120, 'Camisa de ajuste regular fit con diseño de cuadros ventana', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F5.avif?alt=media&token=f02a85f8-7e29-4a7d-8cdd-2410e67d1644', 'Camisa regular fit cuadro ventana', 299900, 'p3x8k1s7qz', 'XL', NULL, 1, 1),
(36, 150, 'Camisa de manga corta con diseño de rayas', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F6.avif?alt=media&token=ad88ccd1-f92d-428b-a9ec-53ab4574ecc6', 'Camisa rayas manga corta', 279900, 'w2v5t8y1nl', 'M', NULL, 1, 1),
(39, 180, 'Camisa de manga corta con estampado de rayas', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F7.avif?alt=media&token=480b19e1-c5c9-4fb8-92f9-ac44039ccde9', 'Camisa rayas manga corta', 279900, 'r4s9p2x6kw', 'S', NULL, 1, 1),
(40, 160, 'Camisa fluida con diseño de rayas estilo bowling', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F8.avif?alt=media&token=58bc216b-ba4d-4404-9738-7dfd009367f2', 'Camisa fluida bowling rayas', 279900, 'a5p8r9w3xz', 'L', NULL, 1, 1),
(41, 200, 'Camisa de algodon 100% de calidad premium', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F9.avif?alt=media&token=62fe9bc0-aba7-420b-96b0-3a5ffca441f2', 'Camisa algodon', 179900, 'm6n2j8z1tb', 'XL', NULL, 1, 1),
(42, 180, 'Camisa de ajuste regular fit con estampado hawaiano', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F10.avif?alt=media&token=981a3b70-d08c-4b63-8e06-2df094215368', 'Camisa regular fit estampado hawaiano', 279900, 's3q7d8f2lp', 'M', NULL, 1, 1),
(43, 200, 'Gafas de sol con lentes polarizadas', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F11.avif?alt=media&token=06432c93-c27c-49b1-b7a7-5a4b44c3e6e4', 'Gafas sol polarizadas', 159900, 't4g9h2r8qw', 'l', NULL, 1, 5),
(44, 21, 'Mochila con efecto de piel abatanada', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F12.avif?alt=media&token=97918c90-d825-4ebc-93e1-ac5badfb4b1b', 'Mochila efecto piel abatanada', 399900, 'w5d8q1z7tx', 's', NULL, 1, 5),
(45, 120, 'Zapatilla deportiva combinada con tecnología OrthoLite', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F13.avif?alt=media&token=5890da81-9900-40f2-967c-fd1be5290246', 'Deportiva combinada OrthoLite', 439900, 'r9s2p8t4jw', '42', NULL, 1, 5),
(46, 500, 'Bolso bandolera con doble asa', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F14.avif?alt=media&token=4b0f79dd-e36e-41a8-aa46-7cfe7daabb78', 'Bolso bandolera doble asa', 159900, 'q5m8z1d7fr', 'u', NULL, 1, 5),
(47, 344, 'Americana elegante con doble botonadura', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F15.avif?alt=media&token=15f0481b-ebfe-4e0d-8975-f122cb573917', 'Americana doble botonadura', 499900, 'w9s4x3p2qy', 'l', NULL, 1, 2),
(48, 100, 'Minifalda con efecto animal print', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F16.avif?alt=media&token=aa8b177e-e7b0-45bc-a5b6-d45b5f39b452', 'Minifalda efecto animal print', 229900, 's8d2f6p1tq', 'S', NULL, 1, 3),
(49, 12, 'Gafas de sol con montura metalica en forma cuadrada', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F17.avif?alt=media&token=8276cb3c-f470-40de-8544-bffe9f9a6f61', 'Gafas de sol montura metalica cuadradas', 159900, 'w7z3t9y6pk', 'u', NULL, 1, 5),
(50, 80, 'Cazadora estilo biker con diseño de doble faz', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F18.avif?alt=media&token=9fa431dc-096b-49b2-a7cd-2c8ee4cd657a', 'Cazadora biker doble faz', 549900, 'q8s2p6t9jw', 'M', NULL, 1, 2),
(51, 120, 'Pantalon recto con estampado moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F22.avif?alt=media&token=c5c943ac-791c-45ab-95c0-a81cbf225bc8', 'Pantalon recto estampado', 169900, 'q2w4e7r8t9', 'L', NULL, 1, 3),
(52, 100, 'Deportivas combinadas con piel de alta calidad', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-mango%2F20.avif?alt=media&token=7af96551-a660-4c46-833f-aaf4bee7c9af', 'Deportivas combinadas piel', 479900, 't5w8s2z3pd', '42', NULL, 1, 6),
(53, 150, 'Camisa elegante con escote en forma de V', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F1.webp?alt=media&token=44cd0037-586f-40fb-b242-172dd1fdc152', 'Camisa con escote en V', 119900, 's5t8q2w3e', 'M', NULL, 4, 1),
(54, 120, 'Pantalon ajustado al cuerpo estilo Skinny fit', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F2.webp?alt=media&token=5fa92750-1e5d-4244-9183-228452811c7b', 'Pantalon Skinny fit', 219900, 'u3i8k2w7e', 'S', NULL, 4, 3),
(55, 100, 'Pantalon confeccionado en tela fluida para un look elegante y cómodo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F3.webp?alt=media&token=335dae33-55c9-44ca-bb0a-9ce5951c713d', 'Pantalon de tela fluida', 239900, 't4s7z1x8y', 'M', NULL, 4, 3),
(56, 80, 'Vestido elegante con manga sisa, ideal para cualquier ocasión', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F4.webp?alt=media&token=9d87ab01-7859-4be9-9ff6-587a6dd759a5', 'Vestido manga sisa', 219900, 'r6t2w8z1y', 'S', NULL, 4, 4),
(57, 120, 'Vestido elegante con escote frontal, perfecto para eventos formales', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F5.webp?alt=media&token=a57e1b92-e2d3-471b-899a-5081734a967a', 'Vestido con escote en frente', 299900, 't3w6s8p2z', 'M', NULL, 4, 4),
(58, 100, 'Tenis deportivos con ajuste de cordón, ideales para un estilo casual y cómodo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F6.webp?alt=media&token=2186008d-0c3d-41cb-850e-f8747deca657', 'Tenis con ajuste de cordon', 183546, 't9w2s5q8pz', '42', NULL, 4, 6),
(59, 90, 'Tenis con un acabado brillante para un estilo llamativo y moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F7.webp?alt=media&token=6852ab49-ab07-4adc-b527-3804a7e1682e', 'Tenis con efecto brillante', 199900, 'z5w8s3q7pd', '41', NULL, 4, 6),
(60, 30, 'Cadena elegante con perlas decorativas, perfecta para complementar cualquier atuendo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F8.webp?alt=media&token=7b54be39-d3b9-48b1-8311-a8a681413636', 'Cadena con perlas decorativas', 79900, 'p4w7z2s8q', 'u', NULL, 4, 5),
(61, 100, 'Cadena dorada elegante y versátil para completar cualquier conjunto', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F9.webp?alt=media&token=21f95276-1b7b-4f50-8107-63ca4e23ecd1', 'Cadena dorada', 69900, 'd5g8t2s7pa', 'u', NULL, 4, 5),
(62, 80, 'Short de denim con efecto degradado, perfecto para un look casual y moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F10.webp?alt=media&token=f338d4ef-22ef-4240-a547-ec487ca5fd68', 'Short de denim con degrade', 67455, 'd6s2t5p8wq', 'M', NULL, 4, 3),
(63, 100, 'Short con cinturon incluido, ideal para un look veraniego y fresco', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F11.webp?alt=media&token=011be942-d2aa-4fd8-8386-c87693f3364b', 'Short con cinturon', 119637, 'c4t7p2w5d', 'L', NULL, 4, 3),
(64, 90, 'Falda corta adornada con taches, perfecta para un look urbano y moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F12.webp?alt=media&token=bcefaf75-0913-4699-bde9-87f291c4f88d', 'Falda corta con taches', 107037, 'f9c2t5p7wq', 'S', NULL, 4, 3),
(65, 80, 'Falda con bolsillos de parche, ideal para un look casual y cómodo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F13.webp?alt=media&token=644af663-24c5-48e1-8ce5-1914049b64e6', 'Falda con bolsillos de parche', 100737, 'b6p9t2s7wq', 'M', NULL, 4, 3),
(66, 100, 'Camiseta con escote cruzado, perfecta para un estilo casual y elegante', 'https://console.firebase.google.com/u/0/project/database-proyecto-final/storage/database-proyecto-final.appspot.com/files/~2Fimg-nafnaf?hl=es-419', 'Camiseta con escote cruzado', 99900, 'c5m8s2t1pw', 'L', NULL, 4, 1),
(67, 80, 'Camiseta con diseño de cuello cruzado para un look moderno y casual', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F15.webp?alt=media&token=ec6bc2e1-1834-437f-b0dd-d0429ae8ec48', 'Camiseta con cuello cruzado', 53946, 'c8i3s6t5xv', 'M', NULL, 4, 1),
(68, 90, 'Camiseta tejida con cuello en V, ideal para un look casual y cómodo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F16.webp?alt=media&token=be86933f-a6ba-461d-b622-ac902281d7ae', 'Camiseta tejida cuello en V', 179900, 't9w2s5p8zc', 'L', NULL, 4, 1),
(69, 100, 'Buzo tejido con cuello alto, perfecto para mantenerte abrigado en climas fríos', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F17.webp?alt=media&token=20f9d145-2473-443d-aac8-a142328d8157', 'Buzo tejido de cuello alto', 229900, 'b8t2j5s7q', 'M', NULL, 4, 2),
(70, 22, 'Collar con dije de placa con diseño de avion, ideal para complementar tu estilo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F18.webp?alt=media&token=973f3b61-dfa5-4df4-9ef7-3c4b1c784617', 'Collar con dije de placa con avion', 22455, 'c6d9t4p8wz', 'u', NULL, 4, 5),
(71, 80, 'Vestido corto con estampado vibrante, perfecto para ocasiones casuales', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-nafnaf%2F19.webp?alt=media&token=b96e1a32-1b0e-4d9a-98cb-89bdb8378235', 'Vestido corto estampado', 219900, 'v3c6t9p2wz', 'M', NULL, 4, 4),
(72, 45, 'Bralette con detalles elegantes y cómodos, perfecto para usar debajo de prendas transparente', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F1.webp?alt=media&token=bef24982-3616-40a5-9de7-7c6dca28a91b', 'Bralette con detalles', 50900, 'b4c8t2p7wz', 's', NULL, 3, 1),
(73, 100, 'Chaqueta bullonada para hombre, ideal para un look urbano y moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F2.webp?alt=media&token=d3abbe4e-275c-4058-a895-17137784ef94', 'Bullonada para hombre', 250900, 'b7p4t2w9z', 'L', NULL, 3, 2),
(74, 80, 'Camisa de denim con manga, perfecta para un estilo casual y desenfadado', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F3.webp?alt=media&token=d4253d8f-2a14-459e-8963-d70742e0000e', 'Camisa en denim manga', 79900, 'c5d8t2p7wz', 'M', NULL, 3, 1),
(75, 200, 'Camisa con estampado elegante, ideal para ocasiones casuales o formales', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F4.webp?alt=media&token=7de76d9b-4ce6-4e36-860f-b7a45991aec7', 'Camisa estampada', 60900, 'c4e7t2p9wz', 'L', NULL, 3, 1),
(76, 100, 'Camiseta de manga corta, perfecta para un look casual y cómodo', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F5.webp?alt=media&token=6a224067-5de5-466e-9e07-1b2e4d3bd543', 'Camiseta manga corta', 65900, 'c5m8s2t1pwz', 'L', NULL, 3, 1),
(77, 90, 'Camiseta con diseño de manga sisa, ideal para un look casual y fresco', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F6.webp?alt=media&token=ce50ca91-fc90-4286-8ccf-18ffa4cb6703', 'Camiseta manga sisa', 65900, 'c6m2s3t9p8wz', 'M', NULL, 3, 1),
(78, 80, 'Chaqueta con diseño moderno y bolsillos funcionales, perfecta para cualquier ocasión', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F7.webp?alt=media&token=04eca8fc-c56a-4d93-9faa-66aee32c68e0', 'Chaqueta con bolsillos', 290000, 'c7m2s9t8p5wz', 'L', NULL, 3, 2),
(79, 100, 'Falda larga confeccionada en denim, ideal para un look casual y versátil', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F8.webp?alt=media&token=3769a10d-0875-44c5-b4f1-07f505a57b50', 'Falda larga en denim', 89900, 'f8l2d3p9wz', 'M', NULL, 3, 3),
(80, 90, 'Jean con efecto desflecado en el bajo, ideal para un look casual y moderno', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F9.webp?alt=media&token=f84f3c47-bf34-4bbd-b62e-ca21beb920b8', 'Jean desflecado', 118900, 'j9d2p3w5z', 'S', NULL, 3, 3),
(81, 80, 'Jean estilo Mom en tono azul claro, cómodo y versátil para cualquier ocasión', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F10.webp?alt=media&token=8ef889d5-0366-40f1-9dec-1394cb91a5eb', 'Jean Mom azul claro', 127900, 'j1m0p9w2z', 'M', NULL, 3, 3),
(82, 100, 'Pantalon Jogger cómodo y moderno, perfecto para un look casual', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F11.webp?alt=media&token=0232cd5a-af7b-4388-aa89-e8ed727b4bd5', 'Pantalon Jogger', 120900, 'p1j1w9z0', 'L', NULL, 3, 3),
(83, 90, 'Pantalon tipo cargo con bolsillos laterales, ideal para un look urbano y funcional', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F12.webp?alt=media&token=d698783f-20fe-471b-ab35-967ce94a12d9', 'Pantalon tipo cargo', 130900, 'p2t3c9w0z', 'M', NULL, 3, 3),
(84, 100, 'Polo de estilo casual y cómodo, perfecto para cualquier ocasión informal', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F13.jpg?alt=media&token=d47b7a16-7d21-452c-b295-a7be18eb2c6d', 'Polo HPYAIZA', 90900, 'p3h2y3a9i0z', 'L', NULL, 3, 1),
(85, 90, 'Tenis clásicos de la marca Adidas, ideales para un look deportivo y casual', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F14.webp?alt=media&token=06a87ea2-6f22-4339-be2f-a48bd7d3732b', 'Tenis Adidas Clasicos', 400900, 't4a0c9w0z', '42', NULL, 3, 6),
(86, 100, 'Tenis Adidas con diseño único y moderno, perfectos para un estilo deportivo y casual', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F15.webp?alt=media&token=151f738d-4a00-4019-90bb-3063dbfbaadf', 'Tenis Adidas con dise', 400900, 't5a9c0w0z', '41', NULL, 3, 6),
(87, 90, 'Tenis deportivos de la marca Adidas, ideales para actividades físicas o un look casual', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F16.webp?alt=media&token=e9cfad77-3104-4c5f-8afa-554150a6023e', 'Tenis Adidas deportivos', 390900, 't6a0d9w0z', '42', NULL, 3, 6),
(88, 100, 'Tenis Adidas Hoops, diseñados para un estilo deportivo y urbano', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F17.webp?alt=media&token=02128c2e-048b-400f-af75-f1dbfbb18ab9', 'Tenis Adidas Hoops', 350900, 't7a0h9w0z', '41', NULL, 3, 6),
(89, 90, 'Tenis New Balance, ideales para un estilo deportivo y urbano', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F18.webp?alt=media&token=d381fa9d-e627-4117-af38-ce135d67ec61', 'Tenis New Balance', 350900, 't8n0b9w0z', '40', NULL, 3, 6),
(90, 80, 'Tenis New Balance, ideales para un estilo deportivo y urbano', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F19.webp?alt=media&token=ab5706b1-91dc-4e28-8494-90c98332e464', 'Tenis New Balance', 450400, 't9n1b2w0z', '39', NULL, 3, 6),
(91, 100, 'Vestido corto, perfecto para ocasiones casuales o formales, con un diseño versátil y elegante.', 'https://firebasestorage.googleapis.com/v0/b/database-proyecto-final.appspot.com/o/img-rifle%2F20.webp?alt=media&token=c69e761b-44e9-49ac-b0e8-3447acd0a4ef', 'Vestido corto', 83900, 'v2c0w9z0b1', 'M', NULL, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_prenda`
--

CREATE TABLE `tipo_prenda` (
  `id_tipo_prenda` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_prenda`
--

INSERT INTO `tipo_prenda` (`id_tipo_prenda`, `nombre`) VALUES
(1, 'Camisas'),
(2, 'Chaquetas'),
(3, 'Pantalones'),
(4, 'Vestidos'),
(5, 'Accesorios'),
(6, 'calzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `codigo_postal` varchar(50) DEFAULT NULL,
  `correo` varchar(100) NOT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `medio_pago` varchar(50) NOT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `nombres` varchar(50) NOT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `apellidos`, `cedula`, `codigo_postal`, `correo`, `departamento`, `direccion`, `medio_pago`, `municipio`, `nombres`, `pais`, `sexo`) VALUES
(1, 'puerta', '1017233498', '123348', 'daniwar3@gmail.com', 'antioquia', 'carrera73', 'efectivo', 'medellin', 'daniel', 'colombia', 'm'),
(2, 'Diaz', '1214729035', '123348', 'anisdiar0503@gmail.com', 'antioquia', 'carrera73', 'efectivo', 'medellin', 'Ana', 'colombia', 'm'),
(3, 'Diaz', '1214729035', '123348', 'anisdiar0503@gmail.com', 'antioquia', NULL, 'efectivo', 'medellin', 'Ana', 'colombia', 'm'),
(4, 'puerta', '98459683', '123348', 'jhonpuerta@gmail.com', 'antioquia', NULL, 'efectivo', 'medellin', 'jhon', 'colombia', 'm'),
(5, 'puerta', '98459683', '123348', 'jhonpuerta@gmail.com', 'antioquia', NULL, 'efectivo', 'medellin', 'jhon', 'colombia', 'm'),
(6, 'valeria', '1234567', '123348', 'valeria@valeria.com', 'antioquia', NULL, 'efectivo', 'medellin', 'valeria', 'colombia', 'm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id_detalle`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `FK4a0lfwlpmytywxpwjfa1a3ar2` (`id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `FK3twklc5q92cp6c7i9wjy9o36q` (`id_detalle`),
  ADD KEY `FKc1mrc7r89nch4xtol227kdwce` (`id_marca`),
  ADD KEY `FK19rjdrn8fq6kxhrwms1di5h7e` (`id_tipo_prenda`);

--
-- Indices de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  ADD PRIMARY KEY (`id_tipo_prenda`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  MODIFY `id_tipo_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK4a0lfwlpmytywxpwjfa1a3ar2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK19rjdrn8fq6kxhrwms1di5h7e` FOREIGN KEY (`id_tipo_prenda`) REFERENCES `tipo_prenda` (`id_tipo_prenda`),
  ADD CONSTRAINT `FK3twklc5q92cp6c7i9wjy9o36q` FOREIGN KEY (`id_detalle`) REFERENCES `detalle` (`id_detalle`),
  ADD CONSTRAINT `FKc1mrc7r89nch4xtol227kdwce` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
