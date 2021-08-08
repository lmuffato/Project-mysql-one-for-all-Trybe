CREATE VIEW top_3_artistas AS (
SELECT t1.nome AS 'artista',
COUNT(t2.usuario_id) AS 'seguidores'
FROM SpotifyClone.Artista AS t1
INNER JOIN SpotifyClone.Usuario_Artista AS t2
ON t2.id_artista = t1.id_artista
GROUP BY t1.nome
ORDER BY COUNT(t2.usuario_id) DESC, t1.nome
LIMIT 3
);
