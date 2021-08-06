USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT a.nome AS artista, al.album AS album
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al ON a.artista_id = al.artista_id
WHERE a.nome = nome_artista
ORDER BY `album`;
END $$

DELIMITER ;
