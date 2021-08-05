DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(255))
BEGIN
SELECT a.artista AS artista,
al.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
WHERE a.artista = artista;
END $$
DELIMITER ;
