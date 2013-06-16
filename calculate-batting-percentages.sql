ALTER IGNORE TABLE batting
	ADD COLUMN `BA` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `OBP` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `SLG` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `OPS` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `OPSPlus` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `LMOBP` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `LMSLG` DOUBLE UNSIGNED NULL DEFAULT NULL,
	ADD COLUMN `LMBCI` DOUBLE UNSIGNED NULL DEFAULT NULL
;


UPDATE batting b
SET
	BA = H/AB,

	OBP = 
		(H+BB+COALESCE(HBP,0)) 
		/ 
		(AB+BB+COALESCE(HBP, 0)+COALESCE(SF, 0)) 
	,

	SLG =
		(
			(H-2B-3B-HR) /* Singles */
			+
			(2B*2)
			+
			(3B*3)
			+
			(HR*4)
		) 
		/ 
		AB 
	,

	LMOBP = 
		( H + BB + COALESCE(HBP, 0) - (2.33*COALESCE(CS, 0)) )
		/
		( AB + BB + COALESCE(HBP, 0) + COALESCE(SF, 0) + COALESCE(GIDP, 0) )
	,
			
	LMSLG = 
		(
			(H-2B-3B-HR) /* Singles */
			+
			(2B*2)
			+
			(3B*3)
			+
			(HR*4)
			+
			(1.00*COALESCE(SB, 0))
		) / AB 
	,
	
	LMBCI = 
		100 *
		(
			(
				LMOBP
				/
				(SELECT LMOBP FROM lgbatting WHERE yearID=b.yearID AND lgID=b.lgID)
			)
			+
			(
				LMSLG
				/
				(SELECT LMSLG FROM lgbatting WHERE yearID=b.yearID AND lgID=b.lgID)				
			)
			-
			1
		)
;


UPDATE batting 
SET
	OPS = OBP+SLG
;		


