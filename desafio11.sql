CREATE VIEW cancoes_premium AS
SELECT m.title AS nome,
COUNT(p.music_id) AS reproducoes
FROM SpotifyClone.musics AS m
INNER JOIN SpotifyClone.playback_history AS p ON m.music_id = p.music_id
INNER JOIN SpotifyClone.users AS u ON u.plan_id > 1
WHERE p.user_id = u.user_id
GROUP BY nome
ORDER BY nome;
