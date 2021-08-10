DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
SELECT t2.artista AS artista, t1.album AS album
FROM albuns AS t1, artistas AS t2
WHERE t2.artista IN (nome_artista) AND t1.artista_id = t2.artista_id;
END $$
DELIMITER ;
