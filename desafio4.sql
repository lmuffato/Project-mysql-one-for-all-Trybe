CREATE VIEW top_3_artistas AS
SELECT a.artist AS artista, COUNT(f.follower_id) AS seguidores
FROM SpotifyClone.followers AS f
INNER JOIN SpotifyClone.artists AS a ON f.follower_id = a.follower_id
GROUP BY a.artist ORDER BY 2 DESC, 1 ASC LIMIT 3;
