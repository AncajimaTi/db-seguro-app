-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.21-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para tata_seguro_db
CREATE DATABASE IF NOT EXISTS `tata_seguro_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */;
USE `tata_seguro_db`;

-- Volcando estructura para tabla tata_seguro_db.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `idplan` int(11) DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido_paterno` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `apellido_materno` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `fecha_nacimiento` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `genero` tinyint(1) DEFAULT NULL,
  `segura` tinyint(1) DEFAULT NULL,
  `doc_number` varchar(11) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `idplan` (`idplan`),
  CONSTRAINT `idplan_FK1` FOREIGN KEY (`idplan`) REFERENCES `plan` (`idplan`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla tata_seguro_db.cliente: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Volcando estructura para tabla tata_seguro_db.plan
CREATE TABLE IF NOT EXISTS `plan` (
  `idplan` int(11) NOT NULL AUTO_INCREMENT,
  `cobertura` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT '0',
  `name_plan` varchar(250) COLLATE utf8mb4_spanish2_ci NOT NULL DEFAULT '0',
  `zona` tinyint(4) NOT NULL DEFAULT 1,
  `clinica` tinyint(4) NOT NULL DEFAULT 1,
  `medico` tinyint(4) NOT NULL DEFAULT 1,
  `chequeo` tinyint(4) NOT NULL DEFAULT 1,
  `reembolso_nacional` tinyint(4) NOT NULL DEFAULT 1,
  `reembolso_internacional` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idplan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla tata_seguro_db.plan: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
INSERT INTO `plan` (`idplan`, `cobertura`, `name_plan`, `zona`, `clinica`, `medico`, `chequeo`, `reembolso_nacional`, `reembolso_internacional`) VALUES
	(1, '1MM', 'PLAN BASICO', 1, 1, 0, 0, 0, 0),
	(2, '5MM', 'PLAN AVANZADO', 1, 1, 1, 1, 0, 0);
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;

-- Volcando estructura para tabla tata_seguro_db.prueba
CREATE TABLE IF NOT EXISTS `prueba` (
  `idprueba` int(11) NOT NULL AUTO_INCREMENT,
  `edad` int(11) DEFAULT 0,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci DEFAULT '',
  `apellido` varchar(250) COLLATE utf8mb4_spanish2_ci DEFAULT '',
  PRIMARY KEY (`idprueba`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- Volcando datos para la tabla tata_seguro_db.prueba: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` (`idprueba`, `edad`, `nombre`, `apellido`) VALUES
	(1, 13, '0', '0'),
	(2, 20, 'tony', 'start'),
	(3, 20, 'jesus', 'chilca'),
	(5, 20, 'jesus', 'chilca'),
	(7, 10, 'Prueba', 'ApellidoPrueba');
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
