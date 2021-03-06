CREATE DATABASE  IF NOT EXISTS `univalle_survey_information` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `univalle_survey_information`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: univalle_survey_information
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Jorge Andres Castro','jcastro','db43c029cd78f1772ccd268179e01e32');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id_idx` (`question_id`),
  CONSTRAINT `question_id` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3290 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'Masculino',6),(2,'Femenino',6),(3,'Afrodescendiente',7),(4,'Blanco',7),(5,'Indígena',7),(6,'Mestizo',7),(7,'No está casado(a) y vive en pareja hace menos de 2 años',8),(8,'No está  casado (a)  y vive en pareja hace 2 años o más',8),(9,'Está casado (a)',8),(10,'Está separado (a) o divorciado (a)',8),(11,'Está viudo (a)',8),(12,'Está soltero (a)',8),(13,'Jefe (a) del hogar',9),(14,'Pareja, esposo(a), Cónyuge, Compañero(a)',9),(15,'Hijo(a), hijastro(a)',9),(16,'Nieto(a)',9),(17,'Otro  pariente',9),(18,'Otro no pariente',9),(19,'Técnico',12),(20,'Tecnólogo',12),(21,'Profesional',12),(22,'Especialización',12),(23,'Maestría',12),(24,'Doctorado o Posdoctorado',12),(25,'Comunidad académica',13),(26,'Comunidad científica',13),(27,'Comunidad u organización política',13),(28,'Comunidad religiosa',13),(29,'Comunidad cultural-artística',13),(30,'Comunidad u organización deportiva',13),(31,'Antes de iniciar su pregrado',14),(32,'Mientras realizaba su pregrado',14),(33,'Después de obtener el grado',14),(34,'Aún no ha obtenido su primer empleo',14),(35,'Si',16),(36,'No',16),(37,'Agencia de empleo',17),(38,'Anuncios clasificados (en medios físicos)',17),(39,'Anuncios clasificados (en internet) ',17),(40,'Convocatorias ',17),(41,'Llevando hojas de vida a empresas',17),(42,'Servicio público de empleo del SENA',17),(43,'En la bolsa de empleo de egresados de Univalle',17),(44,'Profesores de la Universidad',17),(45,'Compañeros de la Universidad',17),(46,'Amigos (cercanos)',17),(47,'Personas conocidas (amigos de mis amigos)',17),(48,'Familiares',17),(49,'Vecinos',17),(50,'Estudiar',19),(51,'Trabajar',19),(52,'Oficios del Hogar',19),(53,'Se encuentra incapacitado permanentemente para trabajar',19),(54,'Empleado de una empresa pública',21),(55,'Empleado de una empresa privada',21),(56,'Trabajador independiente',21),(57,'Arte, Cultura y Esparcimiento',24),(58,'Asesoría, Capacitación y Análisis',24),(59,'Automatización, Creación, Adaptación y Soluciones Tecnológicas',24),(60,'Ciencias Naturales, Aplicadas y Relacionadas',24),(61,'Deporte',24),(62,'Diseño Gráfico y Publicidad',24),(63,'Educación y Ciencias Sociales',24),(64,'Explotación Primaria y Extractiva',24),(65,'Finanzas, Administración, Contable y Organizacional',24),(66,'Investigación, Diseño y Análisis de Proyectos',24),(67,'Mantenimiento, Montajes y Asistencia Técnica',24),(68,'Manufactura, Fabricación y Ensamble',24),(69,'Medio Ambiente y Gestión Social',24),(70,'Medios de Comunicación (Radio, Televisión y otras)',24),(71,'Mercadeo, Ventas y Servicios (Telecomunicación, Gas, Acueducto y Energía)',24),(72,'Ocupaciones de Dirección y Gerencia',24),(73,'Operación de Equipos',24),(74,'Producción, Calidad y Logística',24),(75,'Transporte',24),(76,'Salud',24),(77,'Servicios Gubernamentales',24),(78,'Servicio Social y Religión',24),(79,'Sistemas',24),(80,'Si',26),(81,'No',26),(82,'Agencia de empleo',27),(83,'Anuncios clasificados (en medios físicos)',27),(84,'Anuncios clasificados (en internet)',27),(85,'Convocatorias',27),(86,'Llevando hojas de vida a empresas',27),(87,'Servicio público de empleo del SENA',27),(88,'En la bolsa de empleo de egresados de Univalle',27),(89,'Profesores de la Universidad',27),(90,'Compañeros de la Universidad',27),(91,'Amigos (cercanos)',27),(92,'Personas conocidas (amigos de mis amigos)',27),(93,'Familiares',27),(94,'Vecinos',27),(95,'Si',28),(96,'No',28),(97,'Escrito y fijo',29),(98,'Escrito e indefinido',29),(99,'Verbal y fijo',29),(100,'Verbal e indefinido',29),(101,'Contrato de prestación de servicios',29),(102,'Pensión',30),(103,'Salud',30),(104,'ARP',30),(105,'Primas',30),(106,'Al menos 10',31),(107,'Entre 11 y 50',31),(108,'Entre 51 y 200',31),(109,'Más de 200',31),(110,'Menos de un S.M.M.L.V',32),(111,'De 1 a 2 S.M.M.L.V',32),(112,'Más de 2 y hasta 3 S.M.M.L.V',32),(113,'Más de 3 y hasta 4 S.M.M.L.V',32),(114,'Más de 4 y hasta 5 S.M.M.L.V',32),(115,'Más de 5 y hasta 6 S.M.M.L.V',32),(116,'Más de 6 S.M.M.L.V',32),(117,'Si',33),(118,'No',33),(119,'Sí, me encuentro buscando empleo activamente',34),(120,'Sí, mi búsqueda de empleo es pasiva: no es habitual la búsqueda de oportunidades laborales, pero estoy atento a la información que me llega sobre las vacantes',34),(121,'No',34),(122,'Diariamente',36),(123,'Una vez por semana',36),(124,'Varias veces por semana',36),(125,'Varias veces en el mes',36),(126,'Ocasionalmente',36),(127,'Agencia de empleo',37),(128,'Anuncios clasificados (en medios físicos)',37),(129,'Anuncios clasificados (en internet)',37),(130,'Convocatorias',37),(131,'Llevando hojas de vida a empresas',37),(132,'Servicio público de empleo del SENA',37),(133,'En la bolsa de empleo de egresados de Univalle',37),(134,'Antiguos empleadores',37),(135,'Profesores de la Universidad',37),(136,'Compañeros de la Universidad',37),(137,'Amigos (cercanos)',37),(138,'Personas conocidas (amigos de mis amigos)',37),(139,'Familiares',37),(140,'Vecinos',37),(141,'Los visita personalmente',38),(142,'Los contacta telefonicamente',38),(143,'Les escribe correos electrónicos',38),(144,'Los contacta por facebook o redes sociales similares',38),(145,'Una vez por semana',39),(146,'Dos o más veces por semana',39),(147,'Ocasionalmente',39),(148,'Perdió el contacto con esa(s) persona(s)',39),(149,'Sí, he ayudado directamente a que alguien se ubique laboralmente',40),(150,'Sí, he ayudado de manera indirecta a que alguien se ubique laboralmente',40),(151,'Sí, he actudo como intermediario pero la contratación no fue efectiva',40),(152,'No he actuado como intermediario para ayudar alguien que busca empleo',40),(153,'La re-envía a todos sus contactos de correo electrónico o redes sociales, aunque no hayan manifestado que estén buscando empleo',41),(154,'La re-envía sólo a sus contactos (no familiares) más cercanos, aunque no hayan manifestado que estén buscando empleo',41),(155,'La re-envía sólo a los familiares que puedan estar interesados, aunque no hayan manifestado que estén buscando empleo',41),(156,'La re-envía sólo a personas que le hayan manifestado que están buscando empleo',41),(157,'No la re-envía',41),(161,'Tecnología Química',11),(171,'Tecnología En Interpretación Para Sordos Y Sordociegos',11),(181,'Tecnología En Recreación',11),(191,'Tecnología En Atención Prehospitalaria',11),(201,'Tecnología En Electricidad Industrial Y De Potencia',11),(211,'Tecnología Electrónica',11),(221,'Tecnología En Sistemas De Información',11),(231,'Tecnología En Alimentos',11),(241,'Tecnología En Manejo Y Conservación De Suelos Y Aguas',11),(251,'Tecnología En Ecología Y Manejo Ambiental',11),(261,'Tecnología Agroambiental',11),(271,'Tecnología En Logística Portuaria Y Del Transporte',11),(281,'Tecnología En Mantenimiento De Equipo Portuario Y Del Transporte',11),(291,'Tecnología En Topografía',11),(301,'Tecnología En Administración De Empresas',11),(311,'Tecnología En Gestión Ejecutiva - Convenio Eustaquio Palacios (ceres)',11),(321,'Tecnología En Administración De Empresas',11),(331,'Tecnología En Gestión Portuaria',11),(341,'Tecnología En Dirección De Empresas Turísticas Y Hoteleras',11),(351,'Tecnología En Gestión Ejecutiva',11),(361,'Tecnología En Gestión Ejecutiva',11),(371,'Biología',11),(381,'Biología Énfasis En Botánica',11),(391,'Biología Énfasis Entomología',11),(401,'Biología Énfasis En Genética',11),(411,'Biología Énfasis En Marina',11),(421,'Biología Énfasis En Zoología',11),(431,'Física',11),(441,'Matemáticas',11),(451,'Química',11),(461,'Especialización Tecnológica En Química Con Énfasis En Técnicas Modernas De Análisis Instrumental',11),(471,'Historia',11),(481,'Trabajo Social',11),(491,'Licenciatura En Filosofía',11),(501,'Licenciatura En Historia',11),(511,'Licenciatura En Literatura',11),(521,'Licenciatura En Lenguas Modernas (diurna)',11),(531,'Licenciatura En Lenguas Modernas (vespertina)',11),(541,'Licenciatura En Ciencias Sociales',11),(551,'Comercio Exterior',11),(561,'Profesional En Filosofía',11),(571,'Geografía',11),(581,'Licenciatura En Lenguas Extranjeras Inglés - Francés',11),(591,'Licenciatura En Educación Básica Con Énfasis En Ciencias Sociales (noc)',11),(601,'Licenciatura En Letras',11),(611,'Economía',11),(621,'Economía Industrial',11),(631,'Sociología',11),(641,'Profesional En Ciencias Del Deporte',11),(651,'Profesional En Ciencias Del Deporte',11),(661,'Licenciatura En Educación Inglés-español',11),(671,'Licenciatura En Educación Lenguas Modernas',11),(681,'Licenciatura En Matemática',11),(691,'Licenciatura En Física',11),(701,'Licenciatura En Biología',11),(711,'Licenciatura En Química',11),(721,'Licenciatura En Educación Matemática - Física',11),(731,'Licenciatura En Biología Y Química',11),(741,'Licenciatura En Educación Física Y Salud',11),(751,'Licenciatura En Consejería Psicológica',11),(761,'Psicología',11),(771,'Licenciatura En Educación Primaria',11),(781,'Profesional En Recreación',11),(791,'Recreación',11),(801,'Licenciatura En Educación Básica Con Énfasis En Ciencias Naturales Y Educación Ambiental',11),(811,'Licenciatura En Educación Básica Con Énfasis En Matemáticas',11),(821,'Licenciatura En Educación Biología - Química Ppd',11),(831,'Licenciatura En Ciencias Agropecuarias (ppd)',11),(841,'Licenciatura En Electricidad Y Electrónica (ppd)',11),(851,'Licenciatura En Dibujo De La Construcción (ppd)',11),(861,'Licenciatura Dibujo Mecánico (ppd)',11),(871,'Licenciatura En Educación Física Y Deportes',11),(881,'Licenciatura En Educación Popular',11),(891,'Licenciatura En Matemáticas Y Física',11),(901,'Estudios Políticos Y Resolución De Conflictos',11),(911,'Licenciatura En Música',11),(921,'Licenciatura En Danza Clásica',11),(931,'Arquitectura',11),(941,'Comunicación Social',11),(951,'Diseño',11),(961,'Diseño Industrial',11),(971,'Diseño Grafico',11),(981,'Música',11),(991,'Licenciatura En Arte Dramático',11),(1001,'Licenciatura En Artes Visuales',11),(1011,'Enfermería General',11),(1021,'Enfermería',11),(1031,'Fisioterapia',11),(1041,'Bacteriología Y Laboratorio Clínico',11),(1051,'Fonoaudiología',11),(1061,'Terapia Ocupacional',11),(1071,'Medicina Y Cirugía',11),(1081,'Odontología',11),(1091,'Ingeniería Topográfica',11),(1101,'Ingeniería De Materiales',11),(1111,'Ingeniería De Sistemas',11),(1121,'Ingeniería Electrónica',11),(1131,'Ingeniería Agrícola',11),(1141,'Ingeniería Eléctrica',11),(1151,'Ingeniería Civil',11),(1161,'Ingeniería Mecánica',11),(1171,'Ingeniería Química',11),(1181,'Ingeniería Sanitaria',11),(1191,'Ingeniería Industrial',11),(1201,'Estadística',11),(1211,'Ingeniería De Alimentos',11),(1221,'Ingeniería Sanitaria Y Ambiental',11),(1231,'Contaduría Pública',11),(1241,'Administración De Empresas',11),(1251,'Comercio Exterior',11),(1261,'Especialización En Etnobiología',11),(1271,'Especialización En Entomología',11),(1281,'Especialización En Gerontología',11),(1291,'Especialización En Desarrollo Comunitario',11),(1301,'Especialización En Enseñanza De Ciencias Sociales - Historia De Colombia',11),(1311,'Especialización En Bilingüismo',11),(1321,'Especialización En Traducción',11),(1331,'Especialización En Ética Y Derechos Humanos',11),(1341,'Especialización En Pensamiento Político Contemporáneo',11),(1351,'Especialización En Educación Bilingüe',11),(1361,'Especialización En Enseñanza De La Lectura Y Escritura En Lengua Materna',11),(1371,'Especialización En Teoría, Métodos Y Técnicas En Investigación Social',11),(1381,'Especialización En Intervención Con Familias',11),(1391,'Especialización En Intervención Social Con Familias',11),(1401,'Especialización En Intervención Social Comunitaria',11),(1411,'Especialización En Teoría Y Métodos De Investigación En Sociología',11),(1421,'Especialización En Desarrollo De Agroindustrias Rurales',11),(1431,'Especialización En Economía Solidaria',11),(1441,'Especialización En Procesos De Intervención Social',11),(1451,'Especialización En Psicología Del Nino',11),(1461,'Especialización En Procesos Psicosociales Para La Efectividad Organizacional',11),(1471,'Especialización En Docencia Universitaria',11),(1481,'Especialización En Enseñanza De Las Ciencias Naturales',11),(1491,'Especialización En Administración De La Educación',11),(1501,'Especialización En Educación Matemática',11),(1511,'Especialización En Administración De Empresas De La Construcción',11),(1521,'Especialización En Paisajismo',11),(1531,'Especialización En Educación Musical',11),(1541,'Especialización En Practicas Audiovisuales',11),(1551,'Especialización En Comunicación Y Cultura',11),(1561,'Especialización En Cirugía General',11),(1571,'Especialización En Anestesiología',11),(1581,'Especialización En Neurocirugía',11),(1591,'Especialización En Oftalmología',11),(1601,'Especialización En Otorrinolaringología',11),(1611,'Especialización En Urología',11),(1621,'Especialización En Medicina Física Y Rehabilitación',11),(1631,'Especialización En Pediatría',11),(1641,'Especialización En Medicina Interna',11),(1651,'Especialización En Ginecología Y Obstetricia',11),(1661,'Especialización En Anatomía Patológica',11),(1671,'Especialización En Psiquiatría',11),(1681,'Especialización En Dermatología',11),(1691,'Especialización En Radiodiagnóstico',11),(1701,'Especialización En Anatomía Patológica Y Patología Clínica',11),(1711,'Especialización En Ortopedia Y Traumatología',11),(1721,'Especialización En Medicina Familiar',11),(1731,'Especialización En Nefrología',11),(1741,'Especialización En Cardiología',11),(1751,'Especialización En Administración De Salud',11),(1761,'Especialización En Bioética',11),(1771,'Especialización En Auditoria En Salud',11),(1781,'Especialización En Gastroenterología Y Endoscopia Digestiva',11),(1791,'Especialización En Neonatología',11),(1801,'Especialización En Cirugía Pediátrica',11),(1811,'Especialización En Cuidado Intensivo',11),(1821,'Especialización En Enfermería Nefrológica',11),(1831,'Especialización En Enfermería Materno Perinatal',11),(1841,'Especialización En Enfermería Neonatal',11),(1851,'Especialización En Salud Familiar',11),(1861,'Especialización En Periodoncia',11),(1871,'Especialización En Cirugía Plástica, Estética, Maxilofacial Y De La Mano',11),(1881,'Especialización En Odontología Pediátrica Y Ortopedia Maxilar',11),(1891,'Especialización En Ortodoncia',11),(1901,'Especialización En Rehabilitación Oral',11),(1911,'Especialización En Dermatología Y Cirugía Dermatológica',11),(1921,'Especialización En Fisioterapia Cardiopulmonar',11),(1931,'Especialización En Enfermería En Cuidado Critico Del Adulto',11),(1941,'Especialización En Enfermería En Cuidado A Las Personas Con Heridas Y Ostomías',11),(1951,'Especialización En Medicina Crítica Y Cuidado Intensivo',11),(1961,'Especialización En Enfermería En Salud Mental Y Psiquiatría',11),(1971,'Especialización En Cirugía De Trauma Y Emergencias',11),(1981,'Especialización En Enfermedades Infecciosas En Pediatría',11),(1991,'Especialización En Otología Y Neurotología',11),(2001,'Especialización En Ciencias Térmicas',11),(2011,'Especialización En Geomática',11),(2021,'Especialización En Estructuras',11),(2031,'Especialización En Computadores Y Sistemas Digitales',11),(2041,'Especialización En Redes De Comunicación',11),(2051,'Especialización En Maquinaria Y Equipo Agrícola Y Agroindustrial',11),(2061,'Especialización En Sistemas De Información',11),(2071,'Especialización En Automatización Industrial',11),(2081,'Especialización En Materiales De Ingeniería',11),(2091,'Especialización En Ingeniería Sanitaria Y Ambiental',11),(2101,'Especialización En Sistemas',11),(2111,'Especialización En Gestión De La Innovación Tecnológica',11),(2121,'Especialización En Sistemas De Transmisión Y Distribución De Energía Eléctrica',11),(2131,'Especialización En Diseño Y Construcción De Equipo Agroindustrial',11),(2141,'Especialización En Mecatrónica',11),(2151,'Especialización En Estadística Aplicada',11),(2161,'Especialización En Logística',11),(2171,'Especialización En Administración De Empresas',11),(2181,'Especialización En Administración Pública (esap)',11),(2191,'Especialización En Finanzas',11),(2201,'Especialización En Administración De La Calidad Total Y La Productividad',11),(2211,'Especialización En Marketing Estratégico',11),(2221,'Especialización En Políticas Públicas Y Gestión Pública',11),(2231,'Especialización En Finanzas En Organizaciones Del Sector Salud',11),(2241,'Especialización En Gestión De La Calidad Y La Productividad',11),(2251,'Especialización En Negociación Y Contratación Internacional',11),(2261,'Especialización En Conciliación Y Resolución De Conflictos',11),(2271,'Especialización En Enseñanza - Aprendizaje Del Derecho',11),(2281,'Maestría En Ciencias - Química',11),(2291,'Maestría En Ciencias - Física',11),(2301,'Maestría En Ciencias - Matemáticas',11),(2311,'Maestría En Ciencias - Biología',11),(2321,'Maestría En Lingüística Y Español',11),(2331,'Maestría En Historia Andina',11),(2341,'Maestría En Filosofía',11),(2351,'Maestría En Literatura Colombiana Y Latinoamericana',11),(2361,'Maestría En Historia',11),(2371,'Maestría En Intervención Social',11),(2381,'Maestría En Economía Aplicada',11),(2391,'Maestría En Sociología',11),(2401,'Maestría En Administración De La Educación Énfasis En Dirección Y Gestión',11),(2411,'Maestría En Educación - Énfasis En Educación Popular Y Desarrollo Comunitario',11),(2421,'Maestría En Educación - Énfasis En Enseñanza De Las Ciencias',11),(2431,'Maestría En Educación - Énfasis En Fisiología Del Deporte',11),(2441,'Maestría En Educación Con Énfasis En Lenguaje Y Educación',11),(2451,'Maestría En Educación Con Énfasis En Pensamiento Educativo Moderno',11),(2461,'Maestría En Educación - Énfasis En Planificación Educativa',11),(2471,'Maestría En Educación - Énfasis En Educación Matemática',11),(2481,'Maestría En Educación - Énfasis En Enseñanza De Las Ciencias Naturales',11),(2491,'Maestría En Educación - Énfasis En Pedagogía Del Entrenamiento Deportivo',11),(2501,'Maestría En Psicología',11),(2511,'Maestría En Administración Educativa (énfasis En Dirección)',11),(2521,'Maestría En Docencia Universitaria',11),(2531,'Maestría En Administración Educativa',11),(2541,'Maestría En Comunicación Y Diseño Cultural',11),(2551,'Maestría En Arquitectura Y Urbanismo',11),(2561,'Maestría En Enfermería - Énfasis En Adulto Y Anciano',11),(2571,'Maestría En Enfermería - Énfasis En Materno Infantil',11),(2581,'Maestría En Enfermería - Énfasis En Atención Al Niño',11),(2591,'Maestría En Ciencias Biomédicas',11),(2601,'Maestría En Salud Pública',11),(2611,'Maestría En Salud Ocupacional',11),(2621,'Maestría En Administración De Salud',11),(2631,'Maestría En Ciencias Básicas Medicas',11),(2641,'Maestría En Farmacología',11),(2651,'Maestría En Bioquímica',11),(2661,'Maestría En Fisiología',11),(2671,'Maestría En Morfología',11),(2681,'Maestría En Microbiología',11),(2691,'Maestría En Epidemiología',11),(2701,'Maestría En Enfermería - Énfasis En Cuidado Al Adulto Y Al Anciano',11),(2711,'Maestría En Enfermería - Énfasis En Cuidado Materno-infantil',11),(2721,'Maestría En Enfermería - Énfasis En Cuidado Al Niño',11),(2731,'Maestría En Ingeniería',11),(2741,'Maestría En Ingeniería - Énfasis En Automática',11),(2751,'Maestría En Ingeniería - Énfasis En Ingeniería Civil',11),(2761,'Maestría En Ingeniería - Énfasis En Ingeniería Eléctrica',11),(2771,'Maestría En Ingeniería - Énfasis En Ingeniería Electrónica',11),(2781,'Maestría En Ingeniería - Énfasis En Ingeniería Industrial',11),(2791,'Maestría En Ingeniería - Énfasis En Ingeniería De Los Materiales',11),(2801,'Maestría En Ingeniería - Énfasis En Ingeniería Mecánica',11),(2811,'Maestría En Ingeniería - Énfasis En Ingeniería Química',11),(2821,'Maestría En Ingeniería - Énfasis En Ingeniería Sanitaria Y Ambiental',11),(2831,'Maestría En Ingeniería - Énfasis En Ingeniería De Sistemas Y Computación',11),(2841,'Maestría En Ingeniería - Énfasis En Ingeniería Aeroespacial',11),(2851,'Maestría En Estadística',11),(2861,'Maestría En Ingeniería Industrial Y De Sistemas',11),(2871,'Maestría En Sistemas De Generación De Energía Eléctrica',11),(2881,'Maestría En Ingeniería Civil',11),(2891,'Maestría En Automática',11),(2901,'Maestría En Ingeniería Sanitaria Y Ambiental',11),(2911,'Maestría Ingeniería Química',11),(2921,'Maestría En Ingeniería De Sistemas',11),(2931,'Maestría En Desarrollo Sustentable',11),(2941,'Maestría En Ingeniería De Alimentos',11),(2951,'Maestría En Administración Industrial Tp',11),(2961,'Maestría En Administración Industrial Tc',11),(2971,'Maestría En Administración De Empresas',11),(2981,'Maestría En Ciencias De La Organización',11),(2991,'Maestría En Políticas Públicas',11),(3001,'Maestría En Administración',11),(3011,'Maestría En Contabilidad',11),(3021,'Doctorado En Ciencias Del Mar',11),(3031,'Doctorado En Ciencias Químicas',11),(3041,'Doctorado En Ciencias - Biología',11),(3051,'Doctorado En Ciencias Físicas',11),(3061,'Doctorado En Ciencias Matemáticas',11),(3071,'Doctorado En Ciencias Ambientales',11),(3081,'Doctorado En Humanidades',11),(3091,'Doctorado En Filosofía',11),(3101,'Doctorado En Educación - Área Educación Matemática',11),(3111,'Doctorado En Educación - Área Historia De La Educación Y La Pedagogía',11),(3121,'Doctorado En Educación - Área Del Lenguaje Y Educación',11),(3131,'Doctorado Interinstitucional En Educación',11),(3141,'Doctorado En Psicología',11),(3151,'Doctorado En Ciencias Biomédicas',11),(3161,'Doctorado En Ingeniería',11),(3171,'Doctorado En Ingeniería - Énfasis En Ingeniería De Alimentos',11),(3181,'Doctorado En Ingeniería - Énfasis En Ciencias De La Computación',11),(3191,'Doctorado En Ingeniería - Énfasis En Ingeniería Eléctrica Y Electrónica',11),(3201,'Doctorado En Ingeniería - Énfasis En Ingeniería De Los Materiales',11),(3211,'Doctorado En Ingeniería - Énfasis En Ingeniería Química',11),(3221,'Doctorado En Ingeniería - Énfasis En Ingeniería Sanitaria Y Ambiental',11),(3231,'Doctorado En Ingeniería - Énfasis En Ingeniería Industrial',11),(3241,'Doctorado En Ingeniería - Énfasis Mecánica De Sólidos',11),(3251,'Doctorado En Administración',11),(3252,'La empresa donde se generó la vacante le informó directamente',43),(3253,'El jefe directo le informó',43),(3254,'Un familiar le informó',43),(3255,'Un amigo le informó',43),(3256,'Un compañero de trabajo le informó',43),(3257,'Un compañero de estudio le informó',43),(3258,'Vio un anuncio o convocatoria',43),(3259,'Familiar',44),(3260,'Amistad',44),(3261,'Comunidad religiosa',44),(3262,'Organización artística',44),(3263,'Organización o comunidad deportiva',44),(3264,'Comunidad académica',44),(3265,'Comunidad científica',44),(3266,'Organización o comunidad política',44),(3267,'En una reunión familiar',45),(3268,'En un evento social',45),(3269,'En un evento deportivo',45),(3270,'En un evento religioso',45),(3271,'En un encuentro casual',45),(3272,'Contacto directo (correo, mensaje, llamada)',45),(3273,'La empresa donde se generó la vacante le informó directamente',46),(3274,'El jefe directo le informó',46),(3275,'Un familiar le informó',46),(3276,'Un amigo le informó',46),(3277,'Un compañero de trabajo le informó',46),(3278,'Un compañero de estudio le informó',46),(3279,'Vio un anuncio o convocatoria',46),(3280,'En una reunión familiar',47),(3281,'En un evento social',47),(3282,'En un evento deportivo',47),(3283,'En un evento religioso',47),(3284,'En un encuentro casual',47),(3285,'Contacto directo (correo, mensaje, llamada)',47),(3286,'Si',48),(3287,'No',48),(3288,'Una vez por semana',49),(3289,'Dos o más veces por semana',49);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_id_idx` (`survey_id`),
  CONSTRAINT `survey_id` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Información Personal',1,1),(2,'Información del Primer Empleo',1,2),(3,'Información Empleo Actual',1,3),(4,'Búsqueda de Empleo',1,4),(5,'Redes Sociales',1,5);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(200) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `numeric` tinyint(4) DEFAULT '0',
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `has_dependent` tinyint(4) DEFAULT '0',
  `depends_of` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `block_id_idx` (`block_id`),
  CONSTRAINT `block_id` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Nombre completo:',1,1,1,1,0,NULL,NULL,0,NULL),(2,'Ciudad de residencia actual:',1,1,2,1,0,NULL,NULL,0,NULL),(3,'Estrato socioeconomico de la vivienda donde reside:',1,1,3,1,1,0,6,0,NULL),(4,'¿Cuantos años cumplidos tiene?',1,1,4,1,1,18,100,0,NULL),(6,'Sexo: ',4,1,5,1,0,NULL,NULL,0,NULL),(7,'Usted se autoreconoce como:',4,1,6,1,0,NULL,NULL,0,NULL),(8,'Actualmente usted:',4,1,7,1,0,NULL,NULL,0,NULL),(9,'¿Cual es su parentesco con el jefe de hogar?',4,1,8,1,0,NULL,NULL,0,NULL),(10,'¿En que año se graduo del programa de pregrado en la Universidad del Valle? (Si realizo mas de un programa de pregrado, refierase al primero)',1,1,9,1,1,1960,2015,0,NULL),(11,'Nombre del titulo que obtuvo (Si realizo más de un programa de pregrado refierase al primero)',4,1,10,1,0,NULL,NULL,0,NULL),(12,'Actualmente su maximo nivel educativo es:',4,1,11,1,0,NULL,NULL,0,NULL),(13,' ¿Pertenece a alguna comunidad u organizacion?',3,1,12,1,0,NULL,NULL,0,NULL),(14,'Su primer empleo lo obtuvo: ',4,2,1,1,0,NULL,NULL,0,NULL),(15,'¿En qué año obtuvo su primer empleo?',1,2,2,0,1,1950,2015,0,NULL),(16,'¿Su primer empleo lo obtuvo en una empresa en la trabajó alguno de sus padres, hermanos mayores, o cualquier otro integrante de su grupo familiar?',4,2,3,0,0,NULL,NULL,0,NULL),(17,'¿Cómo se enteró de la vacante que se convirtió en su primer empleo?',4,2,4,1,0,NULL,NULL,1,NULL),(18,'¿Cuántos empleos ha tenido hasta ahora en su vida laboral',1,2,8,1,1,1,100,0,NULL),(19,'En la actualidad su ocupación principal es',3,2,9,1,0,NULL,NULL,0,NULL),(20,'¿Qué cargo desempeña en la actualidad?',1,3,1,0,0,NULL,NULL,0,NULL),(21,'En esta ocupación usted es:',4,3,2,0,0,NULL,NULL,0,NULL),(22,'Empresa',1,3,3,0,0,NULL,NULL,0,NULL),(23,'Ciudad',1,3,4,0,0,NULL,NULL,0,NULL),(24,'¿Cuál es su área de desempeño?',4,3,5,0,0,NULL,NULL,0,NULL),(25,'¿Hace cuántos meses tiene este empleo?',1,3,6,0,0,NULL,NULL,0,NULL),(26,'¿Para obtener este empleo tuvo que cambiar de ciudad de residencia?',4,3,7,0,0,NULL,NULL,0,NULL),(27,'¿Cómo obtuvo su actual empleo?',4,3,8,0,0,NULL,NULL,1,NULL),(28,'¿Se relaciona su actual empleo con lo que estudia o estudió?',4,3,13,0,0,NULL,NULL,0,NULL),(29,'¿Qué tipo de contrato tiene?',4,3,14,0,0,NULL,NULL,0,NULL),(30,'En este empleo le reconocen',3,3,15,0,0,NULL,NULL,0,NULL),(31,'El número de personas que trabajan en su empresa es:',1,3,16,0,0,NULL,NULL,0,NULL),(32,'Su ingreso laboral está en el rango:',4,3,17,0,0,NULL,NULL,0,NULL),(33,'¿Está satisfecho con su trabajo?',4,3,18,0,0,NULL,NULL,0,NULL),(34,'¿En la actualidad usted se encuentra buscando empleo?',2,4,1,0,0,NULL,NULL,0,NULL),(35,'¿Hace cuántas semanas se encuentra buscando empleo?',1,4,2,0,1,0,1000,0,NULL),(36,'¿Con qué frecuencia realiza la búsqueda de oportunidades laborales?',4,4,3,0,0,NULL,NULL,0,NULL),(37,'¿Cuáles de las siguientes alternativas está usando en la búsqueda de empleo?',3,4,4,0,0,NULL,NULL,0,NULL),(38,'Si está haciendo uso de contactos (amigos, familiares, conocidos, etc) para buscar empleo ¿qué medios usa para comunicarse con ellos?',3,4,5,0,0,NULL,NULL,0,NULL),(39,'¿Qué tan a menudo se comunica con la(s) persona(s) que le brindó(aron) información sobre la vacante laboral?',4,4,6,0,0,NULL,NULL,0,NULL),(40,'¿Alguna vez ha actuado como intermediario entre una vacante y una persona que se encuentre buscando empleo?',3,5,1,0,0,NULL,NULL,0,NULL),(41,'uando usted recibe información por un medio virtual (correo electrónico, portal de empleos, redes sociales, etc) sobre una vacante laboral:',2,5,2,0,0,NULL,NULL,0,NULL),(42,'Por favor escriba tres las principales razones que lo(a) motivan a transmitir información sobre vacantes de empleo',1,5,3,0,0,NULL,NULL,0,NULL),(43,'¿Cómo se enteró la persona que le informó a usted sobre la vacante con la que obtuvo su primer empleo?',2,2,5,0,0,NULL,NULL,0,17),(44,'¿En qué espacio o comunidad conoció usted a la persona que le informó sobre la vacante para obtener su primer empleo?',2,2,6,0,0,NULL,NULL,0,17),(45,'¿En qué tipo de evento su contacto le informó sobre la vacante que le permitió obtener su primer empleo?',2,2,7,0,0,NULL,NULL,0,17),(46,'¿Cómo se enteró esa persona de la vacante?',2,3,9,0,0,NULL,NULL,0,27),(47,'¿En qué tipo de evento su contacto le informó sobre la vacante que le permitió obtener su actual empleo?',2,3,10,0,0,NULL,NULL,0,27),(48,'¿Esa persona se encontraba empleada en el momento en que le informó sobre la vacante?',4,3,11,0,0,NULL,NULL,0,27),(49,'¿Qué tan a menudo se comunica con la persona que le brindó información sobre la vacante laboral?',4,3,12,0,0,NULL,NULL,0,27);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Encuesta Empleo y Comunidades','La plataforma interactiva para la transferencia de información laboral busca recolectar y actualizar la historia laboral, el estado de empleo, los contactos y redes personales de los egresados de la Universidad del Valle, y hacer posible que cada uno de ustedes pueda consultar, en cualquier momento, las trayectorias potenciales que los unen con empleadores y las vacantes disponibles.   La encuesta que tiene ante sus ojos hace parte de la construcción de esa plataforma. Quiere identificar cómo, con la ayuda de amigos, colegas, conocidos, familiares ustedes han recibido, o transferido, información sobre vacantes. Con esa información se desean detectar las redes sociales y las comunidades que comparten y permiten el paso de información laboral entre egresados. Para asegurar la total confidencialidad de la información recibida y procesada, todos los datos serán encriptados. <br/>Muchas gracias por su ayuda.');
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_data`
--

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `block_id` int(11) DEFAULT NULL,
  `results` longblob,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `block_id_idx` (`block_id`),
  CONSTRAINT `block_data_id` FOREIGN KEY (`block_id`) REFERENCES `blocks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_data_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_data`
