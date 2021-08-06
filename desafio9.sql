USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(50))
BEGIN
  SELECT
    ar.name_artist AS `artista`,
    al.name_album AS `album`
  FROM SpotifyClone.artist AS ar
  INNER JOIN SpotifyClone.album AS al
  ON al.artista_id = ar.artista_id
  WHERE ar.name_artist = artist_name
END $$

DELIMITER ;
