DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(50))
BEGIN
  SELECT
    art.artist_name AS artista,
    alb.album_name AS album
  FROM SpotifyClone.albums AS alb
    INNER JOIN SpotifyClone.artists AS art ON alb.artist_id=art.artist_id AND art.artist_name=artist
    ORDER BY alb.album_name;
END $$

DELIMITER ;
