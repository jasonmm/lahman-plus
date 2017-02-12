--
-- Table structure for table `allstarfull`
--

DROP TABLE IF EXISTS `allstarfull`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allstarfull` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `gameNum` int(11) NOT NULL DEFAULT '0',
  `gameID` varchar(12) DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `GP` int(11) DEFAULT NULL,
  `startingPos` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`gameNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `appearances`
--

DROP TABLE IF EXISTS `appearances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appearances` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `G_all` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `G_batting` int(11) DEFAULT NULL,
  `G_defense` int(11) DEFAULT NULL,
  `G_p` int(11) DEFAULT NULL,
  `G_c` int(11) DEFAULT NULL,
  `G_1b` int(11) DEFAULT NULL,
  `G_2b` int(11) DEFAULT NULL,
  `G_3b` int(11) DEFAULT NULL,
  `G_ss` int(11) DEFAULT NULL,
  `G_lf` int(11) DEFAULT NULL,
  `G_cf` int(11) DEFAULT NULL,
  `G_rf` int(11) DEFAULT NULL,
  `G_of` int(11) DEFAULT NULL,
  `G_dh` int(11) DEFAULT NULL,
  `G_ph` int(11) DEFAULT NULL,
  `G_pr` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `awardsmanagers`
--

DROP TABLE IF EXISTS `awardsmanagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awardsmanagers` (
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `awardID` varchar(75) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `tie` varchar(1) DEFAULT '',
  `notes` text,
  PRIMARY KEY (`playerID`,`awardID`,`yearID`,`lgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `awardsplayers`
--

DROP TABLE IF EXISTS `awardsplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awardsplayers` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `awardID` varchar(255) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `tie` varchar(1) DEFAULT '',
  `notes` text,
  PRIMARY KEY (`playerID`,`awardID`,`yearID`,`lgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `awardssharemanagers`
--

DROP TABLE IF EXISTS `awardssharemanagers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awardssharemanagers` (
  `awardID` varchar(25) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `pointsWon` int(11) DEFAULT NULL,
  `pointsMax` int(11) DEFAULT NULL,
  `votesFirst` int(11) DEFAULT NULL,
  PRIMARY KEY (`awardID`,`yearID`,`lgID`,`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `awardsshareplayers`
--

DROP TABLE IF EXISTS `awardsshareplayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awardsshareplayers` (
  `awardID` varchar(25) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `pointsWon` int(11) DEFAULT NULL,
  `pointsMax` int(11) DEFAULT NULL,
  `votesFirst` int(11) DEFAULT NULL,
  PRIMARY KEY (`awardID`,`yearID`,`lgID`,`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `batting`
--

DROP TABLE IF EXISTS `batting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batting` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL,
  `stint` int(11) NOT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `G` int(11) DEFAULT NULL,
  `AB` int(11) DEFAULT NULL,
  `R` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `RBI` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `IBB` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `SH` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `GIDP` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `battingcareer`
--

DROP TABLE IF EXISTS `battingcareer`;
/*!50001 DROP VIEW IF EXISTS `battingcareer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `battingcareer` (
  `playerID` tinyint NOT NULL,
  `G` tinyint NOT NULL,
  `PA` tinyint NOT NULL,
  `AB` tinyint NOT NULL,
  `R` tinyint NOT NULL,
  `H` tinyint NOT NULL,
  `1B` tinyint NOT NULL,
  `2B` tinyint NOT NULL,
  `3B` tinyint NOT NULL,
  `HR` tinyint NOT NULL,
  `RBI` tinyint NOT NULL,
  `SB` tinyint NOT NULL,
  `CS` tinyint NOT NULL,
  `BB` tinyint NOT NULL,
  `SO` tinyint NOT NULL,
  `IBB` tinyint NOT NULL,
  `HBP` tinyint NOT NULL,
  `SH` tinyint NOT NULL,
  `SF` tinyint NOT NULL,
  `GIDP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `battingleague`
--

DROP TABLE IF EXISTS `battingleague`;
/*!50001 DROP VIEW IF EXISTS `battingleague`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `battingleague` (
  `lgID` tinyint NOT NULL,
  `yearID` tinyint NOT NULL,
  `AB` tinyint NOT NULL,
  `R` tinyint NOT NULL,
  `H` tinyint NOT NULL,
  `2B` tinyint NOT NULL,
  `3B` tinyint NOT NULL,
  `HR` tinyint NOT NULL,
  `RBI` tinyint NOT NULL,
  `SB` tinyint NOT NULL,
  `CS` tinyint NOT NULL,
  `BB` tinyint NOT NULL,
  `SO` tinyint NOT NULL,
  `IBB` tinyint NOT NULL,
  `HBP` tinyint NOT NULL,
  `SH` tinyint NOT NULL,
  `SF` tinyint NOT NULL,
  `GIDP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `battingmlbperyear`
--

DROP TABLE IF EXISTS `battingmlbperyear`;
/*!50001 DROP VIEW IF EXISTS `battingmlbperyear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `battingmlbperyear` (
  `yearID` tinyint NOT NULL,
  `AB` tinyint NOT NULL,
  `R` tinyint NOT NULL,
  `H` tinyint NOT NULL,
  `2B` tinyint NOT NULL,
  `3B` tinyint NOT NULL,
  `HR` tinyint NOT NULL,
  `RBI` tinyint NOT NULL,
  `SB` tinyint NOT NULL,
  `CS` tinyint NOT NULL,
  `BB` tinyint NOT NULL,
  `SO` tinyint NOT NULL,
  `IBB` tinyint NOT NULL,
  `HBP` tinyint NOT NULL,
  `SH` tinyint NOT NULL,
  `SF` tinyint NOT NULL,
  `GIDP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `battingperpamlbperyear`
--

DROP TABLE IF EXISTS `battingperpamlbperyear`;
/*!50001 DROP VIEW IF EXISTS `battingperpamlbperyear`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `battingperpamlbperyear` (
  `yearid` tinyint NOT NULL,
  `pa` tinyint NOT NULL,
  `ab` tinyint NOT NULL,
  `h` tinyint NOT NULL,
  `1b` tinyint NOT NULL,
  `2b` tinyint NOT NULL,
  `3b` tinyint NOT NULL,
  `hr` tinyint NOT NULL,
  `sb` tinyint NOT NULL,
  `cs` tinyint NOT NULL,
  `bb` tinyint NOT NULL,
  `so` tinyint NOT NULL,
  `ibb` tinyint NOT NULL,
  `hbp` tinyint NOT NULL,
  `sh` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `gidp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `battingpost`
--

DROP TABLE IF EXISTS `battingpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battingpost` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `round` varchar(10) NOT NULL DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `G` int(11) DEFAULT NULL,
  `AB` int(11) DEFAULT NULL,
  `R` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `RBI` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `IBB` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `SH` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `GIDP` text,
  PRIMARY KEY (`yearID`,`round`,`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `collegeplaying`
--

DROP TABLE IF EXISTS `collegeplaying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collegeplaying` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `schoolID` varchar(15) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`playerID`,`schoolID`,`yearID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fielding`
--

DROP TABLE IF EXISTS `fielding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielding` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `stint` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `POS` varchar(2) NOT NULL DEFAULT '',
  `G` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `InnOuts` int(11) DEFAULT NULL,
  `PO` int(11) DEFAULT NULL,
  `A` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `PB` int(11) DEFAULT NULL,
  `WP` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `ZR` double DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`,`POS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldingof`
--

DROP TABLE IF EXISTS `fieldingof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldingof` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `stint` int(11) NOT NULL DEFAULT '0',
  `Glf` int(11) DEFAULT NULL,
  `Gcf` int(11) DEFAULT NULL,
  `Grf` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldingofsplit`
--

DROP TABLE IF EXISTS `fieldingofsplit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldingofsplit` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `stint` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT NULL,
  `POS` varchar(2) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `InnOuts` int(11) DEFAULT NULL,
  `PO` int(11) DEFAULT NULL,
  `A` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `PB` int(11) DEFAULT NULL,
  `WP` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `ZR` double DEFAULT NULL,
  PRIMARY KEY (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldingpost`
--

DROP TABLE IF EXISTS `fieldingpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldingpost` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `round` varchar(10) NOT NULL DEFAULT '',
  `POS` varchar(2) NOT NULL DEFAULT '',
  `G` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `InnOuts` int(11) DEFAULT NULL,
  `PO` int(11) DEFAULT NULL,
  `A` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `TP` int(11) DEFAULT NULL,
  `PB` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`round`,`POS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `franchises`
--

DROP TABLE IF EXISTS `franchises`;
/*!50001 DROP VIEW IF EXISTS `franchises`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `franchises` (
  `franchID` tinyint NOT NULL,
  `G` tinyint NOT NULL,
  `Ghome` tinyint NOT NULL,
  `W` tinyint NOT NULL,
  `L` tinyint NOT NULL,
  `DivWin` tinyint NOT NULL,
  `LgWin` tinyint NOT NULL,
  `WSWin` tinyint NOT NULL,
  `WCWin` tinyint NOT NULL,
  `R` tinyint NOT NULL,
  `AB` tinyint NOT NULL,
  `H` tinyint NOT NULL,
  `2B` tinyint NOT NULL,
  `3B` tinyint NOT NULL,
  `HR` tinyint NOT NULL,
  `BB` tinyint NOT NULL,
  `SO` tinyint NOT NULL,
  `SB` tinyint NOT NULL,
  `CS` tinyint NOT NULL,
  `HBP` tinyint NOT NULL,
  `SF` tinyint NOT NULL,
  `RA` tinyint NOT NULL,
  `ER` tinyint NOT NULL,
  `CG` tinyint NOT NULL,
  `SHO` tinyint NOT NULL,
  `SV` tinyint NOT NULL,
  `IPouts` tinyint NOT NULL,
  `E` tinyint NOT NULL,
  `DB` tinyint NOT NULL,
  `attendance` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `guts`
--

DROP TABLE IF EXISTS `guts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guts` (
  `yearId` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `woba` decimal(5,3) unsigned DEFAULT NULL,
  `wobaScale` decimal(5,3) unsigned DEFAULT NULL,
  `wbb` decimal(5,3) unsigned DEFAULT NULL,
  `whbp` decimal(5,3) unsigned DEFAULT NULL,
  `w1b` decimal(5,3) unsigned DEFAULT NULL,
  `w2b` decimal(5,3) unsigned DEFAULT NULL,
  `w3b` decimal(5,3) unsigned DEFAULT NULL,
  `whr` decimal(5,3) unsigned DEFAULT NULL,
  `runSB` decimal(5,3) unsigned DEFAULT NULL,
  `runCS` decimal(5,3) unsigned DEFAULT NULL,
  `runPerPA` decimal(5,3) unsigned DEFAULT NULL,
  `runPerW` decimal(5,3) unsigned DEFAULT NULL,
  `cFIP` decimal(5,3) unsigned DEFAULT NULL,
  PRIMARY KEY (`yearId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table data was exported from FanGraphs “guts” table: http://www.fangraphs.com/guts.aspx?type=cn';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `halloffame`
--

DROP TABLE IF EXISTS `halloffame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halloffame` (
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `yearid` int(11) NOT NULL DEFAULT '0',
  `votedBy` varchar(64) NOT NULL DEFAULT '',
  `ballots` int(11) DEFAULT NULL,
  `needed` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `inducted` varchar(1) DEFAULT '',
  `category` varchar(20) DEFAULT '',
  `needed_note` text,
  PRIMARY KEY (`playerID`,`yearid`,`votedBy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `homegames`
--

DROP TABLE IF EXISTS `homegames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homegames` (
  `year.key` int(11) NOT NULL DEFAULT '0',
  `league.key` char(2) DEFAULT '',
  `team.key` char(3) NOT NULL DEFAULT '',
  `park.key` char(5) NOT NULL DEFAULT '',
  `span.first` text,
  `span.last` text,
  `games` int(11) DEFAULT NULL,
  `openings` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  PRIMARY KEY (`year.key`,`team.key`,`park.key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managers` (
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `inseason` int(11) NOT NULL DEFAULT '0',
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `plyrMgr` char(1) DEFAULT '',
  PRIMARY KEY (`playerID`,`yearID`,`teamID`,`inseason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `managershalf`
--

DROP TABLE IF EXISTS `managershalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `managershalf` (
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `inseason` int(11) NOT NULL DEFAULT '0',
  `half` int(11) NOT NULL DEFAULT '0',
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`teamID`,`inseason`,`half`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `master`
--

DROP TABLE IF EXISTS `master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master` (
  `playerID` varchar(10) NOT NULL DEFAULT '',
  `birthYear` int(11) DEFAULT NULL,
  `birthMonth` int(11) DEFAULT NULL,
  `birthDay` int(11) DEFAULT NULL,
  `birthCountry` varchar(50) DEFAULT '',
  `birthState` char(2) DEFAULT '',
  `birthCity` varchar(50) DEFAULT '',
  `deathYear` int(11) DEFAULT NULL,
  `deathMonth` int(11) DEFAULT NULL,
  `deathDay` int(11) DEFAULT NULL,
  `deathCountry` varchar(50) DEFAULT '',
  `deathState` char(2) DEFAULT '',
  `deathCity` varchar(50) DEFAULT '',
  `nameFirst` varchar(50) DEFAULT '',
  `nameLast` varchar(50) DEFAULT '',
  `nameGiven` varchar(255) DEFAULT '',
  `weight` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `bats` char(1) DEFAULT '',
  `throws` char(1) DEFAULT '',
  `debut` datetime DEFAULT NULL,
  `finalGame` datetime DEFAULT NULL,
  `retroID` varchar(9) DEFAULT '',
  `bbrefID` varchar(9) DEFAULT '',
  PRIMARY KEY (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parks`
--

DROP TABLE IF EXISTS `parks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parks` (
  `park.key` char(5) NOT NULL DEFAULT '',
  `park.name` varchar(255) DEFAULT '',
  `park.alias` varchar(255) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `state` char(2) DEFAULT '',
  `country` varchar(50) DEFAULT '',
  PRIMARY KEY (`park.key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pitching`
--

DROP TABLE IF EXISTS `pitching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pitching` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL,
  `stint` int(11) NOT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `CG` int(11) DEFAULT NULL,
  `SHO` int(11) DEFAULT NULL,
  `SV` int(11) DEFAULT NULL,
  `IPouts` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `ER` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `BAOpp` double DEFAULT NULL,
  `ERA` double DEFAULT NULL,
  `IBB` int(11) DEFAULT NULL,
  `WP` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `BK` int(11) DEFAULT NULL,
  `BFP` int(11) DEFAULT NULL,
  `GF` int(11) DEFAULT NULL,
  `R` int(11) DEFAULT NULL,
  `SH` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `GIDP` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`stint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `pitchingcareer`
--

DROP TABLE IF EXISTS `pitchingcareer`;
/*!50001 DROP VIEW IF EXISTS `pitchingcareer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pitchingcareer` (
  `playerID` tinyint NOT NULL,
  `W` tinyint NOT NULL,
  `L` tinyint NOT NULL,
  `G` tinyint NOT NULL,
  `GS` tinyint NOT NULL,
  `CG` tinyint NOT NULL,
  `SHO` tinyint NOT NULL,
  `SV` tinyint NOT NULL,
  `IPouts` tinyint NOT NULL,
  `H` tinyint NOT NULL,
  `ER` tinyint NOT NULL,
  `HR` tinyint NOT NULL,
  `BB` tinyint NOT NULL,
  `SO` tinyint NOT NULL,
  `IBB` tinyint NOT NULL,
  `WP` tinyint NOT NULL,
  `HBP` tinyint NOT NULL,
  `BK` tinyint NOT NULL,
  `BFP` tinyint NOT NULL,
  `GF` tinyint NOT NULL,
  `R` tinyint NOT NULL,
  `SH` tinyint NOT NULL,
  `SF` tinyint NOT NULL,
  `GIDP` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pitchingpost`
--

DROP TABLE IF EXISTS `pitchingpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pitchingpost` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `yearID` int(11) NOT NULL DEFAULT '0',
  `round` varchar(10) NOT NULL DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `GS` int(11) DEFAULT NULL,
  `CG` int(11) DEFAULT NULL,
  `SHO` int(11) DEFAULT NULL,
  `SV` int(11) DEFAULT NULL,
  `IPouts` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `ER` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `BAOpp` double DEFAULT NULL,
  `ERA` double DEFAULT NULL,
  `IBB` int(11) DEFAULT NULL,
  `WP` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `BK` int(11) DEFAULT NULL,
  `BFP` int(11) DEFAULT NULL,
  `GF` int(11) DEFAULT NULL,
  `R` int(11) DEFAULT NULL,
  `SH` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `GIDP` text,
  PRIMARY KEY (`playerID`,`yearID`,`round`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salaries` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`playerID`,`yearID`,`teamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `schoolID` varchar(15) NOT NULL DEFAULT '',
  `name_full` varchar(255) DEFAULT '',
  `city` varchar(55) DEFAULT '',
  `state` varchar(55) DEFAULT '',
  `country` varchar(55) DEFAULT '',
  PRIMARY KEY (`schoolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `seriespost`
--

DROP TABLE IF EXISTS `seriespost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seriespost` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `round` varchar(5) NOT NULL DEFAULT '',
  `teamIDwinner` varchar(3) NOT NULL DEFAULT '',
  `lgIDwinner` varchar(2) NOT NULL DEFAULT '',
  `teamIDloser` varchar(3) NOT NULL DEFAULT '',
  `lgIDloser` varchar(2) NOT NULL DEFAULT '',
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL,
  PRIMARY KEY (`yearID`,`round`,`teamIDwinner`,`lgIDwinner`,`teamIDloser`,`lgIDloser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) DEFAULT '',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `franchID` varchar(3) DEFAULT '',
  `divID` char(1) DEFAULT '',
  `Rank` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `Ghome` text,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `DivWin` char(1) DEFAULT '',
  `WCWin` char(1) DEFAULT '',
  `LgWin` char(1) DEFAULT '',
  `WSWin` char(1) DEFAULT '',
  `R` int(11) DEFAULT NULL,
  `AB` int(11) DEFAULT NULL,
  `H` int(11) DEFAULT NULL,
  `2B` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `BB` int(11) DEFAULT NULL,
  `SO` int(11) DEFAULT NULL,
  `SB` int(11) DEFAULT NULL,
  `CS` int(11) DEFAULT NULL,
  `HBP` int(11) DEFAULT NULL,
  `SF` int(11) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `ER` int(11) DEFAULT NULL,
  `ERA` double DEFAULT NULL,
  `CG` int(11) DEFAULT NULL,
  `SHO` int(11) DEFAULT NULL,
  `SV` int(11) DEFAULT NULL,
  `IPouts` int(11) DEFAULT NULL,
  `HA` int(11) DEFAULT NULL,
  `HRA` int(11) DEFAULT NULL,
  `BBA` int(11) DEFAULT NULL,
  `SOA` int(11) DEFAULT NULL,
  `E` int(11) DEFAULT NULL,
  `DP` int(11) DEFAULT NULL,
  `FP` double DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `park` varchar(255) DEFAULT '',
  `attendance` int(11) DEFAULT NULL,
  `BPF` int(11) DEFAULT NULL,
  `PPF` int(11) DEFAULT NULL,
  `teamIDBR` varchar(3) DEFAULT '',
  `teamIDlahman45` varchar(3) DEFAULT '',
  `teamIDretro` varchar(3) DEFAULT '',
  PRIMARY KEY (`teamID`,`yearID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teamsfranchises`
--

DROP TABLE IF EXISTS `teamsfranchises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamsfranchises` (
  `franchID` varchar(3) NOT NULL DEFAULT '',
  `franchName` varchar(50) DEFAULT '',
  `active` varchar(2) DEFAULT '',
  `NAassoc` varchar(3) DEFAULT '',
  PRIMARY KEY (`franchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teamshalf`
--

DROP TABLE IF EXISTS `teamshalf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamshalf` (
  `yearID` int(11) NOT NULL DEFAULT '0',
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `teamID` varchar(3) NOT NULL DEFAULT '',
  `Half` int(11) NOT NULL DEFAULT '0',
  `divID` char(1) DEFAULT '',
  `DivWin` char(1) DEFAULT '',
  `Rank` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  PRIMARY KEY (`teamID`,`yearID`,`lgID`,`Half`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `battingcareer`
--

/*!50001 DROP TABLE IF EXISTS `battingcareer`*/;
/*!50001 DROP VIEW IF EXISTS `battingcareer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `battingcareer` AS select `batting`.`playerID` AS `playerID`,sum(`batting`.`G`) AS `G`,(((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + coalesce(sum(`batting`.`IBB`),0)) + coalesce(sum(`batting`.`HBP`),0)) + coalesce(sum(`batting`.`SH`),0)) + coalesce(sum(`batting`.`SF`),0)) AS `PA`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,(((sum(`batting`.`H`) - sum(`batting`.`2B`)) - sum(`batting`.`3B`)) - sum(`batting`.`HR`)) AS `1B`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(`batting`.`SB`) AS `SB`,sum(`batting`.`CS`) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(`batting`.`SO`) AS `SO`,sum(`batting`.`IBB`) AS `IBB`,sum(`batting`.`HBP`) AS `HBP`,sum(`batting`.`SH`) AS `SH`,sum(`batting`.`SF`) AS `SF`,sum(`batting`.`GIDP`) AS `GIDP` from `batting` group by `batting`.`playerID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `battingleague`
--

/*!50001 DROP TABLE IF EXISTS `battingleague`*/;
/*!50001 DROP VIEW IF EXISTS `battingleague`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `battingleague` AS select `batting`.`lgID` AS `lgID`,`batting`.`yearID` AS `yearID`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(coalesce(`batting`.`SB`,0)) AS `SB`,sum(coalesce(`batting`.`CS`,0)) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(coalesce(`batting`.`SO`,0)) AS `SO`,sum(coalesce(`batting`.`IBB`,0)) AS `IBB`,sum(coalesce(`batting`.`HBP`,0)) AS `HBP`,sum(coalesce(`batting`.`SH`,0)) AS `SH`,sum(coalesce(`batting`.`SF`,0)) AS `SF`,sum(coalesce(`batting`.`GIDP`,0)) AS `GIDP` from `batting` group by `batting`.`lgID`,`batting`.`yearID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `battingmlbperyear`
--

/*!50001 DROP TABLE IF EXISTS `battingmlbperyear`*/;
/*!50001 DROP VIEW IF EXISTS `battingmlbperyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `battingmlbperyear` AS select `batting`.`yearID` AS `yearID`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(coalesce(`batting`.`SB`,0)) AS `SB`,sum(coalesce(`batting`.`CS`,0)) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(coalesce(`batting`.`SO`,0)) AS `SO`,sum(coalesce(`batting`.`IBB`,0)) AS `IBB`,sum(coalesce(`batting`.`HBP`,0)) AS `HBP`,sum(coalesce(`batting`.`SH`,0)) AS `SH`,sum(coalesce(`batting`.`SF`,0)) AS `SF`,sum(coalesce(`batting`.`GIDP`,0)) AS `GIDP` from `batting` group by `batting`.`yearID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `battingperpamlbperyear`
--

/*!50001 DROP TABLE IF EXISTS `battingperpamlbperyear`*/;
/*!50001 DROP VIEW IF EXISTS `battingperpamlbperyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `battingperpamlbperyear` AS select `batting`.`yearID` AS `yearid`,(((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`)) AS `pa`,sum(`batting`.`AB`) AS `ab`,sum(`batting`.`H`) AS `h`,((((sum(`batting`.`H`) - sum(`batting`.`2B`)) - sum(`batting`.`3B`)) - sum(`batting`.`HR`)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `1b`,(sum(`batting`.`2B`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `2b`,(sum(`batting`.`3B`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `3b`,(sum(`batting`.`HR`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `hr`,(sum(coalesce(`batting`.`SB`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sb`,(sum(coalesce(`batting`.`CS`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `cs`,(sum(`batting`.`BB`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `bb`,(sum(coalesce(`batting`.`SO`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `so`,(sum(coalesce(`batting`.`IBB`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `ibb`,(sum(coalesce(`batting`.`HBP`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `hbp`,(sum(coalesce(`batting`.`SH`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sh`,(sum(coalesce(`batting`.`SF`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sf`,(sum(coalesce(`batting`.`GIDP`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `gidp` from `batting` group by `batting`.`yearID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `franchises`
--

/*!50001 DROP TABLE IF EXISTS `franchises`*/;
/*!50001 DROP VIEW IF EXISTS `franchises`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `franchises` AS select `teams`.`franchID` AS `franchID`,sum(`teams`.`G`) AS `G`,sum(coalesce(`teams`.`Ghome`,0)) AS `Ghome`,sum(`teams`.`W`) AS `W`,sum(`teams`.`L`) AS `L`,sum(if((coalesce(`teams`.`DivWin`,'N') = 'Y'),1,0)) AS `DivWin`,sum(if((coalesce(`teams`.`LgWin`,'N') = 'Y'),1,0)) AS `LgWin`,sum(if((coalesce(`teams`.`WSWin`,'N') = 'Y'),1,0)) AS `WSWin`,sum(if((coalesce(`teams`.`WCWin`,'N') = 'Y'),1,0)) AS `WCWin`,sum(`teams`.`R`) AS `R`,sum(`teams`.`AB`) AS `AB`,sum(`teams`.`H`) AS `H`,sum(`teams`.`2B`) AS `2B`,sum(`teams`.`3B`) AS `3B`,sum(`teams`.`HR`) AS `HR`,sum(`teams`.`BB`) AS `BB`,sum(`teams`.`SO`) AS `SO`,sum(coalesce(`teams`.`SB`,0)) AS `SB`,sum(coalesce(`teams`.`CS`,0)) AS `CS`,sum(coalesce(`teams`.`HBP`,0)) AS `HBP`,sum(coalesce(`teams`.`SF`,0)) AS `SF`,sum(`teams`.`RA`) AS `RA`,sum(`teams`.`ER`) AS `ER`,sum(`teams`.`CG`) AS `CG`,sum(`teams`.`SHO`) AS `SHO`,sum(`teams`.`SV`) AS `SV`,sum(`teams`.`IPouts`) AS `IPouts`,sum(`teams`.`E`) AS `E`,sum(coalesce(`teams`.`DP`,0)) AS `DB`,sum(coalesce(`teams`.`attendance`,0)) AS `attendance` from `teams` group by `teams`.`franchID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pitchingcareer`
--

/*!50001 DROP TABLE IF EXISTS `pitchingcareer`*/;
/*!50001 DROP VIEW IF EXISTS `pitchingcareer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pitchingcareer` AS select `pitching`.`playerID` AS `playerID`,sum(`pitching`.`W`) AS `W`,sum(`pitching`.`L`) AS `L`,sum(`pitching`.`G`) AS `G`,sum(`pitching`.`GS`) AS `GS`,sum(`pitching`.`CG`) AS `CG`,sum(`pitching`.`SHO`) AS `SHO`,sum(`pitching`.`SV`) AS `SV`,sum(`pitching`.`IPouts`) AS `IPouts`,sum(`pitching`.`H`) AS `H`,sum(`pitching`.`ER`) AS `ER`,sum(`pitching`.`HR`) AS `HR`,sum(`pitching`.`BB`) AS `BB`,sum(`pitching`.`SO`) AS `SO`,sum(`pitching`.`IBB`) AS `IBB`,sum(`pitching`.`WP`) AS `WP`,sum(`pitching`.`HBP`) AS `HBP`,sum(`pitching`.`BK`) AS `BK`,sum(`pitching`.`BFP`) AS `BFP`,sum(`pitching`.`GF`) AS `GF`,sum(`pitching`.`R`) AS `R`,sum(`pitching`.`SH`) AS `SH`,sum(`pitching`.`SF`) AS `SF`,sum(`pitching`.`GIDP`) AS `GIDP` from `pitching` group by `pitching`.`playerID` order by sum(`pitching`.`W`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;


