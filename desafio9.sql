DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
SELECT sart.artista artista, salb.album album FROM SpotifyClone.Album salb
INNER JOIN SpotifyClone.Artist sart
ON sart.artista_id = salb.artista_id
WHERE sart.artista = artist
ORDER BY 1 ASC, 2 ASC ;
END $$

DELIMITER ;
