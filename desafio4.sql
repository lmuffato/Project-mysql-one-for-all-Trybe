CREATE VIEW top_3_artistas AS
SELECT a.artista, COUNT(b.artista_id) AS seguidores
FROM seguindo_artistas AS b
JOIN SpotifyClone.artistas AS a
ON b.artista_id = a.artista_id
GROUP BY b.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
