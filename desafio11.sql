CREATE VIEW cancoes_premium AS
SELECT s.song_name AS `nome`,
count(*) AS `reproducoes`
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.songs AS s
ON ph.song_id = s.song_id
INNER JOIN SpotifyClone.`user` AS u
ON ph.user_id = u.user_id
WHERE u.plan_id IN (2, 3)
GROUP BY s.song_name, u.user_id
ORDER BY `nome`;
