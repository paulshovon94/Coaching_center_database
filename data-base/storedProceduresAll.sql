-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: coachingcenter
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `idcourse` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(100) NOT NULL,
  `idteacher` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `coursefee` decimal(11,0) NOT NULL,
  PRIMARY KEY (`idcourse`),
  KEY `idteacher_idx` (`idteacher`),
  CONSTRAINT `idteacher` FOREIGN KEY (`idteacher`) REFERENCES `teacher` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Database Systems',16,10,5000),(2,'Algorithms',17,12,6000),(3,'Data Structures',18,10,5000),(4,'Numeric Methods',16,12,4500),(5,'Structured Programming',19,12,4500),(6,'Object Oriented Programming',16,12,5500),(7,'Discrete Mathematics',18,10,5000),(8,'Signals and Systems',16,15,4500),(9,'Electric Circuits',17,13,4500),(10,'Electronic Circuits',17,13,4500),(11,'Digital Logic Design',17,13,4500),(12,'Operating Systems',19,15,3800),(13,'Artificial Intelligence',18,10,5500),(16,'New Course',26,12,3500),(17,'Basic English',29,15,4000),(18,'Intermediate English',29,15,4000);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `idenrollment` int(11) NOT NULL AUTO_INCREMENT,
  `idcourse` int(11) NOT NULL,
  `idstudent` int(11) NOT NULL,
  PRIMARY KEY (`idenrollment`),
  KEY `course_idx` (`idcourse`),
  KEY `student_idx` (`idstudent`),
  CONSTRAINT `idcourse` FOREIGN KEY (`idcourse`) REFERENCES `course` (`idcourse`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idstudent` FOREIGN KEY (`idstudent`) REFERENCES `student` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,1,6),(2,3,6),(3,11,6),(4,13,6),(5,2,6),(6,2,7),(7,3,7),(8,4,7),(9,2,8),(10,3,8),(11,11,8),(12,12,8),(13,13,9),(15,4,9),(16,6,10),(17,11,11),(18,12,11),(19,12,12),(20,13,12),(21,1,12),(23,3,14),(24,4,14),(25,12,14),(26,11,14),(27,10,14),(28,9,14),(29,8,14),(30,5,15),(31,3,15),(32,12,6),(33,10,6),(34,1,14),(35,8,12),(47,17,6),(48,18,7),(49,18,9),(50,18,10),(51,18,11),(52,18,12),(53,18,13),(54,18,14),(55,17,14);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `idperson` int(11) NOT NULL AUTO_INCREMENT,
  `personname` varchar(100) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idperson`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (5,'0','0','0'),(6,'Abdul Kader','01957632145','Rampura, Dhaka'),(7,'Babul Sheikh','01587569322','Uttar Badda'),(8,'Dalim Sayed','01889636988','Banasri, Rampura'),(9,'Faisal Ahmed','01996696696','Banasri, Rampura'),(10,'Rahim Uddin','01121121669','Nadda, Basundhara'),(11,'Riaz Uddin','01667867787','Aftabnagar, Dhaka'),(12,'Mahfuza Akhter','0167587585888','Aftabnagar, Dhaka'),(13,'Sumona Parveen','01987877887','Rampura, Dhaka'),(14,'Swarna Islam','017557575633','Uttar Badda, Dhaka'),(15,'Baba Rafi','01352522658','Aftabnagar, Dhaka'),(16,'Mahfuzur Rahman Rafi','01677898885','Mirpur, Dhaka'),(17,'Jubair Islam','019511599515','Matijheel, Dhaka'),(18,'Shovon Paul','01956955664','Basabo, Rampura'),(19,'Ashiful Arefin','01676522522','Uttara, Dhaka'),(21,'Zillur Rahman','01553575555','Khilkhet, Dhaka'),(22,'Yasir Rahman','01553575556','Khilkhet, Dhaka'),(24,'Rahim Uddin','01676225655','Dhaka, Bangladesh'),(26,'Rahim Uddin','01689853155','Gazipur'),(28,'Mamun Sheikh','01677765231','East Arichpur'),(29,'Nasir Uddin Molla','01776762355','Gazibari');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `idperson` int(11) NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  KEY `personid_idx` (`idperson`),
  CONSTRAINT `idperson` FOREIGN KEY (`idperson`) REFERENCES `person` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (6,'Rampura Ideal School',9),(7,'UBSS Primary School',7),(8,'Imperial College Bangladesh',11),(9,'Imperial College Bangladesh',10),(10,'ISIC Bank School',9),(11,'Rampura Ideal School',9),(12,'Rampura Ideal School',9),(13,'Rampura Ideal School',8),(14,'Imperial College',9),(15,'Imperial College',8),(21,'BAF Shaheen College',12),(22,'BAF Shaheen College',12),(24,'EWU',15),(28,'SSV',14);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `idperson` int(11) NOT NULL,
  `salary` decimal(11,0) DEFAULT NULL,
  KEY `idperson_idx` (`idperson`),
  CONSTRAINT `person` FOREIGN KEY (`idperson`) REFERENCES `person` (`idperson`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (16,40000),(17,45000),(18,46000),(19,50000),(26,35000),(29,35000);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'coachingcenter'
--
/*!50003 DROP PROCEDURE IF EXISTS `enroll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `enroll`( 
															ids INT,
                                                            idc INT,
                                                            OUT  eid INT )
BEGIN
	IF (EXISTS(SELECT * FROM coachingcenter.student WHERE idperson=ids)
		AND EXISTS(SELECT * FROM coachingcenter.course WHERE idcourse=idc)
        AND (SELECT COUNT(*) FROM coachingcenter.enrollment WHERE enrollment.idcourse = idc) 
			< (SELECT capacity FROM coachingcenter.course WHERE idcourse = idc)
		AND NOT EXISTS(SELECT * FROM coachingcenter.enrollment WHERE idcourse=idc AND idstudent=ids)) THEN
		INSERT INTO coachingcenter.enrollment(idstudent, idcourse)
		VALUES (ids, idc);

		SET eid = LAST_INSERT_ID();
        SET @studentname = (SELECT personname FROM coachingcenter.person WHERE idperson = ids);
        SET @coursename = (SELECT coursename FROM coachingcenter.course WHERE idcourse = idc);
        SELECT CONCAT(@studentname, ' is enrolled in course: ', @coursename, ' successfully!') AS 'Result';

	ELSEIF (SELECT COUNT(*) FROM coachingcenter.enrollment WHERE enrollment.idcourse = idc) 
		= (SELECT capacity FROM coachingcenter.course WHERE idcourse = idc) THEN
		SELECT 'Failed! Course Full' AS 'Result';
        SET eid = -1;
	ELSEIF EXISTS(SELECT * FROM coachingcenter.enrollment WHERE idcourse=idc AND idstudent=ids) THEN
		SELECT CONCAT(@studentname, ' is already enrolled in this course') AS 'Result';
		SET eid = -2;
    ELSE 
		SELECT 'Student and/or Course not matched' AS 'Result';
		SET eid = -3;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourseAll`()
BEGIN
	SELECT c.idcourse AS 'Course ID',
		c.coursename AS 'Course Title',
        p.personname AS 'Instructor',
        c.capacity AS 'Capacity',
        c.capacity - COUNT(e.idstudent) AS 'Available',
        c.coursefee AS 'Course Fee'
	FROM coachingcenter.course c
    INNER JOIN coachingcenter.person p
    ON p.idperson=c.idteacher
	LEFT JOIN coachingcenter.enrollment e
    ON e.idcourse=c.idcourse
    GROUP BY c.idcourse;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCourseById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCourseById`(idc INT)
BEGIN
	SELECT c.idcourse AS 'Course ID',
		c.coursename AS 'Course Title',
        p.personname AS 'Instructor',
        c.capacity AS 'Capacity',
        c.capacity - COUNT(e.idstudent) AS 'Available',
        c.coursefee AS 'Course Fee'
	FROM coachingcenter.course c
    INNER JOIN coachingcenter.person p
    ON p.idperson=c.idteacher
    INNER JOIN coachingcenter.enrollment e
    ON e.idcourse=c.idcourse
    WHERE c.idcourse=idc
    GROUP BY c.idcourse;
    
    SELECT p.personname AS 'Students'
	FROM coachingcenter.person p
    INNER JOIN coachingcenter.enrollment e
    ON p.idperson=e.idstudent
    WHERE e.idcourse=idc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEnrollmentAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEnrollmentAll`()
BEGIN
	SELECT e.idenrollment AS 'ID',
		p.idperson AS 'Student ID',
		p.personname AS 'Student Name',
        c.idcourse AS 'Course ID',
        c.coursename AS 'Course Name'
	FROM coachingcenter.enrollment e
    INNER JOIN coachingcenter.person p
    ON e.idstudent=p.idperson
    INNER JOIN coachingcenter.course c
    ON c.idcourse=e.idcourse
    ORDER BY e.idenrollment;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStudentAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentAll`()
BEGIN
	SELECT p.idperson AS 'ID',
		p.personname AS 'Name',
        p.phonenumber AS 'Phone',
        p.address AS 'Address',
        s.institution AS 'Institution',
        s.class AS 'Class',
        COUNT(idcourse)  AS 'Courses(n)'
    FROM coachingcenter.student s
    NATURAL JOIN coachingcenter.person p
    LEFT JOIN coachingcenter.enrollment e
    ON p.idperson=e.idstudent
    GROUP BY p.idperson;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStudentById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudentById`(ids INT)
BEGIN
	SELECT p.idperson AS 'ID',
		p.personname AS 'Name',
        p.phonenumber AS 'Phone',
        p.address AS 'Address',
		s.institution AS 'Institution',
        s.class AS 'Class',
        COUNT(e.idcourse)  AS 'Courses(n)'
    FROM coachingcenter.student s
    NATURAL JOIN coachingcenter.person p
    LEFT JOIN coachingcenter.enrollment e
    ON e.idstudent=p.idperson
    WHERE p.idperson=ids
    GROUP BY p.idperson;
    
    SELECT c.idcourse AS 'ID',
		c.coursename AS 'Course Name',
        t.personname AS 'Instructor'
	FROM coachingcenter.course c
    INNER JOIN coachingcenter.enrollment e
    ON c.idcourse=e.idcourse
    INNER JOIN coachingcenter.person t
    ON c.idteacher=t.idperson
    INNER JOIN coachingcenter.student s
    ON s.idperson=e.idstudent
    WHERE s.idperson=ids
    GROUP BY c.idcourse;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTeacherAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeacherAll`()
BEGIN
	SELECT p.idperson AS 'ID',
		p.personname AS 'Name',
        p.phonenumber AS 'Phone',
        p.address AS 'Address',
        t.salary AS  'Salary',
        COUNT(idcourse)  AS 'Courses(n)'
    FROM coachingcenter.teacher t
    NATURAL JOIN coachingcenter.person p
    LEFT JOIN coachingcenter.course c
    ON p.idperson=c.idteacher
    GROUP BY p.idperson;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTeacherById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeacherById`(idt INT)
BEGIN
	SELECT p.idperson AS 'ID',
		p.personname AS 'Name',
        p.phonenumber AS 'Phone',
        p.address AS 'Address',
        t.salary AS  'Salary',
        COUNT(idcourse)  AS 'Courses(n)'
    FROM coachingcenter.teacher t
    NATURAL JOIN coachingcenter.person p
    LEFT JOIN coachingcenter.course c
    ON p.idperson=c.idteacher
    WHERE p.idperson=idt
    GROUP BY p.idperson;
    
    SELECT c.coursename AS 'Courses',
		COUNT(e.idstudent) AS 'Student(n)'
	FROM coachingcenter.teacher t
    INNER JOIN coachingcenter.course c
    ON t.idperson=c.idteacher
    LEFT JOIN coachingcenter.enrollment e
    ON e.idcourse=c.idcourse
    WHERE t.idperson=idt
    GROUP BY c.coursename;
    
    SELECT DISTINCT p.personname AS 'Students'
	FROM coachingcenter.teacher t
    INNER JOIN coachingcenter.course c
    ON t.idperson=c.idteacher
    INNER JOIN coachingcenter.enrollment e
    ON e.idcourse=c.idcourse
    INNER JOIN coachingcenter.person p
    ON p.idperson=e.idstudent
    WHERE t.idperson=idt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCourse`( 
															nm VARCHAR(100), 
															cap INT,
                                                            cfee DECIMAL(11),
                                                            idt INT,
                                                            OUT  cid INT )
BEGIN
	SET cid = 0;

	IF EXISTS(SELECT * FROM coachingcenter.teacher WHERE idperson=idt) THEN
		INSERT INTO coachingcenter.course(coursename, capacity, coursefee, idteacher)
		VALUES (nm, cap, cfee, idt);
		SET cid = LAST_INSERT_ID();
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertStudent`( nm VARCHAR(100), 
															phn VARCHAR(15),
                                                            addr VARCHAR(100),
                                                            inst VARCHAR(100),
                                                            clss INT,
                                                            OUT  pid INT )
BEGIN
	SET pid = 0;

	INSERT INTO coachingcenter.person (personname, phonenumber, address)
    VALUES (nm, phn, addr);
    
    SET  pid = LAST_INSERT_ID();
    
    INSERT INTO coachingcenter.student (idperson, institution, class)
    VALUES (pid, inst, clss);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertTeacher`( nm VARCHAR(100), 
																												phn VARCHAR(15),
																												addr VARCHAR(100),
																												sal DECIMAL(11),
																												INOUT  pid INT )
BEGIN
	SET pid = 0;

	INSERT INTO coachingcenter.person (personname, phonenumber, address)
    VALUES (nm, phn, addr);
    
    SET  pid = LAST_INSERT_ID();
    
    INSERT INTO coachingcenter.teacher (idperson, salary)
    VALUES (pid, sal);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeCourse`(idc INT)
BEGIN
	IF (EXISTS(SELECT * FROM coachingcenter.course WHERE idcourse=idc)) THEN
		SET @course = (SELECT coursename FROM coachingcenter.course WHERE idcourse=idc);
		SET @n = (SELECT COUNT(*) FROM coachingcenter.enrollment WHERE idcourse=idc);
        DELETE FROM coachingcenter.enrollment WHERE idcourse=idc;
        DELETE FROM coachingcenter.course WHERE idcourse=idc;
        
        SELECT CONCAT("Course: ", @course, " removed with ", CAST(@n AS CHAR), " enrollments") AS 'Result';
	ELSE 
		SELECT "Course not Found" AS 'Result';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeEnrollment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeEnrollment`(ide INT)
BEGIN
	IF (EXISTS(SELECT * FROM coachingcenter.enrollment WHERE idenrollment=ide)) THEN
		DELETE  FROM coachingcenter.enrollment WHERE idenrollment=ide;
        
        SELECT CONCAT("Enrollment: ", CAST(ide AS CHAR), " removed successfully!") AS 'Result';
	ELSE 
		SELECT "Enrollment not Found" AS 'Result';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeStudent`(ids INT)
BEGIN
	IF (EXISTS(SELECT * FROM coachingcenter.student WHERE idperson=ids)) THEN
		SET @n = (SELECT COUNT(*) FROM coachingcenter.enrollment WHERE idstudent=ids);
        SET @student = (SELECT personname FROM coachingcenter.person WHERE idperson=ids);
        DELETE FROM coachingcenter.enrollment WHERE idstudent=ids;
        DELETE FROM coachingcenter.student WHERE idperson=ids;
        DELETE FROM coachingcenter.person WHERE idperson=ids;
        
        SELECT CONCAT("Student: ", @student, " removed with ", CAST(@n AS CHAR), " enrollments") AS 'Result';
	ELSE 
		SELECT "Student not Found" AS 'Result';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `removeTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `removeTeacher`(idt INT)
BEGIN
	DECLARE idc INT DEFAULT 0;
    DECLARE done INT DEFAULT FALSE;
    DECLARE cursor_i CURSOR FOR SELECT idcourse FROM coachingcenter.course WHERE idteacher=idt;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    SET @ncourse = (SELECT COUNT(*) FROM coachingcenter.course WHERE idteacher=idt);
    
    IF (EXISTS(SELECT * FROM coachingcenter.teacher WHERE idperson=idt)) THEN
		SET @teacher = (SELECT personname FROM coachingcenter.person WHERE idperson=idt);
		
        OPEN cursor_i;
	    read_loop: LOOP
		FETCH cursor_i INTO idc;
		IF done THEN
			LEAVE read_loop;
		END IF;
		CALL removeCourse(idc);
	    END LOOP;
	    CLOSE cursor_i;

        DELETE FROM coachingcenter.teacher WHERE idperson=idt;
        DELETE FROM coachingcenter.person WHERE idperson=idt;
        
        SELECT CONCAT("Teacher: ", @teacher, " removed with ",  CAST(@ncourse AS CHAR), " courses") AS 'Result';
	ELSE 
		SELECT "Teacher not Found" AS 'Result';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCourse` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCourse`( 
															idc INT,
                                                            nm VARCHAR(100), 
															cap INT,
                                                            cfee DECIMAL(11),
                                                            idt INT)
BEGIN
	UPDATE coachingcenter.course
    SET coursename=nm,
		capacity=cap,
		coursefee=cfee,
		idteacher=idt
	WHERE idcourse=idc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateStudent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateStudent`( 
															idp INT,
                                                            nm VARCHAR(100), 
															phn VARCHAR(15),
                                                            addr VARCHAR(100),
                                                            inst VARCHAR(100),
                                                            clss INT )
BEGIN
	UPDATE coachingcenter.person
    SET personname=nm,
		phonenumber=phn,
        address=addr
	WHERE idperson=idp;
    
    UPDATE coachingcenter.student 
    SET institution=inst,
		class=clss
    WHERE idperson=idp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTeacher` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTeacher`( 
																											idp INT,
																											nm VARCHAR(100), 
																											phn VARCHAR(15),
																											addr VARCHAR(100),
																											sal DECIMAL(11) )
BEGIN
	UPDATE coachingcenter.person
    SET personname=nm,
		phonenumber=phn,
        address=addr
	WHERE idperson=idp;
    
    UPDATE coachingcenter.teacher 
    SET salary=sal
    WHERE idperson=idp;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `withdraw` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `withdraw`( 
															ids INT,
                                                            idc INT)
BEGIN
	IF (EXISTS(SELECT * FROM coachingcenter.enrollment WHERE idstudent=ids AND idcourse=idc)) THEN
		DELETE  FROM coachingcenter.enrollment WHERE idstudent=ids AND idcourse=idc;
        SET @studentname = (SELECT personname FROM coachingcenter.person WHERE idperson = ids);
        SET @coursename = (SELECT coursename FROM coachingcenter.course WHERE idcourse = idc);
        SELECT CONCAT(@studentname, " is removed from course: ", @coursename, " successfully!") AS 'Result';
	ELSE 
		SELECT "Student and/or Course not matched" AS 'Result';
	END IF;
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

-- Dump completed on 2017-12-05  5:32:23
