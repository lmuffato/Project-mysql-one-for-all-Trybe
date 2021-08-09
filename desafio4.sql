CREATE VIEW top_3_artistas AS (
SELECT
a.name AS `artista`,
COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.follow as f
ON f.artist_id = a.artist_id
GROUP BY a.name
ORDER BY `seguidores` DESC, `artista`
LIMIT 3
);
