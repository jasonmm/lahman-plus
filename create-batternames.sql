DROP TABLE IF EXISTS batternames;

CREATE TABLE batternames 
SELECT 
	DISTINCT m.playerID AS playerID,
	m.nameFirst AS nameFirst,
	m.nameLast AS nameLast,
	m.debut AS debut,
	m.finalGame AS finalGame,
	COUNT(b.playerID) AS numBattingSeasons
FROM 
	master m LEFT JOIN batting b ON(m.playerID = b.playerID)
WHERE
	m.playerID IS NOT NULL
GROUP BY
	m.playerID

