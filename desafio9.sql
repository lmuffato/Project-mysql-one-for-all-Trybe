DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN search_name VARCHAR(50))
BEGIN
SELECT
(SELECT artist_name FROM artists WHERE artist_id = a.artist_id) AS artista,
album_name AS album
FROM albums AS a
HAVING artista = search_name;
END $$

DELIMITER ;
