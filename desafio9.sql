USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(50))
BEGIN
SELECT artistas.artista_nome AS artista,
albuns.album_nome AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns
ON artistas.artista_id = albuns.artista_id
WHERE artistas.artista_nome = artista_nome
ORDER BY `album`;
END $$

DELIMITER ;
