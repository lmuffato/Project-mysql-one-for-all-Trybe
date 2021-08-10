CREATE VIEW perfil_artistas AS (
SELECT
r.name AS `artista`,
l.name AS `album`,
COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS r
INNER JOIN SpotifyClone.albuns AS l
ON r.artist_id = l.artist_id
INNER JOIN SpotifyClone.follow AS f
ON f.artist_id = l.artist_id
GROUP BY l.name, r.name
ORDER BY `seguidores` DESC, `artista`, `album`
);
