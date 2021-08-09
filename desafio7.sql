CREATE VIEW perfil_artistas AS
SELECT
  a.nome AS artista,
  al.album_title AS album,
  COUNT(af.usuario_id) AS seguidores
FROM
  SpotifyClone.albuns al
  INNER JOIN SpotifyClone.artistas a ON a.artista_id = al.artista_id
  INNER JOIN SpotifyClone.artistas_favoritos af ON af.artista_id = al.artista_id
GROUP BY
  al.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
