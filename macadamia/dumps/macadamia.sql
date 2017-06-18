-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: macadamia
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eps` (
  `ideps` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`ideps`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (23,'COLMEDICA ENTIDAD PROMOTORA DE SALUD S.A.'),(24,'CAJA DE COMPENSACION FAMILIAR COMPENSAR'),(25,'COMFENALCO VALLE'),(26,'SALUD COLPATRIA S.A.'),(27,'CAFESALUD EPS'),(28,'CRUZBLANCA S.A.'),(29,'E.P.S. FAMISANAR LTDA. CAFAM COLSUBSIDIO'),(30,'E.P.S. SANITAS S.A.'),(31,'SALUDCOLOMBIA EPS S.A.'),(32,'SALUDCOOP EPS'),(33,'SALUDVIDA S.A. EPS'),(34,'SERVICIO OCCIDENTAL DE SALUD S.A. S.O.S.'),(35,'SOLIDARIA DE SALUD SOLSALUD S.A.'),(36,'COOMEVA EPS S.A.'),(37,'INSTITUTO DE SEGUROS SOCIALES'),(38,'CAPRECOM'),(39,'SALUD TOTAL S.A. EPS ARS'),(40,'CAJA DE COMPENSACION FAMILIAR COMFENALCO ANTIOQUIA'),(41,'COMPAÑIA SURAMERICANA DE SERVICIOS DE SALUD S.A. SUSALUD'),(42,'HUMANA VIVIR S.A. EPS'),(43,'REDSALUD ATENCION HUMANA EPS S.A.'),(44,'-- NINGUNA --');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Femenino'),(2,'Masculino');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposanguineo`
--

