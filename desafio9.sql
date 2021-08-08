DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
  SELECT
    art.artist_name AS artista,
    alb.album_name AS album
  FROM SpotifyClone.albuns AS alb
    INNER JOIN SpotifyClone.artistas AS art ON alb.artist_id = art.artist_id
    AND artist_name = artista
    ORDER BY album_name;
END $$

DELIMITER ;
