DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(30))
BEGIN
SELECT a.artist AS artista,
ab.album AS album
FROM album ab
INNER JOIN artist a ON ab.artist_id = a.artist_id
WHERE a.artist = nome
ORDER BY album;
END $$

DELIMITER ;
