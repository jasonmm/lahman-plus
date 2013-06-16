CREATE TABLE IF NOT EXISTS `franchises` (
  `franchID` varchar(3) NOT NULL DEFAULT '',
  `G` int(10) unsigned DEFAULT NULL,
  `Ghome` int(10) unsigned DEFAULT NULL,
  `W` int(10) unsigned DEFAULT NULL,
  `L` int(10) unsigned DEFAULT NULL,
  `WinPct` double unsigned DEFAULT NULL,
  `DivWins` int(10) unsigned DEFAULT NULL,
  `WCWins` int(10) unsigned DEFAULT NULL,
  `LgWins` int(10) unsigned DEFAULT NULL,
  `WSWins` int(10) unsigned DEFAULT NULL,
  `AB` int(10) unsigned DEFAULT NULL,
  `R` int(10) unsigned DEFAULT NULL,
  `H` int(10) unsigned DEFAULT NULL,
  `2B` int(10) unsigned DEFAULT NULL,
  `3B` int(10) unsigned DEFAULT NULL,
  `HR` int(10) unsigned DEFAULT NULL,
  `RBI` int(10) unsigned DEFAULT NULL,
  `SB` int(10) unsigned DEFAULT NULL,
  `CS` int(10) unsigned DEFAULT NULL,
  `BB` int(10) unsigned DEFAULT NULL,
  `SO` int(10) unsigned DEFAULT NULL,
  `IBB` int(10) unsigned DEFAULT NULL,
  `HBP` int(10) unsigned DEFAULT NULL,
  `SH` int(10) unsigned DEFAULT NULL,
  `SF` int(10) unsigned DEFAULT NULL,
  `GIDP` int(10) unsigned DEFAULT NULL,
  `RA` int(10) unsigned DEFAULT NULL,
  `ER` int(10) unsigned DEFAULT NULL,
  `CG` int(10) unsigned DEFAULT NULL,
  `SHO` int(10) unsigned DEFAULT NULL,
  `SV` int(10) unsigned DEFAULT NULL,
  `IPouts` int(10) unsigned DEFAULT NULL,
  `HA` int(10) unsigned DEFAULT NULL,
  `HRA` int(10) unsigned DEFAULT NULL,
  `BBA` int(10) unsigned DEFAULT NULL,
  `SOA` int(10) unsigned DEFAULT NULL,
  `E` int(10) unsigned DEFAULT NULL,
  `DP` int(10) unsigned DEFAULT NULL,
  `BA` double unsigned DEFAULT NULL,
  `OBP` double unsigned DEFAULT NULL,
  `SLG` double unsigned DEFAULT NULL,
  `OPS` double unsigned DEFAULT NULL,
  `ERA` double unsigned DEFAULT NULL,
  PRIMARY KEY (`franchID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Total all-time statistics for franchises';


REPLACE INTO franchises
	SELECT
		franchID,
		SUM(G) AS G,
		SUM(COALESCE(Ghome, 0)) AS Ghome,
		SUM(W) AS W,
		SUM(L) AS L,
		SUM(W) / SUM(G) AS WinPct,
		SUM(DivWin = 'Y') AS DivWins,
		SUM(WCWin = 'Y') AS WCWins,
		SUM(LgWin = 'Y') AS LgWins,
		SUM(WSWin = 'Y') AS WSWins,
		SUM(AB) AS AB, 
		SUM(R) AS R,
		SUM(H) AS H,
		SUM(2B) AS 2B,
		SUM(3B) AS 3B,
		SUM(HR) AS HR,
		NULL, /* RBI */
		SUM(SB) AS SB,
		SUM(COALESCE(CS, 0)) AS CS,
		SUM(BB) AS BB,
		SUM(SO) AS SO,
		NULL, /* IBB */
		SUM(COALESCE(HBP,0)) AS HBP,
		NULL, /* SH */
		SUM(COALESCE(SF, 0)) AS SF,
		NULL, /* GIDP */
		SUM(RA) AS RA,
		SUM(ER) AS ER,
		SUM(CG) AS CG,
		SUM(SHO) AS SHO,
		SUM(SV) AS SV,
		SUM(IPouts) AS IPouts,
		SUM(HA) AS HA,
		SUM(HRA) AS HRA,
		SUM(BBA) AS BBA,
		SUM(SOA) AS SOA,
		SUM(E) AS E,
		SUM(COALESCE(DP, 0)) AS DP,
		SUM(H)/SUM(AB) AS BA,
		(SUM(H)+SUM(BB)+SUM(COALESCE(HBP, 0))) / (SUM(AB)+SUM(BB)+SUM(COALESCE(HBP, 0))+SUM(COALESCE(SF, 0))) AS OBP,
		(
			(SUM(H)-SUM(2B)-SUM(3B)-SUM(HR)) /* Singles */
			+
			(SUM(2B)*2)
			+
			(SUM(3B)*3)
			+
			(SUM(HR)*4)
		) / SUM(AB) AS SLG,
		( (SUM(H)+SUM(BB)+SUM(COALESCE(HBP, 0))) / (SUM(AB)+SUM(BB)+SUM(COALESCE(HBP, 0))+SUM(COALESCE(SF, 0))) )/* OnBase */
		+
		( ((SUM(H)-SUM(2B)-SUM(3B)-SUM(HR))+(SUM(2B)*2)+(SUM(3B)*3)+(SUM(HR)*4)) / SUM(AB) ) /* Slugging */
		AS OPS,
		9 * (SUM(ER) / (SUM(IPouts)/3)) AS ERA
	FROM
		teams
	GROUP BY
		franchID
;


UPDATE
	franchises f
	LEFT JOIN
	(
		SELECT
			t.franchID,
			SUM(b.RBI) AS RBI,
			SUM(b.IBB) AS IBB,
			SUM(b.SH) AS SH,
			SUM(b.GIDP) AS GIDP
		FROM
			batting b
			INNER JOIN
			teams t
			ON (b.teamID=t.teamID AND b.yearID=t.yearID)
		GROUP BY
			t.franchID
	) tempf
	ON (f.franchID=tempf.franchID)
SET
	f.RBI=tempf.RBI,
	f.IBB=tempf.IBB,
	f.SH=tempf.SH,
	f.GIDP=tempf.GIDP
WHERE
	f.franchID=tempf.franchID
;


