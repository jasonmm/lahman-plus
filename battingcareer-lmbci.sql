SET @playerlmbci = (
		SELECT
			100 * ((b.LMOBP / lg.lgLMOBP) + (b.LMSLG / lg.lgLMSLG) - 1) AS CareerLMBCI
		FROM
			battingcareer b,
			(
			SELECT
				(H+BB+HBP-(2.33*CS)-GIDP) / (AB+BB+HBP+SF) AS lgLMOBP,
				( (H-2B-3B-HR) + (2*2B) + (3*3B) + (4*HR) + SB ) / AB as lgLMSLG
			FROM
				(
				SELECT
					SUM(AB) AS AB,
					SUM(H) AS H,
					SUM(BB) AS BB,
					SUM(HBP) AS HBP,
					SUM(CS) AS CS,
					SUM(GIDP) AS GIDP,
					SUM(SF) AS SF,
					SUM(SB) AS SB,
					SUM(2B) AS 2B,
					SUM(3B) AS 3B,
					SUM(HR) AS HR
				FROM
					lgbatting
				WHERE
					CONCAT(yearID, lgID) IN (SELECT CONCAT(yearID, lgID) FROM batting WHERE playerID='?')
				) lgtot
			) lg
		WHERE
			b.playerID='?'
);

UPDATE battingcareer SET LMBCI = @playerlmbci WHERE playerID='?';
