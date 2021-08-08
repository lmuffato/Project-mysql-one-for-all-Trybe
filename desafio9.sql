USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(100))
BEGIN
SELECT
ar.artist AS 'artista',
al.album AS 'album'
FROM artists AS ar
JOIN albums AS al
ON al.artist_id = ar.artist_id AND artist_name = ar.artist
ORDER BY `album`;
END $$

DELIMITER ;
