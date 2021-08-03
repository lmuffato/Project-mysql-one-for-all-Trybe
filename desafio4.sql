CREATE VIEW top_3_artistas AS
SELECT (SELECT artist_name FROM artists WHERE artist_id = f.artist_id) AS artista,
COUNT((SELECT username FROM users WHERE user_id = f.user_id)) AS seguidores
FROM followers AS f
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;
