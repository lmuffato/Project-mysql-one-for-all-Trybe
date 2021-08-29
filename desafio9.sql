DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN syllable VARCHAR(100))
BEGIN
SELECT artista.artista_nome AS artista, album.album_nome AS album FROM album
INNER JOIN artista
ON artista.artista_id = album.artista_id
WHERE artista.artista_nome LIKE CONCAT('%', syllable, '%')
ORDER BY artista, album.album_nome;
END $$

DELIMITER ;
