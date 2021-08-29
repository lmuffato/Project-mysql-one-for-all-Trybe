CREATE VIEW top_2_hits_do_momento AS 
SELECT s.song_name AS `cancao`,
COUNT(h.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS h
ON s.song_id = h.song_id
GROUP BY h.song_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
