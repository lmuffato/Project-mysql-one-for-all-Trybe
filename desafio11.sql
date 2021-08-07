CREATE VIEW cancoes_premium AS
SELECT s.song AS nome, COUNT(r.user_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS r ON s.history_id = r.history_id
INNER JOIN SpotifyClone.users AS u ON r.user_id = u.user_id
WHERE u.plan_id IN (2, 3)
GROUP BY s.history_id ORDER BY 1 ASC;
