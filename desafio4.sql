CREATE VIEW top_3_artistas AS
  SELECT a.artist_name, COUNT(f.artist_id)
  FROM SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.following AS f
  ON a.artist_id = f.artist_id
  GROUP BY a.artist_id
  ORDER BY COUNT(f.artist_id) DESC, a.artist_name ASC LIMIT 3;
