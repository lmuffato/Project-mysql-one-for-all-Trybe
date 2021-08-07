DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN `artist_name` VARCHAR(50))
BEGIN
SELECT
a.artist_name AS `artista`,
ab.album_name AS `album`
FROM SpotifyClone.artits a
INNER JOIN SpotifyClone.album ab
ON a.artist_id = ab.artist_id
WHERE a.artist_name = `artista`
ORDER BY 2;
END $$
DELIMITER ;
