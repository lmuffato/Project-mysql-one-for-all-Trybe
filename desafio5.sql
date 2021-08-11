CREATE VIEW top_2_hits_do_momento AS
SELECT s.`name` AS cancao, COUNT(*) AS reproducoes
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.listened_song AS ls
ON s.song_id = ls.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
