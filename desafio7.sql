CREATE VIEW perfil_artistas AS
  SELECT
    a.artist_name AS artista,
    ab.album_name AS album,
    COUNT(a.artist_id) AS seguidores
  FROM SpotifyClone.artist AS a
  INNER JOIN SpotifyClone.album AS ab
  ON a.artist_id = ab.artist_id
  INNER JOIN SpotifyClone.follower AS f
  ON (a.artist_id = f.artist_id)
  GROUP BY a.artist_name, ab.album_name
  ORDER BY COUNT(a.artist_id) DESC, a.artist_name, ab.album_name;
