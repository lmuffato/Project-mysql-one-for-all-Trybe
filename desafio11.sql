CREATE VIEW cancoes_premium AS
SELECT
(SELECT song_name FROM songs WHERE song_id = uh.song_id) AS nome,
COUNT(*)
FROM users_history AS uh
WHERE user_id IN (SELECT user_id FROM user_status WHERE plan_id IN (2, 3))
GROUP BY nome
ORDER BY nome;
