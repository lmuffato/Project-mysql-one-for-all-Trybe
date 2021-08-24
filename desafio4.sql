CREATE VIEW top_3_artistas AS (
  SELECT
    a.artist AS `artista`,
    COUNT(uf.artist_id) AS `seguidores`
  FROM SpotifyClone.user_follows uf
  INNER JOIN SpotifyClone.artists a ON a.artist_id = uf.artist_id
  GROUP BY uf.artist_id
  ORDER BY 2 DESC, `artista`
  LIMIT 3
);
