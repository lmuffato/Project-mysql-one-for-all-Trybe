CREATE VIEW perfil_artistas AS
  SELECT a.artist_name AS artista,
  album_title AS album,
  COUNT(f.artist_id) AS seguidores
  FROM SpotifyClone.artists AS a
  INNER JOIN SpotifyClone.albums AS b
  ON a.artist_id = b.artist_id
  INNER JOIN SpotifyClone.following AS f
  ON f.artist_id = a.artist_id
  GROUP BY album_id
  ORDER BY COUNT(f.artist_id) DESC,
  a.artist_name ASC, album_title ASC;
