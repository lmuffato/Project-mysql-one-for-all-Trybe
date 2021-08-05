DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT a.artista_name AS artista,
al.album_name AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id AND a.artista_name = nome
ORDER BY `album`;
END $$

DELIMITER ;