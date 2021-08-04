CREATE VIEW top_3_artistas AS
(SELECT
  a.artist_name AS artista,
  COUNT(fa.artist_id) AS seguidores
FROM SpotifyClone.FollowedArtist AS fa
INNER JOIN SpotifyClone.Artists AS a
ON a.artist_id = fa.artist_id
GROUP BY artista ORDER BY seguidores DESC, artista LIMIT 3
);
