USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT artistas.artista_nome AS artista,
albuns.album_nome AS album
FROM SpotifyClone.artistas AS artistas
INNER JOIN albuns AS albuns
ON albuns.artista_id = artistas.artista_id
WHERE nome = artistas.artista_nome
ORDER BY album;
END $$
DELIMITER ;

-- Conteúdo do Bloco 21.3 do Course
