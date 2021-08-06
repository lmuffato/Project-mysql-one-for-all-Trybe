CREATE VIEW top_3_artistas AS
SELECT
  a.nome AS artista,
  (
    SELECT
      COUNT(*)
    FROM
      SpotifyClone.seguidores
    WHERE
      artista_id = a.artista_id
  ) AS seguidores
FROM
  SpotifyClone.seguidores AS s
  INNER JOIN SpotifyClone.artistas AS a ON s.artista_id = a.artista_id
GROUP BY
  artista,
  seguidores
ORDER BY
  seguidores DESC,
  artista
LIMIT
  3;
