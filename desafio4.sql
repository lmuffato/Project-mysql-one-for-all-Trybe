CREATE VIEW top_3_artistas AS
  SELECT 
    a.name_artists AS `artista`,
    COUNT(u.name_user) AS `seguidores`
  FROM SpotifyClone.follower_artists AS fa
    INNER JOIN SpotifyClone.artists AS a ON fa.artists_ID = a.artists_ID
    INNER JOIN SpotifyClone.user AS u ON fa.user_ID = u.user_ID
  GROUP BY fa.artists_ID
    HAVING `seguidores` > 1
  ORDER BY `seguidores` DESC, `artista` ASC
  LIMIT 3;
