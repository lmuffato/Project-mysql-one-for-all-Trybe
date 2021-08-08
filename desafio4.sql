CREATE VIEW top_3_artistas AS (
SELECT
a.artist_name AS 'artista',
COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.follow AS f
ON a.artist_id = f.artist_id
GROUP BY f.artist_id
ORDER BY COUNT(f.artist_id) DESC, a.artist_name ASC
LIMIT 3
);

-- SELECT artist_id, COUNT(artist_id) FROM SpotifyClone.follow
-- GROUP BY artist_id
