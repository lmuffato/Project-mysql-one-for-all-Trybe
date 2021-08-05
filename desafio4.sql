CREATE VIEW top_3_artistas AS
  SELECT
    a.name AS artista,
    (
      SELECT COUNT(*)
      FROM SpotifyClone.follows AS f
      WHERE f.artist_id = a.artist_id
    ) AS seguidores
  FROM SpotifyClone.artists AS a
  ORDER BY `seguidores` DESC, `name`
  LIMIT 3;
