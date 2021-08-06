USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN name VARCHAR(50))
BEGIN
  SELECT
    ar.name AS artista,
    al.name AS album
  FROM artists AS ar
  LEFT JOIN albuns AS al
  ON ar.artist_id = al.artist_id
  WHERE ar.name = name;
END $$

DELIMITER ;
