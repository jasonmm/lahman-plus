
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table allstarfull
# ------------------------------------------------------------

CREATE TABLE `allstarfull` (
  `playerID` varchar(9) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `gameNum` int(11) DEFAULT NULL,
  `gameID` varchar(12) DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `GP` int(11) DEFAULT NULL,
  `startingPos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table appearances
# ------------------------------------------------------------

CREATE TABLE `appearances` (
  `yearID` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(9) DEFAULT '',
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
  `G_pr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table awardsmanagers
# ------------------------------------------------------------

CREATE TABLE `awardsmanagers` (
  `playerID` varchar(10) DEFAULT '',
  `awardID` varchar(75) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `tie` varchar(1) DEFAULT '',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table awardsplayers
# ------------------------------------------------------------

CREATE TABLE `awardsplayers` (
  `playerID` varchar(9) DEFAULT '',
  `awardID` varchar(255) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `tie` varchar(1) DEFAULT '',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table awardssharemanagers
# ------------------------------------------------------------

CREATE TABLE `awardssharemanagers` (
  `awardID` varchar(25) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(10) DEFAULT '',
  `pointsWon` int(11) DEFAULT NULL,
  `pointsMax` int(11) DEFAULT NULL,
  `votesFirst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table awardsshareplayers
# ------------------------------------------------------------

CREATE TABLE `awardsshareplayers` (
  `awardID` varchar(25) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(9) DEFAULT '',
  `pointsWon` int(11) DEFAULT NULL,
  `pointsMax` int(11) DEFAULT NULL,
  `votesFirst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table batting
# ------------------------------------------------------------

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



# Dump of table battingcareer
# ------------------------------------------------------------

CREATE TABLE `battingcareer` (
   `playerID` VARCHAR(9) NOT NULL DEFAULT '',
   `G` DECIMAL(32) NULL DEFAULT NULL,
   `PA` DECIMAL(37) NULL DEFAULT NULL,
   `AB` DECIMAL(32) NULL DEFAULT NULL,
   `R` DECIMAL(32) NULL DEFAULT NULL,
   `H` DECIMAL(32) NULL DEFAULT NULL,
   `1B` DECIMAL(35) NULL DEFAULT NULL,
   `2B` DECIMAL(32) NULL DEFAULT NULL,
   `3B` DECIMAL(32) NULL DEFAULT NULL,
   `HR` DECIMAL(32) NULL DEFAULT NULL,
   `RBI` DECIMAL(32) NULL DEFAULT NULL,
   `SB` DECIMAL(32) NULL DEFAULT NULL,
   `CS` DECIMAL(32) NULL DEFAULT NULL,
   `BB` DECIMAL(32) NULL DEFAULT NULL,
   `SO` DECIMAL(32) NULL DEFAULT NULL,
   `IBB` DECIMAL(32) NULL DEFAULT NULL,
   `HBP` DECIMAL(32) NULL DEFAULT NULL,
   `SH` DECIMAL(32) NULL DEFAULT NULL,
   `SF` DECIMAL(32) NULL DEFAULT NULL,
   `GIDP` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table battingleague
# ------------------------------------------------------------

CREATE TABLE `battingleague` (
   `lgID` VARCHAR(2) NULL DEFAULT '',
   `yearID` INT(11) NOT NULL,
   `AB` DECIMAL(32) NULL DEFAULT NULL,
   `R` DECIMAL(32) NULL DEFAULT NULL,
   `H` DECIMAL(32) NULL DEFAULT NULL,
   `2B` DECIMAL(32) NULL DEFAULT NULL,
   `3B` DECIMAL(32) NULL DEFAULT NULL,
   `HR` DECIMAL(32) NULL DEFAULT NULL,
   `RBI` DECIMAL(32) NULL DEFAULT NULL,
   `SB` DECIMAL(32) NULL DEFAULT NULL,
   `CS` DECIMAL(32) NULL DEFAULT NULL,
   `BB` DECIMAL(32) NULL DEFAULT NULL,
   `SO` DECIMAL(32) NULL DEFAULT NULL,
   `IBB` DECIMAL(32) NULL DEFAULT NULL,
   `HBP` DECIMAL(32) NULL DEFAULT NULL,
   `SH` DECIMAL(32) NULL DEFAULT NULL,
   `SF` DECIMAL(32) NULL DEFAULT NULL,
   `GIDP` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table battingmlbperyear
# ------------------------------------------------------------

CREATE TABLE `battingmlbperyear` (
   `yearID` INT(11) NOT NULL,
   `AB` DECIMAL(32) NULL DEFAULT NULL,
   `R` DECIMAL(32) NULL DEFAULT NULL,
   `H` DECIMAL(32) NULL DEFAULT NULL,
   `2B` DECIMAL(32) NULL DEFAULT NULL,
   `3B` DECIMAL(32) NULL DEFAULT NULL,
   `HR` DECIMAL(32) NULL DEFAULT NULL,
   `RBI` DECIMAL(32) NULL DEFAULT NULL,
   `SB` DECIMAL(32) NULL DEFAULT NULL,
   `CS` DECIMAL(32) NULL DEFAULT NULL,
   `BB` DECIMAL(32) NULL DEFAULT NULL,
   `SO` DECIMAL(32) NULL DEFAULT NULL,
   `IBB` DECIMAL(32) NULL DEFAULT NULL,
   `HBP` DECIMAL(32) NULL DEFAULT NULL,
   `SH` DECIMAL(32) NULL DEFAULT NULL,
   `SF` DECIMAL(32) NULL DEFAULT NULL,
   `GIDP` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table battingperpamlbperyear
# ------------------------------------------------------------

CREATE TABLE `battingperpamlbperyear` (
   `yearid` INT(11) NOT NULL,
   `pa` DECIMAL(37) NULL DEFAULT NULL,
   `ab` DECIMAL(32) NULL DEFAULT NULL,
   `h` DECIMAL(32) NULL DEFAULT NULL,
   `1b` DECIMAL(39) NULL DEFAULT NULL,
   `2b` DECIMAL(36) NULL DEFAULT NULL,
   `3b` DECIMAL(36) NULL DEFAULT NULL,
   `hr` DECIMAL(36) NULL DEFAULT NULL,
   `sb` DECIMAL(36) NULL DEFAULT NULL,
   `cs` DECIMAL(36) NULL DEFAULT NULL,
   `bb` DECIMAL(36) NULL DEFAULT NULL,
   `so` DECIMAL(36) NULL DEFAULT NULL,
   `ibb` DECIMAL(36) NULL DEFAULT NULL,
   `hbp` DECIMAL(36) NULL DEFAULT NULL,
   `sh` DECIMAL(36) NULL DEFAULT NULL,
   `sf` DECIMAL(36) NULL DEFAULT NULL,
   `gidp` DECIMAL(36) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table battingpost
# ------------------------------------------------------------

CREATE TABLE `battingpost` (
  `yearID` int(11) DEFAULT NULL,
  `round` varchar(10) DEFAULT '',
  `playerID` varchar(9) DEFAULT '',
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
  `GIDP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table collegeplaying
# ------------------------------------------------------------

CREATE TABLE `collegeplaying` (
  `playerID` varchar(9) DEFAULT '',
  `schoolID` varchar(15) DEFAULT '',
  `yearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table fielding
# ------------------------------------------------------------

CREATE TABLE `fielding` (
  `playerID` varchar(9) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `stint` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `POS` varchar(2) DEFAULT '',
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
  `ZR` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table fieldingof
# ------------------------------------------------------------

CREATE TABLE `fieldingof` (
  `playerID` varchar(9) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `stint` int(11) DEFAULT NULL,
  `Glf` int(11) DEFAULT NULL,
  `Gcf` int(11) DEFAULT NULL,
  `Grf` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table fieldingpost
# ------------------------------------------------------------

CREATE TABLE `fieldingpost` (
  `playerID` varchar(9) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `round` varchar(10) DEFAULT '',
  `POS` varchar(2) DEFAULT '',
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
  `CS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table franchises
# ------------------------------------------------------------

CREATE TABLE `franchises` (
   `franchID` VARCHAR(3) NULL DEFAULT '',
   `G` DECIMAL(32) NULL DEFAULT NULL,
   `Ghome` DOUBLE NULL DEFAULT NULL,
   `W` DECIMAL(32) NULL DEFAULT NULL,
   `L` DECIMAL(32) NULL DEFAULT NULL,
   `DivWin` DECIMAL(23) NULL DEFAULT NULL,
   `LgWin` DECIMAL(23) NULL DEFAULT NULL,
   `WSWin` DECIMAL(23) NULL DEFAULT NULL,
   `WCWin` DECIMAL(23) NULL DEFAULT NULL,
   `R` DECIMAL(32) NULL DEFAULT NULL,
   `AB` DECIMAL(32) NULL DEFAULT NULL,
   `H` DECIMAL(32) NULL DEFAULT NULL,
   `2B` DECIMAL(32) NULL DEFAULT NULL,
   `3B` DECIMAL(32) NULL DEFAULT NULL,
   `HR` DECIMAL(32) NULL DEFAULT NULL,
   `BB` DECIMAL(32) NULL DEFAULT NULL,
   `SO` DECIMAL(32) NULL DEFAULT NULL,
   `SB` DECIMAL(32) NULL DEFAULT NULL,
   `CS` DECIMAL(32) NULL DEFAULT NULL,
   `HBP` DECIMAL(32) NULL DEFAULT NULL,
   `SF` DECIMAL(32) NULL DEFAULT NULL,
   `RA` DECIMAL(32) NULL DEFAULT NULL,
   `ER` DECIMAL(32) NULL DEFAULT NULL,
   `CG` DECIMAL(32) NULL DEFAULT NULL,
   `SHO` DECIMAL(32) NULL DEFAULT NULL,
   `SV` DECIMAL(32) NULL DEFAULT NULL,
   `IPouts` DECIMAL(32) NULL DEFAULT NULL,
   `E` DECIMAL(32) NULL DEFAULT NULL,
   `DB` DECIMAL(32) NULL DEFAULT NULL,
   `attendance` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table guts
# ------------------------------------------------------------

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



# Dump of table halloffame
# ------------------------------------------------------------

CREATE TABLE `halloffame` (
  `playerID` varchar(10) DEFAULT '',
  `yearid` int(11) DEFAULT NULL,
  `votedBy` varchar(64) DEFAULT '',
  `ballots` int(11) DEFAULT NULL,
  `needed` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `inducted` varchar(1) DEFAULT '',
  `category` varchar(20) DEFAULT '',
  `needed_note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table homegames
# ------------------------------------------------------------

CREATE TABLE `homegames` (
  `year.key` int(11) DEFAULT NULL,
  `league.key` char(2) DEFAULT '',
  `team.key` char(3) DEFAULT '',
  `park.key` char(5) DEFAULT '',
  `span.first` text,
  `span.last` text,
  `games` int(11) DEFAULT NULL,
  `openings` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table managers
# ------------------------------------------------------------

CREATE TABLE `managers` (
  `playerID` varchar(10) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `inseason` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `plyrMgr` char(1) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table managershalf
# ------------------------------------------------------------

CREATE TABLE `managershalf` (
  `playerID` varchar(10) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `inseason` int(11) DEFAULT NULL,
  `half` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table master
# ------------------------------------------------------------

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



# Dump of table parks
# ------------------------------------------------------------

CREATE TABLE `parks` (
  `park.key` char(5) DEFAULT '',
  `park.name` varchar(255) DEFAULT '',
  `park.alias` varchar(255) DEFAULT '',
  `city` varchar(50) DEFAULT '',
  `state` char(2) DEFAULT '',
  `country` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table pitching
# ------------------------------------------------------------

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



# Dump of table pitchingcareer
# ------------------------------------------------------------

CREATE TABLE `pitchingcareer` (
   `playerID` VARCHAR(9) NOT NULL DEFAULT '',
   `W` DECIMAL(32) NULL DEFAULT NULL,
   `L` DECIMAL(32) NULL DEFAULT NULL,
   `G` DECIMAL(32) NULL DEFAULT NULL,
   `GS` DECIMAL(32) NULL DEFAULT NULL,
   `CG` DECIMAL(32) NULL DEFAULT NULL,
   `SHO` DECIMAL(32) NULL DEFAULT NULL,
   `SV` DECIMAL(32) NULL DEFAULT NULL,
   `IPouts` DECIMAL(32) NULL DEFAULT NULL,
   `H` DECIMAL(32) NULL DEFAULT NULL,
   `ER` DECIMAL(32) NULL DEFAULT NULL,
   `HR` DECIMAL(32) NULL DEFAULT NULL,
   `BB` DECIMAL(32) NULL DEFAULT NULL,
   `SO` DECIMAL(32) NULL DEFAULT NULL,
   `IBB` DECIMAL(32) NULL DEFAULT NULL,
   `WP` DECIMAL(32) NULL DEFAULT NULL,
   `HBP` DECIMAL(32) NULL DEFAULT NULL,
   `BK` DECIMAL(32) NULL DEFAULT NULL,
   `BFP` DECIMAL(32) NULL DEFAULT NULL,
   `GF` DECIMAL(32) NULL DEFAULT NULL,
   `R` DECIMAL(32) NULL DEFAULT NULL,
   `SH` DECIMAL(32) NULL DEFAULT NULL,
   `SF` DECIMAL(32) NULL DEFAULT NULL,
   `GIDP` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table pitchingpost
# ------------------------------------------------------------

CREATE TABLE `pitchingpost` (
  `playerID` varchar(9) DEFAULT '',
  `yearID` int(11) DEFAULT NULL,
  `round` varchar(10) DEFAULT '',
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
  `GIDP` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table salaries
# ------------------------------------------------------------

CREATE TABLE `salaries` (
  `yearID` int(11) DEFAULT NULL,
  `teamID` varchar(3) DEFAULT '',
  `lgID` varchar(2) DEFAULT '',
  `playerID` varchar(9) DEFAULT '',
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table schools
# ------------------------------------------------------------

CREATE TABLE `schools` (
  `schoolID` varchar(15) DEFAULT '',
  `name_full` varchar(255) DEFAULT '',
  `city` varchar(55) DEFAULT '',
  `state` varchar(55) DEFAULT '',
  `country` varchar(55) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table seriespost
# ------------------------------------------------------------

CREATE TABLE `seriespost` (
  `yearID` int(11) DEFAULT NULL,
  `round` varchar(5) DEFAULT '',
  `teamIDwinner` varchar(3) DEFAULT '',
  `lgIDwinner` varchar(2) DEFAULT '',
  `teamIDloser` varchar(3) DEFAULT '',
  `lgIDloser` varchar(2) DEFAULT '',
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ties` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table teams
# ------------------------------------------------------------

CREATE TABLE `teams` (
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
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
  `teamIDretro` varchar(3) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table teamsfranchises
# ------------------------------------------------------------

CREATE TABLE `teamsfranchises` (
  `franchID` varchar(3) DEFAULT '',
  `franchName` varchar(50) DEFAULT '',
  `active` varchar(2) DEFAULT '',
  `NAassoc` varchar(3) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table teamshalf
# ------------------------------------------------------------

CREATE TABLE `teamshalf` (
  `yearID` int(11) DEFAULT NULL,
  `lgID` varchar(2) DEFAULT '',
  `teamID` varchar(3) DEFAULT '',
  `Half` int(11) DEFAULT NULL,
  `divID` char(1) DEFAULT '',
  `DivWin` char(1) DEFAULT '',
  `Rank` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `W` int(11) DEFAULT NULL,
  `L` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





# Replace placeholder table for battingmlbperyear with correct view syntax
# ------------------------------------------------------------

DROP TABLE `battingmlbperyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `battingmlbperyear`
AS SELECT
   `batting`.`yearID` AS `yearID`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(coalesce(`batting`.`SB`,0)) AS `SB`,sum(coalesce(`batting`.`CS`,0)) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(coalesce(`batting`.`SO`,0)) AS `SO`,sum(coalesce(`batting`.`IBB`,0)) AS `IBB`,sum(coalesce(`batting`.`HBP`,0)) AS `HBP`,sum(coalesce(`batting`.`SH`,0)) AS `SH`,sum(coalesce(`batting`.`SF`,0)) AS `SF`,sum(coalesce(`batting`.`GIDP`,0)) AS `GIDP`
FROM `batting` group by `batting`.`yearID`;


# Replace placeholder table for pitchingcareer with correct view syntax
# ------------------------------------------------------------

DROP TABLE `pitchingcareer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pitchingcareer`
AS SELECT
   `pitching`.`playerID` AS `playerID`,sum(`pitching`.`W`) AS `W`,sum(`pitching`.`L`) AS `L`,sum(`pitching`.`G`) AS `G`,sum(`pitching`.`GS`) AS `GS`,sum(`pitching`.`CG`) AS `CG`,sum(`pitching`.`SHO`) AS `SHO`,sum(`pitching`.`SV`) AS `SV`,sum(`pitching`.`IPouts`) AS `IPouts`,sum(`pitching`.`H`) AS `H`,sum(`pitching`.`ER`) AS `ER`,sum(`pitching`.`HR`) AS `HR`,sum(`pitching`.`BB`) AS `BB`,sum(`pitching`.`SO`) AS `SO`,sum(`pitching`.`IBB`) AS `IBB`,sum(`pitching`.`WP`) AS `WP`,sum(`pitching`.`HBP`) AS `HBP`,sum(`pitching`.`BK`) AS `BK`,sum(`pitching`.`BFP`) AS `BFP`,sum(`pitching`.`GF`) AS `GF`,sum(`pitching`.`R`) AS `R`,sum(`pitching`.`SH`) AS `SH`,sum(`pitching`.`SF`) AS `SF`,sum(`pitching`.`GIDP`) AS `GIDP`
FROM `pitching` group by `pitching`.`playerID` order by sum(`pitching`.`W`) desc;


# Replace placeholder table for battingcareer with correct view syntax
# ------------------------------------------------------------

DROP TABLE `battingcareer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `battingcareer`
AS SELECT
   `batting`.`playerID` AS `playerID`,sum(`batting`.`G`) AS `G`,(((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + coalesce(sum(`batting`.`IBB`),0)) + coalesce(sum(`batting`.`HBP`),0)) + coalesce(sum(`batting`.`SH`),0)) + coalesce(sum(`batting`.`SF`),0)) AS `PA`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,(((sum(`batting`.`H`) - sum(`batting`.`2B`)) - sum(`batting`.`3B`)) - sum(`batting`.`HR`)) AS `1B`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(`batting`.`SB`) AS `SB`,sum(`batting`.`CS`) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(`batting`.`SO`) AS `SO`,sum(`batting`.`IBB`) AS `IBB`,sum(`batting`.`HBP`) AS `HBP`,sum(`batting`.`SH`) AS `SH`,sum(`batting`.`SF`) AS `SF`,sum(`batting`.`GIDP`) AS `GIDP`
FROM `batting` group by `batting`.`playerID`;


# Replace placeholder table for battingperpamlbperyear with correct view syntax
# ------------------------------------------------------------

DROP TABLE `battingperpamlbperyear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `battingperpamlbperyear`
AS SELECT
   `batting`.`yearID` AS `yearid`,(((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`)) AS `pa`,sum(`batting`.`AB`) AS `ab`,sum(`batting`.`H`) AS `h`,((((sum(`batting`.`H`) - sum(`batting`.`2B`)) - sum(`batting`.`3B`)) - sum(`batting`.`HR`)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `1b`,(sum(`batting`.`2B`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `2b`,(sum(`batting`.`3B`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `3b`,(sum(`batting`.`HR`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `hr`,(sum(coalesce(`batting`.`SB`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sb`,(sum(coalesce(`batting`.`CS`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `cs`,(sum(`batting`.`BB`) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `bb`,(sum(coalesce(`batting`.`SO`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `so`,(sum(coalesce(`batting`.`IBB`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `ibb`,(sum(coalesce(`batting`.`HBP`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `hbp`,(sum(coalesce(`batting`.`SH`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sh`,(sum(coalesce(`batting`.`SF`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `sf`,(sum(coalesce(`batting`.`GIDP`,0)) / (((((sum(`batting`.`AB`) + sum(`batting`.`BB`)) + sum(`batting`.`IBB`)) + sum(`batting`.`HBP`)) + sum(`batting`.`SH`)) + sum(`batting`.`SF`))) AS `gidp`
FROM `batting` group by `batting`.`yearID`;


# Replace placeholder table for battingleague with correct view syntax
# ------------------------------------------------------------

DROP TABLE `battingleague`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `battingleague`
AS SELECT
   `batting`.`lgID` AS `lgID`,
   `batting`.`yearID` AS `yearID`,sum(`batting`.`AB`) AS `AB`,sum(`batting`.`R`) AS `R`,sum(`batting`.`H`) AS `H`,sum(`batting`.`2B`) AS `2B`,sum(`batting`.`3B`) AS `3B`,sum(`batting`.`HR`) AS `HR`,sum(`batting`.`RBI`) AS `RBI`,sum(coalesce(`batting`.`SB`,0)) AS `SB`,sum(coalesce(`batting`.`CS`,0)) AS `CS`,sum(`batting`.`BB`) AS `BB`,sum(coalesce(`batting`.`SO`,0)) AS `SO`,sum(coalesce(`batting`.`IBB`,0)) AS `IBB`,sum(coalesce(`batting`.`HBP`,0)) AS `HBP`,sum(coalesce(`batting`.`SH`,0)) AS `SH`,sum(coalesce(`batting`.`SF`,0)) AS `SF`,sum(coalesce(`batting`.`GIDP`,0)) AS `GIDP`
FROM `batting` group by `batting`.`lgID`,`batting`.`yearID`;


# Replace placeholder table for franchises with correct view syntax
# ------------------------------------------------------------

DROP TABLE `franchises`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `franchises`
AS SELECT
   `teams`.`franchID` AS `franchID`,sum(`teams`.`G`) AS `G`,sum(coalesce(`teams`.`Ghome`,0)) AS `Ghome`,sum(`teams`.`W`) AS `W`,sum(`teams`.`L`) AS `L`,sum(if((coalesce(`teams`.`DivWin`,'N') = 'Y'),1,0)) AS `DivWin`,sum(if((coalesce(`teams`.`LgWin`,'N') = 'Y'),1,0)) AS `LgWin`,sum(if((coalesce(`teams`.`WSWin`,'N') = 'Y'),1,0)) AS `WSWin`,sum(if((coalesce(`teams`.`WCWin`,'N') = 'Y'),1,0)) AS `WCWin`,sum(`teams`.`R`) AS `R`,sum(`teams`.`AB`) AS `AB`,sum(`teams`.`H`) AS `H`,sum(`teams`.`2B`) AS `2B`,sum(`teams`.`3B`) AS `3B`,sum(`teams`.`HR`) AS `HR`,sum(`teams`.`BB`) AS `BB`,sum(`teams`.`SO`) AS `SO`,sum(coalesce(`teams`.`SB`,0)) AS `SB`,sum(coalesce(`teams`.`CS`,0)) AS `CS`,sum(coalesce(`teams`.`HBP`,0)) AS `HBP`,sum(coalesce(`teams`.`SF`,0)) AS `SF`,sum(`teams`.`RA`) AS `RA`,sum(`teams`.`ER`) AS `ER`,sum(`teams`.`CG`) AS `CG`,sum(`teams`.`SHO`) AS `SHO`,sum(`teams`.`SV`) AS `SV`,sum(`teams`.`IPouts`) AS `IPouts`,sum(`teams`.`E`) AS `E`,sum(coalesce(`teams`.`DP`,0)) AS `DB`,sum(coalesce(`teams`.`attendance`,0)) AS `attendance`
FROM `teams` group by `teams`.`franchID`;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
