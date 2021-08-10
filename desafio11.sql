CREATE VIEW cancoes_premium AS (
SELECT s.song_name AS 'nome',
COUNT(uph.user_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.users AS u
INNER JOIN SpotifyClone.user_play_history as uph
ON (uph.user_id = u.user_id) AND (uph.song_id = s.song_id)
AND (u.plan_id IN(2, 3))
GROUP BY s.song_name
ORDER BY s.song_name ASC
);
