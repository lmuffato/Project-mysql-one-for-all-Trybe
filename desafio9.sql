USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
    ar.name_artist AS `artista`,
    al.name_album AS `album`
  FROM SpotifyClone.album AS al
  INNER JOIN SpotifyClone.artist AS ar
  ON al.artista_id = ar.artista_id
  WHERE ar.name_artist = artist_name
  ORDER BY `album`;
END $$

DELIMITER ;
