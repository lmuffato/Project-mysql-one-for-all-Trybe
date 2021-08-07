DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
  SELECT
  ar.artista_nome AS `artista`,
  al.album AS `album`
  FROM SpotifyClone.artistas AS ar
  INNER JOIN SpotifyClone.albuns AS al
  ON ar.artista_nome = nome_artista AND ar.artista_id = al.artista_id
  ORDER BY al.album;
END $$

DELIMITER ;
