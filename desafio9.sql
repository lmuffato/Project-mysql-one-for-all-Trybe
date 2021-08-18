DELIMITER $ $ CREATE PROCEDURE albuns_do_artista (IN nome VARCHAR(50)) BEGIN
SELECT
  A.artista AS artista,
  AL.album AS album
FROM
  SpotifyClone.ARTISTAS AS A
  INNER JOIN SpotifyClone.ALBUMS AS AL ON AL.artista_id = A.artista_id
WHERE
  A.artista = nome
ORDER BY
  album;
END $ $ DELIMITER;
