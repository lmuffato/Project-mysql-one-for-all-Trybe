CREATE VIEW top_3_artistas AS
  SELECT
    artists_name AS `artista`,
    COUNT(artists_name) AS `seguidores`
  FROM SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.followers as f
  ON a.artists_id = f.artists_id
  GROUP BY artists_name
  ORDER BY `seguidores` DESC, `artista` ASC
  LIMIT 3;
