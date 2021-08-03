CREATE VIEW top_3_artistas AS
SELECT a.artista, COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.usuario_artista AS ua
ON a.artista_id = ua.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, artista LIMIT 3;
