CREATE VIEW top_3_artistas AS
SELECT 
    A.artista AS artista, 
    COUNT(U.usuario) AS seguidores 
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguidores AS S
ON A.artista_id = S.artista_id
INNER JOIN SpotifyClone.usuarios AS U
ON S.usuario_id = U.usuario_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
