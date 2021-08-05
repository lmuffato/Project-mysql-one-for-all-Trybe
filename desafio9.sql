DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
  SELECT
    A.artista artista,
    AL.album album
  FROM
    SpotifyClone.ARTISTAS A
      INNER JOIN
    SpotifyClone.ALBUMS AL ON AL.artista_id = A.artista_id
  WHERE A.artista = nome
  ORDER BY album;
END $$

DELIMITER ;
