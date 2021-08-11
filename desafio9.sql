USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nameArtist VARCHAR(300))
BEGIN
SELECT
a.artista AS `artista`,
al.album AS `album`
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_ID = al.artista_ID
WHERE a.artista LIKE nameArtist
ORDER BY `album` ASC;
END $$

DELIMITER ;
