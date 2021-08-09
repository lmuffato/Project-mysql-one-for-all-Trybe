CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista,
COUNT(f.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.Follow AS f
ON a.artista_id = f.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC,artista
LIMIT 3;
