CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista,
COUNT(u.user_id) AS seguidores
FROM SpotifyClone.user_likes AS u
INNER JOIN SpotifyClone.artists AS a ON u.artist_id=a.id
GROUP BY u.artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
