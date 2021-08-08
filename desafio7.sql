CREATE VIEW perfil_artistas AS (
SELECT t1.nome AS 'artista',
t2.nome AS 'album',
COUNT(t3.usuario_id) AS 'seguidores'
FROM SpotifyClone.Artista AS t1
INNER JOIN SpotifyClone.Album AS t2
ON t2.id_artista = t1.id_artista
INNER JOIN SpotifyClone.Usuario_Artista AS t3
ON t3.id_artista = t2.id_artista
GROUP BY t2.nome, t1.nome
ORDER BY COUNT(t3.usuario_id) DESC, t1.nome, t2.nome
);
