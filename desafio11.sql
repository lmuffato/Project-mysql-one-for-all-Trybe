CREATE VIEW `cancoes_premium` AS
SELECT 
s.song_name AS `nome`, COUNT(*) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.played AS played 
ON played.song_id = s.song_id
INNER JOIN SpotifyClone.users AS u 
ON u.user_id = played.user_id
INNER JOIN SpotifyClone.plan AS plan 
ON u.plan_id = plan.plan_id
WHERE plan_name IN ('familiar', 'universitário') 
GROUP BY `nome`
ORDER BY `nome`;
