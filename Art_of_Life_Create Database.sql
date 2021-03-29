CREATE DATABASE  IF NOT EXISTS `_team01_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `_team01_project`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: BusTartarus-KS.ad.colorado.edu    Database: _team01_project
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `studentID` int(11) NOT NULL,
  `studentFirstName` char(30) DEFAULT NULL,
  `studentLastName` char(30) DEFAULT NULL,
  `attendanceCount` int(11) DEFAULT NULL,
  `lastAttended` varchar(20) DEFAULT NULL,
  `program` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`studentID`),
  KEY `program` (`program`),
  CONSTRAINT `stuid_fk` FOREIGN KEY (`studentID`) REFERENCES `students` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1033,'Gavin','Smith',12,'Thu, Mar 12','Tigers'),(1034,'Elias','Smith',13,'Thu, Mar 12','Tigers'),(1035,'Davey','Smith',21,'Thu, Mar 12','Youth Masters'),(1036,'Logan','Smith',21,'Wed, Mar 11','Intermediate/ Advanced Panthers'),(1037,'Christopher','Smith',53,'Thu, Mar 12','Youth Masters'),(1038,'Camryn','Smith',19,'Wed, Mar 11','Youth Masters'),(1039,'Tyler','Smith',12,'Thu, Mar 12','Intermediate/ Advanced Panthers'),(1041,'Brylie','Smith',14,'Wed, Mar 11','Youth Masters'),(1042,'Cadi','Smith',16,'Wed, Mar 11','Intermediate/ Advanced Panthers'),(1043,'Addisu','Smith',19,'Wed, Mar 11','Youth Masters'),(1044,'Hawk','Smith',11,'Wed, Mar 11','Intermediate/ Advanced Panthers'),(1045,'Harper','Smith',3,'Wed, Mar 11','Intermediate/ Advanced Panthers'),(1046,'Cole','Smith',12,'Wed, Mar 11','Tigers');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendanceaudit`
--

