DROP VIEW IF EXISTS cancoes_premium;
USE SpotifyClone;
CREATE VIEW cancoes_premium AS
SELECT
    s.song_name `Nome`,
    COUNT(sH.user_id) `reproducoes`
FROM songs_history sH
INNER JOIN songs s
    ON sH.song_id = s.song_id
INNER JOIN users u
    ON sH.user_id = u.user_id
WHERE u.plan_id IN (2,5)
GROUP BY `Nome`
ORDER BY `reproducoes` DESC, `Nome`;