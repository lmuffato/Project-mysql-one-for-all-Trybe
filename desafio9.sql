DELIMITER $$

CREATE PROCEDURE `albuns_do_artista` (nome_artista VARCHAR(50))
BEGIN
  SELECT artista, album
  FROM artistas AS a
  INNER JOIN albuns AS ab
  ON a.artista_id = ab.artista_id
  WHERE artista = nome_artista
  ORDER BY album;
END $$

DELIMITER ;
