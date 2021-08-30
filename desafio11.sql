CREATE VIEW cancoes_premium AS
SELECT
    s.song_name `nome`,
    COUNT(sH.user_id) `reproducoes`
FROM songs_history sH
INNER JOIN SpotifyClone.songs s
    ON sH.song_id = s.song_id
INNER JOIN SpotifyClone.users u
    ON sH.user_id = u.user_id
WHERE u.plan_id IN (2,3)
GROUP BY `nome`
ORDER BY `reproducoes` DESC, `nome`;
