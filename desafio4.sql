CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista,
  (
    SELECT COUNT(*)
    FROM SpotifyClone.followed_artists
    WHERE artist_id = a.artist_id
  ) AS seguidores
FROM SpotifyClone.followed_artists AS fa
  INNER JOIN SpotifyClone.artists AS a ON fa.artist_id = a.artist_id
GROUP BY artista,
  seguidores
ORDER BY seguidores DESC,
  artista
LIMIT 3;
