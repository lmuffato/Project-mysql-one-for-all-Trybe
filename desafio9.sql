USE SpotifyClone;
DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista (IN artista_nome VARCHAR(45)) BEGIN
SELECT
  art.artist_name AS artista,
  alb.album_name AS album
FROM
  SpotifyClone.albuns AS alb
  JOIN SpotifyClone.artists AS art ON alb.artist_id = art.artist_id
  AND `artist_name` = artista_nome
ORDER BY
  `album`;
END $$ DELIMITER;
