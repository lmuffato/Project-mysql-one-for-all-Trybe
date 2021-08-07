CREATE VIEW top_3_artistas AS (
SELECT
a.artist  AS 'artista',
COUNT(af.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS a
JOIN SpotifyClone.artist_followers AS af
ON af.artist_id = a.artist_id
JOIN SpotifyClone.users AS u
ON u.user_id = af.user_id
GROUP BY `artista` HAVING `seguidores` > 1
ORDER BY `seguidores` DESC, `artista` ASC
);
