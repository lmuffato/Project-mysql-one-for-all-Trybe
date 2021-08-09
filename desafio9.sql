DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(20))
BEGIN
SELECT a.artista_nome AS artista,
b.album_nome AS album
FROM artista AS a 
INNER JOIN
album AS b ON b.artista_id = a.artista_id
WHERE artista_nome = nome;
END $$
DELIMITER ;
