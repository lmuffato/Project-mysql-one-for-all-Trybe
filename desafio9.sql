DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
  SELECT artist_name AS artista, album_title AS album
  FROM SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.albums AS b
  ON a.artist_id = b.artist_id
  WHERE artist_name = artist
  ORDER BY album_title ASC;
END $$

DELIMITER ;
