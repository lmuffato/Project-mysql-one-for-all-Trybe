CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS `cancao`,
count(*) AS `reproducoes`
FROM SpotifyClone.play_history AS ph
INNER JOIN SpotifyClone.songs AS s
ON ph.song_id = s.song_id
GROUP BY s.song_name
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
