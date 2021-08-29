SELECT s.song_name AS `nome`,
COUNT(h.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS h
ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.plans AS p
ON u.plan_id = p.plan_id
WHERE p.plan_name = "familiar" OR p.plan_name = "universitario"
GROUP BY h.song_id
ORDER BY `reproducoes` DESC, `nome`
