CREATE VIEW top_2_hits_do_momento AS
SELECT
songs.songs_name AS cancao,
COUNT(`history`.songs_id) AS reproducoes
FROM SpotifyClone.songs as songs
INNER JOIN SpotifyClone.`history` as `history`
ON songs.songs_id = `history`.songs_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
