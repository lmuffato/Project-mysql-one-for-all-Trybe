CREATE VIEW top_3_artistas AS
SELECT t1.artista AS artista,
COUNT(t3.usuario) AS seguidores FROM SpotifyClone.artistas AS t1
INNER JOIN SpotifyClone.seguindoArtistas AS t2
INNER JOIN SpotifyClone.usuarios AS t3
ON t1.artista_id = t2.artista_id AND t3.usuario_id = t2.usuario_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
