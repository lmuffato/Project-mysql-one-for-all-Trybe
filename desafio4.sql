CREATE VIEW top_3_artistas AS 
SELECT artistas.artista_nome AS artista,
COUNT(conexoes.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN conexoes AS conexoes
ON conexoes.artista_id = artistas.artista_id
GROUP BY artistas.artista_nome
ORDER BY seguidores DESC, artista
LIMIT 3;
