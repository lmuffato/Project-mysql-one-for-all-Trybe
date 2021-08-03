USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN `name` VARCHAR(100))
BEGIN
SELECT
a.artist_name AS `artista`,
al.album_name AS `album`
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS a
ON al.artist_id = a.artist_id
WHERE a.artist_name = `name`
ORDER BY `album`;
END $$

DELIMITER ;
