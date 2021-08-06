-- USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_do_artista VARCHAR(150))
BEGIN
SELECT
artista.artista AS artista,
album.album AS album
FROM
SpotifyClone.artistas AS artista
INNER JOIN 
SpotifyClone.albuns AS albuns .
ON artista.artista_id = albuns.artista_id
WHERE artista = nome_do_artista;
END $$

DELIMITER;
