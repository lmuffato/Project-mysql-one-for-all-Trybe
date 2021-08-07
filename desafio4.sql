CREATE VIEW top_3_artistas AS
  SELECT
    a.artist_name AS artista,
    COUNT(f.artist_id) AS seguidores
  FROM SpotifyClone.follower AS f
  INNER JOIN SpotifyClone.artist AS a
  ON f.artist_id = a.artist_id
  GROUP BY f.artist_id
  ORDER BY COUNT(f.artist_id) DESC, a.artist_name
  LIMIT 3;
