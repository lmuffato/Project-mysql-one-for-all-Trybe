CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS cancao,
COUNT(u.user_id) AS reproducoes
FROM SpotifyClone.user_history AS u
INNER JOIN SpotifyClone.songs AS s ON u.song_id=s.id
GROUP BY u.song_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
