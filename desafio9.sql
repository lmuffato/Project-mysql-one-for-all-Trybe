DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(100))
BEGIN
SELECT
art.artista AS `artista`,
alb.album AS `album`
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
AND art.artista = artistaNome
ORDER BY `album`;
END $$
DELIMITER ;
