DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(100))
BEGIN
SELECT art.artista_nome AS artista, alb.nome_album AS album
FROM Artistas AS art
INNER JOIN Albuns AS alb
ON alb.artista_id = art.artista_id
WHERE art.artista_nome = artistaNome
ORDER BY `album` ASC;
END $$
DELIMITER ;
