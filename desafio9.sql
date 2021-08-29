USE SpotifyClone; 
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(100)) 
BEGIN 
SELECT art.Name AS artista,
al.Name AS album
FROM artists AS art
INNER JOIN albuns AS al ON art.id = al.ArtistId
WHERE art.Name LIKE artistName
ORDER BY album;
END $$

DELIMITER ; 
