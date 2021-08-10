CREATE VIEW perfil_artistas AS (
  SELECT a.artista AS 'artista',
  al.album AS 'album',
  COUNT(s.usuario_id) AS 'seguidores'
  FROM SpotifyClone.artistas AS a
  JOIN SpotifyClone.albuns AS al
  JOIN SpotifyClone.seguindo AS s
  ON (a.artista_id = s.artista_id) AND (al.artista_id = al.artista_id)
  GROUP BY al.album, a.artista
  ORDER BY COUNT(s.usuario_id) DESC, a.artista ASC, al.album ASC
);