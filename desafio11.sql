CREATE VIEW cancoes_premium AS (
SELECT
s.song AS 'nome',
COUNT(jh.user_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
JOIN SpotifyClone.just_heard AS jh
ON jh.song_id = s.song_id
JOIN SpotifyClone.users AS u
ON u.user_id = jh.user_id AND u.plan_id IN (2, 3)
GROUP BY jh.song_id
ORDER BY `nome`
);
