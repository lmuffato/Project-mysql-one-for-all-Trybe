DROP PROCEDURE IF EXISTS albuns_do_artista;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(155))
BEGIN
SELECT A.name AS artista,
AL.title AS album
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.albums AS AL
ON AL.artist_id=A.artist_id
WHERE A.name = artist_name;
END $$

DELIMITER ;
