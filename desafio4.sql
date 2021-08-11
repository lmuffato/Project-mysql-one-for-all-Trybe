CREATE VIEW top_3_artistas AS
SELECT a.`name` AS artista, COUNT(fa.artist_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.follow_artist AS fa
ON a.artist_id = fa.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
