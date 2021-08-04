USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name_artists VARCHAR(100))
BEGIN
  SELECT 
    ar.artists_name AS `artista`,
    al.albums_name AS `album`
  FROM SpotifyClone.artists AS ar
  INNER JOIN SpotifyClone.albums AS al
  ON ar.artists_id = al.artists_id
  WHERE artists_name = name_artists
  ORDER BY `album` ASC;
END $$

DELIMITER ;
