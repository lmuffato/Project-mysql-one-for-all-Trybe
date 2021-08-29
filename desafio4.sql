CREATE VIEW top_3_artistas AS
SELECT artista.artista_nome AS artista, COUNT(usuario.usuario_id) AS seguidores FROM usuario_artista
INNER JOIN artista
ON artista.artista_id = usuario_artista.artista_id
INNER JOIN usuario
ON usuario.usuario_id = usuario_artista.usuario_id
GROUP BY artista.artista_nome
ORDER BY COUNT(usuario.usuario_id) DESC, artista.artista_nome
LIMIT 3;
