CREATE VIEW perfil_artistas AS 
SELECT
MIN(a.artista) AS artista,
al.album_name AS album,
COUNT(f.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.Follow AS f
ON f.artista_id =a.artista_id
GROUP BY `album`
ORDER BY `seguidores` DESC,`artista`,`album`;
