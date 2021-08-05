DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(100))
BEGIN
  SELECT a.artista_nome AS artista,
  alb.album_nome AS album
  FROM SpotifyClone.artista AS a
  INNER JOIN
  SpotifyClone.album AS alb
  ON alb.artista_id = a.artista_id AND nome_artista = a.artista_nome
  ORDER BY alb.album_nome ASC;
END $$

DELIMITER ;

CALL albuns_do_artista('Walter Phoenix');
