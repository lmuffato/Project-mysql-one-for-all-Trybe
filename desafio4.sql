CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
JOIN SpotifyClone.seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY a.artista_id
ORDER BY 2 DESC, 1
LIMIT 3;
