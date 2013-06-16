DROP TABLE `battingcareer`;

CREATE TABLE `battingcareer` (
  `playerID` varchar(9) NOT NULL DEFAULT '',
  `G` int(11) unsigned DEFAULT NULL,
  `G_batting` int(11) unsigned DEFAULT NULL,
  `AB` int(11) unsigned DEFAULT NULL,
  `R` int(11) unsigned DEFAULT NULL,
  `H` int(11) unsigned DEFAULT NULL,
  `2B` int(11) unsigned DEFAULT NULL,
  `3B` int(11) unsigned DEFAULT NULL,
  `HR` int(11) unsigned DEFAULT NULL,
  `RBI` int(11) unsigned DEFAULT NULL,
  `SB` int(11) unsigned DEFAULT NULL,
  `CS` int(11) unsigned DEFAULT NULL,
  `SBATT` int(11) unsigned DEFAULT NULL COMMENT 'Stolen base attempts',
  `BB` int(11) unsigned DEFAULT NULL,
  `SO` int(11) unsigned DEFAULT NULL,
  `IBB` int(11) unsigned DEFAULT NULL,
  `HBP` int(11) unsigned DEFAULT NULL,
  `SH` int(11) unsigned DEFAULT NULL,
  `SF` int(11) unsigned DEFAULT NULL,
  `GIDP` int(11) unsigned DEFAULT NULL,
  `BA` double unsigned DEFAULT NULL,
  `OBP` double unsigned DEFAULT NULL,
  `SLG` double unsigned DEFAULT NULL,
  `OPS` double unsigned DEFAULT NULL,
  `OPSPlus` double DEFAULT NULL,
  `LMOBP` double unsigned DEFAULT NULL,
  `LMSLG` double unsigned DEFAULT NULL,
  `LMBCI` double DEFAULT NULL,
  `2BPPA` DOUBLE UNSIGNED NULL DEFAULT NULL COMMENT 'Doubles per plate appearance',
  `3BPPA` DOUBLE UNSIGNED NULL DEFAULT NULL COMMENT 'Triples per plate appearance',
  `HRPPA` DOUBLE UNSIGNED NULL DEFAULT NULL COMMENT 'Homeruns per plate appearance',
  `SBAVG` DOUBLE UNSIGNED NULL DEFAULT NULL COMMENT 'Stolen base average',
  PRIMARY KEY (`playerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
;


REPLACE INTO battingcareer
(
	SELECT
		playerID,
		SUM(G),
		SUM(COALESCE(G_batting, 0)),
		SUM(COALESCE(AB, 0)),
		SUM(COALESCE(R, 0)),
		SUM(COALESCE(H, 0)),
		SUM(COALESCE(2B, 0)),
		SUM(COALESCE(3B, 0)),
		SUM(COALESCE(HR, 0)),
		SUM(COALESCE(RBI, 0)),
		SUM(COALESCE(SB, 0)),
		SUM(COALESCE(CS, 0)),
		NULL,
		SUM(COALESCE(BB, 0)),
		SUM(COALESCE(SO, 0)),
		SUM(COALESCE(IBB, 0)),
		SUM(COALESCE(HBP, 0)),
		SUM(COALESCE(SH, 0)),
		SUM(COALESCE(SF, 0)),
		SUM(COALESCE(GIDP, 0)),
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL,
		NULL
	FROM
		lahman.batting
	GROUP BY
		playerID
);

UPDATE battingcareer
SET
	BA = H/AB,
	OBP = (H+BB+HBP) / (AB+BB+HBP+SF),
	SLG = ( (H-2B-3B-HR)+(2*2B)+(3*3B)+(4*HR) ) / AB,
	LMOBP = (CAST(H+BB+HBP AS SIGNED)-(1.75*CS)) / (AB+BB+HBP+SF+CAST(GIDP AS SIGNED)),
	LMSLG = ( (H-2B-3B-HR)+(2*2B)+(3*3B)+(4*HR)+(0.75*SB) ) / AB,
	2BPPA = 2B / (AB+BB+HBP+SF),
	3BPPA = 3B / (AB+BB+HBP+SF),
	HRPPA = HR / (AB+BB+HBP+SF),
	SBATT = SB+CS,
	SBAVG = SB / (SB+CS)
;

UPDATE battingcareer
SET
	OPS = (OBP+SLG)
;


