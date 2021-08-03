CREATE VIEW top_3_artistas AS
  SELECT
    a.artista_name AS 'artista',
    COUNT(s.usuario_id) AS 'seguidores'
  FROM
    SpotifyClone.artista a
  INNER JOIN
    SpotifyClone.seguindo s ON s.artista_id = a.artista_id
  GROUP BY a.artista_name
  ORDER BY 2 DESC, 1
  LIMIT 3;
