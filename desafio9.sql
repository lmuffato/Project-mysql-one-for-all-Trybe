USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(100))
BEGIN
SELECT a.Artist_name AS artista, alb.Album_name AS album
FROM Artist AS a
INNER JOIN Album AS alb
ON a.Artist_id = alb.Artist_id
GROUP BY `artista`,`album`
HAVING a.Artist_name = name
ORDER BY `album`;
END $$

DELIMITER ;
