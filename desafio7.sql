CREATE VIEW perfil_artistas AS
SELECT
a.artist_name AS `artista`,
ab.album_name AS `album`,
COUNT(*) AS `seguidores`
FROM SpotifyClone.ARTISTS AS a
INNER JOIN SpotifyClone.ALBUMS AS ab
ON a.artist_id = ab.artist_id
INNER JOIN SpotifyClone.FOLLOWING_ARTISTS AS fa
ON ab.artist_id = fa.artist_id
GROUP BY fa.artist_id, ab.album_id
ORDER BY 3 DESC, 1, 2;

/* Contribuições de Bruno Mendes na resoluçaõ do requisito
GitHUB/PR: https://github.com/tryber/sd-010-a-mysql-one-for-all/pull/38/files */
