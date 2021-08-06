USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
  SELECT
    ar.artist_name  AS artista,
    al.album_name AS album
  FROM Albums AS al
  INNER JOIN Artists AS ar
  ON al.artist_id = ar.artist_id
  WHERE ar.artist_name = artistName
  ORDER BY album;
END $$

DELIMITER ;
