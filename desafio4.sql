CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS `artista`,
COUNT(DISTINCT fa.user_id) AS `seguidores`
FROM SpotifyClone.ARTISTS AS a
INNER JOIN SpotifyClone.FOLLOWING_ARTISTS AS fa
ON a.artist_id = fa.artist_id
GROUP BY fa.artist_id
ORDER BY 2 DESC, 1
LIMIT 3;
