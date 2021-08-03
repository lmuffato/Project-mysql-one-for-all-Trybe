CREATE VIEW cancoes_premium AS
SELECT s.song_name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.user_history AS uh
INNER JOIN SpotifyClone.songs AS s ON uh.song_id=s.id
INNER JOIN SpotifyClone.users AS u ON u.id=uh.user_id AND u.plan_id IN (2,3)
GROUP BY uh.song_id
ORDER BY nome;