DROP TABLE IF EXISTS `attendanceaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendanceaudit` (
  `studentID` int(11) DEFAULT NULL,
  `studentFirstName` char(30) DEFAULT NULL,
  `studentLastName` char(30) DEFAULT NULL,
  `attendanceCountMSRP` int(11) DEFAULT NULL,
  `lastAttended` varchar(20) DEFAULT NULL,
  `program` varchar(40) DEFAULT NULL,
  `lastUpdate` timestamp NULL DEFAULT NULL,
  `rowValue` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendanceaudit`
--

LOCK TABLES `attendanceaudit` WRITE;
/*!40000 ALTER TABLE `attendanceaudit` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendanceaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `idclassSchedule` int(11) NOT NULL,
  `Program` varchar(45) NOT NULL,
  `DayOfWeek` varchar(45) NOT NULL,
  `Time` time NOT NULL,
  `Recurrence` varchar(45) NOT NULL,
  PRIMARY KEY (`idclassSchedule`),
  KEY `idx_recurrence` (`Recurrence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Lil Ninjas','Monday','09:00:00','weekly'),(2,'Lil Ninjas','Monday','09:00:00','weekly'),(3,'Lil Ninjas','Monday','09:00:00','weekly'),(4,'Lil Ninjas','Monday','09:00:00','weekly'),(5,'Lil Ninjas','Monday','09:00:00','weekly'),(6,'Lil Ninjas','Monday','09:00:00','weekly'),(7,'Tigers','Tuesday','10:00:00','weekly'),(8,'Panthers','Wednesday','13:00:00','weekly'),(9,'Youth masters','Thursday','15:00:00','weekly'),(10,'Youth masters','Thursday','15:00:00','weekly'),(11,'Youth masters','Thursday','15:00:00','weekly'),(12,'Youth masters','Thursday','15:00:00','weekly'),(13,'Adults','Saturday','17:00:00','bi-weekly');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `studentID` int(11) DEFAULT NULL,
  `EmergencyContacts` varchar(50) NOT NULL,
  `Guardians` varchar(50) DEFAULT NULL,
  `Emails` varchar(150) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `SecondaryPhones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EmergencyContacts`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `studentID` FOREIGN KEY (`studentID`) REFERENCES `students` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1041,'Bertruthany','Bertru','houseoftheunwanted@aol.com','667-788-9910','707-172-7374'),(1034,'Captain Hook','Hook','ridindowntown@yahoo.com','444-555-6666','404-142-4344'),(1043,'Dwayne Johnson','The rock&Johnson','rockbigsmash@yahoo.com','151-161-7189','808-182-8384'),(1044,'Gary Yourofsky','Gary&God','Govegan@gmail.com','202-122-2324','858-687-8889'),(1036,'Hermione Granger','Hermione&Harry','ChosenOne@gmail.com','100-200-3000','505-152-5354'),(1033,'Janet Skizzy','Janet&Jose','sweetpumpkin@aol.com','111-222-3333','353-637-3839'),(1038,'Joe Biden','Joe&Trump','Last2POTUS\'sEVER@america.gov','700-800-9000','606-162-6364'),(1042,'Lilpump','lil&pump','esgetit@gmail.com','101-112-1314','757-677-7879'),(1045,'Michael Jackson','Jackson&5','heeeeheeeeee@aol.com','252-627-2829','909-192-9394'),(1035,'Old Man Jenkins','Jenkins','Oleteeter@hotmail.com','777-888-9999','454-647-4849'),(1039,'Snoop Doggy Dog','Snoop&Wiz','Welitboi@gmail.com','112-233-4455','656-667-6869'),(1037,'Squidward Tentacles','Squidward&Squillium','Fancyson@colorado.edu','400-500-6000','555-657-5859'),(1046,'Timone','Timone&Pumba','Hakunamatata@bugmail.org','303-132-3334','959-697-9899');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `wage` int(11) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL,
  `phone` int(100) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employeeID`),
  UNIQUE KEY `name` (`name`),
  KEY `class` (`class`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`class`) REFERENCES `programs` (`program`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John Doe','Tigers',25,'2016-10-21',NULL,1234578972,'123 Alphabet St.'),(2,'Hulk Hogan','Lil Ninjas',22,'2018-10-16',NULL,1567363432,'456 Park Pl.'),(3,'Jake Paul','Panthers',28,'2020-03-14',NULL,1789378475,'1 Broadway St.'),(4,'Randy Marsh','Adults',32,'2019-01-01',NULL,1985672833,'987 Arapahoe St.'),(5,'Neil Armstrong','Youth Masters',30,'2017-08-28',NULL,1765473920,'8756 College Ave.'),(6,'Lance Armstrong','All',34,'2015-05-06',NULL,1334455661,'234 Pearl St.'),(7,'Mike Tyson','Tigers',25,'2015-12-25','2016-10-21',1645392856,'75 Rocky Way'),(8,'Jackie Chan','Intermediate/Advanced Panthers',40,'2017-02-04',NULL,1645392802,'91210 Lala Ln.');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventName` varchar(45) NOT NULL,
  `program` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`eventID`),
  KEY `teacher` (`teacher`),
  KEY `program` (`program`),
  CONSTRAINT `events_ibfk_1` FOREIGN KEY (`teacher`) REFERENCES `employees` (`name`),
  CONSTRAINT `events_ibfk_2` FOREIGN KEY (`program`) REFERENCES `programs` (`program`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Ninja Contest','Tigers','John Doe','2020-12-24','11:30:00','13:30:00','20'),(2,'Belt Ceremony','All','Lance Armstrong','2020-12-13','13:00:00','14:00:00',NULL),(3,'Dance Marathon','Adults','Randy Marsh','2020-12-31','00:00:00','23:59:00','30'),(4,'Tournament','Youth Masters','Neil Armstrong','2021-01-15','10:00:00','16:00:00',NULL),(5,'Pizza Party','Panthers','Jake Paul','2021-01-02','16:00:00','18:00:00','40');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library` (
  `document` varchar(45) DEFAULT NULL,
  `file_type` varchar(15) DEFAULT NULL,
  `uploaded` date DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `Library_ID` varchar(2) DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  KEY `progid_fk_idx` (`program`),
  CONSTRAINT `progid_fk` FOREIGN KEY (`program`) REFERENCES `programs` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library`
--

LOCK TABLES `library` WRITE;
/*!40000 ALTER TABLE `library` DISABLE KEYS */;
INSERT INTO `library` VALUES ('Green Team','Word Doc','2020-05-26',17,'L1',6),('Creative Forms','Word Doc','2020-02-16',5,'L2',6),('Mission Statement','Word Doc','2020-06-08',6,'L3',6),('Student Handbook','Word Doc','2020-05-28',47,'L4',6),('2019 Schedule','Excel','2019-06-04',37,'L5',6),('Intent to Promote','Word Doc','2019-06-04',11,'L6',6);
/*!40000 ALTER TABLE `library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberships` (
  `MembershipID` int(11) NOT NULL AUTO_INCREMENT,
  `MembershipName` varchar(45) DEFAULT NULL,
  `Fees` decimal(9,2) DEFAULT NULL,
  `programID` int(11) DEFAULT NULL,
  `programs` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`MembershipID`),
  KEY `progamName_FK_idx` (`programs`),
  KEY `progamid_fk_idx` (`programID`),
  CONSTRAINT `progamid_fk` FOREIGN KEY (`programID`) REFERENCES `programs` (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
INSERT INTO `memberships` VALUES (1,'12 Month',300.00,1,'Lil Ninjas'),(2,'12 Month',350.00,2,'Tigers'),(3,'12 Month',400.00,3,'Panthers'),(4,'12 Month',450.00,4,'Youth Masters'),(5,'12 Month',500.00,5,'Adults'),(6,'6 Month',160.00,1,'Lil Ninjas'),(7,'6 Month',185.00,2,'Tigers'),(8,'6 Month',215.00,3,'Panthers'),(9,'6 Month',240.00,4,'Youth Masters'),(10,'6 Month',265.00,5,'Adults'),(11,'1 Month',35.00,1,'Tigers'),(12,'1 Month',40.00,2,'Lil Ninjas'),(13,'1 Month',45.00,3,'Panthers'),(14,'1 Month',50.00,4,'Youth Masters'),(15,'1 Month',55.00,5,'Adults');
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programs` (
  `program_ID` int(11) NOT NULL,
  `program` varchar(30) DEFAULT NULL,
  `Age_Group` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`program_ID`),
  KEY `prog_idx` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,'Lil Ninjas','3-4 y/o'),(2,'Tigers','5-6y/o'),(3,'Panthers','7-11y/o'),(4,'Adults','15+'),(5,'Youth Masters','11-15y/o'),(6,'All','3+'),(7,'Intermediate/Advanced Panthers','7-11');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects` (
  `idProspects` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Source` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` int(2) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `DateAdded` date DEFAULT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `SMSopt` varchar(45) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(5) DEFAULT NULL,
  `zipcode` int(5) DEFAULT NULL,
  `programs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idProspects`),
  KEY `progpros_FK_idx` (`programs`),
  CONSTRAINT `progpros_FK` FOREIGN KEY (`programs`) REFERENCES `programs` (`program`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
INSERT INTO `prospects` VALUES (1,'Adam','Smith','Walk-in','trial','Male',9,'2011-07-18','2019-01-05','3032004127','FALSE','daven@gmail.com','309 2nd Ave','Louisville','CO',80027,'Panthers'),(2,'Willock','Smith','School Website','appointment','Male',12,'2008-01-01','2019-01-09','3032026802','FALSE','sherlockHol@gmail.com','2855 Rock Creek','Louisville','CO',80027,'Youth Masters'),(3,'Jack','Smith','School Website','lead','Male',11,'2009-05-01','2019-01-10','3032045674','FALSE','lilpedro@gmail.com','756 W Birch Ct','Louisville','CO',80027,'Panthers'),(4,'Sarah','Smith','School Website','lead','Female',9,'2011-08-01','2019-01-10','3032064951','FALSE','michelle.ofama@gmial.com','1046 Monroe Way','Louisville','CO',80027,'Panthers'),(5,'WoodWard','Smith','School Website','lead','Male',7,'2013-01-18','2019-01-15','3032529146','FALSE','jack.randal@gmail.com','35 Vian Dr.','Lafayette','CO',80026,'Panthers'),(6,'Jane','Smith','School Website','lead','Female',5,'2015-01-13','2019-01-15','3032572697','FALSE','senior@gmail.com','924 Vancouver Dr.','Lafayette','CO',80026,'Tigers'),(7,'Joseph','Smith','School Website','lead','Male',8,'2012-10-04','2019-01-29','3032598488','FALSE','corona@gmail.com','445 Mouse Trail','Lafayette','CO',80026,'Panthers'),(8,'Allan','Smith','School Event','lead','Male',8,'2012-07-16','2019-01-29','3032611584','FALSE','coors@gmail.com','452 Roosevelt Jump','Lafayette','CO',80026,'Panthers'),(9,'Ryan','Smith','School Event','lead','Male',14,'2006-03-06','2019-01-29','3032633626','FALSE','Rhino55@gmail.com','135 S. Moose Ave.','Lafayette','CO',80026,'Youth Masters'),(10,'Ricky','Smith','School Event','lead','Male',11,'2009-10-22','2019-01-29','3032633626','FALSE','Rhino55@gmail.com','135 S. Moose Ave.','Lafayette','CO',80026,'Panthers'),(11,'Emily','Smith','School Event','lead','Female',5,'2015-04-30','2019-01-29','3032689861','FALSE','mando.fango@gmail.com','677 Tacoaway ','Lafayette','CO',80026,'Tigers'),(12,'Dwayne','Smith','School Event','lead','Male',7,'2012-12-10','2019-01-29','3032745698','FALSE','mando.fango@gmail.com','677 Tacoaway ','Lafayette','CO',80026,'Panthers'),(13,'Isabella','Smith','School Event','lead','Female',19,'2001-09-17','2019-01-29','3032786640','FALSE','shytown@gmail.com','73892 Ranover Dr.','Golden','CO',80403,'Adults'),(14,'Zoe','Smith','School Event','lead','Female',8,'2012-04-19','2019-01-29','3032808393','FALSE','HtwoO@gmail.com','2145 Night Dr. ','Longmont','CO',80504,'Panthers'),(15,'Raymond','Smith','School Event','lead','Male',14,'2006-01-01','2019-01-29','3032844992','FALSE','Rundmz@gmail.com','324 Take Rd.','Louisville','CO',80027,'Youth Masters'),(16,'Julia','Smith','School Event','lead','Female',25,'1995-01-01','2019-01-29','3032908817','FALSE','jack.preach@gmail.com','920 Arapahoe Ct.','Louisville','CO',80027,'Adults'),(17,'Ria','Smith','School Event','lead','Female',20,'2000-01-01','2019-01-29','3032945579','FALSE','mckenzie@gmail.com','13328 Briarwood Dr.','Broomfield','CO',80020,'Adults'),(18,'Alex','Smith','School Website','appointment','Male',17,'2003-01-01','2019-01-29','3032958124','FALSE','fomo@gmail.com','4360 New England','Broomfield','CO',80020,'Adults'),(19,'Stephen','Smith','School Event','lead','Male',6,'2014-01-01','2019-01-29','3032983273','FALSE','ggplot@gmail.com','563 Miao Dr','Longmont','CO',80504,'Tigers'),(20,'Michael','Smith','Walk-in','lead','Male',12,'2008-05-13','2019-02-09','3032992771','FALSE','2020elections@gmail.com','743 Sunset Dr. ','Lafayette','CO',80026,'Youth Masters'),(21,'Jordan','Smith','School Website','lead','Male',7,'2013-08-21','2019-03-02','3033006381','FALSE','angrybirds@gmail.com','436 Bryant St.','Broomfield','CO',80020,'Panthers'),(22,'Sophie','Smith','School Event','lead','Female',7,'2013-01-07','2019-03-02','3033017972','FALSE','athena@gmail.com','494 Lebron Ave.','Broomfield','CO',80020,'Panthers'),(23,'Moe','Smith','School Website','lead','Male',6,'2013-12-23','2019-03-02','3033025423','FALSE','dr.miao@gmail.com','453 Jordan Rd.','Broomfield','CO',80020,'Tigers'),(24,'Shawn','Smith','School Website','lead','Male',25,'1995-01-01','2019-03-02','3033120606','FALSE','Paco@gmail.com','874 Hakeem Dr.','Broomfield','CO',80020,'Adults'),(25,'David','Smith','School Website','lead','Male',8,'2012-07-05','2019-04-23','3033159749','FALSE','jessicarawr@gmail.com','252 Row plaza ','Lafayette','CO',80026,'Panthers'),(26,'Karin','Smith','School Website','lead','Female',6,'2014-01-01','2019-04-23','3033178472','FALSE','jessicarawr@gmail.com','252 Row plaza','Lafayette','CO',80026,'Tigers'),(27,'Karim','Smith','Student Referal','lead','Male',9,'2011-01-22','2019-06-06','3033191841','FALSE','Redminx@gmail.com','253 S. Briar Dr.','Lafayette','CO',80026,'Panthers'),(28,'Khaled','Smith','School Event','lead','Male',13,'2010-07-12','2019-06-12','3033213412','FALSE','dj893@gmail.com','3634 E. Canyon Cove','Lafayette','CO',80026,'Youth Masters'),(29,'Laura','Smith','School Website','lead','Female',10,'2010-01-01','2019-07-16','3033239240','FALSE','vanderfelt_woof@gmail.com','4636 Hurrican Dr.','Lafayette','CO',80026,'Panthers');
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `ClassID` int(11) DEFAULT NULL,
  `MembershipID` int(11) DEFAULT NULL,
  `LastName` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL,
  `School` varchar(50) DEFAULT NULL,
  `StudentSource` varchar(45) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Birthdate` date DEFAULT NULL,
  `BeltSize` varchar(10) DEFAULT NULL,
  `Programs` varchar(50) DEFAULT NULL,
  `CurrentRanks` varchar(50) DEFAULT NULL,
  `Emails` varchar(150) DEFAULT NULL,
  `SendSMS` varchar(10) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` int(5) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL,
  `IsActive` varchar(3) NOT NULL,
  `InactivatedOn` date DEFAULT NULL,
  `ConvertedToStudent` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `idx_lastname` (`LastName`),
  KEY `memID_fk_idx` (`MembershipID`),
  KEY `prog_Fk_idx` (`Programs`),
  KEY `classFK_idx` (`ClassID`),
  CONSTRAINT `classFK` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`idclassschedule`),
  CONSTRAINT `memID_FK` FOREIGN KEY (`MembershipID`) REFERENCES `memberships` (`membershipid`),
  CONSTRAINT `prog_Fk` FOREIGN KEY (`Programs`) REFERENCES `programs` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1033,'Gavin',7,2,'Smith','555-555-5555','public school','None','Male',6,'2014-01-20','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Louisville','CO',80027,'2020-01-24','Yes','2031-01-13','2025-01-14 04:23:23'),(1034,'Elias ',7,2,'Smith','555-555-5555','public school','Student Referal','Male',6,'2014-07-17','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lafayette','CO',80026,'2020-01-24','Yes','2031-01-12','2025-01-13 04:23:23'),(1035,'Konrad',7,7,'Smith','555-555-5555','public school','None','Male',6,'2013-12-09','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lafayette','CO',80026,'2020-01-31','Yes','2031-01-11','2025-01-12 04:23:23'),(1036,'Homer',7,11,'Smith','555-555-5555','public school','None','Male',6,'2014-01-14','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lafayette','CO',80026,'2020-02-12','Yes','2031-01-10','2025-01-11 04:23:23'),(1037,'Matej ',7,11,'Smith','555-555-5555','public school','None','Male',6,'2014-03-05','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lafayette','CO',80026,'2020-02-12','Yes','2031-01-09','2025-01-10 04:23:23'),(1038,'Daniel',8,8,'Smith','555-555-5555','public school','None','Male',10,'2010-03-11','\'1','Panthers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lafayette','CO',80026,'2020-02-20','Yes','2031-01-08','2025-01-09 04:23:23'),(1039,'Alexander ',8,3,'Smith','555-555-5555','public school','None','Male',11,'2008-12-27','\'0','Panthers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Lousiville','CO',80027,'2020-02-25','Yes','2031-01-07','2025-01-08 04:23:23'),(1041,'Alicia',7,11,'Smith','555-555-5555','public school','None','Female',5,'2015-08-01','\'00','Tigers','White Belt','yippeekaiyay@bruce.net','Yes','123 Some St','Louisville','CO',80027,'2020-09-11','Yes','2031-01-05','2025-01-06 04:23:23'),(1042,'Nitika',10,4,'Smith','555-555-5555','public school','None','Female',14,'2006-04-04','\'00','Youth Masters','White Belt','yippeekaiyay@bruce.net','Yes','123 Some St','Broomfield','CO',80023,'2020-09-14','Yes','2031-01-04','2025-01-05 04:23:23'),(1043,'James',8,13,'Smith','555-555-5555','public school','None','Male',7,'2013-08-09','\'1','Panthers','Yellow Belt','yippeekaiyay@bruce.net','No','123 Some St','Louisville','CO',80027,'2020-10-07','Yes','2031-01-03','2025-01-04 04:23:23'),(1044,'Benjamin',7,2,'Smith','555-555-5555','public school','None','Male',5,'2015-06-24','\'0','Tigers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Broomfield','CO',20023,'2020-10-07','Yes','2031-01-02','2025-01-03 04:23:23'),(1045,'Charles',8,3,'Smith','555-555-5555','public school','None','Male',10,'2010-03-04','\'1','Panthers','White Belt','yippeekaiyay@bruce.net','No','123 Some St','Erie','CO',80516,'2020-10-08','Yes','2031-01-01','2025-01-02 04:23:23'),(1046,'Isaiah',13,15,'Smith','555-555-5555','public school','None','Male',18,'2002-01-01','\'0','Adults','White Belt','yippeekaiyay@bruce.net','Yes','123 Some St','','CO',80024,'2020-10-21','Yes','2030-12-31','2025-01-01 04:23:23');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 22:30:46
