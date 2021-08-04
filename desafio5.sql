CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT s.song_name AS `cancao`,
COUNT(l.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.listened_songs AS l ON l.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