--

LOCK TABLES `user_data` WRITE;
/*!40000 ALTER TABLE `user_data` DISABLE KEYS */;
INSERT INTO `user_data` VALUES (54,71,1,'a:12:{s:10:\"question_1\";s:27:\"Jorge Andrés Castro Muñoz\";s:10:\"question_2\";s:17:\"Bogotá, Colombia\";s:10:\"question_3\";s:1:\"4\";s:10:\"question_4\";s:2:\"27\";s:10:\"question_6\";s:9:\"Masculino\";s:10:\"question_7\";s:7:\"Mestizo\";s:10:\"question_8\";s:58:\"No está  casado (a)  y vive en pareja hace 2 años o más\";s:10:\"question_9\";s:42:\"Pareja, esposo(a), Cónyuge, Compañero(a)\";s:11:\"question_10\";s:4:\"2000\";s:11:\"question_11\";s:42:\"Tecnología En Administración De Empresas\";s:11:\"question_12\";s:11:\"Profesional\";s:11:\"question_13\";a:2:{i:0;s:35:\"Comunidad u organización política\";i:1;s:29:\"Comunidad cultural-artística\";}}'),(55,71,2,'a:9:{s:11:\"question_14\";s:1:\"0\";s:11:\"question_15\";s:0:\"\";s:11:\"question_16\";s:1:\"0\";s:11:\"question_17\";s:29:\"Compañeros de la Universidad\";s:11:\"question_43\";s:23:\"Un familiar le informó\";s:11:\"question_44\";s:24:\"Organización artística\";s:11:\"question_45\";s:22:\"En un evento deportivo\";s:11:\"question_18\";s:1:\"2\";s:11:\"question_19\";a:1:{i:0;s:8:\"Trabajar\";}}'),(56,71,3,'a:18:{s:11:\"question_20\";s:17:\"Desarrollador PHP\";s:11:\"question_21\";s:31:\"Empleado de una empresa privada\";s:11:\"question_22\";s:10:\"Linkstaria\";s:11:\"question_23\";s:6:\"Bogota\";s:11:\"question_24\";s:52:\"Medios de Comunicación (Radio, Televisión y otras)\";s:11:\"question_25\";s:2:\"13\";s:11:\"question_26\";s:2:\"No\";s:11:\"question_27\";s:29:\"Compañeros de la Universidad\";s:11:\"question_46\";s:27:\"El jefe directo le informó\";s:11:\"question_47\";s:19:\"En un evento social\";s:11:\"question_48\";s:2:\"Si\";s:11:\"question_49\";s:18:\"Una vez por semana\";s:11:\"question_28\";s:2:\"Si\";s:11:\"question_29\";s:14:\"Escrito y fijo\";s:11:\"question_30\";a:2:{i:0;s:5:\"Salud\";i:1;s:3:\"ARP\";}s:11:\"question_31\";s:2:\"23\";s:11:\"question_32\";s:29:\"Más de 2 y hasta 3 S.M.M.L.V\";s:11:\"question_33\";s:2:\"Si\";}'),(57,71,4,'a:6:{s:11:\"question_34\";s:162:\"Sí, mi búsqueda de empleo es pasiva: no es habitual la búsqueda de oportunidades laborales, pero estoy atento a la información que me llega sobre las vacantes\";s:11:\"question_35\";s:2:\"23\";s:11:\"question_36\";s:18:\"Una vez por semana\";s:11:\"question_37\";a:2:{i:0;s:33:\"Llevando hojas de vida a empresas\";i:1;s:46:\"En la bolsa de empleo de egresados de Univalle\";}s:11:\"question_38\";a:2:{i:0;s:28:\"Los contacta telefonicamente\";i:1;s:33:\"Les escribe correos electrónicos\";}s:11:\"question_39\";s:18:\"Una vez por semana\";}'),(58,71,5,'a:3:{s:11:\"question_40\";a:1:{i:0;s:72:\"Sí, he ayudado de manera indirecta a que alguien se ubique laboralmente\";}s:11:\"question_41\";s:130:\"La re-envía a todos sus contactos de correo electrónico o redes sociales, aunque no hayan manifestado que estén buscando empleo\";s:11:\"question_42\";s:13:\"Primera Razon\";}');
/*!40000 ALTER TABLE `user_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fbid` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `startDate` int(11) DEFAULT NULL,
  `finishDate` int(11) DEFAULT NULL,
  `currentBlock` int(11) DEFAULT NULL,
  `fbdata` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (31,10152559445936720,'Alejandro Marin',1420568013,0,1,'b:0;'),(71,10152613101098041,'Jorge AndrÃ©s Castro MuÃ±oz',1420596689,1421076391,5,'a:5:{i:0;s:17:\"10152613101098041\";i:1;s:27:\"Jorge Andrés Castro Muñoz\";i:2;s:17:\"Bogotá, Colombia\";i:4;i:27;i:6;s:9:\"Masculino\";}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-14 15:00:17
