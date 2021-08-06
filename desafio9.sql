USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(50))
BEGIN
  SELECT
    ar.name_artist AS `artista`,
    al.name_album AS `album`
  FROM artist AS ar
  INNER JOIN album AS al
  ON al.artista_id = ar.artista_id
  AND ar.name_artist = name
END $$

DELIMITER ;
