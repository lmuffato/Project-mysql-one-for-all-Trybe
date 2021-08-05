CREATE VIEW cancoes_premium AS
SELECT
s.song_name AS `nome`,
COUNT(*) AS `reproducoes`
FROM SpotifyClone.SONGS AS s
INNER JOIN SpotifyClone.HISTORY_REPRODUCTIONS AS hr
ON s.song_id = hr.song_id
INNER JOIN SpotifyClone.USERS AS u
ON hr.user_id = u.user_id
WHERE u.user_plan IN (2, 3)
GROUP BY s.song_name, hr.user_id
ORDER BY 1;
