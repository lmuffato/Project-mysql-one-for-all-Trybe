DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
SELECT a.name_artist AS artista, b.album_name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS b ON a.id_artist = b.id_artist
WHERE a.name_artist = artist
ORDER BY album;
END $$

DELIMITER $$;
