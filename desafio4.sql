CREATE VIEW top_3_artistas AS
  SELECT
    artists.artist_name AS artista,
    COUNT(DISTINCT fart.user_id) AS seguidores
  FROM 
    SpotifyClone.artists AS artists
      INNER JOIN
    SpotifyClone.following_artists AS fart ON artists.artist_id = fart.artist_id
  GROUP BY artista
  ORDER BY seguidores DESC, artista ASC
  LIMIT 3;
