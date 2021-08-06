CREATE VIEW SpotifyClone.perfil_artistas AS
SELECT
  ar.artista artista,
  al.album album,
  COUNT(us.usuario_id) seguidores
FROM
  SpotifyClone.ARTISTAS ar
  INNER JOIN SpotifyClone.USUARIOS_SEGUIDAS us ON us.artista_id = ar.artista_id
  INNER JOIN SpotifyClone.ALBUMS al ON ar.artista_id = al.artista_id
GROUP BY
  ar.artista,
  al.album
ORDER BY
  seguidores DESC,
  artista,
  album;
