CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS `artista`,
count(*) AS `seguidores`
FROM SpotifyClone.user_following AS uf
INNER JOIN SpotifyClone.artist AS a
ON uf.artist_id = a.artist_id
GROUP BY a.artist_name
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
