DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(100))
BEGIN
SELECT art.artista_nome AS artista, alb.album_nome AS album
FROM artistas AS art
INNER JOIN albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista_nome = artistaNome
ORDER BY `album` ASC;
END $$
DELIMITER $$
