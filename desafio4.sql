CREATE VIEW top_3_artistas AS
SELECT a.name AS artista,
COUNT(f.followed_artist) AS seguidores
FROM SpotifyClone.followers AS f
INNER JOIN SpotifyClone.artists AS a ON f.followed_artist = a.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
