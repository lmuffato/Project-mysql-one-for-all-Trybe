-- USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_do_artista VARCHAR(150))
BEGIN
SELECT
artistas.artista,
album.album
FROM
SpotifyClone.artistas AS artistas
INNER JOIN 
SpotifyClone.albuns AS albuns
ON artistas.artista_id = albuns.artista_id
WHERE artista = nome_do_artista;
END $$

DELIMITER;
