CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT
  a.artista artista,
  COUNT(DISTINCT us.usuario_id) seguidores
FROM
  spotifyclone.artistas a
  INNER JOIN spotifyclone.usuarios_seguidas us ON a.artista_id = us.artista_id
GROUP BY
  artista
ORDER BY
  seguidores DESC
LIMIT
  3;
