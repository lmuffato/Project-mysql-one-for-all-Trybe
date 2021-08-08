CREATE VIEW SpotifyClone.top_3_artistas AS
  SELECT
    artist_name AS `artista`,
    COUNT(artist_name) AS `seguidores`
  FROM SpotifyClone.ARTIST AS a
  INNER JOIN SpotifyClone.FOLLOW_ARTIST as fa
  ON a.artist_id = fa.artist_id
  GROUP BY artist_name
  ORDER BY `seguidores` DESC, `artista` ASC
  LIMIT 3;
