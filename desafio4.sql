CREATE VIEW top_3_artistas AS
  SELECT 
    A.artist_name AS `artista`,
    COUNT(F.user_id) AS `seguidores`
  FROM SpotifyClone.Followed_artists AS F
  INNER JOIN SpotifyClone.Artists AS A
  ON F.artist_id = A.artist_id
  GROUP BY F.artist_id
  ORDER BY `seguidores` DESC, `artista` ASC
  LIMIT 3;
