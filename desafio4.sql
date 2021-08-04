CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, COUNT(ars.Usuario_ID) AS seguidores
FROM SpotifyClone.Artistas AS a
INNER JOIN Artistas_seguidos AS ars
ON ars.Artista_ID = a.Artista_ID
GROUP BY a.nome
ORDER BY seguidores DESC, artista LIMIT 3;
