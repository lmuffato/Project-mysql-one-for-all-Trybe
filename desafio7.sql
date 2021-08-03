CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(*) AS `seguidores`
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS a
ON al.artist_id = a.artist_id
RIGHT JOIN SpotifyClone.user_following AS uf
ON al.artist_id = uf.artist_id
GROUP BY a.artist_name, al.album_name
ORDER BY `seguidores` DESC, `artista`, `album`;
