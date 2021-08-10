USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT a.artist_name AS 'artista', al.album_name AS 'album'
FROM  SpotifyClone.artist  AS a
INNER JOIN SpotifyClone.album AS al
ON a.artist_id = al.artist_id
WHERE a.artist_name = artista
ORDER BY al.album_name ASC;
END $$
DELIMITER ;
