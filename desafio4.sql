CREATE VIEW top_3_artistas AS
SELECT a.name_artist AS artista, COUNT(b.id_artist) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.follow_artist AS b ON a.id_artist = b.id_artist
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
