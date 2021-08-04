DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(100))
BEGIN
SELECT art.artista, alb.album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista = artista
ORDER BY alb.album;

END $$

DELIMITER ;
