CREATE VIEW top_3_artistas AS
SELECT
a.artist_name AS `artista`,
COUNT(DISTINCT ca.customer_id) AS `seguidores`
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.customer_artist AS ca
ON a.artist_id = ca.artist_id
GROUP BY ca.artist_id
ORDER BY 2 DESC, 1
LIMIT 3;
