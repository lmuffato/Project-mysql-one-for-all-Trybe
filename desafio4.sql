CREATE VIEW top_3_artistas AS
SELECT a.artista, COUNT(sa.artista_id) AS seguidores
FROM seguindo_artista AS sa
JOIN SpotifyClone.artista AS a
ON sa.artista_id = a.artista_id
GROUP BY sa.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
