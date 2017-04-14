-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2017 at 11:46 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ischeduler_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_program`
--

CREATE TABLE `academic_program` (
  `DegreeID` varchar(50) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a degree program',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the college belongs',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the department which offers the degree program',
  `DegreeDescription` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Descriptive information for a degree program',
  `DegreeTypeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification number for a degree type',
  `Credits_Required` tinyint(4) DEFAULT '0' COMMENT 'Number of credit hours is required for a degree',
  `MinGPARequired` float DEFAULT NULL COMMENT 'The minimum GPA required for a degree program.',
  `StartAcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL DEFAULT '0' COMMENT 'Year, semester that the degree program is offered',
  `LongDegreeDescription` longtext COLLATE latin1_bin,
  `FootNote` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `EndAcademicTerm` varchar(4) COLLATE latin1_bin DEFAULT NULL,
  `Approved` tinyint(1) NOT NULL DEFAULT '0',
  `PublishedBy` varchar(8) COLLATE latin1_bin DEFAULT NULL,
  `PublishedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin COMMENT='This table capures information about degree programs.';

--
-- Dumping data for table `academic_program`
--

INSERT INTO `academic_program` (`DegreeID`, `CampusID`, `CollegeID`, `DeptID`, `DegreeDescription`, `DegreeTypeID`, `Credits_Required`, `MinGPARequired`, `StartAcademicTerm`, `LongDegreeDescription`, `FootNote`, `EndAcademicTerm`, `Approved`, `PublishedBy`, `PublishedOn`) VALUES
('ACTGBSB', 'SB', 'BUSE', 'BUSE', 'Accounting BSB', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('ACTSCBS', 'SB', 'LAS', 'MATH', 'Actuarial Science BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('APPMABS', 'SB', 'LAS', 'MATH', 'Applied Mathematics BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('BBMIS', 'SB', 'BUSE', 'BUSE', 'Management Information Systems', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('BIOCBS', 'SB', 'LAS', 'CHEM', 'Biochemistry BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('BISCIBS', 'SB', 'LAS', 'BIOL', 'Biological Sciences BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('BSINFBS', 'SB', 'LAS', 'CSCI', 'Informatics BS', 'BS', 122, 2, '4052', NULL, NULL, '', 1, 'testuser', '2017-04-06 04:17:12'),
('CHEMBS', 'SB', 'LAS', 'CHEM', 'Chemistry BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('CHMBABA', 'SB', 'LAS', 'CHEM', 'Chemistry BA', 'BA', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('CJUSTBS', 'SB', 'SPEA', 'SPEA', 'Criminal Justice BS', 'BS', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13'),
('CSCIBS', 'SB', 'LAS', 'CSCI', 'Computer Science BS', 'BS', 122, 2, '4052', 'The Bachelor of Science degree program follows the guidelines set out by the Association for Computing Machinery (ACM) and Institute of Electrical and Electronic Engineers (IEEE), the leading professional computing societies. Students in this degree program complete a core curriculum that builds an overall understanding of computers, computing environments, and theoretical issues. The degree prepares students to enter challenging computing careers in the workplace or to embark on postgraduate programs in computing.', '', '', 1, 'testuser', '2017-04-06 04:16:28'),
('ECONBA', 'SB', 'LAS', 'ECON', 'Economics BA', 'BA', 0, 2, '4052', NULL, NULL, '', 0, 'testuser', '2012-08-22 02:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `academic_program_master`
--

CREATE TABLE `academic_program_master` (
  `DegreeID` varchar(50) COLLATE latin1_bin NOT NULL,
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL,
  `DegreeTitle` varchar(100) COLLATE latin1_bin NOT NULL,
  `DegreeTypeID` varchar(10) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `academic_program_master`
--

INSERT INTO `academic_program_master` (`DegreeID`, `CampusID`, `CollegeID`, `DeptID`, `DegreeTitle`, `DegreeTypeID`) VALUES
('AAGSAAGS', 'SB', 'SCSG', 'SCS', 'General Studies AAGS', 'AS'),
('ABSCIAS', 'SB', 'LAS', 'BIOL', 'Biological Sciences AS', 'AS'),
('ACTGBSB', 'SB', 'BUSE', 'BUSE', 'Accounting BSB', 'BS'),
('ACTSCBS', 'SB', 'LAS', 'MATH', 'Actuarial Science BS', 'BS'),
('ADVCPCRT', 'SB', 'LAS', 'CSCI', 'Adv Computer Programng CRT', 'CERT'),
('ADVSGBSB', 'SB', 'BUSE', 'BUSE', 'Advertising BSB', 'BS'),
('APPMABS', 'SB', 'LAS', 'MATH', 'Applied Mathematics BS', 'BS'),
('BBMIS', 'SB', 'BUSE', 'BUSE', 'Management Information Systems', 'BS'),
('BIOCBS', 'SB', 'LAS', 'CHEM', 'Biochemistry BS', 'BS'),
('BIOEDBSED', 'SB', 'EDUC', 'EDUC', 'Biology Education BSED', 'BSED'),
('BISCIBS', 'SB', 'LAS', 'BIOL', 'Biological Sciences BS', 'BS'),
('BNBSN', 'SB', 'NURS', 'NURS', 'Bac Non-Nurse to BSN', 'BSN'),
('BSBGEBSB', 'SB', 'BUSE', 'BUSE', 'General Business BSB', 'BS'),
('BSINFBS', 'SB', 'LAS', 'INFO', 'Informatics BS', 'BS'),
('BUSASAS', 'SB', 'BUSE', 'BUSE', 'Business AS', 'AS'),
('CHEMBS', 'SB', 'LAS', 'CHEM', 'Chemistry BS', 'BS'),
('CHMBABA', 'SB', 'LAS', 'CHEM', 'Chemistry BA', 'BA'),
('CHMEDBSED', 'SB', 'EDUC', 'EDUC', 'Chemistry Education BSED', 'BSED'),
('CJASAS', 'SB', 'SPEA', 'SPEA', 'Criminal Justice AS', 'AS'),
('CJUSBSPA', 'SB', 'SPEA', 'SPEA', 'Criminal Justice BSPA', 'BS'),
('CJUSTBS', 'SB', 'SPEA', 'SPEA', 'Criminal Justice BS', 'BS'),
('CMPGRCRT', 'SB', 'LAS', 'CSCI', 'Computer Programming CRT', 'CERT'),
('CSCIAS', 'SB', 'LAS', 'CSCI', 'Computer Science AS', 'AS'),
('CSCIBS', 'SB', 'LAS', 'CSCI', 'Computer Science BS', 'BS'),
('DENASCERT2', 'SB', 'DENT', 'DENT', 'Dental Assisting CERT', 'CERT'),
('DHYGAS', 'SB', 'DENT', 'DENT', 'Dental Hygiene AS', 'AS'),
('E&SBBSB', 'SB', 'BUSE', 'BUSE', 'Entrepreneurship & Sm Bus BSB', 'BS'),
('ECEDAS', 'SB', 'EDUC', 'EDUC', 'Early Childhood Educ AS', 'AS'),
('ECOBSBS', 'SB', 'LAS', 'ECON', 'Economics BS', 'BS'),
('ECONBA', 'SB', 'LAS', 'ECON', 'Economics BA', 'BA'),
('ELEDBSED', 'SB', 'EDUC', 'EDUC', 'Elementary Education BSED', 'BSED'),
('ENGBA', 'SB', 'LAS', 'ENG', 'English BA', 'BA'),
('ENGEDBSED', 'SB', 'EDUC', 'EDUC', 'English Education BSED', 'BS'),
('ERTSPBSED', 'SB', 'EDUC', 'EDUC', 'Earth-Space Science Ed BSED', 'BSED'),
('FABFABFA', 'SB', 'ARTS', 'ARTS', 'Fine Arts BFA', 'BS'),
('FILMAAA', 'SB', 'LAS', 'ENG', 'Film Studies AA', 'AA'),
('FINAAAA', 'SB', 'ARTS', 'ARTS', 'Fine Arts AA', 'AA'),
('FINABA', 'SB', 'ARTS', 'ARTS', 'Fine Arts BA', 'BA'),
('FINBSB', 'SB', 'BUSE', 'BUSE', 'Finance BSB', 'BS'),
('FREDBSED', 'SB', 'EDUC', 'EDUC', 'French Education BSED', 'BSED'),
('FRENBA', 'SB', 'LAS', 'WLAN', 'French BA', 'BA'),
('FRNCHAA', 'SB', 'LAS', 'WLAN', 'French AA', 'AA'),
('GCONN3', 'SB', 'EDUC', 'EDUC', 'Grad Contng Non-Degree', 'BS'),
('GENSTBGS', 'SB', 'SCSG', 'SCS', 'General Studies BGS', 'BS'),
('GENSTBGSPR', 'SB', 'SCSG', 'SCS', 'Pre General Studies BGS', 'BS'),
('GERMBA', 'SB', 'LAS', 'WLAN', 'German BA', 'BA'),
('GSCEDBSED', 'SB', 'EDUC', 'EDUC', 'General Science Educ BSED', 'BSED'),
('HISTBA', 'SB', 'LAS', 'HIST', 'History BA', 'BA'),
('HRMBSB', 'SB', 'BUSE', 'BUSE', 'Human Resource Mgmt BSB', 'BS'),
('HSMBS', 'SB', 'SPEA', 'SPEA', 'Health Services Mgmt BS', 'BS'),
('IBUSBSB', 'SB', 'BUSE', 'BUSE', 'International Business BSB', 'BS'),
('LGSTSBSPA', 'SB', 'SPEA', 'SPEA', 'Legal Studies BSPA', 'BS'),
('LSTUBBS2', 'SB', 'LSTU', 'LSTU', 'Labor Studies BS', 'BS'),
('MADMBSB', 'SB', 'BUSE', 'BUSE', 'Management & Admin BSB', 'BS'),
('MARKBSB', 'SB', 'BUSE', 'BUSE', 'Marketing BSB', 'BS'),
('MATHBA', 'SB', 'LAS', 'MATH', 'Mathematics BA', 'BA'),
('MSCOMBA', 'SB', 'ARTS', 'ARTS', 'Mass Communications BA', 'BS'),
('MTHEDBSED', 'SB', 'EDUC', 'EDUC', 'Mathematics Education BSED', 'BSED'),
('MUSBSBS', 'SB', 'ARTS', 'ARTS', 'Music BS', 'BS'),
('MUSORINS', 'SB', 'ARTS', 'ARTS', 'Orchestral Instrument BM', 'BM'),
('NBSPRBSNP', 'SB', 'NURS', 'NURS', 'Nursing-Pre (RN-BSN) BSN', 'BSN'),
('NDG', 'SB', 'LAS', 'NDEG', 'Nondegree Graduate', 'MS'),
('NDGEDUC', 'SB', 'EDUC', 'EDUC', 'Nondegree Graduate', 'BS'),
('NDUBUSE', 'SB', 'BUSE', 'BUSE', 'Nondegree Undergraduate', 'BS'),
('NDUDENT', 'SB', 'DENT', 'DENT', 'Nondegree Undergraduate', 'BS'),
('NDUEDUC', 'SB', 'EDUC', 'EDUC', 'Nondegree Undergraduate', 'BS'),
('NDUNURS', 'SB', 'NURS', 'NURS', 'Nondegree Undergraduate', 'BS'),
('NDUSCS', 'SB', 'SCSG', 'SCS', 'Nondegree Undergraduate', 'BS'),
('NDUSPEA', 'SB', 'SPEA', 'SPEA', 'Nondegree Undergraduate', 'BS'),
('NDUTRAN', 'SB', 'LAS', 'UNDE', 'Nondegree Undergraduate Transfer', 'BS'),
('NDUUNDE', 'SB', 'LAS', 'UNDE', 'Nondegree Undergraduate', 'BS'),
('NONDG', 'SB', 'LAS', 'NDEG', 'Nondegree Undergraduate', 'BS'),
('NRBSPBSNP', 'SB', 'NURS', 'NURS', 'Nursing-B.S. (Pre) BSN', 'BS'),
('NRSRNBSN', 'SB', 'NURS', 'NURS', 'Nursing BSN (RN)', 'BS'),
('NURBSBSN', 'SB', 'NURS', 'NURS', 'Nursing BSN', 'BSN'),
('OLPABSPA', 'SB', 'SPEA', 'SPEA', 'Org Leadership BSPA', 'BS'),
('ORINSBM', 'SB', 'ARTS', 'ARTS', '', 'BS'),
('PARCRCRT', 'SB', 'SCSG', 'SCS', 'Paralegal Studies CRT', 'CERT'),
('PBBSNPR', 'SB', 'NURS', 'NURS', 'Pre-Bac N-Nurs to BSN', 'BSN'),
('PCLSBSPR', 'SB', 'AHLT', 'AHLT', 'Pre Clin Lab Sci-BS', 'BS'),
('PDENTASPR', 'SB', 'DENT', 'DENT', 'Pre Dental Hygiene AS', 'AS'),
('PFABFA', 'SB', 'ARTS', 'ARTS', 'Pre Fine Arts BFA', 'BFA'),
('PFINABA', 'SB', 'ARTS', 'ARTS', 'Pre Fine Arts BA', 'BS'),
('PHILBA', 'SB', 'LAS', 'PHIL', 'Philosophy BA', 'BA'),
('PHLAAAA', 'SB', 'LAS', 'PHIL', 'Philosophy AA', 'AA'),
('PHYBSBS', 'SB', 'LAS', 'PHYS', 'Physics BS', 'BS'),
('PHYEDBSED', 'SB', 'EDUC', 'EDUC', 'Physics Education BSED', 'BSED'),
('PIANOBM', 'SB', 'ARTS', 'ARTS', 'Piano BM', 'BM'),
('PMSCOMBA', 'SB', 'ARTS', 'ARTS', 'Pre Mass Communications BA', 'BA'),
('POLSBA', 'SB', 'LAS', 'POLS', 'Political Science BA', 'BA'),
('PPARMASPR', 'SB', 'AHLT', 'AHLT', 'Pre Paramedic Sci-AS', 'AS'),
('PRBUSBSBP', 'SB', 'BUSE', 'BUSE', 'Pre-Business BSB', 'BS'),
('PREDENTPR', 'SB', 'LAS', 'BIOL', 'Pre-Dentistry', 'BS'),
('PREENGRPR', 'SB', 'LAS', 'PHYS', 'Pre-Engineering', 'BS'),
('PRELAWPR', 'SB', 'LAS', 'POLS', 'Pre-Law', 'BS'),
('PREMEDPR', 'SB', 'LAS', 'BIOL', 'Pre-Medicine', 'BS'),
('PREOTBSPR', 'SB', 'AHLT', 'AHLT', 'Pre Occupational Ther BS', 'BS'),
('PREPH', 'SB', 'LAS', 'BIOL', 'Pre-Pharmacy', 'BS'),
('PREVETPR', 'SB', 'LAS', 'BIOL', 'Pre-Veterinary Medicine', 'BS'),
('PRFMUAD', 'SB', 'ARTS', 'ARTS', 'Performance AD', 'BS'),
('PRHIABSPR', 'SB', 'AHLT', 'AHLT', 'Pre Hlth Info Admin-BS', 'BS'),
('PRMITBSPR', 'SB', 'AHLT', 'AHLT', 'Pre Med Imaging Tech BS', 'BS'),
('PRNMTBSPR', 'SB', 'AHLT', 'AHLT', 'Pre Nuclear Med Tech BS', 'BS'),
('PRRADASPR', 'SB', 'AHLT', 'AHLT', 'Pre Radiography-AS', 'AS'),
('PRRSCBSPR', 'SB', 'AHLT', 'AHLT', '', 'BS'),
('PRRTBBSPR', 'SB', 'AHLT', 'AHLT', 'Pre Radiatn Therapy-BS', 'BS'),
('PSCOMMBA', 'SB', 'ARTS', 'ARTS', 'Pre Speech Communication BA', 'BA'),
('PSYAAAA', 'SB', 'LAS', 'PSY', 'Psychology AA', 'AA'),
('PSYBA', 'SB', 'LAS', 'PSY', 'Psychology BA', 'BA'),
('PTHTRBA', 'SB', 'ARTS', 'ARTS', 'Pre Theatre BA', 'BA'),
('PTHTRBFA', 'SB', 'ARTS', 'ARTS', 'Pre Theatre BFA', 'BFA'),
('PUBAFBSPA', 'SB', 'SPEA', 'SPEA', 'Public Affairs BSPA', 'BS'),
('RADGRAS', 'SB', 'AHLT', 'AHLT', 'Radiography AS', 'AS'),
('SCOMMBA', 'SB', 'ARTS', 'ARTS', 'Speech Communication BA', 'BA'),
('SECEDBSED', 'SB', 'EDUC', 'EDUC', 'Secondary Education BSED', 'BSED'),
('SOCBA', 'SB', 'LAS', 'SOC', 'Sociology BA', 'BA'),
('SOCIOAA', 'SB', 'LAS', 'SOC', 'Sociology AA', 'AA'),
('SOCSTBSED', 'SB', 'EDUC', 'EDUC', 'Social Studies Educ BSED', 'BSED'),
('SOCSTCERT', 'SB', 'EDUC', 'EDUC', 'Social Studies Educ Cert Prog', 'CERT'),
('SPANBA', 'SB', 'LAS', 'WLAN', 'Spanish BA', 'BA'),
('SPCEDBSED', 'SB', 'EDUC', 'EDUC', 'Special Education BSED', 'BSED'),
('SPCOMAA', 'SB', 'ARTS', 'ARTS', 'Speech Communication AA', 'AA'),
('SPECLBSPA', 'SB', 'SPEA', 'SPEA', 'Specialized Study BSPA', 'BS'),
('SPNEDBSED', 'SB', 'EDUC', 'EDUC', 'Spanish Education BSED', 'BSED'),
('SPNSHAA', 'SB', 'LAS', 'WLAN', 'Spanish AA', 'AA'),
('THTRBA', 'SB', 'ARTS', 'ARTS', 'Theatre BA', 'BA'),
('UBUSBSB', 'SB', 'BUSE', 'BUSE', 'Undecided Business BSB', 'BS'),
('UEDUBSED', 'SB', 'EDUC', 'EDUC', 'Undecided Education BSED', 'BSED'),
('UNALHBS', 'SB', 'AHLT', 'AHLT', 'Undecided Allied Hlth BS', 'BS'),
('UNDABUSEPR', 'SB', 'BUSE', 'BUSE', 'Undecided Associates (BUSE)', 'AS'),
('UNDASPR', 'SB', 'LAS', 'UNDE', 'Undecided Arts & Sci', 'BS'),
('UNDBARTSPR', 'SB', 'ARTS', 'ARTS', 'Undecided Baccalaureate (ARTS)', 'BA'),
('UNDBLASPR', 'SB', 'LAS', 'UNDE', 'Undecided Baccalaureate (LAS)', 'BS'),
('UNDBMUSPR', 'SB', 'ARTS', 'ARTS', 'Undecided Music Baccalaureate', 'BM'),
('UNDBSPEAPR', 'SB', 'SPEA', 'SPEA', 'Undecided Baccalaureate (SPEA)', 'BS'),
('UNDIBSB', 'SB', 'BUSE', 'BUSE', 'Undecided Baccalaureate', 'BS'),
('UNDIBSPR', 'SB', 'AHLT', 'AHLT', 'Undecided Baccalaureate', 'BS'),
('UNDIPR3', 'SB', 'LAS', 'UNDE', 'Undecided Associates (LAS)', 'AS'),
('UNDNUBSN', 'SB', 'NURS', 'NURS', 'Undecided Nursing BSN', 'BSN'),
('UNDPABSPA', 'SB', 'SPEA', 'SPEA', 'Undecided-Pa BSPA', 'BS'),
('VOICEBM', 'SB', 'ARTS', 'ARTS', 'Voice BM', 'BM'),
('WOSTAAA', 'SB', 'LAS', 'WOST', 'Women\'s Studies AA', 'AA'),
('WOSTBBA', 'SB', 'LAS', 'WOST', 'Women\'s Studies BA', 'BA'),
('_TEMP1', 'SB', 'TEMPLATE', 'TEMPLATE', 'Template 1', 'BS');

-- --------------------------------------------------------

--
-- Table structure for table `admin_personnel`
--

CREATE TABLE `admin_personnel` (
  `LoginID` varchar(8) COLLATE latin1_bin NOT NULL COMMENT 'Username of admin personnel',
  `Password` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Secret word used for logging in',
  `LastName` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Family name',
  `FirstName` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `AccessLevel` varchar(50) COLLATE latin1_bin DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin COMMENT='Administrators of the system ';

--
-- Dumping data for table `admin_personnel`
--

INSERT INTO `admin_personnel` (`LoginID`, `Password`, `LastName`, `FirstName`, `AccessLevel`) VALUES
('hhakimza', 'password', 'Hakimzadeh', 'Hossein', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `LoginID` varchar(8) COLLATE latin1_bin NOT NULL COMMENT 'Username of the admin person',
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the department administered by the admin person',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the department belongs',
  `StartDate` date DEFAULT NULL COMMENT 'Begin date ',
  `EndDate` date DEFAULT NULL COMMENT 'Expired date',
  `RoleID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`LoginID`, `DeptID`, `CollegeID`, `CampusID`, `StartDate`, `EndDate`, `RoleID`) VALUES
('hhakimza', 'CSCI', 'LAS', 'SB', '2000-04-01', '2018-04-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `available_roles`
--

CREATE TABLE `available_roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(128) COLLATE latin1_bin NOT NULL,
  `Description` varchar(128) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `available_roles`
--

INSERT INTO `available_roles` (`RoleID`, `RoleName`, `Description`) VALUES
(1, 'Director', '0'),
(2, 'Chair', '0'),
(3, 'Assoc. Chair', '0'),
(4, 'Secretary', '0'),
(5, 'SU', 'Superuser');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `BuildingID` varchar(32) COLLATE latin1_bin NOT NULL,
  `BuildingName` varchar(128) COLLATE latin1_bin NOT NULL,
  `Address1` varchar(128) COLLATE latin1_bin NOT NULL,
  `Address2` varchar(128) COLLATE latin1_bin NOT NULL,
  `City` varchar(128) COLLATE latin1_bin NOT NULL,
  `State` varchar(2) COLLATE latin1_bin NOT NULL,
  `Zip` varchar(10) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`CampusID`, `BuildingID`, `BuildingName`, `Address1`, `Address2`, `City`, `State`, `Zip`) VALUES
('IUB', 'SS', 'Southside', 'South Street', '', 'Bloomington', 'IN', '55555'),
('SB', 'ADMIN', 'Administration', '1700 Mishawaka Ave.', '', 'South Bend', 'IN', '46615'),
('SB', 'NS', 'Northside Hall', '1700 Mishawaka Ave.', '', 'South Bend', 'IN', '46615');

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a campus',
  `Name` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Full name of a campus',
  `Address1` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Building number, street name',
  `Address2` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `City` varchar(25) COLLATE latin1_bin DEFAULT NULL,
  `State` char(2) COLLATE latin1_bin DEFAULT NULL,
  `Zip` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Usually 5 digits',
  `Phone` varchar(12) COLLATE latin1_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE latin1_bin DEFAULT NULL COMMENT 'Web page of a campus'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`CampusID`, `Name`, `Address1`, `Address2`, `City`, `State`, `Zip`, `Phone`, `URL`) VALUES
('IUB', 'IU at Bloomington', NULL, NULL, 'Bloomington', NULL, '', '', 'www.indiana.edu'),
('SB', 'IU South Bend', '1700 Mishawaka Ave', 'P.O. Box 7000', 'South Bend', 'IN', '46615', '574-520-IUSB', 'www.iusb.edu');

-- --------------------------------------------------------

--
-- Table structure for table `campus_enrollment_cap`
--

CREATE TABLE `campus_enrollment_cap` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CourseLevel` varchar(32) COLLATE latin1_bin NOT NULL,
  `EnrollmentCap` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `campus_enrollment_cap`
--

INSERT INTO `campus_enrollment_cap` (`CampusID`, `CourseLevel`, `EnrollmentCap`) VALUES
('SB', '100', 14),
('SB', '200', 14),
('SB', '300', 12),
('SB', '400', 12),
('SB', '500', 8),
('SB', '600', 8);

-- --------------------------------------------------------

--
-- Table structure for table `campus_reqs`
--

CREATE TABLE `campus_reqs` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus ask for the requirements',
  `CampusReqID` int(11) NOT NULL DEFAULT '0' COMMENT 'Unique identification string of a requirement',
  `OrderOfAppearance` tinyint(4) NOT NULL DEFAULT '0',
  `RequirementText` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Content of the requirement',
  `MiscNotes` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'More information or instruction about the requirement',
  `StartAcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL COMMENT 'Year and semester in which the requirement is applied'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `campus_reqs`
--

INSERT INTO `campus_reqs` (`CampusID`, `CampusReqID`, `OrderOfAppearance`, `RequirementText`, `MiscNotes`, `StartAcademicTerm`) VALUES
('SB', 1, 1, 'Official transcript from high school, GED, and any colleges attended.', NULL, '4052'),
('SB', 2, 2, 'CORE 40', NULL, '4052'),
('SB', 3, 3, 'Criminal background check', NULL, '4052'),
('SB', 4, 4, 'Immunization', NULL, '4052'),
('SB', 5, 5, 'Submit SAT, ACT scores', 'For those graduating within the last three years.', '4052');

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a college',
  `Name` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Name of the college',
  `Address1` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Building number, street name',
  `Address2` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `City` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `State` char(2) COLLATE latin1_bin DEFAULT NULL,
  `Zip` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Usually 5 digits',
  `Phone` varchar(12) COLLATE latin1_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE latin1_bin DEFAULT NULL COMMENT 'Web page of a college',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the college belongs'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`CollegeID`, `Name`, `Address1`, `Address2`, `City`, `State`, `Zip`, `Phone`, `URL`, `CampusID`) VALUES
('ADMIN', 'Administration', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('AHLT', 'Allied Health', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('ARTS', 'School of the Arts', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', 'www.iusb.edu/~lasi/', 'SB'),
('BUSE', 'School of Business and Economics', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('DENT', 'Dental', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('EDUC', 'School of Education', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('LAS', 'College of Liberal Arts and Sciences', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-520-4290', 'www.iusb.edu/~lasi', 'SB'),
('LSTU', NULL, 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('NURS', 'School of Nursing', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('SCSG', 'General Studies', NULL, NULL, NULL, NULL, '', '', NULL, 'SB'),
('SLIS', 'School of Library Information Systems', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('SPEA', 'School of Public and Environmental Affairs', 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('SWK', NULL, 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('SWT', NULL, 'IU South Bend', '1700 Mishawaka Avenue', 'South Bend', 'IN', '46634-7111', '574-237-429', '#http://www.iusb.edu/~lasi/#', 'SB'),
('TEMPLATE', 'Template', 'IU Bloomington', NULL, NULL, NULL, NULL, NULL, NULL, 'IUB'),
('TEMPLATE', 'Template', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SB');

-- --------------------------------------------------------

--
-- Table structure for table `college_reqs`
--

CREATE TABLE `college_reqs` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the college belongs',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college that ask for the requirement',
  `CollegeReqID` int(11) NOT NULL DEFAULT '0' COMMENT 'Unique identification string of the college requirement',
  `OrderOfAppearance` tinyint(4) NOT NULL DEFAULT '0',
  `RequirementText` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Content of the requirement',
  `MiscNotes` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Information or instruction about the requirement',
  `StartAcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL COMMENT 'Year and semester in which the requirement is applied'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `college_reqs`
--

INSERT INTO `college_reqs` (`CampusID`, `CollegeID`, `CollegeReqID`, `OrderOfAppearance`, `RequirementText`, `MiscNotes`, `StartAcademicTerm`) VALUES
('SB', 'LAS', 1, 1, 'Minimum overall GPA of 2.0 is required for graduate', NULL, '4052'),
('SB', 'LAS', 2, 2, 'Minimum of C- or better for each major or minor.', NULL, '4052'),
('SB', 'LAS', 3, 3, 'Minimum 122 credits is required for graduation', NULL, '4052'),
('SB', 'LAS', 4, 4, 'No more than 96 credits can be transferred to IUSB', NULL, '4052'),
('SB', 'LAS', 5, 5, 'No more than 60 credits can be transferred from an accredited junior college.', NULL, '4052'),
('SB', 'LAS', 6, 6, 'A minimum of 30 credit hours must be completed in 300 or 400 level courses.', NULL, '4052'),
('SB', 'LAS', 7, 7, 'At least 26 credit hours of the work taken as a senior and at least 10 credit hours above the first-level courses in the major subject must be completed at IUSB.  The 10 credits in major must be approved by the department.', NULL, '4052'),
('SB', 'LAS', 8, 8, 'A student is expected to complete the work for a degree within 10 years. Failure to do so may require passing of comprehensive examinations on the subjects in the area of concentration.', NULL, '4052');

-- --------------------------------------------------------

--
-- Table structure for table `completion_method`
--

CREATE TABLE `completion_method` (
  `CompletionMethodID` varchar(25) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the completion method',
  `Description` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Descriptive information of the completion method'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `completion_method`
--

INSERT INTO `completion_method` (`CompletionMethodID`, `Description`) VALUES
('EXEMPTED', 'Exempted by Advisor / Chair / Director / Dean, etc.'),
('IUSB', 'Completed at IUSB'),
('SUBSTITUE', 'Substitute with another course'),
('TESTOUT', 'Tested-out, Credit given by Test.'),
('TRANSFER', 'Transfer from another University');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a course',
  `CourseNo` varchar(10) COLLATE latin1_bin DEFAULT NULL COMMENT 'Course number',
  `SubjectArea` varchar(8) COLLATE latin1_bin DEFAULT NULL COMMENT 'The subject to which the course belongs (CSCI, etc)',
  `CourseTitle` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Full name of the course',
  `DeptID` varchar(10) COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the department which offers the course',
  `CollegeID` varchar(10) COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `CampusID` varchar(10) COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the campus to which the department belongs',
  `MinCredits` float DEFAULT '1' COMMENT 'Minimum of number of credit hours that a course can be counted toward a degree',
  `MaxCredits` float DEFAULT '6' COMMENT 'Maximum of number of credit hours that a course can be counted toward a degree',
  `CourseDescription` varchar(1024) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CourseNo`, `SubjectArea`, `CourseTitle`, `DeptID`, `CollegeID`, `CampusID`, `MinCredits`, `MaxCredits`, `CourseDescription`) VALUES
('000383', '111', 'AERO-A', 'THE AIR FORCE TODAY 1', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('000384', '112', 'AERO-A', 'THE AIR FORCE TODAY 2', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('000391', '211', 'AERO-A', 'THE DEVELOP OF AR. POWER I', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('000392', '212', 'AERO-A', 'THE DEVELOP OF AR. POWER II', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('000398', '311', 'AERO-A', 'AIR FORCE MANGT&LEADERSHIP I', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('000399', '312', 'AERO-A', 'AIR FORCE MANGT&LEADERSHIP II', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('000403', '411', 'AERO-A', 'NTL SEC.FOR-IN CONT.AMER.SOC.I', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('000404', '412', 'AERO-A', 'NTL SEC.FOR.-CONT.AMER.SOC. I', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('000432', '150', 'AFRO-A', 'SURV CULTR OF BLACK AMERICANS', 'HIST', 'LAS', 'SB', 3, 3, ''),
('001138', '100', 'AHLT-R', 'ORIENTATION TO RAD TECHNOLOGY', 'AHLT', 'AHLT', 'SB', 2, 2, ''),
('001139', '101', 'AHLT-R', 'RADIOGRAPHIC PROCEDURES I', 'AHLT', 'AHLT', 'SB', 4, 4, ''),
('001140', '102', 'AHLT-R', 'PRINCIPLES OF RADIOGRAPHY 1', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001145', '181', 'AHLT-R', 'CLIN EXPERIENCE-RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 4, 4, ''),
('001146', '182', 'AHLT-R', 'CLIN EXPERIENCE-RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 4, 4, ''),
('001147', '185', 'AHLT-R', 'MEDICAL TERMINOLOGY', 'AHLT', 'AHLT', 'SB', 1, 1, ''),
('001148', '200', 'AHLT-R', 'PATHOLOGY', 'AHLT', 'AHLT', 'SB', 2, 3, ''),
('001149', '201', 'AHLT-R', 'RADIOGRAPHIC PROCEDURES II', 'AHLT', 'AHLT', 'SB', 4, 4, ''),
('001150', '202', 'AHLT-R', 'PRINCIPLES OF RADIOGRAPHY 2', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001153', '205', 'AHLT-R', 'RADIOGRAPHIC POSIITIONING 3', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001154', '207', 'AHLT-R', 'SEMINAR:', 'AHLT', 'AHLT', 'SB', 1, 1, ''),
('001155', '208', 'AHLT-R', 'TOPICS IN RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 1, 1, ''),
('001158', '222', 'AHLT-R', 'PRINCIPLES OF RADIOGRAPHY 3', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001164', '250', 'AHLT-R', 'PHYSICS APPLIED TO RADIOLOGY', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001167', '260', 'AHLT-R', 'RADIOBIOLOGY AND PROTECTION', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001168', '281', 'AHLT-R', 'CLIN EXPERIENCE-RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 1, 6, ''),
('001169', '282', 'AHLT-R', 'CLIN EXPERIENCE-RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 1, 6, ''),
('001170', '283', 'AHLT-R', 'CLIN EXPERIENCE-RADIOGRAPHY', 'AHLT', 'AHLT', 'SB', 5, 5, ''),
('001171', '290', 'AHLT-R', 'COMPREHENSIVE EXPERIENCE', 'AHLT', 'AHLT', 'SB', 1, 8, ''),
('001177', '404', 'AHLT-R', 'SECTIONAL IMAGING ANATOMY', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001178', '405', 'AHLT-R', 'ADVANCED DIAGNOSTIC IMAGING I', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001180', '407', 'AHLT-R', 'SEMINAR:', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('001211', '482', 'AHLT-R', 'CL PRACT: COMPUTED TOMOGRAPHY', 'AHLT', 'AHLT', 'SB', 6, 6, ''),
('001212', '483', 'AHLT-R', 'CLINICAL PRACTICUM: MRI', 'AHLT', 'AHLT', 'SB', 6, 6, ''),
('001213', '484', 'AHLT-R', 'CLINICAL PRACTICUM: ULTRASOUND', 'AHLT', 'AHLT', 'SB', 6, 6, ''),
('001672', '210', 'ANAT-A', 'ELEMENTARY HUMAN ANATOMY', 'BIOL', 'LAS', 'SB', 3, 5, ''),
('001933', '105', 'ANTH-A', 'HUMAN ORIGINS & PREHISTORY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('001989', '385', 'ANTH-A', 'TOPICS IN ANTHROPOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002016', '460', 'ANTH-A', 'TOPICS IN ANTHROPOLOGY', 'SOC', 'LAS', 'SB', 1, 3, ''),
('002035', '495', 'ANTH-A', 'INDIVIDUAL READINGS IN ANTH', 'SOC', 'LAS', 'SB', 1, 4, ''),
('002036', '496', 'ANTH-A', 'FIELD STUDY IN ANTHROPOLOGY', 'SOC', 'LAS', 'SB', 1, 4, ''),
('002138', '105', 'ANTH-E', 'CULTURE & SOCIETY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002147', '300', 'ANTH-E', 'CULTURE AREAS & ETHNIC GROUPS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002154', '310', 'ANTH-E', 'INTRO TO CULTURES OF AFRICA', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002160', '320', 'ANTH-E', 'INDIANS OF NORTH AMERICA', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002161', '321', 'ANTH-E', 'PEOPLES OF MEXICO', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002174', '335', 'ANTH-E', 'ANCIENT CIVIL OF MESOAMERICA', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002186', '365', 'ANTH-E', 'WOMEN AND POWER', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002191', '380', 'ANTH-E', 'URBAN ANTHROPOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002199', '391', 'ANTH-E', 'WOMEN IN DEVELOPING COUNTRIES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002203', '397', 'ANTH-E', 'PEOPLE & CULTURE OF MID EAST', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002287', '300', 'ANTH-L', 'CULTURE AND LANGUAGE', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002346', '398', 'ANTH-P', 'THE RISE OF CIVILIZATION', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002351', '406', 'ANTH-P', 'LABORATORY MTHD IN ARCHAELOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('002640', '100', 'AST-A', 'THE SOLAR SYSTEM', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('002644', '105', 'AST-A', 'STARS AND GALAXIES', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('002673', '451', 'AST-A', 'STELLAR ASTROPHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('003406', '502', 'BIOL', 'CELL PHYSIOLOGY LAB', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('003485', '597', 'BIOL', 'POPULATION ECOLOGY', 'BIOL', 'LAS', 'SB', 4, 4, ''),
('003525', '300', 'BIOL-B', 'VASCULAR PLANTS', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003549', '401', 'BIOL-B', 'NEW BIOLOGY 1', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003569', '502', 'BIOL-B', 'MOLEC & BIOCHEMICAL GENETICS', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003677', '100', 'BIOL-L', 'HUMANS & THE BIOLOGICAL WORLD', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('003678', '101', 'BIOL-L', 'INTRO TO BIOLOGICAL SCIENCES 1', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('003679', '102', 'BIOL-L', 'INTRO TO BIOLOGICAL SCIENCES 2', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('003681', '104', 'BIOL-L', 'INTRODUCTORY BIOLOGY LECTURES', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003696', '211', 'BIOL-L', 'MOLECULAR BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003709', '304', 'BIOL-L', 'MARINE BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003713', '308', 'BIOL-L', 'ORGANISMAL PHYSIOLOGY', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('003716', '311', 'BIOL-L', 'GENETICS', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003717', '312', 'BIOL-L', 'CELL BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003722', '317', 'BIOL-L', 'DEVELOPMENTAL BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003723', '318', 'BIOL-L', 'EVOLUTION', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003724', '319', 'BIOL-L', 'GENETICS LABORATORY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003726', '321', 'BIOL-L', 'PRINCIPLES OF IMMUNOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003728', '323', 'BIOL-L', 'MOLECULAR BIOLOGY LABORATORY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003734', '350', 'BIOL-L', 'ENVIRONMENTAL BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003741', '369', 'BIOL-L', 'HEREDITY EVOLUTION & SOCIETY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003748', '391', 'BIOL-L', 'SPECIAL TOPICS IN BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003749', '403', 'BIOL-L', 'BIOLOGY SEMINAR', 'BIOL', 'LAS', 'SB', 1, 1, ''),
('003769', '473', 'BIOL-L', 'ECOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003770', '474', 'BIOL-L', 'FIELD & LABORATORY ECOLOGY', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('003775', '490', 'BIOL-L', 'INDIVIDUAL STUDY', 'BIOL', 'LAS', 'SB', 1, 4, ''),
('003777', '499', 'BIOL-L', 'INTERNSHIP IN BIOL INSTRUCTION', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003825', '403', 'BIOL-M', 'PROSEMINAR', 'BIOL', 'LAS', 'SB', 1, 1, ''),
('003859', '200', 'BIOL-N', 'BIOLOGY OF WOMEN', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003902', '100', 'BIOL-T', 'BIOL FOR ELEMENTARY TEACHERS', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('003924', '373', 'BIOL-Z', 'ENTOMOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('003929', '383', 'BIOL-Z', 'LABORATORY IN ENTOMOLOGY', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('003937', '460', 'BIOL-Z', 'ETHOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('004876', '201', 'BUS-A', 'INTRO TO FINANCIAL ACCOUNTING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004878', '202', 'BUS-A', 'INTRO TO MANAGERIAL ACCOUNTING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004885', '207', 'BUS-A', 'INTRO TO MANAGRL ACCT-HONORS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004908', '311', 'BUS-A', 'INTERMEDIATE ACCOUNTING I', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004909', '312', 'BUS-A', 'INTERMEDIATE ACCOUNTING II', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004917', '325', 'BUS-A', 'COST ACCOUNTING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004920', '328', 'BUS-A', 'INTRODUCTION TO TAXATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004926', '335', 'BUS-A', 'ACCTG GOV & NOT-FOR-PRFT ENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004929', '337', 'BUS-A', 'ACCOUNTING INFORMATION SYSTEMS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004930', '339', 'BUS-A', 'ADVANCED INCOME TAXATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004945', '424', 'BUS-A', 'AUDITING & ASSURANCE SERVICES', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004946', '425', 'BUS-A', 'CONTEMPORARY ACCOUNTING THEORY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('004957', '490', 'BUS-A', 'INDPT STUDY IN ACCOUNTING', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005203', '300', 'BUS-D', 'INTERNATIONAL BUSINESS ADMIN', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005292', '490', 'BUS-E', 'PROF PRACTICE-ENTREPRENEURSHIP', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005324', '260', 'BUS-F', 'PERSONAL FINANCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005330', '301', 'BUS-F', 'FINANCIAL MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005331', '302', 'BUS-F', 'FINANCIAL DECISION MAKING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005341', '345', 'BUS-F', 'MONEY', 'BUSE', 'BUSE', 'SB', 0, 3, ''),
('005354', '420', 'BUS-F', 'EQUITY & FIXED INCOME INVSTMNT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005356', '423', 'BUS-F', 'TOPICS IN INVESTMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005359', '444', 'BUS-F', 'APPLICATIONS IN FINANCIAL MGMT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005360', '446', 'BUS-F', 'BANK & FINANCL INTERMEDIATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005365', '490', 'BUS-F', 'INDEPENDENT STUDY IN FINANCE', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005367', '494', 'BUS-F', 'INTERNATIONAL FINANCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005476', '490', 'BUS-G', 'INDEP STUDY BUS ECON&PUB POL', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005598', '401', 'BUS-J', 'ADMINISTRATIVE POLICY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005601', '404', 'BUS-J', 'BUSINESS & SOCIETY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005642', '201', 'BUS-K', 'THE COMPUTER IN BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005655', '301', 'BUS-K', 'ENTERPRISE RESOURCE PLANNING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005656', '302', 'BUS-K', 'INTRO TO MANAGEMENT SCIENCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005662', '321', 'BUS-K', 'MANAGEMENT INFO SYSTEMS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005674', '490', 'BUS-K', 'IND STUDY IN DECISION SCIENCES', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005726', '201', 'BUS-L', 'LEGAL ENVIRONMENT OF BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005728', '203', 'BUS-L', 'COMMERCIAL LAW I', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005735', '303', 'BUS-L', 'COMMERCIAL LAW 2', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005812', '301', 'BUS-M', 'INTRO TO MARKETING MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005814', '303', 'BUS-M', 'MARKETING RESEARCH', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005828', '401', 'BUS-M', 'INTERNATIONAL MARKETING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005832', '405', 'BUS-M', 'BUYER BEHAVIOR', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005840', '415', 'BUS-M', 'ADVERTISING & PROMOTION MGT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005843', '418', 'BUS-M', 'ADVERTISING STRATEGY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005844', '419', 'BUS-M', 'RETAIL MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005848', '426', 'BUS-M', 'SALES MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005855', '450', 'BUS-M', 'MARKETING STRATEGY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005858', '490', 'BUS-M', 'SPECIAL STUDIES IN MARKETING', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('005947', '301', 'BUS-P', 'OPERATIONS MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('005975', '490', 'BUS-P', 'IND STUDY IN OPER MGT', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('006119', '307', 'BUS-S', 'DATA MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006120', '310', 'BUS-S', 'SYSTEMS ANALYSIS & DESIGN', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006126', '410', 'BUS-S', 'SYSTEM IMPLEMENTATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006133', '435', 'BUS-S', 'ADV TPCS IN COMPUTER INFO SYS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006281', '100', 'BUS-W', 'BUS ADMIN INTRODUCTION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006297', '311', 'BUS-W', 'NEW VENTURE CREATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006305', '406', 'BUS-W', 'VENTURE GROWTH MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006307', '408', 'BUS-W', 'PRACTICUM IN SMALL BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006311', '430', 'BUS-W', 'ORG & ORG CHANGE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006313', '490', 'BUS-W', 'INDEP STUDY IN BUSINESS ADMIN', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('006382', '102', 'BUS-X', 'FRESHMAN SEMINAR IN BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006400', '310', 'BUS-X', 'BUS CAREER PLANNING/PLACEMENT', 'BUSE', 'BUSE', 'SB', 1, 1, ''),
('006484', '302', 'BUS-Z', 'MANAGING & BEHAVR IN ORGANIZTN', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006489', '404', 'BUS-Z', 'EFFECTIVE NEGOTIATIONS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006491', '440', 'BUS-Z', 'PERSONNEL - HUMAN RES MGMT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006492', '441', 'BUS-Z', 'WAGE AND SALARY ADMINISTRATION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006495', '444', 'BUS-Z', 'PERSONNEL RSRCH & MEASUREMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006498', '490', 'BUS-Z', 'INDEP ST PERS MGT & ORG BEHVR', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('006638', '501', 'BUSB-A', 'SURV OF FIN ACCTNG & REPORTING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006639', '502', 'BUSB-A', 'MANAGERIAL PRICE THEORY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006640', '503', 'BUSB-A', 'STATISTICAL APPLICATIONS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006641', '504', 'BUSB-A', 'MANAGEMENT INFORMATION SYSTEMS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006642', '511', 'BUSB-A', 'MATHEMATICAL TOOLS IN BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006643', '514', 'BUSB-A', 'SURVEY OF ECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006644', '525', 'BUSB-A', 'ADVANCED FINANCIAL PRACTICE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006646', '531', 'BUSB-A', 'ADVANCED MANAGERIAL', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006650', '545', 'BUSB-A', 'INTERNATIONAL ACCOUNTING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006651', '564', 'BUSB-A', 'INTERP & ANALYSIS OF FIN STMTS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006653', '502', 'BUSB-B', 'ORGANIZATIONAL BEHAVIOR I', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006655', '503', 'BUSB-B', 'LEADERSHIP AND CHANGE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006657', '502', 'BUSB-C', 'LEGAL&ETHICAL ENVIRO OF BUS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006658', '501', 'BUSB-D', 'MANAGEMENT OF MARKETING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006659', '502', 'BUSB-D', 'FINANCIAL MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006660', '503', 'BUSB-D', 'PRODUCTION MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006662', '510', 'BUSB-E', 'BUSINESS POLICY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006666', '503', 'BUSB-F', 'MANAGEMENT ACCOUNTING CONCEPTS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006669', '506', 'BUSB-F', 'MANAGEMENT OF INTNL OPERATIONS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006671', '508', 'BUSB-F', 'MANAGEMENT OF PROMOTION', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006672', '509', 'BUSB-F', 'BUYER BEHAVIOR', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006677', '514', 'BUSB-F', 'INVESTMENT MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006678', '515', 'BUSB-F', 'MARKETING RESEARCH', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006680', '520', 'BUSB-F', 'SEMINAR IN BUSINESS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006682', '523', 'BUSB-F', 'MANAGRL DECISION MAKNG MODELS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006684', '530', 'BUSB-F', 'INTERNATIONAL FINANCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006686', '533', 'BUSB-F', 'COMMUNICATION SKILLS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006687', '538', 'BUSB-F', 'LEADERSHIP', 'BUSE', 'BUSE', 'SB', 0, 3, ''),
('006688', '542', 'BUSB-F', 'STRATEGIC FINANCIAL MANAGEMENT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006689', '583', 'BUSB-F', 'TOPICS IN ECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006690', '590', 'BUSB-F', 'INDEPENDENT STUDY', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('006693', '501', 'BUSB-K', 'COMPUTER SKILLS FOR MANAGEMENT', 'BUSE', 'BUSE', 'SB', 1, 1, ''),
('006697', '505', 'BUSB-K', 'MGMT OF INFO TECH PROJECTS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006698', '506', 'BUSB-K', 'WEB SITE DEV TECHNIQUES', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006699', '507', 'BUSB-K', 'ENTERPRISE RESOURCE PLANNING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006700', '510', 'BUSB-K', 'DECISION SUPPORT SYSTEMS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006701', '515', 'BUSB-K', 'ELECTRONIC COMMERCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006702', '520', 'BUSB-K', 'BUS PROC RE-ENG THRGH INFO TEC', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('006703', '585', 'BUSB-K', 'SEMINAR IN MGMT OF INFO TECH I', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('007669', '11000', 'CGT', 'TECHNICAL GRAPH COMMUNICATION', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007673', '116', 'CGT', 'GEOM MODELING VISUAL/COMMUN', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007675', '120', 'CGT', 'ELECTRICAL & ELECTRNC DRAFTING', 'SWT', 'SWT', 'SB', 2, 2, ''),
('007676', '141', 'CGT', 'INTERNET FOUNDATNS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007687', '216', 'CGT', 'VECTOR IMAGING CMPTR GRAPHICS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007698', '256', 'CGT', 'HUM COMP INTERFACE THRY & DES', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007722', '351', 'CGT', 'MULTIMEDIA AUTHORING I', 'SWT', 'SWT', 'SB', 3, 3, ''),
('007999', '99', 'CHEM-C', 'FUNDAMENTALS OF CHEMISTRY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008000', '100', 'CHEM-C', 'THE WORLD OF CHEMISTRY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008001', '101', 'CHEM-C', 'ELEMENTARY CHEMISTRY 1', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008002', '102', 'CHEM-C', 'ELEMENTARY CHEMISTRY 2', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008005', '105', 'CHEM-C', 'PRINCIPLES OF CHEMISTRY I', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008006', '106', 'CHEM-C', 'PRINCIPLES OF CHEMISTRY II', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008019', '120', 'CHEM-C', 'CHEMISTRY LABORATORY', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008020', '121', 'CHEM-C', 'ELEMENTARY CHEMISTRY LAB 1', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008022', '125', 'CHEM-C', 'EXPERIMENTAL CHEMISTRY I', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008023', '126', 'CHEM-C', 'EXPERIMENTAL CHEMISTRY II', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008028', '208', 'CHEM-C', 'PROBLEMS AND REPORTS', 'CHEM', 'LAS', 'SB', 1, 1, ''),
('008032', '213', 'CHEM-C', 'CLINICAL CHEMISTRY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008044', '301', 'CHEM-C', 'CHEMISTRY SEMINAR 1', 'CHEM', 'LAS', 'SB', 1, 1, ''),
('008047', '304', 'CHEM-C', 'ENVIRONMENTAL CHEM OF WATER', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008051', '310', 'CHEM-C', 'ANALYTICAL CHEMISTRY', 'CHEM', 'LAS', 'SB', 4, 4, ''),
('008060', '319', 'CHEM-C', 'CHEM EQUILIBRIA & SEPARATIONS', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008061', '320', 'CHEM-C', 'ELECTROCHEM/SPECTROCHEM ANALYS', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008066', '335', 'CHEM-C', 'INORGANIC CHEMISTRY LABORATORY', 'CHEM', 'LAS', 'SB', 1, 1, ''),
('008067', '341', 'CHEM-C', 'ORGANIC CHEMISTRY LECTURES 1', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008068', '342', 'CHEM-C', 'ORGANIC CHEMISTRY LECTURES 2', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008069', '343', 'CHEM-C', 'ORGANIC CHEMISTRY LABORATORY I', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008070', '344', 'CHEM-C', 'ORGANIC CHEMISTRY LABORATORY 2', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008072', '361', 'CHEM-C', 'PHYSICAL CHEM OF BULK MATTER', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008073', '362', 'CHEM-C', 'PHYSICAL CHEM OF MOLECULES', 'CHEM', 'LAS', 'SB', 4, 4, ''),
('008078', '390', 'CHEM-C', 'SPECIAL TOPICS', 'CHEM', 'LAS', 'SB', 1, 5, ''),
('008088', '409', 'CHEM-C', 'CHEMICAL RESEARCH', 'CHEM', 'LAS', 'SB', 1, 5, ''),
('008089', '410', 'CHEM-C', 'PRIN OF CHEM INSTRUMENTATION', 'CHEM', 'LAS', 'SB', 4, 4, ''),
('008092', '430', 'CHEM-C', 'INORGANIC CHEMISTRY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008107', '470', 'CHEM-C', 'POLYMER CHEMISTRY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008113', '484', 'CHEM-C', 'BIOMOLECULES AND CATABOLISM', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008114', '485', 'CHEM-C', 'BIOSYNTHESIS AND PHYSIOLOGY', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('008115', '486', 'CHEM-C', 'BIOL CHEMISTRY LABORATORY', 'CHEM', 'LAS', 'SB', 2, 2, ''),
('008245', '100', 'CHEM-T', 'CHEM FOR ELEMENTARY TEACHERS', 'CHEM', 'LAS', 'SB', 4, 4, ''),
('008246', '105', 'CHEM-T', 'PHYSICAL SCI FOR ELEM TCHS', 'CHEM', 'LAS', 'SB', 5, 5, ''),
('008247', '398', 'CHEM-Y', 'PROF PRACTICE IN CHEMISTRY', 'CHEM', 'LAS', 'SB', 1, 3, ''),
('008747', '300', 'CJUS-K', 'TECHNIQUES OF DATA ANALYSIS', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008748', '100', 'CJUS-P', 'INTRO TO CRIMINAL JUSTICE', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008749', '200', 'CJUS-P', 'THEORIES OF CRIME AND DEVIANCE', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008751', '290', 'CJUS-P', 'THE NATURE OF INQUIRY', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008753', '300', 'CJUS-P', 'TOPICS IN CRIMINAL JUSTICE', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008754', '301', 'CJUS-P', 'POLICE IN CONTEMPORARY SOCIETY', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008755', '302', 'CJUS-P', 'COURTS AND CRIMINAL JUSTICE', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008756', '303', 'CJUS-P', 'CORRECTIONS & CRIMINAL JUSTICE', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008766', '370', 'CJUS-P', 'CRIMINAL LAW', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('008799', '481', 'CJUS-P', 'FIELD EXPERIENCE IN CRIM JUS', 'CJUS', 'LAS', 'SB', 1, 6, ''),
('008802', '495', 'CJUS-P', 'INDIVIDUAL READINGS', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('009477', '190', 'CMLT-C', 'AN INTRODUCTION TO FILM', 'ENG', 'LAS', 'SB', 3, 3, ''),
('009488', '253', 'CMLT-C', 'Third World and Black American Films', 'ENG', 'LAS', 'SB', 3, 3, ''),
('009497', '290', 'CMLT-C', 'SURVEY OF FILM HISTORY', 'ENG', 'LAS', 'SB', 3, 3, ''),
('009503', '310', 'CMLT-C', 'FILM AND LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('009517', '347', 'CMLT-C', 'LITERATURE AND IDEAS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('009653', '603', 'CMLT-C', 'TOPICS IN COMP LIT STUDIES', 'ENG', 'LAS', 'SB', 4, 4, ''),
('010081', '161', 'COAS-Q', 'LIBRARY SKILLS AND RESOURCES', 'COAS', 'LAS', 'SB', 1, 1, ''),
('010087', '400', 'COAS-Q', 'JOB SRCH STRAT LIB ARTS STDNTS', 'COAS', 'LAS', 'SB', 1, 1, ''),
('010112', '200', 'COAS-S', 'WORKSHOP IN SPECIAL TOPICS', 'COAS', 'LAS', 'SB', 1, 1, ''),
('010682', '136', 'CPT', 'PERSONAL COMPUTG TECH & APPLS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010685', '141', 'CPT', 'INTERNET FOUNDATNS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010690', '155', 'CPT', 'FILE ORGANIZATIONS & PROCSSNG', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010693', '172', 'CPT', 'INTRO TO APPLICATION DEV', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010694', '175', 'CPT', 'VISUAL PROGRAMMING', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010695', '176', 'CPT', 'INFORMATION TECH ARCHITECTURES', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010697', '180', 'CPT', 'INTRO TO SYSTEMS DEVELOPMENT', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010724', '230', 'CPT', 'DATA COMMUNICATION', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010735', '255', 'CPT', 'PROGRAMMING FOR THE INTERNET', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010743', '272', 'CPT', 'DATABASE FUNDAMENTALS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010745', '276', 'CPT', 'OPERATING SYSTEMS CONCEPTS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('010746', '280', 'CPT', 'SYSTEMS ANALYSIS & DESIGN METH', 'SWT', 'SWT', 'SB', 3, 3, ''),
('011126', '106', 'CSCI-A', 'INTRODUCTION TO COMPUTING', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011127', '107', 'CSCI-A', 'ADVANCED MICROCOMPUTING', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011136', '150', 'CSCI-A', 'INTRO TO OPERATING SYSTEMS', 'CSCI', 'LAS', 'SB', 1, 1, ''),
('011139', '201', 'CSCI-A', 'INTRODUCTION TO PROGRAMMING I', 'CSCI', 'LAS', 'SB', 3, 4, ''),
('011145', '290', 'CSCI-A', 'ADVENTURES IN COMPUTING', 'CSCI', 'LAS', 'SB', 1, 1, ''),
('011151', '340', 'CSCI-A', 'AN INTRO TO WEB PROGRAMMING', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011157', '504', 'CSCI-A', 'INTRODUCTORY C++ PROGRAMMING', 'CSCI', 'LAS', 'SB', 2, 2, ''),
('011158', '505', 'CSCI-A', 'OBJECT ORIENTED PROGRAMMING (VB.NET)', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011159', '506', 'CSCI-A', 'OBJECT-ORIENTED PROGRMG C++', 'CSCI', 'LAS', 'SB', 2, 2, ''),
('011160', '510', 'CSCI-A', 'DATABASE MANAGEMENT SYSTEMS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011161', '515', 'CSCI-A', 'TELECOMM & COMPUTER NETWORKING', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011168', '593', 'CSCI-A', 'COMPUTER STRUCTURES', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011169', '594', 'CSCI-A', 'DATA STRUCTURES', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011178', '424', 'CSCI-B', 'PARALLEL/DISTRIBUTED PROGRAMNG', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011179', '438', 'CSCI-B', 'FUNDMNTLS OF COMPUTER NETWRKS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011189', '503', 'CSCI-B', 'ALGORITHMS DESIGN AND ANALYSIS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011193', '524', 'CSCI-B', 'PARALLELISM IN PROG LANG & SYS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011195', '538', 'CSCI-B', 'NETWORKS & DISTRIBUTED COMPUTG', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011196', '541', 'CSCI-B', 'HARDWARE SYSTEM DESIGN I', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011198', '551', 'CSCI-B', 'ELEM ARTIFICIAL INTELLIGENCE', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011200', '553', 'CSCI-B', 'BIOMORPHIC COMPUTATION', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011201', '561', 'CSCI-B', 'ADVANCED DATABASE CONCEPTS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011203', '581', 'CSCI-B', 'ADVANCED COMPUTER GRAPHICS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011204', '582', 'CSCI-B', 'IMAGE SYNTHESIS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011217', '657', 'CSCI-B', 'COMPUTER VISION', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011225', '689', 'CSCI-B', 'TOPICS IN GRAPHICS AND HCI', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011227', '101', 'CSCI-C', 'COMPUTER PROGRAMMING I', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011231', '151', 'CSCI-C', 'MULTIUSER OPERATING SYSTEMS', 'CSCI', 'LAS', 'SB', 2, 2, ''),
('011234', '201', 'CSCI-C', 'COMPUTER PROGRAMMING II', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011246', '243', 'CSCI-C', 'INTRO TO DATA STRUCTURES', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011248', '251', 'CSCI-C', 'FOUNDATIONS OF DIGITAL COMPUTG', 'CSCI', 'LAS', 'SB', 3, 4, ''),
('011260', '308', 'CSCI-C', 'SYSTEM ANALYSIS AND DESIGN', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011262', '311', 'CSCI-C', 'PROGRAMMING LANGUAGES', 'CSCI', 'LAS', 'SB', 3, 4, ''),
('011266', '335', 'CSCI-C', 'COMPUTER STRUCTURES', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011278', '421', 'CSCI-C', 'DIGITAL DESIGN', 'CSCI', 'LAS', 'SB', 3, 4, ''),
('011283', '435', 'CSCI-C', 'OPERATING SYSTEMS 1', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('011285', '441', 'CSCI-C', 'INFOR ORGANIZATION & RETRIEVAL', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011286', '442', 'CSCI-C', 'DATABASE SYSTEMS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011291', '455', 'CSCI-C', 'ANALYSIS OF ALGORITHMS I', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011293', '463', 'CSCI-C', 'ARTIFICIAL INTELLIGENCE I', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011295', '481', 'CSCI-C', 'INTERACTIVE COMPUTER GRAPHICS', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011297', '490', 'CSCI-C', 'SEMINAR IN COMPUTER SCIENCE', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011340', '690', 'CSCI-C', 'SPECIAL TOPICS IN COMPUTING', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011392', '565', 'CSCI-P', 'SOFTWARE ENGINEERING I', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('011408', '398', 'CSCI-Y', 'INTRNSHP IN PROFESSIONAL PRAC', 'CSCI', 'LAS', 'SB', 1, 3, ''),
('011412', '790', 'CSCI-Y', 'GRADUATE INDEPENDENT STUDY', 'CSCI', 'LAS', 'SB', 1, 6, ''),
('011416', '798', 'CSCI-Y', 'PROFSNL PRACTICUM/INTERNSHP', 'CSCI', 'LAS', 'SB', 0, 0, ''),
('011469', '351', 'DAE-E', 'ADV DENT MATLS TECH FOR AUXIL', 'DENT', 'DENT', 'SB', 2, 2, ''),
('011474', '111', 'DAST-A', 'ORAL PATH', 'DENT', 'DENT', 'SB', 0, 0, ''),
('011476', '112', 'DAST-A', 'DENTAL & MED EMERG & THERAPEUT', 'DENT', 'DENT', 'SB', 2, 2, ''),
('011477', '113', 'DAST-A', 'ORAL PATH', 'DENT', 'DENT', 'SB', 0, 0, ''),
('011478', '114', 'DAST-A', 'ORAL ANATOMY', 'DENT', 'DENT', 'SB', 0, 2, ''),
('011483', '131', 'DAST-A', 'DENTAL MATERIALS LECTURE I', 'DENT', 'DENT', 'SB', 3, 3, ''),
('011484', '132', 'DAST-A', 'DENTAL MATERIALS LECTURE II', 'DENT', 'DENT', 'SB', 2, 2, ''),
('011487', '141', 'DAST-A', 'PREVENTIVE DENTISTRY', 'DENT', 'DENT', 'SB', 2, 2, ''),
('011491', '161', 'DAST-A', 'BEHAVIORAL SCIENCE', 'DENT', 'DENT', 'SB', 1, 1, ''),
('011492', '162', 'DAST-A', 'WRITTEN & ORAL COMMUNICATION', 'DENT', 'DENT', 'SB', 1, 1, ''),
('011493', '171', 'DAST-A', 'CLINICAL SCIENCE I', 'DENT', 'DENT', 'SB', 5, 5, ''),
('011494', '172', 'DAST-A', 'CLINICAL SCIENCE II', 'DENT', 'DENT', 'SB', 5, 5, ''),
('011495', '182', 'DAST-A', 'PRACT MGM', 'DENT', 'DENT', 'SB', 0, 3, ''),
('011497', '300', 'DAST-A', 'SPECIAL TOPICS IN DENTAL ED', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012073', '205', 'DHYG-H', 'MEDICAL & DENTAL EMERGENCIES', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012079', '211', 'DHYG-H', 'HEAD & NECK ANATOMY', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012081', '213', 'DHYG-H', 'HUMAN BIOLOGY 2-FIRST YEAR', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012082', '214', 'DHYG-H', 'ORAL ANAT HISTLGY & EMBRYOLOGY', 'DENT', 'DENT', 'SB', 3, 3, ''),
('012083', '215', 'DHYG-H', 'PHARMACOL/THERAPEUTICS-1ST YR', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012085', '217', 'DHYG-H', 'PREVENTIVE DENTISTRY-SECOND YR', 'DENT', 'DENT', 'SB', 1, 2, ''),
('012086', '218', 'DHYG-H', 'FUNDMNTLS OF DENTAL HYGIENE', 'DENT', 'DENT', 'SB', 6, 6, ''),
('012087', '219', 'DHYG-H', 'CLINICAL PRACTICE 1', 'DENT', 'DENT', 'SB', NULL, NULL, ''),
('012089', '221', 'DHYG-H', 'CLIN DENTAL HYGN PROCEDURES', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012092', '242', 'DHYG-H', 'INTRODUCTION TO DENTISTRY', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012095', '301', 'DHYG-H', 'CLINICAL PRACTICE 2', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012096', '302', 'DHYG-H', 'CLINICAL PRACTICE 3', 'DENT', 'DENT', 'SB', NULL, NULL, ''),
('012097', '303', 'DHYG-H', 'RADIOLOGY-SECOND YEAR', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012098', '304', 'DHYG-H', 'ORAL PATHOLOGY-2ND YEAR', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012099', '305', 'DHYG-H', 'RADIOLOGY CLINIC', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012100', '306', 'DHYG-H', 'RADIOLOGY CLINIC II', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012101', '307', 'DHYG-H', 'RADIOLOGY CLINIC III', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012102', '308', 'DHYG-H', 'DENTAL MATERIALS', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012103', '309', 'DHYG-H', 'PRACT OF COMM DENT HYG-2ND YR', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012107', '320', 'DHYG-H', 'PRAC MGMT ETH & JURISPRUDENCE', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012108', '321', 'DHYG-H', 'PERIODONTICS', 'DENT', 'DENT', 'SB', 2, 2, ''),
('012109', '344', 'DHYG-H', 'SENIOR HYGIENE SEMINAR', 'DENT', 'DENT', 'SB', 1, 1, ''),
('012110', '347', 'DHYG-H', 'COMMUNITY DENTAL HEALTH', 'DENT', 'DENT', 'SB', 3, 3, ''),
('012597', '101', 'EALC-C', 'ELEMENTARY CHINESE 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012598', '102', 'EALC-C', 'ELEMENTARY CHINESE 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012738', '271', 'EALC-E', '20TH CENTURY JAPANESE CULTURE', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012812', '101', 'EALC-J', 'ELEMENTARY JAPANESE 1', 'WLAN', 'LAS', 'SB', 4, 4, ''),
('012813', '102', 'EALC-J', 'ELEMENTARY JAPANESE 2', 'WLAN', 'LAS', 'SB', 4, 4, ''),
('012822', '201', 'EALC-J', 'SECOND YEAR JAPANESE 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012823', '202', 'EALC-J', 'SECOND YEAR JAPANESE 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012830', '301', 'EALC-J', 'THIRD YEAR JAPANESE 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012831', '302', 'EALC-J', 'THIRD YEAR JAPANESE 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012834', '310', 'EALC-J', 'JAPANESE CONVERSATION', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012840', '401', 'EALC-J', 'FOURTH-YEAR JAPANESE I', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('012842', '402', 'EALC-J', 'FOURTH-YEAR JAPANESE II', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('013211', '157', 'ECET', 'ELECTRONICS CIRCUIT ANALYSIS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013212', '159', 'ECET', 'DIGITAL APPLICATIONS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013216', '20700', 'ECET', 'AC ELECTRONCS CIRCUIT ANALYSIS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013217', '20900', 'ECET', 'INTRO TO MICROCONTROLLERS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013220', '21400', 'ECET', 'ELECTRICITY FUNDAMENTALS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('013222', '231', 'ECET', 'ELECTRICAL POWER & CONTROLS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013225', '257', 'ECET', 'POWER & RF ELECTRONICS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013229', '291', 'ECET', 'INDUSTRIAL PRACTICE I', 'SWT', 'SWT', 'SB', NULL, 5, ''),
('013230', '292', 'ECET', 'INDUSTRIAL PRACTICE II', 'SWT', 'SWT', 'SB', NULL, 5, ''),
('013234', '29900', 'ECET', 'SEL ELEC ENGR TECH SUBJECTS', 'SWT', 'SWT', 'SB', 1, 1, ''),
('013236', '30400', 'ECET', 'INTRO TO COMMUNICATNS SYSTEMS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013237', '30700', 'ECET', 'ANALOG NETWRK SIGNAL PROCESSNG', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013239', '30900', 'ECET', 'ADV EMBEDDED MICROCONTROLLERS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013252', '359', 'ECET', 'PC INTERFACING & APPLICATNS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013256', '368', 'ECET', 'LINEAR INTEGRATED CIRCUITS', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013263', '393', 'ECET', 'INDUSTRIAL PRACTICE III', 'SWT', 'SWT', 'SB', NULL, 5, ''),
('013264', '394', 'ECET', 'INDUSTRIAL PRACTICE IV', 'SWT', 'SWT', 'SB', NULL, 5, ''),
('013265', '395', 'ECET', 'INDUSTRIAL PRACTICE V', 'SWT', 'SWT', 'SB', NULL, 5, ''),
('013266', '396', 'ECET', 'PROJECT DEVELOPMENT & MGMT', 'SWT', 'SWT', 'SB', 4, 4, ''),
('013282', '38000', 'ECET', 'PROFESSIONAL ISSUES IN EET', 'SWT', 'SWT', 'SB', 1, 1, ''),
('013289', '49600', 'ECET', 'PROJECT DESIGN & DEV; PHASE I', 'SWT', 'SWT', 'SB', 1, 1, ''),
('013290', '497', 'ECET', 'PROJECT DESIGN & DEV', 'SWT', 'SWT', 'SB', NULL, 2, ''),
('013436', '103', 'ECON-E', 'INTRO TO MICROECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013437', '104', 'ECON-E', 'INTRO TO MACROECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013455', '270', 'ECON-E', 'INTRO TO STAT THRY ECON & BUS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013463', '304', 'ECON-E', 'SURVEY OF LABOR ECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013464', '305', 'ECON-E', 'MONEY AND BANKING', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013467', '308', 'ECON-E', 'SURVEY OF PUBLIC FINANCE', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013471', '315', 'ECON-E', 'COLLECTV BARGAIN-PRACT & PROB', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013474', '321', 'ECON-E', 'INTERMEDIATE MICROECON THEORY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013475', '322', 'ECON-E', 'INTERMEDIATE MACROECON THEORY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013513', '391', 'ECON-E', 'UNDERGRAD RDGS IN ECONOMICS', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('013557', '470', 'ECON-E', 'INTRO TO ECONOMETRICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013568', '490', 'ECON-E', 'ADV UNDERGRAD SEM IN ECONOMICS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013727', '103', 'ECON-S', 'INTRO TO MICROECONOMICS-HONORS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('013728', '104', 'ECON-S', 'INTRO TO MACROECONOMICS-HONORS', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('014119', '598', 'EDUA-G', 'COMPREHENSIVE EXAM IN COUNSLNG', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('014120', '599', 'EDUA-G', 'SPECIALIZATION PROJ COUNSELING', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('014294', '497', 'EDUC', 'CANDIDATE DEGREE-IU-SUMMER I', 'EDUC', 'EDUC', 'SB', 0, 0, ''),
('014377', '581', 'EDUC', 'MEDIA FOR YOUNG ADULTS-PURDUE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014481', '500', 'EDUC-A', 'INTRO TO EDUCATIONAL LDRSHP', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014482', '502', 'EDUC-A', 'COMM & INTERPERSONAL RELATIONS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014483', '504', 'EDUC-A', 'KNOWLEDGE OF TCHNG & LEARNING', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('014484', '506', 'EDUC-A', 'PORTFOLIO ASSESSMENT', 'EDUC', 'EDUC', 'SB', 0, 0, ''),
('014486', '510', 'EDUC-A', 'SCHOOL COMMUNITY RELATIONS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014492', '590', 'EDUC-A', 'IND STUDY IN EDUC LEADERSHIP', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014497', '608', 'EDUC-A', 'LEGAL PERSPECTVS ON EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014502', '625', 'EDUC-A', 'ADMIN OF ELEMENTARY SCHOOLS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014504', '627', 'EDUC-A', 'SECONDARY SCHOOL ADMIN', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('014506', '630', 'EDUC-A', 'ECONOMIC DIMEN OF EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014568', '500', 'EDUC-C', 'PRO-SEMINAR I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014569', '501', 'EDUC-C', 'PEDAGOGY I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014570', '502', 'EDUC-C', 'PEDAGOGY II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014571', '503', 'EDUC-C', 'EDUCATION IN THE SOVIET UNION', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014572', '503', 'EDUC-C', 'REFLECTIVE SEMINAR I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014573', '504', 'EDUC-C', 'EDUCATION IN EASTERN EUROPE', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014574', '504', 'EDUC-C', 'PRO-SEMINAR II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014575', '505', 'EDUC-C', 'EDUCATION IN SOUTHEAST ASIA', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014576', '505', 'EDUC-C', 'PEDAG 3:INTEGRAT CLASSRM STDS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014577', '506', 'EDUC-C', 'PEDAG IV: INTEGRATED CLRM STDS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014578', '507', 'EDUC-C', 'REFLECTIVE SEMINAR II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014579', '508', 'EDUC-C', 'PRO-SEMINAR IIII', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014580', '509', 'EDUC-C', 'CAPSTONE STUDIES I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014581', '510', 'EDUC-C', 'CAPSTONE STUDIES II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014582', '511', 'EDUC-C', 'CAPSTONE SEMINAR', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014652', '201', 'EDUC-E', 'MULTICULT EDUC/GLOBAL AWARENS', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('014665', '317', 'EDUC-E', 'PRACTICUM EARLY CHILDHOOD EDUC', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('014671', '325', 'EDUC-E', 'SOC STDS IN THE ELEM SCHOOLS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014673', '327', 'EDUC-E', 'SOC ST MTHDS/FAM:FOC YNG CHLDN', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014674', '328', 'EDUC-E', 'SCIENCE IN THE ELEMENTARY SCHL', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014675', '330', 'EDUC-E', 'INFANT LEARNING ENVIRONMENTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014678', '333', 'EDUC-E', 'INQUIRY IN MATH & SCIENCE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014681', '335', 'EDUC-E', 'INTRO TO EARLY CHILDHOOD ED', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014685', '337', 'EDUC-E', 'CLASSRM LEARNING ENVIRONMENTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014688', '339', 'EDUC-E', 'METHODS OF TEACH LANG ARTS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014690', '340', 'EDUC-E', 'METHODS OF TEACHING READING I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014692', '341', 'EDUC-E', 'METHODS OF TEACHING READING II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014694', '343', 'EDUC-E', 'MATH IN THE ELEM SCHOOLS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014695', '345', 'EDUC-E', 'LANG & MATH ARTS FOR YNG CHILD', 'EDUC', 'EDUC', 'SB', 4, 6, ''),
('014705', '370', 'EDUC-E', 'LANGUAGE ARTS & READING I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014706', '375', 'EDUC-E', 'BAS METH LANG ARTS&MATH EL SCH', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('014715', '449', 'EDUC-E', 'TRADE BOOKS & CLASSRM TEACHER', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014720', '485', 'EDUC-E', 'PRIN OF ELEM EDUC', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014722', '490', 'EDUC-E', 'RESEARCH IN ELEMENTARY EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014724', '495', 'EDUC-E', 'WKSHP IN ELEMENTARY EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014727', '505', 'EDUC-E', 'ORG&ADM OF EARLY CHOOD PROG', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014728', '506', 'EDUC-E', 'CURRICULUM IN EARLY CHILDHOOD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014729', '507', 'EDUC-E', 'EVALUATION OF CLASSROOM BEHAVR', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014730', '508', 'EDUC-E', 'SEMINAR IN EARLY CHILDHOOD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014731', '509', 'EDUC-E', 'INTERNSHIP IN EARLY CHILDHOOD', 'EDUC', 'EDUC', 'SB', 1, 6, ''),
('014738', '518', 'EDUC-E', 'WORKSHOP IN GENERAL ELEM EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014741', '524', 'EDUC-E', 'WKSHP IN EARLY CHILDHOOD EDUC', 'EDUC', 'EDUC', 'SB', 1, 6, ''),
('014747', '535', 'EDUC-E', 'ELEMENTARY SCHOOL CURRICULUM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014753', '543', 'EDUC-E', 'ADV STUDY TCH OF MATH ELEM SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014754', '545', 'EDUC-E', 'ADV ST TEACH READING ELEM SCH', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('014756', '547', 'EDUC-E', 'ADV ST TCH SOC ST IN ELEM SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014758', '549', 'EDUC-E', 'ADV STDY TCH LNG ARTS ELEM SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014759', '550', 'EDUC-E', 'DYNAMICS&EVAL TCH EFFECTVNS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014788', '590', 'EDUC-E', 'IND STUDY OR RES IN ELEM EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014789', '591', 'EDUC-E', 'RESEARCH PROJECT IN ELEM EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014803', '699', 'EDUC-E', 'SPECIALISTS RES IN ELEM EDUC', 'EDUC', 'EDUC', 'SB', 5, 5, ''),
('014811', '100', 'EDUC-F', 'INTRODUCTION TO TEACHING', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('014813', '200', 'EDUC-F', 'EXAMINING SELF AS TEACHER', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014814', '201', 'EDUC-F', 'EXP PERS DEMNDS OF TCH:LAB EXP', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('014815', '202', 'EDUC-F', 'EXPL PERS DMNDS OF TCH: FLD EX', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('014816', '203', 'EDUC-F', 'TOP EXPLORATION IN EDUCATION', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('014823', '350', 'EDUC-F', 'DEPARTMENTAL HONORS', 'EDUC', 'EDUC', 'SB', 0, 0, ''),
('014825', '401', 'EDUC-F', 'TOPICAL EXPLORATIONS IN EDUC', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('014862', '500', 'EDUC-G', 'ORIENTATION TO COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014863', '501', 'EDUC-G', 'COUNSELING GROUP LABORATORY', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014868', '505', 'EDUC-G', 'INDIV APPRAIS: PRIN & PROC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014869', '506', 'EDUC-G', 'PERS DEV:GROW/NRM/DEVIANT STYL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014870', '507', 'EDUC-G', 'LIFESTYLE & CAREER DEVELOP', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014871', '522', 'EDUC-G', 'COUNSELING TECHNIQUES', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014873', '524', 'EDUC-G', 'PRACTICUM IN COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014874', '525', 'EDUC-G', 'ADVANCED COUNSELING PRACTICUM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014875', '532', 'EDUC-G', 'INTRO TO GROUP COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014878', '540', 'EDUC-G', 'PERSONALITY THEORY & COUNSLNG', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014881', '542', 'EDUC-G', 'ORG & DEVEL OF COUNSLNG PRGMS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014889', '550', 'EDUC-G', 'INTERNSHIP IN COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014892', '560', 'EDUC-G', 'SOC/CULT FOUNDATNS IN COUNSEL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014894', '562', 'EDUC-G', 'SCHOOL COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014895', '563', 'EDUC-G', 'INTRO TO COMM COUNSEL/CONSULT', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014896', '565', 'EDUC-G', 'EVALUATN OF HUM SERV PROGRAMS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014897', '567', 'EDUC-G', 'MARRIAGE & FAMILY COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014902', '575', 'EDUC-G', 'MULTICULTURAL COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014906', '585', 'EDUC-G', 'CONTEMP ISSUES IN COUNSELING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014907', '590', 'EDUC-G', 'RESEARCH IN COUNSELING & GUID', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014908', '592', 'EDUC-G', 'SEM IN DRUG/ALCOHOL ABUSE PREV', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014909', '595', 'EDUC-G', 'WORKSHOP-COUNSELING & GUIDANCE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014949', '340', 'EDUC-H', 'EDUCATION & AMERICAN CULTURE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('014966', '520', 'EDUC-H', 'EDUCATION AND SOCIAL ISSUES', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015018', '511', 'EDUC-J', 'METHODS OF INDIV INSTRUCTION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015060', '200', 'EDUC-K', 'INTRO PRACT IN SPEC EDUC', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('015062', '205', 'EDUC-K', 'INTRO TO EXCEPTIONAL CHILDREN', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015066', '301', 'EDUC-K', 'INST MODELING FOR EXCEPT INDIV', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015067', '302', 'EDUC-K', 'PRACTICUM IN INST MODELING', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015068', '305', 'EDUC-K', 'TCHG EXCEPTNL LEARNER-ELEM SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015069', '306', 'EDUC-K', 'TCHNG STDS SP NEEDS SEC CL RMS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015076', '345', 'EDUC-K', 'ACAD/BEH ASSMT MILD HAND CHLD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015078', '351', 'EDUC-K', 'VOC ASSESS & INSTR SPE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015080', '352', 'EDUC-K', 'EDUC STUDENTS LRNG DISORDERS', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('015081', '360', 'EDUC-K', 'BEHAV CHAR OF MENT RETARDED', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015083', '362', 'EDUC-K', 'TEAM APPRCHS ED-STDNT/DISABIL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015085', '370', 'EDUC-K', 'INTRO TO LEARNING DISORDERS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015091', '400', 'EDUC-K', 'COMPTRS STUDENTS WITH DISABIL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015092', '401', 'EDUC-K', 'INST TECH & MAT EDUC MENT RET', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('015093', '402', 'EDUC-K', 'INT IN INST TECH EDUC MENT RET', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015094', '403', 'EDUC-K', 'INST TECH FOR TRAIN MENT RET', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('015095', '404', 'EDUC-K', 'INT IN INST TECH-TRAIN MNT RET', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015103', '452', 'EDUC-K', 'CLASSROOM MANAGEMENT', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015109', '475', 'EDUC-K', 'MTHD SEM: CLASS MGMT SPEC ED', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015110', '480', 'EDUC-K', 'STUDENT TEACH IN SPEC EDUC', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('015117', '490', 'EDUC-K', 'RESEARCH IN SPECIAL EDUCATION', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015119', '500', 'EDUC-K', 'TOPICAL WORKSHOP IN SPEC EDUC', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('015120', '501', 'EDUC-K', 'ADAPT COMPTRS FOR SPECIAL EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015122', '505', 'EDUC-K', 'INTROD SP ED FOR GRAD STUDENTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015131', '525', 'EDUC-K', 'SURVEY OF MILD HANDICAPS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015133', '531', 'EDUC-K', 'TCHNG SEVERELY HANDICAPPED I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015134', '532', 'EDUC-K', 'TCHNG SEVERELY HANDICAPPED II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015136', '534', 'EDUC-K', 'BEH MGT OF SEVERELY HANDICAPD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015138', '536', 'EDUC-K', 'ASSMT/REMED OF MLDLY HNDCP II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015142', '543', 'EDUC-K', 'ED SOC & EMOTNALLY DISTURBED 1', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015144', '545', 'EDUC-K', 'MGMT OF SEVERELY EMOT DISTURBD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015153', '553', 'EDUC-K', 'CLASSRM MGMT & BEHAVR SUPPORT', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015154', '555', 'EDUC-K', 'SEM OCC PLANNING FOR HANDICAPD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015162', '565', 'EDUC-K', 'COLLABORATN & SERVICE DELIVERY', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015166', '575', 'EDUC-K', 'PRACTM SEM-MGT INSTR OBJ SPEC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015168', '577', 'EDUC-K', 'SEM: INSTR EVAL IN SPEC EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015174', '588', 'EDUC-K', 'SUPERVISED TCHNG IN SPEC EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015175', '590', 'EDUC-K', 'IND ST OR RES IN SPECIAL EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015176', '595', 'EDUC-K', 'PRACTICUM IN SPECIAL EDUCATION', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015213', '430', 'EDUC-L', 'WKSHP: ENGL AS A SEC LANGUAGE', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('015215', '436', 'EDUC-L', 'MTHD & MTLS FOR TEACHING ESL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015222', '482', 'EDUC-L', 'STUDENT TEACHING-ESL', 'EDUC', 'EDUC', 'SB', 0, 6, ''),
('015238', '511', 'EDUC-L', 'TEACHING WRITING ELEM SCHOOLS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015240', '512', 'EDUC-L', 'ADV STDY TCH WRTNG IN SEC SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015259', '536', 'EDUC-L', 'METH & MATL TESOL TCHR-TRNRS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015268', '559', 'EDUC-L', 'TRADE BOOKS IN ELEM CLASSROOMS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015288', '101', 'EDUC-M', 'LABORATORY-FIELD EXPERIENCE', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('015290', '130', 'EDUC-M', 'INTRODUCTION TO ART TEACHING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015303', '301', 'EDUC-M', 'LABORATORY/FIELD EXPERIENCE', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015311', '311', 'EDUC-M', 'METH FOR KINDERGTN/ELEM TCHR', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015314', '314', 'EDUC-M', 'GEN METHODS-SH/JH/MS TEACHERS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015321', '324', 'EDUC-M', 'TEACHING ABOUT THE ARTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015323', '330', 'EDUC-M', 'FOUND ART EDUC & METHODS 1', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015325', '333', 'EDUC-M', 'ART EXPRNCE FOR THE ELEM TCH', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015327', '335', 'EDUC-M', 'METHOD & MAT MUSIC K-12', 'EDUC', 'EDUC', 'SB', 2, 3, ''),
('015350', '401', 'EDUC-M', 'LABORATORY/FIELD EXPERIENCE', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015365', '412', 'EDUC-M', 'TCH WRITING IN MID & SEC SCHLS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015368', '415', 'EDUC-M', 'METH OF TEACH JR/MS FOR LANG', 'EDUC', 'EDUC', 'SB', 2, 4, ''),
('015372', '420', 'EDUC-M', 'STUDENT TEACHING SEMINAR', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('015376', '425', 'EDUC-M', 'STUDENT TEACH: ELEMENTARY', 'EDUC', 'EDUC', 'SB', 10, 10, ''),
('015391', '441', 'EDUC-M', 'METH TCH SR/JR/MS SOC STUDIES', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015393', '443', 'EDUC-M', 'METH OF TCH H S SOCIAL STUDIES', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015394', '444', 'EDUC-M', 'METH OF TEACHING BUS SUBJECTS', 'EDUC', 'EDUC', 'SB', 3, 4, ''),
('015396', '445', 'EDUC-M', 'MTHD OF TCH FOREIGN LANG', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015398', '446', 'EDUC-M', 'METH OF TCH SH/JH/MS SCIENCE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015404', '451', 'EDUC-M', 'STDNT TEACHING: JR HIGH/MDL SC', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('015405', '452', 'EDUC-M', 'METH OF TCH SH/JH/MS ENGLISH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015413', '457', 'EDUC-M', 'METH OF TCH SH/JH/MS MATH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015420', '464', 'EDUC-M', 'METHODS OF TEACHING READING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015426', '470', 'EDUC-M', 'PRACTICUM', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('015436', '480', 'EDUC-M', 'STUDENT TCH IN THE SECNDRY SCH', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('015438', '482', 'EDUC-M', 'STUDENT TEACHING: ALL GRADES', 'EDUC', 'EDUC', 'SB', 10, 10, ''),
('015444', '500', 'EDUC-M', 'INTEGRATED PROFESSIONAL SEM', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015445', '501', 'EDUC-M', 'LABORATORY/FIELD EXPERIENCE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015459', '550', 'EDUC-M', 'PRACTICUM', 'EDUC', 'EDUC', 'SB', 3, 3, '');
INSERT INTO `course` (`CourseID`, `CourseNo`, `SubjectArea`, `CourseTitle`, `DeptID`, `CollegeID`, `CampusID`, `MinCredits`, `MaxCredits`, `CourseDescription`) VALUES
('015460', '560', 'EDUC-M', 'DYNAMICS & EVAL OF TEACH EFF', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015573', '250', 'EDUC-P', 'GENERAL EDUC PSYCHOLOGY', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015599', '407', 'EDUC-P', 'PSYCHOL MEASURMNT IN THE SCHS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015608', '475', 'EDUC-P', 'ADOLESCENT DEV & CLASSROOM MGT', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015613', '503', 'EDUC-P', 'INTRODUCTION TO RESEARCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015616', '506', 'EDUC-P', 'TOPIC WORKSHOP IN ED PSYCH', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('015617', '507', 'EDUC-P', 'ASSESSMENT IN SCHOOLS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015620', '510', 'EDUC-P', 'PSYCHOLOGY IN TEACHING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015625', '514', 'EDUC-P', 'LIFE SPAN DEVELPMT:BIRTH-DEATH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015626', '515', 'EDUC-P', 'BEHAVIOR&DVLP OF ELEM SCH CHLD', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015627', '516', 'EDUC-P', 'ADOLESCENT DEVELOPMENT', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015632', '519', 'EDUC-P', 'PSYCHO ED ASSESSMT EXCP CHLDRN', 'EDUC', 'EDUC', 'SB', 3, 4, ''),
('015633', '520', 'EDUC-P', 'EARLY ADOLESCENT BEH & DEV', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015653', '570', 'EDUC-P', 'MANAGING CLASSROOM BEHAVIOR', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015701', '200', 'EDUC-Q', 'INTRO TO SCIENTIFIC INQUIRY', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015733', '301', 'EDUC-R', 'AUDIOVISUAL PROD OF MATERIALS', 'EDUC', 'EDUC', 'SB', NULL, NULL, ''),
('015734', '302', 'EDUC-R', 'AUDIOVISUAL SELECTN OF MTLS', 'EDUC', 'EDUC', 'SB', 0, 2, ''),
('015735', '303', 'EDUC-R', 'AUDIOVISUAL-OPERATN OF EQUIPMT', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015749', '503', 'EDUC-R', 'INSTRUCTNAL MEDIA APPLICATIONS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015864', '460', 'EDUC-S', 'BOOKS FOR READING INST', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('015870', '487', 'EDUC-S', 'PRIN OF SR/JR/MID SCH EDUCATN', 'EDUC', 'EDUC', 'SB', 2, 3, ''),
('015871', '490', 'EDUC-S', 'RSRCH IN SECONDARY EDUCATION', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('015875', '503', 'EDUC-S', 'SECONDARY SCHOOL CURRICULUM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015877', '505', 'EDUC-S', 'THE JR HIGH & MIDDLE SCHOOL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015880', '508', 'EDUC-S', 'PROB IN SECONDARY EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015883', '512', 'EDUC-S', 'WKSHP IN SECONDARY EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015885', '514', 'EDUC-S', 'ADV ST TCH READ JR HI&SEC SCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015887', '516', 'EDUC-S', 'ADV STUDY TCH SEC SCH ENG ARTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015888', '517', 'EDUC-S', 'ADV STUDY TCH OF SEC SCHL MATH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015889', '518', 'EDUC-S', 'ADV STUDY TCH OF SEC SCH SCI', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015890', '519', 'EDUC-S', 'ADV STUDY TCH SEC SC SOC STDS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015891', '520', 'EDUC-S', 'ADV STUDY FOREIGN LANG TCH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015898', '530', 'EDUC-S', 'JR HIGH & MIDDLE SCH CURRIC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015909', '560', 'EDUC-S', 'DYNAMICS & EVAL OF TEACHER EFF', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015913', '590', 'EDUC-S', 'IND STUDY OR RES IN SECNDRY ED', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015914', '591', 'EDUC-S', 'RESEARCH PROJECT IN SEC EDUC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('015996', '100', 'EDUC-U', 'THRESHOLD SEM:CRAFT/CUL HI ED', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016073', '200', 'EDUC-W', 'USING COMPUTERS IN EDUCATION', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016085', '410', 'EDUC-W', 'PRACT IN COMPUTER-BASED EDUC', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('016118', '101', 'EDUC-X', 'TECHNIQUES IN TEXTBOOK READING', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016137', '400', 'EDUC-X', 'DIAG TCH READING IN CLASSROOM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016138', '401', 'EDUC-X', 'CRIT READING IN CONTENT AREA', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016139', '425', 'EDUC-X', 'PRACTICUM IN READING', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('016142', '470', 'EDUC-X', 'PSYCHOLING TEACHERS OF READ', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('016144', '501', 'EDUC-X', 'CRITICAL READ IN CONTENT AREAS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016145', '502', 'EDUC-X', 'PSYCHOLINGUSTICS TEACH READ', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016147', '504', 'EDUC-X', 'DIAG OF READ DIFF IN CLASSROOM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016155', '525', 'EDUC-X', 'PRACTICUM IN READING', 'EDUC', 'EDUC', 'SB', 1, 4, ''),
('016156', '530', 'EDUC-X', 'TOPICAL WORKSHOP IN READING', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('016177', '510', 'EDUC-Y', 'ACTION RESEARCH I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('016178', '511', 'EDUC-Y', 'ACTION RES II: INDPT STUDY', 'EDUC', 'EDUC', 'SB', 1, 3, ''),
('017169', '202', 'ENG-A', 'LIT INTERP-ADV COLLEGE PROJ', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017252', '600', 'ENG-D', 'HIST OF THE ENGLISH LANGUAGE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017259', '99', 'ENG-E', 'INDEPENDENT STUDY IN ENGLISH', 'ENG', 'LAS', 'SB', 1, 1, ''),
('017270', '301', 'ENG-E', 'LITERATURES IN ENGLISH TO 1600', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017271', '302', 'ENG-E', 'LITERATURES IN ENGLISH 1600-18', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017272', '303', 'ENG-E', 'LITERATURES IN ENG 1800-1900', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017273', '304', 'ENG-E', 'LITERATURES IN ENG 1900-PRES', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017286', '13', 'ENG-G', 'ACADEMIC WRITING GRAD STUDENTS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017288', '20', 'ENG-G', 'COMM SKLS GRAD STDNTS & ITA\'S', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017293', '203', 'ENG-G', 'ENGLISH GRAMMAR FOR TEACHERS', 'ENG', 'LAS', 'SB', 0, 0, ''),
('017295', '205', 'ENG-G', 'INTRO TO THE ENGLISH LANGUAGE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017298', '301', 'ENG-G', 'HIST OF THE ENGLISH LANGUAGE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017299', '302', 'ENG-G', 'STRUCTURE OF MODERN ENGLISH', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017316', '552', 'ENG-G', 'LING & THE TEACHER OF ENGLISH', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017352', '101', 'ENG-L', 'WESTERN WORLD MASTERPIECES I', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017353', '102', 'ENG-L', 'WESTERN WORLD MASTERPIECES II', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017370', '150', 'ENG-L', 'REPRESENTATIVE AMER WRITERS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017379', '202', 'ENG-L', 'LITERARY INTERPRETATION', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017384', '207', 'ENG-L', 'WOMEN AND LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017400', '222', 'ENG-L', 'INTRO TO LITERARY CRITICISM', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017415', '290', 'ENG-L', 'CHILDRENS LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017432', '314', 'ENG-L', 'LATE PLAYS OF SHAKESPEARE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017446', '328', 'ENG-L', 'RESTORATION & 18TH CENT DRAMA', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017447', '329', 'ENG-L', 'ROMANTIC LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017451', '333', 'ENG-L', 'VICTORIAN LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017464', '350', 'ENG-L', 'EARLY AMER WRTNG & CUL TO 1800', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017465', '351', 'ENG-L', 'AMERICAN LITERATURE 1800-1865', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017466', '352', 'ENG-L', 'AMERICAN LITERATURE 1865-1914', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017468', '354', 'ENG-L', 'AMERICAN LITERATURE SINCE 1914', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017472', '358', 'ENG-L', '20TH CENTURY AMERICAN FICTION', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017483', '369', 'ENG-L', 'STDS IN BRITISH & AMR AUTHORS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017484', '370', 'ENG-L', 'RECENT BLACK AMERICAN WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017491', '376', 'ENG-L', 'LITERATURE FOR ADOLESCENTS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017494', '379', 'ENG-L', 'AMERICAN ETHNIC & MINORITY LIT', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017497', '381', 'ENG-L', 'RECENT WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017504', '388', 'ENG-L', 'STUDIES IN IRISH LIT & CULTURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017506', '390', 'ENG-L', 'CHILDREN\'S LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017534', '450', 'ENG-L', 'SEMINAR: BRITISH & AM AUTHORS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017536', '460', 'ENG-L', 'SEMINAR: LIT FORM MODE & THEME', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017541', '495', 'ENG-L', 'INDIVIDUAL READING IN ENGLISH', 'ENG', 'LAS', 'SB', 1, 3, ''),
('017542', '496', 'ENG-L', 'FOREIGN STUDY IN ENGLISH', 'ENG', 'LAS', 'SB', 3, 8, ''),
('017546', '501', 'ENG-L', 'PROFSNL SCHOLARSHIP IN LIT', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017547', '502', 'ENG-L', 'CONTEXTS FOR STUDY OF WRITING', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017578', '553', 'ENG-L', 'STUDIES IN LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017596', '590', 'ENG-L', 'INTERNSHIP IN ENGLISH', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017601', '605', 'ENG-L', 'ASSUMPTNS & PRACT TEACH OF ENG', 'ENG', 'LAS', 'SB', 2, 2, ''),
('017608', '612', 'ENG-L', 'CHAUCER', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017618', '625', 'ENG-L', 'SHAKESPEARE', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017622', '631', 'ENG-L', 'ENGLISH LITERATURE 1660-1790', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017629', '647', 'ENG-L', 'STDS IN VICTORIAN LITERATURE', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017631', '650', 'ENG-L', 'STDS IN AMERICAN LIT TO 1900', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017633', '653', 'ENG-L', 'AMERICAN LITERATURE 1800-1900', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017637', '660', 'ENG-L', 'STDS IN BR & AM LIT 1900-PRES', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017646', '674', 'ENG-L', 'STUDIES IN INTL ENGLISH LIT', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017650', '680', 'ENG-L', 'SPECIAL TOPICS-LIT STDY & THRY', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017654', '695', 'ENG-L', 'INDIVIDUAL READINGS IN ENGLISH', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017660', '707', 'ENG-L', 'CRITICAL APPR-STUDY ENG AM LIT', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017736', '30', 'ENG-W', 'DEVELOPMENTAL ENGLISH', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017737', '31', 'ENG-W', 'PRE-COMPOSITION', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017738', '99', 'ENG-W', 'INDEPENDENT STUDY IN ENGLISH', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017759', '130', 'ENG-W', 'PRINCIPLES OF COMPOSITION', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017760', '131', 'ENG-W', 'ELEMENTARY COMPOSITION 1', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017764', '140', 'ENG-W', 'ELEMENTARY COMPOSITION-HONORS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017774', '203', 'ENG-W', 'CREATIVE WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017782', '231', 'ENG-W', 'PROFESSIONAL WRITING SKILLS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017783', '232', 'ENG-W', 'INTRO TO BUSINESS WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017784', '233', 'ENG-W', 'INTERMED EXPOSITORY WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017785', '234', 'ENG-W', 'TECH REPORT WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017788', '250', 'ENG-W', 'WRITING IN CONTEXT', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017790', '260', 'ENG-W', 'FILM CRITICISM', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017791', '261', 'ENG-W', 'REVIEWING FOR PUBLICATION', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017792', '270', 'ENG-W', 'ARGUMENTATIVE WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017796', '301', 'ENG-W', 'WRITING FICTION', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017797', '302', 'ENG-W', 'SCREENWRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017798', '303', 'ENG-W', 'WRITING POETRY', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017807', '315', 'ENG-W', 'WRITING FOR THE WEB', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017811', '350', 'ENG-W', 'ADVANCED EXPOSITORY WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017820', '395', 'ENG-W', 'INDIVIDUAL STUDY OF WRITING', 'ENG', 'LAS', 'SB', 1, 3, ''),
('017823', '398', 'ENG-W', 'INTERNSHIP IN WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017825', '401', 'ENG-W', 'ADVANCED FICTION WRITING', 'ENG', 'LAS', 'SB', 3, 3, ''),
('017851', '511', 'ENG-W', 'WRITING FICTION', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017852', '513', 'ENG-W', 'WRITING POETRY', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017856', '553', 'ENG-W', 'THEORY & PRACT OF EXPOSITION', 'ENG', 'LAS', 'SB', 1, 1, ''),
('017862', '609', 'ENG-W', 'DIRECTED WRITING PROJECTS', 'ENG', 'LAS', 'SB', 4, 4, ''),
('017868', '615', 'ENG-W', 'WRITING CREATIVE NONFICTION', 'ENG', 'LAS', 'SB', 4, 4, ''),
('019027', '100', 'FINA-A', 'AN INTRODUCTION TO ART', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019028', '101', 'FINA-A', 'ANCIENT AND MEDIEVAL ART', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019029', '102', 'FINA-A', 'RENAISSANCE THROUGH MODERN ART', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019063', '300', 'FINA-A', 'TOPICS IN ART HISTORY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019077', '320', 'FINA-A', 'ART OF THE MEDIEVAL WORLD', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019093', '341', 'FINA-A', '19TH CENTURY EUROPEAN ART', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('019095', '343', 'FINA-A', 'AMERICAN ART', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019174', '470', 'FINA-A', 'PROBLEMS IN ART HISTORY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019180', '477', 'FINA-A', 'HISTORY OF PHOTOGRAPHY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019184', '490', 'FINA-A', 'TOPICS IN ART HISTORY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019283', '100', 'FINA-F', 'FUNDAMENTAL STUDIO-DRAWING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019284', '101', 'FINA-F', 'FUNDAMENTAL STUDIO-3D', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019285', '102', 'FINA-F', 'FUNDAMENTAL STUDIO-2D', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019304', '100', 'FINA-H', 'ART APPRECIATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019462', '274', 'FINA-N', 'DIGITAL IMAGING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019502', '273', 'FINA-P', 'COMPUTER ART & DESIGN I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019526', '374', 'FINA-P', 'COMPUTER ART & DESIGN II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019546', '453', 'FINA-P', 'GRAPHIC DESIGN III', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019547', '454', 'FINA-P', 'GRAPHIC DESIGN IV', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019549', '461', 'FINA-P', 'GRAPHIC REPRODUCTION METHODS I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019551', '475', 'FINA-P', 'COMPUTER ART & DESIGN III', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019564', '495', 'FINA-P', 'INDEPENDENT STUDY IN FINE ARTS', 'ARTS', 'ARTS', 'SB', 0, 3, ''),
('019588', '200', 'FINA-S', 'DRAWING 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019593', '230', 'FINA-S', 'PAINTING 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019597', '240', 'FINA-S', 'BASIC PRINTMAKING MEDIA', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019599', '250', 'FINA-S', 'GRAPHIC DESIGN I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019605', '260', 'FINA-S', 'CERAMICS 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019606', '270', 'FINA-S', 'SCULPTURE 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019608', '280', 'FINA-S', 'METALSMITHING & JWLRY DESIGN I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019611', '291', 'FINA-S', 'FUNDAMENTALS OF PHOTOGRAPHY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019615', '300', 'FINA-S', 'VIDEO ART', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019616', '301', 'FINA-S', 'DRAWING 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019620', '331', 'FINA-S', 'PAINTING 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019626', '341', 'FINA-S', 'PRINTMAKING II INTAGLIO', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019627', '343', 'FINA-S', 'PRINTMAKING II LITHOGRAPHY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019628', '344', 'FINA-S', 'PRINTMAKING II SILKSCREEN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019634', '351', 'FINA-S', 'GRAPHIC DESIGN II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019642', '361', 'FINA-S', 'CERAMICS 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019645', '371', 'FINA-S', 'SCULPTURE 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019648', '381', 'FINA-S', 'METALSMITHING & JEWELRY DES II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019651', '392', 'FINA-S', 'INTERMEDIATE PHOTOGRAPHY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019655', '401', 'FINA-S', 'DRAWING 3', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019657', '403', 'FINA-S', 'ANATOMY FOR THE ARTIST', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019658', '405', 'FINA-S', 'BFA DRAWING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019662', '417', 'FINA-S', 'HAND PAPERMAKING I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019667', '431', 'FINA-S', 'PAINTING 3', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019668', '432', 'FINA-S', 'BFA PAINTING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019677', '442', 'FINA-S', 'BFA PRINTMAKING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019681', '447', 'FINA-S', 'PRINTMAKING 3', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('019698', '471', 'FINA-S', 'SCULPTURE 3', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019699', '472', 'FINA-S', 'BFA SCULPTURE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019707', '490', 'FINA-S', 'ADVANCED PHOTOGRAPHY I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019708', '491', 'FINA-S', 'ADVANCED PHOTOGRAPHY 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019709', '492', 'FINA-S', 'BFA PHOTOGRAPHY', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('019711', '495', 'FINA-S', 'ADVANCED PHOTO SYSTEMS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('019713', '497', 'FINA-S', 'INDPT STUDY IN STUDIO ART', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('019714', '499', 'FINA-S', 'BFA FINAL REVIEW', 'ARTS', 'ARTS', 'SB', NULL, NULL, ''),
('019824', '398', 'FINA-Y', 'PROFSNL PRACT. IN FINE ARTS', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('019856', '111', 'FOLK-F', 'WORLD MUSIC AND CULTURE', 'FOLK', 'LAS', 'SB', 3, 3, ''),
('020508', '101', 'FREN-F', 'ELEMENTARY FRENCH 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020509', '102', 'FREN-F', 'ELEMENTARY FRENCH 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020539', '203', 'FREN-F', 'SECOND-YEAR FRENCH I', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020540', '204', 'FREN-F', 'SECOND-YEAR FRENCH II', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020576', '306', 'FREN-F', 'CHEFS D OEUVRE DE LA LITT FR 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020583', '313', 'FREN-F', 'ADV GRAMMAR AND COMPOSITION 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020607', '363', 'FREN-F', 'INTRO A LA FRANCE MODERNE', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020611', '391', 'FREN-F', 'STUDIES IN FRENCH FILM', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020671', '480', 'FREN-F', 'FRENCH CONVERSATION', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('020675', '495', 'FREN-F', 'INDIVIDUAL READINGS IN FRENCH', 'WLAN', 'LAS', 'SB', 1, 3, ''),
('021255', '110', 'GEOG-G', 'INTRO TO HUMAN GEOGRAPHY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('021261', '120', 'GEOG-G', 'WORLD REGIONAL GEOGRAPHY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('021270', '201', 'GEOG-G', 'WORLD REGIONAL GEOGRAPHY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('021280', '213', 'GEOG-G', 'INTRO TO ECONOMIC GEOGRAPHY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('021595', '103', 'GEOL-G', 'EARTH SCIENCE-MATLS/PROCESSES', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('021603', '111', 'GEOL-G', 'PHYSICAL GEOLOGY', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('021604', '112', 'GEOL-G', 'HISTORICAL GEOLOGY', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('021642', '210', 'GEOL-G', 'OCEANOGRAPHY', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('021717', '490', 'GEOL-G', 'UNDERGRADUATE SEMINAR', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('021968', '101', 'GER-G', 'BEGINNING GERMAN 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('021969', '102', 'GER-G', 'BEGINNING GERMAN II', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022004', '203', 'GER-G', 'SECOND YEAR GERMAN 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022005', '204', 'GER-G', 'SECOND YEAR GERMAN 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022058', '305', 'GER-G', 'INTRO TO GERMAN LIT-TYPES', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022059', '306', 'GER-G', 'INTRO TO GERMAN LIT-THEMES', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022063', '313', 'GER-G', 'WRITING GERMAN 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022081', '363', 'GER-G', 'DEUTSCHE KULTURGESCHICHTE', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022084', '370', 'GER-G', 'GERMAN CINEMA', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022132', '464', 'GER-G', 'KULTUR UND GESELLSCHAFT', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('022145', '495', 'GER-G', 'INDIV READINGS IN GERMANIC LIT', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('023981', '100', 'HIST-A', 'ISSUES IN UNITED STATES HIST', 'HIST', 'LAS', 'SB', 3, 3, ''),
('023986', '221', 'HIST-A', 'STUDIES IN UNITED STATES HIST', 'HIST', 'LAS', 'SB', 3, 3, ''),
('023991', '300', 'HIST-A', 'ISSUES IN UNITED STATES HIST', 'HIST', 'LAS', 'SB', 3, 3, ''),
('023992', '301', 'HIST-A', 'COLONIAL AMERICA', 'HIST', 'LAS', 'SB', 3, 3, ''),
('023993', '302', 'HIST-A', 'REVOLUTIONARY AMERICA', 'HIST', 'LAS', 'SB', 3, 3, ''),
('023994', '303', 'HIST-A', 'UNITED STATES', 'HIST', 'LAS', 'SB', 1789, 3, ''),
('023995', '304', 'HIST-A', 'UNITED STATES', 'HIST', 'LAS', 'SB', 1789, 3, ''),
('024004', '315', 'HIST-A', 'U.S. SINCE WORLD WAR II', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024009', '320', 'HIST-A', 'FRENCH COLONIAL AMERICA', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024011', '322', 'HIST-A', 'HISTORY OF IDEAS IN AMERICA 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024036', '348', 'HIST-A', 'CIVIL WAR & RECONSTRUCTION', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024039', '351', 'HIST-A', 'THE UNITED STATES IN W.W. II', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024040', '352', 'HIST-A', 'HIST OF LATINOS IN THE U.S.', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024043', '355', 'HIST-A', 'AFRICAN AMERICAN HISTORY I', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024044', '356', 'HIST-A', 'AFRO-AMERICAN HISTORY 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024083', '260', 'HIST-B', 'WOMEN MEN & SOCIETY MODERN EUR', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024097', '342', 'HIST-B', 'WOMEN IN MEDIEVAL SOCIETY', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024104', '352', 'HIST-B', 'WEST EUROPE-HIGH/LATE MID AGE', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024115', '361', 'HIST-B', 'EUROPE IN THE TWENTIETH CENT I', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024116', '362', 'HIST-B', 'EUR IN THE TWENTIETH CENT II', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024132', '378', 'HIST-B', 'HIST OF GERMANY SINCE 1648 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024163', '391', 'HIST-C', 'HIST OF MEDIEVAL NEAR EAST', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024183', '308', 'HIST-D', 'EMPIRE OF THE TSARS', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024185', '310', 'HIST-D', 'RUSS REVOLUTN & SOVIET REGIME', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024312', '369', 'HIST-G', 'MODERN JAPAN', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024359', '101', 'HIST-H', 'THE WORLD IN THE 20TH CENT I', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024364', '105', 'HIST-H', 'AMERICAN HISTORY I', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024365', '106', 'HIST-H', 'AMERICAN HISTORY II', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024372', '113', 'HIST-H', 'HISTORY OF WESTERN CIVILIZ 1', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024373', '114', 'HIST-H', 'HISTORY OF WESTERN CIVILIZ 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024374', '115', 'HIST-H', 'AMER IN RECENT TIME-FR PROSEM', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024383', '201', 'HIST-H', 'HISTORY OF RUSSIA I', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024387', '205', 'HIST-H', 'ANCIENT CIVILIZATION', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024388', '206', 'HIST-H', 'MEDIEVAL CIVILIZATION', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024389', '207', 'HIST-H', 'MODERN EAST ASIAN CIVILIZATION', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024393', '211', 'HIST-H', 'LAT AM CULTR & CIVILIZATION 1', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024394', '212', 'HIST-H', 'LATIN AMERICAN CULTURE & CIV 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024401', '217', 'HIST-H', 'THE NATURE OF HISTORY', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024410', '225', 'HIST-H', 'SPECIAL TOPICS IN HISTORY', 'HIST', 'LAS', 'SB', 1, 3, ''),
('024411', '226', 'HIST-H', 'ORIGINS & HIST OF COLD WAR', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024419', '234', 'HIST-H', 'EXPLORATION AND DISCOVERIES', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024420', '235', 'HIST-H', 'DISCOVERIES AND SETTLEMENT', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024426', '250', 'HIST-H', 'HOLOCAUST/GENOCIDE IN MOD WRLD', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024430', '260', 'HIST-H', 'HIST OF WOMEN IN UNITED STATES', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024443', '309', 'HIST-H', 'TUDOR ENGLAND', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024444', '310', 'HIST-H', 'STUART ENGLAND', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024534', '425', 'HIST-H', 'TOPICS IN HISTORY', 'HIST', 'LAS', 'SB', 1, 3, ''),
('024565', '495', 'HIST-H', 'UNDERGRADUATE READINGS IN HIST', 'HIST', 'LAS', 'SB', 1, 6, ''),
('024566', '496', 'HIST-H', 'INTERNSHIP IN HISTORY', 'HIST', 'LAS', 'SB', 1, 6, ''),
('024590', '531', 'HIST-H', 'STDS IN WORLD HIST FOR TCHS 1', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024614', '575', 'HIST-H', 'GRADUATE READINGS IN HISTORY', 'HIST', 'LAS', 'SB', 1, 3, ''),
('024702', '495', 'HIST-J', 'PROSEMINAR FOR HISTORY MAJORS', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024721', '105', 'HIST-S', 'AMERICAN HIST HONORS SURVEY 1', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024722', '106', 'HIST-S', 'AMERICAN HIST HONORS SURVEY 2', 'HIST', 'LAS', 'SB', 3, 3, ''),
('024767', '300', 'HIST-W', 'ISSUES IN WORLD HISTORY', 'HIST', 'LAS', 'SB', 3, 3, ''),
('025113', '100', 'HON-H', 'FRESHMAN HONORS SEMINAR', 'HON', 'LAS', 'SB', 3, 3, ''),
('025120', '200', 'HON-H', 'INTERDEPARTMENTAL COLLOQUIA', 'HON', 'LAS', 'SB', 3, 3, ''),
('025141', '300', 'HON-H', 'INTERDEPARTMENTAL COLLOQUIUM', 'HON', 'LAS', 'SB', 3, 3, ''),
('025142', '301', 'HON-H', 'INTERDEPARTMENTAL COLLOQUIUM', 'HON', 'LAS', 'SB', 3, 3, ''),
('025143', '302', 'HON-H', 'INTERDEPARTMENTAL COLLOQUIUM', 'HON', 'LAS', 'SB', 3, 3, ''),
('025150', '399', 'HON-H', 'HONORS COLLOQUIUM', 'HON', 'LAS', 'SB', 1, 3, ''),
('025151', '400', 'HON-H', 'INTERDEPARTMENTAL COLLOQUIUM', 'HON', 'LAS', 'SB', 3, 3, ''),
('025474', '100', 'HPER-E', 'EXPRNCE IN PHYSICAL ACTIVITY', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025482', '111', 'HPER-E', 'BASKETBALL', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025498', '133', 'HPER-E', 'FITNESS & JOGGING I', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025499', '135', 'HPER-E', 'GOLF', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025516', '159', 'HPER-E', 'RACQUETBALL', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025528', '181', 'HPER-E', 'TENNIS', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025530', '185', 'HPER-E', 'VOLLEYBALL', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025532', '187', 'HPER-E', 'WEIGHT TRAINING', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025534', '190', 'HPER-E', 'YOGA I', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025551', '233', 'HPER-E', 'FITNESS & JOGGING II', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025552', '235', 'HPER-E', 'GOLF-INTERMEDIATE', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025569', '270', 'HPER-E', 'INTRO TO SCIENTIFIC SCUBA', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('025585', '333', 'HPER-E', 'FITNESS & JOGGING III', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025616', '475', 'HPER-E', 'LIFEGUARD CERTIFICATION', 'EDUC', 'EDUC', 'SB', 1, 1, ''),
('025684', '160', 'HPER-H', 'FIRST AID AND EMERGENCY CARE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('025929', '220', 'HPER-N', 'NUTRITION FOR HEALTH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('026603', '100', 'HPSC-X', 'HUMAN PERSPECTIVES ON SCIENCE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('026607', '200', 'HPSC-X', 'SCIENTIFIC REASONING', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('026616', '220', 'HPSC-X', 'ISSUES IN SCI:  HUMANISTIC', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('026624', '303', 'HPSC-X', 'INTRO TO PHILOSOPHY OF SCIENCE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('026638', '336', 'HPSC-X', 'RELIGION AND SCIENCE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('027263', '101', 'INFO-I', 'INTRODUCTION TO INFORMATICS', 'INFO', 'LAS', 'SB', 4, 4, ''),
('027268', '201', 'INFO-I', 'MATH FOUNDATNS OF INFORMATICS', 'INFO', 'LAS', 'SB', 4, 4, ''),
('027269', '202', 'INFO-I', 'SOCIAL INFORMATICS', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027270', '210', 'INFO-I', 'INFORMATION INFRASTRUCTURE I', 'INFO', 'LAS', 'SB', 4, 4, ''),
('027271', '211', 'INFO-I', 'INFORMATION INFRASTRUCTURE II', 'INFO', 'LAS', 'SB', 4, 4, ''),
('027272', '300', 'INFO-I', 'HUMAN-COMPUTER INTERACTION', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027273', '303', 'INFO-I', 'ORGANIZATIONAL INFORMATICS', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027274', '308', 'INFO-I', 'INFORMATION REPRESENTATION', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027275', '310', 'INFO-I', 'MULTIMEDIA ARTS AND TECHNOLOGY', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027276', '320', 'INFO-I', 'DIST SYS/COLLABORATIVE COMPTNG', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027277', '400', 'INFO-I', 'TOPICS IN INFORMATICS', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027278', '420', 'INFO-I', 'INTERN INFORMATICS PROF PRACT', 'INFO', 'LAS', 'SB', 3, 6, ''),
('027279', '450', 'INFO-I', 'DESIGN & DEV OF AN INFO SYSTEM', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027280', '451', 'INFO-I', 'DESIGN & DEV OF AN INFO SYS', 'INFO', 'LAS', 'SB', 3, 3, ''),
('027432', '10400', 'IT', 'INDUSTRIAL ORGANIZATION', 'SWT', 'SWT', 'SB', 3, 3, ''),
('027448', '230', 'IT', 'INDUSTRIAL SUPPLY CHAIN MGMT', 'SWT', 'SWT', 'SB', 3, 3, ''),
('027461', '34200', 'IT', 'INTRO TO STAT QUALITY', 'SWT', 'SWT', 'SB', 3, 3, ''),
('027462', '44200', 'IT', 'PRODUCTION PLANNING', 'SWT', 'SWT', 'SB', 3, 3, ''),
('027463', '45000', 'IT', 'PRODUCTION COST ANALYSIS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('027751', '200', 'JOUR-C', 'INTRO TO MASS COMMUNICATIONS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027752', '201', 'JOUR-C', 'TOPICS IN JOURNALISM', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027768', '200', 'JOUR-J', 'REPORTING', 'ARTS', 'ARTS', 'SB', 0, 3, ''),
('027773', '210', 'JOUR-J', 'VISUAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027779', '290', 'JOUR-J', 'INTERNSHIP IN JOURNALISM', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027781', '300', 'JOUR-J', 'COMMUNICATIONS LAW', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027793', '319', 'JOUR-J', 'INTRO TO PUBLIC RELATIONS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027803', '341', 'JOUR-J', 'NEWSPAPER REPORTING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027809', '351', 'JOUR-J', 'NEWSPAPER EDITING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027813', '360', 'JOUR-J', 'JOURNALISM SPECIALTIES', 'JOUR', 'ARTS', 'SB', 3, 3, ''),
('027823', '399', 'JOUR-J', 'READING FOR HONORS', 'ARTS', 'ARTS', 'SB', 1, 3, ''),
('027824', '401', 'JOUR-J', 'DEPTH REPORTING AND EDITING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027833', '410', 'JOUR-J', 'MEDIA AS SOCIAL INSTITUTIONS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027834', '413', 'JOUR-J', 'MAGAZINE ARTICLE WRITING', 'JOUR', 'ARTS', 'SB', 3, 3, ''),
('027842', '428', 'JOUR-J', 'PUBLIC RELATIONS PLANNG & RSCH', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('027862', '492', 'JOUR-J', 'MEDIA INTERNSHIP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('029585', '500', 'LBST-D', 'GRADUATE PROJECT', 'LBST', 'LAS', 'SB', 3, 6, ''),
('029586', '501', 'LBST-D', 'HUMANITIES SEMINAR', 'LBST', 'LAS', 'SB', 3, 3, ''),
('029587', '502', 'LBST-D', 'SOCIAL SCIENCES SEMINAR', 'LBST', 'LAS', 'SB', 3, 3, ''),
('029588', '503', 'LBST-D', 'SCIENCE SEMINAR', 'LBST', 'LAS', 'SB', 3, 3, ''),
('029882', '100', 'LING-L', 'ENGLISH LANGUAGE IMPROVEMENT', 'ENG', 'LAS', 'SB', 4, 4, ''),
('030193', '100', 'LSTU-L', 'SURV OF UNIONS & COLLECTIVE BG', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030194', '101', 'LSTU-L', 'AMERICAN LABOR HISTORY', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030199', '110', 'LSTU-L', 'INTRO TO LSTU: LABOR & SOCIETY', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030201', '199', 'LSTU-L', 'PORTFOLIO DEVELOPMENT WORKSHOP', 'LSTU', 'LSTU', 'SB', 1, 1, ''),
('030202', '200', 'LSTU-L', 'SURVEY OF EMPLOYMENT LAW', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030203', '201', 'LSTU-L', 'LABOR LAW', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030205', '203', 'LSTU-L', 'LABOR & THE POLITICAL SYSTEM', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030207', '205', 'LSTU-L', 'CONTEMPORARY LABOR PROBLEMS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030208', '210', 'LSTU-L', 'WORKPLCE DISCRIM/FAIR EMPLYMNT', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030209', '220', 'LSTU-L', 'GRIEVANCE REPRESENTATION', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030211', '230', 'LSTU-L', 'LABOR AND THE ECONOMY', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030212', '240', 'LSTU-L', 'OCCUPATIONAL HEALTH & SAFETY', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030213', '250', 'LSTU-L', 'COLLECTIVE BARGAINING', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030215', '255', 'LSTU-L', 'UNIONS IN STATE & LOCAL GOVT', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030216', '260', 'LSTU-L', 'LEADERSHIP & REPRESENTATION', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030218', '270', 'LSTU-L', 'UNION GOVERNMENT & ORGANIZATN', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030219', '280', 'LSTU-L', 'UNION ORGANIZING', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030221', '290', 'LSTU-L', 'TOPICS IN LABOR STUDIES', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030226', '315', 'LSTU-L', 'THE ORGANIZATION OF WORK', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030228', '320', 'LSTU-L', 'GRIEVANCE ARBITRATION', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030229', '350', 'LSTU-L', 'ISS IN COLLECTIVE BARGAINING', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030230', '360', 'LSTU-L', 'UNION ADMIN & DEVELOPMENT', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030231', '375', 'LSTU-L', 'COMPARATIVE LABOR MOVEMENTS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030232', '380', 'LSTU-L', 'THEORIES OF THE LABOR MOVEMENT', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030233', '385', 'LSTU-L', 'CLASS', 'LSTU', 'LSTU', 'SB', 0, 0, ''),
('030235', '390', 'LSTU-L', 'TOPICS IN LABOR STUDIES', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030237', '410', 'LSTU-L', 'COMPARATIVE LABOR MOVEMENTS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030238', '420', 'LSTU-L', 'LABOR STUDIES INTERNSHIP', 'LSTU', 'LSTU', 'SB', 1, 6, ''),
('030239', '430', 'LSTU-L', 'LABOR RESEARCH METHODS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030241', '480', 'LSTU-L', 'SENIOR SEMINAR OR READINGS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030242', '490', 'LSTU-L', 'TOPICS IN LABOR STUDIES', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030244', '495', 'LSTU-L', 'DIRECTED LABOR STUDY', 'LSTU', 'LSTU', 'SB', 1, 6, ''),
('030246', '580', 'LSTU-L', 'GRADUATE SEMINAR ON LABOR EDUC', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('030247', '590', 'LSTU-L', 'POVERTY', 'LSTU', 'LSTU', 'SB', 0, 3, ''),
('031057', '300', 'MATH-K', 'STAT TECHNQS HLTH PROFESSIONS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031060', '310', 'MATH-K', 'STATISTICAL TECHNIQUES', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031066', '4', 'MATH-M', 'INTRODUCTION TO ALGEBRA', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031067', '5', 'MATH-M', 'MATHEMATICS LABORATORY', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031069', '7', 'MATH-M', 'ELEMENTARY ALGEBRA', 'MATH', 'LAS', 'SB', 4, 4, ''),
('031072', '12', 'MATH-M', 'PREPARATION FOR ALGEBRA', 'MATH', 'LAS', 'SB', 2, 2, ''),
('031073', '13', 'MATH-M', 'BEGINNING ALGEBRA', 'MATH', 'LAS', 'SB', 2, 2, ''),
('031074', '14', 'MATH-M', 'BASIC ALGEBRA', 'MATH', 'LAS', 'SB', 4, 4, ''),
('031094', '107', 'MATH-M', 'COLLEGE ALGEBRA', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031095', '108', 'MATH-M', 'QUANTITATIVE REASONING', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031096', '110', 'MATH-M', 'EXCURSIONS IN MATHEMATICS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031100', '115', 'MATH-M', 'PRECALCULUS & TRIGONOMETRY', 'MATH', 'LAS', 'SB', 5, 5, ''),
('031102', '118', 'MATH-M', 'FINITE MATHEMATICS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031103', '119', 'MATH-M', 'BRIEF SURVEY OF CALCULUS 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031106', '125', 'MATH-M', 'PRE-CALCULUS MATHEMATICS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031107', '126', 'MATH-M', 'TRIGONOMETRIC FUNCTIONS', 'MATH', 'LAS', 'SB', 2, 2, ''),
('031130', '208', 'MATH-M', 'TECHNICAL CALCULUS I', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031131', '209', 'MATH-M', 'TECHNICAL CALCULUS II', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031137', '215', 'MATH-M', 'CALCULUS I', 'MATH', 'LAS', 'SB', 5, 5, ''),
('031138', '216', 'MATH-M', 'CALCULUS II', 'MATH', 'LAS', 'SB', 5, 5, ''),
('031147', '260', 'MATH-M', 'COMBINATORIAL COUNTING & PROB', 'MATH', 'LAS', 'SB', 2, 2, ''),
('031148', '261', 'MATH-M', 'STATISTICAL INFERENCES', 'MATH', 'LAS', 'SB', 2, 2, ''),
('031156', '295', 'MATH-M', 'READINGS AND RESEARCH', 'MATH', 'LAS', 'SB', 1, 1, ''),
('031157', '299', 'MATH-M', 'INDIV STUDY IN MATHEMATICS', 'MATH', 'LAS', 'SB', 0, 0, ''),
('031159', '301', 'MATH-M', 'LINEAR ALGEBRA & APPLICATIONS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031165', '311', 'MATH-M', 'CALCULUS 3', 'MATH', 'LAS', 'SB', 3, 5, ''),
('031171', '325', 'MATH-M', 'PROBLEM SEMINAR ACTUARIAL SCI', 'MATH', 'LAS', 'SB', 1, 3, ''),
('031179', '343', 'MATH-M', 'INTRO TO DIFF EQ', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031181', '344', 'MATH-M', 'INTRO TO DIFF EQ', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031182', '347', 'MATH-M', 'DISCRETE MATHEMATICS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031188', '365', 'MATH-M', 'INTRO PROBABILITY & STATISTICS', 'MATH', 'LAS', 'SB', 4, 4, ''),
('031195', '380', 'MATH-M', 'HISTORY OF MATHEMATICS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031203', '403', 'MATH-M', 'INTRO TO MODERN ALGEBRA 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031204', '404', 'MATH-M', 'INTRO TO MODERN ALGEBRA 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031205', '405', 'MATH-M', 'NUMBER THEORY', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031207', '409', 'MATH-M', 'LINEAR TRANSFORMATIONS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031210', '413', 'MATH-M', 'INTRODUCTION TO ANALYSIS 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031211', '414', 'MATH-M', 'INTRODUCTION TO ANALYSIS 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031223', '435', 'MATH-M', 'INTRO TO DIFFERENTIAL GEOMETRY', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031231', '447', 'MATH-M', 'MATHEMATICAL MODELS/APPLCTNS 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031232', '448', 'MATH-M', 'MATHEMATICAL MODELS/APPLCTNS 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031234', '451', 'MATH-M', 'THE MATHEMATICS OF FINANCE', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031241', '463', 'MATH-M', 'INTRO TO PROBABILITY THEORY 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031244', '466', 'MATH-M', 'INTRO TO MATHEMATICAL STATS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031245', '467', 'MATH-M', 'ADV STATISTICAL TECHNIQUES 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031246', '468', 'MATH-M', 'ADV STATISTICAL TECHNIQUES 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031249', '471', 'MATH-M', 'NUMERICAL ANALYSIS 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031250', '472', 'MATH-M', 'NUMERICAL ANALYSIS 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031254', '481', 'MATH-M', 'AXIOMATIC SET THEORY', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031260', '491', 'MATH-M', 'PUTNAM EXAM SEMINAR', 'MATH', 'LAS', 'SB', 1, 1, ''),
('031300', '551', 'MATH-M', 'MARKETS AND ASSET PRICING', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031304', '560', 'MATH-M', 'APPLIED STOCHASTIC PROCESSES', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031306', '562', 'MATH-M', 'STATISTICAL DESIGN OF EXPER', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031309', '565', 'MATH-M', 'ANALYSIS OF VARIANCE', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031314', '571', 'MATH-M', 'ANLYS OF NUMERICAL METHODS I', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031317', '575', 'MATH-M', 'SIMULATION MODELING', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031318', '577', 'MATH-M', 'OPERATNS RESCH: MODELNG APPRCH', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031323', '590', 'MATH-M', 'SEMINAR', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031408', '215', 'MATH-S', 'HON CRSE IN ANAL GEOM & CAL 1', 'MATH', 'LAS', 'SB', 5, 5, ''),
('031409', '216', 'MATH-S', 'HONORS CALCULUS II', 'MATH', 'LAS', 'SB', 5, 5, ''),
('031430', '101', 'MATH-T', 'MATH FOR ELEMENTARY TEACHERS 1', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031431', '102', 'MATH-T', 'MATH FOR ELEMENTARY TEACHERS 2', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031432', '103', 'MATH-T', 'MATH FOR ELEMENTARY TEACHERS 3', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031441', '201', 'MATH-T', 'PROBLEM SOLVING', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031445', '336', 'MATH-T', 'TOPICS IN EUCLIDEAN GEOMETRY', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031451', '436', 'MATH-T', 'SECONDARY MATH FOR TEACHERS', 'MATH', 'LAS', 'SB', 3, 3, ''),
('031833', '102', 'MET', 'PRODUCTION DESIGN & SPECS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031839', '111', 'MET', 'APPLIED STATICS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031845', '142', 'MET', 'MANUFACTURING PROCESSES I', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031851', '16000', 'MET', 'ANALYTICAL & COMP TOOLS IN MET', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031868', '21100', 'MET', 'APPLIED STRENGTH OF MATL', 'SWT', 'SWT', 'SB', 4, 4, ''),
('031870', '21300', 'MET', 'DYNAMICS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031871', '214', 'MET', 'MACHINE ELEMENTS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031877', '220', 'MET', 'HEAT/POWER', 'SWT', 'SWT', 'SB', 3, 3, ''),
('031884', '230', 'MET', 'FLUID POWER', 'SWT', 'SWT', 'SB', 3, 3, ''),
('032250', '250', 'MICR-M', 'MICROBIAL CELL BIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('032251', '255', 'MICR-M', 'MICROBIOLOGY LABORATORY', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('032253', '310', 'MICR-M', 'MICROBIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('032254', '315', 'MICR-M', 'MICROBIOLOGY LABORATORY', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('032364', '111', 'MIL-G', 'ORIENT TO MIL SCI-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('032365', '112', 'MIL-G', 'BAS MIL LEADERSHIP-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('032375', '211', 'MIL-G', 'APPLIED LDRSHP I-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032376', '212', 'MIL-G', 'APPLIED LDRSHP II-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032377', '213', 'MIL-G', 'BASIC MIL SCI-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 5, 5, ''),
('032388', '311', 'MIL-G', 'ADV LEADERSHIP 1-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032389', '312', 'MIL-G', 'ADV LEADERSHIP 2-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032392', '390', 'MIL-G', 'AMER MIL HISTORY-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('032398', '411', 'MIL-G', 'THE PROFESSIONAL OFFICER', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032399', '412', 'MIL-G', 'MILITARY MGMT 2-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032411', '111', 'MIL-N', 'INTRO NAVAL SCI - NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032412', '112', 'MIL-N', 'NAVAL SHIPS SYS I-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 2, 2, ''),
('032413', '211', 'MIL-N', 'NAVAL SHIPS SYS 2-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032414', '212', 'MIL-N', 'MARITIME AFF II - NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032416', '311', 'MIL-N', 'NAVIGATION - NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032417', '312', 'MIL-N', 'NAVAL OPERATIONS-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032418', '411', 'MIL-N', 'LEADERSHIP & MGMT I-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032419', '412', 'MIL-N', 'LDRSHP & MGMT II-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 1, 1, ''),
('032422', '415', 'MIL-N', 'EVOLUTN OF WARFARE-NOTRE DAME', 'ADMIN', 'ADMIN', 'SB', 3, 3, ''),
('032835', '101', 'MUS-A', 'INTRO TO AUDIO TECHNOLOGY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('032844', '300', 'MUS-A', 'INTRO TO ELECTRONIC MUSIC', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('032881', '110', 'MUS-B', 'HORN ELECTIVE/SECONDARY', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('032882', '120', 'MUS-B', 'TRUMPET/CORNET ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('032883', '130', 'MUS-B', 'TROMBONE ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('032885', '140', 'MUS-B', 'EUPHONIUM ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('032889', '150', 'MUS-B', 'TUBA ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('032890', '210', 'MUS-B', 'FRENCH HORN', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('032901', '310', 'MUS-B', 'FRENCH HORN', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('032902', '311', 'MUS-B', 'FRENCH HORN CONCENT SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('032904', '320', 'MUS-B', 'TRUMPET AND CORNET', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('032908', '330', 'MUS-B', 'TROMBONE', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('032909', '331', 'MUS-B', 'TROMBONE CONCENTRATN SR RECIT', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('032911', '340', 'MUS-B', 'EUPHONIUM', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('032915', '350', 'MUS-B', 'TUBA', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('032956', '620', 'MUS-B', 'GRAD RECITAL IN TRUMPET/CORNET', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('032961', '640', 'MUS-B', 'GRAD RECITAL IN EUPHONIUM', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('032979', '840', 'MUS-B', 'EUPHONIUM GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('032984', '910', 'MUS-B', 'HORN GRADUATE MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('032988', '920', 'MUS-B', 'TRUMPET/CORNET GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('033024', '100', 'MUS-D', 'PERCUSSION ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033025', '200', 'MUS-D', 'PERCUSSION INSTRUMENTS', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033027', '300', 'MUS-D', 'PERCUSSION INSTRUMENTS', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('033028', '301', 'MUS-D', 'PERCUSSION BME/BS SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033030', '400', 'MUS-D', 'PERCUSSION UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('033032', '402', 'MUS-D', 'PERCUSSION BM SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033035', '600', 'MUS-D', 'GRAD REC IN PERCUSSION INSTR', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033044', '900', 'MUS-D', 'PERCUSSION GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 6, ''),
('033055', '215', 'MUS-E', 'RELATED ARTS 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033079', '457', 'MUS-E', 'INSTRUMENTAL PEDAGOGY', 'ARTS', 'ARTS', 'SB', 1, 3, ''),
('033081', '459', 'MUS-E', 'INSTRUMENTAL PEDAGOGY', 'ARTS', 'ARTS', 'SB', 1, 3, ''),
('033086', '493', 'MUS-E', 'PIANO PEDAGOGY', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033087', '494', 'MUS-E', 'VOCAL PEDAGOGY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033088', '495', 'MUS-E', 'SUPERVISED PRACTICE TEACHING I', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033089', '496', 'MUS-E', 'SUPERVISED PRACTICE TCHNG II', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033090', '497', 'MUS-E', 'SUPERVISED PRACTICE TCHNG III', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033135', '545', 'MUS-E', 'GUIDED PROFSNL EXPERIENCES', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033148', '559', 'MUS-E', 'INSTRUMENTAL PEDAGOGY', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033167', '593', 'MUS-E', 'PIANO PEDAGOGY', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('033168', '594', 'MUS-E', 'VOCAL PEDAGOGY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033256', '466', 'MUS-F', 'TECHNIQUES IN MARCHING BANDS', 'MUS', 'ARTS', 'SB', 2, 2, ''),
('033266', '550', 'MUS-F', 'CHAMBER MUSIC', 'MUS', 'ARTS', 'SB', 1, 1, ''),
('033278', '250', 'MUS-G', 'JAZZ REHEARSAL TECHNIQUES', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033279', '261', 'MUS-G', 'STRING CLASS TECHNIQUES', 'MUS', 'ARTS', 'SB', 1, 1, ''),
('033298', '337', 'MUS-G', 'WOODWIND TECHNIQUES', 'MUS', 'ARTS', 'SB', 1, 1, ''),
('033305', '370', 'MUS-G', 'TECHNIQUES FOR CONDUCTING', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033309', '380', 'MUS-G', 'ADVANCED CONDUCTING', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033339', '571', 'MUS-G', 'ADV INSTRUMENTAL CONDUCTING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033367', '100', 'MUS-H', 'HARP ELECT/SECONDARY', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('033375', '400', 'MUS-H', 'HARP UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('033381', '600', 'MUS-H', 'GRADUATE RECITAL IN HARP', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033393', '900', 'MUS-H', 'HARP GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('033405', '311', 'MUS-I', 'BS/BME/BM JAZZ SENIOR RECITAL', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033407', '411', 'MUS-I', 'BM JUNIOR RECITAL', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033408', '412', 'MUS-I', 'BM SENIOR RECITAL', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033412', '711', 'MUS-I', 'MASTERS RECITAL', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033419', '100', 'MUS-J', 'BALLET ELECTIVE/SECONDARY', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033420', '101', 'MUS-J', 'BALLET (ELECTIVE)', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033423', '200', 'MUS-J', 'BALLET SECONDARY', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033427', '210', 'MUS-J', 'JAZZ DANCE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033433', '340', 'MUS-J', 'PRACTICUM', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033477', '110', 'MUS-K', 'COMPOSITION', 'ARTS', 'ARTS', 'SB', 0, 2, ''),
('033479', '132', 'MUS-K', 'COMPOSITION WORKSHOP 2', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033485', '210', 'MUS-K', 'APPL COMPOSITN', 'ARTS', 'ARTS', 'SB', 0, 2, ''),
('033493', '312', 'MUS-K', 'ARR INSTRUMENTAL&VOCAL GRPS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033502', '402', 'MUS-K', 'SENIOR RECITAL IN COMPOSITION', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033503', '403', 'MUS-K', 'ELECTRONIC STUDIO RESOURCES I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033504', '404', 'MUS-K', 'ELECTRONIC STUDIO RESOURCES II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033505', '405', 'MUS-K', 'ELECTRNC INSTRUMNT PERFORMANCE', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033506', '406', 'MUS-K', 'PROJECTS IN ELECTRONIC MUSIC', 'ARTS', 'ARTS', 'SB', 1, 3, ''),
('033507', '410', 'MUS-K', 'APPL COMPOSITION', 'ARTS', 'ARTS', 'SB', 0, 4, ''),
('033527', '505', 'MUS-K', 'PROJECTS IN ELECTRONIC MUSIC I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033541', '601', 'MUS-K', 'COMPOSITION RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033552', '710', 'MUS-K', 'COMPOSITION GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('033554', '910', 'MUS-K', 'COMPOSITION GRADUATE MAJORS', 'ARTS', 'ARTS', 'SB', 3, 6, ''),
('033555', '100', 'MUS-L', 'GUITAR ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033556', '101', 'MUS-L', 'BEGINNING GUITAR CLASS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033557', '102', 'MUS-L', 'INTERMEDIATE GUITAR CLASS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033564', '200', 'MUS-L', 'GUITAR', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033570', '300', 'MUS-L', 'CONCENTRATION GUITAR', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('033571', '301', 'MUS-L', 'GUITAR BME/BS SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033575', '400', 'MUS-L', 'GUITAR UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('033576', '401', 'MUS-L', 'GUITAR BM JUNIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033577', '402', 'MUS-L', 'GUITAR BM SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033593', '800', 'MUS-L', 'GUITAR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('033594', '900', 'MUS-L', 'GUITAR GRAD MAJOR', 'MUS', 'ARTS', 'SB', 2, 8, ''),
('033604', '111', 'MUS-M', 'MUSIC LITERATURE', 'ARTS', 'ARTS', 'SB', 4, 4, ''),
('033608', '174', 'MUS-M', 'MUSIC FOR THE LISTENER', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033610', '176', 'MUS-M', 'AUDITORIUM SERIES 1', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033611', '177', 'MUS-M', 'AUDITORIUM SERIES 2', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033615', '201', 'MUS-M', 'THE LITERATURE OF MUSIC 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033616', '202', 'MUS-M', 'THE LITERATURE OF MUSIC 2', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033618', '216', 'MUS-M', 'LAB/FIELD EXPERIENCE', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('033619', '236', 'MUS-M', 'INTRO TO MUSIC EDUCATION K-12', 'MUS', 'ARTS', 'SB', 2, 2, ''),
('033623', '276', 'MUS-M', 'EXPRNCE W/MUSIC IN CONCERT I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033635', '375', 'MUS-M', 'SURV ETHNIC & POP MUS OF WORLD', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033653', '400', 'MUS-M', 'UNDERGRAD RDGS IN MUSICOLOGY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033656', '403', 'MUS-M', 'HISTORY OF MUSIC I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033657', '404', 'MUS-M', 'HISTORY OF MUSIC II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033663', '410', 'MUS-M', 'COMPOSER OR GENRE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033668', '430', 'MUS-M', 'INTRO TO CONTEMPORARY MUSIC', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033669', '431', 'MUS-M', 'SONG LITERATURE I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033675', '443', 'MUS-M', 'A SURV OF KEYBOARD LITERATURE', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033676', '444', 'MUS-M', 'SURV OF KEYBOARD LITERATURE 11', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033691', '510', 'MUS-M', 'TOPICS IN MUSIC LITERATURE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033714', '529', 'MUS-M', 'SCORE STUDY', 'ARTS', 'ARTS', 'SB', 3, 3, '');
INSERT INTO `course` (`CourseID`, `CourseNo`, `SubjectArea`, `CourseTitle`, `DeptID`, `CollegeID`, `CampusID`, `MinCredits`, `MaxCredits`, `CourseDescription`) VALUES
('033715', '530', 'MUS-M', 'CONTEMPORARY MUSIC', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('033728', '543', 'MUS-M', 'KEYBOARD LIT FROM 1700 TO 1850', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033737', '552', 'MUS-M', 'INTRO TO SYSTEMATIC MUSICOLOGY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033751', '566', 'MUS-M', 'ETHNIC MUSIC SURVEY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('033919', '100', 'MUS-P', 'PIANO ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033920', '101', 'MUS-P', 'PIANO CLASS 1', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033921', '102', 'MUS-P', 'PIANO CLASS 2', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033922', '103', 'MUS-P', 'PIANO CLASS 3', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033923', '104', 'MUS-P', 'PIANO CLASS 4', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033924', '105', 'MUS-P', 'KEYBOARD PROFICIENCY', 'ARTS', 'ARTS', 'SB', 0, 0, ''),
('033925', '110', 'MUS-P', 'BEGIN PIANO CLASS 1 NONMUS MAJ', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033928', '120', 'MUS-P', 'BEGIN PIANO CLASS 2 NONMUS MAJ', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('033941', '200', 'MUS-P', 'PIANO', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033948', '211', 'MUS-P', 'KEYBOARD TECHNIQUES', 'MUS', 'ARTS', 'SB', 2, 2, ''),
('033950', '300', 'MUS-P', 'PIANO', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('033951', '301', 'MUS-P', 'PIANO BME/BS SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033957', '400', 'MUS-P', 'PIANO UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('033958', '401', 'MUS-P', 'PIANO BM JUNIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033959', '402', 'MUS-P', 'PIANO BM SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033975', '600', 'MUS-P', 'GRADUATE RECITAL IN PIANO', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033984', '609', 'MUS-P', 'PIANO AD RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('033985', '700', 'MUS-P', 'PIANO GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('033991', '800', 'MUS-P', 'PIANO GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('033993', '900', 'MUS-P', 'PIANO GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('033998', '909', 'MUS-P', 'PIANO AD', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('033999', '100', 'MUS-Q', 'ORGAN ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034000', '200', 'MUS-Q', 'ORGAN', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034003', '300', 'MUS-Q', 'ORGAN', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034004', '301', 'MUS-Q', 'ORGAN BME/BS SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034007', '400', 'MUS-Q', 'ORGAN UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034013', '600', 'MUS-Q', 'GRADUATE RECITAL IN ORGAN', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034024', '800', 'MUS-Q', 'ORGAN GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034026', '900', 'MUS-Q', 'ORGAN GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034079', '471', 'MUS-R', 'VOCAL PERFORM WORKSHOP I', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('034119', '110', 'MUS-S', 'VIOLIN ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034120', '120', 'MUS-S', 'VIOLA ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034123', '130', 'MUS-S', 'CELLO ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034124', '140', 'MUS-S', 'DOUBLE BASS ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034126', '210', 'MUS-S', 'VIOLIN', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034127', '220', 'MUS-S', 'VIOLA', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034128', '230', 'MUS-S', 'CELLO', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034129', '240', 'MUS-S', 'STRING BASS', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034137', '310', 'MUS-S', 'VIOLIN', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034138', '311', 'MUS-S', 'VIOLIN CONCENTR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034140', '320', 'MUS-S', 'VIOLA', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034143', '330', 'MUS-S', 'CELLO', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034144', '331', 'MUS-S', 'CELLO CONCENTRATION SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034146', '340', 'MUS-S', 'STRING BASS', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034151', '410', 'MUS-S', 'VIOLIN UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034152', '411', 'MUS-S', 'VIOLIN MAJOR JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034153', '412', 'MUS-S', 'VIOLIN MAJOR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034155', '420', 'MUS-S', 'VIOLA UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034159', '430', 'MUS-S', 'CELLO UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034160', '431', 'MUS-S', 'CELLO MAJOR JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034161', '432', 'MUS-S', 'CELLO MAJOR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034163', '440', 'MUS-S', 'DOUBLE BASS UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034164', '441', 'MUS-S', 'DOUBLE BASS MAJOR JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034174', '610', 'MUS-S', 'GRADUATE RECITAL IN VIOLIN', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034179', '619', 'MUS-S', 'VIOLIN AD RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034180', '620', 'MUS-S', 'GRADUATE RECITAL IN VIOLA', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034183', '629', 'MUS-S', 'VIOLA AD RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034184', '630', 'MUS-S', 'GRADUATE RECITAL IN CELLO', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034188', '639', 'MUS-S', 'CELLO AD RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034189', '640', 'MUS-S', 'GRAD RECITAL IN DOUBLE BASS', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034196', '710', 'MUS-S', 'VIOLIN GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034197', '720', 'MUS-S', 'VIOLA GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034198', '730', 'MUS-S', 'CELLO GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034199', '740', 'MUS-S', 'DOUBLE BASS GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034200', '810', 'MUS-S', 'VIOLIN GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034209', '910', 'MUS-S', 'VIOLIN GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034212', '919', 'MUS-S', 'VIOLIN AD', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034213', '920', 'MUS-S', 'VIOLA GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034216', '929', 'MUS-S', 'VIOLA AD', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034217', '930', 'MUS-S', 'CELLO GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034220', '939', 'MUS-S', 'CELLO AD', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034221', '940', 'MUS-S', 'DOUBLE BASS GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034227', '109', 'MUS-T', 'RUDIMENTS OF MUSIC 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034231', '113', 'MUS-T', 'MUSIC THEORY I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034232', '114', 'MUS-T', 'MUSIC THEORY II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034233', '115', 'MUS-T', 'SIGHTSINGING & AURAL PERCP I', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034234', '116', 'MUS-T', 'SIGHTSINGING & AURAL PERCP II', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034235', '120', 'MUS-T', 'COMPUTER SKILLS FOR MUSICIANS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034241', '212', 'MUS-T', 'MUSIC READING 1', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034243', '214', 'MUS-T', 'MUSIC THEORY IV', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('034245', '216', 'MUS-T', 'SIGHTSINGING & AURAL PERCP IV', 'MUS', 'ARTS', 'SB', 1, 1, ''),
('034255', '315', 'MUS-T', 'ANALYSIS OF MUSICAL FORM', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034263', '400', 'MUS-T', 'UNDERGRADUATE RDGS IN THEORY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034282', '508', 'MUS-T', 'WRITTEN THEORY REV-GRAD STDNTS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034300', '545', 'MUS-T', 'INTRODUCTRY ANALYSIS MUSIC LIT', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('034347', '121', 'MUS-U', 'FUNDAMTLS OF DICTION SINGERS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034348', '122', 'MUS-U', 'ADV DICTION FOR SINGERS', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034382', '310', 'MUS-U', 'PERFORMANCE LABORATORY', 'ARTS', 'ARTS', 'SB', NULL, NULL, ''),
('034383', '320', 'MUS-U', 'SEMINAR', 'MUS', 'ARTS', 'SB', 2, 2, ''),
('034424', '100', 'MUS-V', 'VOICE ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034429', '200', 'MUS-V', 'VOICE', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034430', '201', 'MUS-V', 'VOICE CLASS', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034431', '202', 'MUS-V', 'VOICE CLASS II', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034432', '203', 'MUS-V', 'CHORAL TECHNIQUES', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034433', '211', 'MUS-V', 'SINGING FOR ACTORS I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034434', '212', 'MUS-V', 'SINGING FOR ACTORS II', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034440', '300', 'MUS-V', 'VOICE', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034441', '301', 'MUS-V', 'VOICE BME/BS SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034445', '400', 'MUS-V', 'VOICE UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034446', '401', 'MUS-V', 'VOICE BM JUNIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034447', '402', 'MUS-V', 'VOICE BM SENIOR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034453', '600', 'MUS-V', 'GRADUATE RECITAL IN VOICE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034458', '609', 'MUS-V', 'VOICE AD RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034459', '700', 'MUS-V', 'VOICE GRADUATE ELECTIVE', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034461', '800', 'MUS-V', 'VOICE GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034466', '900', 'MUS-V', 'VOICE GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034470', '909', 'MUS-V', 'VOICE AD', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034475', '110', 'MUS-W', 'FLUTE/PICCOLO ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034476', '120', 'MUS-W', 'OBOE/ENG HORN ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034477', '130', 'MUS-W', 'CLARINET ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034478', '140', 'MUS-W', 'BASSOON ELECT/SECONDARY', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('034479', '150', 'MUS-W', 'SAXOPHONE ELECT/SECONDARY', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034480', '210', 'MUS-W', 'FLUTE AND PICCOLO', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034483', '220', 'MUS-W', 'OBOE AND ENGLISH HORN', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('034484', '230', 'MUS-W', 'CLARINET', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034485', '240', 'MUS-W', 'BASSOON', 'MUS', 'ARTS', 'SB', 1, 2, ''),
('034486', '250', 'MUS-W', 'SAXOPHONE', 'ARTS', 'ARTS', 'SB', 1, 2, ''),
('034492', '310', 'MUS-W', 'FLUTE AND PICCOLO', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034493', '311', 'MUS-W', 'FLUTE&PICCOLO CONCENT SR RECIT', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034495', '320', 'MUS-W', 'OBOE AND ENGLISH HORN', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034498', '330', 'MUS-W', 'CLARINET', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034499', '331', 'MUS-W', 'CLARINET CONCENTR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034501', '340', 'MUS-W', 'BASSOON', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034504', '350', 'MUS-W', 'SAXOPHONE', 'ARTS', 'ARTS', 'SB', 1, 4, ''),
('034505', '351', 'MUS-W', 'SAXOPHONE CONCENTR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034509', '410', 'MUS-W', 'FLUTE/PICCOLO UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034510', '411', 'MUS-W', 'FLUTE&PICCOLO MAJ JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034511', '412', 'MUS-W', 'FLUTE&PICCOLO MAJ SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034513', '420', 'MUS-W', 'OBOE/ENG HORN UNDERGRAD MAJOR', 'MUS', 'ARTS', 'SB', 1, 6, ''),
('034517', '430', 'MUS-W', 'CLARINET UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034518', '431', 'MUS-W', 'CLARINET MAJOR JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034519', '432', 'MUS-W', 'CLARINET MAJOR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034521', '440', 'MUS-W', 'BASSOON UNDERGRAD MAJOR', 'MUS', 'ARTS', 'SB', 1, 6, ''),
('034525', '450', 'MUS-W', 'SAXOPHONE UNDERGRAD MAJOR', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('034526', '451', 'MUS-W', 'SAXOPHONE MAJOR JR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034527', '452', 'MUS-W', 'SAXOPHONE MAJOR SR RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034538', '610', 'MUS-W', 'GRAD RECITAL IN FLUTE/PICCOLO', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034545', '630', 'MUS-W', 'GRADUATE RECITAL IN CLARINET', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034549', '650', 'MUS-W', 'GRADUATE RECITAL IN SAXOPHONE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034556', '810', 'MUS-W', 'FLUTE & PICCOLO GRADUATE MINOR', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('034568', '910', 'MUS-W', 'FLUTE/PICCOLO GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034576', '930', 'MUS-W', 'CLARINET GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034584', '950', 'MUS-W', 'SAXOPHONE GRAD MAJOR', 'ARTS', 'ARTS', 'SB', 2, 8, ''),
('034590', '2', 'MUS-X', 'PIANO ACCOMPANYING', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034591', '3', 'MUS-X', 'GRADUATE MUSIC ENSEMBLE', 'ARTS', 'ARTS', 'SB', NULL, NULL, ''),
('034598', '40', 'MUS-X', 'UNIV INSTRUMENTAL ENSEMBLES', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034611', '70', 'MUS-X', 'UNIVERSITY CHORAL ENSEMBLES', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('034644', '296', 'MUS-X', 'APPL MUS UPPER DIV JURY EXAM', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('034645', '297', 'MUS-X', 'MUS ED UPPER DIV SKILLS EXAM', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('034656', '341', 'MUS-X', 'GUITAR ENSEMBLE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034657', '350', 'MUS-X', 'JAZZ ENSEMBLES', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034667', '420', 'MUS-X', 'SMALL ENSEMBLES', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034670', '423', 'MUS-X', 'CHAMBER MUSIC', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034674', '430', 'MUS-X', 'ELECTRONIC MUSIC ENSEMBLE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('034739', '360', 'MUS-Y', 'HARPSICHORD', 'ARTS', 'ARTS', 'SB', 2, 4, ''),
('035161', '392', 'NELC-C', 'HIST OF MODERN NEAR EAST', 'HIST', 'LAS', 'SB', 3, 3, ''),
('035806', '102', 'NURS-A', 'DRUG DOSAGE CALC/INTR PHARMACL', 'NURS', 'NURS', 'SB', 2, 2, ''),
('035898', '105', 'NURS-B', 'MEDICAL TERMINOLOGY', 'NURS', 'NURS', 'SB', 1, 1, ''),
('035912', '216', 'NURS-B', 'PHARMACOLOGY', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035915', '230', 'NURS-B', 'DEVELOPMENTAL ISSUES & HEALTH', 'NURS', 'NURS', 'SB', 4, 4, ''),
('035916', '231', 'NURS-B', 'COMM SKILL FOR HLTH PROFSNL', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035917', '232', 'NURS-B', 'INTRO TO DISCIPLINE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035918', '233', 'NURS-B', 'HEALTH AND WELLNESS', 'NURS', 'NURS', 'SB', 4, 4, ''),
('035919', '244', 'NURS-B', 'COMPREHENSIVE HLTH ASSESSMENT', 'NURS', 'NURS', 'SB', 2, 2, ''),
('035920', '245', 'NURS-B', 'HEALTH ASSESSMENT: PRACTICUM', 'NURS', 'NURS', 'SB', 2, 2, ''),
('035922', '248', 'NURS-B', 'SCI & TECHNOLOGY OF NURSING', 'NURS', 'NURS', 'SB', 2, 2, ''),
('035923', '249', 'NURS-B', 'SCI & TECHNOLOGY NURS: PRACT', 'NURS', 'NURS', 'SB', 2, 2, ''),
('035925', '251', 'NURS-B', 'LIFE SPAN DEV PRACTICUM', 'NURS', 'NURS', 'SB', 1, 1, ''),
('035930', '304', 'NURS-B', 'PROFESSIONAL NURSING SEMINAR I', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035941', '403', 'NURS-B', 'GERONTOLOGICAL NURSING', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035943', '404', 'NURS-B', 'PROFESSIONAL NURS SEMINAR II', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035997', '574', 'NURS-F', 'PRIMARY HLTH CARE NURS-ADULTS', 'NURS', 'NURS', 'SB', 3, 3, ''),
('035999', '578', 'NURS-F', 'PRIMARY HLTH CARE NRS-FAMILIES', 'NURS', 'NURS', 'SB', 5, 5, ''),
('036018', '351', 'NURS-H', 'ALT IN NEURO-PSY HLTH', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036019', '352', 'NURS-H', 'ALT IN NEURO-PSY: PRACTICUM', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036020', '353', 'NURS-H', 'ALTERATIONS IN HEALTH I', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036021', '354', 'NURS-H', 'ALT IN HLTH I: PRACTICUM', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036022', '355', 'NURS-H', 'DATA ANALYSIS/PRACT & RESEARCH', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036023', '361', 'NURS-H', 'ALTERATIONS IN HEALTH II', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036024', '362', 'NURS-H', 'ALT IN HLTH II: PRACTICUM', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036025', '363', 'NURS-H', 'THE DEVELOPING FAMILY & CHILD', 'NURS', 'NURS', 'SB', 4, 4, ''),
('036026', '364', 'NURS-H', 'DEVELOPING FAM/CHILD:PRACTICUM', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036027', '365', 'NURS-H', 'NURSING RESEARCH', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036069', '457', 'NURS-J', 'INTROD TO PSYCHIATRIC NURSING', 'NURS', 'NURS', 'SB', 3, 6, ''),
('036071', '459', 'NURS-J', 'COMMUNITY HEALTH NURSING', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036076', '192', 'NURS-K', 'TOPICS IN NURSING', 'NURS', 'NURS', 'SB', 1, 3, ''),
('036077', '300', 'NURS-K', 'TRANSCULTURAL HEALTH CARE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036078', '301', 'NURS-K', 'COMPLEMENTARY HEALTH THERAPIES', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036079', '302', 'NURS-K', 'GERIATRIC PHARMACOLOGY', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036082', '401', 'NURS-K', 'INTEGRATIVE HEALTH', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036089', '421', 'NURS-K', 'AMER HLTH CARE: INTL EXPRNCE', 'NURS', 'NURS', 'SB', 2, 3, ''),
('036101', '486', 'NURS-K', 'BALANCNG CAREGIVNG OPPRESS SYS', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036102', '486', 'NURS-K', 'TRANSFRMNG NEGATIVE ENVIRNMNTS', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036105', '490', 'NURS-K', 'CI ELECTIVE', 'NURS', 'NURS', 'SB', 1, 6, ''),
('036106', '492', 'NURS-K', 'NURS. ELECTIVE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036276', '500', 'NURS-R', 'NURSING RESEARCH METHODS I', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036294', '470', 'NURS-S', 'RESTORATIVE HLTH FOR SYSTEMS', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036295', '471', 'NURS-S', 'RESTORATIVE HLTH: PRACTICUM', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036296', '472', 'NURS-S', 'HEALTH OF THE COMMUNITY', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036297', '473', 'NURS-S', 'HLTH OF THE COMMUNITY: PRACT', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036298', '474', 'NURS-S', 'APPLIED HEALTH CARE ETHICS', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036299', '481', 'NURS-S', 'NURSING MANAGEMENT', 'NURS', 'NURS', 'SB', 2, 2, ''),
('036300', '482', 'NURS-S', 'NURSING MANAGEMENT: PRACTICUM', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036301', '483', 'NURS-S', 'CLIN NURS PRACTICE CAPSTONE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036302', '484', 'NURS-S', 'RESEARCH UTILIZATION SEMINAR', 'NURS', 'NURS', 'SB', 1, 1, ''),
('036303', '485', 'NURS-S', 'PROF GROWTH & EMPOWERMENT', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036324', '221', 'NURS-W', 'NATIVE USE OF HERBS', 'NURS', 'NURS', 'SB', 1, 1, ''),
('036325', '402', 'NURS-W', 'SEM: WOMEN AS AGENTS OF CHANGE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('036331', '515', 'NURS-Y', 'PATHOPHYSIOLOGY', 'NURS', 'NURS', 'SB', 4, 4, ''),
('036385', '492', 'NURS-Z', 'INDIVIDUAL STUDY IN NURSING', 'NURS', 'NURS', 'SB', 1, 1, ''),
('036469', '274', 'OLS', 'APPLIED LEADERSHIP', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036483', '331', 'OLS', 'OCCUPL SAFETY & HEALTH', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036486', '351', 'OLS', 'INNOVATION & ENTREPRENEUURSHIP', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036499', '378', 'OLS', 'LABOR/MANAGEMENT RELATIONS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036522', '484', 'OLS', 'LDRSHP STRAT FOR QUAL/PRDCTY', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036523', '485', 'OLS', 'LEADERSHIP FOR TEAM DEV', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036525', '487', 'OLS', 'LEADERSHIP PHILOSOPHY', 'SWT', 'SWT', 'SB', 3, 3, ''),
('036527', '49100', 'OLS', 'INTERNSHIP PROGRAM', 'SWT', 'SWT', 'SB', 1, 3, ''),
('036529', '49900', 'OLS', 'SPECIAL TOPICS IN OLS', 'SWT', 'SWT', 'SB', 1, 3, ''),
('036768', '499', 'OVST-G', 'OVST AT UNIV GUADALAJARA', 'OVST', 'LAS', 'SB', 0, 3, ''),
('036833', '396', 'OVST-U', 'OVERSEAS STUDY IN ULSTER', 'OVST', 'LAS', 'SB', 1, 15, ''),
('036848', '496', 'OVST-Y', 'OVERSEAS STUDY/NON-IU PROGRAM', 'OVST', 'LAS', 'SB', NULL, NULL, ''),
('037717', '100', 'PHIL-P', 'INTRODUCTION TO PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037722', '105', 'PHIL-P', 'THINKING AND REASONING', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037723', '110', 'PHIL-P', 'INTRODUCTION TO PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037730', '140', 'PHIL-P', 'INTRODUCTION TO ETHICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037732', '150', 'PHIL-P', 'ELEMENTARY LOGIC', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037737', '200', 'PHIL-P', 'PROBLEMS OF PHILOSOPHY', 'PHIL', 'LAS', 'SB', 1, 1, ''),
('037738', '201', 'PHIL-P', 'ANCIENT GREEK PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037739', '202', 'PHIL-P', 'MEDIEVAL TO MODERN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037748', '214', 'PHIL-P', 'MODERN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037756', '250', 'PHIL-P', 'INTRODUCTORY SYMBOLIC LOGIC', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037770', '283', 'PHIL-P', 'NON WESTERN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037778', '304', 'PHIL-P', '19TH CENTURY PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037784', '310', 'PHIL-P', 'TOPICS IN METAPHYSICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037785', '311', 'PHIL-P', 'METAPHYSICS OF PHYSICAL NATURE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037786', '312', 'PHIL-P', 'TOPICS IN THEORY OF KNOWLEDGE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037789', '315', 'PHIL-P', 'HISTORY OF MEDIEVAL PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037799', '325', 'PHIL-P', 'SOCIAL PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037813', '340', 'PHIL-P', 'CLASSICS IN ETHICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037815', '342', 'PHIL-P', 'PROBLEMS OF ETHICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037817', '344', 'PHIL-P', 'CLASSICS IN SOC & POLIT PHIL 2', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037830', '360', 'PHIL-P', 'INTRO TO PHILOSOPHY OF MIND', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037831', '361', 'PHIL-P', 'THEORIES OF SELF-REALIZATION I', 'PHIL', 'LAS', 'SB', 2, 3, ''),
('037832', '362', 'PHIL-P', 'THEOR OF SELF-REALIZATION II', 'PHIL', 'LAS', 'SB', 2, 2, ''),
('037841', '371', 'PHIL-P', 'PHILOSOPHY OF RELIGION', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037844', '374', 'PHIL-P', 'EARLY CHINESE PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037847', '381', 'PHIL-P', 'RELIGION & HUMAN EXPERIENCE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037849', '383', 'PHIL-P', 'TOPICS IN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037853', '393', 'PHIL-P', 'BIOMEDICAL ETHICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037854', '394', 'PHIL-P', 'FEMINIST PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('037856', '399', 'PHIL-P', 'READING FOR HONORS', 'PHIL', 'LAS', 'SB', 0, 0, ''),
('037879', '436', 'PHIL-P', 'THE PHENOMENOLOGICAL MOVEMENT', 'PHIL', 'LAS', 'SB', 4, 4, ''),
('037900', '490', 'PHIL-P', 'READINGS IN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 1, 3, ''),
('037902', '495', 'PHIL-P', 'SR PROSEMINAR IN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 3, 4, ''),
('037904', '497', 'PHIL-P', 'INTERNSHIP IN PHILOSOPHY', 'PHIL', 'LAS', 'SB', 1, 3, ''),
('038121', '130', 'PHSL-P', 'HUMAN BIOLOGY', 'BIOL', 'LAS', 'SB', 4, 4, ''),
('038125', '204', 'PHSL-P', 'ELEMENTARY HUMAN PHYSIOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('038132', '261', 'PHSL-P', 'HUMAN ANATOMY & PHYSIOLOGY 1', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('038133', '262', 'PHSL-P', 'HUMAN ANATOMY & PHYSIOLOGY 2', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('038414', '100', 'PHYS-P', 'PHYSICS IN THE MODERN WORLD', 'PHYS', 'LAS', 'SB', 5, 5, ''),
('038419', '105', 'PHYS-P', 'BASIC PHYSICS OF SOUND', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038430', '130', 'PHYS-P', 'INTRO TO ELECTRONICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038438', '201', 'PHYS-P', 'GENERAL PHYSICS 1', 'PHYS', 'LAS', 'SB', 3, 5, ''),
('038439', '202', 'PHYS-P', 'GENERAL PHYSICS 2', 'PHYS', 'LAS', 'SB', 3, 5, ''),
('038447', '221', 'PHYS-P', 'PHYSICS 1', 'PHYS', 'LAS', 'SB', 5, 5, ''),
('038448', '222', 'PHYS-P', 'PHYSICS 2', 'PHYS', 'LAS', 'SB', 5, 5, ''),
('038455', '282', 'PHYS-P', 'SOLID STATE ELECTRONICS LAB I', 'PHYS', 'LAS', 'SB', 1, 2, ''),
('038459', '303', 'PHYS-P', 'DIGITAL ELECTRONICS', 'PHYS', 'LAS', 'SB', 4, 4, ''),
('038465', '309', 'PHYS-P', 'MODERN PHYSICS LABORATORY', 'PHYS', 'LAS', 'SB', 2, 3, ''),
('038466', '310', 'PHYS-P', 'ENVIRONMENTAL PHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038467', '311', 'PHYS-P', 'ELECTRICITY & MAGNETISM 1', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038470', '321', 'PHYS-P', 'TECHNIQUES THEORETICAL PHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038472', '323', 'PHYS-P', 'PHYSICS 3', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038473', '324', 'PHYS-P', 'PHYSICS 4', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038474', '331', 'PHYS-P', 'THEORY OF ELECT & MAGNET I', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038476', '334', 'PHYS-P', 'FUNDAMENTALS OF OPTICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038477', '335', 'PHYS-P', 'FUNDAMENTALS OF OPTICS LAB', 'PHYS', 'LAS', 'SB', 1, 1, ''),
('038478', '340', 'PHYS-P', 'THERMODYNAMC &STATISTICAL MECH', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038482', '405', 'PHYS-P', 'READINGS IN PHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038494', '441', 'PHYS-P', 'ANALYTICAL MECHANICS 1', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038498', '453', 'PHYS-P', 'INTROD TO QUANTUM MECHANICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038502', '457', 'PHYS-P', 'SOLID STATE PHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038596', '405', 'PHYS-S', 'READINGS IN PHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('038597', '406', 'PHYS-S', 'RESEARCH & INTERNSHIP PROJECTS', 'PHYS', 'LAS', 'SB', 1, 3, ''),
('038600', '105', 'PHYS-T', 'PHYS SCIENCES FOR ELEM TCHRS', 'PHYS', 'LAS', 'SB', 4, 4, ''),
('038651', '101', 'PLSC-B', 'PLANT BIOLOGY', 'BIOL', 'LAS', 'SB', 5, 5, ''),
('038962', '100', 'POLS-Y', 'AMERICAN POLIT CONTROVERSIES', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038963', '101', 'POLS-Y', 'INTRO TO POLITICAL SCIENCE', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038965', '103', 'POLS-Y', 'INTRO TO AMERICAN POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038968', '107', 'POLS-Y', 'INTRO TO COMPARATIVE POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038969', '109', 'POLS-Y', 'INTRO TO INTL RELATIONS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038986', '221', 'POLS-Y', 'LEG RES/WRITING/PARALEGAL STDS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('038987', '222', 'POLS-Y', 'LITIGATION FOR PARALEG STDS I', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039002', '301', 'POLS-Y', 'POL PARTIES & INTEREST GROUPS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039005', '304', 'POLS-Y', 'AMERICAN CONSTITUTIONAL LAW I', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039007', '306', 'POLS-Y', 'STATE POLITICS IN THE U S', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039012', '311', 'POLS-Y', 'DEMOCRACY & NATIONAL SECURITY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039018', '317', 'POLS-Y', 'VOTING/ELECTNS/PUBLIC OPINION', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039019', '318', 'POLS-Y', 'THE AMERICAN PRESIDENCY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039020', '319', 'POLS-Y', 'THE UNITED STATES CONGRESS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039025', '324', 'POLS-Y', 'WOMEN AND POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039028', '327', 'POLS-Y', 'GENDER POLITICS IN THE U.S.', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039031', '330', 'POLS-Y', 'CENTRAL AMERICAN POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039036', '335', 'POLS-Y', 'WEST EUROPEAN POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039038', '337', 'POLS-Y', 'LATIN AMERICAN POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039044', '343', 'POLS-Y', 'DEV PROBS IN THIRD WORLD', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039051', '350', 'POLS-Y', 'POLITICS OF THE EUROPEAN UNION', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039058', '362', 'POLS-Y', 'INTL POLITICS SELECTED REGIONS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039067', '371', 'POLS-Y', 'WORKSHOP IN INTL TOPICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039072', '376', 'POLS-Y', 'INTL POLITICAL ECONOMY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039075', '379', 'POLS-Y', 'ETHICS AND POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039076', '380', 'POLS-Y', 'SELECTED TOPICS DEMOCRATIC GOV', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039077', '381', 'POLS-Y', 'HISTORY OF POLITICAL THEORY 1', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039078', '382', 'POLS-Y', 'MODERN POLITICAL THOUGHT', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039079', '383', 'POLS-Y', 'AMERICAN POLITICAL IDEAS 1', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039080', '384', 'POLS-Y', 'DEV AMERICAN POLITICAL THOUGHT', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039084', '388', 'POLS-Y', 'MARXIST THEORY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039094', '397', 'POLS-Y', 'LOGIC OF POLITICAL INQUIRY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039102', '480', 'POLS-Y', 'UNDERGRAD READINGS IN POL SCI', 'POLS', 'LAS', 'SB', 1, 3, ''),
('039103', '481', 'POLS-Y', 'FIELD EXPERIENCE IN POL SCI', 'POLS', 'LAS', 'SB', 1, 3, ''),
('039108', '490', 'POLS-Y', 'SENIOR SEM IN POLIT SCIENCE', 'POLS', 'LAS', 'SB', 3, 3, ''),
('039804', '101', 'PSY-P', 'INTRODUCTORY PSYCHOLOGY 1', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039806', '103', 'PSY-P', 'GENERAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039809', '106', 'PSY-P', 'GENERAL PSYCHOLOGY-HONORS', 'PSY', 'LAS', 'SB', 4, 4, ''),
('039817', '190', 'PSY-P', 'APPLYING PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039827', '211', 'PSY-P', 'METH OF EXPERIMNTL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039831', '216', 'PSY-P', 'LIFE SPAN DEVELOPMENTAL PSYCH', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039834', '220', 'PSY-P', 'DRUGS AND BEHAVIOR', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039836', '233', 'PSY-P', 'INDUSTRIAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039840', '241', 'PSY-P', 'FUNCT ANALYSIS OF BEHAVIOR 1', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039851', '303', 'PSY-P', 'HEALTH PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039855', '316', 'PSY-P', 'PSY OF CHILDHOOD & ADOLESCENCE', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039857', '319', 'PSY-P', 'THE PSYCHOLOGY OF PERSONALITY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039858', '320', 'PSY-P', 'SOCIAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039859', '321', 'PSY-P', 'GROUP DYNAMICS', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039862', '324', 'PSY-P', 'ABNORMAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039863', '325', 'PSY-P', 'THE PSYCHOLOGY OF LEARNING', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039864', '326', 'PSY-P', 'BEHAVIORAL NEUROSCIENCE', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039865', '327', 'PSY-P', 'THE PSYCHOLOGY OF MOTIVATION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039867', '329', 'PSY-P', 'SENSATION AND PERCEPTION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039870', '331', 'PSY-P', 'PSYCHOLOGY OF AGING', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039871', '332', 'PSY-P', 'SUICIDE AND DEPRESSION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039873', '335', 'PSY-P', 'COGNITIVE PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039874', '336', 'PSY-P', 'PSYCHOLOGICAL TESTS&INDIV DIFF', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039879', '354', 'PSY-P', 'STATISTICAL ANAL IN PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039885', '390', 'PSY-P', 'SPECIAL TOPICS IN PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039886', '391', 'PSY-P', 'PSYCHOLOGY OF GND & ETHNICITY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039892', '403', 'PSY-P', 'NON-EXPERIMNTL RSCH MTH IN PSY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039909', '420', 'PSY-P', 'ADV LAB IN COMMUN PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039910', '421', 'PSY-P', 'LABORATORY IN SOC PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039912', '423', 'PSY-P', 'HUMAN NEUROPSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039918', '429', 'PSY-P', 'LAB IN DEVELOPMENTAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039919', '430', 'PSY-P', 'BEHAVIOR MODIFICATION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039921', '434', 'PSY-P', 'COMMUNITY PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039922', '435', 'PSY-P', 'LAB IN HUMAN LEARNING', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039924', '438', 'PSY-P', 'LANGUAGE AND COGNITION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039928', '443', 'PSY-P', 'COGNITIVE DEVELOPMENT', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039930', '445', 'PSY-P', 'PREVENTIVE PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039940', '459', 'PSY-P', 'HIST & SYSTEMS OF PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039941', '460', 'PSY-P', 'WOMEN: A PSYCHOLOGICAL PERSP', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039948', '495', 'PSY-P', 'READINGS AND RES IN PSYCHOLOGY', 'PSY', 'LAS', 'SB', 1, 3, ''),
('039950', '499', 'PSY-P', 'HONORS THESIS RESEARCH', 'PSY', 'LAS', 'SB', 1, 12, ''),
('039961', '510', 'PSY-P', 'PRINCIPLES OF RESEARCH IN PSY', 'PSY', 'LAS', 'SB', 2, 2, ''),
('039971', '524', 'PSY-P', 'PSYCHOPATHOLOGY & AGING', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039979', '532', 'PSY-P', 'ADVANCED PSYCHOLOGY OF AGING', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039981', '537', 'PSY-P', 'PROGRAM EVALUATION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039986', '547', 'PSY-P', 'LIFE-SPAN COGNITIVE DEV', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039987', '548', 'PSY-P', 'LIFE-SPAN SOCIAL DEVELOPMENT', 'PSY', 'LAS', 'SB', 3, 3, ''),
('039988', '550', 'PSY-P', 'CROSS-CULTURAL PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('040031', '655', 'PSY-P', 'INTRO TO MULTIVARIATE STATS', 'PSY', 'LAS', 'SB', 3, 3, ''),
('040049', '691', 'PSY-P', 'PRACT IN APPLIED PSYCHOLOGY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('040060', '895', 'PSY-P', 'RESEARCH', 'PSY', 'LAS', 'SB', 1, 3, ''),
('040061', '898', 'PSY-P', 'MASTERS DEGREE RESEARCH', 'PSY', 'LAS', 'SB', 1, 3, ''),
('040073', '302', 'PSY-W', 'PSY OF GENDER & ETHNICITY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('040472', '152', 'REL-R', 'RELIGIONS OF THE WEST', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('040473', '153', 'REL-R', 'RELIGIONS OF ASIA', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('040475', '160', 'REL-R', 'RELIGION AND AMERICAN CULTURE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('040485', '210', 'REL-R', 'INTR OLD TESTAMNT/HEBREW BIBLE', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('040489', '220', 'REL-R', 'INTRO TO NEW TESTAMENT', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('040540', '335', 'REL-R', 'RELIGION IN EARLY AMERICA', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('041784', '101', 'SLIS-L', 'THE LIBRARY AS AN INFO SYSTEM', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041820', '520', 'SLIS-L', 'BIBLIOGRAPHIC ACCESS & CONTROL', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041824', '524', 'SLIS-L', 'INFORMATION SOURCES & SERVICES', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041827', '526', 'SLIS-L', 'LIBRARY AUTOMATION', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041829', '527', 'SLIS-L', 'MGMT OF LIBRARIES & INFO CTRS', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041831', '528', 'SLIS-L', 'COLLECTION DEVELOPMENT & MGMT', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041834', '533', 'SLIS-L', 'LIB MATL CHILD&YOUNG ADULTS', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('041850', '553', 'SLIS-L', 'SCHL LIBRARY MEDIA SPECIALIST', 'SLIS', 'SLIS', 'SB', 3, 3, ''),
('042195', '161', 'SOC-S', 'PRINCIPLES OF SOCIOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042197', '163', 'SOC-S', 'SOCIAL PROBLEMS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042198', '164', 'SOC-S', 'MARITAL RELATIONS & SEXUALITY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042210', '230', 'SOC-S', 'SOCIETY & THE INDIVIDUAL', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042217', '258', 'SOC-S', 'ELEMENTARY SOCIAL RSRCH TECHN', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042219', '260', 'SOC-S', 'ANALYSIS OF SOCIAL ISSUES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042222', '268', 'SOC-S', 'SEMINAR IN APPLIED SOCIAL RES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042232', '306', 'SOC-S', 'URBAN SOCIETY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042236', '310', 'SOC-S', 'THE SOC OF WOMEN & MEN IN US', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042241', '314', 'SOC-S', 'SOCIAL ASPECTS HLTH & MEDICINE', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042243', '316', 'SOC-S', 'THE FAMILY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042244', '317', 'SOC-S', 'INEQUALITY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042258', '328', 'SOC-S', 'JUVENILE DELINQUENCY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042262', '331', 'SOC-S', 'SOCIOLOGY OF AGING', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042266', '335', 'SOC-S', 'RACE AND ETHNIC RELATIONS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042267', '336', 'SOC-S', 'SOC ASPECTS MASS COMMUNICATION', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042269', '338', 'SOC-S', 'GENDER ROLES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042274', '348', 'SOC-S', 'INTROD TO SOCIOLOGICAL THEORY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042275', '349', 'SOC-S', 'TOPICS IN CONTEMP SOC THEORY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042277', '351', 'SOC-S', 'SOCIAL STATISTICS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042281', '360', 'SOC-S', 'TOPICS IN SOCIAL POLICY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042283', '362', 'SOC-S', 'WORLD SOCIETIES & CULTURES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042293', '405', 'SOC-S', 'SELECTED SOCIAL INSTITUTIONS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042297', '410', 'SOC-S', 'TOPICS IN SOCIAL ORGANIZATION', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042318', '431', 'SOC-S', 'TOPICS IN SOCIAL PSYCHOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042329', '441', 'SOC-S', 'TOPICS IN SOCIAL THEORY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042331', '444', 'SOC-S', 'RESEARCH CONFERENCE PRACTICUM', 'SOC', 'LAS', 'SB', 1, 1, ''),
('042342', '468', 'SOC-S', 'RESEARCH PROBLEMS IN SOCIOLOGY', 'SOC', 'LAS', 'SB', 1, 3, ''),
('042348', '494', 'SOC-S', 'FIELD EXPERIENCE IN SOCIOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042349', '495', 'SOC-S', 'INDIV READNGS/RES IN SOCIOLOGY', 'SOC', 'LAS', 'SB', 1, 3, ''),
('042358', '503', 'SOC-S', 'SEM IN COMPLEX ORGANIZATIONS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042392', '560', 'SOC-S', 'TOPICS IN SOCIOLOGY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042449', '338', 'SOC-W', 'SOCIOLOGY OF GENDER ROLES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('042587', '101', 'SPAN-S', 'ELEMENTARY SPANISH I', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042588', '102', 'SPAN-S', 'ELEMENTARY SPANISH 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042610', '160', 'SPAN-S', 'SPAN FOR HEALTH CARE PERSONNEL', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042615', '203', 'SPAN-S', 'SECOND YEAR SPANISH 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042616', '204', 'SPAN-S', 'SECOND YEAR SPANISH 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042643', '275', 'SPAN-S', 'HISPANIC CULTR & CONVERSATION', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042650', '303', 'SPAN-S', 'THE HISPANIC WORLD', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042651', '305', 'SPAN-S', 'MASTERPIECES OF SPANISH LIT 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042652', '306', 'SPAN-S', 'MASTERPIECES OF SPANISH LIT 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042657', '313', 'SPAN-S', 'WRITING SPANISH 1', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042658', '314', 'SPAN-S', 'WRITING SPANISH 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042662', '317', 'SPAN-S', 'SPANISH CONVERSATION & DICTION', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042669', '325', 'SPAN-S', 'SPANISH FOR TEACHERS', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042673', '363', 'SPAN-S', 'INTRO A LA CULTURA HISPANICA', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042684', '411', 'SPAN-S', 'SPAIN:  THE CULTURAL CONTEXT', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042689', '416', 'SPAN-S', 'MODERN HISPANIC POETRY', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042729', '470', 'SPAN-S', 'WOMAN & HISPANIC LITERATURE', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042731', '472', 'SPAN-S', 'SPANISH AMERICAN LITERATURE 2', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042743', '494', 'SPAN-S', 'INDIV RDGS IN HISPANIC STDS', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042744', '495', 'SPAN-S', 'HISPANIC COLLOQUIUM', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('042745', '496', 'SPAN-S', 'FOREIGN STUDY IN SPANISH', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('043138', '121', 'SPCH-S', 'PUBLIC SPEAKING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043139', '122', 'SPCH-S', 'INTERPERSONAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043160', '205', 'SPCH-S', 'INTRO TO SPEECH COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043165', '223', 'SPCH-S', 'BUSINESS & PROF COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043169', '228', 'SPCH-S', 'ARGUMENTATION & DEBATE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043170', '229', 'SPCH-S', 'DISCUSSION & GROUP METHODS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043202', '321', 'SPCH-S', 'RHETORIC & MODERN DISCOURSE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043203', '322', 'SPCH-S', 'ADVANCED INTERPERSONAL COMM', 'SPCH', 'ARTS', 'SB', 3, 3, ''),
('043205', '324', 'SPCH-S', 'PERSUASIVE SPEAKING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043212', '336', 'SPCH-S', 'CURR TOPICS IN COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043236', '380', 'SPCH-S', 'NONVERBAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043245', '405', 'SPCH-S', 'HUMAN COMMUNICATION THEORY', 'SPCH', 'ARTS', 'SB', 3, 3, ''),
('043256', '427', 'SPCH-S', 'CROSS CULTURAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043265', '440', 'SPCH-S', 'ORGANIZATIONAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043270', '444', 'SPCH-S', 'POLITICAL COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043275', '450', 'SPCH-S', 'GENDER AND COMMUNICATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043298', '490', 'SPCH-S', 'PROF PRACT INTRSHP:', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('043520', '162', 'SPEA-E', 'ENVIRONMENT AND PEOPLE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043593', '555', 'SPEA-E', 'TPCS IN ENVIRONMENTAL SCIENCES', 'SPEA', 'SPEA', 'SB', 2, 3, ''),
('043613', '120', 'SPEA-H', 'CONTEMPORARY HEALTH ISSUES', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043616', '320', 'SPEA-H', 'HEALTH SYSTEMS ADMINISTRATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043619', '352', 'SPEA-H', 'HLTH FINANCE & BUDGETING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043621', '354', 'SPEA-H', 'HEALTH ECONOMICS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043627', '402', 'SPEA-H', 'HOSPITAL ADMINISTRATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043628', '411', 'SPEA-H', 'LONG TERM CARE ADMINISTRATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043634', '423', 'SPEA-H', 'DISEASE VECTOR CONTROL', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043645', '455', 'SPEA-H', 'TOPICS IN PUBLIC HEALTH', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043653', '474', 'SPEA-H', 'HEALTH ADMINISTRATION SEMINAR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043655', '501', 'SPEA-H', 'U.S. HLTH CARE:SYS/POL/ETH CHL', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043657', '503', 'SPEA-H', 'PRIN OF HLTH SYS MGMT/POL DEV', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043663', '509', 'SPEA-H', 'FIN MGT PRINC OF HEALTHCARE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043664', '510', 'SPEA-H', 'HEALTH SERVICES FINANCIAL MGMT', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043666', '514', 'SPEA-H', 'HEALTH ECONOMICS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043668', '516', 'SPEA-H', 'HLTH SERV DELIVERY & THE LAW', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043669', '517', 'SPEA-H', 'MANAGERIAL EPIDEMIOLOGY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043673', '601', 'SPEA-H', 'HOSP ORGANIZATION & MGMT', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043676', '604', 'SPEA-H', 'AMB CARE/MANAGED CARE PROGRAMS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043701', '101', 'SPEA-J', 'AMERICAN CRIMINAL JUSTICE SYS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043706', '201', 'SPEA-J', 'THEORET FOUNDATN CRIM JUST POL', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043708', '202', 'SPEA-J', 'CRIM JUSTICE DATA', 'SPEA', 'SPEA', 'SB', 0, 3, ''),
('043709', '260', 'SPEA-J', 'TOPICS IN CRIMINAL JUSTICE', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043711', '301', 'SPEA-J', 'SUBSTANTIVE CRIMINAL LAW', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043712', '302', 'SPEA-J', 'CRIMINAL LAW ADMINISTRATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043713', '303', 'SPEA-J', 'EVIDENCE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043714', '304', 'SPEA-J', 'CORRECTIONAL LAW', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043715', '305', 'SPEA-J', 'JUVENILE JUSTICE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043716', '306', 'SPEA-J', 'THE CRIMINAL COURTS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043718', '320', 'SPEA-J', 'CRIMINAL INVESTIGATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043719', '321', 'SPEA-J', 'AMERICAN POLICING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043720', '322', 'SPEA-J', 'INTRODUCTION TO CRIMINALISTICS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043724', '331', 'SPEA-J', 'CORRECTIONS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043733', '370', 'SPEA-J', 'SEMINAR IN CRIMINAL JUSTICE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043734', '376', 'SPEA-J', 'PRINCIPLES OF PUBLIC SAFETY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043735', '380', 'SPEA-J', 'INTERNSHIP IN CRIMINAL JUSTICE', 'SPEA', 'SPEA', 'SB', 1, 6, ''),
('043739', '439', 'SPEA-J', 'CRIME AND PUBLIC POLICY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043742', '460', 'SPEA-J', 'POLICE IN THE COMMUNITY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043743', '470', 'SPEA-J', 'SEMINAR IN CRIMINAL JUSTICE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043744', '480', 'SPEA-J', 'RESEARCH IN CRIMINAL JUSTICE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043749', '587', 'SPEA-J', 'CRIM VIOLATION: PROB & CHAR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043753', '300', 'SPEA-K', 'STATISTICAL TECHNIQUES', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043768', '550', 'SPEA-P', 'TOPICS IN PLANNING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043781', '321', 'SPEA-U', 'URBAN ANALYSIS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043786', '450', 'SPEA-U', 'TOPICS IN URBAN STUDIES', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043793', '170', 'SPEA-V', 'INTRO TO PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043795', '221', 'SPEA-V', 'NONPROFIT & VOLUNTARY SECTOR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043801', '252', 'SPEA-V', 'CAREER DEVELOPMENT', 'SPEA', 'SPEA', 'SB', 1, 1, ''),
('043805', '263', 'SPEA-V', 'PUBLIC MANAGEMENT', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043806', '264', 'SPEA-V', 'URBAN STRUCTURE AND POLICY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043819', '348', 'SPEA-V', 'MANAGEMENT SCIENCE', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043826', '362', 'SPEA-V', 'NONPROFIT MGMT & LEADERSHP', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043828', '365', 'SPEA-V', 'URBAN & REGIONAL PLANNING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043829', '366', 'SPEA-V', 'MANAGING BEHAVR IN PUBLIC ORG', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043832', '370', 'SPEA-V', 'RESEARCH MTHD & STAT MODELING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043833', '371', 'SPEA-V', 'FINANCING PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043834', '372', 'SPEA-V', 'GOVERNMENT FINANCE AND BUDGETS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043835', '373', 'SPEA-V', 'HUMAN RESOURCE MGMT PUB SECTOR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043837', '376', 'SPEA-V', 'LAW AND PUBLIC POLICY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043840', '380', 'SPEA-V', 'INTERNSHIP PUB & ENVIR AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 6, ''),
('043847', '390', 'SPEA-V', 'RDGS IN PUB & ENVIR AFFAIRS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043861', '432', 'SPEA-V', 'LABOR REL IN THE PUBLIC SECTOR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043877', '450', 'SPEA-V', 'CONTEM ISSUES IN PUBLIC AFF', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043883', '456', 'SPEA-V', 'TOPICS IN PUBLIC LAW', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043885', '458', 'SPEA-V', 'FUND DEV FOR NONPRFT ORG', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043903', '490', 'SPEA-V', 'DIR RES PUB & ENVIR AFFAIRS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043906', '500', 'SPEA-V', 'QUANT TOOLS FOR PUB AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043909', '502', 'SPEA-V', 'PUBLIC MANAGEMENT', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043912', '504', 'SPEA-V', 'PUBLIC ORGANIZATION', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043915', '506', 'SPEA-V', 'STAT ANALYS FOR EFF DEC MAKING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043922', '512', 'SPEA-V', 'PUBLIC POLICY PROCESS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043927', '517', 'SPEA-V', 'PUBLIC MANAGEMENT ECONOMICS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043933', '522', 'SPEA-V', 'HUM RESOURCE MGT IN NONPROFITS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043935', '523', 'SPEA-V', 'CIVIL SOCIETY & PUBLIC POLICY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043939', '525', 'SPEA-V', 'MGMT IN THE NONPROFIT SECTOR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043941', '526', 'SPEA-V', 'FIN MGMT FOR NONPROFIT ORG', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043944', '529', 'SPEA-V', 'SEM IN CAREER & PROF DEV', 'SPEA', 'SPEA', 'SB', 1, 1, ''),
('043955', '540', 'SPEA-V', 'LAW AND PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043957', '542', 'SPEA-V', 'GOV. FIN. ACCTING & REPORTING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043965', '550', 'SPEA-V', 'TOPICS IN PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043972', '556', 'SPEA-V', 'TOPICS IN HUMAN SERV ADMIN', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043975', '560', 'SPEA-V', 'PUBLIC FINANCE & BUDGETING', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043976', '561', 'SPEA-V', 'HRM IN THE PUBLIC SECTOR', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043978', '563', 'SPEA-V', 'SEM IN THE PLANNING PROCESS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043986', '570', 'SPEA-V', 'PUBLIC SECTOR LABOR RELATIONS', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('043989', '572', 'SPEA-V', 'URBAN TOPICS', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043992', '575', 'SPEA-V', 'COMP PUBLIC MGMT & ADMIN', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043995', '578', 'SPEA-V', 'INTRO COMPARATIVE & INTL AFF', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('043997', '580', 'SPEA-V', 'READINGS IN PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('044001', '584', 'SPEA-V', 'EMERGENCY SERVICES SYSTEMS', 'SPEA', 'SPEA', 'SB', 2, 2, ''),
('044002', '585', 'SPEA-V', 'PRACTICUM IN PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 6, ''),
('044008', '590', 'SPEA-V', 'RESEARCH IN PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('044011', '595', 'SPEA-V', 'MANAGERIAL DECISION-MAKING', 'SPEA', 'SPEA', 'SB', 1, 3, ''),
('044013', '600', 'SPEA-V', 'CAPSTONE IN PUBL & ENV AFFAIR', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('044014', '601', 'SPEA-V', 'WORKSHOP IN PUBLIC AFFAIRS', 'SPEA', 'SPEA', 'SB', 1, 6, ''),
('044063', '680', 'SPEA-V', 'RSRCH DESIGN & METH PUB AFF', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('044671', '100', 'SWK-S', 'TPCS IN SWK: UND DIVERS PL SOC', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044674', '141', 'SWK-S', 'INTRO TO SOCIAL WORK', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044678', '210', 'SWK-S', 'INTRO CURRENT SOC WELFARE SERV', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044720', '501', 'SWK-S', 'PROF SOCIAL WORK: AN IMMERSION', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044721', '502', 'SWK-S', 'RESEARCH I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044722', '503', 'SWK-S', 'HUMAN BEHAV & SOC ENVIRON I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044724', '504', 'SWK-S', 'PROF PRACTICE SKILLS I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044726', '505', 'SWK-S', 'SOC POLICY ANALYSIS & PRACTICE', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044733', '513', 'SWK-S', 'HUMAN BEHAVIOR IN SOC ENVIR II', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044734', '514', 'SWK-S', 'PRACTICE INDIVID & FAMILIES I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044744', '542', 'SWK-S', 'SWK PRACT II: ORG COMM & SOC', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044747', '550', 'SWK-S', 'SOCIAL WORK PRACTICUM I', 'SWK', 'SWK', 'SB', 4, 4, ''),
('044750', '555', 'SWK-S', 'SOCIAL WORK PRACTICUM I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044758', '600', 'SWK-S', 'SEMINAR IN SOC WORK', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044775', '623', 'SWK-S', 'PRACTICE RSCH INTEG SEM I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044797', '651', 'SWK-S', 'SWK PRACT II: INTERPERSONAL', 'SWK', 'SWK', 'SB', 4, 4, ''),
('044799', '652', 'SWK-S', 'SWK PRACTICUM III', 'SWK', 'SWK', 'SB', 5, 5, ''),
('044805', '661', 'SWK-S', 'EXECUTIVE LEADERSHIP PRACTICE', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044806', '662', 'SWK-S', 'FISCAL MGMT; MKTG; RESRCE DEV', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044809', '664', 'SWK-S', 'DESIGNING TRANSFORMATION PRGM', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044812', '673', 'SWK-S', 'COUPLES & FAMILIES INTERV I', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044814', '682', 'SWK-S', 'ASSESS MENTAL HLTH & ADDICTNS', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044815', '683', 'SWK-S', 'COMM-BASED PRAC MTL HLTH&ADDIC', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044816', '684', 'SWK-S', 'MTL HLTH&ADDICT PRAC WITH GRPS', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044817', '685', 'SWK-S', 'MENT HTLH/ADDICT PRACT IND/FAM', 'SWK', 'SWK', 'SB', 3, 3, '');
INSERT INTO `course` (`CourseID`, `CourseNo`, `SubjectArea`, `CourseTitle`, `DeptID`, `CollegeID`, `CampusID`, `MinCredits`, `MaxCredits`, `CourseDescription`) VALUES
('044818', '686', 'SWK-S', 'SWK PRACTICE: ADDICTIONS', 'SWK', 'SWK', 'SB', 3, 3, ''),
('044819', '690', 'SWK-S', 'INDEPENDENT STUDY', 'SWK', 'SWK', 'SB', 1, 6, ''),
('045210', '10500', 'TECH', 'INTR TO ENGINEERING TECHNOLOGY', 'SWT', 'SWT', 'SB', 3, 3, ''),
('045264', '287', 'TEL-R', 'PROCESS & EFFECTS OF MASS COMM', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045283', '404', 'TEL-R', 'TOPICAL SEMINAR IN TELECOMM', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045376', '273', 'TEL-T', 'MEDIA PROGRAM DESIGN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045378', '283', 'TEL-T', 'INTRO TO PROD TECHNQS & PRAC', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045394', '331', 'TEL-T', 'SCRIPT WRITING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045396', '336', 'TEL-T', 'DIGITAL VIDEO PRODUCTION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045429', '416', 'TEL-T', 'PROGRAM ANALYSIS AND CRITICISM', 'TEL', 'ARTS', 'SB', 3, 3, ''),
('045439', '430', 'TEL-T', 'TOPICAL SEM IN DESIGN & PROD', 'TEL', 'ARTS', 'SB', 3, 3, ''),
('045441', '434', 'TEL-T', 'ADVANCED PRODUCTION WORKSHOP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045452', '452', 'TEL-T', 'TOPICAL SEM IN DESIGN & PROD', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045459', '498', 'TEL-T', 'PROJECTS IN TELECOMMUNICATIONS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045775', '100', 'THTR-T', 'INTRODUCTION TO THEATRE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045779', '115', 'THTR-T', 'ORAL INTERPRETATION 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045780', '120', 'THTR-T', 'ACTING I: FUNDMNTLS OF ACTING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045784', '150', 'THTR-T', 'FUND PLAY STRUCTURE & ANALYSIS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045792', '220', 'THTR-T', 'ACTING II: SCENE STUDY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045795', '223', 'THTR-T', 'VOCAL & PHYSICAL PREPARATION I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045796', '224', 'THTR-T', 'VOCAL & PHYS PREPARATION II', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045797', '225', 'THTR-T', 'STAGECRAFT 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045798', '228', 'THTR-T', 'DESIGN FOR THE THEATRE', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045800', '230', 'THTR-T', 'STAGE COSTUMING 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045808', '290', 'THTR-T', 'HIST & DESIGN OF STAGE MAKEUP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045809', '300', 'THTR-T', 'MUSICAL THEATRE WORKSHOP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045818', '326', 'THTR-T', 'SCENE DESIGN I', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045819', '327', 'THTR-T', 'PERIOD STYLES', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045820', '330', 'THTR-T', 'RENDERING', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('045822', '335', 'THTR-T', 'STAGE LIGHTING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045825', '340', 'THTR-T', 'DIRECTING 1', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045827', '349', 'THTR-T', 'SPEECH & THEATRE PRACTICUM', 'ARTS', 'ARTS', 'SB', 1, 3, ''),
('045834', '392', 'THTR-T', 'THEATRE INTERNSHIP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045837', '405', 'THTR-T', 'STAGE MANAGEMENT', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045846', '427', 'THTR-T', 'DESIGN STUDIO', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045851', '431', 'THTR-T', 'ON-CAMERA TECHNIQUES', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045852', '433', 'THTR-T', 'COSTUME DESIGN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045855', '438', 'THTR-T', 'LIGHTING DESIGN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045857', '442', 'THTR-T', 'DIRECTING II: ADV DIRECTING', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('045871', '471', 'THTR-T', 'HISTORY OF THE THEATRE 2', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('045875', '483', 'THTR-T', 'TOPICS IN THEATRE AND DRAMA', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('045876', '490', 'THTR-T', 'INDPT STDY IN THTR & DRAMA', 'ARTS', 'ARTS', 'SB', 1, 6, ''),
('046621', '385', 'WOST-A', 'TOPICS ANTHROPOLOGY:MOTHERHOOD', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046622', '260', 'WOST-B', 'WOMEN MEN & SOCIETY MODERN EUR', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046623', '391', 'WOST-E', 'WOMEN IN DEVELOPING COUNTRIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046624', '260', 'WOST-H', 'HISTORY OF AMERICAN WOMEN', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046625', '207', 'WOST-L', 'WOMEN AND LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('046626', '200', 'WOST-N', 'THE BIOLOGY OF WOMEN', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('046627', '391', 'WOST-P', 'PSYCH OF GND RACE & ETHNICITY', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046628', '394', 'WOST-P', 'FEMINIST PHILOSOPHY', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046629', '460', 'WOST-P', 'WOMEN: A PSYCHOLOGICAL PERSP', 'PSY', 'LAS', 'SB', 3, 3, ''),
('046630', '310', 'WOST-S', 'SOCIOLOGY OF WOMEN IN AMERICA', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046631', '338', 'WOST-S', 'SOCIOLOGY OF GENDER ROLES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('046632', '349', 'WOST-S', 'TOPICS: FEMINIST THEORY', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046633', '410', 'WOST-S', 'TPCS:GENDER INEQUALITY IN WORK', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046634', '100', 'WOST-W', 'GENDER STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046641', '201', 'WOST-W', 'WOMEN IN CULTURE-INTRO TO WOST', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046643', '207', 'WOST-W', 'WOMEN AND LITERATURE', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046646', '220', 'WOST-W', 'NEW VIEWS ON GENDER', 'WOST', 'LAS', 'SB', 1, 1, ''),
('046647', '221', 'WOST-W', 'NATIVE USES OF HERBS', 'WOST', 'LAS', 'SB', 1, 1, ''),
('046648', '222', 'WOST-W', 'BIOLOGY OF WOMEN', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046650', '240', 'WOST-W', 'TPCS FEMINISM: SOC SCI PERSPEC', 'ENG', 'LAS', 'SB', 3, 3, ''),
('046651', '250', 'WOST-W', 'INTERDIS VIEWS OF WOMEN', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046652', '260', 'WOST-W', 'HISTORY OF AMERICAN WOMEN', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046654', '299', 'WOST-W', 'RES METHODS IN WOMEN\'S STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046655', '300', 'WOST-W', 'TOPICS IN WOMEN\'S STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046656', '301', 'WOST-W', 'INTERNAT PERSP WOMEN', 'SOC', 'LAS', 'SB', 3, 3, ''),
('046657', '302', 'WOST-W', 'TOPICS IN GENDER STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046660', '321', 'WOST-W', 'GENDER POLITICS', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046662', '338', 'WOST-W', 'SOCIOLOGY OF GENDER ROLES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046664', '342', 'WOST-W', 'PROBLEMS OF ETHICS', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046666', '378', 'WOST-W', 'STUDIES IN WOMEN & LITERATURE', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046667', '394', 'WOST-W', 'FEMINIST PHILOSOPHY', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046669', '400', 'WOST-W', 'TOPICS IN WOMEN\'S STUDIES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('046671', '402', 'WOST-W', 'SEMINAR IN GENDER STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046674', '460', 'WOST-W', 'WOMEN: A PSYCHOLOGICAL PERSP', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046675', '480', 'WOST-W', 'WOST PRACTICUM', 'WOST', 'LAS', 'SB', 3, 3, ''),
('046677', '495', 'WOST-W', 'READINGS & RSCH IN GENDER STDS', 'WOST', 'LAS', 'SB', 1, 6, ''),
('046686', '327', 'WOST-Y', 'GENDER POLITICS', 'WOST', 'LAS', 'SB', 3, 3, ''),
('078400', '515', 'SWK-S', 'SOCIAL POLICY AND SERVICES', 'SWK', 'SWK', 'SB', 3, 3, ''),
('078479', '190', 'LSTU-L', 'LABOR STUDIES DEGREE', 'LSTU', 'LSTU', 'SB', 1, 1, ''),
('078480', '576', 'MATH-M', 'FORECASTING', 'MATH', 'LAS', 'SB', 3, 3, ''),
('078490', '367', 'ENG-W', 'WRITING FOR MULTIPLE MEDIA', 'ENG', 'LAS', 'SB', 3, 3, ''),
('078539', '359', 'EDUC-H', 'HEALTH & WELLNESS FOR TEACHERS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('078617', '359', 'EDUC-M', 'HEALTH & WELLNESS FOR TEACHERS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('078638', '330', 'CJUS-P', 'CRIMINAL JUSTICE ETHICS', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('078648', '498', 'OVST-Z', 'OVST AT EICHSTAETT GERMANY', 'OVST', 'LAS', 'SB', 3, 15, ''),
('078650', '272', 'SPEA-V', 'TERRORISM AND PUBLIC POLICY', 'SPEA', 'SPEA', 'SB', 3, 3, ''),
('078989', '240', 'NURS-BE', 'BE: BSN 4TH SEM CLINICAL BLOCK', 'NURS', 'NURS', 'SB', 5, 5, ''),
('078990', '350', 'NURS-BE', 'BE: BSN 5TH SEM CLINICAL BLOCK', 'NURS', 'NURS', 'SB', 10, 10, ''),
('078991', '360', 'NURS-BE', 'BE: BSN 6TH SEM CLINICAL BLOCK', 'NURS', 'NURS', 'SB', 12, 12, ''),
('078992', '480', 'NURS-BE', 'BE: BSN 8TH SEM CLINICAL BLOCK', 'NURS', 'NURS', 'SB', 12, 12, ''),
('078993', '201', 'EDUC-BE', 'BE: BEGINING FOUNDATIONS BLOCK', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('078994', '311', 'EDUC-BE', 'BE: INTERMED BLOCK: EARLY/ELEM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('078995', '314', 'EDUC-BE', 'BE: INTERMED BLOCK: SECONDARY', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('078997', '102', 'MATH-BE', 'BE: MATH-ENGLISH CONNECTION 2', 'MATH', 'LAS', 'SB', 6, 6, ''),
('078998', '102', 'ENG-BE', 'BE: ENGLISH-MATH CONNECTION 2', 'ENG', 'LAS', 'SB', 6, 6, ''),
('078999', '101', 'MATH-BE', 'BE: MATH-ENGLISH CONNECTION 1', 'MATH', 'LAS', 'SB', 7, 7, ''),
('079000', '101', 'ENG-BE', 'BE: ENGLISH-MATH CONNECTION 1', 'ENG', 'LAS', 'SB', 7, 7, ''),
('079001', '330', 'EDUC-BE', 'BE: INFANT LEARNING & LAB', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079002', '335', 'EDUC-BE', 'BE: INTRO EARLY CHILDHOOD ED', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079003', '337', 'EDUC-BE', 'BE: CLASSROOM LEARNING ENVIRON', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079004', '340', 'EDUC-BE', 'BE: EL ED: LANG ARTS/READ/MATH', 'EDUC', 'EDUC', 'SB', 8, 8, ''),
('079005', '339', 'EDUC-BE', 'BE: ELEM ED: TEACH LANG ARTS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079006', '325', 'EDUC-BE', 'BE: ELEM ED: SOC STUD/SCIENCE', 'EDUC', 'EDUC', 'SB', 5, 5, ''),
('079007', '341', 'EDUC-BE', 'BE: ELEM ED: TEACH READING II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079008', '485', 'EDUC-BE', 'BE: ELEM ED: PRINC/AUDIOVISUAL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079009', '441', 'EDUC-BE', 'BE: SECONDARY: SOCIAL STUDIES', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079010', '445', 'EDUC-BE', 'BE: SECONDARY: FOREIGN LANG', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079011', '446', 'EDUC-BE', 'BE: SECONDARY: SCIENCE', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079012', '452', 'EDUC-BE', 'BE: SECONDARY: ENGLISH', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079013', '457', 'EDUC-BE', 'BE: SECONDARY: MATHEMATICS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079014', '487', 'EDUC-BE', 'BE: SECONDARY: PRINC/AUDIOVIS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079015', '205', 'EDUC-BE', 'BE: SPEC ED: INTRO/EXCEPTIONAL', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079016', '525', 'EDUC-BE', 'BE: READING PRACT/WORKSHOP', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('079017', '244', 'NURS-BE', 'BE: RN-BSN HEALTH ASSESSMENT', 'NURS', 'NURS', 'SB', 4, 4, ''),
('079018', '470', 'NURS-BE', 'BE: RESTORATIVE HEALTH', 'NURS', 'NURS', 'SB', 5, 5, ''),
('079019', '100', 'EDUC-BE', 'BE: THRESHOLD SEM/INTRO TEACH', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('079020', '535', 'EDUC-BE', 'BE: SPECIAL EDUCATION COHORT', 'EDUC', 'EDUC', 'SB', 7, 7, ''),
('079094', '498', 'OVST-X', 'OVST AT TOULON FRANCE', 'OVST', 'LAS', 'SB', 3, 15, ''),
('079112', '388', 'OLS', 'LEADERSHIP THROUGH TEAMS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('079120', '106', 'GEOL-T', 'EARTH&SPACE SCI FOR ELEM TCHRS', 'PHYS', 'LAS', 'SB', 4, 4, ''),
('079124', '345', 'IT', 'AUTOMATIC ID AND DATA CAPTURE', 'SWT', 'SWT', 'SB', 3, 3, ''),
('079205', '356', 'EDUC-M', 'HEALTH & WELLNESS FOR TEACHERS', 'EDUC', 'EDUC', 'SB', 2, 2, ''),
('079243', '329', 'POLS-Y', 'RACIAL & ETHNIC POLITICS USA', 'POLS', 'LAS', 'SB', 3, 3, ''),
('079249', '297', 'ECET', 'ELECTRONIC PROTOTYPE DEVELPMNT', 'SWT', 'SWT', 'SB', 4, 4, ''),
('079252', '38600', 'OLS', 'LEADERSHIP ORGANIZATL CHANGE', 'SWT', 'SWT', 'SB', 3, 3, ''),
('079334', '207', 'PHIL-P', 'INFORMATION & COMPUTER ETHICS', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('079336', '300', 'BIOL-E', 'VASCULAR PLANTS', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('079337', '373', 'BIOL-E', 'ENTOMOLOGY', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('079338', '383', 'BIOL-E', 'LABORATORY IN ENTOMOLOGY', 'BIOL', 'LAS', 'SB', 2, 2, ''),
('079353', '103', 'ENG-BE', 'BE: HIST-ENGLISH CONNECTION 1', 'ENG', 'LAS', 'SB', 6, 6, ''),
('079354', '103', 'HIST-BE', 'BE: HIST-ENGLISH CONNECTION 1', 'HIST', 'LAS', 'SB', 6, 6, ''),
('079445', '516', 'SWK-S', 'SOCL WRK PRAC 2:ORG', 'SWK', 'SWK', 'SB', 0, 0, ''),
('079487', '101', 'EDUC-BE', 'BE: THRESHOLD SEMINAR/READING', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('079492', '372', 'EDUC-E', 'LANGUAGE ARTS AND READING III', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('079555', '453', 'AST-A', 'TOPICAL ASTROPHYSICS', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('079570', '365', 'PSY-P', 'PSYCHOLOGY OF RELIGION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('079734', '300', 'DHYG-H', 'CLINICAL PRACTICE A-S', 'DENT', 'DENT', 'SB', 3, 3, ''),
('079765', '44000', 'OLS', 'LEADING WITH INTEGRITY', 'SWT', 'SWT', 'SB', 3, 3, ''),
('079766', '450', 'OLS', 'PROJECT MGMT FOR ORG & HR DEV', 'SWT', 'SWT', 'SB', 3, 3, ''),
('079992', '511', 'LBST-D', 'MLS HUMANITIES ELECTIVE', 'LBST', 'LAS', 'SB', 3, 3, ''),
('079994', '513', 'LBST-D', 'MLS SCIENCE ELECTIVE', 'LBST', 'LAS', 'SB', 3, 3, ''),
('079995', '514', 'LBST-D', 'STUDY ABROAD', 'LBST', 'LAS', 'SB', 3, 6, ''),
('079996', '594', 'LBST-D', 'LIBERAL STDS DIRECTED READINGS', 'LBST', 'LAS', 'SB', 1, 3, ''),
('079997', '596', 'LBST-D', 'LIBERAL STUDIES INDPT RESEARCH', 'LBST', 'LAS', 'SB', 1, 3, ''),
('079998', '601', 'LBST-D', 'GRAD PROJECT PROPOSAL SEMINAR', 'LBST', 'LAS', 'SB', 3, 3, ''),
('079999', '110', 'COAS-Q', 'INTRO TO INFORMATION LITERACY', 'COAS', 'LAS', 'SB', 1, 1, ''),
('080000', '602', 'LBST-D', 'GRADUATE PROJECT', 'LBST', 'LAS', 'SB', 3, 6, ''),
('080030', '145', 'MU', 'ELECTIVE VOICE-BETHEL COLLEGE', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('080031', '290', 'MU', 'CONCERT CHOIR - BETHEL COLLEGE', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080085', '33200', 'IT', 'PURCH; INV & WAREHOUSE MGMT', 'SWT', 'SWT', 'SB', 3, 3, ''),
('080136', '219', 'GEOL-G', 'METEOROLOGY', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('080191', '107', 'BI', 'ANATOMY & PHYSIOLOGY - ICN', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('080192', '302', 'FINA-S', 'PRINTMAKING II BOOK ARTS', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('080195', '490', 'INTL-I', 'INTL STUDIES CAPSTONE SEMINAR', 'INTL', 'LAS', 'SB', 3, 3, ''),
('080232', '371', 'EDUC-E', 'LANGUAGE ARTS AND READING II', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('080521', '120', 'THTR-D', 'BALLET I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080522', '130', 'THTR-D', 'FLAMENCO I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080523', '140', 'THTR-D', 'JAZZ DANCE I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080539', '150', 'THTR-D', 'MIDDLE EASTERN DANCE I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080540', '220', 'THTR-D', 'BALLET II', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080542', '250', 'THTR-D', 'MIDDLE EASTERN DANCE 2', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('080543', '485', 'THTR-T', 'CAPSTONE PROJECT', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('080614', '323', 'FINA-P', 'INTRODUCTION TO WEB DESIGN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('080615', '324', 'FINA-P', 'INTERMEDIATE WEB DESIGN', 'ARTS', 'ARTS', 'SB', 5, 5, ''),
('080616', '324', 'FINA-S', 'PAGE LAYOUT AND DESIGN', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('080617', '323', 'FINA-S', 'INTERMEDIATE PHOTOSHOP', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('080654', '190', 'CHEM-N', 'THE NATURAL WORLD', 'CHEM', 'LAS', 'SB', 3, 3, ''),
('080659', '190', 'PSY-B', 'HUMAN BEHAVIOR&SOC INSTITUTION', 'PSY', 'LAS', 'SB', 3, 3, ''),
('080664', '322', 'FINA-S', 'COLOR PHOTOGRAPHY', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('080665', '190', 'HIST-T', 'LITERARY&INTELLECTUAL TRADITNS', 'HIST', 'LAS', 'SB', 3, 3, ''),
('080668', '583', 'CSCI-B', 'GAME PROGRAMMING AND DESIGN', 'CSCI', 'LAS', 'SB', 3, 3, ''),
('080679', '190', 'CMLT-T', 'LITERARY & INTELLECTUAL TRAD', 'WLAN', 'LAS', 'SB', 3, 3, ''),
('080681', '190', 'ENG-T', 'LITERARY & INTELLECTUAL TRAD', 'ENG', 'LAS', 'SB', 3, 3, ''),
('080682', '190', 'GEOL-N', 'THE NATURAL WORLD', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('080683', '190', 'PHIL-T', 'LITERARY & INTELLECTUAL TRAD', 'PHIL', 'LAS', 'SB', 3, 3, ''),
('080684', '190', 'POLS-B', 'HUMAN BEHAVR&SOCIAL INSTITUTNS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('080685', '190', 'SOC-B', 'HUMAN BEHAVR&SOCIAL INSTITUTNS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('080690', '190', 'PHYS-N', 'THE NATURAL WORLD', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('080692', '305', 'EDUC-BE', 'BE:  BLOCK 2 EC/MC RULES 2002', 'EDUC', 'EDUC', 'SB', 9, 0, ''),
('080693', '372', 'EDUC-BE', 'BE:  BLOCK 3 EC/MC RULES 2002', 'EDUC', 'EDUC', 'SB', 9, 0, ''),
('080851', '523', 'EDUC-K', 'INCLUSIVE STRAT-ELEM CLASSROOM', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('080874', '116', 'SPAN-S', 'ELEMENTARY SPAN 2 WITH REVIEW', 'WLAN', 'LAS', 'SB', 4, 4, ''),
('080876', '488', 'POLS-Y', 'STUDY ABROAD IN POLITICAL SCI', 'POLS', 'LAS', 'SB', 3, 3, ''),
('080889', '131', 'ENG-BE', 'BE: ENG-W 131 & COAS-Q 110', 'ENG', 'LAS', 'SB', 4, 4, ''),
('080901', '333', 'PSY-P', 'SOCIAL PSYCHOLOGY OF MUSIC', 'PSY', 'LAS', 'SB', 3, 3, ''),
('081078', '190', 'FINA-A', 'ART', 'ARTS', 'ARTS', 'SB', 0, 0, ''),
('081080', '190', 'THTR-A', 'ART', 'ARTS', 'ARTS', 'SB', 0, 0, ''),
('081081', '111', 'MATH-M', 'MATHEMATICS IN THE WORLD', 'MATH', 'LAS', 'SB', 3, 3, ''),
('081085', '190', 'MUS-A', 'ARTS', 'ARTS', 'ARTS', 'SB', 0, 0, ''),
('081254', '305', 'FINA-S', 'GRAPHIC DESIGN INTERNSHIP', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('081267', '524', 'EDUC-K', 'INTEGRTN STUDNT LEARNING NEEDS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('081319', '357', 'MUS-U', 'MUSIC IN SPECIAL EDUCATION', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('081371', '306', 'FINA-A', 'WOMEN IN THE VISUAL ARTS', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('081373', '329', 'FINA-S', 'MANUSCRIPT ARTS & ILLUMINATION', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('081374', '110', 'THTR-D', 'SOCIAL DANCE', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('081375', '230', 'THTR-D', 'FLAMENCO DANCE II', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('081376', '240', 'THTR-D', 'JAZZ DANCE II', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('081481', '104', 'ENG-BE', 'BE: W130 WRITING/X101 READING', 'ENG', 'LAS', 'SB', 6, 6, ''),
('081482', '104', 'EDUC-BE', 'BE: W130 WRITING/X101 READING', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('081669', '115', 'THTR-D', 'MODERN DANCE I', 'ARTS', 'ARTS', 'SB', 2, 2, ''),
('081670', '215', 'THTR-D', 'MODERN DANCE II', 'THTR', 'ARTS', 'SB', 2, 2, ''),
('081705', '473', 'PHYS-P', 'INTRODUCTION TO STRING THEORY', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('081797', '190', 'ENG-A', 'ART; AESTHETICS; & CREATIVITY', 'ENG', 'LAS', 'SB', 3, 3, ''),
('081884', '443', 'MUS-B', 'JUNIOR BARITON HORN RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('081885', '444', 'MUS-B', 'SENIOR BARITONE HORN RECITAL', 'ARTS', 'ARTS', 'SB', 1, 1, ''),
('081892', '190', 'AST-N', 'THE NATURAL WORLD', 'PHYS', 'LAS', 'SB', 3, 3, ''),
('081945', '191', 'ENG-T', 'WRLD LITERARY&INTELCTL TRAD I', 'ENG', 'LAS', 'SB', 3, 3, ''),
('081949', '399', 'PSY-B', 'HUMAN BEHAVIOR&SOCL INSTITUTNS', 'PSY', 'LAS', 'SB', 3, 3, ''),
('081972', '510', 'EDUC-G', 'INTR TO ALCOHOL&DRUG COUNSELNG', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('081973', '511', 'EDUC-G', 'SCREEN/ASSESSMNT-ALC&DRUG PROB', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('081981', '399', 'FINA-A', 'ART; AESTHETICS AND CREATIVITY', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('081983', '409', 'FINA-A', 'CAPSTONE COURSE', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('081988', '190', 'MUS-T', 'LITERARY & INTELLECTL TRADITNS', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('081995', '199', 'GNST-G', 'LEARNING THROUGH ENGAGEMENT', 'SCS', 'SCSG', 'SB', 1, 3, ''),
('082004', '390', 'BIOL-N', 'THE NATURAL WORLD', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('082018', '399', 'SOC-B', 'HUMAN BEHAVR&SOCIAL INSTITUTNS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('082121', '190', 'BIOL-N', 'THE NATURAL WORLD', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('082158', '109', 'FINA-A', 'WAYS OF SEEING:VISUAL LITERACY', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('082171', '390', 'HIST-T', 'LITERARY & INTELLECTUAL TRAD', 'HIST', 'LAS', 'SB', 3, 3, ''),
('082223', '106', 'PHYS-S', 'CONTEMPORARY PHYSICS SEMINAR', 'PHYS', 'LAS', 'SB', 1, 1, ''),
('082306', '24500', 'MET', 'MANUFACTURING SYSTEMS', 'SWT', 'SWT', 'SB', 3, 3, ''),
('082374', '531', 'EDUC-BE', 'BE:TCH SEVERE HNDCP I & PRACT', 'EDUC', 'EDUC', 'SB', 4, 4, ''),
('082582', '220', 'BIOL-L', 'BIOSTATISTICS', 'BIOL', 'LAS', 'SB', 3, 3, ''),
('082588', '190', 'THTR-T', 'LIT & INTELLECTUAL TRADITIONS', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('082791', '504', 'NURS-N', 'LEADERSHP FOR ADV NURSNG PRACT', 'NURS', 'NURS', 'SB', 3, 3, ''),
('082811', '104', 'LSTU-L', 'INTRODUCTION TO LABOR HISTORY', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('083024', '190', 'ANTH-N', 'THE NATURAL WORLD', 'SOC', 'LAS', 'SB', 3, 3, ''),
('083070', '293', 'CMLT-C', 'HISTORY OF MOTION PICTURE I', 'ENG', 'LAS', 'SB', 3, 3, ''),
('083072', '297', 'CMLT-C', 'FILM GENRES', 'ENG', 'LAS', 'SB', 3, 3, ''),
('083130', '35100', 'IT', 'ADV INDUSTR SAFETY & HLTH MGMT', 'SWT', 'SWT', 'SB', 3, 3, ''),
('083191', '14300', 'MET', 'MATERIALS AND PROCESSES I', 'SWT', 'SWT', 'SB', 3, 3, ''),
('083194', '120', 'POLS-Y', 'PUBLIC AFFAIRS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083196', '357', 'POLS-Y', 'INTRO TO NONPROFIT MANAGEMENT', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083197', '358', 'POLS-Y', 'HUMAN BEHAVIOR&PUBLIC ORGNZTNS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083202', '501', 'POLS-Y', 'FUNDAMENTALS OF PUBLIC MGMNT', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083203', '503', 'POLS-Y', 'STATISTICS FOR PUBLIC MANAGMNT', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083206', '509', 'POLS-Y', 'INTERNATIONAL PUBLIC AFFAIRS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083210', '517', 'POLS-Y', 'CIVIC GROUPS AND PUBLIC POLICY', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083227', '320', 'BUS-H', 'SYSTEMS OF HLTH CARE DELIVERY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('083230', '402', 'BUS-H', 'HOSPITAL ORGANIZATION & MNGMNT', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('083243', '201', 'POLS-Y', 'CONTROVERSIES IN U.S. POLITICS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083244', '390', 'ENG-T', 'LITERARY&INTELLECTUAL TRADITNS', 'ENG', 'LAS', 'SB', 3, 3, ''),
('083314', '444', 'DHYG-H', 'BACHELOR DEGREE CAPSTONE CRSE', 'DENT', 'DENT', 'SB', 3, 3, ''),
('083315', '410', 'CJUS-P', 'ANALYSIS OF CRIME&PUBLIC PLCY', 'CJUS', 'LAS', 'SB', 3, 3, ''),
('083351', '423', 'FINA-S', 'LARGE FORMAT PHOTOGRAPHY', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('083408', '510', 'COAS-Q', 'TOPICS IN INFORMATION LITERACY', 'COAS', 'LAS', 'SB', 1, 1, ''),
('083413', '108', 'NURS-B', 'PERSONAL HEALTH AND WELLNESS', 'NURS', 'NURS', 'SB', 2, 2, ''),
('083421', '250', 'DHYG-H', 'LOCAL ANESTHESIA&PAIN CONTROL', 'DENT', 'DENT', 'SB', 2, 2, ''),
('083503', '502', 'POLS-Y', 'HLTH CARE DELIVERY PLCY ISSUES', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083507', '516', 'POLS-Y', 'LEGAL ASPECTS OF HLTH CARE DEL', 'POLS', 'LAS', 'SB', 3, 3, ''),
('083602', '205', 'PSY-P', 'UNDERSTANDING RSRCH IN PSYCH', 'PSY', 'LAS', 'SB', 3, 3, ''),
('083603', '460', 'SOC-S', 'TOPICS IN NON-WESTERN CULTURES', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084011', '135', 'EDUC-BE', 'EDUC-BE 135 THRESHOLD/COMP', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('084097', '366', 'NURS-H', 'NURSING CARE OF CHILDREN', 'NURS', 'NURS', 'SB', 3, 3, ''),
('084187', '135', 'ENG-BE', 'ENG-BE 135 COMP/THRESHOLD', 'ENG', 'LAS', 'SB', 6, 6, ''),
('084193', '304', 'FINA-S', 'DIGITAL IMAGING', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('084218', '367', 'NURS-H', 'NURS CARE OF CHILDREN:CLINICAL', 'NURS', 'NURS', 'SB', 2, 2, ''),
('084219', '368', 'NURS-H', 'NURS CARE CHILDBEARNG FAMILIES', 'NURS', 'NURS', 'SB', 2, 2, ''),
('084220', '369', 'NURS-H', 'NURS CARE CHILDBEARNG FAM:CLIN', 'NURS', 'NURS', 'SB', 1, 1, ''),
('084235', '625', 'POLS-Y', 'TOPICS IN PUBLIC AFFAIRS', 'POLS', 'LAS', 'SB', 3, 3, ''),
('084237', '594', 'POLS-Y', 'READINGS IN PUBLIC AFFAIRS', 'POLS', 'LAS', 'SB', 1, 3, ''),
('084350', '205', 'THTR-D', 'CHOREOGRAPHY', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('084351', '300', 'THTR-D', 'DANCE HISTORY', 'THTR', 'ARTS', 'SB', 3, 3, ''),
('084498', '370', 'LSTU-L', 'LABOR AND RELIGION', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('084504', '399', 'ENG-A', 'ART; AESTHETICS; & CREATIVITY', 'ENG', 'LAS', 'SB', 3, 3, ''),
('084511', '481', 'BUS-X', 'UGRD INTERNSHIP IN BUS & ECON', 'BUSE', 'BUSE', 'SB', 2, 6, ''),
('084512', '482', 'BUS-X', 'UGRD FIELD PROJECT IN BUS&ECON', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('084518', '201', 'SUST-S', 'FOUNDATIONS OF SUSTAINABILITY', 'SUST', 'LAS', 'SB', 3, 3, ''),
('084519', '360', 'SUST-S', 'TPCS IN SUSTAINABILITY STUDIES', 'SUST', 'LAS', 'SB', 3, 3, ''),
('084523', '491', 'SUST-S', 'INTERNSHIP IN SUSTAINABILITY', 'SUST', 'LAS', 'SB', 3, 3, ''),
('084524', '495', 'SUST-S', 'DRCTD READGS IN SUSTAINABILITY', 'SUST', 'LAS', 'SB', 3, 3, ''),
('084525', '496', 'SUST-S', 'RESEARCH IN SUSTAINABILITY', 'SUST', 'LAS', 'SB', 1, 3, ''),
('084533', '314', 'LSTU-L', 'ETHICAL DILEMMAS IN WORKPLACE', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('084613', '538', 'EDUC-K', 'ADV INSTR METHD SPEC EDUCATORS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('084728', '591', 'BUSB-X', 'GRAD INTERNSHIP: BUSINESS&ECON', 'BUSE', 'BUSE', 'SB', 2, 6, ''),
('084729', '592', 'BUSB-X', 'GRAD FIELD PROJ: BUSINESS&ECON', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('084815', '399', 'WGS-B', 'HUMAN BEHAVIOR AND SOCIAL INST', 'WOST', 'LAS', 'SB', 3, 3, ''),
('084816', '390', 'ANTH-A', 'ART; AESTHETICS; & CREATIVITY', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084820', '100', 'MUS-I', 'CULTURAL EVENTS ATTENDANCE', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('084831', '314', 'ANTH-A', 'QUALITATIVE RESEARCH METHODS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084832', '315', 'ANTH-A', 'QUANTITATIVE RESEARCH METHODS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084833', '399', 'ANTH-B', 'HUM BEHAVIOR&SOC INSTITUTIONS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084834', '390', 'ANTH-N', 'THE NATURAL WORLD', 'SOC', 'LAS', 'SB', 3, 3, ''),
('084965', '111', 'THTR-D', 'INTRODUCTION TO LATIN DANCE', 'THTR', 'ARTS', 'SB', 2, 2, ''),
('084994', '499', 'NURS-K', 'GENETICS AND GENOMICS', 'NURS', 'NURS', 'SB', 3, 3, ''),
('084995', '304', 'NURS-K', 'NURSING SPECIALTY ELECTIVE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('084996', '305', 'NURS-K', 'NEW INNOV IN HLTH&HLTH CARE', 'NURS', 'NURS', 'SB', 3, 3, ''),
('085100', '49600', 'TECH', 'SENIOR DESIGN PROJECT PROPOSAL', 'SWT', 'SWT', 'SB', 1, 1, ''),
('085101', '49700', 'TECH', 'SENIOR DESIGN PROJECT', 'SWT', 'SWT', 'SB', 2, 2, ''),
('085138', '353', 'SOC-S', 'QUALITATIVE RESEARCH METHODS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('085139', '354', 'SOC-S', 'QUANTITATIVE RESEARCH METHODS', 'SOC', 'LAS', 'SB', 3, 3, ''),
('085157', '480', 'WGS-W', 'WGS PRACTICUM', 'WOST', 'LAS', 'SB', 3, 3, ''),
('085310', '572', 'EDUC-E', 'ELEMENTARY SCHL SOC STDS CURR', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('085398', '502', 'EDUC-E', 'ELEM READING&LANG ARTS CURR I', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('085479', '544', 'EDUC-E', 'MATH METHODLGY RSCH TCHG EL SC', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('085537', '475', 'NURS-S', 'COMMUNITY HEALTH: RNBSN', 'NURS', 'NURS', 'SB', 3, 3, ''),
('085538', '487', 'NURS-S', 'NURSING MANAGEMENT:RNBSN', 'NURS', 'NURS', 'SB', 3, 3, ''),
('085544', '302', 'WGS-W', 'ISSUES IN GENDER STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('085571', '100', 'MATH-A', 'FUNDAMENTALS OF ALGEBRA', 'MATH', 'LAS', 'SB', 4, 4, ''),
('085632', '231', 'LSTU-L', 'GLOBALIZATION AND LABOR', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('085640', '100', 'CSCI-B', 'PROBLEM SOLVING USING CPTRS', 'CSCI', 'LAS', 'SB', 4, 4, ''),
('085668', '330', 'LSTU-L', 'GLOBAL COMPARS: EXPLES 3 CONTS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('085669', '331', 'LSTU-L', 'GLOBAL PBLMS:LOCAL SOLUTIONS', 'LSTU', 'LSTU', 'SB', 3, 3, ''),
('085779', '400', 'GNST-G', 'GENERAL STUDIES SENIOR CAP SEM', 'SCS', 'SCSG', 'SB', 1, 1, ''),
('085780', '481', 'GNST-G', 'PROFESSIONAL INTERNSHIP', 'SCS', 'SCSG', 'SB', 1, 6, ''),
('085786', '203', 'GNST-G', 'INTRO TO GENERAL STUDIES', 'SCS', 'SCSG', 'SB', 1, 1, ''),
('085824', '390', 'WGS-T', 'LITERARY & INTELLECTL TRADTNS', 'WOST', 'LAS', 'SB', 3, 3, ''),
('085936', '296', 'FINA-S', 'FUNDAMENTALS OF DIGITAL PHOTO', 'FINA', 'ARTS', 'SB', 3, 3, ''),
('085965', '190', 'BUS-B', 'PRINCIPLES OF BUSINESS ADMIN', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('086035', '12000', 'ECET', 'GATEWAY TO EET', 'SWT', 'SWT', 'SB', 3, 3, ''),
('086054', '12000', 'TECH', 'TECHNOLOGY AND THE INDIVIDUAL', 'SWT', 'SWT', 'SB', 3, 3, ''),
('086179', '102', 'INMS-F', 'FUNDAMENTAL 2D DESIGN', 'INMS', 'ARTS', 'SB', 3, 3, ''),
('086250', '333', 'EDUC-BE', 'EARLY CHILDHD CONCEN-REPA', 'EDUC', 'EDUC', 'SB', 6, 6, ''),
('086265', '190', 'PSY-T', 'LITERARY&INTELLECTUAL TRADITNS', 'PSY', 'LAS', 'SB', 3, 3, ''),
('086266', '210', 'ARTS-M', 'INTRO TO ARTS FUNDRAISING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('086268', '220', 'ARTS-M', 'ARTS MARKETING', 'ARTS', 'ARTS', 'SB', 3, 3, ''),
('086269', '110', 'ENG-E', 'DIVERSITY IN U.S. LITERATURE', 'ENG', 'LAS', 'SB', 3, 3, ''),
('086270', '471', 'PSY-P', 'LAB IN DEVELOPMTL & SOCIAL PSY', 'PSY', 'LAS', 'SB', 3, 3, ''),
('086376', '109', 'NURS-B', 'PERSONAL HEALTH AND WELLNESS', 'NURS', 'NURS', 'SB', 1, 1, ''),
('086377', '390', 'MUS-T', 'LITERARY & INTELLECTL TRADITNS', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('086380', '250', 'INMS-S', 'GRAPHIC DESIGN 1', 'INMS', 'ARTS', 'SB', 3, 3, ''),
('086406', '299', 'WGS-W', 'RES METHODS IN WOMEN\'S STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('086408', '402', 'WGS-W', 'SEMINAR IN GENDER STUDIES', 'WOST', 'LAS', 'SB', 3, 3, ''),
('086447', '590', 'BUSB-M', 'INDEPENDENT STUDY IN MARKETING', 'BUSE', 'BUSE', 'SB', 1, 3, ''),
('086552', '434', 'AHLT-R', 'ULTRASOUND PHYSICS 1', 'AHLT', 'AHLT', 'SB', 3, 3, ''),
('086607', '399', 'BUS-B', 'BUSINESS AND SOCIETY', 'BUSE', 'BUSE', 'SB', 3, 3, ''),
('086929', '390', 'MATH-N', 'THE NATURAL WORLD', 'MATH', 'LAS', 'SB', 3, 3, ''),
('087009', '170', 'THTR-D', 'TAP I', 'THTR', 'ARTS', 'SB', 2, 2, ''),
('087088', '102', 'SWK-S', 'DIVERSITY IN A PLURALISTIC SOC', 'SWK', 'SWK', 'SB', 3, 3, ''),
('087166', '190', 'WGS-T', 'LITERARY & INTELLECTL TRADITNS', 'WOST', 'LAS', 'SB', 3, 3, ''),
('087167', '447', 'MUS-M', 'ORCHESTRAL LITERATURE', 'MUS', 'ARTS', 'SB', 3, 3, ''),
('087694', '505', 'MUS-M', 'GRADUATE MUSIC HIST REVIEW I', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('087696', '501', 'MUS-P', 'GRADUATE PIANO REVIEW 1', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('087700', '503', 'MUS-T', 'GRADUATE AURAL SKILLS REVIEW 1', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('087702', '501', 'MUS-T', 'GRADUATE THEORY REVIEW 1', 'MUS', 'ARTS', 'SB', 0, 0, ''),
('11052', '302', 'WOST-W', 'Topics In Gender Studies', 'SOC', 'LAS', 'SB', 3, 3, ''),
('999999', '999', 'ADMIN-A', 'Sentinal Course used as a place holder', 'ADMIN', 'ADMIN', 'SB', 0, 0, ''),
('ADM000', '999', 'ADMIN-A', 'SAT Reasoning Test', 'ADMIN', 'ADMIN', 'SB', 1, 6, ''),
('ECON-E', '470', 'ECON-E', 'Introduction to Econometrics', 'MATH', 'LAS', 'SB', 3, 3, ''),
('ETS001', '101', 'ETS', 'Introduction to Educational Technology', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('ETS002', '201', 'ETS', 'Advanced ETS', 'EDUC', 'EDUC', 'SB', 3, 3, ''),
('H00001', '301', 'HIST-H', 'Honors Course Taught by History Faculty', 'HIST', 'LAS', 'SB', 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `course_pedagogical_capacity`
--

CREATE TABLE `course_pedagogical_capacity` (
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL,
  `Capacity` int(4) NOT NULL DEFAULT '30',
  `DateSet` date NOT NULL DEFAULT '2016-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `course_pedagogical_capacity`
--

INSERT INTO `course_pedagogical_capacity` (`CourseID`, `Capacity`, `DateSet`) VALUES
('011139', 25, '2016-01-01'),
('011151', 30, '2016-01-01'),
('011227', 30, '2016-06-01'),
('011231', 25, '2016-01-01'),
('011234', 25, '2016-01-01'),
('011246', 25, '2016-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `course_relationship`
--

CREATE TABLE `course_relationship` (
  `RelationshipID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a relationship',
  `Description` varchar(128) COLLATE latin1_bin DEFAULT NULL COMMENT 'Descriptive information about the relationship'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `course_relationship`
--

INSERT INTO `course_relationship` (`RelationshipID`, `Description`) VALUES
('COREQ', 'Co-requisite Course (Must be taken in the same semester)'),
('EQUIV', 'Equivalent course'),
('PREREQ', 'Prerequisite Course (Must be successfully complete before attempting this class)'),
('RECOMM', 'Recommended Course');

-- --------------------------------------------------------

--
-- Table structure for table `declared_program`
--

CREATE TABLE `declared_program` (
  `StudentID` varchar(15) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a student',
  `DegreeID` varchar(50) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the degree program that the student wants to pursue',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the department belongs',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the department that offers the degree program',
  `DeclaredAcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL COMMENT 'Year and semester of beginning of offering',
  `DeclaredDate` datetime DEFAULT NULL,
  `Active` tinyint(3) UNSIGNED DEFAULT '1' COMMENT 'Set to 0 for inactivating a record. 1 is activate a record. When a student change major, old record is inactivated and new record sets this value to 1. If the student does a double major, there 2 record for the same student with active flag in this table.',
  `GraduationTerm` varchar(4) COLLATE latin1_bin DEFAULT NULL COMMENT 'The academic term in which the student expects to graduates from the program'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `declared_program`
--

INSERT INTO `declared_program` (`StudentID`, `DegreeID`, `CampusID`, `CollegeID`, `DeptID`, `DeclaredAcademicTerm`, `DeclaredDate`, `Active`, `GraduationTerm`) VALUES
('1000', 'BSINFBS', 'SB', 'LAS', 'CSCI', '4048', '2004-09-01 00:00:00', 1, '4088'),
('1000', 'CSCIBS', 'SB', 'LAS', 'CSCI', '4052', '2005-09-01 00:00:00', 1, '4092'),
('1001', 'CSCIBS', 'SB', 'LAS', 'CSCI', '4052', NULL, 1, '4092'),
('1002', 'BIOCBS', 'SB', 'LAS', 'CHEM', '4052', NULL, 1, '4092'),
('1003', 'BSINFBS', 'SB', 'LAS', 'CSCI', '4052', NULL, 1, '4092'),
('1004', 'CSCIBS', 'SB', 'LAS', 'CSCI', '4052', '2014-06-01 00:00:00', 1, '4092'),
('1005', 'CSCIBS', 'SB', 'LAS', 'CSCI', '4052', NULL, 1, '4092'),
('1006', 'BSINFBS', 'SB', 'LAS', 'CSCI', '4052', NULL, 1, '4178'),
('1006', 'CSCIBS', 'SB', 'LAS', 'CSCI', '4052', '2013-06-01 00:00:00', 1, '4092');

-- --------------------------------------------------------

--
-- Table structure for table `degree_req_categories`
--

CREATE TABLE `degree_req_categories` (
  `CategoryID` varchar(25) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the category',
  `CategoryText` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Content of the category',
  `OrderOfAppearance` tinyint(4) NOT NULL DEFAULT '0',
  `MiscNotes` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Information or instruction about the category'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `degree_req_categories`
--

INSERT INTO `degree_req_categories` (`CategoryID`, `CategoryText`, `OrderOfAppearance`, `MiscNotes`) VALUES
('ADMISSION', 'Admission Requirement', 1, 'Each Degree will have one or more admission requirements.  At a minimum, These are the same as the college and campus admission requirements or they may be additional requirments.'),
('COGNATE', 'Degree Cognate Requirements', 9, ''),
('CREDIT', 'Total Credit Requirements', 2, 'This is often taken care of in the "Degree Program" table.'),
('DEG-CORE', 'Degree Core Requirements', 7, ''),
('DEG-ELECTIVE', 'Degree Elective Requirements', 8, ''),
('GEN-ELECTIVE', 'General Elective Requirements', 11, 'Courses that bring the total credits to meet the requirements.'),
('GENED', 'General Education Requirements', 3, ''),
('GRADUATION', 'Final Graduation Requirements', 12, 'Degrees may have one or more graduation requirements.  (e.g. examination, portfolio, recital, etc)'),
('LANGUAGE', 'Foreign Language Requirements', 4, ''),
('MATH', 'Mathematics Requirements', 5, ''),
('MISC', 'MISC Requirements', 13, 'Who knows what the faculty will think of next.'),
('SCIENCE', 'Science Requirements', 6, ''),
('TRACK', 'Degree Track or Concentration Requirements', 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `degree_type`
--

CREATE TABLE `degree_type` (
  `DegreeTypeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the degree type',
  `DegreeTypeDescription` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Information or instruction about the degree type'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `degree_type`
--

INSERT INTO `degree_type` (`DegreeTypeID`, `DegreeTypeDescription`) VALUES
('AA', 'Associate of Arts'),
('AS', 'Associate of Science'),
('BA', 'Bachelor of Arts'),
('BFA', 'Bachelor of Fine Arts'),
('BM', 'Bachelor of Music'),
('BS', 'Bachelor of Science'),
('BSED', 'BS Education'),
('BSN', 'Bachelor of Nursing'),
('CERT', 'Certificate'),
('COGNATE', 'Informatics Cognate'),
('MA', 'Master of Arts'),
('MFA', 'Master of Fine Arts'),
('MINOR', 'Minor'),
('MS', 'Master of Science'),
('PHD', 'Doctor of Philosophy'),
('TRACK', 'Concentration Track');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the department',
  `Name` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Full name of the department',
  `Address1` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Building number, street name',
  `Address2` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `City` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `State` char(2) COLLATE latin1_bin DEFAULT NULL,
  `Zip` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Usually 5 digits',
  `Phone` varchar(12) COLLATE latin1_bin DEFAULT NULL,
  `URL` varchar(255) COLLATE latin1_bin DEFAULT NULL COMMENT 'Web page of the department',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the department belongs'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DeptID`, `Name`, `Address1`, `Address2`, `City`, `State`, `Zip`, `Phone`, `URL`, `CollegeID`, `CampusID`) VALUES
('ADMIN', 'ADMIN', 'Administration Building', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ADMIN', 'SB'),
('ADMIN_CLAS', 'CLAS Administraion', 'Wiekamp Hall 3300', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('AHLT', 'AHLT', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'AHLT', 'SB'),
('ARTS', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('BIOL', 'Biological Sciences', '1700 Mishawaka Ave.', 'Northside Hall', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~majors/biosci.shtml', 'LAS', 'SB'),
('BUSE', 'BUSE', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'BUSE', 'SB'),
('CHEM', 'Chemistry', '051 Northside Hall', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46639', '574-520-', 'http://www.iusb.edu/~chem/', 'LAS', 'SB'),
('CJUS', 'Criminal Justice', 'Wiekamp Hall', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('COAS', 'COAS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('CSCI', 'Computer and Information Sciences', '300 Northside Hall', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-5521', 'www.cs.iusb.edu', 'LAS', 'SB'),
('DENT', 'DENT', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46639', '574-520-', 'www.iusb.edu/~', 'DENT', 'SB'),
('ECON', 'Economics', NULL, NULL, NULL, NULL, '', '', NULL, 'LAS', 'SB'),
('EDUC', 'EDUC', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'EDUC', 'SB'),
('ENG', 'English', 'Wiekamp Hall 3115/3127.', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'http://www.iusb.edu/~sbeng/', 'LAS', 'SB'),
('FINA', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('FOLK', 'FOLK', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('GEOL', 'GEOL (Physics)', '1700 Mishawaka Ave.', '', 'South Bend', 'IN', '46634', '574-520-XXXX', 'www.iusb.edu/~', 'LAS', 'SB'),
('HIST', 'History', 'Wiekamp Hall', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('HON', 'HON', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('INFO', 'INFORMATICS / CS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.informatics.iusb.edu', 'LAS', 'SB'),
('INMS', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('INTL', 'INTL', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('JOUR', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('LBST', 'LBST', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('LSTU', 'LSTU', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LSTU', 'SB'),
('MATH', 'Mathematical Sciences', 'Northside Hall 301', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'http://www.iusb.edu/~sbmath/', 'LAS', 'SB'),
('MUS', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('NDEG', 'Non Degree LAS', NULL, NULL, NULL, NULL, '', '', NULL, 'LAS', 'SB'),
('NURS', 'NURS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'NURS', 'SB'),
('OVST', 'OVST', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('PHIL', 'PHILOSOPHY', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('PHYS', 'Physics & Astronomy', '1700 Mishawaka Ave.', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'http://www.iusb.edu/~iusbphys/', 'LAS', 'SB'),
('POLS', 'POLITICAL SCIENCE', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('PSY', 'Psychology', 'Wiekamp Hall Rm. 2119', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'http://www.iusb.edu/~sbpsy/', 'LAS', 'SB'),
('SCS', 'General Studies', NULL, NULL, NULL, NULL, '', '', NULL, 'SCSG', 'SB'),
('SLIS', 'SLIS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'SLIS', 'SB'),
('SOC', 'Sociology and Anthropology', '1700 Mishawaka Ave', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'http://www.iusb.edu/~socanth/', 'LAS', 'SB'),
('SPCH', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('SPEA', 'SPEA', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'SPEA', 'SB'),
('SUST', 'SUST', 'Wiekamp Hall', '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('SWK', 'SWK', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'SWK', 'SB'),
('SWT', 'SWT', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'SWT', 'SB'),
('TEL', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('TEMPLATE', 'Template', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TEMPLATE', 'SB'),
('THTR', 'ARTS', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'ARTS', 'SB'),
('UNDE', 'Undecided LAS', NULL, NULL, NULL, NULL, '', '', NULL, 'LAS', 'SB'),
('WLAN', 'WLAN', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB'),
('WOST', 'WOST', NULL, '1700 Mishawaka Ave.', 'South Bend', 'IN', '46634', '574-520-', 'www.iusb.edu/~', 'LAS', 'SB');

-- --------------------------------------------------------

--
-- Table structure for table `detailed_requirement`
--

CREATE TABLE `detailed_requirement` (
  `DetailedRequirementID` int(11) NOT NULL COMMENT 'Unique identification string of the detailed requirement',
  `RequirementID` int(11) NOT NULL DEFAULT '0' COMMENT 'Unique identification string of the requirement to which the detailed requirement belongs',
  `OrderOfAppearance` tinyint(4) NOT NULL DEFAULT '0',
  `DetailedRequirementText` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Content of the detailed requirement',
  `MinCreditsRequired` tinyint(4) DEFAULT '0' COMMENT 'Minimum of number of credit hours required',
  `MaxCreditsRequired` tinyint(4) DEFAULT '0' COMMENT 'Maximum of number of credit hours that student can take',
  `MiscNotes` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Information or instruction about the detailed requirement',
  `FootNote` varchar(250) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `detailed_requirement`
--

INSERT INTO `detailed_requirement` (`DetailedRequirementID`, `RequirementID`, `OrderOfAppearance`, `DetailedRequirementText`, `MinCreditsRequired`, `MaxCreditsRequired`, `MiscNotes`, `FootNote`) VALUES
(1, 1, 1, 'English Composition', 3, 3, '', NULL),
(2, 1, 2, 'Critical Thinking', 3, 3, '', NULL),
(3, 1, 3, 'Oral Communication', 3, 3, '', NULL),
(4, 1, 4, 'Visual Literacy', 3, 3, '', NULL),
(5, 1, 5, 'Quantitative Reasoning', 3, 3, ' Will be satisfied by math courses taken for the major', NULL),
(6, 1, 6, 'Information Literacy', 1, 1, ' Should be taken at the same time as English Composition', NULL),
(7, 1, 7, 'Computer Literacy', 3, 3, ' Will be satisfied by informatics courses taken for the major', NULL),
(8, 2, 1, 'The Natural World', 3, 3, ' Will be satisfied by Science requirements for the major', NULL),
(9, 2, 2, 'Human Behavior & Social Institutions', 3, 3, '', NULL),
(10, 2, 3, 'Literacy and Intellectual Traditions', 3, 3, '', NULL),
(11, 2, 4, 'Arts, Aesthetics and Creativity', 3, 3, '', NULL),
(12, 3, 1, 'Non-Western Cultures', 3, 3, '', NULL),
(13, 3, 2, 'Diversity in U.S. Society', 3, 3, '', NULL),
(14, 3, 3, 'Health and Wellness', 2, 2, '', NULL),
(15, 4, 1, 'Language 1', 3, 3, ' First semester', NULL),
(16, 4, 2, 'Language 2', 3, 3, ' Second semester', NULL),
(17, 5, 1, 'Science 1', 4, 4, ' Science 1', NULL),
(18, 5, 2, 'Science 2', 4, 5, ' Science 2, must have a lab component', NULL),
(19, 5, 3, 'Science 3', 4, 5, ' Science 3, in sequence with science 2', NULL),
(20, 6, 1, 'Finite Mathematics', 3, 3, ' Grade of C or better is required', NULL),
(21, 6, 2, 'Statistics', 3, 3, ' 300 level', NULL),
(22, 7, 1, 'Introduction to Informatics', 4, 4, 'Same as CSCI A106, A290', NULL),
(23, 7, 2, 'Math Foundations of Informatics', 4, 4, '', NULL),
(24, 7, 3, 'Social Informatics', 3, 3, '', NULL),
(25, 7, 4, 'Information Infrastructure I', 4, 4, ' Same as CSCI-C101', NULL),
(26, 7, 5, 'Information Infrastructure II', 4, 4, ' Same as CSCI-C201', NULL),
(27, 7, 6, 'Information Representation', 4, 4, '', NULL),
(28, 7, 7, 'UpperCore Course 1', 3, 3, '', NULL),
(29, 7, 8, 'UpperCore Course 2', 3, 3, '', NULL),
(30, 7, 9, 'Capstone Course 1', 3, 3, '', NULL),
(31, 7, 10, 'Capstone Course 2', 3, 3, '', NULL),
(32, 8, 1, 'Informatics Elective I', 3, 3, '', NULL),
(33, 8, 2, 'Informatics Elective 2', 3, 3, '', NULL),
(34, 9, 1, 'Informatics Cognate 1', 3, 3, ' one semester', NULL),
(35, 9, 2, 'Informatics Cognate 2', 3, 3, '', NULL),
(36, 9, 3, 'Informatics Cognate 3', 3, 3, '', NULL),
(37, 9, 4, 'Informatics Cognate 4', 3, 3, '', NULL),
(38, 9, 5, 'Informatics Cognate 5', 3, 3, '', NULL),
(39, 9, 6, 'Informatics Cognate 6', 3, 3, '', NULL),
(40, 10, 1, 'General Elective 1', 3, 3, '', NULL),
(41, 10, 2, 'General Elective 2', 3, 3, '', NULL),
(42, 10, 3, 'General Elective 3', 3, 3, '', NULL),
(43, 10, 4, 'General Elective 4', 3, 3, '', NULL),
(44, 11, 1, 'English Composition', 3, 3, '', NULL),
(45, 11, 2, 'Critical Thinking', 3, 3, '', NULL),
(46, 11, 3, 'Oral Communication', 3, 3, '', NULL),
(47, 11, 4, 'Visual Literacy', 3, 3, '', NULL),
(48, 11, 5, 'Quantitative Reasoning', 3, 3, ' Will be satisfied by math courses taken for the major', NULL),
(49, 11, 6, 'Information Literacy', 1, 1, ' Should be taken at the same time as English Composition', NULL),
(50, 11, 7, 'Computer Literacy', 3, 3, ' Will be satisfied by informatics courses taken for the major', NULL),
(51, 12, 1, 'The Natural World', 3, 3, ' Will be satisfied by Science requirements for the major', NULL),
(52, 12, 2, 'Human Behavior & Social Institutions', 3, 3, '', NULL),
(53, 12, 3, 'Literacy and Intellectual Traditions', 3, 3, '', NULL),
(54, 12, 4, 'Arts, Aesthetics and Creativity', 3, 3, '', NULL),
(55, 13, 1, 'Non-Western Cultures', 3, 3, '', NULL),
(56, 13, 2, 'Diversity in U.S. Society', 3, 3, '', NULL),
(57, 13, 3, 'Health and Wellness', 2, 2, '', NULL),
(58, 14, 1, 'Language 1', 3, 3, ' First semester', NULL),
(59, 14, 2, 'Language 2', 3, 3, ' Second semester', NULL),
(60, 15, 1, 'Digital Electronics', 4, 4, ' Science 1', NULL),
(61, 15, 2, 'Science 1', 4, 5, ' Science 2, for science majors, must have a lab component', NULL),
(62, 15, 3, 'Science 2', 4, 5, ' Science 2, for science majors, in sequence with science 2', NULL),
(63, 16, 1, 'Calculus 1', 3, 3, ' First semester', NULL),
(64, 16, 2, 'Calculus 2', 3, 3, ' Second semester', NULL),
(65, 16, 3, 'Linear Algebra', 3, 3, '', NULL),
(66, 16, 4, 'Probability', 3, 3, '', NULL),
(67, 16, 5, 'Statistics', 2, 3, '', NULL),
(68, 17, 1, 'Computer Programming I', 4, 4, '', NULL),
(69, 17, 2, 'Multiuser Operating Systems', 2, 2, '', NULL),
(70, 17, 3, 'Computer Programming II', 4, 4, '', NULL),
(71, 17, 4, 'Data Structures', 4, 4, '', NULL),
(72, 17, 5, 'Foundations of Digital Computing', 3, 3, '', NULL),
(73, 17, 6, 'Systems Analysis and Design', 4, 4, '', NULL),
(74, 17, 7, 'Organization of Programming Languages', 3, 3, '', NULL),
(75, 17, 8, 'Computer Structures', 4, 4, '', NULL),
(76, 17, 9, 'Operating Systems', 4, 4, '', NULL),
(77, 17, 10, 'Analysis of Algorithms', 3, 3, '', NULL),
(78, 18, 1, 'CS Elective 1', 3, 3, '', NULL),
(79, 18, 2, 'CS Elective 2', 3, 3, '', NULL),
(80, 18, 3, 'CS Elective 3', 3, 3, '', NULL),
(81, 19, 1, 'General Elective 1', 3, 3, '', NULL),
(82, 19, 2, 'General Elective 2', 3, 3, '', NULL),
(83, 19, 3, 'General Elective 3', 3, 3, '', NULL),
(84, 19, 4, 'General Elective 4', 3, 3, '', NULL),
(85, 19, 5, 'General Elective 5', 3, 3, '', NULL),
(86, 19, 6, 'General Elective 6', 1, 3, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `StudentID` varchar(15) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the student',
  `SectionID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CourseID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the course',
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL COMMENT 'Year and semester the student take/took/will take the course',
  `GradeID` varchar(2) COLLATE latin1_bin NOT NULL COMMENT 'Final grade ',
  `CompletionMethodID` varchar(25) COLLATE latin1_bin DEFAULT NULL COMMENT 'How the student complete the course ',
  `Explanation` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'More information about the enrollment',
  `Credits` tinyint(3) UNSIGNED DEFAULT '0' COMMENT 'Number of register credit hours'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`StudentID`, `SectionID`, `CourseID`, `AcademicTerm`, `GradeID`, `CompletionMethodID`, `Explanation`, `Credits`) VALUES
('1000', '2361', '011126', '4172', 'NR', 'IUSB', NULL, 3),
('1000', '2368', '011246', '4172', 'A+', NULL, NULL, 1),
('1001', '2372', '011246', '4162', 'C', NULL, NULL, 1),
('1002', '2361', '011246', '4158', 'B-', NULL, NULL, 1),
('1002', '2368', '011246', '4172', 'A', 'IUSB', NULL, 1),
('1002', '4213', '027274', '4158', 'B+', NULL, NULL, 1),
('1003', '2380', '011266', '4172', 'B+', NULL, NULL, 1),
('1003', '4213', '027274', '4162', 'A', NULL, NULL, 1),
('1003', '4213', '027274', '4172', 'D', NULL, NULL, 1),
('1004', '2368', '011246', '4172', 'C', NULL, NULL, 1),
('1005', '2372', '011266', '4162', 'D+', NULL, NULL, 1),
('1006', '2369', '011246', '4162', 'C-', NULL, NULL, 1),
('1010', '2366', '011266', '4162', 'B', 'IUSB', NULL, 1),
('1010', '2375', '011283', '4162', 'D', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expertise`
--

CREATE TABLE `expertise` (
  `ExpertiseID` int(4) NOT NULL,
  `Description` varchar(128) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `expertise`
--

INSERT INTO `expertise` (`ExpertiseID`, `Description`) VALUES
(1, 'Database Systems'),
(2, 'Computer Graphics'),
(3, 'Artificial Intelligence'),
(4, 'Security'),
(5, 'Computer Networks'),
(6, 'Robotics'),
(7, 'Parallel Computing'),
(8, 'Web Development'),
(9, 'Operating Systems'),
(10, 'Algorithm Analysis'),
(11, 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` varchar(8) COLLATE latin1_bin NOT NULL,
  `CampusID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL DEFAULT '',
  `LastName` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `FirstName` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `Email` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `Phone` varchar(16) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `CampusID`, `CollegeID`, `DeptID`, `LastName`, `FirstName`, `Email`, `Phone`) VALUES
('DSURMA', 'SB', 'LAS', 'CSCI', 'Surma', 'David R', 'dsurma@iusb.edu', ''),
('DVRAJITO', 'SB', 'LAS', 'CSCI', 'Vrajitoru', 'Dana', 'dvrajito@iusb.edu', ''),
('HHAKIMZA', 'SB', 'LAS', 'CSCI', 'Hakimzadeh', 'Hossein', 'hhakimza@iusb.edu', ''),
('HTDINH', 'SB', 'LAS', 'CSCI', 'Dinh', 'Hang', 'htdinh@iusb.edu', ''),
('JWOLFER', 'SB', 'LAS', 'CSCI', 'Wolfer', 'James', 'jwolfer@indiana.edu', ''),
('LIGYU', 'SB', 'LAS', 'CSCI', 'Yu', 'Liguo', 'ligyu@iusb.edu', ''),
('LIQZHANG', 'SB', 'LAS', 'CSCI', 'Zhang', 'Liqiang', 'liqzhang@iusb.edu', ''),
('MHOLLOWA', 'SB', 'LAS', 'CSCI', 'Holloway', 'Matthew', 'mhollowa@iusb.edu', ''),
('MNAIR', 'SB', 'LAS', 'CSCI', 'Nair', 'Murlidharan T', 'mnair@iusb.edu', ''),
('MSCHEESS', 'SB', 'LAS', 'CSCI', 'Scheessele', 'Michael R', 'mscheess@iusb.edu', ''),
('RADAIKKA', 'SB', 'LAS', 'CSCI', 'Adaikkalavan', 'Raman', 'radaikka@iusb.edu', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_expertise`
--

CREATE TABLE `faculty_expertise` (
  `FacultyID` varchar(8) COLLATE latin1_bin NOT NULL,
  `ExpertiseID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `faculty_expertise`
--

INSERT INTO `faculty_expertise` (`FacultyID`, `ExpertiseID`) VALUES
('HHAKIMZA', 1),
('HHAKIMZA', 8),
('HHAKIMZA', 9),
('HHAKIMZA', 11);

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `GradeID` varchar(2) COLLATE latin1_bin NOT NULL COMMENT 'A, B, C, D, F, I, W',
  `GradePoints` float NOT NULL,
  `Description` varchar(128) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`GradeID`, `GradePoints`, `Description`) VALUES
('A', 4, 'Excellent'),
('A+', 4, ''),
('A-', 3.7, ''),
('B', 3, 'Above Average'),
('B+', 3.3, ''),
('B-', 2.7, ''),
('C', 2, 'Average'),
('C+', 2.3, ''),
('C-', 1.7, ''),
('D', 1, 'Below Average'),
('D+', 1.3, ''),
('D-', 0.7, ''),
('F', 0, 'Failing'),
('NR', 0, 'Not Recorded');

-- --------------------------------------------------------

--
-- Table structure for table `pre_co_req`
--

CREATE TABLE `pre_co_req` (
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a course',
  `Relationship` varchar(10) COLLATE latin1_bin DEFAULT 'PREREQ' COMMENT 'Unique identification string of the relationship',
  `PreCoReqCourseID` varchar(6) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a course'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `pre_co_req`
--

INSERT INTO `pre_co_req` (`CourseID`, `Relationship`, `PreCoReqCourseID`) VALUES
('011246', 'COREQ', '011231'),
('011178', 'EQUIV', '011193'),
('011193', 'EQUIV', '011178'),
('011227', 'EQUIV', '027270'),
('011234', 'EQUIV', '027271'),
('011260', 'EQUIV', '027279'),
('011286', 'EQUIV', '027280'),
('027270', 'EQUIV', '011227'),
('027271', 'EQUIV', '011234'),
('027279', 'EQUIV', '011260'),
('027280', 'EQUIV', '011286'),
('011178', 'PREREQ', '011246'),
('011178', 'PREREQ', '031159'),
('011179', 'PREREQ', '011246'),
('011179', 'PREREQ', '011266'),
('011193', 'PREREQ', '011246'),
('011193', 'PREREQ', '031159'),
('011201', 'PREREQ', '011286'),
('011227', 'PREREQ', '031074'),
('011231', 'PREREQ', '011227'),
('011234', 'PREREQ', '011227'),
('011246', 'PREREQ', '011234'),
('011248', 'PREREQ', '031130'),
('011260', 'PREREQ', '011246'),
('011262', 'PREREQ', '011246'),
('011266', 'PREREQ', '011234'),
('011283', 'PREREQ', '011246'),
('011283', 'PREREQ', '011266'),
('011291', 'PREREQ', '011248'),
('011291', 'PREREQ', '031131'),
('011293', 'PREREQ', '011248'),
('011295', 'PREREQ', '011246'),
('011392', 'PREREQ', '011286'),
('011408', 'PREREQ', '011260'),
('011408', 'PREREQ', '011266');

-- --------------------------------------------------------

--
-- Table structure for table `requirements`
--

CREATE TABLE `requirements` (
  `RequirementID` int(11) NOT NULL COMMENT 'Unique identification string of the requirement',
  `OrderOfAppearance` tinyint(4) NOT NULL DEFAULT '0',
  `CategoryID` varchar(25) COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the category to which the requirement belongs',
  `RequirementText` varchar(50) COLLATE latin1_bin DEFAULT NULL COMMENT 'Description about the requirment',
  `MinCreditsRequired` tinyint(4) DEFAULT '0' COMMENT 'Minimum of number of credit hours required by the requirement',
  `MaxCreditsRequired` tinyint(4) DEFAULT '0' COMMENT 'Maximum of number of credit hours required by the requirement',
  `MiscNotes` varchar(250) COLLATE latin1_bin DEFAULT NULL COMMENT 'Information or instruction about the requirement',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the campus to which the department belongs',
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the department which offers the degree program',
  `DegreeID` varchar(50) COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of the degree program to which the requirement belongs',
  `StartAcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL COMMENT 'Year and semester of beginning of applying',
  `FootNote` varchar(250) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`RequirementID`, `OrderOfAppearance`, `CategoryID`, `RequirementText`, `MinCreditsRequired`, `MaxCreditsRequired`, `MiscNotes`, `CampusID`, `CollegeID`, `DeptID`, `DegreeID`, `StartAcademicTerm`, `FootNote`) VALUES
(1, 1, 'GENED', 'Fundamental Literacies', 13, 18, '', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(2, 2, 'GENED', 'Common Core', 12, 12, ' One course should be at the 300 level.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(3, 3, 'GENED', 'Contemporary Social Values', 8, 8, '', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(4, 4, 'LANGUAGE', 'Language Studies', 6, 6, ' 2 semester of same language', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(5, 5, 'SCIENCE', 'Physical & Life Sciences', 13, 13, ' Consult your advisor, if planning to obtain a science cognate.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(6, 6, 'MATH', 'Mathematics', 6, 6, ' Minimum grade of C is required.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(7, 7, 'DEG-CORE', 'Informatics Core', 34, 34, ' Minimum grade of C is required.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(8, 8, 'DEG-ELECTIVE', 'Informatics Elective', 6, 6, ' Minimum grade of C is required.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(9, 9, 'COGNATE', 'Informatics Cognate', 15, 18, ' Minimum grade of C is required.', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(10, 10, 'GEN-ELECTIVE', 'General Elective', 12, 12, 'Consult your advisor', 'SB', 'LAS', 'INFO', 'BSINFBS', '4052', NULL),
(11, 1, 'GENED', 'Fundamental Literacies', 13, 18, '', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(12, 2, 'GENED', 'Common Core', 12, 12, ' One course should be at the 300 level.', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(13, 3, 'GENED', 'Contemporary Social Values', 8, 8, '', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(14, 4, 'LANGUAGE', 'Language Studies', 6, 6, ' 2 semester of same language', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(15, 5, 'SCIENCE', 'Physical & Life Sciences', 13, 13, ' Consult your advisor, if planning to obtain a science cognate.', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(16, 6, 'MATH', 'Mathematics', 6, 6, ' Minimum grade of C is required.', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(17, 7, 'DEG-CORE', 'CS Core', 34, 34, ' Minimum grade of C is required.', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(18, 8, 'DEG-ELECTIVE', 'CS Elective', 9, 9, 'Minimum grade of C is required.', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL),
(19, 9, 'GEN-ELECTIVE', 'General Elective', 12, 12, 'Consult your advisor', 'SB', 'LAS', 'CSCI', 'CSCIBS', '4052', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `BuildingID` varchar(32) COLLATE latin1_bin NOT NULL,
  `RoomID` varchar(32) COLLATE latin1_bin NOT NULL,
  `RoomCapacity` int(4) NOT NULL,
  `RoomDesignationID` int(4) NOT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`CampusID`, `BuildingID`, `RoomID`, `RoomCapacity`, `RoomDesignationID`, `DeptID`, `CollegeID`) VALUES
('IUB', 'ADMIN', '123', 74, 3, 'ADMIN', 'ADMIN'),
('IUB', 'NS', '123', 75, 8, 'AHLT', 'AHLT'),
('SB', 'NS', '0044', 75, 2, 'ADMIN', 'ADMIN'),
('SB', 'NS', '160', 4, 10, 'CSCI', 'LAS'),
('SB', 'NS', '223', 30, 1, 'CSCI', 'LAS'),
('SB', 'NS', '229', 34, 1, 'MATH', 'LAS'),
('SB', 'NS', '423', 50, 1, 'CSCI', 'LAS');

-- --------------------------------------------------------

--
-- Table structure for table `room_designation`
--

CREATE TABLE `room_designation` (
  `DesignationID` int(4) NOT NULL,
  `Description` varchar(128) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `room_designation`
--

INSERT INTO `room_designation` (`DesignationID`, `Description`) VALUES
(1, 'Classroom'),
(2, 'Lecture Hall'),
(3, 'Computer Lab'),
(4, 'Physics Lab'),
(5, 'Biology Lab'),
(6, 'Geology Lab'),
(7, 'Research Lab'),
(8, 'Conference Room'),
(9, 'Active Learning Classroom'),
(10, 'Faculty Office'),
(11, 'Collaborative Lab');

-- --------------------------------------------------------

--
-- Table structure for table `satisfied_by`
--

CREATE TABLE `satisfied_by` (
  `DetailedRequirementID` int(11) NOT NULL,
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL DEFAULT '',
  `MinGradeRequired` varchar(10) COLLATE latin1_bin DEFAULT 'NA',
  `OtherRequirements` varchar(250) COLLATE latin1_bin DEFAULT NULL,
  `Notes` varchar(250) COLLATE latin1_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `satisfied_by`
--

INSERT INTO `satisfied_by` (`DetailedRequirementID`, `CourseID`, `MinGradeRequired`, `OtherRequirements`, `Notes`) VALUES
(1, '017760', 'C', '', 'English Composition'),
(2, '037722', 'NA', '', 'Critical Thinking'),
(2, '037723', 'NA', '', 'Critical Thinking'),
(2, '037732', 'NA', '', 'Critical Thinking'),
(3, '043138', 'NA', '', 'Oral Communication'),
(3, '043165', 'NA', '', 'Oral Communication'),
(3, '043205', 'NA', '', 'Oral Communication'),
(4, '019027', 'NA', '', 'Visual Literacy'),
(4, '027773', 'NA', '', 'Visual Literacy'),
(5, '999999', 'NA', 'Satisfied by Informatics math requirements', 'Quantitative Reasoning'),
(6, '079999', 'NA', 'Must be taken with W131', 'Information Literacy'),
(7, '999999', 'NA', 'Satisfied by Informatics I101 requirement', 'Computer Literacy'),
(8, '008078', 'NA', '', 'CHEM N390, The Natural World'),
(8, '080654', 'NA', '', 'CHEM N190, The Natural World'),
(8, '080682', 'NA', '', 'GEOL N190, The Natural World'),
(8, '080690', 'NA', '', 'PHYS N190, The Natural World'),
(8, '081892', 'NA', '', 'AST N190, The Natural World'),
(8, '082004', 'NA', '', 'BIOL N390, The Natural World'),
(9, '080659', 'NA', '', 'PSY B190, Human Behavior & Social Institutions'),
(9, '080684', 'NA', '', 'POLS B190, Human Behavior & Social Institutions'),
(9, '080685', 'NA', '', 'SOC B190, Human Behavior & Social Institutions'),
(10, '080665', 'NA', '', 'HIST T190, Literacy and Intellectual Traditions'),
(10, '080679', 'NA', '', 'CMLT T190, Literacy and Intellectual Traditions'),
(10, '080681', 'NA', '', 'ENG T190, Literacy and Intellectual Traditions'),
(10, '080683', 'NA', '', 'PHIL T190, Literacy and Intellectual Traditions'),
(11, '081078', 'NA', '', 'FINA A 190, Arts, Aesthetics and Creativity'),
(11, '081080', 'NA', '', 'THTR A 190, Arts, Aesthetics and Creativity'),
(11, '081085', 'NA', '', 'MUS A 190, Arts, Aesthetics and Creativity'),
(12, '002138', 'NA', '', 'ANTH E105, Non-Western Cultures'),
(12, '038969', 'NA', '', 'POLY Y109, Non-Western Cultures'),
(12, '081085', 'NA', NULL, ''),
(13, '017494', 'NA', '', 'ENG L379, Diversity in U.S. Society'),
(13, '039886', 'NA', '', 'PSY P391, Diversity in U.S. Society'),
(13, '042195', 'NA', '', 'SOC S161, Diversity in U.S. Society'),
(14, '025929', 'NA', '', 'HPER N220, Health and Wellness'),
(15, '012597', 'NA', 'First semester language', 'ELEMENTARY CHINESE 1, Language 1'),
(15, '012812', 'NA', 'First semester language', 'ELEMENTARY JAPANESE 1, Language 1'),
(15, '020508', 'NA', 'First semester language', 'ELEMENTARY FRENCH 1, Language 1'),
(15, '021968', 'NA', 'First semester language', 'BEGINNING GERMAN 1, Language 1'),
(16, '012598', 'NA', 'Second semester of the same language', 'ELEMENTARY CHINESE 2, Language 2'),
(16, '012813', 'NA', 'Second semester of the same language', 'ELEMENTARY JAPANESE 2, Language 2'),
(16, '020509', 'NA', 'Second semester of the same language', 'ELEMENTARY FRENCH 2, Language 2'),
(16, '021969', 'NA', 'Second semester of the same language', 'BEGINNING GERMAN II, Language 2'),
(17, '999999', 'NA', 'Science 1, Satisfied by common core, Natural world, N190', 'Science 1, Satisfied by common core, Natural world, N190'),
(18, '038447', 'NA', 'Science 2, PHYS, BIOL,CHEM, AST, GEOL', 'Science 2, Physics 1'),
(19, '038448', 'NA', 'Science 3, PHYS, BIOL,CHEM, AST, GEOL', 'Science 3, Physics 2'),
(20, '031102', 'C', '', 'M118, Finite Math'),
(21, '999999', 'C', '300 level Statistics', '300 level Statistics'),
(22, '027263', 'C', '', 'INFO 101'),
(23, '027268', 'C', '', 'INFO 201'),
(24, '027269', 'C', '', 'INFO 202'),
(25, '027270', 'C', '', 'INFO 210'),
(26, '027271', 'C', '', 'INFO 211'),
(27, '027274', 'C', '', 'INFO 308'),
(28, '027272', 'C', 'UpperCore Course 1 (pick from I300, 303, 310, 320)', 'INFO 300, UpperCore Course 1'),
(28, '027273', 'C', 'UpperCore Course 1 (pick from I300, 303, 310, 320)', 'INFO 303, UpperCore Course 1'),
(28, '027275', 'C', 'UpperCore Course 1 (pick from I300, 303, 310, 320)', 'INFO 310, UpperCore Course 1'),
(28, '027276', 'C', 'UpperCore Course 1 (pick from I300, 303, 310, 320)', 'INFO 320, UpperCore Course 1'),
(29, '027272', 'C', 'UpperCore Course 2 (pick from I300, 303, 310, 320)', 'INFO 300, UpperCore Course 1'),
(29, '027273', 'C', 'UpperCore Course 2 (pick from I300, 303, 310, 320)', 'INFO 303, UpperCore Course 1'),
(29, '027275', 'C', 'UpperCore Course 2 (pick from I300, 303, 310, 320)', 'INFO 310, UpperCore Course 1'),
(29, '027276', 'C', 'UpperCore Course 2 (pick from I300, 303, 310, 320)', 'INFO 320, UpperCore Course 1'),
(30, '027277', 'C', 'INFO Capstone Course 1', 'INFO Capstone Course 1'),
(30, '027279', 'C', 'INFO 450 / 451 should be taken in sequence, Capstone Course 1', 'INFO 450 Capstone Course 1'),
(31, '027278', 'C', 'INFO Capstone Course 2', 'INFO Capstone Course 2'),
(31, '027280', 'C', 'INFO 450 / 451 should be taken in sequence, Capstone Course 1', 'INFO 451 Capstone Course 2'),
(32, '999999', 'C', 'Consult Advisor for most recent list of courses', 'INFO Elective 1'),
(33, '999999', 'C', 'Consult Advisor for most recent list of courses', 'INFO Elective 1'),
(34, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(35, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(36, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(37, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(38, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(39, '999999', 'C', 'Consult Advisor for most recent approved cognates', 'INFO Cognate 1'),
(40, '999999', 'NA', 'General Elective 1', 'General Elective 1'),
(41, '999999', 'NA', 'General Elective 1', 'General Elective 1'),
(42, '999999', 'NA', 'General Elective 1', 'General Elective 1'),
(43, '999999', 'NA', 'General Elective 1', 'General Elective 1'),
(44, '017760', 'C', '', 'English Composition'),
(45, '037722', 'NA', '', 'Critical Thinking'),
(45, '037723', 'NA', '', 'Critical Thinking'),
(45, '037732', 'NA', '', 'Critical Thinking'),
(46, '043138', 'NA', '', 'Oral Communication'),
(46, '043165', 'NA', '', 'Oral Communication'),
(46, '043205', 'NA', '', 'Oral Communication'),
(47, '019027', 'NA', '', 'Visual Literacy'),
(47, '027773', 'NA', '', 'Visual Literacy'),
(48, '999999', 'NA', 'Satisfied by CSCI math requirements', 'Quantitative Reasoning'),
(49, '079999', 'NA', 'Must be taken with W131', 'Information Literacy, Must be taken with W131'),
(50, '999999', 'NA', 'Satisfied by CSCI C101', 'Computer Literacy'),
(51, '008078', 'NA', '', 'CHEM N390, The Natural World'),
(51, '080654', 'NA', '', 'CHEM N190, The Natural World'),
(51, '080682', 'NA', '', 'GEOL N190, The Natural World'),
(51, '080690', 'NA', '', 'PHYS N190, The Natural World'),
(51, '081892', 'NA', '', 'AST N190, The Natural World'),
(51, '082004', 'NA', '', 'BIOL N390, The Natural World'),
(52, '080659', 'NA', '', 'PSY B190, Human Behavior & Social Institutions'),
(52, '080684', 'NA', '', 'POLS B190, Human Behavior & Social Institutions'),
(52, '080685', 'NA', '', 'SOC B190, Human Behavior & Social Institutions'),
(53, '080665', 'NA', '', 'HIST T190, Literacy and Intellectual Traditions'),
(53, '080679', 'NA', '', 'CMLT T190, Literacy and Intellectual Traditions'),
(53, '080681', 'NA', '', 'ENG T190, Literacy and Intellectual Traditions'),
(53, '080683', 'NA', '', 'PHIL T190, Literacy and Intellectual Traditions'),
(54, '081078', 'NA', '', 'FINA A 190, Arts, Aesthetics and Creativity'),
(54, '081080', 'NA', '', 'THTR A 190, Arts, Aesthetics and Creativity'),
(54, '081085', 'NA', '', 'MUS A 190, Arts, Aesthetics and Creativity'),
(55, '002138', 'NA', '', 'ANTH E105, Non-Western Cultures'),
(55, '038969', 'NA', '', 'POLY Y109, Non-Western Cultures'),
(56, '017494', 'NA', '', 'ENG L379, Diversity in U.S. Society'),
(56, '039886', 'NA', '', 'PSY P391, Diversity in U.S. Society'),
(56, '042195', 'NA', '', 'SOC S161, Diversity in U.S. Society'),
(57, '025929', 'NA', '', 'HPER N220, Health and Wellness'),
(58, '012597', 'NA', 'First semester language', 'ELEMENTARY CHINESE 1, Language 1'),
(58, '012812', 'NA', 'First semester language', 'ELEMENTARY JAPANESE 1, Language 1'),
(58, '020508', 'NA', 'First semester language', 'ELEMENTARY FRENCH 1, Language 1'),
(58, '021968', 'NA', 'First semester language', 'BEGINNING GERMAN 1, Language 1'),
(59, '012598', 'NA', 'Second semester of the same language', 'ELEMENTARY CHINESE 2, Language 2'),
(59, '012813', 'NA', 'Second semester of the same language', 'ELEMENTARY JAPANESE 2, Language 2'),
(59, '020509', 'NA', 'Second semester of the same language', 'ELEMENTARY FRENCH 2, Language 2'),
(59, '021969', 'NA', 'Second semester of the same language', 'BEGINNING GERMAN II, Language 2'),
(60, '038459', 'NA', 'PHYS-P303 Digital Electronics is required', 'Digital Electronics'),
(61, '038447', 'NA', 'Science 2, PHYS, BIOL,CHEM, AST, GEOL', 'Science 1, Physics 1'),
(62, '038448', 'NA', 'Science 3, PHYS, BIOL,CHEM, AST, GEOL', 'Science 2, Physics 2'),
(63, '031130', 'C', 'MATH-M 208 or M215', 'Calculus 1'),
(64, '031131', 'C', 'MATH-M 209 or M216', 'Calculus 2'),
(65, '031159', 'C', '', 'Linear Algebra'),
(66, '031147', 'C', '', 'Probability'),
(67, '031148', 'C', '', 'Statistics'),
(68, '011227', 'C', '', 'Computer Programming I'),
(69, '011231', 'C', '', 'Multiuser Operating Systems'),
(70, '011234', 'C', '', 'Computer Programming II'),
(71, '011246', 'C', '', 'Data Structures'),
(72, '011248', 'C', '', 'Foundations of Digital Computing'),
(73, '011260', 'C', '', 'Systems Analysis and Design'),
(74, '011262', 'C', '', 'Organization of Programming Languages'),
(75, '011266', 'C', '', 'Computer Structures'),
(76, '011283', 'C', '', 'Operating Systems'),
(77, '011291', 'C', '', 'Analysis of Algorithms'),
(78, '011286', 'C', 'Consult your advisor', 'CS Elective 1'),
(78, '011293', 'C', 'Consult your advisor', 'CS Elective 1'),
(78, '011295', 'C', 'Consult your advisor', 'CS Elective 1'),
(78, '011297', 'C', 'Consult your advisor', 'CS Elective 1'),
(79, '011286', 'C', 'Consult your advisor', 'CS Elective 2'),
(79, '011293', 'C', 'Consult your advisor', 'CS Elective 2'),
(79, '011295', 'C', 'Consult your advisor', 'CS Elective 2'),
(79, '011297', 'C', 'Consult your advisor', 'CS Elective 2'),
(80, '011286', 'C', 'Consult your advisor', 'CS Elective 3'),
(80, '011293', 'C', 'Consult your advisor', 'CS Elective 3'),
(80, '011295', 'C', 'Consult your advisor', 'CS Elective 3'),
(80, '011297', 'C', 'Consult your advisor', 'CS Elective 3'),
(81, '999999', 'NA', 'General Elective 1', 'General Elective 1'),
(82, '999999', 'NA', 'General Elective 2', 'General Elective 2'),
(83, '999999', 'NA', 'General Elective 3', 'General Elective 3'),
(84, '999999', 'NA', 'General Elective 4', 'General Elective 4'),
(85, '999999', 'NA', 'General Elective 5', 'General Elective 5'),
(86, '999999', 'NA', 'General Elective 6', 'General Elective 6');

-- --------------------------------------------------------

--
-- Table structure for table `section_future`
--

CREATE TABLE `section_future` (
  `SectionID` varchar(10) COLLATE latin1_bin NOT NULL DEFAULT '',
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL DEFAULT '',
  `NumberOfStudentsEnrolled` int(11) NOT NULL,
  `SectionTopicDescription` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `CampusID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `FacultyID` varchar(8) COLLATE latin1_bin DEFAULT NULL,
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL DEFAULT '',
  `TeachingMode` varchar(32) COLLATE latin1_bin DEFAULT NULL COMMENT 'P= In Person, OA=100% Online, OI=76-99% online Interactive, HY=Hybrid 26to 75% Online, WW = Online before fall 2013'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `section_future_meets_at`
--

CREATE TABLE `section_future_meets_at` (
  `SectionID` varchar(6) COLLATE latin1_bin NOT NULL,
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `M` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mon',
  `T` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Tues',
  `W` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Wed',
  `R` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Thur',
  `F` int(11) NOT NULL DEFAULT '0' COMMENT 'Fri',
  `S` int(11) NOT NULL DEFAULT '0' COMMENT 'Sat',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `BuildingID` varchar(32) COLLATE latin1_bin NOT NULL,
  `RoomID` varchar(32) COLLATE latin1_bin NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `section_past`
--

CREATE TABLE `section_past` (
  `SectionID` varchar(10) COLLATE latin1_bin NOT NULL DEFAULT '',
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL DEFAULT '',
  `NumberOfStudentsEnrolled` int(11) NOT NULL,
  `SectionTopicDescription` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `CampusID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin DEFAULT NULL,
  `FacultyID` varchar(8) COLLATE latin1_bin DEFAULT NULL,
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL DEFAULT '',
  `TeachingMode` varchar(32) COLLATE latin1_bin DEFAULT NULL COMMENT 'P= In Person, OA=100% Online, OI=76-99% online Interactive, HY=Hybrid 26to 75% Online, WW = Online before fall 2013'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `section_past`
--

INSERT INTO `section_past` (`SectionID`, `AcademicTerm`, `NumberOfStudentsEnrolled`, `SectionTopicDescription`, `CampusID`, `CollegeID`, `DeptID`, `FacultyID`, `CourseID`, `TeachingMode`) VALUES
('2361', '4172', 45, ' ', 'SB', 'LAS', 'CSCI', 'HTDINH', '011126', 'P'),
('2362', '4172', 25, ' ', 'SB', 'LAS', 'CSCI', 'MSCHEESS', '011126', 'P'),
('2365', '4172', 34, ' ', 'SB', 'LAS', 'CSCI', 'MSCHEESS', '011126', 'P'),
('2366', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MSCHEESS', '011126', 'P'),
('2368', '4172', 27, ' ', 'SB', 'LAS', 'CSCI', 'LIGYU', '011126', 'P'),
('2369', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('2372', '4172', 1, ' ', 'SB', 'LAS', 'CSCI', 'LIQZHANG', '011168', 'P'),
('2373', '4172', 0, ' ', 'SB', 'LAS', 'CSCI', 'DSURMA', '011169', 'P'),
('2374', '4172', 4, ' ', 'SB', 'LAS', 'CSCI', 'DVRAJITO', '011189', 'P'),
('2375', '4172', 12, ' ', 'SB', 'LAS', 'CSCI', 'MNAIR', '011227', 'P'),
('2376', '4172', 15, ' ', 'SB', 'LAS', 'CSCI', 'HTDINH', '011227', 'P'),
('2377', '4172', 13, ' ', 'SB', 'LAS', 'CSCI', 'LIGYU', '011234', 'P'),
('2378', '4172', 12, ' ', 'SB', 'LAS', 'CSCI', 'JWOLFER', '011234', 'P'),
('2379', '4172', 6, ' ', 'SB', 'LAS', 'CSCI', 'DSURMA', '011246', 'P'),
('2380', '4172', 13, ' ', 'SB', 'LAS', 'CSCI', 'LIQZHANG', '011266', 'P'),
('2381', '4172', 25, ' ', 'SB', 'LAS', 'CSCI', 'JWOLFER', '011283', 'P'),
('2382', '4172', 26, ' ', 'SB', 'LAS', 'CSCI', 'DVRAJITO', '011291', 'P'),
('2885', '4172', 0, ' ', 'SB', 'LAS', 'CSCI', 'MNAIR', '011157', 'P'),
('2886', '4172', 0, ' ', 'SB', 'LAS', 'CSCI', 'HTDINH', '011157', 'P'),
('2887', '4172', 2, ' ', 'SB', 'LAS', 'CSCI', 'JWOLFER', '011159', 'P'),
('2888', '4172', 3, ' ', 'SB', 'LAS', 'CSCI', 'LIGYU', '011159', 'P'),
('2973', '4172', 14, ' ', 'SB', 'LAS', 'CSCI', 'HHAKIMZA', '011286', 'P'),
('2996', '4172', 18, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('3005', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('3007', '4172', 0, ' ', 'SB', 'LAS', 'CSCI', 'HHAKIMZA', '011416', 'P'),
('32188', '4172', 29, ' ', 'SB', 'LAS', 'CSCI', 'HHAKIMZA', '011126', 'P'),
('32189', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('32194', '4172', 22, ' ', 'SB', 'LAS', 'CSCI', 'DVRAJITO', '011126', 'OA'),
('32195', '4172', 13, ' ', 'SB', 'LAS', 'CSCI', 'LIQZHANG', '011278', 'P'),
('32196', '4172', 10, ' ', 'SB', 'LAS', 'CSCI', 'DVRAJITO', '011295', 'P'),
('32197', '4172', 7, ' ', 'SB', 'LAS', 'CSCI', 'DVRAJITO', '011203', 'P'),
('3238', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MSCHEESS', '011227', 'P'),
('3239', '4172', 0, ' ', 'SB', 'LAS', 'CSCI', 'MSCHEESS', '011157', 'P'),
('3299', '4172', 12, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '085640', 'P'),
('33636', '4172', 22, ' ', 'SB', 'LAS', 'CSCI', 'HTDINH', '011126', 'OA'),
('3368', '4172', 28, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('3405', '4172', 16, ' ', 'SB', 'LAS', 'CSCI', 'RADAIKKA', '011231', 'P'),
('34143', '4172', 5, 'DATABASE SYSTEMS', 'SB', 'LAS', 'CSCI', 'HHAKIMZA', '011340', 'P'),
('34145', '4172', 7, ' ', 'SB', 'LAS', 'CSCI', 'LIQZHANG', '011196', 'P'),
('3482', '4172', 25, ' ', 'SB', 'LAS', 'CSCI', 'RADAIKKA', '011262', 'P'),
('3647', '4172', 17, ' ', 'SB', 'LAS', 'CSCI', 'MHOLLOWA', '011126', 'P'),
('4213', '4158', 12, NULL, NULL, NULL, NULL, NULL, '027274', NULL),
('4213', '4162', 12, NULL, NULL, NULL, NULL, NULL, '027274', NULL),
('4213', '4172', 30, NULL, NULL, NULL, NULL, NULL, '027274', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `section_past_meets_at`
--

CREATE TABLE `section_past_meets_at` (
  `SectionID` varchar(6) COLLATE latin1_bin NOT NULL,
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `M` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mon',
  `T` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Tues',
  `W` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Wed',
  `R` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Thur',
  `F` int(11) NOT NULL DEFAULT '0' COMMENT 'Fri',
  `S` int(11) NOT NULL DEFAULT '0' COMMENT 'Sat',
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL,
  `BuildingID` varchar(32) COLLATE latin1_bin NOT NULL,
  `RoomID` varchar(32) COLLATE latin1_bin NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `section_past_meets_at`
--

INSERT INTO `section_past_meets_at` (`SectionID`, `AcademicTerm`, `StartTime`, `EndTime`, `M`, `T`, `W`, `R`, `F`, `S`, `CampusID`, `BuildingID`, `RoomID`, `StartDate`, `EndDate`) VALUES
('2973', '4172', '05:30:00', '08:10:00', 0, 0, 1, 0, 0, 0, 'SB', 'NS', '223', '2017-01-16', '2017-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `AcademicTerm` varchar(4) COLLATE latin1_bin NOT NULL DEFAULT '',
  `Year` int(11) NOT NULL DEFAULT '0',
  `Semester` varchar(10) COLLATE latin1_bin NOT NULL DEFAULT '',
  `BeginOfSemesterDate` date NOT NULL DEFAULT '0000-00-00',
  `EndOfSemesterDate` date NOT NULL DEFAULT '0000-00-00',
  `CurrentTerm` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`AcademicTerm`, `Year`, `Semester`, `BeginOfSemesterDate`, `EndOfSemesterDate`, `CurrentTerm`) VALUES
('4048', 2004, 'Fall', '2004-08-30', '2004-12-16', 0),
('4052', 2005, 'Spring', '2005-01-01', '2004-05-15', 0),
('4055', 2005, 'Summer', '2005-04-15', '2005-08-30', 0),
('4058', 2005, 'Fall', '2005-08-29', '2005-12-15', 0),
('4062', 2006, 'Spring', '2006-01-15', '2006-04-27', 0),
('4065', 2006, 'Summer', '2006-04-15', '2006-08-30', 0),
('4068', 2006, 'Fall', '2006-08-15', '2006-12-15', 0),
('4072', 2007, 'Spring', '2007-01-08', '2007-05-03', 0),
('4078', 2007, 'Fall', '2007-08-15', '2007-12-15', 0),
('4082', 2008, 'Spring', '2008-01-08', '2008-05-03', 0),
('4088', 2008, 'Fall', '2008-08-15', '2008-12-15', 0),
('4092', 2009, 'Spring', '2009-01-08', '2009-05-03', 0),
('4098', 2009, 'Fall', '2009-08-15', '2010-12-15', 0),
('4102', 2010, 'Spring', '2010-01-08', '2010-05-03', 0),
('4108', 2010, 'Fall', '2010-08-15', '2010-12-15', 0),
('4112', 2011, 'Spring', '2011-01-08', '2011-05-03', 0),
('4118', 2011, 'Fall', '2011-08-15', '2011-12-15', 0),
('4122', 2012, 'Spring', '2012-01-08', '2012-05-03', 0),
('4128', 2012, 'Fall', '2012-08-27', '2012-12-15', 0),
('4132', 2013, 'Spring', '2013-01-08', '2013-05-03', 0),
('4135', 2013, 'Summer', '2014-06-30', '2014-07-31', 0),
('4138', 2013, 'Fall', '2013-08-27', '2013-12-15', 0),
('4142', 2014, 'Spring', '2014-01-08', '2014-05-03', 0),
('4145', 2014, 'Summer', '2014-06-01', '2014-07-31', 0),
('4148', 2014, 'Fall', '2014-08-27', '2014-12-15', 0),
('4152', 2015, 'Spring', '2015-01-08', '2015-05-03', 0),
('4158', 2015, 'Fall', '2015-08-27', '2015-12-15', 0),
('4162', 2016, 'Spring', '2016-01-03', '2016-05-03', 0),
('4168', 2016, 'Fall', '2016-08-27', '2016-12-15', 0),
('4172', 2017, 'Spring', '2017-01-03', '2017-05-03', 1),
('4178', 2017, 'Fall', '2017-08-27', '2017-12-15', 0),
('4182', 2018, 'Spring', '2018-01-03', '2018-05-03', 0),
('4188', 2018, 'Fall', '2018-08-27', '2018-12-15', 0),
('4192', 2019, 'Spring', '2019-01-03', '2019-05-03', 0),
('4198', 2019, 'Fall', '2019-08-27', '2019-12-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` varchar(15) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL COMMENT 'Unique identification string of a student',
  `NetworkID` varbinary(100) NOT NULL DEFAULT '' COMMENT 'IU username of the student',
  `Password` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL COMMENT 'Secret word used for logging in',
  `LastName` varbinary(255) DEFAULT NULL COMMENT 'Family name',
  `FirstName` varbinary(255) DEFAULT NULL,
  `Email` varbinary(255) DEFAULT NULL COMMENT 'Primary email (IU South Bend email)',
  `AlternateEmail` varbinary(255) DEFAULT NULL COMMENT 'Secondary email address (beside IU email address)',
  `Address1` varbinary(255) DEFAULT NULL COMMENT 'Building/house number, street name',
  `Address2` varbinary(255) DEFAULT NULL COMMENT 'Apartment number',
  `City` varbinary(255) DEFAULT NULL,
  `State` char(2) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Zip` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL COMMENT 'Usually 5 digits',
  `Phone` varbinary(255) DEFAULT NULL COMMENT 'Primary phone number (usually home phone)',
  `MobilePhone` varbinary(255) DEFAULT NULL COMMENT 'Cellular phone number',
  `DeptID` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the department to which the student is admitted to (it may differ from the department of declared program)',
  `CollegeID` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the college to which the department belongs',
  `CampusID` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL COMMENT 'Unique identification string of the campus to which the department belongs',
  `TermAdmitted` varchar(4) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL COMMENT 'The year and semester of admission',
  `BirthYear` int(4) DEFAULT NULL COMMENT 'Year of birth of student',
  `AdmissionStatus` enum('AFQL','APRS') CHARACTER SET latin1 DEFAULT NULL COMMENT 'Admission condition of student: AFQL - admitted fully qualified, APRS-admitted probation',
  `ImageUrl` varbinary(255) NOT NULL COMMENT 'Link to student picture'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `NetworkID`, `Password`, `LastName`, `FirstName`, `Email`, `AlternateEmail`, `Address1`, `Address2`, `City`, `State`, `Zip`, `Phone`, `MobilePhone`, `DeptID`, `CollegeID`, `CampusID`, `TermAdmitted`, `BirthYear`, `AdmissionStatus`, `ImageUrl`) VALUES
('1000', 0x6a6f6e6d617279, 'testpass', 0x4a6f686e736f6e, 0x4d617279, 0x6a6f6e6d61727940697363686564756c65722e697573622e656475, NULL, 0x31303030204d61696e2053742e, NULL, 0x536f7574682042656e64, 'IN', '46615', 0x3537342d3535352d31303030, 0x3537342d3338392d30303030, 'CSCI', 'LAS', 'SB', '4048', 1970, 'AFQL', 0x2f696e636c756465732f70617373706f72745f70686f746f3135302e6a7067),
('1001', 0x7362617274, 'testpass', 0x53696d70736f6e, 0x42617274, 0x736261727440697363686564756c65722e697573622e656475, NULL, 0x31303031204d61696e2053742e, NULL, 0x536f7574682042656e64, 'IN', '46615', 0x3537342d3535352d31303031, NULL, 'CSCI', 'LAS', 'SB', '4072', 1990, 'AFQL', 0x2f696e636c756465732f50696374757265342e6a7067),
('1002', 0x746a6f6e6573, 'testpass', 0x4a6f6e6573, 0x546f6d, 0x746a6f6e65734072657461696e2e697573622e656475, NULL, 0x3136343320313274682073742e, NULL, 0x4d6973686177616b61, 'IN', '48876', 0x3333332d3333392d33383538, NULL, 'CSCI', 'LAS', 'SB', '4072', 1999, 'AFQL', 0x2f696e636c756465732f50696374757265392e6a7067),
('1003', 0x70726f6c6c6965, 'testpass', 0x506f6c6c6965, 0x526f6c6c6965, 0x70726f6c6c69654072657461696e2e697573622e656475, NULL, 0x313233203874682073742e, NULL, 0x4d6973686177616b61, 'IN', '48876', 0x3333332d3339392d33383938, NULL, 'CSCI', 'LAS', 'SB', '4072', 2001, 'AFQL', 0x2f696e636c756465732f50696374757265362e6a7067),
('1004', 0x616b61686f6c6963, 'testpass', 0x4b61686f6c6963, 0x416c, 0x6c6b61686f6c696340697573622e656475, NULL, 0x313233204e6f77686572652053742e, '', 0x536f7574682042656e64, 'IN', '90210', 0x3537342d3535352d31323334, NULL, 'CSCI', 'LAS', 'SB', '4072', 2000, 'AFQL', 0x2f696e636c756465732f50696374757265382e6a7067),
('1005', 0x63726d617279, 'testpass', 0x4372757a, 0x4d617279, 0x63726d6172794072657461696e2e697573622e656475, NULL, 0x31303035204d61696e2053742e, NULL, 0x536f7574682042656e64, 'IN', '46615', 0x3537342d3535352d31303032, NULL, 'CSCI', 'LAS', 'SB', '4072', 1999, 'AFQL', 0x2f696e636c756465732f5069637475726531342e6a7067),
('1006', 0x616a6f686e736f6e, 'testpass', 0x5472756d70, 0x416d6164656f7573, 0x617472756d7040697363686564756c65722e697573622e656475, NULL, 0x31303031204d61696e2053742e, NULL, 0x536f7574682042656e64, 'IN', '46615', 0x3537342d3535352d31303031, NULL, 'CSCI', 'LAS', 'SB', '4072', 1998, 'AFQL', 0x2f696e636c756465732f5069637475726531302e6a7067),
('1010', 0x029123, 'GUESS', 0x4a6f6e6573, 0x4d617279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1482', NULL, NULL, 0x54455354);

-- --------------------------------------------------------

--
-- Table structure for table `teaching_mode`
--

CREATE TABLE `teaching_mode` (
  `TeachingModeID` varchar(32) COLLATE latin1_bin NOT NULL,
  `Description` varchar(200) COLLATE latin1_bin NOT NULL,
  `CheckedUnchecked` varchar(32) COLLATE latin1_bin NOT NULL DEFAULT 'CHECKED'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `teaching_mode`
--

INSERT INTO `teaching_mode` (`TeachingModeID`, `Description`, `CheckedUnchecked`) VALUES
('DO', 'Distance Synchronous Video', 'CHECKED'),
('HY', 'Hybrid- On Campus and Online', 'CHECKED'),
('OA', '100% Online All', 'CHECKED'),
('OI', '76-99% Online Interactive', 'CHECKED'),
('P', 'In Person', 'UNCHECKED'),
('WW', 'Online Classes Before Fall 2013', 'CHECKED');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_preference`
--

CREATE TABLE `teaching_preference` (
  `FacultyID` varchar(8) COLLATE latin1_bin NOT NULL,
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL,
  `Note` varchar(255) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `teaching_preference`
--

INSERT INTO `teaching_preference` (`FacultyID`, `CourseID`, `Note`) VALUES
('HHAKIMZA', '011227', ''),
('HHAKIMZA', '011231', '');

-- --------------------------------------------------------

--
-- Table structure for table `teach_for`
--

CREATE TABLE `teach_for` (
  `FacultyID` varchar(8) COLLATE latin1_bin NOT NULL,
  `DeptID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CollegeID` varchar(10) COLLATE latin1_bin NOT NULL,
  `CampusID` varchar(10) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `teach_for`
--

INSERT INTO `teach_for` (`FacultyID`, `DeptID`, `CollegeID`, `CampusID`) VALUES
('HHAKIMZA', 'CSCI', 'LAS', 'SB'),
('HHAKIMZA', 'INFO', 'LAS', 'SB');

-- --------------------------------------------------------

--
-- Table structure for table `typical_offering_frequency`
--

CREATE TABLE `typical_offering_frequency` (
  `CourseID` varchar(6) COLLATE latin1_bin NOT NULL,
  `Semester` varchar(10) COLLATE latin1_bin NOT NULL COMMENT 'Fall, Spring, Summer1, Summer2',
  `NumberSectionsOffered` int(4) NOT NULL,
  `OfferingFrequency` varchar(32) COLLATE latin1_bin NOT NULL COMMENT 'Every_Year, Odd_Year, Even_Year, On_Demand'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- --------------------------------------------------------

--
-- Table structure for table `z_queries`
--

CREATE TABLE `z_queries` (
  `QueryID` int(25) NOT NULL,
  `Recipient` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `QueryDescription` longtext,
  `SQLStatement` longtext CHARACTER SET latin1,
  `HowToAudit` longtext CHARACTER SET latin1 COMMENT 'Describe how this query can be audited by the SQL programmer.',
  `Audited` varchar(16) CHARACTER SET latin1 DEFAULT 'NO',
  `CampusID` varchar(32) NOT NULL DEFAULT 'SB'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_program`
--
ALTER TABLE `academic_program`
  ADD PRIMARY KEY (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`,`StartAcademicTerm`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `StartAcademicTerm` (`StartAcademicTerm`),
  ADD KEY `DegreeTypeID` (`DegreeTypeID`),
  ADD KEY `academic_program_ibfk_13` (`CollegeID`,`CampusID`,`DeptID`),
  ADD KEY `DegreeID` (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`,`DeptID`,`DegreeID`,`StartAcademicTerm`),
  ADD KEY `CreatedBy` (`PublishedBy`);

--
-- Indexes for table `academic_program_master`
--
ALTER TABLE `academic_program_master`
  ADD PRIMARY KEY (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`),
  ADD KEY `DegreeTypeFgn` (`DegreeTypeID`),
  ADD KEY `DeptFgnKey` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `admin_personnel`
--
ALTER TABLE `admin_personnel`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`LoginID`,`DeptID`,`CollegeID`,`CampusID`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `admin_role_ibfk_2` (`DeptID`,`CollegeID`,`CampusID`),
  ADD KEY `LoginID` (`LoginID`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `available_roles`
--
ALTER TABLE `available_roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`CampusID`,`BuildingID`),
  ADD KEY `BuildingID` (`BuildingID`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`CampusID`);

--
-- Indexes for table `campus_enrollment_cap`
--
ALTER TABLE `campus_enrollment_cap`
  ADD PRIMARY KEY (`CampusID`,`CourseLevel`),
  ADD KEY `CampusID` (`CampusID`);

--
-- Indexes for table `campus_reqs`
--
ALTER TABLE `campus_reqs`
  ADD PRIMARY KEY (`CampusID`,`CampusReqID`,`StartAcademicTerm`),
  ADD KEY `StartAcademicTerm` (`StartAcademicTerm`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CollegeID`,`CampusID`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`);

--
-- Indexes for table `college_reqs`
--
ALTER TABLE `college_reqs`
  ADD PRIMARY KEY (`CampusID`,`CollegeID`,`CollegeReqID`,`StartAcademicTerm`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `StartAcademicTerm` (`StartAcademicTerm`);

--
-- Indexes for table `completion_method`
--
ALTER TABLE `completion_method`
  ADD PRIMARY KEY (`CompletionMethodID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `course_ibfk_1` (`DeptID`,`CollegeID`,`CampusID`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `course_pedagogical_capacity`
--
ALTER TABLE `course_pedagogical_capacity`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `course_relationship`
--
ALTER TABLE `course_relationship`
  ADD PRIMARY KEY (`RelationshipID`);

--
-- Indexes for table `declared_program`
--
ALTER TABLE `declared_program`
  ADD PRIMARY KEY (`StudentID`,`DegreeID`,`CampusID`,`CollegeID`,`DeptID`),
  ADD KEY `FK_declared_program_degree` (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`),
  ADD KEY `FK_declared_program_academic_term` (`DeclaredAcademicTerm`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `DeptID_2` (`DeptID`,`DegreeID`,`CampusID`,`CollegeID`,`DeclaredAcademicTerm`),
  ADD KEY `AcademicProgramFgn` (`CampusID`,`CollegeID`,`DeptID`,`DegreeID`,`DeclaredAcademicTerm`),
  ADD KEY `GraduationTerm` (`GraduationTerm`);

--
-- Indexes for table `degree_req_categories`
--
ALTER TABLE `degree_req_categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `degree_type`
--
ALTER TABLE `degree_type`
  ADD PRIMARY KEY (`DegreeTypeID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DeptID`,`CollegeID`,`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`,`CampusID`),
  ADD KEY `CampusID_3` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `detailed_requirement`
--
ALTER TABLE `detailed_requirement`
  ADD PRIMARY KEY (`DetailedRequirementID`),
  ADD KEY `RequirementID` (`RequirementID`),
  ADD KEY `RequirementID_2` (`RequirementID`,`DetailedRequirementID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`StudentID`,`SectionID`,`AcademicTerm`),
  ADD KEY `enrollment_ibfk_1` (`CourseID`),
  ADD KEY `enrollment_ibfk_2` (`AcademicTerm`),
  ADD KEY `CompletionMethodID` (`CompletionMethodID`),
  ADD KEY `GradeID` (`GradeID`),
  ADD KEY `SectionID` (`SectionID`);

--
-- Indexes for table `expertise`
--
ALTER TABLE `expertise`
  ADD PRIMARY KEY (`ExpertiseID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD KEY `CampusID` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `faculty_expertise`
--
ALTER TABLE `faculty_expertise`
  ADD PRIMARY KEY (`FacultyID`,`ExpertiseID`),
  ADD KEY `ExpertiseID` (`ExpertiseID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`GradeID`);

--
-- Indexes for table `pre_co_req`
--
ALTER TABLE `pre_co_req`
  ADD PRIMARY KEY (`CourseID`,`PreCoReqCourseID`),
  ADD KEY `Relationship` (`Relationship`),
  ADD KEY `PreCoReqCourseID` (`PreCoReqCourseID`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`RequirementID`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `DegreeID` (`DegreeID`),
  ADD KEY `StartAcademicTerm` (`StartAcademicTerm`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `requirements_ibfk_5` (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`,`StartAcademicTerm`),
  ADD KEY `RequirementID` (`RequirementID`,`DegreeID`,`CampusID`,`CollegeID`,`DeptID`,`StartAcademicTerm`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`CampusID`,`BuildingID`,`RoomID`),
  ADD KEY `CampusID` (`CampusID`,`DeptID`,`CollegeID`),
  ADD KEY `BuildingID` (`BuildingID`),
  ADD KEY `RoomDesignationID` (`RoomDesignationID`),
  ADD KEY `CampusID_2` (`CampusID`,`DeptID`,`CollegeID`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `CollegeID` (`CollegeID`);

--
-- Indexes for table `room_designation`
--
ALTER TABLE `room_designation`
  ADD PRIMARY KEY (`DesignationID`);

--
-- Indexes for table `satisfied_by`
--
ALTER TABLE `satisfied_by`
  ADD PRIMARY KEY (`DetailedRequirementID`,`CourseID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `section_future`
--
ALTER TABLE `section_future`
  ADD PRIMARY KEY (`SectionID`,`AcademicTerm`),
  ADD KEY `AcademicTerm` (`AcademicTerm`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID_2` (`DeptID`),
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `TeachingMode` (`TeachingMode`);

--
-- Indexes for table `section_future_meets_at`
--
ALTER TABLE `section_future_meets_at`
  ADD PRIMARY KEY (`SectionID`,`AcademicTerm`),
  ADD KEY `CampusID` (`CampusID`,`BuildingID`,`RoomID`),
  ADD KEY `AcademicTerm` (`AcademicTerm`);

--
-- Indexes for table `section_past`
--
ALTER TABLE `section_past`
  ADD PRIMARY KEY (`SectionID`,`AcademicTerm`),
  ADD KEY `AcademicTerm` (`AcademicTerm`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `DeptID_2` (`DeptID`),
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `TeachingMode` (`TeachingMode`),
  ADD KEY `CampusID_2` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `section_past_meets_at`
--
ALTER TABLE `section_past_meets_at`
  ADD PRIMARY KEY (`SectionID`,`AcademicTerm`),
  ADD KEY `CampusID` (`CampusID`,`BuildingID`,`RoomID`),
  ADD KEY `AcademicTerm` (`AcademicTerm`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`AcademicTerm`),
  ADD UNIQUE KEY `AcademicTermPK` (`AcademicTerm`) USING HASH;

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`),
  ADD UNIQUE KEY `NetworkID_2` (`NetworkID`),
  ADD KEY `DeptID_2` (`DeptID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `CampusID` (`CampusID`),
  ADD KEY `TermAdmitted` (`TermAdmitted`),
  ADD KEY `NetworkID` (`NetworkID`);

--
-- Indexes for table `teaching_mode`
--
ALTER TABLE `teaching_mode`
  ADD PRIMARY KEY (`TeachingModeID`);

--
-- Indexes for table `teaching_preference`
--
ALTER TABLE `teaching_preference`
  ADD PRIMARY KEY (`FacultyID`,`CourseID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `teach_for`
--
ALTER TABLE `teach_for`
  ADD PRIMARY KEY (`FacultyID`,`DeptID`,`CollegeID`,`CampusID`),
  ADD KEY `CampusID` (`CampusID`,`CollegeID`,`DeptID`);

--
-- Indexes for table `typical_offering_frequency`
--
ALTER TABLE `typical_offering_frequency`
  ADD PRIMARY KEY (`CourseID`,`Semester`),
  ADD KEY `Semester` (`Semester`);

--
-- Indexes for table `z_queries`
--
ALTER TABLE `z_queries`
  ADD PRIMARY KEY (`QueryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `available_roles`
--
ALTER TABLE `available_roles`
  MODIFY `RoleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `detailed_requirement`
--
ALTER TABLE `detailed_requirement`
  MODIFY `DetailedRequirementID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identification string of the detailed requirement', AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `expertise`
--
ALTER TABLE `expertise`
  MODIFY `ExpertiseID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `RequirementID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Unique identification string of the requirement', AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `room_designation`
--
ALTER TABLE `room_designation`
  MODIFY `DesignationID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `z_queries`
--
ALTER TABLE `z_queries`
  MODIFY `QueryID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_program`
--
ALTER TABLE `academic_program`
  ADD CONSTRAINT `academic_program_ibfk_1` FOREIGN KEY (`DegreeTypeID`) REFERENCES `degree_type` (`DegreeTypeID`),
  ADD CONSTRAINT `academic_program_ibfk_2` FOREIGN KEY (`StartAcademicTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `academic_program_ibfk_3` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `admin_role_ibfk_1` FOREIGN KEY (`LoginID`) REFERENCES `admin_personnel` (`LoginID`),
  ADD CONSTRAINT `admin_role_ibfk_2` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `campus` (`CampusID`);

--
-- Constraints for table `campus_enrollment_cap`
--
ALTER TABLE `campus_enrollment_cap`
  ADD CONSTRAINT `campus_enrollment_cap_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `campus` (`CampusID`);

--
-- Constraints for table `campus_reqs`
--
ALTER TABLE `campus_reqs`
  ADD CONSTRAINT `campus_reqs_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `campus` (`CampusID`),
  ADD CONSTRAINT `campus_reqs_ibfk_2` FOREIGN KEY (`StartAcademicTerm`) REFERENCES `semester` (`AcademicTerm`);

--
-- Constraints for table `college`
--
ALTER TABLE `college`
  ADD CONSTRAINT `college_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `campus` (`CampusID`);

--
-- Constraints for table `college_reqs`
--
ALTER TABLE `college_reqs`
  ADD CONSTRAINT `college_reqs_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `college` (`CampusID`),
  ADD CONSTRAINT `college_reqs_ibfk_2` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`),
  ADD CONSTRAINT `college_reqs_ibfk_3` FOREIGN KEY (`StartAcademicTerm`) REFERENCES `semester` (`AcademicTerm`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `course_pedagogical_capacity`
--
ALTER TABLE `course_pedagogical_capacity`
  ADD CONSTRAINT `course_pedagogical_capacity_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `declared_program`
--
ALTER TABLE `declared_program`
  ADD CONSTRAINT `declared_program_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `declared_program_ibfk_3` FOREIGN KEY (`DeclaredAcademicTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `declared_program_ibfk_4` FOREIGN KEY (`GraduationTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `declared_program_ibfk_6` FOREIGN KEY (`DegreeID`,`CampusID`,`CollegeID`,`DeptID`) REFERENCES `academic_program` (`DegreeID`, `CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`CampusID`,`CollegeID`) REFERENCES `college` (`CampusID`, `CollegeID`);

--
-- Constraints for table `detailed_requirement`
--
ALTER TABLE `detailed_requirement`
  ADD CONSTRAINT `detailed_requirement_ibfk_1` FOREIGN KEY (`RequirementID`) REFERENCES `requirements` (`RequirementID`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`CompletionMethodID`) REFERENCES `completion_method` (`CompletionMethodID`),
  ADD CONSTRAINT `enrollment_ibfk_5` FOREIGN KEY (`GradeID`) REFERENCES `grade` (`GradeID`),
  ADD CONSTRAINT `enrollment_ibfk_6` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `enrollment_ibfk_7` FOREIGN KEY (`SectionID`) REFERENCES `section_past` (`SectionID`),
  ADD CONSTRAINT `enrollment_ibfk_8` FOREIGN KEY (`CourseID`) REFERENCES `section_past` (`CourseID`),
  ADD CONSTRAINT `enrollment_ibfk_9` FOREIGN KEY (`AcademicTerm`) REFERENCES `section_past` (`AcademicTerm`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `faculty_expertise`
--
ALTER TABLE `faculty_expertise`
  ADD CONSTRAINT `faculty_expertise_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `faculty_expertise_ibfk_2` FOREIGN KEY (`ExpertiseID`) REFERENCES `expertise` (`ExpertiseID`);

--
-- Constraints for table `pre_co_req`
--
ALTER TABLE `pre_co_req`
  ADD CONSTRAINT `pre_co_req_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `pre_co_req_ibfk_2` FOREIGN KEY (`Relationship`) REFERENCES `course_relationship` (`RelationshipID`),
  ADD CONSTRAINT `pre_co_req_ibfk_3` FOREIGN KEY (`PreCoReqCourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `degree_req_categories` (`CategoryID`),
  ADD CONSTRAINT `requirements_ibfk_2` FOREIGN KEY (`DegreeID`) REFERENCES `academic_program` (`DegreeID`),
  ADD CONSTRAINT `requirements_ibfk_3` FOREIGN KEY (`StartAcademicTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `requirements_ibfk_4` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`CampusID`) REFERENCES `building` (`CampusID`),
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`BuildingID`) REFERENCES `building` (`BuildingID`),
  ADD CONSTRAINT `room_ibfk_3` FOREIGN KEY (`RoomDesignationID`) REFERENCES `room_designation` (`DesignationID`),
  ADD CONSTRAINT `room_ibfk_4` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`),
  ADD CONSTRAINT `room_ibfk_5` FOREIGN KEY (`CollegeID`) REFERENCES `department` (`CollegeID`);

--
-- Constraints for table `satisfied_by`
--
ALTER TABLE `satisfied_by`
  ADD CONSTRAINT `satisfied_by_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `satisfied_by_ibfk_2` FOREIGN KEY (`DetailedRequirementID`) REFERENCES `detailed_requirement` (`DetailedRequirementID`);

--
-- Constraints for table `section_past`
--
ALTER TABLE `section_past`
  ADD CONSTRAINT `section_past_ibfk_1` FOREIGN KEY (`AcademicTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `section_past_ibfk_2` FOREIGN KEY (`TeachingMode`) REFERENCES `teaching_mode` (`TeachingModeID`),
  ADD CONSTRAINT `section_past_ibfk_3` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `section_past_ibfk_4` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`),
  ADD CONSTRAINT `section_past_ibfk_5` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `section_past_ibfk_6` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `section_past_meets_at`
--
ALTER TABLE `section_past_meets_at`
  ADD CONSTRAINT `section_past_meets_at_ibfk_1` FOREIGN KEY (`SectionID`) REFERENCES `section_past` (`SectionID`),
  ADD CONSTRAINT `section_past_meets_at_ibfk_2` FOREIGN KEY (`AcademicTerm`) REFERENCES `semester` (`AcademicTerm`),
  ADD CONSTRAINT `section_past_meets_at_ibfk_3` FOREIGN KEY (`CampusID`,`BuildingID`,`RoomID`) REFERENCES `room` (`CampusID`, `BuildingID`, `RoomID`);

--
-- Constraints for table `teaching_preference`
--
ALTER TABLE `teaching_preference`
  ADD CONSTRAINT `teaching_preference_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `teaching_preference_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `teach_for`
--
ALTER TABLE `teach_for`
  ADD CONSTRAINT `teach_for_ibfk_1` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `teach_for_ibfk_2` FOREIGN KEY (`CampusID`,`CollegeID`,`DeptID`) REFERENCES `department` (`CampusID`, `CollegeID`, `DeptID`);

--
-- Constraints for table `typical_offering_frequency`
--
ALTER TABLE `typical_offering_frequency`
  ADD CONSTRAINT `typical_offering_frequency_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`),
  ADD CONSTRAINT `typical_offering_frequency_ibfk_2` FOREIGN KEY (`Semester`) REFERENCES `semester` (`AcademicTerm`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