DROP TABLE IF EXISTS `gruposanguineo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposanguineo` (
  `idgruposanguineo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idgruposanguineo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposanguineo`
--

LOCK TABLES `gruposanguineo` WRITE;
/*!40000 ALTER TABLE `gruposanguineo` DISABLE KEYS */;
INSERT INTO `gruposanguineo` VALUES (1,'A'),(2,'B'),(3,'AB'),(4,'O');
/*!40000 ALTER TABLE `gruposanguineo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupovisitante`
--

DROP TABLE IF EXISTS `grupovisitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupovisitante` (
  `idgrupovisitante` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `nombre` varchar(128) NOT NULL,
  PRIMARY KEY (`idgrupovisitante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupovisitante`
--

LOCK TABLES `grupovisitante` WRITE;
/*!40000 ALTER TABLE `grupovisitante` DISABLE KEYS */;
INSERT INTO `grupovisitante` VALUES (1,'2017-06-13','Grupo fecha: 2017-06-13');
/*!40000 ALTER TABLE `grupovisitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(128) NOT NULL,
  `apellidos` varchar(128) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `celular` varchar(128) DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `observaciones` text,
  `genero_idgenero` int(11) NOT NULL,
  `rh_idrh` int(11) NOT NULL,
  `gruposanguineo_idgruposanguineo` int(11) NOT NULL,
  `eps_ideps` int(11) NOT NULL,
  `tipopersona_idtipopersona` int(11) NOT NULL,
  PRIMARY KEY (`idpersona`),
  KEY `fk_persona_genero_idx` (`genero_idgenero`),
  KEY `fk_persona_rh1_idx` (`rh_idrh`),
  KEY `fk_persona_gruposanguineo1_idx` (`gruposanguineo_idgruposanguineo`),
  KEY `fk_persona_tipopersona1_idx` (`tipopersona_idtipopersona`),
  KEY `fk_persona_eps1_idx` (`eps_ideps`),
  CONSTRAINT `fk_persona_eps1` FOREIGN KEY (`eps_ideps`) REFERENCES `eps` (`ideps`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_genero` FOREIGN KEY (`genero_idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_gruposanguineo1` FOREIGN KEY (`gruposanguineo_idgruposanguineo`) REFERENCES `gruposanguineo` (`idgruposanguineo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_rh1` FOREIGN KEY (`rh_idrh`) REFERENCES `rh` (`idrh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_tipopersona1` FOREIGN KEY (`tipopersona_idtipopersona`) REFERENCES `tipopersona` (`idtipopersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (2,'Oscar M','Borja N','dsdsdf@wefsdsdf.com','222323','2013-11-30',NULL,2,1,2,23,1),(3,'Oscar M','Borja N','dsdsdf@wefsdsdf.com','222323','2013-11-30',NULL,2,1,2,23,1),(4,'Oscar M','Borja N','dsdsdf@wefsdsdf.com','222323','2013-11-30',NULL,2,1,2,23,1),(5,'Oaojoij','oiioj','76786','jkjhkhkjh','0006-07-08',NULL,1,1,1,23,1),(6,'ashashjdkh','hhkjhkjh','kjkjhkjh@jhkjh','65675','0005-05-05',NULL,1,1,1,23,1),(7,'ygig','gyugyug','7868768','97876876','0055-05-05',NULL,1,1,1,23,1),(8,'ygig','gyugyug','7868768','97876876','0055-05-05',NULL,1,1,1,23,1),(9,'askjasdh','gihih','54564','5454654','0333-04-03',NULL,1,1,1,23,1),(10,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(11,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(12,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(13,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(14,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(15,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(16,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(17,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(18,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(19,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(20,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(21,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(22,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(23,'qwoqwuy','uyuyiuy','admin@avisosgratis.co','7676','2017-12-31',NULL,2,1,1,23,1),(24,'uyytuyt','ytyt','gjhgjg','8665','0005-05-05',NULL,1,1,1,23,1),(25,'gyg','hgjhgj','ufgjhg','886','0065-05-06',NULL,1,1,1,23,1),(26,'igig','kggh','tyfyfhjf','5765','0004-04-04',NULL,1,1,1,23,1),(27,'hsjkhsjahd','jhkjkjhjk','ugjhk','86678','0444-03-31',NULL,1,1,1,23,1),(28,'Carlos','Sanchez','hjsajhdas@snamsnx.com','667575','2000-05-23',NULL,1,1,1,23,1),(29,'Pedro Antonio','Dias Marin','hkhsajhaskd@wqwddsa.com','272354876234','2012-11-30',NULL,2,1,1,23,1),(30,'Juan CAmilo','Echeverry','lhkjgvhjk','67564567','2011-10-30',NULL,2,1,1,23,1),(31,'Ana Patricia','Diaz Duarte','ghjlugvb','7654567',NULL,NULL,1,1,1,23,1),(32,'lslqws','kkjhkj','kljhgfhjk','8765678',NULL,NULL,2,1,1,23,1),(33,'Camilo Arturo','Diaz peres','dssadæ@sdasdasd.com','2323232323','2015-11-30',NULL,2,2,2,27,1),(34,'Diana sofia','borja O','kjgkjjh','76657698','2001-10-12',NULL,1,1,1,27,1),(35,'ukh','llkj','khjklj','85678','2016-11-30',NULL,1,1,1,23,1);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona_grupovisitante`
--

DROP TABLE IF EXISTS `persona_grupovisitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona_grupovisitante` (
  `idpersona_grupovisitante` bigint(20) NOT NULL AUTO_INCREMENT,
  `persona_idpersona` bigint(20) NOT NULL,
  `grupovisitante_idgrupovisitante` int(11) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firmado` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpersona_grupovisitante`),
  KEY `fk_persona_grupovisitante_persona1_idx` (`persona_idpersona`),
  KEY `fk_persona_grupovisitante_grupovisitante1_idx` (`grupovisitante_idgrupovisitante`),
  CONSTRAINT `fk_persona_grupovisitante_grupovisitante1` FOREIGN KEY (`grupovisitante_idgrupovisitante`) REFERENCES `grupovisitante` (`idgrupovisitante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_grupovisitante_persona1` FOREIGN KEY (`persona_idpersona`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona_grupovisitante`
--

LOCK TABLES `persona_grupovisitante` WRITE;
/*!40000 ALTER TABLE `persona_grupovisitante` DISABLE KEYS */;
INSERT INTO `persona_grupovisitante` VALUES (1,30,1,'2017-06-13 10:09:18',0),(2,31,1,'2017-06-13 23:04:06',1),(3,32,1,'2017-06-13 05:13:38',0),(4,33,1,'2017-06-13 05:37:26',0),(5,34,1,'2017-06-13 06:35:58',0),(6,35,1,'2017-06-13 10:10:58',0);
/*!40000 ALTER TABLE `persona_grupovisitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rh` (
  `idrh` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idrh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'Positívo'),(2,'Negatívo');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signature`
--

DROP TABLE IF EXISTS `signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signature` (
  `idsignature` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `imagen` varchar(512) NOT NULL,
  `persona_grupovisitante_idpersona_grupovisitante` bigint(20) NOT NULL,
  PRIMARY KEY (`idsignature`),
  KEY `fk_signature_persona_grupovisitante1_idx` (`persona_grupovisitante_idpersona_grupovisitante`),
  CONSTRAINT `fk_signature_persona_grupovisitante1` FOREIGN KEY (`persona_grupovisitante_idpersona_grupovisitante`) REFERENCES `persona_grupovisitante` (`idpersona_grupovisitante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature`
--

LOCK TABLES `signature` WRITE;
/*!40000 ALTER TABLE `signature` DISABLE KEYS */;
/*!40000 ALTER TABLE `signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopersona`
--

DROP TABLE IF EXISTS `tipopersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopersona` (
  `idtipopersona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipopersona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopersona`
--

LOCK TABLES `tipopersona` WRITE;
/*!40000 ALTER TABLE `tipopersona` DISABLE KEYS */;
INSERT INTO `tipopersona` VALUES (1,'Visitante');
/*!40000 ALTER TABLE `tipopersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'macadamia'
--

--
-- Dumping routines for database 'macadamia'
--
/*!50003 DROP PROCEDURE IF EXISTS `getUltimosVisitantesRegistrados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`macadamia`@`172.17.0.1` PROCEDURE `getUltimosVisitantesRegistrados`(
	IN _fecha date,
    IN _limit INT)
BEGIN
	select p.idpersona, p.nombres, p.apellidos, pg.registro, pg.firmado, gv.fecha from persona as p 
    inner join persona_grupovisitante  as pg on pg.persona_idpersona = p.idpersona
    inner join grupovisitante as gv on gv.idgrupovisitante = pg.grupovisitante_idgrupovisitante
    where gv.fecha = _fecha
    order by registro DESC
    limit _limit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-17 20:38:42
