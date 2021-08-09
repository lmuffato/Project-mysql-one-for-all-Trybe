CREATE VIEW top_3_artistas AS
SELECT
  a.nome AS artista,
  COUNT(af.artista_id) AS seguidores
FROM
  SpotifyClone.artistas_favoritos af
  INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = af.usuario_id
  INNER JOIN SpotifyClone.artistas a ON a.artista_id = af.artista_id
GROUP BY a.nome
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
