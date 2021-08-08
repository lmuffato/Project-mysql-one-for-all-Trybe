USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(50))
BEGIN
  SELECT 
    ar.artist_name AS `artista`,
    al.album_name AS `album`
  FROM SpotifyClone.ARTIST AS ar
  INNER JOIN SpotifyClone.ALBUM AS al
  ON ar.artist_id = al.artist_id
  WHERE artist_name = name
  ORDER BY `album` ASC;
END $$

DELIMITER ;
