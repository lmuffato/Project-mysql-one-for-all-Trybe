CREATE VIEW perfil_artistas AS
SELECT Artist_name AS artista, Album_name AS album, COUNT(user_id) AS seguidores
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Album AS alb
INNER JOIN SpotifyClone.Artist_followers AS f
ON a.Artist_id = alb.Artist_id AND alb.Artist_id = f.Artist_id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
