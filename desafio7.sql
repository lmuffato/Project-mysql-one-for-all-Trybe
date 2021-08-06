CREATE VIEW perfil_artistas AS
SELECT
  art.nome AS artista,
  alb.nome AS album,
  (
    SELECT
      COUNT(usuario_id)
    FROM
      SpotifyClone.seguidores AS s
    WHERE
      s.artista_id = alb.artista_id
  ) AS seguidores
FROM
  SpotifyClone.albuns AS alb
  INNER JOIN SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
ORDER BY
  seguidores DESC,
  artista,
  album;
