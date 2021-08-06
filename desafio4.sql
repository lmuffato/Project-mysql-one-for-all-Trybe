CREATE VIEW top_3_artistas AS
SELECT artistas.artista, COUNT(seguindo.usuario_id) AS seguidores
FROM 
SpotifyClone.seguindo AS seguindo
INNER JOIN
SpotifyClone.artistas AS artistas
ON seguindo.artista_id = artistas.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
