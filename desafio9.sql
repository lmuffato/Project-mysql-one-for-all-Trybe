DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN art VARCHAR(100))
BEGIN
SELECT a.artista AS 'artista', al.album AS 'album'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE a.artista = art
ORDER BY `album`, `artista`;
END $$

DELIMITER ;
