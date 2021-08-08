CREATE VIEW top_3_artistas AS
SELECT
  a.artist_name AS artista,
  (
    SELECT
      COUNT(*)
    FROM
      SpotifyClone.seguidores
    WHERE
      artist_id = a.artist_id
  ) AS seguidores
FROM
  SpotifyClone.seguidores AS s
  INNER JOIN SpotifyClone.artistas AS a ON s.artist_id = a.artist_id
GROUP BY
  artista,
  seguidores
ORDER BY
  seguidores DESC,
  artista
LIMIT
  3;
