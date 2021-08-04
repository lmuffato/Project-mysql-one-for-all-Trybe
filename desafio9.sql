USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(artistParam VARCHAR(50))
  BEGIN
  SELECT 
  art.name_artist, alb.name_album
  FROM artist AS art
  INNER JOIN album as alb
  ON art.id_artist = alb.id_artist
  WHERE art.name_artist = artistParam;
  END $$

DELIMITER ;
