DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
  SELECT a.artista AS artista, al.album AS album
  FROM SpotifyClone.artistas as a
  INNER JOIN Spotifyclone.albuns as al
  ON a.artista_id = al.artista_id
  AND a.artista = nome
  ORDER BY album;
END $$
DELIMITER;
