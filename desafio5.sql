CREATE VIEW top_2_hits_do_momento AS
SELECT a.song_name AS cancao, COUNT(b.user_id) AS reproducoes
FROM SpotifyClone.songs AS a
INNER JOIN SpotifyClone.`history` AS b ON a.song_id = b.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
