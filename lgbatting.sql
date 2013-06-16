CREATE TABLE IF NOT EXISTS `lgbatting` (
  `lgID` varchar(2) NOT NULL DEFAULT '',
  `yearID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `BattingAvg` double unsigned DEFAULT NULL,
  `OnBaseAvg` double unsigned DEFAULT NULL,
  `SluggingAvg` double unsigned DEFAULT NULL,
  `OPS` double unsigned DEFAULT NULL,
  `LMOBP` double unsigned DEFAULT NULL,
  `LMSLG` double unsigned DEFAULT NULL,
  PRIMARY KEY (`yearID`,`lgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='League per-year stats.'
;

REPLACE INTO lgbatting
	(
		SELECT
			lgID,
			yearID,
			SUM(AB) AS AB,
			SUM(R) AS R,
			SUM(H) AS H,
			SUM(2B) AS 2B,
			SUM(3B) AS 3B,
			SUM(HR) AS HR,
			SUM(RBI) AS RBI,
			SUM(COALESCE(SB, 0)) AS SB,
			SUM(COALESCE(CS, 0)) AS CS,
			SUM(BB) AS BB,
			SUM(COALESCE(SO, 0)) AS SO,
			SUM(COALESCE(IBB, 0)) AS IBB,
			SUM(COALESCE(HBP, 0)) AS HBP,
			SUM(COALESCE(SH, 0)) AS SH,
			SUM(COALESCE(SF, 0)) AS SF,
			SUM(COALESCE(GIDP, 0)) AS GIDP,
			SUM(H)/SUM(AB) AS BattingAvg,
			
			(SUM(H)+SUM(BB)+SUM(COALESCE(HBP,0))) 
			/ 
			(SUM(AB)+SUM(BB)+SUM(COALESCE(HBP, 0))+SUM(COALESCE(SF, 0))) 
			AS OnBaseAvg,
			
			(
				(SUM(H)-SUM(2B)-SUM(3B)-SUM(HR)) /* Singles */
				+
				(SUM(2B)*2)
				+
				(SUM(3B)*3)
				+
				(SUM(HR)*4)
			) 
			/ 
			SUM(AB) 
			AS SluggingAvg,

			/* These are calculated below */
			NULL, /* OPS */
			NULL, /* LMOBP */
			NULL /* LMSLG */

		FROM
			batting
		GROUP BY
			lgID, yearID
	)
;

UPDATE lgbatting
SET
	OPS = OnBaseAvg+SluggingAvg,
	LMOBP = 
		( H + BB + HBP - (2.33*CS) )
		/
		( AB + BB + HBP + SF + GIDP )
	,
	LMSLG = 
		(
			(H - 2B - 3B - HR) /* Singles */
			+
			(2B*2)
			+
			(3B*3)
			+
			(HR*4)
			+
			(1.00*SB)
		) 
		/ 
		AB
;



