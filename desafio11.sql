CREATE VIEW cancoes_premium AS
SELECT a.song_name AS nome,
COUNT(b.song_id) AS reproducoes 
FROM SpotifyClone.songs a
INNER JOIN SpotifyClone.`history` b ON a.song_id = b.song_id
INNER JOIN SpotifyClone.users c ON c.user_id = b.user_id
INNER JOIN SpotifyClone.plans d ON d.id_plan = c.id_plan
WHERE d.plan_name IN('Familiar', 'Universitário')
GROUP BY nome
ORDER BY nome;
