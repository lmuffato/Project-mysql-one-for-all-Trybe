CREATE VIEW perfil_artistas AS
SELECT
  A.artista AS artista,
  AL.album AS album,
  COUNT(F.usuario_id) AS seguidores
FROM
  SpotifyClone.ARTISTAS AS A
  INNER JOIN SpotifyClone.ALBUMS AS AL ON A.artista_id = AL.artista_id
  INNER JOIN SpotifyClone.ARTISTAS_FOLLOW AS F ON F.artista_id = A.artista_id
GROUP BY
  album,
  artista
ORDER BY
  seguidores DESC,
  artista,
  album;
