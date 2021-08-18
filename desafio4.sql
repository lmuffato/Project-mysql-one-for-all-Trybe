CREATE VIEW top_3_artistas AS
SELECT
  A.artista AS artista,
  COUNT(DISTINCT AF.usuario_id) AS seguidores
FROM
  SpotifyClone.ARTISTAS AS A
  INNER JOIN SpotifyClone.ARTISTAS_FOLLOW AS AF ON A.artista_id = AF.artista_id
GROUP BY
  artista
ORDER BY
  seguidores DESC
LIMIT
  3;
