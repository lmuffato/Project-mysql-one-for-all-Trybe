-- https://www.mysqltutorial.org/stored-procedures-parameters.aspx
DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(32))
BEGIN
SELECT
    artist_name AS artista,
    al.name AS album
FROM 
    SpotifyClone.album AS al
INNER JOIN
    SpotifyClone.artist AS ar
    ON ar.artist_id = al.artist_id
WHERE ar.name = artist_name
ORDER BY album;
END$$

DELIMITER ;
