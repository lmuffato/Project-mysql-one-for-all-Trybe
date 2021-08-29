CREATE VIEW top_3_artistas AS 
SELECT a.artist_name AS `artista`,
COUNT(fa.artist_id) AS `seguidores`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.following_artists AS fa
ON a.artist_id = fa.artist_id
GROUP BY fa.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
