CREATE VIEW top_3_artistas AS (
SELECT ar.artist_name  AS 'artista',
COUNT(fol.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.artist_followers AS fol
INNER JOIN SpotifyClone.users as u
ON fol.user_id = u.user_id AND ar.artist_id = fol.artist_id
GROUP BY ar.artist_name
HAVING COUNT(fol.user_id) > 1
ORDER BY COUNT(fol.user_id) DESC, ar.artist_name ASC
);

