DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN `artista` VARCHAR(50))
BEGIN
SELECT
a.artist_name AS `artista`,
ab.album_name AS `album`
FROM SpotifyClone.ARTISTS AS a
INNER JOIN SpotifyClone.ALBUMS AS ab
ON a.artist_id = ab.artist_id
WHERE a.artist_name = `artista`
ORDER BY 2;
END $$
DELIMITER ;
