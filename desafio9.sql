DELIMITER $ $ CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome VARCHAR(50)) BEGIN
SELECT
  a.artista artista,
  al.album album
FROM
  SpotifyClone.ARTISTAS a
  INNER JOIN SpotifyClone.ALBUMS al ON al.artista_id = a.artista_id
WHERE
  a.artista = nome
ORDER BY
  album;
END $ $ DELIMITER;
