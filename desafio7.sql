CREATE VIEW perfil_artistas AS

SELECT
  art.artista AS `artista`,
  alb.album AS `album`,
  COUNT(*) AS `seguidores`
FROM SpotifyClone.artista art
INNER JOIN SpotifyClone.album alb
  ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo s
  ON art.artista_id = s.artista_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
