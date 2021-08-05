CREATE VIEW top_3_artistas AS (
  SELECT
    a.name_artist AS `artista`,
    COUNT(f.user_id) AS `seguidores`
  FROM SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.following as f
  ON f.artista_id = a.artista_id
  GROUP BY a.name_artist
  ORDER BY `seguidores` DESC, `artista`
  LIMIT 3
);
