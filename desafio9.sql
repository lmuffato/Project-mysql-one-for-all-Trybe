DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN artist VARCHAR(50))
BEGIN
  SELECT
    ar.artist AS `artista`,
    al.album AS `album`
  FROM SpotifyClone.artists AS ar
  INNER JOIN SpotifyClone.albums AS al
  ON ar.artist = artist AND ar.id = al.artist
  ORDER BY `album` ASC;
END $$

DELIMITER ;
