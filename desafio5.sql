CREATE VIEW top_2_hits_do_momento AS
SELECT m.music_name AS 'cancao',
count(h.music_id) AS 'reproducoes'
FROM SpotifyClone.musics AS m
INNER JOIN SpotifyClone.history_play AS h
ON h.music_id = m.music_id
GROUP BY h.music_id
ORDER BY `reproducoes` desc, `cancao`
limit 2;
