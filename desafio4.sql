CREATE VIEW top_3_artistas AS (
  SELECT
  CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS `artista`,
  COUNT(*) AS `seguidores`
  FROM SpotifyClone.followed_artist AS fa
  INNER JOIN SpotifyClone.artist AS a
  ON a.ARTIST_ID = fa.ARTIST_ID
  GROUP BY fa.ARTIST_ID
  ORDER BY 2 DESC, 1
  LIMIT 3
);
