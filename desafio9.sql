DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(50))
BEGIN 
  SELECT a.artist AS artista, al.album AS album
  FROM SpotifyClone.artists a
  INNER JOIN SpotifyClone.albums al
  WHERE artist_name = a.artist 
  AND al.artist_id = a.artist_id
  ORDER BY album;
END $$

DELIMITER ;
