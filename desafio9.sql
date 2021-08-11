DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(60))

BEGIN
  SELECT artist.name AS artista, alb.name AS album FROM SpotifyClone.artist AS artist
  INNER JOIN SpotifyClone.album AS alb
  ON artist.artist_id = alb.artist_id
  WHERE artist.name = artist_name
  ORDER BY album;
END $$

DELIMITER ;
