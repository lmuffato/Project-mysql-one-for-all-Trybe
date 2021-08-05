DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista_nome VARCHAR(100))
BEGIN
SELECT ar.artista_nome AS 'artista',
al.album_nome AS 'album'
FROM artista ar
INNER JOIN album al
ON al.artista_id = ar.artista_id AND artista_nome = ar.artista_nome
ORDER BY al.album_nome ASC;
END $$
DELIMITER ;
