CREATE VIEW perfil_artistas AS
SELECT a.artista_name AS artista,
al.album_name AS album,
COUNT(sg.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
JOIN SpotifyClone.seguindo_artistas AS sg
ON a.artista_id = sg.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
