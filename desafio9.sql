DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista_check VARCHAR(100))
BEGIN
  SELECT 
    art.nome AS artista,
    alb.album AS album
  FROM SpotifyClone.artista AS art
  INNER JOIN SpotifyClone.album AS alb
  ON art.artista_id = alb.artista_id
  WHERE art.nome = artista_check
  ORDER BY artista, album;
END $$

DELIMITER ;
