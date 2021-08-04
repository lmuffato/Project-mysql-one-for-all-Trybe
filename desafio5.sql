CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_name AS `cancao`,
COUNT(hr.song_id) AS `reproducoes`
FROM SpotifyClone.SONGS AS s
INNER JOIN SpotifyClone.HISTORY_REPRODUCTIONS AS hr
ON s.song_id = hr.song_id
GROUP BY hr.song_id
ORDER BY 2 DESC, 1
LIMIT 2;
