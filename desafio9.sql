USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN Artist_name VARCHAR(100))
BEGIN
SELECT Artist_name AS artista, Album_name AS album
FROM Artist AS a
INNER JOIN Album AS alb
ON a.Artist_id = alb.Artist_id
GROUP BY `artista`,`album`
HAVING `artista` = Artist_name
ORDER BY `album`;
END $$

DELIMITER ;
