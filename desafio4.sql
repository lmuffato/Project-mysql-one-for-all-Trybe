CREATE VIEW `top_3_artistas` AS
SELECT a.artist_name AS `artista`, COUNT(*) AS `seguidores`
FROM SpotifyClone.artist as a
INNER JOIN SpotifyClone.following as f
ON a.artist_id = f.artist_id 
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC LIMIT 3;
