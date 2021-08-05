CREATE VIEW top_3_artistas AS
SELECT a.artista_name AS artista,
COUNT(sa.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
JOIN SpotifyClone.seguindo_artistas AS sa
ON a.artista_id = sa.artista_id
GROUP BY a.artista_id
ORDER BY `seguidores` DESC, `artista` DESC
LIMIT 3;
